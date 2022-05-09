; ModuleID = '/llk/IR_all_yes/drivers/connector/cn_proc.c_pt.bc'
source_filename = "../drivers/connector/cn_proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.local_event = type { %struct.local_lock_t, i32 }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.cb_id = type { i32, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.47 }
%union.anon.47 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.57, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.120, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.98 }
%union.anon.98 = type { %struct.anon.99 }
%struct.anon.99 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.120 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.78 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.78 = type { %struct.callback_head }
%struct.cn_msg = type { %struct.cb_id, i32, i32, i16, i16, [0 x i8] }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@local_event = weak dso_local global %struct.local_event { %struct.local_lock_t { %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 1, i32 0, i32 0 }, ptr null }, i32 0 }, section ".data..percpu", align 4
@proc_event_num_listeners = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@proc_fork_connector.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/connector/cn_proc.c\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@cn_proc_event_id = internal global { %struct.cb_id, [24 x i8] } { %struct.cb_id { i32 1, i32 1 }, [24 x i8] zeroinitializer }, align 32
@proc_id_connector.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@proc_coredump_connector.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@proc_exit_connector.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__initcall__kmod_cn_proc__471_403_cn_proc_init6 = internal global ptr @cn_proc_init, section ".initcall6.init", align 4
@__pcpu_unique_local_event = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l->owner\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cn_proc\00", [24 x i8] zeroinitializer }, align 32
@cn_proc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.1, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014cn_proc failed to register\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cn_proc_init\00", [19 x i8] zeroinitializer }, align 32
@cn_proc_init._entry_ptr = internal global ptr @cn_proc_init._entry, section ".printk_index", align 4
@init_pid_ns = external dso_local global %struct.pid_namespace, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 64]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 17]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 48, i32 10 }
@___asan_gen_.19 = private unnamed_addr constant [25 x i8] c"proc_event_num_listeners\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 39, i32 17 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 85, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"cn_proc_event_id\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 40, i32 21 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 695, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 723, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 30, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 36, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 395, i32 7 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [31 x i8] c"../drivers/connector/cn_proc.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 398, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__initcall__kmod_cn_proc__471_403_cn_proc_init6, ptr @cn_proc_init._entry, ptr @cn_proc_init._entry_ptr, ptr @.str, ptr @proc_event_num_listeners, ptr @.str.1, ptr @.str.2, ptr @cn_proc_event_id, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_event_num_listeners to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cn_proc_event_id to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cn_proc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @proc_fork_connector(ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [64 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buffer) #8
  %0 = call ptr @memset(ptr %buffer, i32 255, i32 32)
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @proc_event_num_listeners, i32 noundef 4) #8
  %1 = load volatile i32, ptr @proc_event_num_listeners, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr inbounds i8, ptr %buffer, i32 4
  %data = getelementptr inbounds i8, ptr %buffer, i32 24
  %event_data = getelementptr inbounds i8, ptr %buffer, i32 40
  %2 = call ptr @memset(ptr %event_data, i32 0, i32 24)
  %call.i39 = tail call i64 @ktime_get() #8
  %timestamp_ns = getelementptr inbounds i8, ptr %buffer, i32 32
  %3 = ptrtoint ptr %timestamp_ns to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call.i39, ptr %timestamp_ns, align 8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %data, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !55
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %real_parent = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 71
  %9 = ptrtoint ptr %real_parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %real_parent, align 4
  %call5 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end13_crit_edge

rcu_read_lock.exit.do.end13_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b38 = load i1, ptr @proc_fork_connector.__warned, align 1
  br i1 %.b38, label %land.lhs.true8.do.end13_crit_edge, label %if.then10

land.lhs.true8.do.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @proc_fork_connector.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 85, ptr noundef nonnull @.str.2) #8
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %land.lhs.true8.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %rcu_read_lock.exit.do.end13_crit_edge
  %pid = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid, align 8
  %13 = ptrtoint ptr %event_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %event_data, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 69
  %14 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tgid, align 4
  %parent_tgid = getelementptr inbounds i8, ptr %buffer, i32 44
  %16 = ptrtoint ptr %parent_tgid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %parent_tgid, align 4
  %call.i40 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i40, label %do.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i43

do.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i43:                                ; preds = %do.end13
  %call1.i41 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool.not.i42 = icmp eq i32 %call1.i41, 0
  br i1 %tobool.not.i42, label %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i45

land.lhs.true.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i45:                               ; preds = %land.lhs.true.i43
  %.b4.i44 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44, label %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, label %if.then.i46

land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i46:                                      ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i46, %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, %do.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !56
  %17 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i.i47 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i47 to ptr
  %preempt_count.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i48, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i48, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %pid17 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 68
  %21 = ptrtoint ptr %pid17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid17, align 8
  %child_pid = getelementptr inbounds i8, ptr %buffer, i32 48
  %23 = ptrtoint ptr %child_pid to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %child_pid, align 8
  %tgid19 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 69
  %24 = ptrtoint ptr %tgid19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tgid19, align 4
  %child_tgid = getelementptr inbounds i8, ptr %buffer, i32 52
  %26 = ptrtoint ptr %child_tgid to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %child_tgid, align 4
  %27 = load i64, ptr @cn_proc_event_id, align 8
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %27, ptr %add.ptr.i, align 4
  %ack = getelementptr inbounds i8, ptr %buffer, i32 16
  %29 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %ack, align 8
  %len = getelementptr inbounds i8, ptr %buffer, i32 20
  %30 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 40, ptr %len, align 4
  %flags = getelementptr inbounds i8, ptr %buffer, i32 22
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags, align 2
  %32 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %35, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !57
  %36 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %41, ptrtoint (ptr @local_event to i32)
  %42 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %42) #8
  %43 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i, align 4
  %arrayidx19.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx19.i, align 4
  %add20.i = add i32 %46, ptrtoint (ptr getelementptr inbounds (%struct.local_event, ptr @local_event, i32 0, i32 1) to i32)
  %47 = inttoptr i32 %add20.i to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add21.i = add i32 %49, 1
  store i32 %add21.i, ptr %47, align 4
  %seq.i = getelementptr inbounds i8, ptr %buffer, i32 12
  %50 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %seq.i, align 4
  %51 = load i32, ptr %cpu.i, align 4
  %cpu26.i = getelementptr inbounds i8, ptr %buffer, i32 28
  %52 = ptrtoint ptr %cpu26.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %cpu26.i, align 4
  %call27.i = call i32 @cn_netlink_send(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 1, i32 noundef 2048) #8
  %53 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu.i, align 4
  %arrayidx38.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx38.i, align 4
  %add39.i = add i32 %56, ptrtoint (ptr @local_event to i32)
  %57 = inttoptr i32 %add39.i to ptr
  call fastcc void @local_lock_release(ptr noundef %57) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  %58 = call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i48.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i48.i to ptr
  %preempt_count.i.i49.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i49.i, align 4
  %sub.i.i = add i32 %61, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i49.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buffer) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @proc_exec_connector(ptr nocapture noundef readonly %task) local_unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [64 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buffer) #8
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %buffer, align 8, !annotation !59
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @proc_event_num_listeners, i32 noundef 4) #8
  %1 = load volatile i32, ptr @proc_event_num_listeners, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr inbounds i8, ptr %buffer, i32 4
  %data = getelementptr inbounds i8, ptr %buffer, i32 24
  %event_data = getelementptr inbounds i8, ptr %buffer, i32 40
  %2 = getelementptr inbounds i8, ptr %buffer, i32 48
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %call.i = tail call i64 @ktime_get() #8
  %timestamp_ns = getelementptr inbounds i8, ptr %buffer, i32 32
  %4 = ptrtoint ptr %timestamp_ns to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call.i, ptr %timestamp_ns, align 8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %data, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %8 = ptrtoint ptr %event_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %event_data, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 69
  %9 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tgid, align 4
  %process_tgid = getelementptr inbounds i8, ptr %buffer, i32 44
  %11 = ptrtoint ptr %process_tgid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %process_tgid, align 4
  %12 = load i64, ptr @cn_proc_event_id, align 8
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %add.ptr.i, align 4
  %ack = getelementptr inbounds i8, ptr %buffer, i32 16
  %14 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ack, align 8
  %len = getelementptr inbounds i8, ptr %buffer, i32 20
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 40, ptr %len, align 4
  %flags = getelementptr inbounds i8, ptr %buffer, i32 22
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags, align 2
  %17 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %20, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !57
  %21 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %26, ptrtoint (ptr @local_event to i32)
  %27 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %27) #8
  %28 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i, align 4
  %arrayidx19.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx19.i, align 4
  %add20.i = add i32 %31, ptrtoint (ptr getelementptr inbounds (%struct.local_event, ptr @local_event, i32 0, i32 1) to i32)
  %32 = inttoptr i32 %add20.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add21.i = add i32 %34, 1
  store i32 %add21.i, ptr %32, align 4
  %seq.i = getelementptr inbounds i8, ptr %buffer, i32 12
  %35 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %seq.i, align 4
  %36 = load i32, ptr %cpu.i, align 4
  %cpu26.i = getelementptr inbounds i8, ptr %buffer, i32 28
  %37 = ptrtoint ptr %cpu26.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %cpu26.i, align 4
  %call27.i = call i32 @cn_netlink_send(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 1, i32 noundef 2048) #8
  %38 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i, align 4
  %arrayidx38.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx38.i, align 4
  %add39.i = add i32 %41, ptrtoint (ptr @local_event to i32)
  %42 = inttoptr i32 %add39.i to ptr
  call fastcc void @local_lock_release(ptr noundef %42) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  %43 = call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i48.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i48.i to ptr
  %preempt_count.i.i49.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i49.i, align 4
  %sub.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i49.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @proc_id_connector(ptr noundef %task, i32 noundef %which_id) local_unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [64 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buffer) #8
  %0 = call ptr @memset(ptr %buffer, i32 255, i32 40)
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @proc_event_num_listeners, i32 noundef 4) #8
  %1 = load volatile i32, ptr @proc_event_num_listeners, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr inbounds i8, ptr %buffer, i32 4
  %data = getelementptr inbounds i8, ptr %buffer, i32 24
  %event_data = getelementptr inbounds i8, ptr %buffer, i32 40
  %2 = getelementptr inbounds i8, ptr %buffer, i32 48
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %which_id, ptr %data, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 68
  %5 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pid, align 8
  %7 = ptrtoint ptr %event_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %event_data, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 69
  %8 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tgid, align 4
  %process_tgid = getelementptr inbounds i8, ptr %buffer, i32 44
  %10 = ptrtoint ptr %process_tgid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %process_tgid, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !55
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 98
  %15 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %real_cred, align 4
  %call6 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end14_crit_edge

rcu_read_lock.exit.do.end14_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b63 = load i1, ptr @proc_id_connector.__warned, align 1
  br i1 %.b63, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @proc_id_connector.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 140, ptr noundef nonnull @.str.2) #8
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true.do.end14_crit_edge, %rcu_read_lock.exit.do.end14_crit_edge
  %17 = zext i32 %which_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %which_id, label %if.else33 [
    i32 4, label %if.then17
    i32 64, label %if.then24
  ]

if.then17:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  %uid = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 4
  %18 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack61 = load i32, ptr %uid, align 4
  %19 = insertvalue [1 x i32] undef, i32 %.unpack61, 0
  %call18 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %19) #8
  %r = getelementptr inbounds i8, ptr %buffer, i32 48
  %20 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call18, ptr %r, align 8
  %euid = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 8
  %21 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack62 = load i32, ptr %euid, align 4
  %22 = insertvalue [1 x i32] undef, i32 %.unpack62, 0
  %call21 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %22) #8
  br label %if.end35

if.then24:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  %gid = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 5
  %23 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack = load i32, ptr %gid, align 4
  %24 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call26 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %24) #8
  %r28 = getelementptr inbounds i8, ptr %buffer, i32 48
  %25 = ptrtoint ptr %r28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call26, ptr %r28, align 8
  %egid = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 9
  %26 = ptrtoint ptr %egid to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack60 = load i32, ptr %egid, align 4
  %27 = insertvalue [1 x i32] undef, i32 %.unpack60, 0
  %call30 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %27) #8
  br label %if.end35

if.else33:                                        ; preds = %do.end14
  %call.i64 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i64, label %if.else33.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i67

if.else33.rcu_read_unlock.exit_crit_edge:         ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i67:                                ; preds = %if.else33
  %call1.i65 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i65)
  %tobool.not.i66 = icmp eq i32 %call1.i65, 0
  br i1 %tobool.not.i66, label %land.lhs.true.i67.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i69

land.lhs.true.i67.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i69:                               ; preds = %land.lhs.true.i67
  %.b4.i68 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i68, label %land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge, label %if.then.i70

land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i70:                                      ; preds = %land.lhs.true2.i69
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i70, %land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i67.rcu_read_unlock.exit_crit_edge, %if.else33.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !56
  %28 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i.i71 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i71 to ptr
  %preempt_count.i.i.i.i72 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i72, align 4
  %sub.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i72, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

if.end35:                                         ; preds = %if.then24, %if.then17
  %call30.sink = phi i32 [ %call30, %if.then24 ], [ %call21, %if.then17 ]
  %e32 = getelementptr inbounds i8, ptr %buffer, i32 52
  %32 = ptrtoint ptr %e32 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call30.sink, ptr %e32, align 4
  %call.i73 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i73, label %if.end35.rcu_read_unlock.exit83_crit_edge, label %land.lhs.true.i76

if.end35.rcu_read_unlock.exit83_crit_edge:        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit83

land.lhs.true.i76:                                ; preds = %if.end35
  %call1.i74 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i74)
  %tobool.not.i75 = icmp eq i32 %call1.i74, 0
  br i1 %tobool.not.i75, label %land.lhs.true.i76.rcu_read_unlock.exit83_crit_edge, label %land.lhs.true2.i78

land.lhs.true.i76.rcu_read_unlock.exit83_crit_edge: ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit83

land.lhs.true2.i78:                               ; preds = %land.lhs.true.i76
  %.b4.i77 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i77, label %land.lhs.true2.i78.rcu_read_unlock.exit83_crit_edge, label %if.then.i79

land.lhs.true2.i78.rcu_read_unlock.exit83_crit_edge: ; preds = %land.lhs.true2.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit83

if.then.i79:                                      ; preds = %land.lhs.true2.i78
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit83

rcu_read_unlock.exit83:                           ; preds = %if.then.i79, %land.lhs.true2.i78.rcu_read_unlock.exit83_crit_edge, %land.lhs.true.i76.rcu_read_unlock.exit83_crit_edge, %if.end35.rcu_read_unlock.exit83_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !56
  %33 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i.i80 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i80 to ptr
  %preempt_count.i.i.i.i81 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i81, align 4
  %sub.i.i.i82 = add i32 %36, -1
  store volatile i32 %sub.i.i.i82, ptr %preempt_count.i.i.i.i81, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %call.i84 = tail call i64 @ktime_get() #8
  %timestamp_ns = getelementptr inbounds i8, ptr %buffer, i32 32
  %37 = ptrtoint ptr %timestamp_ns to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %call.i84, ptr %timestamp_ns, align 8
  %38 = load i64, ptr @cn_proc_event_id, align 8
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %38, ptr %add.ptr.i, align 4
  %ack = getelementptr inbounds i8, ptr %buffer, i32 16
  %40 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %ack, align 8
  %len = getelementptr inbounds i8, ptr %buffer, i32 20
  %41 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 40, ptr %len, align 4
  %flags = getelementptr inbounds i8, ptr %buffer, i32 22
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %flags, align 2
  %43 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %46, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !57
  %47 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %52, ptrtoint (ptr @local_event to i32)
  %53 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %53) #8
  %54 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cpu.i, align 4
  %arrayidx19.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx19.i, align 4
  %add20.i = add i32 %57, ptrtoint (ptr getelementptr inbounds (%struct.local_event, ptr @local_event, i32 0, i32 1) to i32)
  %58 = inttoptr i32 %add20.i to ptr
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %add21.i = add i32 %60, 1
  store i32 %add21.i, ptr %58, align 4
  %seq.i = getelementptr inbounds i8, ptr %buffer, i32 12
  %61 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %seq.i, align 4
  %62 = load i32, ptr %cpu.i, align 4
  %cpu26.i = getelementptr inbounds i8, ptr %buffer, i32 28
  %63 = ptrtoint ptr %cpu26.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %cpu26.i, align 4
  %call27.i = call i32 @cn_netlink_send(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 1, i32 noundef 2048) #8
  %64 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cpu.i, align 4
  %arrayidx38.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx38.i, align 4
  %add39.i = add i32 %67, ptrtoint (ptr @local_event to i32)
  %68 = inttoptr i32 %add39.i to ptr
  call fastcc void @local_lock_release(ptr noundef %68) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  %69 = call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i48.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i48.i to ptr
  %preempt_count.i.i49.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i49.i, align 4
  %sub.i.i = add i32 %72, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i49.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit83, %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buffer) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @proc_sid_connector(ptr nocapture noundef readonly %task) local_unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [64 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buffer) #8
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %buffer, align 8, !annotation !59
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @proc_event_num_listeners, i32 noundef 4) #8
  %1 = load volatile i32, ptr @proc_event_num_listeners, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr inbounds i8, ptr %buffer, i32 4
  %data = getelementptr inbounds i8, ptr %buffer, i32 24
  %event_data = getelementptr inbounds i8, ptr %buffer, i32 40
  %2 = getelementptr inbounds i8, ptr %buffer, i32 48
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %call.i = tail call i64 @ktime_get() #8
  %timestamp_ns = getelementptr inbounds i8, ptr %buffer, i32 32
  %4 = ptrtoint ptr %timestamp_ns to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call.i, ptr %timestamp_ns, align 8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 128, ptr %data, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %8 = ptrtoint ptr %event_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %event_data, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 69
  %9 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tgid, align 4
  %process_tgid = getelementptr inbounds i8, ptr %buffer, i32 44
  %11 = ptrtoint ptr %process_tgid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %process_tgid, align 4
  %12 = load i64, ptr @cn_proc_event_id, align 8
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %add.ptr.i, align 4
  %ack = getelementptr inbounds i8, ptr %buffer, i32 16
  %14 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ack, align 8
  %len = getelementptr inbounds i8, ptr %buffer, i32 20
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 40, ptr %len, align 4
  %flags = getelementptr inbounds i8, ptr %buffer, i32 22
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags, align 2
  %17 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %20, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !57
  %21 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %26, ptrtoint (ptr @local_event to i32)
  %27 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %27) #8
  %28 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i, align 4
  %arrayidx19.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx19.i, align 4
  %add20.i = add i32 %31, ptrtoint (ptr getelementptr inbounds (%struct.local_event, ptr @local_event, i32 0, i32 1) to i32)
  %32 = inttoptr i32 %add20.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add21.i = add i32 %34, 1
  store i32 %add21.i, ptr %32, align 4
  %seq.i = getelementptr inbounds i8, ptr %buffer, i32 12
  %35 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %seq.i, align 4
  %36 = load i32, ptr %cpu.i, align 4
  %cpu26.i = getelementptr inbounds i8, ptr %buffer, i32 28
  %37 = ptrtoint ptr %cpu26.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %cpu26.i, align 4
  %call27.i = call i32 @cn_netlink_send(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 1, i32 noundef 2048) #8
  %38 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i, align 4
  %arrayidx38.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx38.i, align 4
  %add39.i = add i32 %41, ptrtoint (ptr @local_event to i32)
  %42 = inttoptr i32 %add39.i to ptr
  call fastcc void @local_lock_release(ptr noundef %42) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  %43 = call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i48.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i48.i to ptr
  %preempt_count.i.i49.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i49.i, align 4
  %sub.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i49.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @proc_ptrace_connector(ptr nocapture noundef readonly %task, i32 noundef %ptrace_id) local_unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [64 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buffer) #8
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %buffer, align 8, !annotation !59
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @proc_event_num_listeners, i32 noundef 4) #8
  %1 = load volatile i32, ptr @proc_event_num_listeners, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr inbounds i8, ptr %buffer, i32 4
  %data = getelementptr inbounds i8, ptr %buffer, i32 24
  %event_data = getelementptr inbounds i8, ptr %buffer, i32 40
  %2 = getelementptr inbounds i8, ptr %buffer, i32 48
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %call.i = tail call i64 @ktime_get() #8
  %timestamp_ns = getelementptr inbounds i8, ptr %buffer, i32 32
  %4 = ptrtoint ptr %timestamp_ns to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call.i, ptr %timestamp_ns, align 8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 256, ptr %data, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %8 = ptrtoint ptr %event_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %event_data, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 69
  %9 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tgid, align 4
  %process_tgid = getelementptr inbounds i8, ptr %buffer, i32 44
  %11 = ptrtoint ptr %process_tgid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %process_tgid, align 4
  %12 = zext i32 %ptrace_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %ptrace_id, label %if.end.cleanup_crit_edge [
    i32 16, label %if.then7
    i32 17, label %if.then17
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task9 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task9, align 8
  %pid10 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 68
  %17 = ptrtoint ptr %pid10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pid10, align 8
  %tracer_pid = getelementptr inbounds i8, ptr %buffer, i32 48
  %19 = ptrtoint ptr %tracer_pid to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tracer_pid, align 8
  %20 = load ptr, ptr %task9, align 8
  %tgid14 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 69
  %21 = ptrtoint ptr %tgid14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tgid14, align 4
  br label %if.end24

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %tracer_pid19 = getelementptr inbounds i8, ptr %buffer, i32 48
  %23 = ptrtoint ptr %tracer_pid19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %tracer_pid19, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then17, %if.then7
  %.sink = phi i32 [ 0, %if.then17 ], [ %22, %if.then7 ]
  %tracer_tgid21 = getelementptr inbounds i8, ptr %buffer, i32 52
  %24 = ptrtoint ptr %tracer_tgid21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %tracer_tgid21, align 4
  %25 = load i64, ptr @cn_proc_event_id, align 8
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %add.ptr.i, align 4
  %ack = getelementptr inbounds i8, ptr %buffer, i32 16
  %27 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ack, align 8
  %len = getelementptr inbounds i8, ptr %buffer, i32 20
  %28 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 40, ptr %len, align 4
  %flags = getelementptr inbounds i8, ptr %buffer, i32 22
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags, align 2
  %30 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %33, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !57
  %34 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %39, ptrtoint (ptr @local_event to i32)
  %40 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %40) #8
  %41 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu.i, align 4
  %arrayidx19.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx19.i, align 4
  %add20.i = add i32 %44, ptrtoint (ptr getelementptr inbounds (%struct.local_event, ptr @local_event, i32 0, i32 1) to i32)
  %45 = inttoptr i32 %add20.i to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %add21.i = add i32 %47, 1
  store i32 %add21.i, ptr %45, align 4
  %seq.i = getelementptr inbounds i8, ptr %buffer, i32 12
  %48 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %seq.i, align 4
  %49 = load i32, ptr %cpu.i, align 4
  %cpu26.i = getelementptr inbounds i8, ptr %buffer, i32 28
  %50 = ptrtoint ptr %cpu26.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %cpu26.i, align 4
  %call27.i = call i32 @cn_netlink_send(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 1, i32 noundef 2048) #8
  %51 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu.i, align 4
  %arrayidx38.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx38.i, align 4
  %add39.i = add i32 %54, ptrtoint (ptr @local_event to i32)
  %55 = inttoptr i32 %add39.i to ptr
  call fastcc void @local_lock_release(ptr noundef %55) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  %56 = call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i48.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i48.i to ptr
  %preempt_count.i.i49.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i49.i, align 4
  %sub.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i49.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @proc_comm_connector(ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [64 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buffer) #8
  %0 = call ptr @memset(ptr %buffer, i32 255, i32 32)
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @proc_event_num_listeners, i32 noundef 4) #8
  %1 = load volatile i32, ptr @proc_event_num_listeners, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr inbounds i8, ptr %buffer, i32 4
  %data = getelementptr inbounds i8, ptr %buffer, i32 24
  %event_data = getelementptr inbounds i8, ptr %buffer, i32 40
  %2 = getelementptr inbounds i8, ptr %buffer, i32 48
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %call.i = tail call i64 @ktime_get() #8
  %timestamp_ns = getelementptr inbounds i8, ptr %buffer, i32 32
  %4 = ptrtoint ptr %timestamp_ns to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call.i, ptr %timestamp_ns, align 8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 512, ptr %data, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %8 = ptrtoint ptr %event_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %event_data, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 69
  %9 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tgid, align 4
  %process_tgid = getelementptr inbounds i8, ptr %buffer, i32 44
  %11 = ptrtoint ptr %process_tgid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %process_tgid, align 4
  %comm = getelementptr inbounds i8, ptr %buffer, i32 48
  %call8 = call ptr @__get_task_comm(ptr noundef %comm, i32 noundef 16, ptr noundef %task) #8
  %12 = load i64, ptr @cn_proc_event_id, align 8
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %add.ptr.i, align 4
  %ack = getelementptr inbounds i8, ptr %buffer, i32 16
  %14 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ack, align 8
  %len = getelementptr inbounds i8, ptr %buffer, i32 20
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 40, ptr %len, align 4
  %flags = getelementptr inbounds i8, ptr %buffer, i32 22
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags, align 2
  %17 = call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %20, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !57
  %21 = call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %26, ptrtoint (ptr @local_event to i32)
  %27 = inttoptr i32 %add.i to ptr
  call fastcc void @local_lock_acquire(ptr noundef %27) #8
  %28 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i, align 4
  %arrayidx19.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx19.i, align 4
  %add20.i = add i32 %31, ptrtoint (ptr getelementptr inbounds (%struct.local_event, ptr @local_event, i32 0, i32 1) to i32)
  %32 = inttoptr i32 %add20.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add21.i = add i32 %34, 1
  store i32 %add21.i, ptr %32, align 4
  %seq.i = getelementptr inbounds i8, ptr %buffer, i32 12
  %35 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %seq.i, align 4
  %36 = load i32, ptr %cpu.i, align 4
  %cpu26.i = getelementptr inbounds i8, ptr %buffer, i32 28
  %37 = ptrtoint ptr %cpu26.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %cpu26.i, align 4
  %call27.i = call i32 @cn_netlink_send(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 1, i32 noundef 2048) #8
  %38 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i, align 4
  %arrayidx38.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx38.i, align 4
  %add39.i = add i32 %41, ptrtoint (ptr @local_event to i32)
  %42 = inttoptr i32 %add39.i to ptr
  call fastcc void @local_lock_release(ptr noundef %42) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  %43 = call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i48.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i48.i to ptr
  %preempt_count.i.i49.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i49.i, align 4
  %sub.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i49.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buffer) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @proc_coredump_connector(ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [64 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buffer) #8
  %0 = call ptr @memset(ptr %buffer, i32 255, i32 32)
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @proc_event_num_listeners, i32 noundef 4) #8
  %1 = load volatile i32, ptr @proc_event_num_listeners, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr inbounds i8, ptr %buffer, i32 4
  %data = getelementptr inbounds i8, ptr %buffer, i32 24
  %event_data = getelementptr inbounds i8, ptr %buffer, i32 40
  %2 = getelementptr inbounds i8, ptr %buffer, i32 48
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %call.i44 = tail call i64 @ktime_get() #8
  %timestamp_ns = getelementptr inbounds i8, ptr %buffer, i32 32
  %4 = ptrtoint ptr %timestamp_ns to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call.i44, ptr %timestamp_ns, align 8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1073741824, ptr %data, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %8 = ptrtoint ptr %event_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %event_data, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 69
  %9 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tgid, align 4
  %process_tgid = getelementptr inbounds i8, ptr %buffer, i32 44
  %11 = ptrtoint ptr %process_tgid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %process_tgid, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !55
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %thread_pid.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 78
  %16 = ptrtoint ptr %thread_pid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %thread_pid.i, align 16
  %cmp.i.not = icmp eq ptr %17, null
  br i1 %cmp.i.not, label %rcu_read_lock.exit.if.end24_crit_edge, label %if.then7

rcu_read_lock.exit.if.end24_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then7:                                         ; preds = %rcu_read_lock.exit
  %real_parent = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 71
  %18 = ptrtoint ptr %real_parent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %real_parent, align 4
  %call9 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true, label %if.then7.do.end18_crit_edge

if.then7.do.end18_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

land.lhs.true:                                    ; preds = %if.then7
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end18_crit_edge, label %land.lhs.true13

land.lhs.true.do.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

land.lhs.true13:                                  ; preds = %land.lhs.true
  %.b43 = load i1, ptr @proc_coredump_connector.__warned, align 1
  br i1 %.b43, label %land.lhs.true13.do.end18_crit_edge, label %if.then15

land.lhs.true13.do.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @proc_coredump_connector.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 262, ptr noundef nonnull @.str.2) #8
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %land.lhs.true13.do.end18_crit_edge, %land.lhs.true.do.end18_crit_edge, %if.then7.do.end18_crit_edge
  %pid20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid20, align 8
  %parent_pid = getelementptr inbounds i8, ptr %buffer, i32 48
  %22 = ptrtoint ptr %parent_pid to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %parent_pid, align 8
  %tgid22 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 69
  %23 = ptrtoint ptr %tgid22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tgid22, align 4
  %parent_tgid = getelementptr inbounds i8, ptr %buffer, i32 52
  %25 = ptrtoint ptr %parent_tgid to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %parent_tgid, align 4
  br label %if.end24

if.end24:                                         ; preds = %do.end18, %rcu_read_lock.exit.if.end24_crit_edge
  %call.i45 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i45, label %if.end24.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i48

if.end24.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i48:                                ; preds = %if.end24
  %call1.i46 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i50

land.lhs.true.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i50:                               ; preds = %land.lhs.true.i48
  %.b4.i49 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49, label %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, label %if.then.i51

land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i51:                                      ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i51, %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, %if.end24.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !56
  %26 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i.i52 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i52 to ptr
  %preempt_count.i.i.i.i53 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i53, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i53, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %30 = load i64, ptr @cn_proc_event_id, align 8
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %30, ptr %add.ptr.i, align 4
  %ack = getelementptr inbounds i8, ptr %buffer, i32 16
  %32 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %ack, align 8
  %len = getelementptr inbounds i8, ptr %buffer, i32 20
  %33 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 40, ptr %len, align 4
  %flags = getelementptr inbounds i8, ptr %buffer, i32 22
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags, align 2
  %35 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %38, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !57
  %39 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %44, ptrtoint (ptr @local_event to i32)
  %45 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %45) #8
  %46 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i, align 4
  %arrayidx19.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx19.i, align 4
  %add20.i = add i32 %49, ptrtoint (ptr getelementptr inbounds (%struct.local_event, ptr @local_event, i32 0, i32 1) to i32)
  %50 = inttoptr i32 %add20.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add21.i = add i32 %52, 1
  store i32 %add21.i, ptr %50, align 4
  %seq.i = getelementptr inbounds i8, ptr %buffer, i32 12
  %53 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %seq.i, align 4
  %54 = load i32, ptr %cpu.i, align 4
  %cpu26.i = getelementptr inbounds i8, ptr %buffer, i32 28
  %55 = ptrtoint ptr %cpu26.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %cpu26.i, align 4
  %call27.i = call i32 @cn_netlink_send(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 1, i32 noundef 2048) #8
  %56 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu.i, align 4
  %arrayidx38.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx38.i, align 4
  %add39.i = add i32 %59, ptrtoint (ptr @local_event to i32)
  %60 = inttoptr i32 %add39.i to ptr
  call fastcc void @local_lock_release(ptr noundef %60) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  %61 = call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i48.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i48.i to ptr
  %preempt_count.i.i49.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i49.i, align 4
  %sub.i.i = add i32 %64, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i49.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @proc_exit_connector(ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [64 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buffer) #8
  %0 = call ptr @memset(ptr %buffer, i32 255, i32 32)
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @proc_event_num_listeners, i32 noundef 4) #8
  %1 = load volatile i32, ptr @proc_event_num_listeners, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr inbounds i8, ptr %buffer, i32 4
  %data = getelementptr inbounds i8, ptr %buffer, i32 24
  %event_data = getelementptr inbounds i8, ptr %buffer, i32 40
  %2 = getelementptr inbounds i8, ptr %buffer, i32 56
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %2, align 8
  %call.i52 = tail call i64 @ktime_get() #8
  %timestamp_ns = getelementptr inbounds i8, ptr %buffer, i32 32
  %4 = ptrtoint ptr %timestamp_ns to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call.i52, ptr %timestamp_ns, align 8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -2147483648, ptr %data, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %8 = ptrtoint ptr %event_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %event_data, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 69
  %9 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tgid, align 4
  %process_tgid = getelementptr inbounds i8, ptr %buffer, i32 44
  %11 = ptrtoint ptr %process_tgid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %process_tgid, align 4
  %exit_code = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 58
  %12 = ptrtoint ptr %exit_code to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %exit_code, align 16
  %exit_code7 = getelementptr inbounds i8, ptr %buffer, i32 48
  %14 = ptrtoint ptr %exit_code7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %exit_code7, align 8
  %exit_signal = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 59
  %15 = ptrtoint ptr %exit_signal to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %exit_signal, align 4
  %exit_signal9 = getelementptr inbounds i8, ptr %buffer, i32 52
  %17 = ptrtoint ptr %exit_signal9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %exit_signal9, align 4
  %18 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !55
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %thread_pid.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 78
  %22 = ptrtoint ptr %thread_pid.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %thread_pid.i, align 16
  %cmp.i.not = icmp eq ptr %23, null
  br i1 %cmp.i.not, label %rcu_read_lock.exit.if.end28_crit_edge, label %if.then11

rcu_read_lock.exit.if.end28_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then11:                                        ; preds = %rcu_read_lock.exit
  %real_parent = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 71
  %24 = ptrtoint ptr %real_parent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %real_parent, align 4
  %call13 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true, label %if.then11.do.end22_crit_edge

if.then11.do.end22_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

land.lhs.true:                                    ; preds = %if.then11
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.do.end22_crit_edge, label %land.lhs.true17

land.lhs.true.do.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

land.lhs.true17:                                  ; preds = %land.lhs.true
  %.b51 = load i1, ptr @proc_exit_connector.__warned, align 1
  br i1 %.b51, label %land.lhs.true17.do.end22_crit_edge, label %if.then19

land.lhs.true17.do.end22_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @proc_exit_connector.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 297, ptr noundef nonnull @.str.2) #8
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %land.lhs.true17.do.end22_crit_edge, %land.lhs.true.do.end22_crit_edge, %if.then11.do.end22_crit_edge
  %pid24 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid24, align 8
  %parent_pid = getelementptr inbounds i8, ptr %buffer, i32 56
  %28 = ptrtoint ptr %parent_pid to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %parent_pid, align 8
  %tgid26 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 69
  %29 = ptrtoint ptr %tgid26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tgid26, align 4
  %parent_tgid = getelementptr inbounds i8, ptr %buffer, i32 60
  %31 = ptrtoint ptr %parent_tgid to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %parent_tgid, align 4
  br label %if.end28

if.end28:                                         ; preds = %do.end22, %rcu_read_lock.exit.if.end28_crit_edge
  %call.i53 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i53, label %if.end28.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i56

if.end28.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i56:                                ; preds = %if.end28
  %call1.i54 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54)
  %tobool.not.i55 = icmp eq i32 %call1.i54, 0
  br i1 %tobool.not.i55, label %land.lhs.true.i56.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i58

land.lhs.true.i56.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i58:                               ; preds = %land.lhs.true.i56
  %.b4.i57 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i57, label %land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge, label %if.then.i59

land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i59:                                      ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i59, %land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i56.rcu_read_unlock.exit_crit_edge, %if.end28.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !56
  %32 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i.i60 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i60 to ptr
  %preempt_count.i.i.i.i61 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i61, align 4
  %sub.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i61, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %36 = load i64, ptr @cn_proc_event_id, align 8
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %36, ptr %add.ptr.i, align 4
  %ack = getelementptr inbounds i8, ptr %buffer, i32 16
  %38 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %ack, align 8
  %len = getelementptr inbounds i8, ptr %buffer, i32 20
  %39 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 40, ptr %len, align 4
  %flags = getelementptr inbounds i8, ptr %buffer, i32 22
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %flags, align 2
  %41 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %44, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !57
  %45 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %50, ptrtoint (ptr @local_event to i32)
  %51 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %51) #8
  %52 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cpu.i, align 4
  %arrayidx19.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx19.i, align 4
  %add20.i = add i32 %55, ptrtoint (ptr getelementptr inbounds (%struct.local_event, ptr @local_event, i32 0, i32 1) to i32)
  %56 = inttoptr i32 %add20.i to ptr
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %add21.i = add i32 %58, 1
  store i32 %add21.i, ptr %56, align 4
  %seq.i = getelementptr inbounds i8, ptr %buffer, i32 12
  %59 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %seq.i, align 4
  %60 = load i32, ptr %cpu.i, align 4
  %cpu26.i = getelementptr inbounds i8, ptr %buffer, i32 28
  %61 = ptrtoint ptr %cpu26.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %cpu26.i, align 4
  %call27.i = call i32 @cn_netlink_send(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 1, i32 noundef 2048) #8
  %62 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu.i, align 4
  %arrayidx38.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx38.i, align 4
  %add39.i = add i32 %65, ptrtoint (ptr @local_event to i32)
  %66 = inttoptr i32 %add39.i to ptr
  call fastcc void @local_lock_release(ptr noundef %66) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  %67 = call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i48.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i48.i to ptr
  %preempt_count.i.i49.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i49.i, align 4
  %sub.i.i = add i32 %70, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i49.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buffer) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cn_proc_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cn_add_callback(ptr noundef nonnull @cn_proc_event_id, ptr noundef nonnull @.str.11, ptr noundef nonnull @cn_proc_mcast_ctl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_acquire(ptr noundef %l) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef %l, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@local_lock_acquire, %__here) to i32)) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %__here.if.end36_crit_edge

__here.if.end36_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true:                                    ; preds = %__here
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %land.lhs.true.if.end36_crit_edge, label %do.end, !prof !60

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 @debug_locks_off() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.end.if.end36_crit_edge, label %land.lhs.true5

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %3 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end36_crit_edge

land.lhs.true5.if.end36_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 30, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #8
  br label %if.end36

if.end36:                                         ; preds = %do.end19, %land.lhs.true5.if.end36_crit_edge, %do.end.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %__here.if.end36_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %owner39 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner39 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %owner39, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cn_netlink_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !60

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10) #8
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cn_add_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cn_proc_mcast_ctl(ptr nocapture noundef readonly %msg, ptr noundef %nsp) #0 align 64 {
entry:
  %buffer.i = alloca [64 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.cn_msg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %1)
  %cmp.not = icmp eq i16 %1, 4
  br i1 %cmp.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ns, align 4
  %cmp3.not = icmp eq ptr %9, @init_user_ns
  br i1 %cmp3.not, label %lor.lhs.false, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %call.i = tail call ptr @task_active_pid_ns(ptr noundef %5) #8
  %cmp.i = icmp eq ptr %call.i, @init_pid_ns
  br i1 %cmp.i, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = tail call zeroext i1 @__netlink_ns_capable(ptr noundef %nsp, ptr noundef nonnull @init_user_ns, i32 noundef 12) #8
  br i1 %call10, label %if.end12, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end12:                                         ; preds = %if.end9
  %data = getelementptr inbounds %struct.cn_msg, ptr %msg, i32 0, i32 5
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %11, label %if.end12.out_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
  ]

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb:                                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @proc_event_num_listeners, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @proc_event_num_listeners, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @proc_event_num_listeners, ptr nonnull @proc_event_num_listeners, i32 1, ptr nonnull elementtype(i32) @proc_event_num_listeners) #8, !srcloc !61
  br label %out

sw.bb13:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @proc_event_num_listeners, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @proc_event_num_listeners, i32 1, i32 3, i32 1) #8
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @proc_event_num_listeners, ptr nonnull @proc_event_num_listeners, i32 1, ptr nonnull elementtype(i32) @proc_event_num_listeners) #8, !srcloc !62
  br label %out

out:                                              ; preds = %sw.bb13, %sw.bb, %if.end12.out_crit_edge, %if.end9.out_crit_edge
  %err.0 = phi i32 [ 0, %sw.bb13 ], [ 0, %sw.bb ], [ 1, %if.end9.out_crit_edge ], [ 22, %if.end12.out_crit_edge ]
  %ack = getelementptr inbounds %struct.cn_msg, ptr %msg, i32 0, i32 2
  %15 = ptrtoint ptr %ack to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ack, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buffer.i) #8
  %17 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -1, ptr %buffer.i, align 8, !annotation !59
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @proc_event_num_listeners, i32 noundef 4) #8
  %18 = load volatile i32, ptr @proc_event_num_listeners, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i19 = icmp slt i32 %18, 1
  br i1 %cmp.i19, label %out.cn_proc_ack.exit_crit_edge, label %if.end.i

out.cn_proc_ack.exit_crit_edge:                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cn_proc_ack.exit

if.end.i:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr inbounds i8, ptr %buffer.i, i32 4
  %data.i = getelementptr inbounds i8, ptr %buffer.i, i32 24
  %event_data.i = getelementptr inbounds i8, ptr %buffer.i, i32 40
  %19 = call ptr @memset(ptr %event_data.i, i32 0, i32 24)
  %seq.i = getelementptr inbounds i8, ptr %buffer.i, i32 12
  %call.i.i20 = tail call i64 @ktime_get() #8
  %timestamp_ns.i = getelementptr inbounds i8, ptr %buffer.i, i32 32
  %20 = ptrtoint ptr %timestamp_ns.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call.i.i20, ptr %timestamp_ns.i, align 8
  %cpu.i = getelementptr inbounds i8, ptr %buffer.i, i32 28
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %data.i, align 8
  %22 = ptrtoint ptr %event_data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %err.0, ptr %event_data.i, align 8
  %23 = load i64, ptr @cn_proc_event_id, align 8
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %add.ptr.i.i, align 4
  %add.i = add i32 %16, 1
  %ack.i = getelementptr inbounds i8, ptr %buffer.i, i32 16
  %25 = ptrtoint ptr %ack.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %ack.i, align 8
  %len.i = getelementptr inbounds i8, ptr %buffer.i, i32 20
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 40, ptr %len.i, align 4
  %flags.i = getelementptr inbounds i8, ptr %buffer.i, i32 22
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i, align 2
  %28 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %31, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !57
  %32 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %37, ptrtoint (ptr @local_event to i32)
  %38 = inttoptr i32 %add.i.i to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %38) #8
  %39 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu.i.i, align 4
  %arrayidx19.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx19.i.i, align 4
  %add20.i.i = add i32 %42, ptrtoint (ptr getelementptr inbounds (%struct.local_event, ptr @local_event, i32 0, i32 1) to i32)
  %43 = inttoptr i32 %add20.i.i to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add21.i.i = add i32 %45, 1
  store i32 %add21.i.i, ptr %43, align 4
  %46 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %seq.i, align 4
  %47 = load i32, ptr %cpu.i.i, align 4
  %48 = ptrtoint ptr %cpu.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %cpu.i, align 4
  %call27.i.i = call i32 @cn_netlink_send(ptr noundef %add.ptr.i.i, i32 noundef 0, i32 noundef 1, i32 noundef 2048) #8
  %49 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu.i.i, align 4
  %arrayidx38.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx38.i.i, align 4
  %add39.i.i = add i32 %52, ptrtoint (ptr @local_event to i32)
  %53 = inttoptr i32 %add39.i.i to ptr
  call fastcc void @local_lock_release(ptr noundef %53) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  %54 = call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i48.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i48.i.i to ptr
  %preempt_count.i.i49.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i49.i.i, align 4
  %sub.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i49.i.i, align 4
  br label %cn_proc_ack.exit

cn_proc_ack.exit:                                 ; preds = %if.end.i, %out.cn_proc_ack.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buffer.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cn_proc_ack.exit, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__netlink_ns_capable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16, !17, !19, !21, !22, !23, !25, !26, !28, !30, !32, !33, !34, !36, !38, !40, !41, !42, !43}
!llvm.named.register.sp = !{!45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/connector/cn_proc.c", i32 48, i32 10}
!2 = !{ptr @local_event, !3, !"local_event", i1 false, i1 false}
!3 = !{!"../drivers/connector/cn_proc.c", i32 47, i32 8}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../drivers/connector/cn_proc.c", i32 85, i32 11}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../drivers/connector/cn_proc.c", i32 140, i32 9}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../drivers/connector/cn_proc.c", i32 262, i32 12}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../drivers/connector/cn_proc.c", i32 297, i32 12}
!14 = !{ptr @__initcall__kmod_cn_proc__471_403_cn_proc_init6, !15, !"__initcall__kmod_cn_proc__471_403_cn_proc_init6", i1 false, i1 false}
!15 = !{!"../drivers/connector/cn_proc.c", i32 403, i32 1}
!16 = !{ptr @__pcpu_unique_local_event, !3, !"__pcpu_unique_local_event", i1 false, i1 false}
!17 = !{ptr @proc_event_num_listeners, !18, !"proc_event_num_listeners", i1 false, i1 false}
!18 = !{!"../drivers/connector/cn_proc.c", i32 39, i32 17}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cn_proc_event_id, !27, !"cn_proc_event_id", i1 false, i1 false}
!27 = !{!"../drivers/connector/cn_proc.c", i32 40, i32 21}
!28 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/connector/cn_proc.c", i32 55, i32 13}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/local_lock_internal.h", i32 30, i32 2}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/connector/cn_proc.c", i32 395, i32 7}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/connector/cn_proc.c", i32 398, i32 3}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @cn_proc_init._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @cn_proc_init._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../drivers/connector/cn_proc.c", i32 360, i32 7}
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
!55 = !{i64 2149361086}
!56 = !{i64 2149361352}
!57 = !{i64 2156872091}
!58 = !{i64 2156880203}
!59 = !{!"auto-init"}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i64 2148218868, i64 2148218894, i64 2148218923, i64 2148218957, i64 2148218988, i64 2148219011}
!62 = !{i64 2148221333, i64 2148221359, i64 2148221388, i64 2148221422, i64 2148221453, i64 2148221476}
