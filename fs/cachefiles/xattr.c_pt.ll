; ModuleID = '/llk/IR_all_yes/fs/cachefiles/xattr.c_pt.bc'
source_filename = "../fs/cachefiles/xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.18 }
%union.anon.18 = type { [5 x %struct.uid_gid_extent] }
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
%struct.fscache_cookie = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, %struct.hlist_bl_node, %struct.list_head, %struct.list_head, %struct.work_struct, i64, i32, i32, i8, i8, i8, i8, i32, %union.anon.76, %union.anon.77 }
%struct.hlist_bl_node = type { ptr, ptr }
%union.anon.76 = type { ptr, [12 x i8] }
%union.anon.77 = type { ptr, [4 x i8] }
%struct.file = type { %union.anon.5, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.5 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.cachefiles_xattr = type <{ i64, i64, i8, i8, [0 x i8] }>
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.81 = type { ptr }
%struct.cachefiles_cache = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.60, %struct.list_head, %struct.list_head, %union.anon.61 }
%struct.qstr = type { %union.anon.6, ptr }
%union.anon.6 = type { i64 }
%struct.lockref = type { %union.anon.8 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.spinlock, i32 }
%union.anon.60 = type { %struct.list_head }
%union.anon.61 = type { %struct.hlist_node }
%struct.cachefiles_volume = type { ptr, %struct.list_head, ptr, ptr, [256 x ptr] }
%struct.fscache_volume = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.list_head, %struct.hlist_bl_node, %struct.work_struct, ptr, ptr, %struct.spinlock, i32, i8, [0 x i8] }
%struct.cachefiles_vol_xattr = type { i32, [0 x i8] }

@cachefiles_debug = external dso_local local_unnamed_addr global i32, align 4
@cachefiles_set_object_xattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017[%-6.6s] ==> %s(%x,#%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cachefiles_set_object_xattr\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/cachefiles/xattr.c\00", [42 x i8] zeroinitializer }, align 32
@cachefiles_set_object_xattr._entry_ptr = internal global ptr @cachefiles_set_object_xattr._entry, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@cachefiles_xattr_cache = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"user.CacheFiles.cache\00", [42 x i8] zeroinitializer }, align 32
@cachefiles_set_object_xattr._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013CacheFiles: I/O Error: Failed to set xattr with error %d [o=%08x]\0A\00", [59 x i8] zeroinitializer }, align 32
@cachefiles_set_object_xattr._entry_ptr.5 = internal global ptr @cachefiles_set_object_xattr._entry.3, section ".printk_index", align 4
@cachefiles_set_object_xattr._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017[%-6.6s] <== %s() = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cachefiles_set_object_xattr._entry_ptr.8 = internal global ptr @cachefiles_set_object_xattr._entry.6, section ".printk_index", align 4
@cachefiles_check_auxdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013CacheFiles: I/O Error: Failed to read aux with error %zd [o=%08x]\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cachefiles_check_auxdata\00", [39 x i8] zeroinitializer }, align 32
@cachefiles_check_auxdata._entry_ptr = internal global ptr @cachefiles_check_auxdata._entry, section ".printk_index", align 4
@cachefiles_check_auxdata._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014CacheFiles: Dirty object in cache\0A\00", [59 x i8] zeroinitializer }, align 32
@cachefiles_check_auxdata._entry_ptr.13 = internal global ptr @cachefiles_check_auxdata._entry.11, section ".printk_index", align 4
@cachefiles_remove_object_xattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013CacheFiles: I/O Error: Can't remove xattr from %lu (error %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cachefiles_remove_object_xattr\00", [33 x i8] zeroinitializer }, align 32
@cachefiles_remove_object_xattr._entry_ptr = internal global ptr @cachefiles_remove_object_xattr._entry, section ".printk_index", align 4
@cachefiles_remove_object_xattr._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.15, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cachefiles_remove_object_xattr._entry_ptr.17 = internal global ptr @cachefiles_remove_object_xattr._entry.16, section ".printk_index", align 4
@cachefiles_prepare_to_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017[%-6.6s] ==> %s(c=%08x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cachefiles_prepare_to_write\00", [36 x i8] zeroinitializer }, align 32
@cachefiles_prepare_to_write._entry_ptr = internal global ptr @cachefiles_prepare_to_write._entry, section ".printk_index", align 4
@cachefiles_set_volume_xattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.20, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cachefiles_set_volume_xattr\00", [36 x i8] zeroinitializer }, align 32
@cachefiles_set_volume_xattr._entry_ptr = internal global ptr @cachefiles_set_volume_xattr._entry, section ".printk_index", align 4
@cachefiles_set_volume_xattr._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013CacheFiles: I/O Error: Failed to set xattr with error %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cachefiles_set_volume_xattr._entry_ptr.23 = internal global ptr @cachefiles_set_volume_xattr._entry.21, section ".printk_index", align 4
@cachefiles_set_volume_xattr._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.20, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cachefiles_set_volume_xattr._entry_ptr.25 = internal global ptr @cachefiles_set_volume_xattr._entry.24, section ".printk_index", align 4
@cachefiles_check_volume_xattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017[%-6.6s] ==> %s()\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cachefiles_check_volume_xattr\00", [34 x i8] zeroinitializer }, align 32
@cachefiles_check_volume_xattr._entry_ptr = internal global ptr @cachefiles_check_volume_xattr._entry, section ".printk_index", align 4
@cachefiles_check_volume_xattr._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013CacheFiles: I/O Error: Failed to read xattr with error %zd\0A\00", [34 x i8] zeroinitializer }, align 32
@cachefiles_check_volume_xattr._entry_ptr.30 = internal global ptr @cachefiles_check_volume_xattr._entry.28, section ".printk_index", align 4
@cachefiles_check_volume_xattr._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.27, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cachefiles_check_volume_xattr._entry_ptr.32 = internal global ptr @cachefiles_check_volume_xattr._entry.31, section ".printk_index", align 4
@cachefiles_error_injection_state = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_cachefiles_vfs_error = external dso_local global %struct.tracepoint, align 4
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"include/trace/events/cachefiles.h\00", [62 x i8] zeroinitializer }, align 32
@trace_cachefiles_vfs_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_cachefiles_coherency = external dso_local global %struct.tracepoint, align 4
@trace_cachefiles_coherency.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cachefiles_vol_coherency = external dso_local global %struct.tracepoint, align 4
@trace_cachefiles_vol_coherency.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294967235, i64 4294967284, i64 4294967294]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 51, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [23 x i8] c"cachefiles_xattr_cache\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 28, i32 19 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 77, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 87, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 117, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 129, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 160, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 166, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 179, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 199, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 218, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 226, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 243, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 258, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private constant [25 x i8] c"../fs/cachefiles/xattr.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 274, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [37 x i8] c"../include/trace/events/cachefiles.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 620, i32 1 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 108, i32 2 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @cachefiles_check_auxdata._entry, ptr @cachefiles_check_auxdata._entry.11, ptr @cachefiles_check_auxdata._entry_ptr, ptr @cachefiles_check_auxdata._entry_ptr.13, ptr @cachefiles_check_volume_xattr._entry, ptr @cachefiles_check_volume_xattr._entry.28, ptr @cachefiles_check_volume_xattr._entry.31, ptr @cachefiles_check_volume_xattr._entry_ptr, ptr @cachefiles_check_volume_xattr._entry_ptr.30, ptr @cachefiles_check_volume_xattr._entry_ptr.32, ptr @cachefiles_prepare_to_write._entry, ptr @cachefiles_prepare_to_write._entry_ptr, ptr @cachefiles_remove_object_xattr._entry, ptr @cachefiles_remove_object_xattr._entry.16, ptr @cachefiles_remove_object_xattr._entry_ptr, ptr @cachefiles_remove_object_xattr._entry_ptr.17, ptr @cachefiles_set_object_xattr._entry, ptr @cachefiles_set_object_xattr._entry.3, ptr @cachefiles_set_object_xattr._entry.6, ptr @cachefiles_set_object_xattr._entry_ptr, ptr @cachefiles_set_object_xattr._entry_ptr.5, ptr @cachefiles_set_object_xattr._entry_ptr.8, ptr @cachefiles_set_volume_xattr._entry, ptr @cachefiles_set_volume_xattr._entry.21, ptr @cachefiles_set_volume_xattr._entry.24, ptr @cachefiles_set_volume_xattr._entry_ptr, ptr @cachefiles_set_volume_xattr._entry_ptr.23, ptr @cachefiles_set_volume_xattr._entry_ptr.25, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cachefiles_xattr_cache, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_set_object_xattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_xattr_cache to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_set_object_xattr._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_set_object_xattr._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_check_auxdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_check_auxdata._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_remove_object_xattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_remove_object_xattr._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_prepare_to_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_set_volume_xattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_set_volume_xattr._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_set_volume_xattr._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_check_volume_xattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_check_volume_xattr._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_check_volume_xattr._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cachefiles_set_object_xattr(ptr noundef %object) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %file1 = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 3
  %0 = ptrtoint ptr %file1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file1, align 4
  %2 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %object, align 4
  %aux_len = getelementptr inbounds %struct.fscache_cookie, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %aux_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %aux_len, align 1
  %conv = zext i8 %5 to i32
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dentry2 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %dentry2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dentry2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %8 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.do.end9_crit_edge, label %do.end

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, i32 noundef %14, i32 noundef %conv) #10
  br label %do.end9

do.end9:                                          ; preds = %do.end, %if.end.do.end9_crit_edge
  %add = add nuw nsw i32 %conv, 18
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #11
  %tobool11.not = icmp eq ptr %call9.i, null
  br i1 %tobool11.not, label %do.end9.cleanup_crit_edge, label %if.end13

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %do.end9
  %15 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %object, align 4
  %object_size = getelementptr inbounds %struct.fscache_cookie, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %object_size to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %object_size, align 8
  %19 = ptrtoint ptr %call9.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %call9.i, align 128
  %zero_point = getelementptr inbounds %struct.cachefiles_xattr, ptr %call9.i, i32 0, i32 1
  %20 = ptrtoint ptr %zero_point to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %zero_point, align 8
  %type = getelementptr inbounds %struct.cachefiles_xattr, ptr %call9.i, i32 0, i32 2
  %21 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %type, align 16
  %content_info = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 9
  %22 = ptrtoint ptr %content_info to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %content_info, align 1
  %content = getelementptr inbounds %struct.cachefiles_xattr, ptr %call9.i, i32 0, i32 3
  %23 = ptrtoint ptr %content to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %bf.load, ptr %content, align 1
  %flags = getelementptr inbounds %struct.fscache_cookie, ptr %16, i32 0, i32 14
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags, align 4
  %26 = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool19.not = icmp eq i32 %26, 0
  br i1 %tobool19.not, label %if.end13.if.end22_crit_edge, label %if.then20

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %content to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 4, ptr %content, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end13.if.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end22.if.end28_crit_edge, label %if.then24

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then24:                                        ; preds = %if.end22
  %data = getelementptr inbounds %struct.cachefiles_xattr, ptr %call9.i, i32 0, i32 4
  %aux_len.i = getelementptr inbounds %struct.fscache_cookie, ptr %16, i32 0, i32 18
  %28 = ptrtoint ptr %aux_len.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %aux_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %29)
  %cmp.i = icmp ult i8 %29, 9
  %30 = getelementptr inbounds %struct.fscache_cookie, ptr %16, i32 0, i32 21
  br i1 %cmp.i, label %if.then24.fscache_get_aux.exit_crit_edge, label %if.else.i

if.then24.fscache_get_aux.exit_crit_edge:         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscache_get_aux.exit

if.else.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  br label %fscache_get_aux.exit

fscache_get_aux.exit:                             ; preds = %if.else.i, %if.then24.fscache_get_aux.exit_crit_edge
  %retval.0.i = phi ptr [ %32, %if.else.i ], [ %30, %if.then24.fscache_get_aux.exit_crit_edge ]
  %33 = call ptr @memcpy(ptr %data, ptr %retval.0.i, i32 %conv)
  br label %if.end28

if.end28:                                         ; preds = %fscache_get_aux.exit, %if.end22.if.end28_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %34 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i122 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i122)
  %tobool.not.i = icmp eq i32 %and.i122, 0
  %and1.i123 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i123)
  %tobool2.not.i = icmp eq i32 %and1.i123, 0
  %cond.i = select i1 %tobool2.not.i, i32 0, i32 -28
  %cond3.i = select i1 %tobool.not.i, i32 %cond.i, i32 -5
  %35 = and i32 %34, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %if.end35, label %if.end28.if.then38_crit_edge

if.end28.if.then38_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38

if.end35:                                         ; preds = %if.end28
  %call34 = tail call i32 @vfs_setxattr(ptr noundef nonnull @init_user_ns, ptr noundef %7, ptr noundef nonnull @cachefiles_xattr_cache, ptr noundef nonnull %call9.i, i32 noundef %add, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp36 = icmp slt i32 %call34, 0
  br i1 %cmp36, label %if.end35.if.then38_crit_edge, label %if.else

if.end35.if.then38_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38

if.then38:                                        ; preds = %if.end35.if.then38_crit_edge, %if.end28.if.then38_crit_edge
  %ret.0130 = phi i32 [ %call34, %if.end35.if.then38_crit_edge ], [ %cond3.i, %if.end28.if.then38_crit_edge ]
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %f_inode.i, align 8
  tail call fastcc void @trace_cachefiles_vfs_error(ptr noundef %object, ptr noundef %38, i32 noundef %ret.0130, i32 noundef 11)
  %39 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %f_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_ino, align 8
  %43 = ptrtoint ptr %content to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %content, align 1
  %conv42 = zext i8 %44 to i32
  tail call fastcc void @trace_cachefiles_coherency(ptr noundef %object, i32 noundef %42, i32 noundef %conv42, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %ret.0130)
  %cmp43.not = icmp eq i32 %ret.0130, -12
  br i1 %cmp43.not, label %if.then38.if.end65_crit_edge, label %do.body46

if.then38.if.end65_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

do.body46:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  %volume = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 1
  %45 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %volume, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %debug_id52 = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 5
  %49 = ptrtoint ptr %debug_id52 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %debug_id52, align 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %ret.0130, i32 noundef %50) #10
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %48, align 8
  tail call void @fscache_io_error(ptr noundef %52) #7
  %flags55 = getelementptr inbounds %struct.cachefiles_cache, ptr %48, i32 0, i32 29
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags55) #7
  br label %if.end65

if.else:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %f_inode.i125 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %53 = ptrtoint ptr %f_inode.i125 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %f_inode.i125, align 8
  %i_ino62 = getelementptr inbounds %struct.inode, ptr %54, i32 0, i32 11
  %55 = ptrtoint ptr %i_ino62 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i_ino62, align 8
  %57 = ptrtoint ptr %content to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %content, align 1
  %conv64 = zext i8 %58 to i32
  tail call fastcc void @trace_cachefiles_coherency(ptr noundef %object, i32 noundef %56, i32 noundef %conv64, i32 noundef 9)
  br label %if.end65

if.end65:                                         ; preds = %if.else, %do.body46, %if.then38.if.end65_crit_edge
  %ret.0129 = phi i32 [ -12, %if.then38.if.end65_crit_edge ], [ %ret.0130, %do.body46 ], [ %call34, %if.else ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %59 = load i32, ptr @cachefiles_debug, align 4
  %and67 = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end65.cleanup_crit_edge, label %do.end72

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end72:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %60 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i126 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i126 to ptr
  %task75 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task75 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task75, align 8
  %comm76 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 101
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm76, ptr noundef nonnull @.str.1, i32 noundef %ret.0129) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end72, %if.end65.cleanup_crit_edge, %do.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -116, %entry.cleanup_crit_edge ], [ -12, %do.end9.cleanup_crit_edge ], [ %ret.0129, %do.end72 ], [ %ret.0129, %if.end65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_setxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cachefiles_vfs_error(ptr noundef %obj, ptr noundef %backer, i32 noundef %error, i32 noundef %where) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_vfs_error, i32 0, i32 1), ptr blockaddress(@trace_cachefiles_vfs_error, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !85

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !87
  %call42 = tail call i32 @__traceiter_cachefiles_vfs_error(ptr noundef null, ptr noundef %obj, ptr noundef %backer, i32 noundef %error, i32 noundef %where) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !88
  %13 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_vfs_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_vfs_error, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cachefiles_vfs_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_cachefiles_vfs_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 645, ptr noundef nonnull @.str.34) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !90
  %31 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
define internal fastcc void @trace_cachefiles_coherency(ptr noundef %obj, i32 noundef %ino, i32 noundef %content, i32 noundef %why) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_coherency, i32 0, i32 1), ptr blockaddress(@trace_cachefiles_coherency, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !85

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !91
  %call42 = tail call i32 @__traceiter_cachefiles_coherency(ptr noundef null, ptr noundef %obj, i32 noundef %ino, i32 noundef %content, i32 noundef %why) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !92
  %13 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_coherency, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_coherency, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cachefiles_coherency.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_cachefiles_coherency.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 400, ptr noundef nonnull @.str.34) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !90
  %31 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
declare dso_local void @fscache_io_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cachefiles_check_auxdata(ptr noundef %object, ptr nocapture noundef readonly %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  %2 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %object, align 4
  %aux_len = getelementptr inbounds %struct.fscache_cookie, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %aux_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %aux_len, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %5)
  %cmp.i = icmp ult i8 %5, 9
  %6 = getelementptr inbounds %struct.fscache_cookie, ptr %3, i32 0, i32 21
  br i1 %cmp.i, label %entry.fscache_get_aux.exit_crit_edge, label %if.else.i

entry.fscache_get_aux.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscache_get_aux.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  br label %fscache_get_aux.exit

fscache_get_aux.exit:                             ; preds = %if.else.i, %entry.fscache_get_aux.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.else.i ], [ %6, %entry.fscache_get_aux.exit_crit_edge ]
  %add = add nuw nsw i32 %conv, 18
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %fscache_get_aux.exit.cleanup_crit_edge, label %if.end

fscache_get_aux.exit.cleanup_crit_edge:           ; preds = %fscache_get_aux.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %fscache_get_aux.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %9 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end8, label %if.end16.thread

if.end16.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %f_inode.i103 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %10 = ptrtoint ptr %f_inode.i103 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_inode.i103, align 8
  tail call fastcc void @trace_cachefiles_vfs_error(ptr noundef %object, ptr noundef %11, i32 noundef -5, i32 noundef 1)
  br label %do.body

if.end8:                                          ; preds = %if.end
  %call7 = tail call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef nonnull @cachefiles_xattr_cache, ptr noundef nonnull %call9.i, i32 noundef %add) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %add)
  %cmp9.not = icmp eq i32 %call7, %add
  br i1 %cmp9.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp12 = icmp slt i32 %call7, 0
  br i1 %cmp12, label %if.end16, label %if.then11.if.end59_crit_edge

if.then11.if.end59_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.end16:                                         ; preds = %if.then11
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %12 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f_inode.i, align 8
  tail call fastcc void @trace_cachefiles_vfs_error(ptr noundef %object, ptr noundef %13, i32 noundef %call7, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call7)
  %cmp17 = icmp eq i32 %call7, -5
  br i1 %cmp17, label %if.end16.do.body_crit_edge, label %if.end16.if.end59_crit_edge

if.end16.if.end59_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.end16.do.body_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.end16.do.body_crit_edge, %if.end16.thread
  %volume = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 1
  %14 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %volume, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 5
  %18 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug_id, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef -5, i32 noundef %19) #10
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 8
  tail call void @fscache_io_error(ptr noundef %21) #7
  %flags = getelementptr inbounds %struct.cachefiles_cache, ptr %17, i32 0, i32 29
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #7
  br label %if.end59

if.else:                                          ; preds = %if.end8
  %type = getelementptr inbounds %struct.cachefiles_xattr, ptr %call9.i, i32 0, i32 2
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp30.not = icmp eq i8 %23, 1
  br i1 %cmp30.not, label %if.else33, label %if.else.if.end59_crit_edge

if.else.if.end59_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.else33:                                        ; preds = %if.else
  %data = getelementptr inbounds %struct.cachefiles_xattr, ptr %call9.i, i32 0, i32 4
  %bcmp = tail call i32 @bcmp(ptr %data, ptr %retval.0.i, i32 %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp35.not = icmp eq i32 %bcmp, 0
  br i1 %cmp35.not, label %if.else38, label %if.else33.if.end59_crit_edge

if.else33.if.end59_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.else38:                                        ; preds = %if.else33
  %24 = ptrtoint ptr %call9.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %call9.i, align 128
  %26 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %object, align 4
  %object_size40 = getelementptr inbounds %struct.fscache_cookie, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %object_size40 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %object_size40, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %29)
  %cmp41.not = icmp eq i64 %25, %29
  br i1 %cmp41.not, label %if.else44, label %if.else38.if.end59_crit_edge

if.else38.if.end59_crit_edge:                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.else44:                                        ; preds = %if.else38
  %content = getelementptr inbounds %struct.cachefiles_xattr, ptr %call9.i, i32 0, i32 3
  %30 = ptrtoint ptr %content to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %content, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %31)
  %cmp46 = icmp eq i8 %31, 4
  br i1 %cmp46, label %do.end51, label %if.else44.if.end59_crit_edge

if.else44.if.end59_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

do.end51:                                         ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %if.end59

if.end59:                                         ; preds = %do.end51, %if.else44.if.end59_crit_edge, %if.else38.if.end59_crit_edge, %if.else33.if.end59_crit_edge, %if.else.if.end59_crit_edge, %do.body, %if.end16.if.end59_crit_edge, %if.then11.if.end59_crit_edge
  %why.0 = phi i32 [ 2, %do.end51 ], [ 7, %do.body ], [ 7, %if.end16.if.end59_crit_edge ], [ 6, %if.else.if.end59_crit_edge ], [ 0, %if.else33.if.end59_crit_edge ], [ 4, %if.else38.if.end59_crit_edge ], [ 5, %if.else44.if.end59_crit_edge ], [ 7, %if.then11.if.end59_crit_edge ]
  %ret.0 = phi i32 [ -116, %do.end51 ], [ -116, %do.body ], [ -116, %if.end16.if.end59_crit_edge ], [ -116, %if.else.if.end59_crit_edge ], [ -116, %if.else33.if.end59_crit_edge ], [ -116, %if.else38.if.end59_crit_edge ], [ 0, %if.else44.if.end59_crit_edge ], [ -116, %if.then11.if.end59_crit_edge ]
  %f_inode.i94 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %32 = ptrtoint ptr %f_inode.i94 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %f_inode.i94, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_ino, align 8
  %content61 = getelementptr inbounds %struct.cachefiles_xattr, ptr %call9.i, i32 0, i32 3
  %36 = ptrtoint ptr %content61 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %content61, align 1
  %conv62 = zext i8 %37 to i32
  tail call fastcc void @trace_cachefiles_coherency(ptr noundef %object, i32 noundef %35, i32 noundef %conv62, i32 noundef %why.0)
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %fscache_get_aux.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end59 ], [ -12, %fscache_get_aux.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cachefiles_remove_object_xattr(ptr noundef %cache, ptr noundef %object, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %0 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.then3.thread

if.then3.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %d_inode.i47 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode.i47 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i47, align 8
  tail call fastcc void @trace_cachefiles_vfs_error(ptr noundef %object, ptr noundef %2, i32 noundef -5, i32 noundef 8)
  br label %do.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @vfs_removexattr(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef nonnull @cachefiles_xattr_cache) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.do.body19_crit_edge

if.end.do.body19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

if.then3:                                         ; preds = %if.end
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %3 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i, align 8
  tail call fastcc void @trace_cachefiles_vfs_error(ptr noundef %object, ptr noundef %4, i32 noundef %call1, i32 noundef 8)
  %5 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1, label %if.then3.do.end_crit_edge [
    i32 -2, label %if.then3.do.body19_crit_edge
    i32 -61, label %if.then3.do.body19_crit_edge50
    i32 -12, label %do.body19.fold.split
  ]

if.then3.do.body19_crit_edge50:                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

if.then3.do.body19_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

if.then3.do.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.then3.do.end_crit_edge, %if.then3.thread
  %d_inode.i49 = phi ptr [ %d_inode.i47, %if.then3.thread ], [ %d_inode.i, %if.then3.do.end_crit_edge ]
  %ret.04548 = phi i32 [ -5, %if.then3.thread ], [ %call1, %if.then3.do.end_crit_edge ]
  %6 = ptrtoint ptr %d_inode.i49 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i49, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  %sub = sub i32 0, %ret.04548
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %9, i32 noundef %sub) #10
  %10 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cache, align 8
  tail call void @fscache_io_error(ptr noundef %11) #7
  %flags = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 29
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #7
  br label %do.body19

do.body19.fold.split:                             ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

do.body19:                                        ; preds = %do.body19.fold.split, %do.end, %if.then3.do.body19_crit_edge, %if.then3.do.body19_crit_edge50, %if.end.do.body19_crit_edge
  %ret.1 = phi i32 [ %ret.04548, %do.end ], [ %call1, %if.end.do.body19_crit_edge ], [ 0, %if.then3.do.body19_crit_edge ], [ 0, %if.then3.do.body19_crit_edge50 ], [ -12, %do.body19.fold.split ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %12 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body19.do.end29_crit_edge, label %do.end23

do.body19.do.end29_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29

do.end23:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %13 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i42 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i42 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 101
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm, ptr noundef nonnull @.str.15, i32 noundef %ret.1) #10
  br label %do.end29

do.end29:                                         ; preds = %do.end23, %do.body19.do.end29_crit_edge
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_removexattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cachefiles_prepare_to_write(ptr nocapture noundef readonly %cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 101
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %debug_id = getelementptr inbounds %struct.fscache_cookie, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug_id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %comm, ptr noundef nonnull @.str.19, i32 noundef %14) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %flags = getelementptr inbounds %struct.cachefiles_object, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool8.not = icmp eq i32 %and1.i, 0
  br i1 %tobool8.not, label %if.then9, label %do.end6.if.end11_crit_edge

do.end6.if.end11_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  %cache_cred.i = getelementptr inbounds %struct.cachefiles_cache, ptr %5, i32 0, i32 8
  %17 = ptrtoint ptr %cache_cred.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cache_cred.i, align 8
  %call.i = tail call ptr @override_creds(ptr noundef %18) #7
  %call10 = tail call i32 @cachefiles_set_object_xattr(ptr noundef %1)
  tail call void @revert_creds(ptr noundef %call.i) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.end6.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cachefiles_set_volume_xattr(ptr noundef %volume) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vcookie = getelementptr inbounds %struct.cachefiles_volume, ptr %volume, i32 0, i32 2
  %0 = ptrtoint ptr %vcookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vcookie, align 4
  %coherency_len = getelementptr inbounds %struct.fscache_volume, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %coherency_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %coherency_len, align 4
  %conv = zext i8 %3 to i32
  %coherency = getelementptr inbounds %struct.fscache_volume, ptr %1, i32 0, i32 14
  %dentry2 = getelementptr inbounds %struct.cachefiles_volume, ptr %volume, i32 0, i32 3
  %4 = ptrtoint ptr %dentry2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %6 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.fscache_volume, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug_id, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.20, i32 noundef %12, i32 noundef %conv) #10
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %add = add nuw nsw i32 %conv, 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #11
  %tobool10.not = icmp eq ptr %call9.i, null
  br i1 %tobool10.not, label %do.end8.cleanup_crit_edge, label %if.end12

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %do.end8
  %13 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %call9.i, align 128
  %data = getelementptr inbounds %struct.cachefiles_vol_xattr, ptr %call9.i, i32 0, i32 1
  %14 = call ptr @memcpy(ptr %data, ptr %coherency, i32 %add)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %15 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i87 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87)
  %tobool.not.i = icmp eq i32 %and.i87, 0
  %and1.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %cond.i = select i1 %tobool2.not.i, i32 0, i32 -28
  %cond3.i = select i1 %tobool.not.i, i32 %cond.i, i32 -5
  %16 = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %if.end18, label %if.end12.if.then21_crit_edge

if.end12.if.then21_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

if.end18:                                         ; preds = %if.end12
  %call17 = tail call i32 @vfs_setxattr(ptr noundef nonnull @init_user_ns, ptr noundef %5, ptr noundef nonnull @cachefiles_xattr_cache, ptr noundef nonnull %call9.i, i32 noundef %add, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp19 = icmp slt i32 %call17, 0
  br i1 %cmp19, label %if.end18.if.then21_crit_edge, label %if.else

if.end18.if.then21_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

if.then21:                                        ; preds = %if.end18.if.then21_crit_edge, %if.end12.if.then21_crit_edge
  %ret.094 = phi i32 [ %call17, %if.end18.if.then21_crit_edge ], [ %cond3.i, %if.end12.if.then21_crit_edge ]
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %18 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_inode.i, align 8
  tail call fastcc void @trace_cachefiles_vfs_error(ptr noundef null, ptr noundef %19, i32 noundef %ret.094, i32 noundef 11)
  %20 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_ino, align 8
  tail call fastcc void @trace_cachefiles_vol_coherency(ptr noundef %volume, i32 noundef %23, i32 noundef 14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %ret.094)
  %cmp24.not = icmp eq i32 %ret.094, -12
  br i1 %cmp24.not, label %if.then21.if.end40_crit_edge, label %do.end30

if.then21.if.end40_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

do.end30:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %ret.094) #10
  %24 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %volume, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  tail call void @fscache_io_error(ptr noundef %27) #7
  %28 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %volume, align 4
  %flags = getelementptr inbounds %struct.cachefiles_cache, ptr %29, i32 0, i32 29
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #7
  br label %if.end40

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %d_inode.i89 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %30 = ptrtoint ptr %d_inode.i89 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_inode.i89, align 8
  %i_ino39 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %i_ino39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_ino39, align 8
  tail call fastcc void @trace_cachefiles_vol_coherency(ptr noundef %volume, i32 noundef %33, i32 noundef 15)
  br label %if.end40

if.end40:                                         ; preds = %if.else, %do.end30, %if.then21.if.end40_crit_edge
  %ret.093 = phi i32 [ -12, %if.then21.if.end40_crit_edge ], [ %ret.094, %do.end30 ], [ %call17, %if.else ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %34 = load i32, ptr @cachefiles_debug, align 4
  %and42 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end40.do.end56_crit_edge, label %do.end47

if.end40.do.end56_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %35 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i90 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i90 to ptr
  %task50 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task50, align 8
  %comm51 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 101
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm51, ptr noundef nonnull @.str.20, i32 noundef %ret.093) #10
  br label %do.end56

do.end56:                                         ; preds = %do.end47, %if.end40.do.end56_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.093)
  %cmp57 = icmp eq i32 %ret.093, 0
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %do.end8.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp57, %do.end56 ], [ false, %do.end8.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cachefiles_vol_coherency(ptr noundef %volume, i32 noundef %ino, i32 noundef %why) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_vol_coherency, i32 0, i32 1), ptr blockaddress(@trace_cachefiles_vol_coherency, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !85

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !93
  %call42 = tail call i32 @__traceiter_cachefiles_vol_coherency(ptr noundef null, ptr noundef %volume, i32 noundef %ino, i32 noundef %why) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !94
  %13 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_vol_coherency, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_vol_coherency, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cachefiles_vol_coherency.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_cachefiles_vol_coherency.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 426, ptr noundef nonnull @.str.34) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !90
  %31 = tail call i32 @llvm.read_register.i32(metadata !75) #7
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
define dso_local i32 @cachefiles_check_volume_xattr(ptr noundef %volume) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.cachefiles_volume, ptr %volume, i32 0, i32 3
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  %vcookie = getelementptr inbounds %struct.cachefiles_volume, ptr %volume, i32 0, i32 2
  %2 = ptrtoint ptr %vcookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vcookie, align 4
  %coherency_len = getelementptr inbounds %struct.fscache_volume, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %coherency_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %coherency_len, align 4
  %conv = zext i8 %5 to i32
  %coherency = getelementptr inbounds %struct.fscache_volume, ptr %3, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %6 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %comm, ptr noundef nonnull @.str.27) #10
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %add = add nuw nsw i32 %conv, 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #11
  %tobool9.not = icmp eq ptr %call9.i, null
  br i1 %tobool9.not, label %do.end7.cleanup_crit_edge, label %if.end11

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %11 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i97 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97)
  %tobool.not.i = icmp eq i32 %and.i97, 0
  br i1 %tobool.not.i, label %if.end16, label %if.then22.thread

if.then22.thread:                                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %d_inode.i107 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode.i107 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i107, align 8
  tail call fastcc void @trace_cachefiles_vfs_error(ptr noundef null, ptr noundef %13, i32 noundef -5, i32 noundef 1)
  br label %do.end30

if.end16:                                         ; preds = %if.end11
  %call15 = tail call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef nonnull @cachefiles_xattr_cache, ptr noundef nonnull %call9.i, i32 noundef %add) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %add)
  %cmp17.not = icmp eq i32 %call15, %add
  br i1 %cmp17.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp20 = icmp slt i32 %call15, 0
  br i1 %cmp20, label %if.then22, label %if.then19.if.end51_crit_edge

if.then19.if.end51_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then22:                                        ; preds = %if.then19
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode.i, align 8
  tail call fastcc void @trace_cachefiles_vfs_error(ptr noundef null, ptr noundef %15, i32 noundef %call15, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call15)
  %cmp24 = icmp eq i32 %call15, -5
  br i1 %cmp24, label %if.then22.do.end30_crit_edge, label %if.then22.if.end51_crit_edge

if.then22.if.end51_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then22.do.end30_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

do.end30:                                         ; preds = %if.then22.do.end30_crit_edge, %if.then22.thread
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef -5) #10
  %16 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %volume, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  tail call void @fscache_io_error(ptr noundef %19) #7
  %20 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %volume, align 4
  %flags = getelementptr inbounds %struct.cachefiles_cache, ptr %21, i32 0, i32 29
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #7
  br label %if.end51

if.else:                                          ; preds = %if.end16
  %22 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp39.not = icmp eq i32 %23, 0
  br i1 %cmp39.not, label %if.else42, label %if.else.if.end51_crit_edge

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.else42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.cachefiles_vol_xattr, ptr %call9.i, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr %data, ptr %coherency, i32 %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp45.not = icmp eq i32 %bcmp, 0
  %. = select i1 %cmp45.not, i32 11, i32 10
  %.96 = select i1 %cmp45.not, i32 0, i32 -116
  br label %if.end51

if.end51:                                         ; preds = %if.else42, %if.else.if.end51_crit_edge, %do.end30, %if.then22.if.end51_crit_edge, %if.then19.if.end51_crit_edge
  %why.0 = phi i32 [ 13, %if.then22.if.end51_crit_edge ], [ 13, %do.end30 ], [ 13, %if.then19.if.end51_crit_edge ], [ 12, %if.else.if.end51_crit_edge ], [ %., %if.else42 ]
  %ret.0 = phi i32 [ -116, %if.then22.if.end51_crit_edge ], [ -116, %do.end30 ], [ -116, %if.then19.if.end51_crit_edge ], [ -116, %if.else.if.end51_crit_edge ], [ %.96, %if.else42 ]
  %d_inode.i98 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %d_inode.i98 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_inode.i98, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_ino, align 8
  tail call fastcc void @trace_cachefiles_vol_coherency(ptr noundef %volume, i32 noundef %27, i32 noundef %why.0)
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %28 = load i32, ptr @cachefiles_debug, align 4
  %and54 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end51.cleanup_crit_edge, label %do.end59

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end59:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %29 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i99 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i99 to ptr
  %task62 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task62, align 8
  %comm63 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 101
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm63, ptr noundef nonnull @.str.27, i32 noundef %ret.0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.end51.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end7.cleanup_crit_edge ], [ %ret.0, %do.end59 ], [ %ret.0, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cachefiles_vfs_error(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cachefiles_coherency(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cachefiles_vol_coherency(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !61, !63, !64, !65, !66, !68, !69, !71, !72, !74}
!llvm.named.register.sp = !{!75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cachefiles/xattr.c", i32 51, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cachefiles_set_object_xattr._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cachefiles_set_object_xattr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/cachefiles/xattr.c", i32 77, i32 4}
!8 = !{ptr @cachefiles_set_object_xattr._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @cachefiles_set_object_xattr._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/cachefiles/xattr.c", i32 87, i32 2}
!12 = !{ptr @cachefiles_set_object_xattr._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @cachefiles_set_object_xattr._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/cachefiles/xattr.c", i32 117, i32 4}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @cachefiles_check_auxdata._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @cachefiles_check_auxdata._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/cachefiles/xattr.c", i32 129, i32 3}
!21 = !{ptr @cachefiles_check_auxdata._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @cachefiles_check_auxdata._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/cachefiles/xattr.c", i32 160, i32 4}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cachefiles_remove_object_xattr._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @cachefiles_remove_object_xattr._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @cachefiles_remove_object_xattr._entry.16, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../fs/cachefiles/xattr.c", i32 166, i32 2}
!30 = !{ptr @cachefiles_remove_object_xattr._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/cachefiles/xattr.c", i32 179, i32 2}
!33 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @cachefiles_prepare_to_write._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @cachefiles_prepare_to_write._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/cachefiles/xattr.c", i32 199, i32 2}
!38 = !{ptr @cachefiles_set_volume_xattr._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @cachefiles_set_volume_xattr._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/cachefiles/xattr.c", i32 218, i32 4}
!42 = !{ptr @cachefiles_set_volume_xattr._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @cachefiles_set_volume_xattr._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @cachefiles_set_volume_xattr._entry.24, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../fs/cachefiles/xattr.c", i32 226, i32 2}
!46 = !{ptr @cachefiles_set_volume_xattr._entry_ptr.25, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/cachefiles/xattr.c", i32 243, i32 2}
!49 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @cachefiles_check_volume_xattr._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @cachefiles_check_volume_xattr._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/cachefiles/xattr.c", i32 258, i32 5}
!54 = !{ptr @cachefiles_check_volume_xattr._entry.28, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @cachefiles_check_volume_xattr._entry_ptr.30, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @cachefiles_check_volume_xattr._entry.31, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../fs/cachefiles/xattr.c", i32 274, i32 2}
!58 = !{ptr @cachefiles_check_volume_xattr._entry_ptr.32, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @cachefiles_xattr_cache, !60, !"cachefiles_xattr_cache", i1 false, i1 false}
!60 = !{!"../fs/cachefiles/xattr.c", i32 28, i32 19}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/trace/events/cachefiles.h", i32 620, i32 1}
!63 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!65 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/trace/events/cachefiles.h", i32 372, i32 1}
!71 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/trace/events/cachefiles.h", i32 402, i32 1}
!74 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!75 = !{!"sp"}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 2148959351, i64 2148959356, i64 2148959369, i64 2148959413, i64 2148959447, i64 2148959468}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i64 2155380324}
!88 = !{i64 2155380577}
!89 = !{i64 2149370692}
!90 = !{i64 2149371728}
!91 = !{i64 2155207099}
!92 = !{i64 2155207346}
!93 = !{i64 2155229317}
!94 = !{i64 2155229560}
