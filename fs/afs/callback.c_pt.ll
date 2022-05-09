; ModuleID = '/llk/IR_all_yes/fs/afs/callback.c_pt.bc'
source_filename = "../fs/afs/callback.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.124 }
%struct.atomic_t = type { i32 }
%union.anon.124 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.afs_cell = type { %union.anon.133, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.hlist_node, i64, i64, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i16, i32, i32, %struct.rb_root, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.seqlock_t, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.rwlock_t, ptr, i8, ptr }
%union.anon.133 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.afs_server = type { %struct.callback_head, %union.anon.135, ptr, ptr, %struct.rb_node, ptr, ptr, %struct.list_head, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.work_struct, ptr, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, %struct.rwlock_t, i32, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.136 }
%struct.callback_head = type { ptr, ptr }
%union.anon.135 = type { %struct.afs_uuid }
%struct.afs_uuid = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.136 = type { i32, i32, i16, i8 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.116, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.116 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.afs_vnode = type { %struct.inode, ptr, %struct.afs_fid, %struct.afs_file_status, i64, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, ptr, i64, i16, %struct.work_struct, %struct.list_head, ptr, %struct.atomic_t, i32, i32, i32, i32, %struct.seqlock_t, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.128, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.129, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.130, ptr, %struct.address_space, %struct.list_head, %union.anon.131, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.128 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.129 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.130 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.131 = type { ptr }
%struct.afs_fid = type { i64, i64, i32, i32 }
%struct.afs_file_status = type { i64, i64, %struct.timespec64, %struct.timespec64, i64, i64, i64, i32, i32, i16, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.afs_volume = type { %union.anon.132, %struct.atomic_t, i64, ptr, %struct.rb_node, %struct.hlist_node, ptr, i32, ptr, ptr, %struct.rwlock_t, i32, i32, %struct.rwlock_t, i8, i8, i8, [65 x i8] }
%union.anon.132 = type { i64 }
%struct.afs_callback_break = type { %struct.afs_fid }

@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@afs_init_callback_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/afs/callback.c\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@__afs_break_callback._entry = internal constant %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 76, ptr null, ptr null }, align 1
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__afs_break_callback\00", [43 x i8] zeroinitializer }, align 32
@__afs_break_callback._entry_ptr = internal global ptr @__afs_break_callback._entry, section ".printk_index", align 4
@afs_break_callbacks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s] ==> %s(%p,%zu,)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_break_callbacks\00", [44 x i8] zeroinitializer }, align 32
@afs_break_callbacks._entry_ptr = internal global ptr @afs_break_callbacks._entry, section ".printk_index", align 4
@afs_break_callbacks._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\013\0A\00", [28 x i8] zeroinitializer }, align 32
@afs_break_callbacks._entry_ptr.8 = internal global ptr @afs_break_callbacks._entry.6, section ".printk_index", align 4
@afs_break_callbacks._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013AFS: Assertion failed\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_break_callbacks._entry_ptr.11 = internal global ptr @afs_break_callbacks._entry.9, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_afs_cb_break = external dso_local global %struct.tracepoint, align 4
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/afs.h\00", [37 x i8] zeroinitializer }, align 32
@trace_afs_cb_break.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@afs_break_some_callbacks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[%-6.6s]     - Fid { vl=%08llx n=%llu u=%u }\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"afs_break_some_callbacks\00", [39 x i8] zeroinitializer }, align 32
@afs_break_some_callbacks._entry_ptr = internal global ptr @afs_break_some_callbacks._entry, section ".printk_index", align 4
@afs_break_one_callback.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_afs_cb_miss = external dso_local global %struct.tracepoint, align 4
@trace_afs_cb_miss.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 67, i32 21 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 76, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 217, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 219, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 695, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 723, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [30 x i8] c"../include/trace/events/afs.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1388, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 108, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [21 x i8] c"../fs/afs/callback.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 198, i32 4 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__afs_break_callback._entry, ptr @__afs_break_callback._entry_ptr, ptr @afs_break_callbacks._entry, ptr @afs_break_callbacks._entry.6, ptr @afs_break_callbacks._entry.9, ptr @afs_break_callbacks._entry_ptr, ptr @afs_break_callbacks._entry_ptr.11, ptr @afs_break_callbacks._entry_ptr.8, ptr @afs_break_some_callbacks._entry, ptr @afs_break_some_callbacks._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_break_callbacks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_break_callbacks._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_break_callbacks._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_break_some_callbacks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_invalidate_mmap_work(ptr nocapture noundef readonly %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr i8, ptr %work, i32 -1428
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  tail call void @unmap_mapping_pages(ptr noundef %1, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_pages(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_server_init_callback_work(ptr noundef readonly %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -84
  %cell1 = getelementptr i8, ptr %work, i32 -56
  %0 = ptrtoint ptr %cell1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cell1, align 4
  %fs_open_mmaps_lock = getelementptr inbounds %struct.afs_cell, ptr %1, i32 0, i32 22
  tail call void @down_read(ptr noundef %fs_open_mmaps_lock) #7
  %fs_open_mmaps = getelementptr inbounds %struct.afs_cell, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %fs_open_mmaps to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn21 = load ptr, ptr %fs_open_mmaps, align 8
  %cmp.not22 = icmp eq ptr %.pn21, %fs_open_mmaps
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn23 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn21, %entry.for.body_crit_edge ]
  %cb_server = getelementptr i8, ptr %.pn23, i32 8
  %3 = ptrtoint ptr %cb_server to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cb_server, align 8
  %cmp6 = icmp eq ptr %4, %add.ptr
  br i1 %cmp6, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr i8, ptr %.pn23, i32 -192
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %5 = load ptr, ptr @system_unbound_wq, align 4
  %cb_work = getelementptr i8, ptr %.pn23, i32 -44
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %cb_work) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %6 = ptrtoint ptr %.pn23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn23, align 8
  %cmp.not = icmp eq ptr %.pn, %fs_open_mmaps
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @up_read(ptr noundef %fs_open_mmaps_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_init_callback_state(ptr noundef %server) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.do.body.preheader_crit_edge, label %land.lhs.true.i

entry.do.body.preheader_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.preheader

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.body.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.body.preheader_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.do.body.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.do.body.preheader_crit_edge:     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #7
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.then.i, %land.lhs.true2.i.do.body.preheader_crit_edge, %land.lhs.true.i.do.body.preheader_crit_edge, %entry.do.body.preheader_crit_edge
  br label %do.body

do.body:                                          ; preds = %do.end15.do.body_crit_edge, %do.body.preheader
  %server.addr.0 = phi ptr [ %15, %do.end15.do.body_crit_edge ], [ %server, %do.body.preheader ]
  %cb_s_break = getelementptr inbounds %struct.afs_server, ptr %server.addr.0, i32 0, i32 21
  %4 = ptrtoint ptr %cb_s_break to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cb_s_break, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cb_s_break, align 4
  %cell = getelementptr inbounds %struct.afs_server, ptr %server.addr.0, i32 0, i32 3
  %6 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cell, align 4
  %fs_s_break = getelementptr inbounds %struct.afs_cell, ptr %7, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fs_s_break, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %fs_s_break, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fs_s_break, ptr %fs_s_break, i32 1, ptr elementtype(i32) %fs_s_break) #7, !srcloc !56
  %9 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cell, align 4
  %fs_open_mmaps = getelementptr inbounds %struct.afs_cell, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %fs_open_mmaps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %fs_open_mmaps, align 4
  %cmp.i.not = icmp eq ptr %12, %fs_open_mmaps
  br i1 %cmp.i.not, label %do.body.do.cond_crit_edge, label %if.then

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %13 = load ptr, ptr @system_unbound_wq, align 4
  %initcb_work = getelementptr inbounds %struct.afs_server, ptr %server.addr.0, i32 0, i32 11
  %call.i24 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %initcb_work) #7
  br label %do.cond

do.cond:                                          ; preds = %if.then, %do.body.do.cond_crit_edge
  %uuid_next = getelementptr inbounds %struct.afs_server, ptr %server.addr.0, i32 0, i32 5
  %14 = ptrtoint ptr %uuid_next to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %uuid_next, align 4
  %call6 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %do.cond.do.end15_crit_edge

do.cond.do.end15_crit_edge:                       ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

land.lhs.true:                                    ; preds = %do.cond
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end15_crit_edge, label %land.lhs.true10

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b23 = load i1, ptr @afs_init_callback_state.__warned, align 1
  br i1 %.b23, label %land.lhs.true10.do.end15_crit_edge, label %if.then12

land.lhs.true10.do.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @afs_init_callback_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 67, ptr noundef nonnull @.str.1) #7
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %land.lhs.true10.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %do.cond.do.end15_crit_edge
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %do.end18, label %do.end15.do.body_crit_edge

do.end15.do.body_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end18:                                         ; preds = %do.end15
  %call.i25 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i25, label %do.end18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i28

do.end18.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i28:                                ; preds = %do.end18
  %call1.i26 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool.not.i27 = icmp eq i32 %call1.i26, 0
  br i1 %tobool.not.i27, label %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i30

land.lhs.true.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i30:                               ; preds = %land.lhs.true.i28
  %.b4.i29 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29, label %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, label %if.then.i31

land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i31:                                      ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i31, %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, %do.end18.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !57
  %16 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i.i.i32 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i32 to ptr
  %preempt_count.i.i.i.i33 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i33, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i33, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__afs_break_callback(ptr noundef %vnode, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !58

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %comm, ptr noundef nonnull @.str.3) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags) #7
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %do.end5
  %cb_break = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 28
  %5 = ptrtoint ptr %cb_break to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cb_break, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %cb_break, align 4
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 1
  %7 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %volume, align 8
  %cb_v_break = getelementptr inbounds %struct.afs_volume, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %cb_v_break to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cb_v_break, align 8
  %cb_v_break10 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 27
  %11 = ptrtoint ptr %cb_v_break10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %cb_v_break10, align 8
  tail call void @afs_clear_permits(ptr noundef %vnode) #7
  %lock_state = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 20
  %12 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %lock_state, align 8
  %bf.lshr.mask = and i16 %bf.load, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.lshr.mask)
  %cmp = icmp eq i16 %bf.lshr.mask, 256
  br i1 %cmp, label %if.then11, label %if.then9.if.end12_crit_edge

if.then9.if.end12_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @afs_lock_may_be_available(ptr noundef %vnode) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then9.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %reason)
  %cmp13.not = icmp eq i32 %reason, 3
  br i1 %cmp13.not, label %if.end12.if.end20_crit_edge, label %land.lhs.true

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end12
  %type = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 3, i32 10
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp14 = icmp eq i32 %14, 1
  br i1 %cmp14, label %land.lhs.true15, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true15:                                  ; preds = %land.lhs.true
  %cb_nr_mmap = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cb_nr_mmap, i32 noundef 4) #7
  %15 = ptrtoint ptr %cb_nr_mmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %cb_nr_mmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool17.not = icmp eq i32 %16, 0
  br i1 %tobool17.not, label %land.lhs.true15.if.end20_crit_edge, label %if.then18

land.lhs.true15.if.end20_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %17 = load ptr, ptr @system_unbound_wq, align 4
  %cb_work = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 21
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %cb_work) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %land.lhs.true15.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge, %if.end12.if.end20_crit_edge
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2
  %18 = ptrtoint ptr %cb_break to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cb_break, align 4
  tail call fastcc void @trace_afs_cb_break(ptr noundef %fid, i32 noundef %19, i32 noundef %reason, i1 noundef zeroext true)
  br label %if.end24

if.else:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %fid22 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2
  %cb_break23 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 28
  %20 = ptrtoint ptr %cb_break23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cb_break23, align 4
  tail call fastcc void @trace_afs_cb_break(ptr noundef %fid22, i32 noundef %21, i32 noundef %reason, i1 noundef zeroext false)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end20
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_clear_permits(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_lock_may_be_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_cb_break(ptr noundef %fid, i32 noundef %cb_break, i32 noundef %reason, i1 noundef zeroext %skipped) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_cb_break, i32 0, i32 1), ptr blockaddress(@trace_afs_cb_break, %do.body)) #7
          to label %if.end49 [label %do.body], !srcloc !59

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !45) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !58

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !60
  %call43 = tail call i32 @__traceiter_afs_cb_break(ptr noundef null, ptr noundef %fid, i32 noundef %cb_break, i32 noundef %reason, i1 noundef zeroext %skipped) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !61
  %13 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !58

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_cb_break, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_cb_break, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_afs_cb_break.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_afs_cb_break.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1413, ptr noundef nonnull @.str.1) #7
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !63
  %31 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_break_callback(ptr noundef %vnode, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cb_lock = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 29
  %lock.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 29, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %0 = ptrtoint ptr %cb_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb_lock, align 4
  %inc.i.i.i.i = add i32 %1, 1
  store i32 %inc.i.i.i.i, ptr %cb_lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  %dep_map.i.i.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 29, i32 0, i32 0, i32 1
  %2 = tail call ptr @llvm.returnaddress(i32 0) #7
  %3 = ptrtoint ptr %2 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %3) #7
  tail call void @__afs_break_callback(ptr noundef %vnode, i32 noundef %reason)
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %3) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  %4 = ptrtoint ptr %cb_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cb_lock, align 4
  %inc.i.i.i = add i32 %5, 1
  store i32 %inc.i.i.i, ptr %cb_lock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_break_callbacks(ptr noundef %server, i32 noundef %count, ptr noundef %callbacks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body6_crit_edge, label %do.end, !prof !58

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm, ptr noundef nonnull @.str.5, ptr noundef %server, i32 noundef %count) #10
  br label %do.body6

do.body6:                                         ; preds = %do.end, %entry.do.body6_crit_edge
  %cmp.not = icmp eq ptr %server, null
  br i1 %cmp.not, label %do.end17, label %do.end29, !prof !66

do.end17:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/callback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #7, !srcloc !67
  unreachable

do.end29:                                         ; preds = %do.body6
  %5 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %do.end29.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end29.rcu_read_lock.exit_crit_edge:            ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end29
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end29.rcu_read_lock.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp30.not51 = icmp eq i32 %count, 0
  br i1 %cmp30.not51, label %rcu_read_lock.exit.while.end_crit_edge, label %while.body.lr.ph

rcu_read_lock.exit.while.end_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %rcu_read_lock.exit
  %cell.i = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 3
  br label %while.body

while.cond.loopexit:                              ; preds = %for.inc.i
  %cmp30.not = icmp eq i32 %count.addr.2, 0
  br i1 %cmp30.not, label %while.cond.loopexit.while.end_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %count.addr.052 = phi i32 [ %count, %while.body.lr.ph ], [ %count.addr.2, %while.cond.loopexit.while.body_crit_edge ]
  %9 = ptrtoint ptr %callbacks to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %callbacks, align 8
  %11 = ptrtoint ptr %cell.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cell.i, align 4
  %volume_lock.i.i = getelementptr inbounds %struct.afs_cell, ptr %12, i32 0, i32 19
  %lock.i.i.i.i = getelementptr inbounds %struct.afs_cell, ptr %12, i32 0, i32 19, i32 1
  %dep_map.c48.i.i.i.i.i = getelementptr inbounds %struct.afs_cell, ptr %12, i32 0, i32 19, i32 0, i32 0, i32 1
  %volumes.i.i = getelementptr inbounds %struct.afs_cell, ptr %12, i32 0, i32 17
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %need_seqretry.exit.i.i.do.body.i.i_crit_edge, %while.body
  %seq.0.i.i = phi i32 [ 0, %while.body ], [ %seq.1.i.i, %need_seqretry.exit.i.i.do.body.i.i_crit_edge ]
  %volume.0.i.i = phi ptr [ null, %while.body ], [ %volume.2.i.i, %need_seqretry.exit.i.i.do.body.i.i_crit_edge ]
  %and.i.i.i = and i32 %seq.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !68
  %and.i.i.i.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.body24.critedge.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  %14 = tail call ptr @llvm.returnaddress(i32 0) #7
  %15 = ptrtoint ptr %14 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %15) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i.i.i, i32 noundef %15) #7
  tail call void @trace_hardirqs_on() #7
  br label %do.body24.i.i.i.i.i

do.body24.critedge.i.i.i.i.i:                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = tail call ptr @llvm.returnaddress(i32 0) #7
  %17 = ptrtoint ptr %16 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %17) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i.i.i, i32 noundef %17) #7
  br label %do.body24.i.i.i.i.i

do.body24.i.i.i.i.i:                              ; preds = %do.body24.critedge.i.i.i.i.i, %if.then.i.i.i.i.i
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !69
  %and.i.i.i.i.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool32.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i.i.i, label %if.then36.i.i.i.i.i, label %do.body24.i.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i.i_crit_edge, !prof !66

do.body24.i.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i.i_crit_edge: ; preds = %do.body24.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %seqcount_lockdep_reader_access.exit.i.i.i.i

if.then36.i.i.i.i.i:                              ; preds = %do.body24.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %seqcount_lockdep_reader_access.exit.i.i.i.i

seqcount_lockdep_reader_access.exit.i.i.i.i:      ; preds = %if.then36.i.i.i.i.i, %do.body24.i.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #7, !srcloc !70
  %19 = ptrtoint ptr %volume_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %volume_lock.i.i, align 4
  %and18.i.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i.i.i)
  %tobool.not19.i.i.i.i = icmp eq i32 %and18.i.i.i.i, 0
  br i1 %tobool.not19.i.i.i.i, label %seqcount_lockdep_reader_access.exit.i.i.i.i.read_seqbegin.exit.i.i.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.i.i.do.end.i.i.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.i.i.do.end.i.i.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i.i.i
  br label %do.end.i.i.i.i

seqcount_lockdep_reader_access.exit.i.i.i.i.read_seqbegin.exit.i.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_seqbegin.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i.do.end.i.i.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.i.i.do.end.i.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !72
  %21 = ptrtoint ptr %volume_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %volume_lock.i.i, align 4
  %and.i.i.i.i = and i32 %22, 1
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.i.read_seqbegin.exit.i.i.i_crit_edge, label %do.end.i.i.i.i.do.end.i.i.i.i_crit_edge

do.end.i.i.i.i.do.end.i.i.i.i_crit_edge:          ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i.i.i

do.end.i.i.i.i.read_seqbegin.exit.i.i.i_crit_edge: ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_seqbegin.exit.i.i.i

read_seqbegin.exit.i.i.i:                         ; preds = %do.end.i.i.i.i.read_seqbegin.exit.i.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.i.i.read_seqbegin.exit.i.i.i_crit_edge
  %.lcssa.i.i.i.i = phi i32 [ %20, %seqcount_lockdep_reader_access.exit.i.i.i.i.read_seqbegin.exit.i.i.i_crit_edge ], [ %22, %do.end.i.i.i.i.read_seqbegin.exit.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !73
  br label %read_seqbegin_or_lock.exit.i.i

if.else.i.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i.i.i) #7
  br label %read_seqbegin_or_lock.exit.i.i

read_seqbegin_or_lock.exit.i.i:                   ; preds = %if.else.i.i.i, %read_seqbegin.exit.i.i.i
  %seq.1.i.i = phi i32 [ %.lcssa.i.i.i.i, %read_seqbegin.exit.i.i.i ], [ %seq.0.i.i, %if.else.i.i.i ]
  %23 = ptrtoint ptr %volumes.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %p.045.i.i = load volatile ptr, ptr %volumes.i.i, align 4
  %tobool.not46.i.i = icmp eq ptr %p.045.i.i, null
  br i1 %tobool.not46.i.i, label %read_seqbegin_or_lock.exit.i.i.do.cond18.i.i_crit_edge, label %read_seqbegin_or_lock.exit.i.i.while.body.i.i_crit_edge

read_seqbegin_or_lock.exit.i.i.while.body.i.i_crit_edge: ; preds = %read_seqbegin_or_lock.exit.i.i
  br label %while.body.i.i

read_seqbegin_or_lock.exit.i.i.do.cond18.i.i_crit_edge: ; preds = %read_seqbegin_or_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond18.i.i

while.body.i.i:                                   ; preds = %if.end17.i.i.while.body.i.i_crit_edge, %read_seqbegin_or_lock.exit.i.i.while.body.i.i_crit_edge
  %p.047.i.i = phi ptr [ %p.0.i.i, %if.end17.i.i.while.body.i.i_crit_edge ], [ %p.045.i.i, %read_seqbegin_or_lock.exit.i.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %p.047.i.i, i32 -28
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %10)
  %cmp.i.i = icmp ult i64 %25, %10
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %p.047.i.i, i32 0, i32 2
  br label %if.end17.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %10)
  %cmp9.i.i = icmp ugt i64 %25, %10
  br i1 %cmp9.i.i, label %if.then10.i.i, label %do.cond18.i.i.loopexit.split.loop.exit

if.then10.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %p.047.i.i, i32 0, i32 1
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then10.i.i, %if.then.i.i
  %p.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then10.i.i ]
  %26 = ptrtoint ptr %p.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %p.0.i.i = load volatile ptr, ptr %p.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %p.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end17.i.i.do.cond18.i.i_crit_edge, label %if.end17.i.i.while.body.i.i_crit_edge

if.end17.i.i.while.body.i.i_crit_edge:            ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

if.end17.i.i.do.cond18.i.i_crit_edge:             ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond18.i.i

do.cond18.i.i.loopexit.split.loop.exit:           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.le = getelementptr i8, ptr %p.047.i.i, i32 -28
  br label %do.cond18.i.i

do.cond18.i.i:                                    ; preds = %do.cond18.i.i.loopexit.split.loop.exit, %if.end17.i.i.do.cond18.i.i_crit_edge, %read_seqbegin_or_lock.exit.i.i.do.cond18.i.i_crit_edge
  %volume.2.i.i = phi ptr [ %volume.0.i.i, %read_seqbegin_or_lock.exit.i.i.do.cond18.i.i_crit_edge ], [ %add.ptr.i.i.le, %do.cond18.i.i.loopexit.split.loop.exit ], [ null, %if.end17.i.i.do.cond18.i.i_crit_edge ]
  %and.i32.i.i = and i32 %seq.1.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i.i)
  %tobool.not.i33.i.i = icmp eq i32 %and.i32.i.i, 0
  br i1 %tobool.not.i33.i.i, label %need_seqretry.exit.i.i, label %if.then.i37.i.i

need_seqretry.exit.i.i:                           ; preds = %do.cond18.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !74
  %27 = ptrtoint ptr %volume_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %volume_lock.i.i, align 4
  %cmp.i.i.i.i.not.i.i = icmp eq i32 %28, %seq.1.i.i
  br i1 %cmp.i.i.i.i.not.i.i, label %need_seqretry.exit.i.i.for.body.lr.ph.i_crit_edge, label %need_seqretry.exit.i.i.do.body.i.i_crit_edge

need_seqretry.exit.i.i.do.body.i.i_crit_edge:     ; preds = %need_seqretry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

need_seqretry.exit.i.i.for.body.lr.ph.i_crit_edge: ; preds = %need_seqretry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i

if.then.i37.i.i:                                  ; preds = %do.cond18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i.i.i) #7
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.then.i37.i.i, %need_seqretry.exit.i.i.for.body.lr.ph.i_crit_edge
  %tobool17.not.i = icmp eq ptr %volume.2.i.i, null
  %sb5.i.i = getelementptr inbounds %struct.afs_volume, ptr %volume.2.i.i, i32 0, i32 6
  %cb_v_break_lock.i.i = getelementptr inbounds %struct.afs_volume, ptr %volume.2.i.i, i32 0, i32 13
  %cb_v_break.i.i = getelementptr inbounds %struct.afs_volume, ptr %volume.2.i.i, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.addr.1 = phi i32 [ %count.addr.052, %for.body.lr.ph.i ], [ %count.addr.2, %for.inc.i.for.body.i_crit_edge ]
  %cbb.addr.048.i = phi ptr [ %callbacks, %for.body.lr.ph.i ], [ %incdec.ptr22.i, %for.inc.i.for.body.i_crit_edge ]
  %i.047.i = phi i32 [ %count.addr.052, %for.body.lr.ph.i ], [ %dec23.i, %for.inc.i.for.body.i_crit_edge ]
  %residue.046.i = phi ptr [ %callbacks, %for.body.lr.ph.i ], [ %residue.1.i, %for.inc.i.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %cbb.addr.048.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %cbb.addr.048.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %10)
  %cmp4.i = icmp eq i64 %30, %10
  br i1 %cmp4.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %31 = load i32, ptr @afs_debug, align 4
  %and.i33 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33)
  %tobool.not.i34 = icmp eq i32 %and.i33, 0
  br i1 %tobool.not.i34, label %do.body.i.do.end16.i_crit_edge, label %do.end.i, !prof !58

do.body.i.do.end16.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 101
  %vnode.i = getelementptr inbounds %struct.afs_fid, ptr %cbb.addr.048.i, i32 0, i32 1
  %36 = ptrtoint ptr %vnode.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %vnode.i, align 8
  %unique.i = getelementptr inbounds %struct.afs_fid, ptr %cbb.addr.048.i, i32 0, i32 3
  %38 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %unique.i, align 4
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %comm.i, i64 noundef %10, i64 noundef %37, i32 noundef %39) #10
  br label %do.end16.i

do.end16.i:                                       ; preds = %do.end.i, %do.body.i.do.end16.i_crit_edge
  %dec.i = add i32 %count.addr.1, -1
  br i1 %tobool17.not.i, label %do.end16.i.for.inc.i_crit_edge, label %if.then18.i

do.end16.i.for.inc.i_crit_edge:                   ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then18.i:                                      ; preds = %do.end16.i
  %vnode1.i.i = getelementptr inbounds %struct.afs_fid, ptr %cbb.addr.048.i, i32 0, i32 1
  %40 = ptrtoint ptr %vnode1.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %vnode1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %cmp.i36.i = icmp eq i64 %41, 0
  br i1 %cmp.i36.i, label %land.lhs.true.i.i, label %if.then18.i.if.end.i.i_crit_edge

if.then18.i.if.end.i.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then18.i
  %unique.i.i = getelementptr inbounds %struct.afs_fid, ptr %cbb.addr.048.i, i32 0, i32 3
  %42 = ptrtoint ptr %unique.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %unique.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp2.i.i = icmp eq i32 %43, 0
  br i1 %cmp2.i.i, label %if.then.i37.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i37.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_write_lock(ptr noundef %cb_v_break_lock.i.i) #7
  %44 = ptrtoint ptr %cb_v_break.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cb_v_break.i.i, align 8
  %inc.i.i = add i32 %45, 1
  store i32 %inc.i.i, ptr %cb_v_break.i.i, align 8
  tail call fastcc void @trace_afs_cb_break(ptr noundef %cbb.addr.048.i, i32 noundef %inc.i.i, i32 noundef 8, i1 noundef zeroext false) #7
  tail call void @_raw_write_unlock(ptr noundef %cb_v_break_lock.i.i) #7
  br label %for.inc.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then18.i.if.end.i.i_crit_edge
  %46 = ptrtoint ptr %sb5.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %sb5.i.i, align 8
  %call.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i38.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i38.i, label %land.lhs.true7.i.i, label %if.end.i.i.do.end15.i.i_crit_edge

if.end.i.i.do.end15.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15.i.i

land.lhs.true7.i.i:                               ; preds = %if.end.i.i
  %call8.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %land.lhs.true7.i.i.do.end15.i.i_crit_edge, label %land.lhs.true10.i.i

land.lhs.true7.i.i.do.end15.i.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15.i.i

land.lhs.true10.i.i:                              ; preds = %land.lhs.true7.i.i
  %.b39.i.i = load i1, ptr @afs_break_one_callback.__warned, align 1
  br i1 %.b39.i.i, label %land.lhs.true10.i.i.do.end15.i.i_crit_edge, label %if.then12.i.i

land.lhs.true10.i.i.do.end15.i.i_crit_edge:       ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15.i.i

if.then12.i.i:                                    ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @afs_break_one_callback.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 168, ptr noundef nonnull @.str.1) #7
  br label %do.end15.i.i

do.end15.i.i:                                     ; preds = %if.then12.i.i, %land.lhs.true10.i.i.do.end15.i.i_crit_edge, %land.lhs.true7.i.i.do.end15.i.i_crit_edge, %if.end.i.i.do.end15.i.i_crit_edge
  %tobool17.not.i.i = icmp eq ptr %47, null
  br i1 %tobool17.not.i.i, label %do.end15.i.i.for.inc.i_crit_edge, label %if.end19.i.i

do.end15.i.i.for.inc.i_crit_edge:                 ; preds = %do.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end19.i.i:                                     ; preds = %do.end15.i.i
  %48 = ptrtoint ptr %vnode1.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %vnode1.i.i, align 8
  %conv.i.i = trunc i64 %49 to i32
  %call21.i.i = tail call ptr @find_inode_rcu(ptr noundef nonnull %47, i32 noundef %conv.i.i, ptr noundef nonnull @afs_ilookup5_test_by_fid, ptr noundef %cbb.addr.048.i) #7
  %tobool22.not.i.i = icmp eq ptr %call21.i.i, null
  br i1 %tobool22.not.i.i, label %if.else.i40.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cb_lock.i.i.i = getelementptr inbounds %struct.afs_vnode, ptr %call21.i.i, i32 0, i32 29
  %lock.i.i.i39.i = getelementptr inbounds %struct.afs_vnode, ptr %call21.i.i, i32 0, i32 29, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i.i39.i) #7
  %50 = ptrtoint ptr %cb_lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cb_lock.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %51, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %cb_lock.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.afs_vnode, ptr %call21.i.i, i32 0, i32 29, i32 0, i32 0, i32 1
  %52 = tail call ptr @llvm.returnaddress(i32 0) #7
  %53 = ptrtoint ptr %52 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %53) #7
  tail call void @__afs_break_callback(ptr noundef nonnull %call21.i.i, i32 noundef 2) #7
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %53) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  %54 = ptrtoint ptr %cb_lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cb_lock.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %55, 1
  store i32 %inc.i.i.i.i.i.i, ptr %cb_lock.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i.i39.i) #7
  br label %for.inc.i

if.else.i40.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @trace_afs_cb_miss(ptr noundef %cbb.addr.048.i) #7
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i = getelementptr %struct.afs_callback_break, ptr %residue.046.i, i32 1
  %56 = call ptr @memcpy(ptr %residue.046.i, ptr %cbb.addr.048.i, i32 24)
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.else.i40.i, %if.then23.i.i, %do.end15.i.i.for.inc.i_crit_edge, %if.then.i37.i, %do.end16.i.for.inc.i_crit_edge
  %count.addr.2 = phi i32 [ %dec.i, %do.end16.i.for.inc.i_crit_edge ], [ %dec.i, %if.then.i37.i ], [ %dec.i, %do.end15.i.i.for.inc.i_crit_edge ], [ %dec.i, %if.else.i40.i ], [ %dec.i, %if.then23.i.i ], [ %count.addr.1, %if.else.i ]
  %residue.1.i = phi ptr [ %residue.046.i, %do.end16.i.for.inc.i_crit_edge ], [ %residue.046.i, %if.then.i37.i ], [ %residue.046.i, %do.end15.i.i.for.inc.i_crit_edge ], [ %residue.046.i, %if.else.i40.i ], [ %residue.046.i, %if.then23.i.i ], [ %incdec.ptr.i, %if.else.i ]
  %incdec.ptr22.i = getelementptr %struct.afs_callback_break, ptr %cbb.addr.048.i, i32 1
  %dec23.i = add i32 %i.047.i, -1
  %cmp.not.i = icmp eq i32 %dec23.i, 0
  br i1 %cmp.not.i, label %while.cond.loopexit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

while.end:                                        ; preds = %while.cond.loopexit.while.end_crit_edge, %rcu_read_lock.exit.while.end_crit_edge
  %call.i35 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i35, label %while.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i38

while.end.rcu_read_unlock.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i38:                                ; preds = %while.end
  %call1.i36 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, label %if.then.i41

land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i41, %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, %while.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !57
  %57 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i.i.i42 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i42 to ptr
  %preempt_count.i.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i43, align 4
  %sub.i.i.i = add i32 %60, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i43, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_cb_break(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_inode_rcu(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_ilookup5_test_by_fid(ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_cb_miss(ptr noundef %fid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_cb_miss, i32 0, i32 1), ptr blockaddress(@trace_afs_cb_miss, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !59

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !45) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !58

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !75
  %call42 = tail call i32 @__traceiter_afs_cb_miss(ptr noundef null, ptr noundef %fid, i32 noundef 2) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !76
  %13 = tail call i32 @llvm.read_register.i32(metadata !45) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !45) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !58

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_cb_miss, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_cb_miss, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_afs_cb_miss.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_afs_cb_miss.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1433, ptr noundef nonnull @.str.1) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !63
  %31 = tail call i32 @llvm.read_register.i32(metadata !45) #7
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
declare dso_local i32 @__traceiter_afs_cb_miss(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !30, !31, !32, !34, !35, !37, !38, !39, !40, !42, !44}
!llvm.named.register.sp = !{!45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../fs/afs/callback.c", i32 67, i32 21}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/afs/callback.c", i32 76, i32 2}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__afs_break_callback._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @__afs_break_callback._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/afs/callback.c", i32 217, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @afs_break_callbacks._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @afs_break_callbacks._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/afs/callback.c", i32 219, i32 2}
!16 = !{ptr @afs_break_callbacks._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @afs_break_callbacks._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @afs_break_callbacks._entry.9, !15, !"_entry", i1 false, i1 false}
!20 = !{ptr @afs_break_callbacks._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/trace/events/afs.h", i32 1388, i32 1}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/afs/callback.c", i32 198, i32 4}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @afs_break_some_callbacks._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @afs_break_some_callbacks._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../fs/afs/callback.c", i32 168, i32 7}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/trace/events/afs.h", i32 1415, i32 1}
!44 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!45 = !{!"sp"}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 2149360242}
!56 = !{i64 2148213773, i64 2148213799, i64 2148213828, i64 2148213862, i64 2148213893, i64 2148213916}
!57 = !{i64 2149360508}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{i64 2148695588, i64 2148695593, i64 2148695606, i64 2148695650, i64 2148695684, i64 2148695705}
!60 = !{i64 2157678495}
!61 = !{i64 2157678742}
!62 = !{i64 2149368801}
!63 = !{i64 2149369837}
!64 = !{i64 2149976234}
!65 = !{i64 2149976559}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i64 2157808966, i64 2157813509, i64 2157809003, i64 2157809059, i64 2157809093, i64 2157809117, i64 2157809158, i64 2157809179, i64 2157809207, i64 2157809241}
!68 = !{i64 606254, i64 606315}
!69 = !{i64 608986}
!70 = !{i64 609271}
!71 = !{i64 2149990662}
!72 = !{i64 2149990504}
!73 = !{i64 2149990832}
!74 = !{i64 2149975909}
!75 = !{i64 2157695069}
!76 = !{i64 2157695276}
