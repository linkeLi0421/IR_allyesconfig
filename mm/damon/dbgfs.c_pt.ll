; ModuleID = '/llk/IR_all_yes/mm/damon/dbgfs.c_pt.bc'
source_filename = "../mm/damon/dbgfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.damon_ctx = type { i32, i32, i32, %struct.timespec64, %struct.timespec64, ptr, %struct.mutex, %struct.damon_primitive, %struct.damon_callback, i32, i32, %struct.list_head, %struct.list_head }
%struct.timespec64 = type { i64, i32 }
%struct.damon_primitive = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.damon_callback = type { ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.63, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.64, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.65, ptr, %struct.address_space, %struct.list_head, %union.anon.66, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.63 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.64 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.65 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.66 = type { ptr }
%struct.damos_quota = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, [100 x i32], i32 }
%struct.damos_watermarks = type { i32, i32, i32, i32, i32, i8 }
%struct.damon_addr_range = type { i32, i32 }
%struct.damon_region = type { %struct.damon_addr_range, i32, i32, %struct.list_head, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.50, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.50 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }
%struct.kunit_binary_str_assert = type { %struct.kunit_assert, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_dbgfs__226_988_damon_dbgfs_init6 = internal global ptr @damon_dbgfs_init, section ".initcall6.init", align 4
@__UNIQUE_ID_array228 = internal global [2 x ptr] [ptr @damon_test_suite, ptr null], align 4
@__UNIQUE_ID_suites229 = internal global ptr @__UNIQUE_ID_array228, section ".kunit_test_suites", align 4
@damon_dbgfs_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @damon_dbgfs_lock, i64 52), ptr getelementptr (i8, ptr @damon_dbgfs_lock, i64 52) }, ptr @damon_dbgfs_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@dbgfs_ctxs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dbgfs_nr_ctxs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@damon_dbgfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013damon-dbgfs: %s: dbgfs init failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"damon_dbgfs_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mm/damon/dbgfs.c\00", [47 x i8] zeroinitializer }, align 32
@damon_dbgfs_init._entry_ptr = internal global ptr @damon_dbgfs_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"damon_dbgfs_lock.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"damon_dbgfs_lock\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mk_contexts\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rm_contexts\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"monitor_on\00", [21 x i8] zeroinitializer }, align 32
@__const.__damon_dbgfs_init.file_names = private unnamed_addr constant [3 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7], align 4
@mk_contexts_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @dbgfs_mk_context_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rm_contexts_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @dbgfs_rm_context_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@monitor_on_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @dbgfs_monitor_on_read, ptr @dbgfs_monitor_on_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__const.__damon_dbgfs_init.fops = private unnamed_addr constant [3 x ptr] [ptr @mk_contexts_fops, ptr @rm_contexts_fops, ptr @monitor_on_fops], align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"damon\00", [26 x i8] zeroinitializer }, align 32
@dbgfs_dirs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"on\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"off\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"attrs\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"schemes\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"target_ids\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_regions\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kdamond_pid\00", [20 x i8] zeroinitializer }, align 32
@attrs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @dbgfs_attrs_read, ptr @dbgfs_attrs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @damon_dbgfs_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@schemes_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @dbgfs_schemes_read, ptr @dbgfs_schemes_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @damon_dbgfs_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@target_ids_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @dbgfs_target_ids_read, ptr @dbgfs_target_ids_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @damon_dbgfs_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@init_regions_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @dbgfs_init_regions_read, ptr @dbgfs_init_regions_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @damon_dbgfs_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kdamond_pid_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @dbgfs_kdamond_pid_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @damon_dbgfs_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%lu %lu %lu %lu %lu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%lu %lu %lu %lu %lu\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%lu %lu %u %u %u %u %d %lu %lu %lu %u %u %u %d %lu %lu %lu %lu %lu %lu %lu %lu %lu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%lu %lu %u %u %u %u %u %lu %lu %lu %u %u %u %u %lu %lu %lu %lu%n\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu \00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"paddr\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"42    \00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lu%n\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%lu %lu %lu\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%lu %lu %lu%n\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none\0A\00", [26 x i8] zeroinitializer }, align 32
@damon_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"damon-dbgfs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @damon_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@damon_test_cases = internal global { [4 x %struct.kunit_case], [48 x i8] } { [4 x %struct.kunit_case] [%struct.kunit_case { ptr @damon_dbgfs_test_str_to_target_ids, ptr @.str.32, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @damon_dbgfs_test_set_targets, ptr @.str.33, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @damon_dbgfs_test_set_init_regions, ptr @.str.34, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"damon_dbgfs_test_str_to_target_ids\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"damon_dbgfs_test_set_targets\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"damon_dbgfs_test_set_init_regions\00", [62 x i8] zeroinitializer }, align 32
@__const.damon_dbgfs_test_str_to_target_ids.expected = private unnamed_addr constant [3 x i32] [i32 12, i32 35, i32 46], align 4
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"123\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mm/damon/dbgfs-test.h\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"(ssize_t)1\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nr_integers\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"123ul\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"answers[0]\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"123abc\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"a123\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"(ssize_t)0\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"12 35\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"(ssize_t)2\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"expected[i]\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"answers[i]\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"12 35 46\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"(ssize_t)3\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"12 35 abc 46\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1 2 3\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(char *)buf\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\221 2 3\\n\22\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\22\\n\22\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1 2\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\221 2\\n\22\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\222\\n\22\00", [26 x i8] zeroinitializer }, align 32
@__const.damon_dbgfs_test_set_init_regions.ids = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 3], align 4
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"2 10 20\0A 2   20 30\0A2 35 45\00", [37 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"2 10 20\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"2 10 20\0A1 39 59\0A1 70 134\0A  2  20 25\0A\00", [59 x i8] zeroinitializer }, align 32
@__const.damon_dbgfs_test_set_init_regions.valid_inputs = private unnamed_addr constant [4 x ptr] [ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.52], align 4
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"2 10 20\0A2 20 30\0A2 35 45\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"1 39 59\0A1 70 134\0A2 10 20\0A2 20 25\0A\00", [62 x i8] zeroinitializer }, align 32
@__const.damon_dbgfs_test_set_init_regions.valid_expects = private unnamed_addr constant [4 x ptr] [ptr @.str.64, ptr @.str.62, ptr @.str.65, ptr @.str.52], align 4
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"4 10 20\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"2 10 20\0A 2 14 26\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"1 10 20\0A2 30 40\0A 1 5 8\00", [41 x i8] zeroinitializer }, align 32
@__const.damon_dbgfs_test_set_init_regions.invalid_inputs = private unnamed_addr constant [3 x ptr] [ptr @.str.66, ptr @.str.67, ptr @.str.68], align 4
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rc\00", [29 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"expect\00", [25 x i8] zeroinitializer }, align 32
@damon_dbgfs_test_set_init_regions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.34, ptr @.str.36, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016damon-dbgfs: input: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@damon_dbgfs_test_set_init_regions._entry_ptr = internal global ptr @damon_dbgfs_test_set_init_regions._entry, section ".printk_index", align 4
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-22\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\22\22\00", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"damon_dbgfs_lock\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [11 x i8] c"dbgfs_ctxs\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 18, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant [14 x i8] c"dbgfs_nr_ctxs\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 19, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 980, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 21, i32 8 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 934, i32 37 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 934, i32 52 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 935, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"mk_contexts_fops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 918, i32 37 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"rm_contexts_fops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 922, i32 37 }
@___asan_gen_.117 = private unnamed_addr constant [16 x i8] c"monitor_on_fops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 926, i32 37 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 940, i32 34 }
@___asan_gen_.123 = private unnamed_addr constant [11 x i8] c"dbgfs_dirs\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 20, i32 24 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 758, i32 19 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 872, i32 50 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 872, i32 59 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 894, i32 21 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 905, i32 28 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 649, i32 37 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 649, i32 46 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 649, i32 57 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 650, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 650, i32 19 }
@___asan_gen_.156 = private unnamed_addr constant [11 x i8] c"attrs_fops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 618, i32 37 }
@___asan_gen_.159 = private unnamed_addr constant [13 x i8] c"schemes_fops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 624, i32 37 }
@___asan_gen_.162 = private unnamed_addr constant [16 x i8] c"target_ids_fops\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 630, i32 37 }
@___asan_gen_.165 = private unnamed_addr constant [18 x i8] c"init_regions_fops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 636, i32 37 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"kdamond_pid_fops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 642, i32 37 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 57, i32 42 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 78, i32 19 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 108, i32 5 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 205, i32 5 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 296, i32 48 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 303, i32 53 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 377, i32 21 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 380, i32 26 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 342, i32 27 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 449, i32 6 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 536, i32 27 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 598, i32 32 }
@___asan_gen_.208 = private constant [20 x i8] c"../mm/damon/dbgfs.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 600, i32 32 }
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"damon_test_suite\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 172, i32 27 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"damon_test_cases\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 165, i32 26 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 166, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 167, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 168, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 22, i32 13 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 25, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 26, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 29, i32 13 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 36, i32 13 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 39, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 42, i32 13 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 45, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 47, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 50, i32 13 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 53, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 58, i32 13 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 66, i32 13 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 91, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 95, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 99, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 103, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 117, i32 33 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 118, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 119, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 122, i32 34 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 124, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 126, i32 35 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 127, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 128, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 141, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 146, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 151, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 153, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.346 = private unnamed_addr constant [25 x i8] c"../mm/damon/dbgfs-test.h\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 158, i32 3 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @__UNIQUE_ID_suites229, ptr @__initcall__kmod_dbgfs__226_988_damon_dbgfs_init6, ptr @damon_dbgfs_init._entry, ptr @damon_dbgfs_init._entry_ptr, ptr @damon_dbgfs_test_set_init_regions._entry, ptr @damon_dbgfs_test_set_init_regions._entry_ptr, ptr @damon_dbgfs_lock, ptr @dbgfs_ctxs, ptr @dbgfs_nr_ctxs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mk_contexts_fops, ptr @rm_contexts_fops, ptr @monitor_on_fops, ptr @.str.8, ptr @dbgfs_dirs, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @attrs_fops, ptr @schemes_fops, ptr @target_ids_fops, ptr @init_regions_fops, ptr @kdamond_pid_fops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @damon_test_suite, ptr @damon_test_cases, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @damon_dbgfs_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbgfs_ctxs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbgfs_nr_ctxs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @damon_dbgfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mk_contexts_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm_contexts_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @monitor_on_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbgfs_dirs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attrs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @schemes_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_ids_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_regions_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdamond_pid_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @damon_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @damon_test_cases to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @damon_dbgfs_test_set_init_regions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @damon_dbgfs_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @damon_dbgfs_lock, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #15
  store ptr %call7.i, ptr @dbgfs_ctxs, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @damon_new_ctx() #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %1 = load ptr, ptr @dbgfs_ctxs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %1, align 4
  tail call void @kfree(ptr noundef %1) #12
  br label %out

if.end5:                                          ; preds = %if.end
  tail call void @damon_va_set_primitives(ptr noundef nonnull %call.i) #12
  %before_terminate.i = getelementptr inbounds %struct.damon_ctx, ptr %call.i, i32 0, i32 8, i32 4
  %3 = ptrtoint ptr %before_terminate.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dbgfs_before_terminate, ptr %before_terminate.i, align 4
  %4 = load ptr, ptr @dbgfs_ctxs, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %4, align 4
  store i32 1, ptr @dbgfs_nr_ctxs, align 4
  %call6 = tail call fastcc i32 @__damon_dbgfs_init() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.out_crit_edge, label %if.then8

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %6 = load ptr, ptr @dbgfs_ctxs, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %8) #12
  %9 = load ptr, ptr @dbgfs_ctxs, align 4
  tail call void @kfree(ptr noundef %9) #12
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17
  br label %out

out:                                              ; preds = %if.then8, %if.end5.out_crit_edge, %if.then4, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call6, %if.then8 ], [ 0, %if.end5.out_crit_edge ], [ -12, %if.then4 ], [ -12, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @damon_dbgfs_lock) #12
  ret i32 %rc.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__damon_dbgfs_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.8, ptr noundef null) #12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.015 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x ptr], ptr @__const.__damon_dbgfs_init.file_names, i32 0, i32 %i.015
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [3 x ptr], ptr @__const.__damon_dbgfs_init.fops, i32 0, i32 %i.015
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %call2 = tail call ptr @debugfs_create_file(ptr noundef %1, i16 noundef zeroext 384, ptr noundef %call, ptr noundef null, ptr noundef %3) #12
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  %4 = load ptr, ptr @dbgfs_ctxs, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %6, ptr noundef nonnull @attrs_fops) #12
  %call.1.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %6, ptr noundef nonnull @schemes_fops) #12
  %call.2.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %6, ptr noundef nonnull @target_ids_fops) #12
  %call.3.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %6, ptr noundef nonnull @init_regions_fops) #12
  %call.4.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %6, ptr noundef nonnull @kdamond_pid_fops) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 4) #15
  store ptr %call7.i.i, ptr @dbgfs_dirs, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debugfs_remove(ptr noundef %call) #12
  br label %cleanup

if.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @damon_new_ctx() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @damon_va_set_primitives(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dbgfs_before_terminate(ptr noundef %ctx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %target_valid.i = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 7, i32 7
  %0 = ptrtoint ptr %target_valid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %target_valid.i, align 4
  %cmp.i = icmp eq ptr %1, @damon_va_target_valid
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %kdamond_lock = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %kdamond_lock, i32 noundef 0) #12
  %adaptive_targets = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 11
  %2 = ptrtoint ptr %adaptive_targets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adaptive_targets, align 8
  %cmp.not24 = icmp eq ptr %3, %adaptive_targets
  br i1 %cmp.not24, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in25 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %3, %if.end.for.body_crit_edge ]
  %t.0 = getelementptr i8, ptr %.pn.in25, i32 -16
  %4 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in25, align 4
  %5 = ptrtoint ptr %t.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %t.0, align 4
  %7 = inttoptr i32 %6 to ptr
  tail call void @put_pid(ptr noundef %7) #12
  tail call void @damon_destroy_target(ptr noundef %t.0) #12
  %cmp.not = icmp eq ptr %.pn, %adaptive_targets
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %kdamond_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @damon_destroy_target(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @damon_va_target_valid(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbgfs_mk_context_write(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i, label %if.end.i25, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end.i25:                                       ; preds = %entry
  %add.i = add i32 %count, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 11456) #18
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.end.i25.if.then_crit_edge, label %if.end5.i

if.end.i25.if.then_crit_edge:                     ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end5.i:                                        ; preds = %if.end.i25
  %call7.i28 = tail call i32 @simple_write_to_buffer(ptr noundef nonnull %call9.i.i, i32 noundef %add.i, ptr noundef %ppos, ptr noundef %buf, i32 noundef %count) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i28, i32 %count)
  %cmp.not.i = icmp eq i32 %call7.i28, %count
  br i1 %cmp.not.i, label %user_input_str.exit, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %if.then

user_input_str.exit:                              ; preds = %if.end5.i
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %count
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx.i, align 1
  %cmp.i29 = icmp ugt ptr %call9.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29, label %user_input_str.exit.if.then_crit_edge, label %if.end8.i

user_input_str.exit.if.then_crit_edge:            ; preds = %user_input_str.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %user_input_str.exit.if.then_crit_edge, %if.then8.i, %if.end.i25.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i41 = phi ptr [ %call9.i.i, %user_input_str.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i25.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.then8.i ]
  %3 = ptrtoint ptr %retval.0.i41 to i32
  br label %cleanup

if.end8.i:                                        ; preds = %user_input_str.exit
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #18
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end8.i
  %call6 = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call9.i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull %call9.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp.not = icmp eq i32 %call6, 1
  br i1 %cmp.not, label %if.end8, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end8:                                          ; preds = %if.end5
  tail call void @mutex_lock_nested(ptr noundef nonnull @damon_dbgfs_lock, i32 noundef 0) #12
  %call.i = tail call i32 @damon_nr_running_ctxs() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i30 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i30, label %if.end.i33, label %if.end8.dbgfs_mk_context.exit.thread_crit_edge

if.end8.dbgfs_mk_context.exit.thread_crit_edge:   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %dbgfs_mk_context.exit.thread

if.end.i33:                                       ; preds = %if.end8
  %4 = load ptr, ptr @dbgfs_ctxs, align 4
  %5 = load i32, ptr @dbgfs_nr_ctxs, align 4
  %add.i31 = shl i32 %5, 2
  %mul.i = add i32 %add.i31, 4
  %call1.i = tail call noalias ptr @krealloc(ptr noundef %4, i32 noundef %mul.i, i32 noundef 3264) #19
  %tobool2.not.i32 = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i32, label %if.end.i33.dbgfs_mk_context.exit.thread_crit_edge, label %if.end4.i35

if.end.i33.dbgfs_mk_context.exit.thread_crit_edge: ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #14
  br label %dbgfs_mk_context.exit.thread

if.end4.i35:                                      ; preds = %if.end.i33
  store ptr %call1.i, ptr @dbgfs_ctxs, align 4
  %6 = load ptr, ptr @dbgfs_dirs, align 4
  %7 = load i32, ptr @dbgfs_nr_ctxs, align 4
  %add5.i = shl i32 %7, 2
  %mul6.i = add i32 %add5.i, 4
  %call7.i34 = tail call noalias ptr @krealloc(ptr noundef %6, i32 noundef %mul6.i, i32 noundef 3264) #19
  %tobool8.not.i = icmp eq ptr %call7.i34, null
  br i1 %tobool8.not.i, label %if.end4.i35.dbgfs_mk_context.exit.thread_crit_edge, label %if.end10.i36

if.end4.i35.dbgfs_mk_context.exit.thread_crit_edge: ; preds = %if.end4.i35
  call void @__sanitizer_cov_trace_pc() #14
  br label %dbgfs_mk_context.exit.thread

if.end10.i36:                                     ; preds = %if.end4.i35
  store ptr %call7.i34, ptr @dbgfs_dirs, align 4
  %8 = ptrtoint ptr %call7.i34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call7.i34, align 4
  %tobool11.not.i = icmp eq ptr %9, null
  br i1 %tobool11.not.i, label %if.end10.i36.dbgfs_mk_context.exit.thread_crit_edge, label %if.end13.i

if.end10.i36.dbgfs_mk_context.exit.thread_crit_edge: ; preds = %if.end10.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %dbgfs_mk_context.exit.thread

if.end13.i:                                       ; preds = %if.end10.i36
  %call14.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull %call9.i, ptr noundef nonnull %9) #12
  %10 = load ptr, ptr @dbgfs_dirs, align 4
  %11 = load i32, ptr @dbgfs_nr_ctxs, align 4
  %arrayidx15.i = getelementptr ptr, ptr %10, i32 %11
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call14.i, ptr %arrayidx15.i, align 4
  %call.i.i = tail call ptr @damon_new_ctx() #12
  %tobool.not.i.i37 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i37, label %if.then18.i, label %16

if.then18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debugfs_remove(ptr noundef %call14.i) #12
  %13 = load ptr, ptr @dbgfs_dirs, align 4
  %14 = load i32, ptr @dbgfs_nr_ctxs, align 4
  %arrayidx19.i = getelementptr ptr, ptr %13, i32 %14
  %15 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx19.i, align 4
  br label %dbgfs_mk_context.exit.thread

16:                                               ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @damon_va_set_primitives(ptr noundef nonnull %call.i.i) #12
  %before_terminate.i.i = getelementptr inbounds %struct.damon_ctx, ptr %call.i.i, i32 0, i32 8, i32 4
  %17 = ptrtoint ptr %before_terminate.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @dbgfs_before_terminate, ptr %before_terminate.i.i, align 4
  %18 = load ptr, ptr @dbgfs_ctxs, align 4
  %19 = load i32, ptr @dbgfs_nr_ctxs, align 4
  %arrayidx21.i = getelementptr ptr, ptr %18, i32 %19
  %20 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %arrayidx21.i, align 4
  %21 = load ptr, ptr @dbgfs_dirs, align 4
  %arrayidx22.i = getelementptr ptr, ptr %21, i32 %19
  %22 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx22.i, align 4
  %call.i33.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 384, ptr noundef %23, ptr noundef nonnull %call.i.i, ptr noundef nonnull @attrs_fops) #12
  %call.1.i.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 384, ptr noundef %23, ptr noundef nonnull %call.i.i, ptr noundef nonnull @schemes_fops) #12
  %call.2.i.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 384, ptr noundef %23, ptr noundef nonnull %call.i.i, ptr noundef nonnull @target_ids_fops) #12
  %call.3.i.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 384, ptr noundef %23, ptr noundef nonnull %call.i.i, ptr noundef nonnull @init_regions_fops) #12
  %call.4.i.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 384, ptr noundef %23, ptr noundef nonnull %call.i.i, ptr noundef nonnull @kdamond_pid_fops) #12
  %24 = load i32, ptr @dbgfs_nr_ctxs, align 4
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr @dbgfs_nr_ctxs, align 4
  br label %dbgfs_mk_context.exit.thread

dbgfs_mk_context.exit.thread:                     ; preds = %16, %if.then18.i, %if.end10.i36.dbgfs_mk_context.exit.thread_crit_edge, %if.end4.i35.dbgfs_mk_context.exit.thread_crit_edge, %if.end.i33.dbgfs_mk_context.exit.thread_crit_edge, %if.end8.dbgfs_mk_context.exit.thread_crit_edge
  %25 = phi i32 [ %count, %16 ], [ -2, %if.end10.i36.dbgfs_mk_context.exit.thread_crit_edge ], [ -12, %if.end4.i35.dbgfs_mk_context.exit.thread_crit_edge ], [ -12, %if.end.i33.dbgfs_mk_context.exit.thread_crit_edge ], [ -16, %if.end8.dbgfs_mk_context.exit.thread_crit_edge ], [ -12, %if.then18.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @damon_dbgfs_lock) #12
  br label %out

out:                                              ; preds = %dbgfs_mk_context.exit.thread, %if.end5.out_crit_edge
  %ret.1 = phi i32 [ %25, %dbgfs_mk_context.exit.thread ], [ -22, %if.end5.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then4, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %ret.1, %out ], [ -12, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_write_to_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @damon_nr_running_ctxs() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbgfs_rm_context_write(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i, label %if.end.i25, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end.i25:                                       ; preds = %entry
  %add.i = add i32 %count, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 11456) #18
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.end.i25.if.then_crit_edge, label %if.end5.i

if.end.i25.if.then_crit_edge:                     ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end5.i:                                        ; preds = %if.end.i25
  %call7.i28 = tail call i32 @simple_write_to_buffer(ptr noundef nonnull %call9.i.i, i32 noundef %add.i, ptr noundef %ppos, ptr noundef %buf, i32 noundef %count) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i28, i32 %count)
  %cmp.not.i = icmp eq i32 %call7.i28, %count
  br i1 %cmp.not.i, label %user_input_str.exit, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %if.then

user_input_str.exit:                              ; preds = %if.end5.i
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %count
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx.i, align 1
  %cmp.i29 = icmp ugt ptr %call9.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29, label %user_input_str.exit.if.then_crit_edge, label %if.end8.i

user_input_str.exit.if.then_crit_edge:            ; preds = %user_input_str.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %user_input_str.exit.if.then_crit_edge, %if.then8.i, %if.end.i25.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i40 = phi ptr [ %call9.i.i, %user_input_str.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i25.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.then8.i ]
  %3 = ptrtoint ptr %retval.0.i40 to i32
  br label %cleanup

if.end8.i:                                        ; preds = %user_input_str.exit
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #18
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end8.i
  %call6 = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call9.i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull %call9.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp.not = icmp eq i32 %call6, 1
  br i1 %cmp.not, label %if.end8, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end8:                                          ; preds = %if.end5
  tail call void @mutex_lock_nested(ptr noundef nonnull @damon_dbgfs_lock, i32 noundef 0) #12
  %call.i = tail call i32 @damon_nr_running_ctxs() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i30 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i30, label %if.end.i31, label %if.end8.dbgfs_rm_context.exit.thread_crit_edge

if.end8.dbgfs_rm_context.exit.thread_crit_edge:   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %dbgfs_rm_context.exit.thread

if.end.i31:                                       ; preds = %if.end8
  %4 = load ptr, ptr @dbgfs_dirs, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %if.end.i31.dbgfs_rm_context.exit.thread_crit_edge, label %if.end3.i

if.end.i31.dbgfs_rm_context.exit.thread_crit_edge: ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %dbgfs_rm_context.exit.thread

if.end3.i:                                        ; preds = %if.end.i31
  %call4.i = tail call ptr @debugfs_lookup(ptr noundef nonnull %call9.i, ptr noundef nonnull %6) #12
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end3.i.dbgfs_rm_context.exit.thread_crit_edge, label %if.end7.i

if.end3.i.dbgfs_rm_context.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dbgfs_rm_context.exit.thread

if.end7.i:                                        ; preds = %if.end3.i
  %7 = load i32, ptr @dbgfs_nr_ctxs, align 4
  %sub.i = add i32 %7, -1
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub.i, i32 4) #12
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %if.end7.i.dbgfs_rm_context.exit.thread_crit_edge, label %if.end7.i.i, !prof !182

if.end7.i.dbgfs_rm_context.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dbgfs_rm_context.exit.thread

if.end7.i.i:                                      ; preds = %if.end7.i
  %10 = extractvalue { i32, i1 } %8, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #18
  %tobool9.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool9.not.i, label %if.end7.i.i.dbgfs_rm_context.exit.thread_crit_edge, label %if.end11.i

if.end7.i.i.dbgfs_rm_context.exit.thread_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dbgfs_rm_context.exit.thread

if.end11.i:                                       ; preds = %if.end7.i.i
  %11 = load i32, ptr @dbgfs_nr_ctxs, align 4
  %sub12.i = add i32 %11, -1
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub12.i, i32 4) #12
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.end11.i.if.then15.i_crit_edge, label %if.end7.i78.i, !prof !182

if.end11.i.if.then15.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i

if.end7.i78.i:                                    ; preds = %if.end11.i
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i77.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3264) #18
  %tobool14.not.i = icmp eq ptr %call8.i77.i, null
  br i1 %tobool14.not.i, label %if.end7.i78.i.if.then15.i_crit_edge, label %for.cond.preheader.i

if.end7.i78.i.if.then15.i_crit_edge:              ; preds = %if.end7.i78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i

for.cond.preheader.i:                             ; preds = %if.end7.i78.i
  %15 = load i32, ptr @dbgfs_nr_ctxs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp89.i = icmp sgt i32 %15, 0
  br i1 %cmp89.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i..loopexit_crit_edge

for.cond.preheader.i..loopexit_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %.loopexit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

if.then15.i:                                      ; preds = %if.end7.i78.i.if.then15.i_crit_edge, %if.end11.i.if.then15.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #12
  br label %dbgfs_rm_context.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %j.092.i = phi i32 [ %j.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.090.i = phi i32 [ %inc27.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %16 = load ptr, ptr @dbgfs_dirs, align 4
  %arrayidx17.i = getelementptr ptr, ptr %16, i32 %i.090.i
  %17 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx17.i, align 4
  %cmp18.i = icmp eq ptr %18, %call4.i
  br i1 %cmp18.i, label %if.then19.i, label %if.end22.i

if.then19.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debugfs_remove(ptr noundef nonnull %call4.i) #12
  %19 = load ptr, ptr @dbgfs_ctxs, align 4
  %arrayidx21.i = getelementptr ptr, ptr %19, i32 %i.090.i
  %20 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx21.i, align 4
  tail call void @damon_destroy_ctx(ptr noundef %21) #12
  br label %for.inc.i

if.end22.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx24.i = getelementptr ptr, ptr %call8.i.i, i32 %j.092.i
  %22 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %18, ptr %arrayidx24.i, align 4
  %23 = load ptr, ptr @dbgfs_ctxs, align 4
  %arrayidx25.i = getelementptr ptr, ptr %23, i32 %i.090.i
  %24 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx25.i, align 4
  %inc.i = add i32 %j.092.i, 1
  %arrayidx26.i = getelementptr ptr, ptr %call8.i77.i, i32 %j.092.i
  %26 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %arrayidx26.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end22.i, %if.then19.i
  %j.1.i = phi i32 [ %j.092.i, %if.then19.i ], [ %inc.i, %if.end22.i ]
  %inc27.i = add nuw nsw i32 %i.090.i, 1
  %27 = load i32, ptr @dbgfs_nr_ctxs, align 4
  %cmp.i36 = icmp slt i32 %inc27.i, %27
  br i1 %cmp.i36, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i..loopexit_crit_edge

for.inc.i..loopexit_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %.loopexit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

.loopexit:                                        ; preds = %for.inc.i..loopexit_crit_edge, %for.cond.preheader.i..loopexit_crit_edge
  %28 = load ptr, ptr @dbgfs_dirs, align 4
  tail call void @kfree(ptr noundef %28) #12
  %29 = load ptr, ptr @dbgfs_ctxs, align 4
  tail call void @kfree(ptr noundef %29) #12
  store ptr %call8.i.i, ptr @dbgfs_dirs, align 4
  store ptr %call8.i77.i, ptr @dbgfs_ctxs, align 4
  %30 = load i32, ptr @dbgfs_nr_ctxs, align 4
  %dec.i = add i32 %30, -1
  store i32 %dec.i, ptr @dbgfs_nr_ctxs, align 4
  br label %dbgfs_rm_context.exit.thread

dbgfs_rm_context.exit.thread:                     ; preds = %.loopexit, %if.then15.i, %if.end7.i.i.dbgfs_rm_context.exit.thread_crit_edge, %if.end7.i.dbgfs_rm_context.exit.thread_crit_edge, %if.end3.i.dbgfs_rm_context.exit.thread_crit_edge, %if.end.i31.dbgfs_rm_context.exit.thread_crit_edge, %if.end8.dbgfs_rm_context.exit.thread_crit_edge
  %31 = phi i32 [ %count, %.loopexit ], [ -12, %if.end7.i.dbgfs_rm_context.exit.thread_crit_edge ], [ -12, %if.end7.i.i.dbgfs_rm_context.exit.thread_crit_edge ], [ -2, %if.end3.i.dbgfs_rm_context.exit.thread_crit_edge ], [ -2, %if.end.i31.dbgfs_rm_context.exit.thread_crit_edge ], [ -16, %if.end8.dbgfs_rm_context.exit.thread_crit_edge ], [ -12, %if.then15.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @damon_dbgfs_lock) #12
  br label %out

out:                                              ; preds = %dbgfs_rm_context.exit.thread, %if.end5.out_crit_edge
  %ret.1 = phi i32 [ %31, %dbgfs_rm_context.exit.thread ], [ -22, %if.end5.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then4, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %ret.1, %out ], [ -12, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @damon_destroy_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbgfs_monitor_on_read(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #6 align 64 {
entry:
  %monitor_on_buf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %monitor_on_buf) #12
  %0 = call ptr @memset(ptr %monitor_on_buf, i32 255, i32 5)
  %call = tail call i32 @damon_nr_running_ctxs() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  %cond = select i1 %cmp.not, ptr @.str.11, ptr @.str.10
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %monitor_on_buf, i32 noundef 5, ptr noundef nonnull %cond) #12
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %monitor_on_buf, i32 noundef %call1) #12
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %monitor_on_buf) #12
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbgfs_monitor_on_write(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end.i:                                         ; preds = %entry
  %add.i = add i32 %count, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 11456) #18
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.then_crit_edge, label %if.end5.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end5.i:                                        ; preds = %if.end.i
  %call7.i = tail call i32 @simple_write_to_buffer(ptr noundef nonnull %call9.i.i, i32 noundef %add.i, ptr noundef %ppos, ptr noundef %buf, i32 noundef %count) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %count)
  %cmp.not.i = icmp eq i32 %call7.i, %count
  br i1 %cmp.not.i, label %user_input_str.exit, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %if.then

user_input_str.exit:                              ; preds = %if.end5.i
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %count
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx.i, align 1
  %cmp.i = icmp ugt ptr %call9.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %user_input_str.exit.if.then_crit_edge, label %if.end

user_input_str.exit.if.then_crit_edge:            ; preds = %user_input_str.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %user_input_str.exit.if.then_crit_edge, %if.then8.i, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i43 = phi ptr [ %call9.i.i, %user_input_str.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.then8.i ]
  %3 = ptrtoint ptr %retval.0.i43 to i32
  br label %cleanup23

if.end:                                           ; preds = %user_input_str.exit
  %call3 = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call9.i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull %call9.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 1
  br i1 %cmp.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup23

if.end5:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @damon_dbgfs_lock, i32 noundef 0) #12
  %call6 = tail call i32 @strncmp(ptr noundef nonnull %call9.i.i, ptr noundef nonnull @.str.12, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.end5
  %4 = load i32, ptr @dbgfs_nr_ctxs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp851 = icmp sgt i32 %4, 0
  br i1 %cmp851, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.052, 1
  %5 = load i32, ptr @dbgfs_nr_ctxs, align 4
  %cmp8 = icmp slt i32 %inc, %5
  br i1 %cmp8, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %6 = load ptr, ptr @dbgfs_ctxs, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 %i.052
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call9 = tail call zeroext i1 @damon_targets_empty(ptr noundef %8) #12
  br i1 %call9, label %cleanup.thread, label %for.cond

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  tail call void @mutex_unlock(ptr noundef nonnull @damon_dbgfs_lock) #12
  br label %cleanup23

cleanup:                                          ; preds = %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %.lcssa = phi i32 [ %4, %for.cond.preheader.cleanup_crit_edge ], [ %5, %for.cond.cleanup_crit_edge ]
  %9 = load ptr, ptr @dbgfs_ctxs, align 4
  %call12 = tail call i32 @damon_start(ptr noundef %9, i32 noundef %.lcssa) #12
  br label %if.end19

if.else:                                          ; preds = %if.end5
  %call13 = tail call i32 @strncmp(ptr noundef nonnull %call9.i.i, ptr noundef nonnull @.str.13, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end19.thread

if.end19.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef nonnull @damon_dbgfs_lock) #12
  br label %12

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %10 = load ptr, ptr @dbgfs_ctxs, align 4
  %11 = load i32, ptr @dbgfs_nr_ctxs, align 4
  %call16 = tail call i32 @damon_stop(ptr noundef %10, i32 noundef %11) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %cleanup
  %ret.1 = phi i32 [ %call16, %if.then15 ], [ %call12, %cleanup ]
  tail call void @mutex_unlock(ptr noundef nonnull @damon_dbgfs_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool20.not = icmp eq i32 %ret.1, 0
  %spec.select = select i1 %tobool20.not, i32 %count, i32 %ret.1
  br label %12

12:                                               ; preds = %if.end19, %if.end19.thread
  %13 = phi i32 [ -22, %if.end19.thread ], [ %spec.select, %if.end19 ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup23

cleanup23:                                        ; preds = %12, %cleanup.thread, %if.then4, %if.then
  %retval.1 = phi i32 [ %3, %if.then ], [ -22, %if.then4 ], [ %13, %12 ], [ -22, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @damon_targets_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @damon_start(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @damon_stop(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbgfs_attrs_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #6 align 64 {
entry:
  %kbuf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %kbuf) #12
  %2 = call ptr @memset(ptr %kbuf, i32 255, i32 128)
  %kdamond_lock = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %kdamond_lock, i32 noundef 0) #12
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 8
  %aggr_interval = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %aggr_interval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %aggr_interval, align 4
  %primitive_update_interval = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %primitive_update_interval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %primitive_update_interval, align 8
  %min_nr_regions = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %min_nr_regions to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %min_nr_regions, align 8
  %max_nr_regions = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %max_nr_regions to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_nr_regions, align 4
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %kbuf, i32 noundef 128, ptr noundef nonnull @.str.19, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12) #12
  call void @mutex_unlock(ptr noundef %kdamond_lock) #12
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %kbuf, i32 noundef %call) #12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %kbuf) #12
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbgfs_attrs_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #6 align 64 {
entry:
  %s = alloca i32, align 4
  %a = alloca i32, align 4
  %r = alloca i32, align 4
  %minr = alloca i32, align 4
  %maxr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s) #12
  %2 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %s, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #12
  %3 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %a, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r) #12
  %4 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %r, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minr) #12
  %5 = ptrtoint ptr %minr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %minr, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maxr) #12
  %6 = ptrtoint ptr %maxr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %maxr, align 4, !annotation !183
  %7 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not.i = icmp eq i64 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end.i:                                         ; preds = %entry
  %add.i = add i32 %count, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 11456) #18
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.then_crit_edge, label %if.end5.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end5.i:                                        ; preds = %if.end.i
  %call7.i = tail call i32 @simple_write_to_buffer(ptr noundef nonnull %call9.i.i, i32 noundef %add.i, ptr noundef %ppos, ptr noundef %buf, i32 noundef %count) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %count)
  %cmp.not.i = icmp eq i32 %call7.i, %count
  br i1 %cmp.not.i, label %user_input_str.exit, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %if.then

user_input_str.exit:                              ; preds = %if.end5.i
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %count
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx.i, align 1
  %cmp.i = icmp ugt ptr %call9.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %user_input_str.exit.if.then_crit_edge, label %if.end

user_input_str.exit.if.then_crit_edge:            ; preds = %user_input_str.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %user_input_str.exit.if.then_crit_edge, %if.then8.i, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i30 = phi ptr [ %call9.i.i, %user_input_str.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.then8.i ]
  %10 = ptrtoint ptr %retval.0.i30 to i32
  br label %cleanup

if.end:                                           ; preds = %user_input_str.exit
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call9.i.i, ptr noundef nonnull @.str.20, ptr noundef nonnull %s, ptr noundef nonnull %a, ptr noundef nonnull %r, ptr noundef nonnull %minr, ptr noundef nonnull %maxr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 5
  br i1 %cmp.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end5:                                          ; preds = %if.end
  %kdamond_lock = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %kdamond_lock, i32 noundef 0) #12
  %kdamond = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %kdamond to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %kdamond, align 8
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end7, label %if.end5.unlock_out_crit_edge

if.end5.unlock_out_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_out

if.end7:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s, align 4
  %15 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %a, align 4
  %17 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %r, align 4
  %19 = ptrtoint ptr %minr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %minr, align 4
  %21 = ptrtoint ptr %maxr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %maxr, align 4
  %call8 = call i32 @damon_set_attrs(ptr noundef %1, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %spec.select = select i1 %tobool9.not, i32 %count, i32 %call8
  br label %unlock_out

unlock_out:                                       ; preds = %if.end7, %if.end5.unlock_out_crit_edge
  %ret.0 = phi i32 [ -16, %if.end5.unlock_out_crit_edge ], [ %spec.select, %if.end7 ]
  call void @mutex_unlock(ptr noundef %kdamond_lock) #12
  br label %out

out:                                              ; preds = %unlock_out, %if.end.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %unlock_out ], [ -22, %if.end.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %10, %if.then ], [ %ret.1, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maxr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @damon_dbgfs_open(ptr noundef %inode, ptr noundef %file) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %private_data, align 4
  %call = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %file) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @damon_set_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbgfs_schemes_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %count, i32 noundef 11456) #18
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %kdamond_lock = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %kdamond_lock, i32 noundef 0) #12
  %schemes.i = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %schemes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn51.i = load ptr, ptr %schemes.i, align 4
  %cmp.not52.i = icmp eq ptr %.pn51.i, %schemes.i
  br i1 %cmp.not52.i, label %sprint_schemes.exit.thread22, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

sprint_schemes.exit.thread22:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %kdamond_lock) #12
  br label %if.end4

for.cond.i:                                       ; preds = %for.body.i
  %add.i = add i32 %call.i, %written.053.i
  %3 = ptrtoint ptr %.pn54.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn54.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %schemes.i
  br i1 %cmp.not.i, label %sprint_schemes.exit, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn54.i = phi ptr [ %.pn.i, %for.cond.i.for.body.i_crit_edge ], [ %.pn51.i, %if.end.for.body.i_crit_edge ]
  %written.053.i = phi i32 [ %add.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %s.0.i = getelementptr i8, ptr %.pn54.i, i32 -528
  %arrayidx.i = getelementptr i8, ptr %call9.i, i32 %written.053.i
  %sub.i = sub i32 %count, %written.053.i
  %4 = ptrtoint ptr %s.0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s.0.i, align 4
  %max_sz_region.i = getelementptr i8, ptr %.pn54.i, i32 -524
  %6 = ptrtoint ptr %max_sz_region.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_sz_region.i, align 4
  %min_nr_accesses.i = getelementptr i8, ptr %.pn54.i, i32 -520
  %8 = ptrtoint ptr %min_nr_accesses.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %min_nr_accesses.i, align 4
  %max_nr_accesses.i = getelementptr i8, ptr %.pn54.i, i32 -516
  %10 = ptrtoint ptr %max_nr_accesses.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_nr_accesses.i, align 4
  %min_age_region.i = getelementptr i8, ptr %.pn54.i, i32 -512
  %12 = ptrtoint ptr %min_age_region.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %min_age_region.i, align 4
  %max_age_region.i = getelementptr i8, ptr %.pn54.i, i32 -508
  %14 = ptrtoint ptr %max_age_region.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_age_region.i, align 4
  %action.i = getelementptr i8, ptr %.pn54.i, i32 -504
  %16 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %action.i, align 4
  %quota.i = getelementptr i8, ptr %.pn54.i, i32 -500
  %18 = ptrtoint ptr %quota.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %quota.i, align 4
  %sz.i = getelementptr i8, ptr %.pn54.i, i32 -496
  %20 = ptrtoint ptr %sz.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sz.i, align 4
  %reset_interval.i = getelementptr i8, ptr %.pn54.i, i32 -492
  %22 = ptrtoint ptr %reset_interval.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reset_interval.i, align 4
  %weight_sz.i = getelementptr i8, ptr %.pn54.i, i32 -488
  %24 = ptrtoint ptr %weight_sz.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %weight_sz.i, align 4
  %weight_nr_accesses.i = getelementptr i8, ptr %.pn54.i, i32 -484
  %26 = ptrtoint ptr %weight_nr_accesses.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %weight_nr_accesses.i, align 4
  %weight_age.i = getelementptr i8, ptr %.pn54.i, i32 -480
  %28 = ptrtoint ptr %weight_age.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %weight_age.i, align 4
  %wmarks.i = getelementptr i8, ptr %.pn54.i, i32 -44
  %30 = ptrtoint ptr %wmarks.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wmarks.i, align 4
  %interval.i = getelementptr i8, ptr %.pn54.i, i32 -40
  %32 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %interval.i, align 4
  %high.i = getelementptr i8, ptr %.pn54.i, i32 -36
  %34 = ptrtoint ptr %high.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %high.i, align 4
  %mid.i = getelementptr i8, ptr %.pn54.i, i32 -32
  %36 = ptrtoint ptr %mid.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mid.i, align 4
  %low.i = getelementptr i8, ptr %.pn54.i, i32 -28
  %38 = ptrtoint ptr %low.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %low.i, align 4
  %stat.i = getelementptr i8, ptr %.pn54.i, i32 -20
  %40 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stat.i, align 4
  %sz_tried.i = getelementptr i8, ptr %.pn54.i, i32 -16
  %42 = ptrtoint ptr %sz_tried.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sz_tried.i, align 4
  %nr_applied.i = getelementptr i8, ptr %.pn54.i, i32 -12
  %44 = ptrtoint ptr %nr_applied.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr_applied.i, align 4
  %sz_applied.i = getelementptr i8, ptr %.pn54.i, i32 -8
  %46 = ptrtoint ptr %sz_applied.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sz_applied.i, align 4
  %qt_exceeds.i = getelementptr i8, ptr %.pn54.i, i32 -4
  %48 = ptrtoint ptr %qt_exceeds.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %qt_exceeds.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.i, i32 noundef %sub.i, ptr noundef nonnull @.str.21, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sprint_schemes.exit.thread, label %for.cond.i

sprint_schemes.exit.thread:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %kdamond_lock) #12
  br label %out

sprint_schemes.exit:                              ; preds = %for.cond.i
  tail call void @mutex_unlock(ptr noundef %kdamond_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp = icmp slt i32 %add.i, 0
  br i1 %cmp, label %sprint_schemes.exit.out_crit_edge, label %sprint_schemes.exit.if.end4_crit_edge

sprint_schemes.exit.if.end4_crit_edge:            ; preds = %sprint_schemes.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

sprint_schemes.exit.out_crit_edge:                ; preds = %sprint_schemes.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %sprint_schemes.exit.if.end4_crit_edge, %sprint_schemes.exit.thread22
  %retval.0.i25 = phi i32 [ 0, %sprint_schemes.exit.thread22 ], [ %add.i, %sprint_schemes.exit.if.end4_crit_edge ]
  %call5 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call9.i, i32 noundef %retval.0.i25) #12
  br label %out

out:                                              ; preds = %if.end4, %sprint_schemes.exit.out_crit_edge, %sprint_schemes.exit.thread
  %len.0 = phi i32 [ %add.i, %sprint_schemes.exit.out_crit_edge ], [ %call5, %if.end4 ], [ -12, %sprint_schemes.exit.thread ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbgfs_schemes_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #6 align 64 {
entry:
  %parsed.i = alloca i32, align 4
  %min_sz.i = alloca i32, align 4
  %max_sz.i = alloca i32, align 4
  %min_nr_a.i = alloca i32, align 4
  %max_nr_a.i = alloca i32, align 4
  %min_age.i = alloca i32, align 4
  %max_age.i = alloca i32, align 4
  %action.i = alloca i32, align 4
  %quota.i = alloca %struct.damos_quota, align 4
  %wmarks.i = alloca %struct.damos_watermarks, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not.i = icmp eq i64 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end.i:                                         ; preds = %entry
  %add.i = add i32 %count, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 11456) #18
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.then_crit_edge, label %if.end5.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end5.i:                                        ; preds = %if.end.i
  %call7.i = tail call i32 @simple_write_to_buffer(ptr noundef nonnull %call9.i.i, i32 noundef %add.i, ptr noundef %ppos, ptr noundef %buf, i32 noundef %count) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %count)
  %cmp.not.i = icmp eq i32 %call7.i, %count
  br i1 %cmp.not.i, label %user_input_str.exit, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %if.then

user_input_str.exit:                              ; preds = %if.end5.i
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %count
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx.i, align 1
  %cmp.i = icmp ugt ptr %call9.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %user_input_str.exit.if.then_crit_edge, label %if.end

user_input_str.exit.if.then_crit_edge:            ; preds = %user_input_str.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %user_input_str.exit.if.then_crit_edge, %if.then8.i, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i43 = phi ptr [ %call9.i.i, %user_input_str.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.then8.i ]
  %5 = ptrtoint ptr %retval.0.i43 to i32
  br label %cleanup

if.end:                                           ; preds = %user_input_str.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parsed.i) #12
  %6 = ptrtoint ptr %parsed.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %parsed.i, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_sz.i) #12
  %7 = ptrtoint ptr %min_sz.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %min_sz.i, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_sz.i) #12
  %8 = ptrtoint ptr %max_sz.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %max_sz.i, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_nr_a.i) #12
  %9 = ptrtoint ptr %min_nr_a.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %min_nr_a.i, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_nr_a.i) #12
  %10 = ptrtoint ptr %max_nr_a.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %max_nr_a.i, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_age.i) #12
  %11 = ptrtoint ptr %min_age.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %min_age.i, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_age.i) #12
  %12 = ptrtoint ptr %max_age.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %max_age.i, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %action.i) #12
  %13 = ptrtoint ptr %action.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %action.i, align 4, !annotation !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 1024) #15
  %tobool.not.i29 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i29, label %if.end.str_to_schemes.exit.thread_crit_edge, label %if.end.i30

if.end.str_to_schemes.exit.thread_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_schemes.exit.thread

if.end.i30:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp71.i = icmp sgt i32 %count, 0
  br i1 %cmp71.i, label %land.rhs.lr.ph.i, label %str_to_schemes.exit.thread48

str_to_schemes.exit.thread48:                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %action.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_age.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_age.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_nr_a.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_nr_a.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_sz.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_sz.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed.i) #12
  br label %if.end5

land.rhs.lr.ph.i:                                 ; preds = %if.end.i30
  %sz.i = getelementptr inbounds %struct.damos_quota, ptr %quota.i, i32 0, i32 1
  %reset_interval.i = getelementptr inbounds %struct.damos_quota, ptr %quota.i, i32 0, i32 2
  %weight_sz.i = getelementptr inbounds %struct.damos_quota, ptr %quota.i, i32 0, i32 3
  %weight_nr_accesses.i = getelementptr inbounds %struct.damos_quota, ptr %quota.i, i32 0, i32 4
  %weight_age.i = getelementptr inbounds %struct.damos_quota, ptr %quota.i, i32 0, i32 5
  %interval.i = getelementptr inbounds %struct.damos_watermarks, ptr %wmarks.i, i32 0, i32 1
  %high.i = getelementptr inbounds %struct.damos_watermarks, ptr %wmarks.i, i32 0, i32 2
  %mid.i = getelementptr inbounds %struct.damos_watermarks, ptr %wmarks.i, i32 0, i32 3
  %low.i = getelementptr inbounds %struct.damos_watermarks, ptr %wmarks.i, i32 0, i32 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %cleanup.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %nr_schemes.0 = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %add33.i, %cleanup.i.land.rhs.i_crit_edge ]
  %pos.072.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %add.i33, %cleanup.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %nr_schemes.0)
  %exitcond.not = icmp eq i32 %nr_schemes.0, 256
  br i1 %exitcond.not, label %land.rhs.i.str_to_schemes.exit_crit_edge, label %while.body.i

land.rhs.i.str_to_schemes.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_schemes.exit

while.body.i:                                     ; preds = %land.rhs.i
  call void @llvm.lifetime.start.p0(i64 456, ptr nonnull %quota.i) #12
  %15 = call ptr @memset(ptr %quota.i, i32 0, i32 456)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wmarks.i) #12
  %16 = call ptr @memset(ptr %wmarks.i, i32 255, i32 24)
  %arrayidx.i31 = getelementptr i8, ptr %call9.i.i, i32 %pos.072.i
  %call2.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %arrayidx.i31, ptr noundef nonnull @.str.22, ptr noundef nonnull %min_sz.i, ptr noundef nonnull %max_sz.i, ptr noundef nonnull %min_nr_a.i, ptr noundef nonnull %max_nr_a.i, ptr noundef nonnull %min_age.i, ptr noundef nonnull %max_age.i, ptr noundef nonnull %action.i, ptr noundef nonnull %quota.i, ptr noundef %sz.i, ptr noundef %reset_interval.i, ptr noundef %weight_sz.i, ptr noundef %weight_nr_accesses.i, ptr noundef %weight_age.i, ptr noundef nonnull %wmarks.i, ptr noundef %interval.i, ptr noundef %high.i, ptr noundef %mid.i, ptr noundef %low.i, ptr noundef nonnull %parsed.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %call2.i)
  %cmp3.not.i = icmp eq i32 %call2.i, 18
  br i1 %cmp3.not.i, label %if.end5.i32, label %cleanup.thread68.i

cleanup.thread68.i:                               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wmarks.i) #12
  call void @llvm.lifetime.end.p0(i64 456, ptr nonnull %quota.i) #12
  br label %str_to_schemes.exit

if.end5.i32:                                      ; preds = %while.body.i
  %17 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %action.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %18)
  %switch.i.i = icmp ult i32 %18, 6
  br i1 %switch.i.i, label %if.end8.i, label %if.end5.i32.fail.i_crit_edge

if.end5.i32.fail.i_crit_edge:                     ; preds = %if.end5.i32
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i

if.end8.i:                                        ; preds = %if.end5.i32
  %19 = ptrtoint ptr %min_sz.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %min_sz.i, align 4
  %21 = ptrtoint ptr %max_sz.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_sz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp9.i = icmp ugt i32 %20, %22
  br i1 %cmp9.i, label %if.end8.i.fail.i_crit_edge, label %lor.lhs.false.i

if.end8.i.fail.i_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %23 = ptrtoint ptr %min_nr_a.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %min_nr_a.i, align 4
  %25 = ptrtoint ptr %max_nr_a.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_nr_a.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp10.i = icmp ugt i32 %24, %26
  br i1 %cmp10.i, label %lor.lhs.false.i.fail.i_crit_edge, label %lor.lhs.false11.i

lor.lhs.false.i.fail.i_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i

lor.lhs.false11.i:                                ; preds = %lor.lhs.false.i
  %27 = ptrtoint ptr %min_age.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %min_age.i, align 4
  %29 = ptrtoint ptr %max_age.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_age.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp12.i = icmp ugt i32 %28, %30
  br i1 %cmp12.i, label %lor.lhs.false11.i.fail.i_crit_edge, label %if.end14.i

lor.lhs.false11.i.fail.i_crit_edge:               ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i

if.end14.i:                                       ; preds = %lor.lhs.false11.i
  %31 = ptrtoint ptr %high.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %high.i, align 4
  %33 = ptrtoint ptr %mid.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp17.i = icmp ult i32 %32, %34
  br i1 %cmp17.i, label %if.end14.i.fail.i_crit_edge, label %lor.lhs.false18.i

if.end14.i.fail.i_crit_edge:                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i

lor.lhs.false18.i:                                ; preds = %if.end14.i
  %35 = ptrtoint ptr %low.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %low.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %36)
  %cmp21.i = icmp ult i32 %32, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp25.i = icmp ult i32 %34, %36
  %or.cond.i = select i1 %cmp21.i, i1 true, i1 %cmp25.i
  br i1 %or.cond.i, label %lor.lhs.false18.i.fail.i_crit_edge, label %if.end27.i

lor.lhs.false18.i.fail.i_crit_edge:               ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i

if.end27.i:                                       ; preds = %lor.lhs.false18.i
  %37 = ptrtoint ptr %parsed.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %parsed.i, align 4
  %call28.i = call ptr @damon_new_scheme(i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %18, ptr noundef nonnull %quota.i, ptr noundef nonnull %wmarks.i) #12
  %tobool29.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool29.not.i, label %if.end27.i.fail.i_crit_edge, label %cleanup.i

if.end27.i.fail.i_crit_edge:                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i

cleanup.i:                                        ; preds = %if.end27.i
  %add.i33 = add i32 %38, %pos.072.i
  %arrayidx32.i = getelementptr ptr, ptr %call7.i.i.i, i32 %nr_schemes.0
  %39 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call28.i, ptr %arrayidx32.i, align 4
  %add33.i = add nuw nsw i32 %nr_schemes.0, 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wmarks.i) #12
  call void @llvm.lifetime.end.p0(i64 456, ptr nonnull %quota.i) #12
  %cmp.i34 = icmp slt i32 %add.i33, %count
  br i1 %cmp.i34, label %cleanup.i.land.rhs.i_crit_edge, label %cleanup.i.str_to_schemes.exit_crit_edge

cleanup.i.str_to_schemes.exit_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_schemes.exit

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

fail.i:                                           ; preds = %if.end27.i.fail.i_crit_edge, %lor.lhs.false18.i.fail.i_crit_edge, %if.end14.i.fail.i_crit_edge, %lor.lhs.false11.i.fail.i_crit_edge, %lor.lhs.false.i.fail.i_crit_edge, %if.end8.i.fail.i_crit_edge, %if.end5.i32.fail.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wmarks.i) #12
  call void @llvm.lifetime.end.p0(i64 456, ptr nonnull %quota.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_schemes.0)
  %cmp4.i.i.not = icmp eq i32 %nr_schemes.0, 0
  br i1 %cmp4.i.i.not, label %fail.i.free_schemes_arr.exit.i_crit_edge, label %fail.i.for.body.i.i_crit_edge

fail.i.for.body.i.i_crit_edge:                    ; preds = %fail.i
  br label %for.body.i.i

fail.i.free_schemes_arr.exit.i_crit_edge:         ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_schemes_arr.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %fail.i.for.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %fail.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %call7.i.i.i, i32 %i.05.i.i
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i, align 4
  call void @kfree(ptr noundef %41) #12
  %inc.i.i = add nuw nsw i32 %i.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %nr_schemes.0
  br i1 %exitcond.not.i.i, label %for.body.i.i.free_schemes_arr.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.free_schemes_arr.exit.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_schemes_arr.exit.i

free_schemes_arr.exit.i:                          ; preds = %for.body.i.i.free_schemes_arr.exit.i_crit_edge, %fail.i.free_schemes_arr.exit.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %str_to_schemes.exit.thread

str_to_schemes.exit.thread:                       ; preds = %free_schemes_arr.exit.i, %if.end.str_to_schemes.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %action.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_age.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_age.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_nr_a.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_nr_a.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_sz.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_sz.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed.i) #12
  br label %out

str_to_schemes.exit:                              ; preds = %cleanup.i.str_to_schemes.exit_crit_edge, %cleanup.thread68.i, %land.rhs.i.str_to_schemes.exit_crit_edge
  %nr_schemes.1 = phi i32 [ %nr_schemes.0, %cleanup.thread68.i ], [ 256, %land.rhs.i.str_to_schemes.exit_crit_edge ], [ %add33.i, %cleanup.i.str_to_schemes.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %action.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_age.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_age.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_nr_a.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_nr_a.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_sz.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_sz.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed.i) #12
  br label %if.end5

if.end5:                                          ; preds = %str_to_schemes.exit, %str_to_schemes.exit.thread48
  %nr_schemes.152 = phi i32 [ 0, %str_to_schemes.exit.thread48 ], [ %nr_schemes.1, %str_to_schemes.exit ]
  %kdamond_lock = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %kdamond_lock, i32 noundef 0) #12
  %kdamond = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 5
  %42 = ptrtoint ptr %kdamond to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %kdamond, align 8
  %tobool6.not = icmp eq ptr %43, null
  br i1 %tobool6.not, label %if.end8, label %if.end5.unlock_out_crit_edge

if.end5.unlock_out_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_out

if.end8:                                          ; preds = %if.end5
  %call9 = call i32 @damon_set_schemes(ptr noundef %1, ptr noundef nonnull %call7.i.i.i, i32 noundef %nr_schemes.152) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %unlock_out.thread, label %if.end8.unlock_out_crit_edge

if.end8.unlock_out_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_out

unlock_out.thread:                                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %kdamond_lock) #12
  br label %free_schemes_arr.exit

unlock_out:                                       ; preds = %if.end8.unlock_out_crit_edge, %if.end5.unlock_out_crit_edge
  %ret.0 = phi i32 [ %call9, %if.end8.unlock_out_crit_edge ], [ -16, %if.end5.unlock_out_crit_edge ]
  call void @mutex_unlock(ptr noundef %kdamond_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_schemes.152)
  %cmp4.i = icmp sgt i32 %nr_schemes.152, 0
  br i1 %cmp4.i, label %unlock_out.for.body.i_crit_edge, label %unlock_out.free_schemes_arr.exit_crit_edge

unlock_out.free_schemes_arr.exit_crit_edge:       ; preds = %unlock_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_schemes_arr.exit

unlock_out.for.body.i_crit_edge:                  ; preds = %unlock_out
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %unlock_out.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %unlock_out.for.body.i_crit_edge ]
  %arrayidx.i36 = getelementptr ptr, ptr %call7.i.i.i, i32 %i.05.i
  %44 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i36, align 4
  call void @kfree(ptr noundef %45) #12
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %nr_schemes.152
  br i1 %exitcond.not.i, label %for.body.i.free_schemes_arr.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.free_schemes_arr.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_schemes_arr.exit

free_schemes_arr.exit:                            ; preds = %for.body.i.free_schemes_arr.exit_crit_edge, %unlock_out.free_schemes_arr.exit_crit_edge, %unlock_out.thread
  %ret.059 = phi i32 [ %count, %unlock_out.thread ], [ %ret.0, %unlock_out.free_schemes_arr.exit_crit_edge ], [ %ret.0, %for.body.i.free_schemes_arr.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %out

out:                                              ; preds = %free_schemes_arr.exit, %str_to_schemes.exit.thread
  %ret.1 = phi i32 [ %ret.059, %free_schemes_arr.exit ], [ -22, %str_to_schemes.exit.thread ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %ret.1, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @damon_set_schemes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @damon_new_scheme(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbgfs_target_ids_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #6 align 64 {
entry:
  %ids_buf = alloca [320 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %ids_buf) #12
  %2 = call ptr @memset(ptr %ids_buf, i32 255, i32 320)
  %kdamond_lock = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %kdamond_lock, i32 noundef 0) #12
  %adaptive_targets.i = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn40.i = load ptr, ptr %adaptive_targets.i, align 4
  %cmp.not41.i = icmp eq ptr %.pn40.i, %adaptive_targets.i
  br i1 %cmp.not41.i, label %entry.for.end.thread.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.thread.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i

for.body.lr.ph.i:                                 ; preds = %entry
  %target_valid.i.i = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 7, i32 7
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i
  %add.i = add i32 %call4.i, %written.042.i
  %4 = ptrtoint ptr %.pn43.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn43.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %adaptive_targets.i
  br i1 %cmp.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn43.i = phi ptr [ %.pn40.i, %for.body.lr.ph.i ], [ %.pn.i, %for.cond.i.for.body.i_crit_edge ]
  %written.042.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.cond.i.for.body.i_crit_edge ]
  %t.0.i = getelementptr i8, ptr %.pn43.i, i32 -16
  %5 = ptrtoint ptr %t.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %t.0.i, align 4
  %7 = ptrtoint ptr %target_valid.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %target_valid.i.i, align 4
  %cmp.i.i = icmp eq ptr %8, @damon_va_target_valid
  br i1 %cmp.i.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = inttoptr i32 %6 to ptr
  %call3.i = call i32 @pid_vnr(ptr noundef %9) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %id.0.i = phi i32 [ %call3.i, %if.then.i ], [ %6, %for.body.i.if.end.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %ids_buf, i32 %written.042.i
  %sub.i = sub i32 320, %written.042.i
  %call4.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.i, i32 noundef %sub.i, ptr noundef nonnull @.str.23, i32 noundef %id.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %sprint_target_ids.exit.thread, label %for.cond.i

sprint_target_ids.exit.thread:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %kdamond_lock) #12
  br label %cleanup

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool12.not.i = icmp eq i32 %add.i, 0
  %sub14.i = add i32 %add.i, -1
  br i1 %tobool12.not.i, label %for.end.i.for.end.thread.i_crit_edge, label %for.end.i.sprint_target_ids.exit_crit_edge

for.end.i.sprint_target_ids.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sprint_target_ids.exit

for.end.i.for.end.thread.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.end.i.for.end.thread.i_crit_edge, %entry.for.end.thread.i_crit_edge
  br label %sprint_target_ids.exit

sprint_target_ids.exit:                           ; preds = %for.end.thread.i, %for.end.i.sprint_target_ids.exit_crit_edge
  %10 = phi i32 [ 0, %for.end.thread.i ], [ %sub14.i, %for.end.i.sprint_target_ids.exit_crit_edge ]
  %arrayidx16.i = getelementptr i8, ptr %ids_buf, i32 %10
  %sub17.i = sub i32 320, %10
  %call18.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx16.i, i32 noundef %sub17.i, ptr noundef nonnull @.str.24) #12
  %add19.i = add i32 %call18.i, %10
  call void @mutex_unlock(ptr noundef %kdamond_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add19.i)
  %cmp = icmp slt i32 %add19.i, 0
  br i1 %cmp, label %sprint_target_ids.exit.cleanup_crit_edge, label %if.end

sprint_target_ids.exit.cleanup_crit_edge:         ; preds = %sprint_target_ids.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sprint_target_ids.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %ids_buf, i32 noundef %add19.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sprint_target_ids.exit.cleanup_crit_edge, %sprint_target_ids.exit.thread
  %retval.0 = phi i32 [ %call3, %if.end ], [ %add19.i, %sprint_target_ids.exit.cleanup_crit_edge ], [ -12, %sprint_target_ids.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %ids_buf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbgfs_target_ids_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #6 align 64 {
entry:
  %id.i = alloca i32, align 4
  %parsed.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not.i = icmp eq i64 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end.i:                                         ; preds = %entry
  %add.i = add i32 %count, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 11456) #18
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.then_crit_edge, label %if.end5.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end5.i:                                        ; preds = %if.end.i
  %call7.i = tail call i32 @simple_write_to_buffer(ptr noundef nonnull %call9.i.i, i32 noundef %add.i, ptr noundef %ppos, ptr noundef %buf, i32 noundef %count) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %count)
  %cmp.not.i = icmp eq i32 %call7.i, %count
  br i1 %cmp.not.i, label %user_input_str.exit, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %if.then

user_input_str.exit:                              ; preds = %if.end5.i
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %count
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx.i, align 1
  %cmp.i = icmp ugt ptr %call9.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %user_input_str.exit.if.then_crit_edge, label %if.end

user_input_str.exit.if.then_crit_edge:            ; preds = %user_input_str.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %user_input_str.exit.if.then_crit_edge, %if.then8.i, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i133 = phi ptr [ %call9.i.i, %user_input_str.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.then8.i ]
  %5 = ptrtoint ptr %retval.0.i133 to i32
  br label %cleanup

if.end:                                           ; preds = %user_input_str.exit
  %call3 = tail call i32 @strncmp(ptr noundef nonnull %call9.i.i, ptr noundef nonnull @.str.25, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call9.i.i, i32 noundef %count, ptr noundef nonnull @.str.26) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #12
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %id.i, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parsed.i) #12
  %7 = ptrtoint ptr %parsed.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %parsed.i, align 4, !annotation !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 128) #15
  %tobool.not.i104 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i104, label %str_to_target_ids.exit.thread, label %while.cond.preheader.i

str_to_target_ids.exit.thread:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #12
  br label %out

while.cond.preheader.i:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp121.i = icmp sgt i32 %count, 0
  br i1 %cmp121.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %if.end10.thread

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

if.end10.thread:                                  ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #12
  br label %if.end19

while.body.i:                                     ; preds = %if.end5.i108.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %nr_targets.0 = phi i32 [ %add7.i, %if.end5.i108.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %pos.023.i = phi i32 [ %add.i106, %if.end5.i108.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %arrayidx.i105 = getelementptr i8, ptr %call9.i.i, i32 %pos.023.i
  %call2.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %arrayidx.i105, ptr noundef nonnull @.str.27, ptr noundef nonnull %id.i, ptr noundef nonnull %parsed.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp3.not.i = icmp eq i32 %call2.i, 1
  br i1 %cmp3.not.i, label %if.end5.i108, label %while.body.i.if.end10_crit_edge

while.body.i.if.end10_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end5.i108:                                     ; preds = %while.body.i
  %9 = ptrtoint ptr %parsed.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %parsed.i, align 4
  %add.i106 = add i32 %10, %pos.023.i
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %call7.i.i.i, i32 %nr_targets.0
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx6.i, align 4
  %add7.i = add nuw nsw i32 %nr_targets.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %nr_targets.0)
  %cmp.i107 = icmp ult i32 %nr_targets.0, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i106, i32 %count)
  %cmp1.i = icmp slt i32 %add.i106, %count
  %or.cond.i = select i1 %cmp.i107, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %if.end5.i108.while.body.i_crit_edge, label %if.end5.i108.if.end10_crit_edge

if.end5.i108.if.end10_crit_edge:                  ; preds = %if.end5.i108
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end5.i108.while.body.i_crit_edge:              ; preds = %if.end5.i108
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end10:                                         ; preds = %if.end5.i108.if.end10_crit_edge, %while.body.i.if.end10_crit_edge
  %nr_targets.1 = phi i32 [ %add7.i, %if.end5.i108.if.end10_crit_edge ], [ %nr_targets.0, %while.body.i.if.end10_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #12
  %tobool.not.not147 = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_targets.1)
  %cmp140 = icmp sgt i32 %nr_targets.1, 0
  %or.cond148 = select i1 %tobool.not.not147, i1 %cmp140, i1 false
  br i1 %or.cond148, label %if.end10.for.body_crit_edge, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end10.for.body_crit_edge
  %i.0141 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %call7.i.i.i, i32 %i.0141
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %call13 = call ptr @find_get_pid(i32 noundef %15) #12
  %16 = ptrtoint ptr %call13 to i32
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx, align 4
  %tobool16.not = icmp eq ptr %call13, null
  br i1 %tobool16.not, label %if.then17, label %for.inc

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0141)
  %cmp3.i.not = icmp eq i32 %i.0141, 0
  br i1 %cmp3.i.not, label %if.then17.free_targets_out_crit_edge, label %if.then17.for.body.i_crit_edge

if.then17.for.body.i_crit_edge:                   ; preds = %if.then17
  br label %for.body.i

if.then17.free_targets_out_crit_edge:             ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_targets_out

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then17.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then17.for.body.i_crit_edge ]
  %arrayidx.i109 = getelementptr i32, ptr %call7.i.i.i, i32 %i.04.i
  %18 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i109, align 4
  %20 = inttoptr i32 %19 to ptr
  call void @put_pid(ptr noundef %20) #12
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.0141
  br i1 %exitcond.not.i, label %for.body.i.free_targets_out_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.free_targets_out_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_targets_out

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0141, 1
  %exitcond.not = icmp eq i32 %inc, %nr_targets.1
  br i1 %exitcond.not, label %for.inc.if.end19_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end19_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end19:                                         ; preds = %for.inc.if.end19_crit_edge, %if.end10.if.end19_crit_edge, %if.end10.thread
  %or.cond148157 = phi i1 [ false, %if.end10.thread ], [ false, %if.end10.if.end19_crit_edge ], [ %or.cond148, %for.inc.if.end19_crit_edge ]
  %cmp140156 = phi i1 [ false, %if.end10.thread ], [ %cmp140, %if.end10.if.end19_crit_edge ], [ %cmp140, %for.inc.if.end19_crit_edge ]
  %nr_targets.1137155 = phi i32 [ 0, %if.end10.thread ], [ %nr_targets.1, %if.end10.if.end19_crit_edge ], [ %nr_targets.1, %for.inc.if.end19_crit_edge ]
  %kdamond_lock = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %kdamond_lock, i32 noundef 0) #12
  %kdamond = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %kdamond to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %kdamond, align 8
  %tobool20.not = icmp eq ptr %22, null
  br i1 %tobool20.not, label %if.end25, label %if.then21

if.then21:                                        ; preds = %if.end19
  br i1 %or.cond148157, label %if.then21.for.body.i115_crit_edge, label %if.then21.unlock_out_crit_edge

if.then21.unlock_out_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_out

if.then21.for.body.i115_crit_edge:                ; preds = %if.then21
  br label %for.body.i115

for.body.i115:                                    ; preds = %for.body.i115.for.body.i115_crit_edge, %if.then21.for.body.i115_crit_edge
  %i.04.i111 = phi i32 [ %inc.i113, %for.body.i115.for.body.i115_crit_edge ], [ 0, %if.then21.for.body.i115_crit_edge ]
  %arrayidx.i112 = getelementptr i32, ptr %call7.i.i.i, i32 %i.04.i111
  %23 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i112, align 4
  %25 = inttoptr i32 %24 to ptr
  call void @put_pid(ptr noundef %25) #12
  %inc.i113 = add nuw nsw i32 %i.04.i111, 1
  %exitcond.not.i114 = icmp eq i32 %inc.i113, %nr_targets.1137155
  br i1 %exitcond.not.i114, label %for.body.i115.unlock_out_crit_edge, label %for.body.i115.for.body.i115_crit_edge

for.body.i115.for.body.i115_crit_edge:            ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i115

for.body.i115.unlock_out_crit_edge:               ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_out

if.end25:                                         ; preds = %if.end19
  %adaptive_targets = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %adaptive_targets to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adaptive_targets, align 8
  %cmp33.not144 = icmp eq ptr %27, %adaptive_targets
  br i1 %cmp33.not144, label %if.end25.for.end44_crit_edge, label %for.body34.lr.ph

if.end25.for.end44_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end44

for.body34.lr.ph:                                 ; preds = %if.end25
  %target_valid.i = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 7, i32 7
  br label %for.body34

for.body34:                                       ; preds = %if.end37.for.body34_crit_edge, %for.body34.lr.ph
  %.pn146.in = phi ptr [ %27, %for.body34.lr.ph ], [ %.pn146, %if.end37.for.body34_crit_edge ]
  %t.0145 = getelementptr i8, ptr %.pn146.in, i32 -16
  %28 = ptrtoint ptr %.pn146.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn146 = load ptr, ptr %.pn146.in, align 4
  %29 = ptrtoint ptr %target_valid.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %target_valid.i, align 4
  %cmp.i117 = icmp eq ptr %30, @damon_va_target_valid
  br i1 %cmp.i117, label %if.then36, label %for.body34.if.end37_crit_edge

for.body34.if.end37_crit_edge:                    ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then36:                                        ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %t.0145 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %t.0145, align 4
  %33 = inttoptr i32 %32 to ptr
  call void @put_pid(ptr noundef %33) #12
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %for.body34.if.end37_crit_edge
  call void @damon_destroy_target(ptr noundef %t.0145) #12
  %cmp33.not = icmp eq ptr %.pn146, %adaptive_targets
  br i1 %cmp33.not, label %if.end37.for.end44_crit_edge, label %if.end37.for.body34_crit_edge

if.end37.for.body34_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body34

if.end37.for.end44_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end44

for.end44:                                        ; preds = %if.end37.for.end44_crit_edge, %if.end25.for.end44_crit_edge
  br i1 %tobool.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #14
  call void @damon_va_set_primitives(ptr noundef %1) #12
  br label %if.end47

if.else:                                          ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #14
  call void @damon_pa_set_primitives(ptr noundef %1) #12
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then46
  %call48 = call i32 @damon_set_targets(ptr noundef %1, ptr noundef nonnull %call7.i.i.i, i32 noundef %nr_targets.1137155) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  %brmerge = select i1 %tobool49.not, i1 true, i1 %tobool.not
  %cmp140156.not = xor i1 %cmp140156, true
  %brmerge160 = select i1 %brmerge, i1 true, i1 %cmp140156.not
  %count.mux.mux = select i1 %tobool49.not, i32 %count, i32 %call48
  br i1 %brmerge160, label %if.end47.unlock_out_crit_edge, label %if.end47.for.body.i123_crit_edge

if.end47.for.body.i123_crit_edge:                 ; preds = %if.end47
  br label %for.body.i123

if.end47.unlock_out_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_out

for.body.i123:                                    ; preds = %for.body.i123.for.body.i123_crit_edge, %if.end47.for.body.i123_crit_edge
  %i.04.i119 = phi i32 [ %inc.i121, %for.body.i123.for.body.i123_crit_edge ], [ 0, %if.end47.for.body.i123_crit_edge ]
  %arrayidx.i120 = getelementptr i32, ptr %call7.i.i.i, i32 %i.04.i119
  %34 = ptrtoint ptr %arrayidx.i120 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i120, align 4
  %36 = inttoptr i32 %35 to ptr
  call void @put_pid(ptr noundef %36) #12
  %inc.i121 = add nuw nsw i32 %i.04.i119, 1
  %exitcond.not.i122 = icmp eq i32 %inc.i121, %nr_targets.1137155
  br i1 %exitcond.not.i122, label %for.body.i123.unlock_out_crit_edge, label %for.body.i123.for.body.i123_crit_edge

for.body.i123.for.body.i123_crit_edge:            ; preds = %for.body.i123
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i123

for.body.i123.unlock_out_crit_edge:               ; preds = %for.body.i123
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_out

unlock_out:                                       ; preds = %for.body.i123.unlock_out_crit_edge, %if.end47.unlock_out_crit_edge, %for.body.i115.unlock_out_crit_edge, %if.then21.unlock_out_crit_edge
  %ret.0 = phi i32 [ -16, %if.then21.unlock_out_crit_edge ], [ %count.mux.mux, %if.end47.unlock_out_crit_edge ], [ %call48, %for.body.i123.unlock_out_crit_edge ], [ -16, %for.body.i115.unlock_out_crit_edge ]
  call void @mutex_unlock(ptr noundef %kdamond_lock) #12
  br label %free_targets_out

free_targets_out:                                 ; preds = %unlock_out, %for.body.i.free_targets_out_crit_edge, %if.then17.free_targets_out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %unlock_out ], [ -22, %if.then17.free_targets_out_crit_edge ], [ -22, %for.body.i.free_targets_out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %out

out:                                              ; preds = %free_targets_out, %str_to_target_ids.exit.thread
  %ret.2 = phi i32 [ %ret.1, %free_targets_out ], [ -12, %str_to_target_ids.exit.thread ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %ret.2, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_get_pid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @damon_pa_set_primitives(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @damon_set_targets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbgfs_init_regions_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %count, i32 noundef 11456) #18
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %kdamond_lock = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %kdamond_lock, i32 noundef 0) #12
  %kdamond = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %kdamond to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kdamond, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %kdamond_lock) #12
  br label %out

if.end4:                                          ; preds = %if.end
  %adaptive_targets.i = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn48.i = load ptr, ptr %adaptive_targets.i, align 4
  %cmp.not50.i = icmp eq ptr %.pn48.i, %adaptive_targets.i
  br i1 %cmp.not50.i, label %sprint_init_regions.exit.thread28, label %if.end4.for.body.i_crit_edge

if.end4.for.body.i_crit_edge:                     ; preds = %if.end4
  br label %for.body.i

sprint_init_regions.exit.thread28:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %kdamond_lock) #12
  br label %if.end8

for.cond.loopexit.i:                              ; preds = %for.cond6.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %written.1.lcssa.i = phi i32 [ %written.051.i, %for.body.i.for.cond.loopexit.i_crit_edge ], [ %add.i, %for.cond6.i.for.cond.loopexit.i_crit_edge ]
  %5 = ptrtoint ptr %.pn52.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn52.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %adaptive_targets.i
  br i1 %cmp.not.i, label %sprint_init_regions.exit, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %if.end4.for.body.i_crit_edge
  %.pn52.i = phi ptr [ %.pn.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %.pn48.i, %if.end4.for.body.i_crit_edge ]
  %written.051.i = phi i32 [ %written.1.lcssa.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ 0, %if.end4.for.body.i_crit_edge ]
  %t.053.i = getelementptr i8, ptr %.pn52.i, i32 -16
  %regions_list.i = getelementptr i8, ptr %.pn52.i, i32 -8
  %6 = ptrtoint ptr %regions_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn4044.i = load ptr, ptr %regions_list.i, align 4
  %cmp9.not45.i = icmp eq ptr %.pn4044.i, %regions_list.i
  br i1 %cmp9.not45.i, label %for.body.i.for.cond.loopexit.i_crit_edge, label %for.body.i.for.body11.i_crit_edge

for.body.i.for.body11.i_crit_edge:                ; preds = %for.body.i
  br label %for.body11.i

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit.i

for.cond6.i:                                      ; preds = %for.body11.i
  %add.i = add i32 %call.i, %written.146.i
  %7 = ptrtoint ptr %.pn4047.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn40.i = load ptr, ptr %.pn4047.i, align 4
  %cmp9.not.i = icmp eq ptr %.pn40.i, %regions_list.i
  br i1 %cmp9.not.i, label %for.cond6.i.for.cond.loopexit.i_crit_edge, label %for.cond6.i.for.body11.i_crit_edge

for.cond6.i.for.body11.i_crit_edge:               ; preds = %for.cond6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.i

for.cond6.i.for.cond.loopexit.i_crit_edge:        ; preds = %for.cond6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit.i

for.body11.i:                                     ; preds = %for.cond6.i.for.body11.i_crit_edge, %for.body.i.for.body11.i_crit_edge
  %.pn4047.i = phi ptr [ %.pn40.i, %for.cond6.i.for.body11.i_crit_edge ], [ %.pn4044.i, %for.body.i.for.body11.i_crit_edge ]
  %written.146.i = phi i32 [ %add.i, %for.cond6.i.for.body11.i_crit_edge ], [ %written.051.i, %for.body.i.for.body11.i_crit_edge ]
  %r.0.i = getelementptr i8, ptr %.pn4047.i, i32 -16
  %arrayidx.i = getelementptr i8, ptr %call9.i, i32 %written.146.i
  %sub.i = sub i32 %count, %written.146.i
  %8 = ptrtoint ptr %t.053.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %t.053.i, align 4
  %10 = ptrtoint ptr %r.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %r.0.i, align 4
  %end.i = getelementptr i8, ptr %.pn4047.i, i32 -12
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.i, i32 noundef %sub.i, ptr noundef nonnull @.str.28, i32 noundef %9, i32 noundef %11, i32 noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sprint_init_regions.exit.thread, label %for.cond6.i

sprint_init_regions.exit.thread:                  ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %kdamond_lock) #12
  br label %out

sprint_init_regions.exit:                         ; preds = %for.cond.loopexit.i
  tail call void @mutex_unlock(ptr noundef %kdamond_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.1.lcssa.i)
  %cmp = icmp slt i32 %written.1.lcssa.i, 0
  br i1 %cmp, label %sprint_init_regions.exit.out_crit_edge, label %sprint_init_regions.exit.if.end8_crit_edge

sprint_init_regions.exit.if.end8_crit_edge:       ; preds = %sprint_init_regions.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

sprint_init_regions.exit.out_crit_edge:           ; preds = %sprint_init_regions.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end8:                                          ; preds = %sprint_init_regions.exit.if.end8_crit_edge, %sprint_init_regions.exit.thread28
  %retval.0.i31 = phi i32 [ 0, %sprint_init_regions.exit.thread28 ], [ %written.1.lcssa.i, %sprint_init_regions.exit.if.end8_crit_edge ]
  %call9 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call9.i, i32 noundef %retval.0.i31) #12
  br label %out

out:                                              ; preds = %if.end8, %sprint_init_regions.exit.out_crit_edge, %sprint_init_regions.exit.thread, %if.then2
  %len.0 = phi i32 [ -16, %if.then2 ], [ %written.1.lcssa.i, %sprint_init_regions.exit.out_crit_edge ], [ %call9, %if.end8 ], [ -12, %sprint_init_regions.exit.thread ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbgfs_init_regions_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not.i = icmp eq i64 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end.i:                                         ; preds = %entry
  %add.i = add i32 %count, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 11456) #18
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.then_crit_edge, label %if.end5.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end5.i:                                        ; preds = %if.end.i
  %call7.i = tail call i32 @simple_write_to_buffer(ptr noundef nonnull %call9.i.i, i32 noundef %add.i, ptr noundef %ppos, ptr noundef %buf, i32 noundef %count) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %count)
  %cmp.not.i = icmp eq i32 %call7.i, %count
  br i1 %cmp.not.i, label %user_input_str.exit, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %if.then

user_input_str.exit:                              ; preds = %if.end5.i
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %count
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx.i, align 1
  %cmp.i = icmp ugt ptr %call9.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %user_input_str.exit.if.then_crit_edge, label %if.end

user_input_str.exit.if.then_crit_edge:            ; preds = %user_input_str.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %user_input_str.exit.if.then_crit_edge, %if.then8.i, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i25 = phi ptr [ %call9.i.i, %user_input_str.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.then8.i ]
  %5 = ptrtoint ptr %retval.0.i25 to i32
  br label %cleanup

if.end:                                           ; preds = %user_input_str.exit
  %kdamond_lock = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %kdamond_lock, i32 noundef 0) #12
  %kdamond = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %kdamond to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kdamond, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end4, label %if.end.unlock_out_crit_edge

if.end.unlock_out_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call fastcc i32 @set_init_regions(ptr noundef %1, ptr noundef nonnull %call9.i.i, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %spec.select = select i1 %tobool6.not, i32 %count, i32 %call5
  br label %unlock_out

unlock_out:                                       ; preds = %if.end4, %if.end.unlock_out_crit_edge
  %ret.0 = phi i32 [ -16, %if.end.unlock_out_crit_edge ], [ %spec.select, %if.end4 ]
  tail call void @mutex_unlock(ptr noundef %kdamond_lock) #12
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %unlock_out, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %ret.0, %unlock_out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_init_regions(ptr noundef readonly %c, ptr nocapture noundef readonly %str, i32 noundef %len) unnamed_addr #6 align 64 {
entry:
  %parsed = alloca i32, align 4
  %target_id = alloca i32, align 4
  %ar = alloca %struct.damon_addr_range, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parsed) #12
  %0 = ptrtoint ptr %parsed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %parsed, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %target_id) #12
  %1 = ptrtoint ptr %target_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %target_id, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ar) #12
  %2 = ptrtoint ptr %ar to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ar, align 4, !annotation !183
  %3 = getelementptr inbounds %struct.damon_addr_range, ptr %ar, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !183
  %adaptive_targets = getelementptr inbounds %struct.damon_ctx, ptr %c, i32 0, i32 11
  %5 = ptrtoint ptr %adaptive_targets to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn117 = load ptr, ptr %adaptive_targets, align 4
  %cmp.not119 = icmp eq ptr %.pn117, %adaptive_targets
  br i1 %cmp.not119, label %entry.while.cond.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

for.cond.loopexit:                                ; preds = %for.body17.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %6 = ptrtoint ptr %.pn120 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn120, align 4
  %cmp.not = icmp eq ptr %.pn, %adaptive_targets
  br i1 %cmp.not, label %for.cond.loopexit.while.cond.preheader_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.loopexit.while.cond.preheader_crit_edge: ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond.loopexit.while.cond.preheader_crit_edge, %entry.while.cond.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp30122 = icmp sgt i32 %len, 0
  br i1 %cmp30122, label %while.body.lr.ph, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %target_valid.i.i = getelementptr inbounds %struct.damon_ctx, ptr %c, i32 0, i32 7, i32 7
  br label %while.body

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn120 = phi ptr [ %.pn, %for.cond.loopexit.for.body_crit_edge ], [ %.pn117, %entry.for.body_crit_edge ]
  %t.0121 = getelementptr i8, ptr %.pn120, i32 -16
  %regions_list = getelementptr i8, ptr %.pn120, i32 -8
  %7 = ptrtoint ptr %regions_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regions_list, align 4
  %cmp15.not115 = icmp eq ptr %8, %regions_list
  br i1 %cmp15.not115, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body17_crit_edge

for.body.for.body17_crit_edge:                    ; preds = %for.body
  br label %for.body17

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.body.for.body17_crit_edge
  %.pn110.in116 = phi ptr [ %.pn110, %for.body17.for.body17_crit_edge ], [ %8, %for.body.for.body17_crit_edge ]
  %r.0 = getelementptr i8, ptr %.pn110.in116, i32 -16
  %9 = ptrtoint ptr %.pn110.in116 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn110 = load ptr, ptr %.pn110.in116, align 4
  tail call void @damon_destroy_region(ptr noundef %r.0, ptr noundef %t.0121) #12
  %cmp15.not = icmp eq ptr %.pn110, %regions_list
  br i1 %cmp15.not, label %for.body17.for.cond.loopexit_crit_edge, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body17

for.body17.for.cond.loopexit_crit_edge:           ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit

while.body:                                       ; preds = %if.end34.while.body_crit_edge, %while.body.lr.ph
  %pos.0123 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %if.end34.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %str, i32 %pos.0123
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %arrayidx, ptr noundef nonnull @.str.29, ptr noundef nonnull %target_id, ptr noundef nonnull %ar, ptr noundef %3, ptr noundef nonnull %parsed)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp31.not = icmp eq i32 %call, 3
  br i1 %cmp31.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %while.body
  %10 = ptrtoint ptr %target_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %target_id, align 4
  %12 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ar, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not.i = icmp ult i32 %13, %15
  br i1 %cmp.not.i, label %if.end.i, label %if.end.for.cond40.preheader_crit_edge

if.end.for.cond40.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond40.preheader

if.end.i:                                         ; preds = %if.end
  %16 = ptrtoint ptr %adaptive_targets to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn52.i = load ptr, ptr %adaptive_targets, align 4
  %cmp2.not54.i = icmp eq ptr %.pn52.i, %adaptive_targets
  br i1 %cmp2.not54.i, label %if.end.i.for.cond40.preheader_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.cond40.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond40.preheader

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn56.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn52.i, %if.end.i.for.body.i_crit_edge ]
  %rc.055.i = phi i32 [ %rc.1.i, %for.inc.i.for.body.i_crit_edge ], [ -22, %if.end.i.for.body.i_crit_edge ]
  %t.057.i = getelementptr i8, ptr %.pn56.i, i32 -16
  %17 = ptrtoint ptr %t.057.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %t.057.i, align 4
  %19 = ptrtoint ptr %target_valid.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %target_valid.i.i, align 4
  %cmp.i.i = icmp eq ptr %20, @damon_va_target_valid
  br i1 %cmp.i.i, label %if.then4.i, label %for.body.i.if.end6.i_crit_edge

for.body.i.if.end6.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = inttoptr i32 %18 to ptr
  %call5.i = call i32 @pid_vnr(ptr noundef %21) #12
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %for.body.i.if.end6.i_crit_edge
  %id.0.i = phi i32 [ %call5.i, %if.then4.i ], [ %18, %for.body.i.if.end6.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %id.0.i, i32 %11)
  %cmp7.i = icmp eq i32 %id.0.i, %11
  br i1 %cmp7.i, label %if.then8.i, label %if.end6.i.for.inc.i_crit_edge

if.end6.i.for.inc.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then8.i:                                       ; preds = %if.end6.i
  %22 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ar, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 4
  %call11.i = call ptr @damon_new_region(i32 noundef %23, i32 noundef %25) #12
  %tobool.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool.not.i, label %if.then8.i.for.cond40.preheader_crit_edge, label %if.end13.i

if.then8.i.for.cond40.preheader_crit_edge:        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond40.preheader

if.end13.i:                                       ; preds = %if.then8.i
  call void @damon_add_region(ptr noundef nonnull %call11.i, ptr noundef %t.057.i) #12
  %call14.i = call i32 @damon_nr_regions(ptr noundef %t.057.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14.i)
  %cmp15.i = icmp ugt i32 %call14.i, 1
  br i1 %cmp15.i, label %if.then16.i, label %if.end13.i.for.inc.i_crit_edge

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then16.i:                                      ; preds = %if.end13.i
  %prev.i.i = getelementptr inbounds %struct.damon_region, ptr %call11.i, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %end19.i = getelementptr i8, ptr %27, i32 -12
  %28 = ptrtoint ptr %end19.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end19.i, align 4
  %30 = ptrtoint ptr %call11.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp22.i = icmp ugt i32 %29, %31
  br i1 %cmp22.i, label %if.then23.i, label %if.then16.i.for.inc.i_crit_edge

if.then16.i.for.inc.i_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then23.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @damon_destroy_region(ptr noundef nonnull %call11.i, ptr noundef %t.057.i) #12
  br label %for.cond40.preheader

for.inc.i:                                        ; preds = %if.then16.i.for.inc.i_crit_edge, %if.end13.i.for.inc.i_crit_edge, %if.end6.i.for.inc.i_crit_edge
  %rc.1.i = phi i32 [ %rc.055.i, %if.end6.i.for.inc.i_crit_edge ], [ 0, %if.then16.i.for.inc.i_crit_edge ], [ 0, %if.end13.i.for.inc.i_crit_edge ]
  %32 = ptrtoint ptr %.pn56.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.i = load ptr, ptr %.pn56.i, align 4
  %cmp2.not.i = icmp eq ptr %.pn.i, %adaptive_targets
  br i1 %cmp2.not.i, label %add_init_region.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

add_init_region.exit:                             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1.i)
  %tobool.not = icmp eq i32 %rc.1.i, 0
  br i1 %tobool.not, label %if.end34, label %add_init_region.exit.for.cond40.preheader_crit_edge

add_init_region.exit.for.cond40.preheader_crit_edge: ; preds = %add_init_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %add_init_region.exit.for.cond40.preheader_crit_edge, %if.then23.i, %if.then8.i.for.cond40.preheader_crit_edge, %if.end.i.for.cond40.preheader_crit_edge, %if.end.for.cond40.preheader_crit_edge
  %retval.0.i135 = phi i32 [ -22, %if.then23.i ], [ -12, %if.then8.i.for.cond40.preheader_crit_edge ], [ -22, %if.end.for.cond40.preheader_crit_edge ], [ -22, %if.end.i.for.cond40.preheader_crit_edge ], [ %rc.1.i, %add_init_region.exit.for.cond40.preheader_crit_edge ]
  %33 = ptrtoint ptr %adaptive_targets to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn108126 = load ptr, ptr %adaptive_targets, align 4
  %cmp43.not128 = icmp eq ptr %.pn108126, %adaptive_targets
  br i1 %cmp43.not128, label %for.cond40.preheader.cleanup_crit_edge, label %for.cond40.preheader.for.body45_crit_edge

for.cond40.preheader.for.body45_crit_edge:        ; preds = %for.cond40.preheader
  br label %for.body45

for.cond40.preheader.cleanup_crit_edge:           ; preds = %for.cond40.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end34:                                         ; preds = %add_init_region.exit
  %34 = ptrtoint ptr %parsed to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %parsed, align 4
  %add = add i32 %35, %pos.0123
  %cmp30 = icmp slt i32 %add, %len
  br i1 %cmp30, label %if.end34.while.body_crit_edge, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end34.while.body_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

for.cond40.loopexit:                              ; preds = %for.body61.for.cond40.loopexit_crit_edge, %for.body45.for.cond40.loopexit_crit_edge
  %36 = ptrtoint ptr %.pn108129 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn108 = load ptr, ptr %.pn108129, align 4
  %cmp43.not = icmp eq ptr %.pn108, %adaptive_targets
  br i1 %cmp43.not, label %for.cond40.loopexit.cleanup_crit_edge, label %for.cond40.loopexit.for.body45_crit_edge

for.cond40.loopexit.for.body45_crit_edge:         ; preds = %for.cond40.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body45

for.cond40.loopexit.cleanup_crit_edge:            ; preds = %for.cond40.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body45:                                       ; preds = %for.cond40.loopexit.for.body45_crit_edge, %for.cond40.preheader.for.body45_crit_edge
  %.pn108129 = phi ptr [ %.pn108, %for.cond40.loopexit.for.body45_crit_edge ], [ %.pn108126, %for.cond40.preheader.for.body45_crit_edge ]
  %t.1130 = getelementptr i8, ptr %.pn108129, i32 -16
  %regions_list47 = getelementptr i8, ptr %.pn108129, i32 -8
  %37 = ptrtoint ptr %regions_list47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regions_list47, align 4
  %cmp59.not124 = icmp eq ptr %38, %regions_list47
  br i1 %cmp59.not124, label %for.body45.for.cond40.loopexit_crit_edge, label %for.body45.for.body61_crit_edge

for.body45.for.body61_crit_edge:                  ; preds = %for.body45
  br label %for.body61

for.body45.for.cond40.loopexit_crit_edge:         ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond40.loopexit

for.body61:                                       ; preds = %for.body61.for.body61_crit_edge, %for.body45.for.body61_crit_edge
  %.pn109.in125 = phi ptr [ %.pn109, %for.body61.for.body61_crit_edge ], [ %38, %for.body45.for.body61_crit_edge ]
  %r.1 = getelementptr i8, ptr %.pn109.in125, i32 -16
  %39 = ptrtoint ptr %.pn109.in125 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn109 = load ptr, ptr %.pn109.in125, align 4
  call void @damon_destroy_region(ptr noundef %r.1, ptr noundef %t.1130) #12
  %cmp59.not = icmp eq ptr %.pn109, %regions_list47
  br i1 %cmp59.not, label %for.body61.for.cond40.loopexit_crit_edge, label %for.body61.for.body61_crit_edge

for.body61.for.body61_crit_edge:                  ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body61

for.body61.for.cond40.loopexit_crit_edge:         ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond40.loopexit

cleanup:                                          ; preds = %for.cond40.loopexit.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %for.cond40.preheader.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i135, %for.cond40.preheader.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ %retval.0.i135, %for.cond40.loopexit.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ar) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %target_id) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @damon_destroy_region(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @damon_new_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @damon_add_region(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @damon_nr_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbgfs_kdamond_pid_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %count, i32 noundef 11456) #18
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %kdamond_lock = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %kdamond_lock, i32 noundef 0) #12
  %kdamond = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %kdamond to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kdamond, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call9.i, i32 noundef %count, ptr noundef nonnull @.str.30, i32 noundef %5) #12
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call9.i, i32 noundef %count, ptr noundef nonnull @.str.31) #12
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  %len.0 = phi i32 [ %call4, %if.then2 ], [ %call5, %if.else ]
  tail call void @mutex_unlock(ptr noundef %kdamond_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %tobool8.not = icmp eq i32 %len.0, 0
  br i1 %tobool8.not, label %if.end6.out_crit_edge, label %if.end10

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call9.i, i32 noundef %len.0) #12
  br label %out

out:                                              ; preds = %if.end10, %if.end6.out_crit_edge
  %len.1 = phi i32 [ %call11, %if.end10 ], [ 0, %if.end6.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.1, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @damon_dbgfs_test_str_to_target_ids(ptr noundef %test) #6 align 64 {
entry:
  %id.i573 = alloca i32, align 4
  %parsed.i574 = alloca i32, align 4
  %id.i547 = alloca i32, align 4
  %parsed.i548 = alloca i32, align 4
  %id.i528 = alloca i32, align 4
  %parsed.i529 = alloca i32, align 4
  %id.i509 = alloca i32, align 4
  %parsed.i510 = alloca i32, align 4
  %id.i490 = alloca i32, align 4
  %parsed.i491 = alloca i32, align 4
  %id.i471 = alloca i32, align 4
  %parsed.i472 = alloca i32, align 4
  %id.i = alloca i32, align 4
  %parsed.i = alloca i32, align 4
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion13 = alloca %struct.kunit_binary_assert, align 8
  %__assertion43 = alloca %struct.kunit_binary_assert, align 8
  %__assertion72 = alloca %struct.kunit_binary_assert, align 8
  %__assertion102 = alloca %struct.kunit_binary_assert, align 8
  %__assertion132 = alloca %struct.kunit_binary_assert, align 8
  %__assertion164 = alloca %struct.kunit_binary_assert, align 8
  %__assertion194 = alloca %struct.kunit_binary_assert, align 8
  %__assertion228 = alloca %struct.kunit_binary_assert, align 8
  %__assertion261 = alloca %struct.kunit_binary_assert, align 8
  %__assertion295 = alloca %struct.kunit_binary_assert, align 8
  %__assertion328 = alloca %struct.kunit_binary_assert, align 8
  %__assertion358 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #12
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id.i, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parsed.i) #12
  %1 = ptrtoint ptr %parsed.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %parsed.i, align 4, !annotation !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 128) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.str_to_target_ids.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.str_to_target_ids.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_target_ids.exit

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %nr_integers.0 = phi i32 [ %add7.i, %if.end5.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %pos.023.i = phi i32 [ %add.i, %if.end5.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr @.str.35, i32 %pos.023.i
  %call2.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %arrayidx.i, ptr noundef nonnull @.str.27, ptr noundef nonnull %id.i, ptr noundef nonnull %parsed.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp3.not.i = icmp eq i32 %call2.i, 1
  br i1 %cmp3.not.i, label %if.end5.i, label %while.body.i.str_to_target_ids.exit_crit_edge

while.body.i.str_to_target_ids.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_target_ids.exit

if.end5.i:                                        ; preds = %while.body.i
  %3 = ptrtoint ptr %parsed.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %parsed.i, align 4
  %add.i = add i32 %4, %pos.023.i
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %call7.i.i.i, i32 %nr_integers.0
  %7 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx6.i, align 4
  %add7.i = add nuw nsw i32 %nr_integers.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %nr_integers.0)
  %cmp.i = icmp ult i32 %nr_integers.0, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add.i)
  %cmp1.i = icmp slt i32 %add.i, 3
  %or.cond.i = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %if.end5.i.while.body.i_crit_edge, label %if.end5.i.str_to_target_ids.exit_crit_edge

if.end5.i.str_to_target_ids.exit_crit_edge:       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_target_ids.exit

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

str_to_target_ids.exit:                           ; preds = %if.end5.i.str_to_target_ids.exit_crit_edge, %while.body.i.str_to_target_ids.exit_crit_edge, %entry.str_to_target_ids.exit_crit_edge
  %nr_integers.1 = phi i32 [ 0, %entry.str_to_target_ids.exit_crit_edge ], [ %nr_integers.0, %while.body.i.str_to_target_ids.exit_crit_edge ], [ %add7.i, %if.end5.i.str_to_target_ids.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #12
  %8 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %9 = call ptr @memset(ptr %8, i32 255, i32 24)
  %10 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %12 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 25, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %13 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %14 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %16 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %17 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.37, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %18 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.38, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %19 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 1, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %20 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.39, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv4 = sext i32 %nr_integers.1 to i64
  %21 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv4, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_integers.1)
  %cmp = icmp eq i32 %nr_integers.1, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #12
  %22 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call7.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion13) #12
  %24 = getelementptr inbounds i8, ptr %__assertion13, i32 32
  %25 = call ptr @memset(ptr %24, i32 255, i32 24)
  %26 = ptrtoint ptr %__assertion13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %test, ptr %__assertion13, align 8
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 1
  %27 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 2
  %28 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 26, ptr %line17, align 8
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 3
  %29 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.36, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4
  %30 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %message19, align 8
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 5
  %32 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @kunit_binary_assert_format, ptr %format22, align 8
  %operation23 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 1
  %33 = ptrtoint ptr %operation23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.37, ptr %operation23, align 4
  %left_text24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 2
  %34 = ptrtoint ptr %left_text24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.40, ptr %left_text24, align 8
  %left_value25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 3
  %35 = ptrtoint ptr %left_value25 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 123, ptr %left_value25, align 8
  %right_text27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 4
  %36 = ptrtoint ptr %right_text27 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.41, ptr %right_text27, align 8
  %right_value28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 5
  %conv29 = zext i32 %23 to i64
  %37 = ptrtoint ptr %right_value28 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv29, ptr %right_value28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %23)
  %cmp31 = icmp eq i32 %23, 123
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13, i1 noundef zeroext %cmp31, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion13) #12
  call void @kfree(ptr noundef %call7.i.i.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i471) #12
  %38 = ptrtoint ptr %id.i471 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %id.i471, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parsed.i472) #12
  %39 = ptrtoint ptr %parsed.i472 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %parsed.i472, align 4, !annotation !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i473 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3264, i32 noundef 128) #15
  %tobool.not.i474 = icmp eq ptr %call7.i.i.i473, null
  br i1 %tobool.not.i474, label %str_to_target_ids.exit.str_to_target_ids.exit489_crit_edge, label %str_to_target_ids.exit.while.body.i481_crit_edge

str_to_target_ids.exit.while.body.i481_crit_edge: ; preds = %str_to_target_ids.exit
  br label %while.body.i481

str_to_target_ids.exit.str_to_target_ids.exit489_crit_edge: ; preds = %str_to_target_ids.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_target_ids.exit489

while.body.i481:                                  ; preds = %if.end5.i488.while.body.i481_crit_edge, %str_to_target_ids.exit.while.body.i481_crit_edge
  %nr_integers.2 = phi i32 [ %add7.i484, %if.end5.i488.while.body.i481_crit_edge ], [ 0, %str_to_target_ids.exit.while.body.i481_crit_edge ]
  %pos.023.i477 = phi i32 [ %add.i482, %if.end5.i488.while.body.i481_crit_edge ], [ 0, %str_to_target_ids.exit.while.body.i481_crit_edge ]
  %arrayidx.i478 = getelementptr i8, ptr @.str.42, i32 %pos.023.i477
  %call2.i479 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %arrayidx.i478, ptr noundef nonnull @.str.27, ptr noundef nonnull %id.i471, ptr noundef nonnull %parsed.i472) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i479)
  %cmp3.not.i480 = icmp eq i32 %call2.i479, 1
  br i1 %cmp3.not.i480, label %if.end5.i488, label %while.body.i481.str_to_target_ids.exit489_crit_edge

while.body.i481.str_to_target_ids.exit489_crit_edge: ; preds = %while.body.i481
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_target_ids.exit489

if.end5.i488:                                     ; preds = %while.body.i481
  %41 = ptrtoint ptr %parsed.i472 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %parsed.i472, align 4
  %add.i482 = add i32 %42, %pos.023.i477
  %43 = ptrtoint ptr %id.i471 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id.i471, align 4
  %arrayidx6.i483 = getelementptr i32, ptr %call7.i.i.i473, i32 %nr_integers.2
  %45 = ptrtoint ptr %arrayidx6.i483 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx6.i483, align 4
  %add7.i484 = add nuw nsw i32 %nr_integers.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %nr_integers.2)
  %cmp.i485 = icmp ult i32 %nr_integers.2, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %add.i482)
  %cmp1.i486 = icmp slt i32 %add.i482, 6
  %or.cond.i487 = select i1 %cmp.i485, i1 %cmp1.i486, i1 false
  br i1 %or.cond.i487, label %if.end5.i488.while.body.i481_crit_edge, label %if.end5.i488.str_to_target_ids.exit489_crit_edge

if.end5.i488.str_to_target_ids.exit489_crit_edge: ; preds = %if.end5.i488
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_target_ids.exit489

if.end5.i488.while.body.i481_crit_edge:           ; preds = %if.end5.i488
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i481

str_to_target_ids.exit489:                        ; preds = %if.end5.i488.str_to_target_ids.exit489_crit_edge, %while.body.i481.str_to_target_ids.exit489_crit_edge, %str_to_target_ids.exit.str_to_target_ids.exit489_crit_edge
  %nr_integers.3 = phi i32 [ 0, %str_to_target_ids.exit.str_to_target_ids.exit489_crit_edge ], [ %nr_integers.2, %while.body.i481.str_to_target_ids.exit489_crit_edge ], [ %add7.i484, %if.end5.i488.str_to_target_ids.exit489_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed.i472) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i471) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion43) #12
  %46 = getelementptr inbounds i8, ptr %__assertion43, i32 32
  %47 = call ptr @memset(ptr %46, i32 255, i32 24)
  %48 = ptrtoint ptr %__assertion43 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %test, ptr %__assertion43, align 8
  %type46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 1
  %49 = ptrtoint ptr %type46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %type46, align 4
  %line47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 2
  %50 = ptrtoint ptr %line47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 32, ptr %line47, align 8
  %file48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 3
  %51 = ptrtoint ptr %file48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.36, ptr %file48, align 4
  %message49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 4
  %52 = ptrtoint ptr %message49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %message49, align 8
  %va51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 4, i32 1
  %53 = ptrtoint ptr %va51 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %va51, align 4
  %format52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 5
  %54 = ptrtoint ptr %format52 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @kunit_binary_assert_format, ptr %format52, align 8
  %operation53 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 1
  %55 = ptrtoint ptr %operation53 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.37, ptr %operation53, align 4
  %left_text54 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 2
  %56 = ptrtoint ptr %left_text54 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.38, ptr %left_text54, align 8
  %left_value55 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 3
  %57 = ptrtoint ptr %left_value55 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 1, ptr %left_value55, align 8
  %right_text57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 4
  %58 = ptrtoint ptr %right_text57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.39, ptr %right_text57, align 8
  %right_value58 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 5
  %conv59 = sext i32 %nr_integers.3 to i64
  %59 = ptrtoint ptr %right_value58 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv59, ptr %right_value58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_integers.3)
  %cmp61 = icmp eq i32 %nr_integers.3, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion43, i1 noundef zeroext %cmp61, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion43) #12
  %60 = ptrtoint ptr %call7.i.i.i473 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %call7.i.i.i473, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion72) #12
  %62 = getelementptr inbounds i8, ptr %__assertion72, i32 32
  %63 = call ptr @memset(ptr %62, i32 255, i32 24)
  %64 = ptrtoint ptr %__assertion72 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %test, ptr %__assertion72, align 8
  %type75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 1
  %65 = ptrtoint ptr %type75 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %type75, align 4
  %line76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 2
  %66 = ptrtoint ptr %line76 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 33, ptr %line76, align 8
  %file77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 3
  %67 = ptrtoint ptr %file77 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.36, ptr %file77, align 4
  %message78 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 4
  %68 = ptrtoint ptr %message78 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %message78, align 8
  %va80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %va80 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %va80, align 4
  %format81 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 5
  %70 = ptrtoint ptr %format81 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @kunit_binary_assert_format, ptr %format81, align 8
  %operation82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion72, i32 0, i32 1
  %71 = ptrtoint ptr %operation82 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.37, ptr %operation82, align 4
  %left_text83 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion72, i32 0, i32 2
  %72 = ptrtoint ptr %left_text83 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.40, ptr %left_text83, align 8
  %left_value84 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion72, i32 0, i32 3
  %73 = ptrtoint ptr %left_value84 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 123, ptr %left_value84, align 8
  %right_text86 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion72, i32 0, i32 4
  %74 = ptrtoint ptr %right_text86 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.41, ptr %right_text86, align 8
  %right_value87 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion72, i32 0, i32 5
  %conv88 = zext i32 %61 to i64
  %75 = ptrtoint ptr %right_value87 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %conv88, ptr %right_value87, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %61)
  %cmp90 = icmp eq i32 %61, 123
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion72, i1 noundef zeroext %cmp90, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion72) #12
  call void @kfree(ptr noundef %call7.i.i.i473) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i490) #12
  %76 = ptrtoint ptr %id.i490 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %id.i490, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parsed.i491) #12
  %77 = ptrtoint ptr %parsed.i491 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %parsed.i491, align 4, !annotation !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %78 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i492 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %78, i32 noundef 3264, i32 noundef 128) #15
  %tobool.not.i493 = icmp eq ptr %call7.i.i.i492, null
  br i1 %tobool.not.i493, label %str_to_target_ids.exit489.str_to_target_ids.exit508_crit_edge, label %str_to_target_ids.exit489.while.body.i500_crit_edge

str_to_target_ids.exit489.while.body.i500_crit_edge: ; preds = %str_to_target_ids.exit489
  br label %while.body.i500

str_to_target_ids.exit489.str_to_target_ids.exit508_crit_edge: ; preds = %str_to_target_ids.exit489
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_target_ids.exit508

while.body.i500:                                  ; preds = %if.end5.i507.while.body.i500_crit_edge, %str_to_target_ids.exit489.while.body.i500_crit_edge
  %nr_integers.4 = phi i32 [ %add7.i503, %if.end5.i507.while.body.i500_crit_edge ], [ 0, %str_to_target_ids.exit489.while.body.i500_crit_edge ]
  %pos.023.i496 = phi i32 [ %add.i501, %if.end5.i507.while.body.i500_crit_edge ], [ 0, %str_to_target_ids.exit489.while.body.i500_crit_edge ]
  %arrayidx.i497 = getelementptr i8, ptr @.str.43, i32 %pos.023.i496
  %call2.i498 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %arrayidx.i497, ptr noundef nonnull @.str.27, ptr noundef nonnull %id.i490, ptr noundef nonnull %parsed.i491) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i498)
  %cmp3.not.i499 = icmp eq i32 %call2.i498, 1
  br i1 %cmp3.not.i499, label %if.end5.i507, label %while.body.i500.str_to_target_ids.exit508_crit_edge

while.body.i500.str_to_target_ids.exit508_crit_edge: ; preds = %while.body.i500
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_target_ids.exit508

if.end5.i507:                                     ; preds = %while.body.i500
  %79 = ptrtoint ptr %parsed.i491 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %parsed.i491, align 4
  %add.i501 = add i32 %80, %pos.023.i496
  %81 = ptrtoint ptr %id.i490 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %id.i490, align 4
  %arrayidx6.i502 = getelementptr i32, ptr %call7.i.i.i492, i32 %nr_integers.4
  %83 = ptrtoint ptr %arrayidx6.i502 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %arrayidx6.i502, align 4
  %add7.i503 = add nuw nsw i32 %nr_integers.4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %nr_integers.4)
  %cmp.i504 = icmp ult i32 %nr_integers.4, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i501)
  %cmp1.i505 = icmp slt i32 %add.i501, 4
  %or.cond.i506 = select i1 %cmp.i504, i1 %cmp1.i505, i1 false
  br i1 %or.cond.i506, label %if.end5.i507.while.body.i500_crit_edge, label %if.end5.i507.str_to_target_ids.exit508_crit_edge

if.end5.i507.str_to_target_ids.exit508_crit_edge: ; preds = %if.end5.i507
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_target_ids.exit508

if.end5.i507.while.body.i500_crit_edge:           ; preds = %if.end5.i507
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i500

str_to_target_ids.exit508:                        ; preds = %if.end5.i507.str_to_target_ids.exit508_crit_edge, %while.body.i500.str_to_target_ids.exit508_crit_edge, %str_to_target_ids.exit489.str_to_target_ids.exit508_crit_edge
  %nr_integers.5 = phi i32 [ 0, %str_to_target_ids.exit489.str_to_target_ids.exit508_crit_edge ], [ %nr_integers.4, %while.body.i500.str_to_target_ids.exit508_crit_edge ], [ %add7.i503, %if.end5.i507.str_to_target_ids.exit508_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed.i491) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i490) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion102) #12
  %84 = getelementptr inbounds i8, ptr %__assertion102, i32 32
  %85 = call ptr @memset(ptr %84, i32 255, i32 24)
  %86 = ptrtoint ptr %__assertion102 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %test, ptr %__assertion102, align 8
  %type105 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion102, i32 0, i32 1
  %87 = ptrtoint ptr %type105 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %type105, align 4
  %line106 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion102, i32 0, i32 2
  %88 = ptrtoint ptr %line106 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 39, ptr %line106, align 8
  %file107 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion102, i32 0, i32 3
  %89 = ptrtoint ptr %file107 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.36, ptr %file107, align 4
  %message108 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion102, i32 0, i32 4
  %90 = ptrtoint ptr %message108 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %message108, align 8
  %va110 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion102, i32 0, i32 4, i32 1
  %91 = ptrtoint ptr %va110 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %va110, align 4
  %format111 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion102, i32 0, i32 5
  %92 = ptrtoint ptr %format111 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @kunit_binary_assert_format, ptr %format111, align 8
  %operation112 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion102, i32 0, i32 1
  %93 = ptrtoint ptr %operation112 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @.str.37, ptr %operation112, align 4
  %left_text113 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion102, i32 0, i32 2
  %94 = ptrtoint ptr %left_text113 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @.str.44, ptr %left_text113, align 8
  %left_value114 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion102, i32 0, i32 3
  %95 = ptrtoint ptr %left_value114 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 0, ptr %left_value114, align 8
  %right_text116 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion102, i32 0, i32 4
  %96 = ptrtoint ptr %right_text116 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @.str.39, ptr %right_text116, align 8
  %right_value117 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion102, i32 0, i32 5
  %conv118 = sext i32 %nr_integers.5 to i64
  %97 = ptrtoint ptr %right_value117 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %conv118, ptr %right_value117, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_integers.5)
  %cmp120 = icmp eq i32 %nr_integers.5, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion102, i1 noundef zeroext %cmp120, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion102) #12
  call void @kfree(ptr noundef %call7.i.i.i492) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i509) #12
  %98 = ptrtoint ptr %id.i509 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %id.i509, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parsed.i510) #12
  %99 = ptrtoint ptr %parsed.i510 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %parsed.i510, align 4, !annotation !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %100 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i511 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %100, i32 noundef 3264, i32 noundef 128) #15
  %tobool.not.i512 = icmp eq ptr %call7.i.i.i511, null
  br i1 %tobool.not.i512, label %str_to_target_ids.exit508.str_to_target_ids.exit527_crit_edge, label %str_to_target_ids.exit508.while.body.i519_crit_edge

str_to_target_ids.exit508.while.body.i519_crit_edge: ; preds = %str_to_target_ids.exit508
  br label %while.body.i519

str_to_target_ids.exit508.str_to_target_ids.exit527_crit_edge: ; preds = %str_to_target_ids.exit508
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_target_ids.exit527

while.body.i519:                                  ; preds = %if.end5.i526.while.body.i519_crit_edge, %str_to_target_ids.exit508.while.body.i519_crit_edge
  %nr_integers.6 = phi i32 [ %add7.i522, %if.end5.i526.while.body.i519_crit_edge ], [ 0, %str_to_target_ids.exit508.while.body.i519_crit_edge ]
  %pos.023.i515 = phi i32 [ %add.i520, %if.end5.i526.while.body.i519_crit_edge ], [ 0, %str_to_target_ids.exit508.while.body.i519_crit_edge ]
  %arrayidx.i516 = getelementptr i8, ptr @.str.45, i32 %pos.023.i515
  %call2.i517 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %arrayidx.i516, ptr noundef nonnull @.str.27, ptr noundef nonnull %id.i509, ptr noundef nonnull %parsed.i510) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i517)
  %cmp3.not.i518 = icmp eq i32 %call2.i517, 1
  br i1 %cmp3.not.i518, label %if.end5.i526, label %while.body.i519.str_to_target_ids.exit527_crit_edge

while.body.i519.str_to_target_ids.exit527_crit_edge: ; preds = %while.body.i519
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_target_ids.exit527

if.end5.i526:                                     ; preds = %while.body.i519
  %101 = ptrtoint ptr %parsed.i510 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %parsed.i510, align 4
  %add.i520 = add i32 %102, %pos.023.i515
  %103 = ptrtoint ptr %id.i509 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %id.i509, align 4
  %arrayidx6.i521 = getelementptr i32, ptr %call7.i.i.i511, i32 %nr_integers.6
  %105 = ptrtoint ptr %arrayidx6.i521 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %arrayidx6.i521, align 4
  %add7.i522 = add nuw nsw i32 %nr_integers.6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %nr_integers.6)
  %cmp.i523 = icmp ult i32 %nr_integers.6, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %add.i520)
  %cmp1.i524 = icmp slt i32 %add.i520, 5
  %or.cond.i525 = select i1 %cmp.i523, i1 %cmp1.i524, i1 false
  br i1 %or.cond.i525, label %if.end5.i526.while.body.i519_crit_edge, label %if.end5.i526.str_to_target_ids.exit527_crit_edge

if.end5.i526.str_to_target_ids.exit527_crit_edge: ; preds = %if.end5.i526
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_target_ids.exit527

if.end5.i526.while.body.i519_crit_edge:           ; preds = %if.end5.i526
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i519

str_to_target_ids.exit527:                        ; preds = %if.end5.i526.str_to_target_ids.exit527_crit_edge, %while.body.i519.str_to_target_ids.exit527_crit_edge, %str_to_target_ids.exit508.str_to_target_ids.exit527_crit_edge
  %nr_integers.7 = phi i32 [ 0, %str_to_target_ids.exit508.str_to_target_ids.exit527_crit_edge ], [ %nr_integers.6, %while.body.i519.str_to_target_ids.exit527_crit_edge ], [ %add7.i522, %if.end5.i526.str_to_target_ids.exit527_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed.i510) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i509) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion132) #12
  %106 = getelementptr inbounds i8, ptr %__assertion132, i32 32
  %107 = call ptr @memset(ptr %106, i32 255, i32 24)
  %108 = ptrtoint ptr %__assertion132 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %test, ptr %__assertion132, align 8
  %type135 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion132, i32 0, i32 1
  %109 = ptrtoint ptr %type135 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 1, ptr %type135, align 4
  %line136 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion132, i32 0, i32 2
  %110 = ptrtoint ptr %line136 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 45, ptr %line136, align 8
  %file137 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion132, i32 0, i32 3
  %111 = ptrtoint ptr %file137 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @.str.36, ptr %file137, align 4
  %message138 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion132, i32 0, i32 4
  %112 = ptrtoint ptr %message138 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %message138, align 8
  %va140 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion132, i32 0, i32 4, i32 1
  %113 = ptrtoint ptr %va140 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %va140, align 4
  %format141 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion132, i32 0, i32 5
  %114 = ptrtoint ptr %format141 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @kunit_binary_assert_format, ptr %format141, align 8
  %operation142 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion132, i32 0, i32 1
  %115 = ptrtoint ptr %operation142 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @.str.37, ptr %operation142, align 4
  %left_text143 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion132, i32 0, i32 2
  %116 = ptrtoint ptr %left_text143 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @.str.46, ptr %left_text143, align 8
  %left_value144 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion132, i32 0, i32 3
  %117 = ptrtoint ptr %left_value144 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 2, ptr %left_value144, align 8
  %right_text146 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion132, i32 0, i32 4
  %118 = ptrtoint ptr %right_text146 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @.str.39, ptr %right_text146, align 8
  %right_value147 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion132, i32 0, i32 5
  %conv148 = sext i32 %nr_integers.7 to i64
  %119 = ptrtoint ptr %right_value147 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %conv148, ptr %right_value147, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nr_integers.7)
  %cmp150 = icmp eq i32 %nr_integers.7, 2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion132, i1 noundef zeroext %cmp150, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion132) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_integers.7)
  %cmp156616 = icmp sgt i32 %nr_integers.7, 0
  br i1 %cmp156616, label %do.body158.lr.ph, label %str_to_target_ids.exit527.for.end_crit_edge

str_to_target_ids.exit527.for.end_crit_edge:      ; preds = %str_to_target_ids.exit527
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body158.lr.ph:                                 ; preds = %str_to_target_ids.exit527
  %type167 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion164, i32 0, i32 1
  %line168 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion164, i32 0, i32 2
  %file169 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion164, i32 0, i32 3
  %message170 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion164, i32 0, i32 4
  %va172 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion164, i32 0, i32 4, i32 1
  %format173 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion164, i32 0, i32 5
  %operation174 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion164, i32 0, i32 1
  %left_text175 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion164, i32 0, i32 2
  %left_value176 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion164, i32 0, i32 3
  %right_text178 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion164, i32 0, i32 4
  %right_value179 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion164, i32 0, i32 5
  %120 = getelementptr inbounds i8, ptr %__assertion164, i32 32
  br label %do.body158

do.body158:                                       ; preds = %do.body158.do.body158_crit_edge, %do.body158.lr.ph
  %i.0617 = phi i32 [ 0, %do.body158.lr.ph ], [ %inc, %do.body158.do.body158_crit_edge ]
  %arrayidx160 = getelementptr [3 x i32], ptr @__const.damon_dbgfs_test_str_to_target_ids.expected, i32 0, i32 %i.0617
  %121 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx160, align 4
  %arrayidx162 = getelementptr i32, ptr %call7.i.i.i511, i32 %i.0617
  %123 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx162, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion164) #12
  %125 = call ptr @memset(ptr %120, i32 255, i32 24)
  %126 = ptrtoint ptr %__assertion164 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %test, ptr %__assertion164, align 8
  %127 = ptrtoint ptr %type167 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 1, ptr %type167, align 4
  %128 = ptrtoint ptr %line168 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 47, ptr %line168, align 8
  %129 = ptrtoint ptr %file169 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @.str.36, ptr %file169, align 4
  %130 = ptrtoint ptr %message170 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %message170, align 8
  %131 = ptrtoint ptr %va172 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %va172, align 4
  %132 = ptrtoint ptr %format173 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @kunit_binary_assert_format, ptr %format173, align 8
  %133 = ptrtoint ptr %operation174 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @.str.37, ptr %operation174, align 4
  %134 = ptrtoint ptr %left_text175 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @.str.47, ptr %left_text175, align 8
  %conv177 = zext i32 %122 to i64
  %135 = ptrtoint ptr %left_value176 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %conv177, ptr %left_value176, align 8
  %136 = ptrtoint ptr %right_text178 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @.str.48, ptr %right_text178, align 8
  %conv180 = zext i32 %124 to i64
  %137 = ptrtoint ptr %right_value179 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %conv180, ptr %right_value179, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %124)
  %cmp182 = icmp eq i32 %122, %124
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion164, i1 noundef zeroext %cmp182, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion164) #12
  %inc = add nuw nsw i32 %i.0617, 1
  %exitcond.not = icmp eq i32 %inc, %nr_integers.7
  br i1 %exitcond.not, label %do.body158.for.end_crit_edge, label %do.body158.do.body158_crit_edge

do.body158.do.body158_crit_edge:                  ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body158

do.body158.for.end_crit_edge:                     ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %do.body158.for.end_crit_edge, %str_to_target_ids.exit527.for.end_crit_edge
  call void @kfree(ptr noundef %call7.i.i.i511) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i528) #12
  %138 = ptrtoint ptr %id.i528 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 -1, ptr %id.i528, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parsed.i529) #12
  %139 = ptrtoint ptr %parsed.i529 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 -1, ptr %parsed.i529, align 4, !annotation !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %140 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i530 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %140, i32 noundef 3264, i32 noundef 128) #15
  %tobool.not.i531 = icmp eq ptr %call7.i.i.i530, null
  br i1 %tobool.not.i531, label %for.end.str_to_target_ids.exit546_crit_edge, label %for.end.while.body.i538_crit_edge

for.end.while.body.i538_crit_edge:                ; preds = %for.end
  br label %while.body.i538

for.end.str_to_target_ids.exit546_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_target_ids.exit546

while.body.i538:                                  ; preds = %if.end5.i545.while.body.i538_crit_edge, %for.end.while.body.i538_crit_edge
  %nr_integers.8 = phi i32 [ %add7.i541, %if.end5.i545.while.body.i538_crit_edge ], [ 0, %for.end.while.body.i538_crit_edge ]
  %pos.023.i534 = phi i32 [ %add.i539, %if.end5.i545.while.body.i538_crit_edge ], [ 0, %for.end.while.body.i538_crit_edge ]
  %arrayidx.i535 = getelementptr i8, ptr @.str.49, i32 %pos.023.i534
  %call2.i536 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %arrayidx.i535, ptr noundef nonnull @.str.27, ptr noundef nonnull %id.i528, ptr noundef nonnull %parsed.i529) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i536)
  %cmp3.not.i537 = icmp eq i32 %call2.i536, 1
  br i1 %cmp3.not.i537, label %if.end5.i545, label %while.body.i538.str_to_target_ids.exit546_crit_edge

while.body.i538.str_to_target_ids.exit546_crit_edge: ; preds = %while.body.i538
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_target_ids.exit546

if.end5.i545:                                     ; preds = %while.body.i538
  %141 = ptrtoint ptr %parsed.i529 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %parsed.i529, align 4
  %add.i539 = add i32 %142, %pos.023.i534
  %143 = ptrtoint ptr %id.i528 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %id.i528, align 4
  %arrayidx6.i540 = getelementptr i32, ptr %call7.i.i.i530, i32 %nr_integers.8
  %145 = ptrtoint ptr %arrayidx6.i540 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %arrayidx6.i540, align 4
  %add7.i541 = add nuw nsw i32 %nr_integers.8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %nr_integers.8)
  %cmp.i542 = icmp ult i32 %nr_integers.8, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i539)
  %cmp1.i543 = icmp slt i32 %add.i539, 8
  %or.cond.i544 = select i1 %cmp.i542, i1 %cmp1.i543, i1 false
  br i1 %or.cond.i544, label %if.end5.i545.while.body.i538_crit_edge, label %if.end5.i545.str_to_target_ids.exit546_crit_edge

if.end5.i545.str_to_target_ids.exit546_crit_edge: ; preds = %if.end5.i545
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_target_ids.exit546

if.end5.i545.while.body.i538_crit_edge:           ; preds = %if.end5.i545
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i538

str_to_target_ids.exit546:                        ; preds = %if.end5.i545.str_to_target_ids.exit546_crit_edge, %while.body.i538.str_to_target_ids.exit546_crit_edge, %for.end.str_to_target_ids.exit546_crit_edge
  %nr_integers.9 = phi i32 [ 0, %for.end.str_to_target_ids.exit546_crit_edge ], [ %nr_integers.8, %while.body.i538.str_to_target_ids.exit546_crit_edge ], [ %add7.i541, %if.end5.i545.str_to_target_ids.exit546_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed.i529) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i528) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion194) #12
  %146 = getelementptr inbounds i8, ptr %__assertion194, i32 32
  %147 = call ptr @memset(ptr %146, i32 255, i32 24)
  %148 = ptrtoint ptr %__assertion194 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %test, ptr %__assertion194, align 8
  %type197 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion194, i32 0, i32 1
  %149 = ptrtoint ptr %type197 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 1, ptr %type197, align 4
  %line198 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion194, i32 0, i32 2
  %150 = ptrtoint ptr %line198 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 53, ptr %line198, align 8
  %file199 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion194, i32 0, i32 3
  %151 = ptrtoint ptr %file199 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @.str.36, ptr %file199, align 4
  %message200 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion194, i32 0, i32 4
  %152 = ptrtoint ptr %message200 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr null, ptr %message200, align 8
  %va202 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion194, i32 0, i32 4, i32 1
  %153 = ptrtoint ptr %va202 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr null, ptr %va202, align 4
  %format203 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion194, i32 0, i32 5
  %154 = ptrtoint ptr %format203 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @kunit_binary_assert_format, ptr %format203, align 8
  %operation204 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion194, i32 0, i32 1
  %155 = ptrtoint ptr %operation204 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr @.str.37, ptr %operation204, align 4
  %left_text205 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion194, i32 0, i32 2
  %156 = ptrtoint ptr %left_text205 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @.str.50, ptr %left_text205, align 8
  %left_value206 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion194, i32 0, i32 3
  %157 = ptrtoint ptr %left_value206 to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 3, ptr %left_value206, align 8
  %right_text208 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion194, i32 0, i32 4
  %158 = ptrtoint ptr %right_text208 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @.str.39, ptr %right_text208, align 8
  %right_value209 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion194, i32 0, i32 5
  %conv210 = sext i32 %nr_integers.9 to i64
  %159 = ptrtoint ptr %right_value209 to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %conv210, ptr %right_value209, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %nr_integers.9)
  %cmp212 = icmp eq i32 %nr_integers.9, 3
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion194, i1 noundef zeroext %cmp212, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion194) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_integers.9)
  %cmp219618 = icmp sgt i32 %nr_integers.9, 0
  br i1 %cmp219618, label %do.body222.lr.ph, label %str_to_target_ids.exit546.for.end254_crit_edge

str_to_target_ids.exit546.for.end254_crit_edge:   ; preds = %str_to_target_ids.exit546
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end254

do.body222.lr.ph:                                 ; preds = %str_to_target_ids.exit546
  %type231 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion228, i32 0, i32 1
  %line232 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion228, i32 0, i32 2
  %file233 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion228, i32 0, i32 3
  %message234 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion228, i32 0, i32 4
  %va236 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion228, i32 0, i32 4, i32 1
  %format237 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion228, i32 0, i32 5
  %operation238 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion228, i32 0, i32 1
  %left_text239 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion228, i32 0, i32 2
  %left_value240 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion228, i32 0, i32 3
  %right_text242 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion228, i32 0, i32 4
  %right_value243 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion228, i32 0, i32 5
  %160 = getelementptr inbounds i8, ptr %__assertion228, i32 32
  br label %do.body222

do.body222:                                       ; preds = %do.body222.do.body222_crit_edge, %do.body222.lr.ph
  %i.1619 = phi i32 [ 0, %do.body222.lr.ph ], [ %inc253, %do.body222.do.body222_crit_edge ]
  %arrayidx224 = getelementptr [3 x i32], ptr @__const.damon_dbgfs_test_str_to_target_ids.expected, i32 0, i32 %i.1619
  %161 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx224, align 4
  %arrayidx226 = getelementptr i32, ptr %call7.i.i.i530, i32 %i.1619
  %163 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx226, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion228) #12
  %165 = call ptr @memset(ptr %160, i32 255, i32 24)
  %166 = ptrtoint ptr %__assertion228 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %test, ptr %__assertion228, align 8
  %167 = ptrtoint ptr %type231 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 1, ptr %type231, align 4
  %168 = ptrtoint ptr %line232 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 55, ptr %line232, align 8
  %169 = ptrtoint ptr %file233 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @.str.36, ptr %file233, align 4
  %170 = ptrtoint ptr %message234 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr null, ptr %message234, align 8
  %171 = ptrtoint ptr %va236 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr null, ptr %va236, align 4
  %172 = ptrtoint ptr %format237 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr @kunit_binary_assert_format, ptr %format237, align 8
  %173 = ptrtoint ptr %operation238 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @.str.37, ptr %operation238, align 4
  %174 = ptrtoint ptr %left_text239 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @.str.47, ptr %left_text239, align 8
  %conv241 = zext i32 %162 to i64
  %175 = ptrtoint ptr %left_value240 to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 %conv241, ptr %left_value240, align 8
  %176 = ptrtoint ptr %right_text242 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @.str.48, ptr %right_text242, align 8
  %conv244 = zext i32 %164 to i64
  %177 = ptrtoint ptr %right_value243 to i32
  call void @__asan_store8_noabort(i32 %177)
  store i64 %conv244, ptr %right_value243, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %162, i32 %164)
  %cmp246 = icmp eq i32 %162, %164
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion228, i1 noundef zeroext %cmp246, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion228) #12
  %inc253 = add nuw nsw i32 %i.1619, 1
  %exitcond621.not = icmp eq i32 %inc253, %nr_integers.9
  br i1 %exitcond621.not, label %do.body222.for.end254_crit_edge, label %do.body222.do.body222_crit_edge

do.body222.do.body222_crit_edge:                  ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body222

do.body222.for.end254_crit_edge:                  ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end254

for.end254:                                       ; preds = %do.body222.for.end254_crit_edge, %str_to_target_ids.exit546.for.end254_crit_edge
  call void @kfree(ptr noundef %call7.i.i.i530) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i547) #12
  %178 = ptrtoint ptr %id.i547 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 -1, ptr %id.i547, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parsed.i548) #12
  %179 = ptrtoint ptr %parsed.i548 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 -1, ptr %parsed.i548, align 4, !annotation !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %180 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i549 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %180, i32 noundef 3264, i32 noundef 128) #15
  %tobool.not.i550 = icmp eq ptr %call7.i.i.i549, null
  br i1 %tobool.not.i550, label %for.end254.str_to_target_ids.exit565_crit_edge, label %for.end254.while.body.i557_crit_edge

for.end254.while.body.i557_crit_edge:             ; preds = %for.end254
  br label %while.body.i557

for.end254.str_to_target_ids.exit565_crit_edge:   ; preds = %for.end254
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_target_ids.exit565

while.body.i557:                                  ; preds = %if.end5.i564.while.body.i557_crit_edge, %for.end254.while.body.i557_crit_edge
  %nr_integers.10 = phi i32 [ %add7.i560, %if.end5.i564.while.body.i557_crit_edge ], [ 0, %for.end254.while.body.i557_crit_edge ]
  %pos.023.i553 = phi i32 [ %add.i558, %if.end5.i564.while.body.i557_crit_edge ], [ 0, %for.end254.while.body.i557_crit_edge ]
  %arrayidx.i554 = getelementptr i8, ptr @.str.51, i32 %pos.023.i553
  %call2.i555 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %arrayidx.i554, ptr noundef nonnull @.str.27, ptr noundef nonnull %id.i547, ptr noundef nonnull %parsed.i548) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i555)
  %cmp3.not.i556 = icmp eq i32 %call2.i555, 1
  br i1 %cmp3.not.i556, label %if.end5.i564, label %while.body.i557.str_to_target_ids.exit565_crit_edge

while.body.i557.str_to_target_ids.exit565_crit_edge: ; preds = %while.body.i557
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_target_ids.exit565

if.end5.i564:                                     ; preds = %while.body.i557
  %181 = ptrtoint ptr %parsed.i548 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %parsed.i548, align 4
  %add.i558 = add i32 %182, %pos.023.i553
  %183 = ptrtoint ptr %id.i547 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %id.i547, align 4
  %arrayidx6.i559 = getelementptr i32, ptr %call7.i.i.i549, i32 %nr_integers.10
  %185 = ptrtoint ptr %arrayidx6.i559 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %arrayidx6.i559, align 4
  %add7.i560 = add nuw nsw i32 %nr_integers.10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %nr_integers.10)
  %cmp.i561 = icmp ult i32 %nr_integers.10, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %add.i558)
  %cmp1.i562 = icmp slt i32 %add.i558, 12
  %or.cond.i563 = select i1 %cmp.i561, i1 %cmp1.i562, i1 false
  br i1 %or.cond.i563, label %if.end5.i564.while.body.i557_crit_edge, label %if.end5.i564.str_to_target_ids.exit565_crit_edge

if.end5.i564.str_to_target_ids.exit565_crit_edge: ; preds = %if.end5.i564
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_target_ids.exit565

if.end5.i564.while.body.i557_crit_edge:           ; preds = %if.end5.i564
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i557

str_to_target_ids.exit565:                        ; preds = %if.end5.i564.str_to_target_ids.exit565_crit_edge, %while.body.i557.str_to_target_ids.exit565_crit_edge, %for.end254.str_to_target_ids.exit565_crit_edge
  %nr_integers.11 = phi i32 [ 0, %for.end254.str_to_target_ids.exit565_crit_edge ], [ %nr_integers.10, %while.body.i557.str_to_target_ids.exit565_crit_edge ], [ %add7.i560, %if.end5.i564.str_to_target_ids.exit565_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed.i548) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i547) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion261) #12
  %186 = getelementptr inbounds i8, ptr %__assertion261, i32 32
  %187 = call ptr @memset(ptr %186, i32 255, i32 24)
  %188 = ptrtoint ptr %__assertion261 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %test, ptr %__assertion261, align 8
  %type264 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 1
  %189 = ptrtoint ptr %type264 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 1, ptr %type264, align 4
  %line265 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 2
  %190 = ptrtoint ptr %line265 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 61, ptr %line265, align 8
  %file266 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 3
  %191 = ptrtoint ptr %file266 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr @.str.36, ptr %file266, align 4
  %message267 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 4
  %192 = ptrtoint ptr %message267 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr null, ptr %message267, align 8
  %va269 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 4, i32 1
  %193 = ptrtoint ptr %va269 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr null, ptr %va269, align 4
  %format270 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion261, i32 0, i32 5
  %194 = ptrtoint ptr %format270 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr @kunit_binary_assert_format, ptr %format270, align 8
  %operation271 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion261, i32 0, i32 1
  %195 = ptrtoint ptr %operation271 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr @.str.37, ptr %operation271, align 4
  %left_text272 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion261, i32 0, i32 2
  %196 = ptrtoint ptr %left_text272 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr @.str.46, ptr %left_text272, align 8
  %left_value273 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion261, i32 0, i32 3
  %197 = ptrtoint ptr %left_value273 to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 2, ptr %left_value273, align 8
  %right_text275 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion261, i32 0, i32 4
  %198 = ptrtoint ptr %right_text275 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr @.str.39, ptr %right_text275, align 8
  %right_value276 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion261, i32 0, i32 5
  %conv277 = sext i32 %nr_integers.11 to i64
  %199 = ptrtoint ptr %right_value276 to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 %conv277, ptr %right_value276, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nr_integers.11)
  %cmp279 = icmp eq i32 %nr_integers.11, 2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion261, i1 noundef zeroext %cmp279, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion261) #12
  %type298 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295, i32 0, i32 1
  %line299 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295, i32 0, i32 2
  %file300 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295, i32 0, i32 3
  %message301 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295, i32 0, i32 4
  %va303 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295, i32 0, i32 4, i32 1
  %format304 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion295, i32 0, i32 5
  %operation305 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion295, i32 0, i32 1
  %left_text306 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion295, i32 0, i32 2
  %left_value307 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion295, i32 0, i32 3
  %right_text309 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion295, i32 0, i32 4
  %right_value310 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion295, i32 0, i32 5
  %200 = ptrtoint ptr %call7.i.i.i549 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %call7.i.i.i549, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion295) #12
  %202 = getelementptr inbounds i8, ptr %__assertion295, i32 32
  %203 = call ptr @memset(ptr %202, i32 255, i32 24)
  %204 = ptrtoint ptr %__assertion295 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %test, ptr %__assertion295, align 8
  %205 = ptrtoint ptr %type298 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 1, ptr %type298, align 4
  %206 = ptrtoint ptr %line299 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 63, ptr %line299, align 8
  %207 = ptrtoint ptr %file300 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr @.str.36, ptr %file300, align 4
  %208 = ptrtoint ptr %message301 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr null, ptr %message301, align 8
  %209 = ptrtoint ptr %va303 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr null, ptr %va303, align 4
  %210 = ptrtoint ptr %format304 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr @kunit_binary_assert_format, ptr %format304, align 8
  %211 = ptrtoint ptr %operation305 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr @.str.37, ptr %operation305, align 4
  %212 = ptrtoint ptr %left_text306 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr @.str.47, ptr %left_text306, align 8
  %213 = ptrtoint ptr %left_value307 to i32
  call void @__asan_store8_noabort(i32 %213)
  store i64 12, ptr %left_value307, align 8
  %214 = ptrtoint ptr %right_text309 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @.str.48, ptr %right_text309, align 8
  %conv311 = zext i32 %201 to i64
  %215 = ptrtoint ptr %right_value310 to i32
  call void @__asan_store8_noabort(i32 %215)
  store i64 %conv311, ptr %right_value310, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %201)
  %cmp313 = icmp eq i32 %201, 12
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion295, i1 noundef zeroext %cmp313, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion295) #12
  %arrayidx293.1 = getelementptr i32, ptr %call7.i.i.i549, i32 1
  %216 = ptrtoint ptr %arrayidx293.1 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx293.1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion295) #12
  %218 = getelementptr inbounds i8, ptr %__assertion295, i32 32
  %219 = call ptr @memset(ptr %218, i32 255, i32 24)
  %220 = ptrtoint ptr %__assertion295 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %test, ptr %__assertion295, align 8
  %221 = ptrtoint ptr %type298 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 1, ptr %type298, align 4
  %222 = ptrtoint ptr %line299 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 63, ptr %line299, align 8
  %223 = ptrtoint ptr %file300 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr @.str.36, ptr %file300, align 4
  %224 = ptrtoint ptr %message301 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr null, ptr %message301, align 8
  %225 = ptrtoint ptr %va303 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr null, ptr %va303, align 4
  %226 = ptrtoint ptr %format304 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr @kunit_binary_assert_format, ptr %format304, align 8
  %227 = ptrtoint ptr %operation305 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr @.str.37, ptr %operation305, align 4
  %228 = ptrtoint ptr %left_text306 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr @.str.47, ptr %left_text306, align 8
  %229 = ptrtoint ptr %left_value307 to i32
  call void @__asan_store8_noabort(i32 %229)
  store i64 35, ptr %left_value307, align 8
  %230 = ptrtoint ptr %right_text309 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr @.str.48, ptr %right_text309, align 8
  %conv311.1 = zext i32 %217 to i64
  %231 = ptrtoint ptr %right_value310 to i32
  call void @__asan_store8_noabort(i32 %231)
  store i64 %conv311.1, ptr %right_value310, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %217)
  %cmp313.1 = icmp eq i32 %217, 35
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion295, i1 noundef zeroext %cmp313.1, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion295) #12
  call void @kfree(ptr noundef %call7.i.i.i549) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %232 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i568 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %232, i32 noundef 3264, i32 noundef 128) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion328) #12
  %233 = getelementptr inbounds i8, ptr %__assertion328, i32 32
  %234 = call ptr @memset(ptr %233, i32 255, i32 24)
  %235 = ptrtoint ptr %__assertion328 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %test, ptr %__assertion328, align 8
  %type331 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion328, i32 0, i32 1
  %236 = ptrtoint ptr %type331 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 1, ptr %type331, align 4
  %line332 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion328, i32 0, i32 2
  %237 = ptrtoint ptr %line332 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 69, ptr %line332, align 8
  %file333 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion328, i32 0, i32 3
  %238 = ptrtoint ptr %file333 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr @.str.36, ptr %file333, align 4
  %message334 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion328, i32 0, i32 4
  %239 = ptrtoint ptr %message334 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr null, ptr %message334, align 8
  %va336 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion328, i32 0, i32 4, i32 1
  %240 = ptrtoint ptr %va336 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr null, ptr %va336, align 4
  %format337 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion328, i32 0, i32 5
  %241 = ptrtoint ptr %format337 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr @kunit_binary_assert_format, ptr %format337, align 8
  %operation338 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion328, i32 0, i32 1
  %242 = ptrtoint ptr %operation338 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr @.str.37, ptr %operation338, align 4
  %left_text339 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion328, i32 0, i32 2
  %243 = ptrtoint ptr %left_text339 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr @.str.44, ptr %left_text339, align 8
  %left_value340 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion328, i32 0, i32 3
  %244 = ptrtoint ptr %left_value340 to i32
  call void @__asan_store8_noabort(i32 %244)
  store i64 0, ptr %left_value340, align 8
  %right_text342 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion328, i32 0, i32 4
  %245 = ptrtoint ptr %right_text342 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr @.str.39, ptr %right_text342, align 8
  %right_value343 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion328, i32 0, i32 5
  %246 = ptrtoint ptr %right_value343 to i32
  call void @__asan_store8_noabort(i32 %246)
  store i64 0, ptr %right_value343, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion328, i1 noundef zeroext true, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion328) #12
  call void @kfree(ptr noundef %call7.i.i.i568) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i573) #12
  %247 = ptrtoint ptr %id.i573 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 -1, ptr %id.i573, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parsed.i574) #12
  %248 = ptrtoint ptr %parsed.i574 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 -1, ptr %parsed.i574, align 4, !annotation !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %249 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i575 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %249, i32 noundef 3264, i32 noundef 128) #15
  %tobool.not.i576 = icmp eq ptr %call7.i.i.i575, null
  br i1 %tobool.not.i576, label %str_to_target_ids.exit565.str_to_target_ids.exit591_crit_edge, label %str_to_target_ids.exit565.while.body.i583_crit_edge

str_to_target_ids.exit565.while.body.i583_crit_edge: ; preds = %str_to_target_ids.exit565
  br label %while.body.i583

str_to_target_ids.exit565.str_to_target_ids.exit591_crit_edge: ; preds = %str_to_target_ids.exit565
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_target_ids.exit591

while.body.i583:                                  ; preds = %if.end5.i590.while.body.i583_crit_edge, %str_to_target_ids.exit565.while.body.i583_crit_edge
  %nr_integers.12 = phi i32 [ %add7.i586, %if.end5.i590.while.body.i583_crit_edge ], [ 0, %str_to_target_ids.exit565.while.body.i583_crit_edge ]
  %pos.023.i579 = phi i32 [ %add.i584, %if.end5.i590.while.body.i583_crit_edge ], [ 0, %str_to_target_ids.exit565.while.body.i583_crit_edge ]
  %arrayidx.i580 = getelementptr i8, ptr @.str.24, i32 %pos.023.i579
  %call2.i581 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %arrayidx.i580, ptr noundef nonnull @.str.27, ptr noundef nonnull %id.i573, ptr noundef nonnull %parsed.i574) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i581)
  %cmp3.not.i582 = icmp eq i32 %call2.i581, 1
  br i1 %cmp3.not.i582, label %if.end5.i590, label %while.body.i583.str_to_target_ids.exit591_crit_edge

while.body.i583.str_to_target_ids.exit591_crit_edge: ; preds = %while.body.i583
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_target_ids.exit591

if.end5.i590:                                     ; preds = %while.body.i583
  %250 = ptrtoint ptr %parsed.i574 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %parsed.i574, align 4
  %add.i584 = add i32 %251, %pos.023.i579
  %252 = ptrtoint ptr %id.i573 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %id.i573, align 4
  %arrayidx6.i585 = getelementptr i32, ptr %call7.i.i.i575, i32 %nr_integers.12
  %254 = ptrtoint ptr %arrayidx6.i585 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %253, ptr %arrayidx6.i585, align 4
  %add7.i586 = add nuw nsw i32 %nr_integers.12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %nr_integers.12)
  %cmp.i587 = icmp ult i32 %nr_integers.12, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i584)
  %cmp1.i588 = icmp slt i32 %add.i584, 1
  %or.cond.i589 = select i1 %cmp.i587, i1 %cmp1.i588, i1 false
  br i1 %or.cond.i589, label %if.end5.i590.while.body.i583_crit_edge, label %if.end5.i590.str_to_target_ids.exit591_crit_edge

if.end5.i590.str_to_target_ids.exit591_crit_edge: ; preds = %if.end5.i590
  call void @__sanitizer_cov_trace_pc() #14
  br label %str_to_target_ids.exit591

if.end5.i590.while.body.i583_crit_edge:           ; preds = %if.end5.i590
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i583

str_to_target_ids.exit591:                        ; preds = %if.end5.i590.str_to_target_ids.exit591_crit_edge, %while.body.i583.str_to_target_ids.exit591_crit_edge, %str_to_target_ids.exit565.str_to_target_ids.exit591_crit_edge
  %nr_integers.13 = phi i32 [ 0, %str_to_target_ids.exit565.str_to_target_ids.exit591_crit_edge ], [ %nr_integers.12, %while.body.i583.str_to_target_ids.exit591_crit_edge ], [ %add7.i586, %if.end5.i590.str_to_target_ids.exit591_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed.i574) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i573) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion358) #12
  %255 = getelementptr inbounds i8, ptr %__assertion358, i32 32
  %256 = call ptr @memset(ptr %255, i32 255, i32 24)
  %257 = ptrtoint ptr %__assertion358 to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %test, ptr %__assertion358, align 8
  %type361 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion358, i32 0, i32 1
  %258 = ptrtoint ptr %type361 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 1, ptr %type361, align 4
  %line362 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion358, i32 0, i32 2
  %259 = ptrtoint ptr %line362 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 75, ptr %line362, align 8
  %file363 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion358, i32 0, i32 3
  %260 = ptrtoint ptr %file363 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr @.str.36, ptr %file363, align 4
  %message364 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion358, i32 0, i32 4
  %261 = ptrtoint ptr %message364 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr null, ptr %message364, align 8
  %va366 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion358, i32 0, i32 4, i32 1
  %262 = ptrtoint ptr %va366 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr null, ptr %va366, align 4
  %format367 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion358, i32 0, i32 5
  %263 = ptrtoint ptr %format367 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr @kunit_binary_assert_format, ptr %format367, align 8
  %operation368 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion358, i32 0, i32 1
  %264 = ptrtoint ptr %operation368 to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr @.str.37, ptr %operation368, align 4
  %left_text369 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion358, i32 0, i32 2
  %265 = ptrtoint ptr %left_text369 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr @.str.44, ptr %left_text369, align 8
  %left_value370 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion358, i32 0, i32 3
  %266 = ptrtoint ptr %left_value370 to i32
  call void @__asan_store8_noabort(i32 %266)
  store i64 0, ptr %left_value370, align 8
  %right_text372 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion358, i32 0, i32 4
  %267 = ptrtoint ptr %right_text372 to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr @.str.39, ptr %right_text372, align 8
  %right_value373 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion358, i32 0, i32 5
  %conv374 = sext i32 %nr_integers.13 to i64
  %268 = ptrtoint ptr %right_value373 to i32
  call void @__asan_store8_noabort(i32 %268)
  store i64 %conv374, ptr %right_value373, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_integers.13)
  %cmp376 = icmp eq i32 %nr_integers.13, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion358, i1 noundef zeroext %cmp376, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion358) #12
  call void @kfree(ptr noundef %call7.i.i.i575) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @damon_dbgfs_test_set_targets(ptr noundef %test) #6 align 64 {
entry:
  %ids = alloca [3 x i32], align 4
  %buf = alloca [64 x i8], align 1
  %__assertion = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion20 = alloca %struct.kunit_binary_str_assert, align 4
  %.compoundliteral = alloca [2 x i32], align 4
  %__assertion51 = alloca %struct.kunit_binary_str_assert, align 4
  %.compoundliteral73 = alloca [1 x i32], align 4
  %__assertion84 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion114 = alloca %struct.kunit_binary_str_assert, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @damon_new_ctx() #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.dbgfs_new_ctx.exit_crit_edge, label %if.end.i

entry.dbgfs_new_ctx.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dbgfs_new_ctx.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @damon_va_set_primitives(ptr noundef nonnull %call.i) #12
  %before_terminate.i = getelementptr inbounds %struct.damon_ctx, ptr %call.i, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %before_terminate.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @dbgfs_before_terminate, ptr %before_terminate.i, align 4
  br label %dbgfs_new_ctx.exit

dbgfs_new_ctx.exit:                               ; preds = %if.end.i, %entry.dbgfs_new_ctx.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ids) #12
  %1 = call ptr @memcpy(ptr %ids, ptr @__const.damon_dbgfs_test_set_init_regions.ids, i32 12)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #12
  %2 = call ptr @memset(ptr %buf, i32 255, i32 64)
  %target_valid = getelementptr inbounds %struct.damon_ctx, ptr %call.i, i32 0, i32 7, i32 7
  %3 = ptrtoint ptr %target_valid to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %target_valid, align 4
  %cleanup = getelementptr inbounds %struct.damon_ctx, ptr %call.i, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cleanup, align 8
  %call2 = call i32 @damon_set_targets(ptr noundef %call.i, ptr noundef nonnull %ids, i32 noundef 3) #12
  %adaptive_targets.i = getelementptr inbounds %struct.damon_ctx, ptr %call.i, i32 0, i32 11
  %5 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn40.i = load ptr, ptr %adaptive_targets.i, align 4
  %cmp.not41.i = icmp eq ptr %.pn40.i, %adaptive_targets.i
  br i1 %cmp.not41.i, label %dbgfs_new_ctx.exit.for.end.thread.i_crit_edge, label %dbgfs_new_ctx.exit.for.body.i_crit_edge

dbgfs_new_ctx.exit.for.body.i_crit_edge:          ; preds = %dbgfs_new_ctx.exit
  br label %for.body.i

dbgfs_new_ctx.exit.for.end.thread.i_crit_edge:    ; preds = %dbgfs_new_ctx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i

for.cond.i:                                       ; preds = %if.end.i172
  %add.i = add i32 %call4.i, %written.042.i
  %6 = ptrtoint ptr %.pn43.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn43.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %adaptive_targets.i
  br i1 %cmp.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %dbgfs_new_ctx.exit.for.body.i_crit_edge
  %.pn43.i = phi ptr [ %.pn.i, %for.cond.i.for.body.i_crit_edge ], [ %.pn40.i, %dbgfs_new_ctx.exit.for.body.i_crit_edge ]
  %written.042.i = phi i32 [ %add.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %dbgfs_new_ctx.exit.for.body.i_crit_edge ]
  %t.0.i = getelementptr i8, ptr %.pn43.i, i32 -16
  %7 = ptrtoint ptr %t.0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %t.0.i, align 4
  %9 = ptrtoint ptr %target_valid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %target_valid, align 4
  %cmp.i.i = icmp eq ptr %10, @damon_va_target_valid
  br i1 %cmp.i.i, label %if.then.i, label %for.body.i.if.end.i172_crit_edge

for.body.i.if.end.i172_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i172

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = inttoptr i32 %8 to ptr
  %call3.i = call i32 @pid_vnr(ptr noundef %11) #12
  br label %if.end.i172

if.end.i172:                                      ; preds = %if.then.i, %for.body.i.if.end.i172_crit_edge
  %id.0.i = phi i32 [ %call3.i, %if.then.i ], [ %8, %for.body.i.if.end.i172_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %written.042.i
  %sub.i = sub i32 64, %written.042.i
  %call4.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.i, i32 noundef %sub.i, ptr noundef nonnull @.str.23, i32 noundef %id.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i171 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i171, label %if.end.i172.sprint_target_ids.exit_crit_edge, label %for.cond.i

if.end.i172.sprint_target_ids.exit_crit_edge:     ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #14
  br label %sprint_target_ids.exit

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool12.not.i = icmp eq i32 %add.i, 0
  %sub14.i = add i32 %add.i, -1
  br i1 %tobool12.not.i, label %for.end.i.for.end.thread.i_crit_edge, label %for.end.i._crit_edge

for.end.i._crit_edge:                             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %12

for.end.i.for.end.thread.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.end.i.for.end.thread.i_crit_edge, %dbgfs_new_ctx.exit.for.end.thread.i_crit_edge
  br label %12

12:                                               ; preds = %for.end.thread.i, %for.end.i._crit_edge
  %13 = phi i32 [ 0, %for.end.thread.i ], [ %sub14.i, %for.end.i._crit_edge ]
  %arrayidx16.i = getelementptr i8, ptr %buf, i32 %13
  %sub17.i = sub i32 64, %13
  %call18.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx16.i, i32 noundef %sub17.i, ptr noundef nonnull @.str.24) #12
  br label %sprint_target_ids.exit

sprint_target_ids.exit:                           ; preds = %12, %if.end.i172.sprint_target_ids.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #12
  %14 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %16 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 91, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %17 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.36, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %18 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %20 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @kunit_binary_str_assert_format, ptr %format, align 4
  %operation = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion, i32 0, i32 1
  %21 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.37, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion, i32 0, i32 2
  %22 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.54, ptr %left_text, align 4
  %left_value = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion, i32 0, i32 3
  %23 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf, ptr %left_value, align 4
  %right_text = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion, i32 0, i32 4
  %24 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.55, ptr %right_text, align 4
  %right_value = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion, i32 0, i32 5
  %25 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.53, ptr %right_value, align 4
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buf, ptr noundef nonnull dereferenceable(7) @.str.53, i32 7) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #12
  %call12 = call i32 @damon_set_targets(ptr noundef %call.i, ptr noundef null, i32 noundef 0) #12
  %26 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn40.i174 = load ptr, ptr %adaptive_targets.i, align 4
  %cmp.not41.i175 = icmp eq ptr %.pn40.i174, %adaptive_targets.i
  br i1 %cmp.not41.i175, label %sprint_target_ids.exit.for.end.thread.i198_crit_edge, label %sprint_target_ids.exit.for.body.i186_crit_edge

sprint_target_ids.exit.for.body.i186_crit_edge:   ; preds = %sprint_target_ids.exit
  br label %for.body.i186

sprint_target_ids.exit.for.end.thread.i198_crit_edge: ; preds = %sprint_target_ids.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i198

for.cond.i181:                                    ; preds = %if.end.i194
  %add.i178 = add i32 %call4.i192, %written.042.i183
  %27 = ptrtoint ptr %.pn43.i182 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i179 = load ptr, ptr %.pn43.i182, align 4
  %cmp.not.i180 = icmp eq ptr %.pn.i179, %adaptive_targets.i
  br i1 %cmp.not.i180, label %for.end.i197, label %for.cond.i181.for.body.i186_crit_edge

for.cond.i181.for.body.i186_crit_edge:            ; preds = %for.cond.i181
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i186

for.body.i186:                                    ; preds = %for.cond.i181.for.body.i186_crit_edge, %sprint_target_ids.exit.for.body.i186_crit_edge
  %.pn43.i182 = phi ptr [ %.pn.i179, %for.cond.i181.for.body.i186_crit_edge ], [ %.pn40.i174, %sprint_target_ids.exit.for.body.i186_crit_edge ]
  %written.042.i183 = phi i32 [ %add.i178, %for.cond.i181.for.body.i186_crit_edge ], [ 0, %sprint_target_ids.exit.for.body.i186_crit_edge ]
  %t.0.i184 = getelementptr i8, ptr %.pn43.i182, i32 -16
  %28 = ptrtoint ptr %t.0.i184 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %t.0.i184, align 4
  %30 = ptrtoint ptr %target_valid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %target_valid, align 4
  %cmp.i.i185 = icmp eq ptr %31, @damon_va_target_valid
  br i1 %cmp.i.i185, label %if.then.i188, label %for.body.i186.if.end.i194_crit_edge

for.body.i186.if.end.i194_crit_edge:              ; preds = %for.body.i186
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i194

if.then.i188:                                     ; preds = %for.body.i186
  call void @__sanitizer_cov_trace_pc() #14
  %32 = inttoptr i32 %29 to ptr
  %call3.i187 = call i32 @pid_vnr(ptr noundef %32) #12
  br label %if.end.i194

if.end.i194:                                      ; preds = %if.then.i188, %for.body.i186.if.end.i194_crit_edge
  %id.0.i189 = phi i32 [ %call3.i187, %if.then.i188 ], [ %29, %for.body.i186.if.end.i194_crit_edge ]
  %arrayidx.i190 = getelementptr i8, ptr %buf, i32 %written.042.i183
  %sub.i191 = sub i32 64, %written.042.i183
  %call4.i192 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.i190, i32 noundef %sub.i191, ptr noundef nonnull @.str.23, i32 noundef %id.0.i189) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i192)
  %tobool.not.i193 = icmp eq i32 %call4.i192, 0
  br i1 %tobool.not.i193, label %if.end.i194.sprint_target_ids.exit204_crit_edge, label %for.cond.i181

if.end.i194.sprint_target_ids.exit204_crit_edge:  ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #14
  br label %sprint_target_ids.exit204

for.end.i197:                                     ; preds = %for.cond.i181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i178)
  %tobool12.not.i195 = icmp eq i32 %add.i178, 0
  %sub14.i196 = add i32 %add.i178, -1
  br i1 %tobool12.not.i195, label %for.end.i197.for.end.thread.i198_crit_edge, label %for.end.i197._crit_edge

for.end.i197._crit_edge:                          ; preds = %for.end.i197
  call void @__sanitizer_cov_trace_pc() #14
  br label %33

for.end.i197.for.end.thread.i198_crit_edge:       ; preds = %for.end.i197
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i198

for.end.thread.i198:                              ; preds = %for.end.i197.for.end.thread.i198_crit_edge, %sprint_target_ids.exit.for.end.thread.i198_crit_edge
  br label %33

33:                                               ; preds = %for.end.thread.i198, %for.end.i197._crit_edge
  %34 = phi i32 [ 0, %for.end.thread.i198 ], [ %sub14.i196, %for.end.i197._crit_edge ]
  %arrayidx16.i199 = getelementptr i8, ptr %buf, i32 %34
  %sub17.i200 = sub i32 64, %34
  %call18.i201 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx16.i199, i32 noundef %sub17.i200, ptr noundef nonnull @.str.24) #12
  br label %sprint_target_ids.exit204

sprint_target_ids.exit204:                        ; preds = %33, %if.end.i194.sprint_target_ids.exit204_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion20) #12
  %35 = ptrtoint ptr %__assertion20 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %test, ptr %__assertion20, align 4
  %type23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 1
  %36 = ptrtoint ptr %type23 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %type23, align 4
  %line24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 2
  %37 = ptrtoint ptr %line24 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 95, ptr %line24, align 4
  %file25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 3
  %38 = ptrtoint ptr %file25 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.36, ptr %file25, align 4
  %message26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 4
  %39 = ptrtoint ptr %message26 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %message26, align 4
  %va28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %va28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %va28, align 4
  %format29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 5
  %41 = ptrtoint ptr %format29 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @kunit_binary_str_assert_format, ptr %format29, align 4
  %operation30 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion20, i32 0, i32 1
  %42 = ptrtoint ptr %operation30 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.37, ptr %operation30, align 4
  %left_text31 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion20, i32 0, i32 2
  %43 = ptrtoint ptr %left_text31 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.54, ptr %left_text31, align 4
  %left_value32 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion20, i32 0, i32 3
  %44 = ptrtoint ptr %left_value32 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %buf, ptr %left_value32, align 4
  %right_text33 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion20, i32 0, i32 4
  %45 = ptrtoint ptr %right_text33 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.56, ptr %right_text33, align 4
  %right_value34 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion20, i32 0, i32 5
  %46 = ptrtoint ptr %right_value34 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.24, ptr %right_value34, align 4
  %bcmp167 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %buf, ptr noundef nonnull dereferenceable(2) @.str.24, i32 2) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp167)
  %cmp37 = icmp eq i32 %bcmp167, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion20, i1 noundef zeroext %cmp37, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion20) #12
  %47 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %.compoundliteral, align 4
  %arrayinit.element = getelementptr inbounds i32, ptr %.compoundliteral, i32 1
  %48 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %arrayinit.element, align 4
  %call43 = call i32 @damon_set_targets(ptr noundef %call.i, ptr noundef nonnull %.compoundliteral, i32 noundef 2) #12
  %49 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn40.i206 = load ptr, ptr %adaptive_targets.i, align 4
  %cmp.not41.i207 = icmp eq ptr %.pn40.i206, %adaptive_targets.i
  br i1 %cmp.not41.i207, label %sprint_target_ids.exit204.for.end.thread.i230_crit_edge, label %sprint_target_ids.exit204.for.body.i218_crit_edge

sprint_target_ids.exit204.for.body.i218_crit_edge: ; preds = %sprint_target_ids.exit204
  br label %for.body.i218

sprint_target_ids.exit204.for.end.thread.i230_crit_edge: ; preds = %sprint_target_ids.exit204
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i230

for.cond.i213:                                    ; preds = %if.end.i226
  %add.i210 = add i32 %call4.i224, %written.042.i215
  %50 = ptrtoint ptr %.pn43.i214 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn.i211 = load ptr, ptr %.pn43.i214, align 4
  %cmp.not.i212 = icmp eq ptr %.pn.i211, %adaptive_targets.i
  br i1 %cmp.not.i212, label %for.end.i229, label %for.cond.i213.for.body.i218_crit_edge

for.cond.i213.for.body.i218_crit_edge:            ; preds = %for.cond.i213
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i218

for.body.i218:                                    ; preds = %for.cond.i213.for.body.i218_crit_edge, %sprint_target_ids.exit204.for.body.i218_crit_edge
  %.pn43.i214 = phi ptr [ %.pn.i211, %for.cond.i213.for.body.i218_crit_edge ], [ %.pn40.i206, %sprint_target_ids.exit204.for.body.i218_crit_edge ]
  %written.042.i215 = phi i32 [ %add.i210, %for.cond.i213.for.body.i218_crit_edge ], [ 0, %sprint_target_ids.exit204.for.body.i218_crit_edge ]
  %t.0.i216 = getelementptr i8, ptr %.pn43.i214, i32 -16
  %51 = ptrtoint ptr %t.0.i216 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %t.0.i216, align 4
  %53 = ptrtoint ptr %target_valid to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %target_valid, align 4
  %cmp.i.i217 = icmp eq ptr %54, @damon_va_target_valid
  br i1 %cmp.i.i217, label %if.then.i220, label %for.body.i218.if.end.i226_crit_edge

for.body.i218.if.end.i226_crit_edge:              ; preds = %for.body.i218
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i226

if.then.i220:                                     ; preds = %for.body.i218
  call void @__sanitizer_cov_trace_pc() #14
  %55 = inttoptr i32 %52 to ptr
  %call3.i219 = call i32 @pid_vnr(ptr noundef %55) #12
  br label %if.end.i226

if.end.i226:                                      ; preds = %if.then.i220, %for.body.i218.if.end.i226_crit_edge
  %id.0.i221 = phi i32 [ %call3.i219, %if.then.i220 ], [ %52, %for.body.i218.if.end.i226_crit_edge ]
  %arrayidx.i222 = getelementptr i8, ptr %buf, i32 %written.042.i215
  %sub.i223 = sub i32 64, %written.042.i215
  %call4.i224 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.i222, i32 noundef %sub.i223, ptr noundef nonnull @.str.23, i32 noundef %id.0.i221) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i224)
  %tobool.not.i225 = icmp eq i32 %call4.i224, 0
  br i1 %tobool.not.i225, label %if.end.i226.sprint_target_ids.exit236_crit_edge, label %for.cond.i213

if.end.i226.sprint_target_ids.exit236_crit_edge:  ; preds = %if.end.i226
  call void @__sanitizer_cov_trace_pc() #14
  br label %sprint_target_ids.exit236

for.end.i229:                                     ; preds = %for.cond.i213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i210)
  %tobool12.not.i227 = icmp eq i32 %add.i210, 0
  %sub14.i228 = add i32 %add.i210, -1
  br i1 %tobool12.not.i227, label %for.end.i229.for.end.thread.i230_crit_edge, label %for.end.i229._crit_edge

for.end.i229._crit_edge:                          ; preds = %for.end.i229
  call void @__sanitizer_cov_trace_pc() #14
  br label %56

for.end.i229.for.end.thread.i230_crit_edge:       ; preds = %for.end.i229
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i230

for.end.thread.i230:                              ; preds = %for.end.i229.for.end.thread.i230_crit_edge, %sprint_target_ids.exit204.for.end.thread.i230_crit_edge
  br label %56

56:                                               ; preds = %for.end.thread.i230, %for.end.i229._crit_edge
  %57 = phi i32 [ 0, %for.end.thread.i230 ], [ %sub14.i228, %for.end.i229._crit_edge ]
  %arrayidx16.i231 = getelementptr i8, ptr %buf, i32 %57
  %sub17.i232 = sub i32 64, %57
  %call18.i233 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx16.i231, i32 noundef %sub17.i232, ptr noundef nonnull @.str.24) #12
  br label %sprint_target_ids.exit236

sprint_target_ids.exit236:                        ; preds = %56, %if.end.i226.sprint_target_ids.exit236_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion51) #12
  %58 = ptrtoint ptr %__assertion51 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %test, ptr %__assertion51, align 4
  %type54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion51, i32 0, i32 1
  %59 = ptrtoint ptr %type54 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %type54, align 4
  %line55 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion51, i32 0, i32 2
  %60 = ptrtoint ptr %line55 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 99, ptr %line55, align 4
  %file56 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion51, i32 0, i32 3
  %61 = ptrtoint ptr %file56 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.36, ptr %file56, align 4
  %message57 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion51, i32 0, i32 4
  %62 = ptrtoint ptr %message57 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %message57, align 4
  %va59 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion51, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %va59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %va59, align 4
  %format60 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion51, i32 0, i32 5
  %64 = ptrtoint ptr %format60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @kunit_binary_str_assert_format, ptr %format60, align 4
  %operation61 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion51, i32 0, i32 1
  %65 = ptrtoint ptr %operation61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.37, ptr %operation61, align 4
  %left_text62 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion51, i32 0, i32 2
  %66 = ptrtoint ptr %left_text62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.54, ptr %left_text62, align 4
  %left_value63 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion51, i32 0, i32 3
  %67 = ptrtoint ptr %left_value63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %buf, ptr %left_value63, align 4
  %right_text64 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion51, i32 0, i32 4
  %68 = ptrtoint ptr %right_text64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.58, ptr %right_text64, align 4
  %right_value65 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion51, i32 0, i32 5
  %69 = ptrtoint ptr %right_value65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.57, ptr %right_value65, align 4
  %bcmp168 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buf, ptr noundef nonnull dereferenceable(5) @.str.57, i32 5) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp168)
  %cmp68 = icmp eq i32 %bcmp168, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion51, i1 noundef zeroext %cmp68, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion51) #12
  %70 = ptrtoint ptr %.compoundliteral73 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %.compoundliteral73, align 4
  %call76 = call i32 @damon_set_targets(ptr noundef %call.i, ptr noundef nonnull %.compoundliteral73, i32 noundef 1) #12
  %71 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn40.i238 = load ptr, ptr %adaptive_targets.i, align 4
  %cmp.not41.i239 = icmp eq ptr %.pn40.i238, %adaptive_targets.i
  br i1 %cmp.not41.i239, label %sprint_target_ids.exit236.for.end.thread.i262_crit_edge, label %sprint_target_ids.exit236.for.body.i250_crit_edge

sprint_target_ids.exit236.for.body.i250_crit_edge: ; preds = %sprint_target_ids.exit236
  br label %for.body.i250

sprint_target_ids.exit236.for.end.thread.i262_crit_edge: ; preds = %sprint_target_ids.exit236
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i262

for.cond.i245:                                    ; preds = %if.end.i258
  %add.i242 = add i32 %call4.i256, %written.042.i247
  %72 = ptrtoint ptr %.pn43.i246 to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn.i243 = load ptr, ptr %.pn43.i246, align 4
  %cmp.not.i244 = icmp eq ptr %.pn.i243, %adaptive_targets.i
  br i1 %cmp.not.i244, label %for.end.i261, label %for.cond.i245.for.body.i250_crit_edge

for.cond.i245.for.body.i250_crit_edge:            ; preds = %for.cond.i245
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i250

for.body.i250:                                    ; preds = %for.cond.i245.for.body.i250_crit_edge, %sprint_target_ids.exit236.for.body.i250_crit_edge
  %.pn43.i246 = phi ptr [ %.pn.i243, %for.cond.i245.for.body.i250_crit_edge ], [ %.pn40.i238, %sprint_target_ids.exit236.for.body.i250_crit_edge ]
  %written.042.i247 = phi i32 [ %add.i242, %for.cond.i245.for.body.i250_crit_edge ], [ 0, %sprint_target_ids.exit236.for.body.i250_crit_edge ]
  %t.0.i248 = getelementptr i8, ptr %.pn43.i246, i32 -16
  %73 = ptrtoint ptr %t.0.i248 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %t.0.i248, align 4
  %75 = ptrtoint ptr %target_valid to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %target_valid, align 4
  %cmp.i.i249 = icmp eq ptr %76, @damon_va_target_valid
  br i1 %cmp.i.i249, label %if.then.i252, label %for.body.i250.if.end.i258_crit_edge

for.body.i250.if.end.i258_crit_edge:              ; preds = %for.body.i250
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i258

if.then.i252:                                     ; preds = %for.body.i250
  call void @__sanitizer_cov_trace_pc() #14
  %77 = inttoptr i32 %74 to ptr
  %call3.i251 = call i32 @pid_vnr(ptr noundef %77) #12
  br label %if.end.i258

if.end.i258:                                      ; preds = %if.then.i252, %for.body.i250.if.end.i258_crit_edge
  %id.0.i253 = phi i32 [ %call3.i251, %if.then.i252 ], [ %74, %for.body.i250.if.end.i258_crit_edge ]
  %arrayidx.i254 = getelementptr i8, ptr %buf, i32 %written.042.i247
  %sub.i255 = sub i32 64, %written.042.i247
  %call4.i256 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.i254, i32 noundef %sub.i255, ptr noundef nonnull @.str.23, i32 noundef %id.0.i253) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i256)
  %tobool.not.i257 = icmp eq i32 %call4.i256, 0
  br i1 %tobool.not.i257, label %if.end.i258.sprint_target_ids.exit268_crit_edge, label %for.cond.i245

if.end.i258.sprint_target_ids.exit268_crit_edge:  ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #14
  br label %sprint_target_ids.exit268

for.end.i261:                                     ; preds = %for.cond.i245
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i242)
  %tobool12.not.i259 = icmp eq i32 %add.i242, 0
  %sub14.i260 = add i32 %add.i242, -1
  br i1 %tobool12.not.i259, label %for.end.i261.for.end.thread.i262_crit_edge, label %for.end.i261._crit_edge

for.end.i261._crit_edge:                          ; preds = %for.end.i261
  call void @__sanitizer_cov_trace_pc() #14
  br label %78

for.end.i261.for.end.thread.i262_crit_edge:       ; preds = %for.end.i261
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i262

for.end.thread.i262:                              ; preds = %for.end.i261.for.end.thread.i262_crit_edge, %sprint_target_ids.exit236.for.end.thread.i262_crit_edge
  br label %78

78:                                               ; preds = %for.end.thread.i262, %for.end.i261._crit_edge
  %79 = phi i32 [ 0, %for.end.thread.i262 ], [ %sub14.i260, %for.end.i261._crit_edge ]
  %arrayidx16.i263 = getelementptr i8, ptr %buf, i32 %79
  %sub17.i264 = sub i32 64, %79
  %call18.i265 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx16.i263, i32 noundef %sub17.i264, ptr noundef nonnull @.str.24) #12
  br label %sprint_target_ids.exit268

sprint_target_ids.exit268:                        ; preds = %78, %if.end.i258.sprint_target_ids.exit268_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion84) #12
  %80 = ptrtoint ptr %__assertion84 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %test, ptr %__assertion84, align 4
  %type87 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion84, i32 0, i32 1
  %81 = ptrtoint ptr %type87 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %type87, align 4
  %line88 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion84, i32 0, i32 2
  %82 = ptrtoint ptr %line88 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 103, ptr %line88, align 4
  %file89 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion84, i32 0, i32 3
  %83 = ptrtoint ptr %file89 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @.str.36, ptr %file89, align 4
  %message90 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion84, i32 0, i32 4
  %84 = ptrtoint ptr %message90 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %message90, align 4
  %va92 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion84, i32 0, i32 4, i32 1
  %85 = ptrtoint ptr %va92 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %va92, align 4
  %format93 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion84, i32 0, i32 5
  %86 = ptrtoint ptr %format93 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @kunit_binary_str_assert_format, ptr %format93, align 4
  %operation94 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion84, i32 0, i32 1
  %87 = ptrtoint ptr %operation94 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.37, ptr %operation94, align 4
  %left_text95 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion84, i32 0, i32 2
  %88 = ptrtoint ptr %left_text95 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.54, ptr %left_text95, align 4
  %left_value96 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion84, i32 0, i32 3
  %89 = ptrtoint ptr %left_value96 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %buf, ptr %left_value96, align 4
  %right_text97 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion84, i32 0, i32 4
  %90 = ptrtoint ptr %right_text97 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.60, ptr %right_text97, align 4
  %right_value98 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion84, i32 0, i32 5
  %91 = ptrtoint ptr %right_value98 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @.str.59, ptr %right_value98, align 4
  %bcmp169 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buf, ptr noundef nonnull dereferenceable(3) @.str.59, i32 3) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp169)
  %cmp101 = icmp eq i32 %bcmp169, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion84, i1 noundef zeroext %cmp101, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion84) #12
  %call106 = call i32 @damon_set_targets(ptr noundef %call.i, ptr noundef null, i32 noundef 0) #12
  %92 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pn40.i270 = load ptr, ptr %adaptive_targets.i, align 4
  %cmp.not41.i271 = icmp eq ptr %.pn40.i270, %adaptive_targets.i
  br i1 %cmp.not41.i271, label %sprint_target_ids.exit268.for.end.thread.i294_crit_edge, label %sprint_target_ids.exit268.for.body.i282_crit_edge

sprint_target_ids.exit268.for.body.i282_crit_edge: ; preds = %sprint_target_ids.exit268
  br label %for.body.i282

sprint_target_ids.exit268.for.end.thread.i294_crit_edge: ; preds = %sprint_target_ids.exit268
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i294

for.cond.i277:                                    ; preds = %if.end.i290
  %add.i274 = add i32 %call4.i288, %written.042.i279
  %93 = ptrtoint ptr %.pn43.i278 to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pn.i275 = load ptr, ptr %.pn43.i278, align 4
  %cmp.not.i276 = icmp eq ptr %.pn.i275, %adaptive_targets.i
  br i1 %cmp.not.i276, label %for.end.i293, label %for.cond.i277.for.body.i282_crit_edge

for.cond.i277.for.body.i282_crit_edge:            ; preds = %for.cond.i277
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i282

for.body.i282:                                    ; preds = %for.cond.i277.for.body.i282_crit_edge, %sprint_target_ids.exit268.for.body.i282_crit_edge
  %.pn43.i278 = phi ptr [ %.pn.i275, %for.cond.i277.for.body.i282_crit_edge ], [ %.pn40.i270, %sprint_target_ids.exit268.for.body.i282_crit_edge ]
  %written.042.i279 = phi i32 [ %add.i274, %for.cond.i277.for.body.i282_crit_edge ], [ 0, %sprint_target_ids.exit268.for.body.i282_crit_edge ]
  %t.0.i280 = getelementptr i8, ptr %.pn43.i278, i32 -16
  %94 = ptrtoint ptr %t.0.i280 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %t.0.i280, align 4
  %96 = ptrtoint ptr %target_valid to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %target_valid, align 4
  %cmp.i.i281 = icmp eq ptr %97, @damon_va_target_valid
  br i1 %cmp.i.i281, label %if.then.i284, label %for.body.i282.if.end.i290_crit_edge

for.body.i282.if.end.i290_crit_edge:              ; preds = %for.body.i282
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i290

if.then.i284:                                     ; preds = %for.body.i282
  call void @__sanitizer_cov_trace_pc() #14
  %98 = inttoptr i32 %95 to ptr
  %call3.i283 = call i32 @pid_vnr(ptr noundef %98) #12
  br label %if.end.i290

if.end.i290:                                      ; preds = %if.then.i284, %for.body.i282.if.end.i290_crit_edge
  %id.0.i285 = phi i32 [ %call3.i283, %if.then.i284 ], [ %95, %for.body.i282.if.end.i290_crit_edge ]
  %arrayidx.i286 = getelementptr i8, ptr %buf, i32 %written.042.i279
  %sub.i287 = sub i32 64, %written.042.i279
  %call4.i288 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.i286, i32 noundef %sub.i287, ptr noundef nonnull @.str.23, i32 noundef %id.0.i285) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i288)
  %tobool.not.i289 = icmp eq i32 %call4.i288, 0
  br i1 %tobool.not.i289, label %if.end.i290.sprint_target_ids.exit300_crit_edge, label %for.cond.i277

if.end.i290.sprint_target_ids.exit300_crit_edge:  ; preds = %if.end.i290
  call void @__sanitizer_cov_trace_pc() #14
  br label %sprint_target_ids.exit300

for.end.i293:                                     ; preds = %for.cond.i277
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i274)
  %tobool12.not.i291 = icmp eq i32 %add.i274, 0
  %sub14.i292 = add i32 %add.i274, -1
  br i1 %tobool12.not.i291, label %for.end.i293.for.end.thread.i294_crit_edge, label %for.end.i293._crit_edge

for.end.i293._crit_edge:                          ; preds = %for.end.i293
  call void @__sanitizer_cov_trace_pc() #14
  br label %99

for.end.i293.for.end.thread.i294_crit_edge:       ; preds = %for.end.i293
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i294

for.end.thread.i294:                              ; preds = %for.end.i293.for.end.thread.i294_crit_edge, %sprint_target_ids.exit268.for.end.thread.i294_crit_edge
  br label %99

99:                                               ; preds = %for.end.thread.i294, %for.end.i293._crit_edge
  %100 = phi i32 [ 0, %for.end.thread.i294 ], [ %sub14.i292, %for.end.i293._crit_edge ]
  %arrayidx16.i295 = getelementptr i8, ptr %buf, i32 %100
  %sub17.i296 = sub i32 64, %100
  %call18.i297 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx16.i295, i32 noundef %sub17.i296, ptr noundef nonnull @.str.24) #12
  br label %sprint_target_ids.exit300

sprint_target_ids.exit300:                        ; preds = %99, %if.end.i290.sprint_target_ids.exit300_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion114) #12
  %101 = ptrtoint ptr %__assertion114 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %test, ptr %__assertion114, align 4
  %type117 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion114, i32 0, i32 1
  %102 = ptrtoint ptr %type117 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %type117, align 4
  %line118 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion114, i32 0, i32 2
  %103 = ptrtoint ptr %line118 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 107, ptr %line118, align 4
  %file119 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion114, i32 0, i32 3
  %104 = ptrtoint ptr %file119 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @.str.36, ptr %file119, align 4
  %message120 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion114, i32 0, i32 4
  %105 = ptrtoint ptr %message120 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %message120, align 4
  %va122 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion114, i32 0, i32 4, i32 1
  %106 = ptrtoint ptr %va122 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %va122, align 4
  %format123 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion114, i32 0, i32 5
  %107 = ptrtoint ptr %format123 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @kunit_binary_str_assert_format, ptr %format123, align 4
  %operation124 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion114, i32 0, i32 1
  %108 = ptrtoint ptr %operation124 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.37, ptr %operation124, align 4
  %left_text125 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion114, i32 0, i32 2
  %109 = ptrtoint ptr %left_text125 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @.str.54, ptr %left_text125, align 4
  %left_value126 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion114, i32 0, i32 3
  %110 = ptrtoint ptr %left_value126 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %buf, ptr %left_value126, align 4
  %right_text127 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion114, i32 0, i32 4
  %111 = ptrtoint ptr %right_text127 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @.str.56, ptr %right_text127, align 4
  %right_value128 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion114, i32 0, i32 5
  %112 = ptrtoint ptr %right_value128 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @.str.24, ptr %right_value128, align 4
  %bcmp170 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %buf, ptr noundef nonnull dereferenceable(2) @.str.24, i32 2) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp170)
  %cmp131 = icmp eq i32 %bcmp170, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion114, i1 noundef zeroext %cmp131, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion114) #12
  call void @damon_destroy_ctx(ptr noundef %call.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ids) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @damon_dbgfs_test_set_init_regions(ptr noundef %test) #6 align 64 {
entry:
  %ids = alloca [3 x i32], align 4
  %buf = alloca [256 x i8], align 1
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion21 = alloca %struct.kunit_binary_str_assert, align 4
  %__assertion59 = alloca %struct.kunit_binary_assert, align 8
  %__assertion91 = alloca %struct.kunit_binary_str_assert, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @damon_new_ctx() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ids) #12
  %0 = call ptr @memcpy(ptr %ids, ptr @__const.damon_dbgfs_test_set_init_regions.ids, i32 12)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #12
  %1 = call ptr @memset(ptr %buf, i32 255, i32 256)
  %call1 = call i32 @damon_set_targets(ptr noundef %call, ptr noundef nonnull %ids, i32 noundef 3) #12
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %adaptive_targets.i = getelementptr inbounds %struct.damon_ctx, ptr %call, i32 0, i32 11
  %type24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion21, i32 0, i32 1
  %line25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion21, i32 0, i32 2
  %file26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion21, i32 0, i32 3
  %message27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion21, i32 0, i32 4
  %va29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion21, i32 0, i32 4, i32 1
  %format30 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion21, i32 0, i32 5
  %operation31 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion21, i32 0, i32 1
  %left_text32 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion21, i32 0, i32 2
  %left_value33 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion21, i32 0, i32 3
  %right_text34 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion21, i32 0, i32 4
  %right_value35 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion21, i32 0, i32 5
  %2 = getelementptr inbounds i8, ptr %__assertion, i32 32
  br label %for.body

for.cond44.preheader:                             ; preds = %sprint_init_regions.exit
  %type62 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 1
  %line63 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 2
  %file64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 3
  %message65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 4
  %va67 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 4, i32 1
  %format68 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion59, i32 0, i32 5
  %operation69 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion59, i32 0, i32 1
  %left_text70 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion59, i32 0, i32 2
  %left_value71 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion59, i32 0, i32 3
  %right_text73 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion59, i32 0, i32 4
  %right_value74 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion59, i32 0, i32 5
  %type94 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion91, i32 0, i32 1
  %line95 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion91, i32 0, i32 2
  %file96 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion91, i32 0, i32 3
  %message97 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion91, i32 0, i32 4
  %va99 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion91, i32 0, i32 4, i32 1
  %format100 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion91, i32 0, i32 5
  %operation101 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion91, i32 0, i32 1
  %left_text102 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion91, i32 0, i32 2
  %left_value103 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion91, i32 0, i32 3
  %right_text104 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion91, i32 0, i32 4
  %right_value105 = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion91, i32 0, i32 5
  %3 = getelementptr inbounds i8, ptr %__assertion59, i32 32
  br label %for.body47

for.body:                                         ; preds = %sprint_init_regions.exit.for.body_crit_edge, %entry
  %i.0181 = phi i32 [ 0, %entry ], [ %inc, %sprint_init_regions.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr @__const.damon_dbgfs_test_set_init_regions.valid_inputs, i32 0, i32 %i.0181
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [4 x ptr], ptr @__const.damon_dbgfs_test_set_init_regions.valid_expects, i32 0, i32 %i.0181
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  %call3 = call i32 @strnlen(ptr noundef %5, i32 noundef 256) #20
  %call4 = call fastcc i32 @set_init_regions(ptr noundef %call, ptr noundef %5, i32 noundef %call3)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #12
  %8 = call ptr @memset(ptr %2, i32 255, i32 24)
  %9 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %test, ptr %__assertion, align 8
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %type, align 4
  %11 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 141, ptr %line, align 8
  %12 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.36, ptr %file, align 4
  %13 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %message, align 8
  %14 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %va, align 4
  %15 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %16 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.37, ptr %operation, align 4
  %17 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.69, ptr %left_text, align 8
  %conv = sext i32 %call4 to i64
  %18 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv, ptr %left_value, align 8
  %19 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.70, ptr %right_text, align 8
  %20 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp9 = icmp eq i32 %call4, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp9, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #12
  %21 = call ptr @memset(ptr %buf, i32 0, i32 256)
  %22 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn48.i = load ptr, ptr %adaptive_targets.i, align 4
  %cmp.not50.i = icmp eq ptr %.pn48.i, %adaptive_targets.i
  br i1 %cmp.not50.i, label %for.body.sprint_init_regions.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.sprint_init_regions.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sprint_init_regions.exit

for.cond.loopexit.i:                              ; preds = %for.cond6.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %written.1.lcssa.i = phi i32 [ %written.051.i, %for.body.i.for.cond.loopexit.i_crit_edge ], [ %add.i, %for.cond6.i.for.cond.loopexit.i_crit_edge ]
  %23 = ptrtoint ptr %.pn52.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i = load ptr, ptr %.pn52.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %adaptive_targets.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.sprint_init_regions.exit_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond.loopexit.i.sprint_init_regions.exit_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sprint_init_regions.exit

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %.pn52.i = phi ptr [ %.pn.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %.pn48.i, %for.body.for.body.i_crit_edge ]
  %written.051.i = phi i32 [ %written.1.lcssa.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %t.053.i = getelementptr i8, ptr %.pn52.i, i32 -16
  %regions_list.i = getelementptr i8, ptr %.pn52.i, i32 -8
  %24 = ptrtoint ptr %regions_list.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn4044.i = load ptr, ptr %regions_list.i, align 4
  %cmp9.not45.i = icmp eq ptr %.pn4044.i, %regions_list.i
  br i1 %cmp9.not45.i, label %for.body.i.for.cond.loopexit.i_crit_edge, label %for.body.i.for.body11.i_crit_edge

for.body.i.for.body11.i_crit_edge:                ; preds = %for.body.i
  br label %for.body11.i

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit.i

for.cond6.i:                                      ; preds = %for.body11.i
  %add.i = add i32 %call.i, %written.146.i
  %25 = ptrtoint ptr %.pn4047.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn40.i = load ptr, ptr %.pn4047.i, align 4
  %cmp9.not.i = icmp eq ptr %.pn40.i, %regions_list.i
  br i1 %cmp9.not.i, label %for.cond6.i.for.cond.loopexit.i_crit_edge, label %for.cond6.i.for.body11.i_crit_edge

for.cond6.i.for.body11.i_crit_edge:               ; preds = %for.cond6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.i

for.cond6.i.for.cond.loopexit.i_crit_edge:        ; preds = %for.cond6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit.i

for.body11.i:                                     ; preds = %for.cond6.i.for.body11.i_crit_edge, %for.body.i.for.body11.i_crit_edge
  %.pn4047.i = phi ptr [ %.pn40.i, %for.cond6.i.for.body11.i_crit_edge ], [ %.pn4044.i, %for.body.i.for.body11.i_crit_edge ]
  %written.146.i = phi i32 [ %add.i, %for.cond6.i.for.body11.i_crit_edge ], [ %written.051.i, %for.body.i.for.body11.i_crit_edge ]
  %r.0.i = getelementptr i8, ptr %.pn4047.i, i32 -16
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %written.146.i
  %sub.i = sub i32 256, %written.146.i
  %26 = ptrtoint ptr %t.053.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %t.053.i, align 4
  %28 = ptrtoint ptr %r.0.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %r.0.i, align 4
  %end.i = getelementptr i8, ptr %.pn4047.i, i32 -12
  %30 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end.i, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.i, i32 noundef %sub.i, ptr noundef nonnull @.str.28, i32 noundef %27, i32 noundef %29, i32 noundef %31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body11.i.sprint_init_regions.exit_crit_edge, label %for.cond6.i

for.body11.i.sprint_init_regions.exit_crit_edge:  ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sprint_init_regions.exit

sprint_init_regions.exit:                         ; preds = %for.body11.i.sprint_init_regions.exit_crit_edge, %for.cond.loopexit.i.sprint_init_regions.exit_crit_edge, %for.body.sprint_init_regions.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion21) #12
  %32 = ptrtoint ptr %__assertion21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %test, ptr %__assertion21, align 4
  %33 = ptrtoint ptr %type24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %type24, align 4
  %34 = ptrtoint ptr %line25 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 146, ptr %line25, align 4
  %35 = ptrtoint ptr %file26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.36, ptr %file26, align 4
  %36 = ptrtoint ptr %message27 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %message27, align 4
  %37 = ptrtoint ptr %va29 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %va29, align 4
  %38 = ptrtoint ptr %format30 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @kunit_binary_str_assert_format, ptr %format30, align 4
  %39 = ptrtoint ptr %operation31 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.37, ptr %operation31, align 4
  %40 = ptrtoint ptr %left_text32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.54, ptr %left_text32, align 4
  %41 = ptrtoint ptr %left_value33 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %buf, ptr %left_value33, align 4
  %42 = ptrtoint ptr %right_text34 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.71, ptr %right_text34, align 4
  %43 = ptrtoint ptr %right_value35 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %7, ptr %right_value35, align 4
  %call37 = call i32 @strcmp(ptr noundef nonnull %buf, ptr noundef %7) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp eq i32 %call37, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion21, i1 noundef zeroext %cmp38, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion21) #12
  %inc = add nuw nsw i32 %i.0181, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.cond44.preheader, label %sprint_init_regions.exit.for.body_crit_edge

sprint_init_regions.exit.for.body_crit_edge:      ; preds = %sprint_init_regions.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body47:                                       ; preds = %sprint_init_regions.exit178.for.body47_crit_edge, %for.cond44.preheader
  %i.1182 = phi i32 [ 0, %for.cond44.preheader ], [ %inc115, %sprint_init_regions.exit178.for.body47_crit_edge ]
  %arrayidx48 = getelementptr [3 x ptr], ptr @__const.damon_dbgfs_test_set_init_regions.invalid_inputs, i32 0, i32 %i.1182
  %44 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx48, align 4
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %45) #17
  %call53 = call i32 @strnlen(ptr noundef %45, i32 noundef 256) #20
  %call54 = call fastcc i32 @set_init_regions(ptr noundef %call, ptr noundef %45, i32 noundef %call53)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion59) #12
  %46 = call ptr @memset(ptr %3, i32 255, i32 24)
  %47 = ptrtoint ptr %__assertion59 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %test, ptr %__assertion59, align 8
  %48 = ptrtoint ptr %type62 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %type62, align 4
  %49 = ptrtoint ptr %line63 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 153, ptr %line63, align 8
  %50 = ptrtoint ptr %file64 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.36, ptr %file64, align 4
  %51 = ptrtoint ptr %message65 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %message65, align 8
  %52 = ptrtoint ptr %va67 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %va67, align 4
  %53 = ptrtoint ptr %format68 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @kunit_binary_assert_format, ptr %format68, align 8
  %54 = ptrtoint ptr %operation69 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.37, ptr %operation69, align 4
  %55 = ptrtoint ptr %left_text70 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.69, ptr %left_text70, align 8
  %conv72 = sext i32 %call54 to i64
  %56 = ptrtoint ptr %left_value71 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv72, ptr %left_value71, align 8
  %57 = ptrtoint ptr %right_text73 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.73, ptr %right_text73, align 8
  %58 = ptrtoint ptr %right_value74 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 -22, ptr %right_value74, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call54)
  %cmp77 = icmp eq i32 %call54, -22
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion59, i1 noundef zeroext %cmp77, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion59) #12
  %59 = call ptr @memset(ptr %buf, i32 0, i32 256)
  %60 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn48.i151 = load ptr, ptr %adaptive_targets.i, align 4
  %cmp.not50.i152 = icmp eq ptr %.pn48.i151, %adaptive_targets.i
  br i1 %cmp.not50.i152, label %for.body47.sprint_init_regions.exit178_crit_edge, label %for.body47.for.body.i163_crit_edge

for.body47.for.body.i163_crit_edge:               ; preds = %for.body47
  br label %for.body.i163

for.body47.sprint_init_regions.exit178_crit_edge: ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #14
  br label %sprint_init_regions.exit178

for.cond.loopexit.i156:                           ; preds = %for.cond6.i167.for.cond.loopexit.i156_crit_edge, %for.body.i163.for.cond.loopexit.i156_crit_edge
  %written.1.lcssa.i153 = phi i32 [ %written.051.i158, %for.body.i163.for.cond.loopexit.i156_crit_edge ], [ %add.i164, %for.cond6.i167.for.cond.loopexit.i156_crit_edge ]
  %61 = ptrtoint ptr %.pn52.i157 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn.i154 = load ptr, ptr %.pn52.i157, align 4
  %cmp.not.i155 = icmp eq ptr %.pn.i154, %adaptive_targets.i
  br i1 %cmp.not.i155, label %for.cond.loopexit.i156.sprint_init_regions.exit178_crit_edge, label %for.cond.loopexit.i156.for.body.i163_crit_edge

for.cond.loopexit.i156.for.body.i163_crit_edge:   ; preds = %for.cond.loopexit.i156
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i163

for.cond.loopexit.i156.sprint_init_regions.exit178_crit_edge: ; preds = %for.cond.loopexit.i156
  call void @__sanitizer_cov_trace_pc() #14
  br label %sprint_init_regions.exit178

for.body.i163:                                    ; preds = %for.cond.loopexit.i156.for.body.i163_crit_edge, %for.body47.for.body.i163_crit_edge
  %.pn52.i157 = phi ptr [ %.pn.i154, %for.cond.loopexit.i156.for.body.i163_crit_edge ], [ %.pn48.i151, %for.body47.for.body.i163_crit_edge ]
  %written.051.i158 = phi i32 [ %written.1.lcssa.i153, %for.cond.loopexit.i156.for.body.i163_crit_edge ], [ 0, %for.body47.for.body.i163_crit_edge ]
  %t.053.i159 = getelementptr i8, ptr %.pn52.i157, i32 -16
  %regions_list.i160 = getelementptr i8, ptr %.pn52.i157, i32 -8
  %62 = ptrtoint ptr %regions_list.i160 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn4044.i161 = load ptr, ptr %regions_list.i160, align 4
  %cmp9.not45.i162 = icmp eq ptr %.pn4044.i161, %regions_list.i160
  br i1 %cmp9.not45.i162, label %for.body.i163.for.cond.loopexit.i156_crit_edge, label %for.body.i163.for.body11.i176_crit_edge

for.body.i163.for.body11.i176_crit_edge:          ; preds = %for.body.i163
  br label %for.body11.i176

for.body.i163.for.cond.loopexit.i156_crit_edge:   ; preds = %for.body.i163
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit.i156

for.cond6.i167:                                   ; preds = %for.body11.i176
  %add.i164 = add i32 %call.i174, %written.146.i169
  %63 = ptrtoint ptr %.pn4047.i168 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn40.i165 = load ptr, ptr %.pn4047.i168, align 4
  %cmp9.not.i166 = icmp eq ptr %.pn40.i165, %regions_list.i160
  br i1 %cmp9.not.i166, label %for.cond6.i167.for.cond.loopexit.i156_crit_edge, label %for.cond6.i167.for.body11.i176_crit_edge

for.cond6.i167.for.body11.i176_crit_edge:         ; preds = %for.cond6.i167
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.i176

for.cond6.i167.for.cond.loopexit.i156_crit_edge:  ; preds = %for.cond6.i167
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit.i156

for.body11.i176:                                  ; preds = %for.cond6.i167.for.body11.i176_crit_edge, %for.body.i163.for.body11.i176_crit_edge
  %.pn4047.i168 = phi ptr [ %.pn40.i165, %for.cond6.i167.for.body11.i176_crit_edge ], [ %.pn4044.i161, %for.body.i163.for.body11.i176_crit_edge ]
  %written.146.i169 = phi i32 [ %add.i164, %for.cond6.i167.for.body11.i176_crit_edge ], [ %written.051.i158, %for.body.i163.for.body11.i176_crit_edge ]
  %r.0.i170 = getelementptr i8, ptr %.pn4047.i168, i32 -16
  %arrayidx.i171 = getelementptr i8, ptr %buf, i32 %written.146.i169
  %sub.i172 = sub i32 256, %written.146.i169
  %64 = ptrtoint ptr %t.053.i159 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %t.053.i159, align 4
  %66 = ptrtoint ptr %r.0.i170 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %r.0.i170, align 4
  %end.i173 = getelementptr i8, ptr %.pn4047.i168, i32 -12
  %68 = ptrtoint ptr %end.i173 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %end.i173, align 4
  %call.i174 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.i171, i32 noundef %sub.i172, ptr noundef nonnull @.str.28, i32 noundef %65, i32 noundef %67, i32 noundef %69) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %tobool.not.i175 = icmp eq i32 %call.i174, 0
  br i1 %tobool.not.i175, label %for.body11.i176.sprint_init_regions.exit178_crit_edge, label %for.cond6.i167

for.body11.i176.sprint_init_regions.exit178_crit_edge: ; preds = %for.body11.i176
  call void @__sanitizer_cov_trace_pc() #14
  br label %sprint_init_regions.exit178

sprint_init_regions.exit178:                      ; preds = %for.body11.i176.sprint_init_regions.exit178_crit_edge, %for.cond.loopexit.i156.sprint_init_regions.exit178_crit_edge, %for.body47.sprint_init_regions.exit178_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion91) #12
  %70 = ptrtoint ptr %__assertion91 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %test, ptr %__assertion91, align 4
  %71 = ptrtoint ptr %type94 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %type94, align 4
  %72 = ptrtoint ptr %line95 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 158, ptr %line95, align 4
  %73 = ptrtoint ptr %file96 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.36, ptr %file96, align 4
  %74 = ptrtoint ptr %message97 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %message97, align 4
  %75 = ptrtoint ptr %va99 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %va99, align 4
  %76 = ptrtoint ptr %format100 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @kunit_binary_str_assert_format, ptr %format100, align 4
  %77 = ptrtoint ptr %operation101 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.37, ptr %operation101, align 4
  %78 = ptrtoint ptr %left_text102 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.54, ptr %left_text102, align 4
  %79 = ptrtoint ptr %left_value103 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %buf, ptr %left_value103, align 4
  %80 = ptrtoint ptr %right_text104 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.74, ptr %right_text104, align 4
  %81 = ptrtoint ptr %right_value105 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str.52, ptr %right_value105, align 4
  %82 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %82)
  %strcmpload = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload)
  %cmp108 = icmp eq i8 %strcmpload, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion91, i1 noundef zeroext %cmp108, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion91) #12
  %inc115 = add nuw nsw i32 %i.1182, 1
  %exitcond185.not = icmp eq i32 %inc115, 3
  br i1 %exitcond185.not, label %for.end116, label %sprint_init_regions.exit178.for.body47_crit_edge

sprint_init_regions.exit178.for.body47_crit_edge: ; preds = %sprint_init_regions.exit178
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body47

for.end116:                                       ; preds = %sprint_init_regions.exit178
  call void @__sanitizer_cov_trace_pc() #14
  %call117 = call i32 @damon_set_targets(ptr noundef %call, ptr noundef null, i32 noundef 0) #12
  call void @damon_destroy_ctx(ptr noundef %call) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ids) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_str_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !93, !95, !97, !99, !101, !103, !105, !106, !107, !108, !110, !111, !113, !115, !117, !119, !121, !123, !124, !126, !128, !130, !132, !134, !135, !136, !138, !140, !141, !143, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !163, !165, !167, !168, !169, !171}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @__initcall__kmod_dbgfs__226_988_damon_dbgfs_init6, !1, !"__initcall__kmod_dbgfs__226_988_damon_dbgfs_init6", i1 false, i1 false}
!1 = !{!"../mm/damon/dbgfs.c", i32 988, i32 1}
!2 = !{ptr @__UNIQUE_ID_suites229, !3, !"__UNIQUE_ID_suites229", i1 false, i1 false}
!3 = !{!"../mm/damon/dbgfs-test.h", i32 176, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../mm/damon/dbgfs.c", i32 980, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @damon_dbgfs_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @damon_dbgfs_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../mm/damon/dbgfs.c", i32 21, i32 8}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @damon_dbgfs_lock, !11, !"damon_dbgfs_lock", i1 false, i1 false}
!14 = !{ptr @dbgfs_ctxs, !15, !"dbgfs_ctxs", i1 false, i1 false}
!15 = !{!"../mm/damon/dbgfs.c", i32 18, i32 27}
!16 = !{ptr @dbgfs_nr_ctxs, !17, !"dbgfs_nr_ctxs", i1 false, i1 false}
!17 = !{!"../mm/damon/dbgfs.c", i32 19, i32 12}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../mm/damon/dbgfs.c", i32 934, i32 37}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../mm/damon/dbgfs.c", i32 934, i32 52}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../mm/damon/dbgfs.c", i32 935, i32 3}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../mm/damon/dbgfs.c", i32 940, i32 34}
!26 = !{ptr @mk_contexts_fops, !27, !"mk_contexts_fops", i1 false, i1 false}
!27 = !{!"../mm/damon/dbgfs.c", i32 918, i32 37}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../mm/damon/dbgfs.c", i32 758, i32 19}
!30 = !{ptr @rm_contexts_fops, !31, !"rm_contexts_fops", i1 false, i1 false}
!31 = !{!"../mm/damon/dbgfs.c", i32 922, i32 37}
!32 = !{ptr @monitor_on_fops, !33, !"monitor_on_fops", i1 false, i1 false}
!33 = !{!"../mm/damon/dbgfs.c", i32 926, i32 37}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../mm/damon/dbgfs.c", i32 872, i32 50}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../mm/damon/dbgfs.c", i32 872, i32 59}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../mm/damon/dbgfs.c", i32 894, i32 21}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../mm/damon/dbgfs.c", i32 905, i32 28}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../mm/damon/dbgfs.c", i32 649, i32 37}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../mm/damon/dbgfs.c", i32 649, i32 46}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../mm/damon/dbgfs.c", i32 649, i32 57}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../mm/damon/dbgfs.c", i32 650, i32 3}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../mm/damon/dbgfs.c", i32 650, i32 19}
!52 = !{ptr @attrs_fops, !53, !"attrs_fops", i1 false, i1 false}
!53 = !{!"../mm/damon/dbgfs.c", i32 618, i32 37}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../mm/damon/dbgfs.c", i32 57, i32 42}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../mm/damon/dbgfs.c", i32 78, i32 19}
!58 = !{ptr @schemes_fops, !59, !"schemes_fops", i1 false, i1 false}
!59 = !{!"../mm/damon/dbgfs.c", i32 624, i32 37}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../mm/damon/dbgfs.c", i32 108, i32 5}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../mm/damon/dbgfs.c", i32 205, i32 5}
!64 = !{ptr @target_ids_fops, !65, !"target_ids_fops", i1 false, i1 false}
!65 = !{!"../mm/damon/dbgfs.c", i32 630, i32 37}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../mm/damon/dbgfs.c", i32 296, i32 48}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../mm/damon/dbgfs.c", i32 303, i32 53}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../mm/damon/dbgfs.c", i32 377, i32 21}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../mm/damon/dbgfs.c", i32 380, i32 26}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../mm/damon/dbgfs.c", i32 342, i32 27}
!76 = !{ptr @init_regions_fops, !77, !"init_regions_fops", i1 false, i1 false}
!77 = !{!"../mm/damon/dbgfs.c", i32 636, i32 37}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../mm/damon/dbgfs.c", i32 449, i32 6}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../mm/damon/dbgfs.c", i32 536, i32 27}
!82 = !{ptr @kdamond_pid_fops, !83, !"kdamond_pid_fops", i1 false, i1 false}
!83 = !{!"../mm/damon/dbgfs.c", i32 642, i32 37}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../mm/damon/dbgfs.c", i32 598, i32 32}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../mm/damon/dbgfs.c", i32 600, i32 32}
!88 = !{ptr @dbgfs_dirs, !89, !"dbgfs_dirs", i1 false, i1 false}
!89 = !{!"../mm/damon/dbgfs.c", i32 20, i32 24}
!90 = !{ptr @__UNIQUE_ID_array228, !3, !"__UNIQUE_ID_array228", i1 false, i1 false}
!91 = !{ptr @damon_test_suite, !92, !"damon_test_suite", i1 false, i1 false}
!92 = !{!"../mm/damon/dbgfs-test.h", i32 172, i32 27}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../mm/damon/dbgfs-test.h", i32 166, i32 2}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../mm/damon/dbgfs-test.h", i32 167, i32 2}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../mm/damon/dbgfs-test.h", i32 168, i32 2}
!99 = !{ptr @damon_test_cases, !100, !"damon_test_cases", i1 false, i1 false}
!100 = !{!"../mm/damon/dbgfs-test.h", i32 165, i32 26}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../mm/damon/dbgfs-test.h", i32 22, i32 13}
!103 = !{ptr @.str.36, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../mm/damon/dbgfs-test.h", i32 25, i32 2}
!105 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../mm/damon/dbgfs-test.h", i32 26, i32 2}
!110 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../mm/damon/dbgfs-test.h", i32 29, i32 13}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../mm/damon/dbgfs-test.h", i32 36, i32 13}
!115 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../mm/damon/dbgfs-test.h", i32 39, i32 2}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../mm/damon/dbgfs-test.h", i32 42, i32 13}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../mm/damon/dbgfs-test.h", i32 45, i32 2}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../mm/damon/dbgfs-test.h", i32 47, i32 3}
!123 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../mm/damon/dbgfs-test.h", i32 50, i32 13}
!126 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../mm/damon/dbgfs-test.h", i32 53, i32 2}
!128 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../mm/damon/dbgfs-test.h", i32 58, i32 13}
!130 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../mm/damon/dbgfs-test.h", i32 66, i32 13}
!132 = !{ptr @.str.53, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../mm/damon/dbgfs-test.h", i32 91, i32 2}
!134 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../mm/damon/dbgfs-test.h", i32 95, i32 2}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../mm/damon/dbgfs-test.h", i32 99, i32 2}
!140 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../mm/damon/dbgfs-test.h", i32 103, i32 2}
!143 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../mm/damon/dbgfs-test.h", i32 117, i32 33}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../mm/damon/dbgfs-test.h", i32 118, i32 3}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../mm/damon/dbgfs-test.h", i32 119, i32 3}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../mm/damon/dbgfs-test.h", i32 122, i32 34}
!152 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../mm/damon/dbgfs-test.h", i32 124, i32 3}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../mm/damon/dbgfs-test.h", i32 126, i32 35}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../mm/damon/dbgfs-test.h", i32 127, i32 3}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../mm/damon/dbgfs-test.h", i32 128, i32 3}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../mm/damon/dbgfs-test.h", i32 141, i32 3}
!162 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.71, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../mm/damon/dbgfs-test.h", i32 146, i32 3}
!165 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../mm/damon/dbgfs-test.h", i32 151, i32 3}
!167 = !{ptr @damon_dbgfs_test_set_init_regions._entry, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @damon_dbgfs_test_set_init_regions._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.73, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../mm/damon/dbgfs-test.h", i32 153, i32 3}
!171 = !{ptr @.str.74, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../mm/damon/dbgfs-test.h", i32 158, i32 3}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{!"branch_weights", i32 1, i32 2000}
!183 = !{!"auto-init"}
