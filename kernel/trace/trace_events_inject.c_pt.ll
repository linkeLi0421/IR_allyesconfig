; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_events_inject.c_pt.bc'
source_filename = "../kernel/trace/trace_events_inject.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.95, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.96, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.97, ptr, %struct.address_space, %struct.list_head, %union.anon.98, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.95 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.96 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.97 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.98 = type { ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.74, %struct.trace_event, ptr, ptr, %union.anon.75, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.74 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%union.anon.75 = type { ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.ftrace_event_field = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32 }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.59, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.59 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@event_inject_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @event_inject_read, ptr @event_inject_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_open_generic, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@event_mutex = external dso_local global %struct.mutex, align 4
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"STATIC STRING CAN NOT BE INJECTED\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@rcu_sched_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_sched.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"rcu_read_lock_sched() used illegally while idle\00", [48 x i8] zeroinitializer }, align 32
@rcu_read_unlock_sched.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"rcu_read_unlock_sched() used illegally while idle\00", [46 x i8] zeroinitializer }, align 32
@__llvm_gcov_ctr = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.5 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.6 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.7 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.8 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.9 = internal global [17 x i64] zeroinitializer
@__llvm_gcov_ctr.10 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.11 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.12 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.13 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.14 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.15 = internal global [29 x i64] zeroinitializer
@__llvm_gcov_ctr.16 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.17 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.22 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.23 = internal global [27 x i64] zeroinitializer
@__llvm_gcov_ctr.24 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.25 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.26 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.27 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.28 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.29 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.30 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.31 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.32 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.33 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.34 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.35 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.36 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.37 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.38 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.39 = internal global [1 x i64] zeroinitializer
@0 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_events_inject.gcda\00", [57 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [36 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 -574291511, i32 1039937912 }, %emit_function_args_ty { i32 1, i32 2067794499, i32 1039937912 }, %emit_function_args_ty { i32 2, i32 -10115036, i32 1039937912 }, %emit_function_args_ty { i32 3, i32 1781672997, i32 1039937912 }, %emit_function_args_ty { i32 4, i32 -1381026421, i32 1039937912 }, %emit_function_args_ty { i32 5, i32 454037826, i32 1039937912 }, %emit_function_args_ty { i32 6, i32 -2002661382, i32 1039937912 }, %emit_function_args_ty { i32 7, i32 287536606, i32 1039937912 }, %emit_function_args_ty { i32 8, i32 -238665279, i32 1039937912 }, %emit_function_args_ty { i32 9, i32 -2126785177, i32 1039937912 }, %emit_function_args_ty { i32 10, i32 1249662737, i32 1039937912 }, %emit_function_args_ty { i32 11, i32 -542051618, i32 1039937912 }, %emit_function_args_ty { i32 12, i32 723773187, i32 1039937912 }, %emit_function_args_ty { i32 13, i32 2036790104, i32 1039937912 }, %emit_function_args_ty { i32 14, i32 616928923, i32 1039937912 }, %emit_function_args_ty { i32 15, i32 436087400, i32 1039937912 }, %emit_function_args_ty { i32 16, i32 1757908631, i32 1039937912 }, %emit_function_args_ty { i32 17, i32 -400554785, i32 1039937912 }, %emit_function_args_ty { i32 18, i32 -1782918348, i32 1039937912 }, %emit_function_args_ty { i32 19, i32 795548855, i32 1039937912 }, %emit_function_args_ty { i32 20, i32 727036892, i32 1039937912 }, %emit_function_args_ty { i32 21, i32 1841983822, i32 1039937912 }, %emit_function_args_ty { i32 22, i32 1624494247, i32 1039937912 }, %emit_function_args_ty { i32 23, i32 -963894156, i32 1039937912 }, %emit_function_args_ty { i32 24, i32 288547376, i32 1039937912 }, %emit_function_args_ty { i32 25, i32 835031753, i32 1039937912 }, %emit_function_args_ty { i32 26, i32 -1846855200, i32 1039937912 }, %emit_function_args_ty { i32 27, i32 81157262, i32 1039937912 }, %emit_function_args_ty { i32 28, i32 -923041819, i32 1039937912 }, %emit_function_args_ty { i32 29, i32 -1536978297, i32 1039937912 }, %emit_function_args_ty { i32 30, i32 1682972219, i32 1039937912 }, %emit_function_args_ty { i32 31, i32 -1567486560, i32 1039937912 }, %emit_function_args_ty { i32 32, i32 -1554398684, i32 1039937912 }, %emit_function_args_ty { i32 33, i32 -1111025999, i32 1039937912 }, %emit_function_args_ty { i32 34, i32 -1111330171, i32 1039937912 }, %emit_function_args_ty { i32 35, i32 1333844298, i32 1039937912 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [36 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.5 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.6 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.7 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.8 }, %emit_arcs_args_ty { i32 17, ptr @__llvm_gcov_ctr.9 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.10 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.11 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.12 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.13 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.14 }, %emit_arcs_args_ty { i32 29, ptr @__llvm_gcov_ctr.15 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.16 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.17 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.18 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.19 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.20 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.21 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.22 }, %emit_arcs_args_ty { i32 27, ptr @__llvm_gcov_ctr.23 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.24 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.25 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.26 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.27 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.28 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.29 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.30 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.31 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.32 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.33 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.34 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.35 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.36 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.37 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.38 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.39 }]
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 39, i64 45]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 92]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"event_inject_fops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 330, i32 30 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 244, i32 14 }
@___asan_gen_.50 = private constant [38 x i8] c"../kernel/trace/trace_events_inject.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 185, i32 13 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 787, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 805, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @event_inject_fops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@1 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_inject_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @event_inject_read(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %buf, i32 noundef %size, ptr nocapture noundef readnone %ppos) #0 align 64 !dbg !26 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !29
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr, align 8
  ret i32 -1, !dbg !30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_inject_write(ptr nocapture noundef readonly %filp, ptr noundef %ubuf, i32 noundef %cnt, ptr nocapture noundef %ppos) #1 align 64 !dbg !31 {
entry:
  %fbuffer.i = alloca %struct.trace_event_buffer, align 4
  %val.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13, !dbg !32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %cnt), !dbg !33
  %cmp = icmp ugt i32 %cnt, 4095, !dbg !33
  br i1 %cmp, label %if.then, label %if.end, !dbg !34

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !35
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.5, align 16, !dbg !35
  %0 = add i64 %gcov_ctr, 1, !dbg !35
  store i64 %0, ptr @__llvm_gcov_ctr.5, align 16, !dbg !35
  br label %cleanup, !dbg !35

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @memdup_user_nul(ptr noundef %ubuf, i32 noundef %cnt) #14, !dbg !36
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.6, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.6, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr), !dbg !37
  br i1 %cmp.i, label %if.then4, label %if.end6, !dbg !41

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !42
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 1), align 8, !dbg !42
  %2 = add i64 %gcov_ctr24, 1, !dbg !42
  store i64 %2, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 1), align 8, !dbg !42
  %gcov_ctr.i41 = load i64, ptr @__llvm_gcov_ctr.7, align 8
  %3 = add i64 %gcov_ctr.i41, 1
  store i64 %3, ptr @__llvm_gcov_ctr.7, align 8
  %4 = ptrtoint ptr %call2 to i32, !dbg !43
  br label %cleanup, !dbg !46

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @strim(ptr noundef %call2) #14, !dbg !47
  tail call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #14, !dbg !48
  %gcov_ctr.i42 = load i64, ptr @__llvm_gcov_ctr.8, align 8
  %5 = add i64 %gcov_ctr.i42, 1
  store i64 %5, ptr @__llvm_gcov_ctr.8, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.11, align 8
  %6 = add i64 %gcov_ctr.i.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.11, align 8
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2, !dbg !49
  %7 = ptrtoint ptr %f_inode.i.i to i32, !dbg !49
  call void @__asan_load4_noabort(i32 %7), !dbg !49
  %8 = load ptr, ptr %f_inode.i.i, align 8, !dbg !49
  %i_private.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 54, !dbg !56
  %9 = ptrtoint ptr %i_private.i to i32, !dbg !56
  call void @__asan_load4_noabort(i32 %9), !dbg !56
  %10 = load volatile ptr, ptr %i_private.i, align 4, !dbg !56
  %tobool.not = icmp eq ptr %10, null, !dbg !57
  br i1 %tobool.not, label %if.end6.if.end15_crit_edge, label %if.then9, !dbg !57

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13, !dbg !57
  br label %if.end15, !dbg !57

if.then9:                                         ; preds = %if.end6
  %event_call = getelementptr inbounds %struct.trace_event_file, ptr %10, i32 0, i32 1, !dbg !58
  %11 = ptrtoint ptr %event_call to i32, !dbg !58
  call void @__asan_load4_noabort(i32 %11), !dbg !58
  %12 = load ptr, ptr %event_call, align 4, !dbg !58
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.18, align 16
  %13 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %13, ptr @__llvm_gcov_ctr.18, align 16
  %class.i.i.i.i = getelementptr inbounds %struct.trace_event_call, ptr %12, i32 0, i32 1, !dbg !59
  %14 = ptrtoint ptr %class.i.i.i.i to i32, !dbg !59
  call void @__asan_load4_noabort(i32 %14), !dbg !59
  %15 = load ptr, ptr %class.i.i.i.i, align 4, !dbg !59
  %get_fields.i.i.i.i = getelementptr inbounds %struct.trace_event_class, ptr %15, i32 0, i32 5, !dbg !69
  %16 = ptrtoint ptr %get_fields.i.i.i.i to i32, !dbg !69
  call void @__asan_load4_noabort(i32 %16), !dbg !69
  %17 = load ptr, ptr %get_fields.i.i.i.i, align 4, !dbg !69
  %tobool.not.i.i.i.i = icmp eq ptr %17, null, !dbg !70
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i, !dbg !71

if.then.i.i.i.i:                                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13, !dbg !72
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.20, align 8, !dbg !72
  %18 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !72
  store i64 %18, ptr @__llvm_gcov_ctr.20, align 8, !dbg !72
  %fields.i.i.i.i = getelementptr inbounds %struct.trace_event_class, ptr %15, i32 0, i32 6, !dbg !73
  br label %trace_get_fields.exit.i.i.i, !dbg !74

if.end.i.i.i.i:                                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13, !dbg !75
  %gcov_ctr4.i.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 1), align 8, !dbg !75
  %19 = add i64 %gcov_ctr4.i.i.i.i, 1, !dbg !75
  store i64 %19, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 1), align 8, !dbg !75
  %20 = ptrtoint ptr %class.i.i.i.i to i32, !dbg !76
  call void @__asan_load4_noabort(i32 %20), !dbg !76
  %21 = load ptr, ptr %class.i.i.i.i, align 4, !dbg !76
  %get_fields3.i.i.i.i = getelementptr inbounds %struct.trace_event_class, ptr %21, i32 0, i32 5, !dbg !77
  %22 = ptrtoint ptr %get_fields3.i.i.i.i to i32, !dbg !77
  call void @__asan_load4_noabort(i32 %22), !dbg !77
  %23 = load ptr, ptr %get_fields3.i.i.i.i, align 4, !dbg !77
  %call.i.i.i.i = tail call ptr %23(ptr noundef %12) #14, !dbg !75
  br label %trace_get_fields.exit.i.i.i, !dbg !78

trace_get_fields.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %call.i.i.i.i, %if.end.i.i.i.i ], [ %fields.i.i.i.i, %if.then.i.i.i.i ], !dbg !79
  %24 = ptrtoint ptr %retval.0.i.i.i.i to i32, !dbg !80
  call void @__asan_load4_noabort(i32 %24), !dbg !80
  %field.021.i.i.i = load ptr, ptr %retval.0.i.i.i.i, align 4, !dbg !80
  %cmp.not22.i.i.i = icmp eq ptr %field.021.i.i.i, %retval.0.i.i.i.i, !dbg !80
  br i1 %cmp.not22.i.i.i, label %trace_get_fields.exit.i.i.i.trace_get_entry_size.exit.i.i_crit_edge, label %trace_get_fields.exit.i.i.i.for.body.i.i.i_crit_edge, !dbg !80

trace_get_fields.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %trace_get_fields.exit.i.i.i
  br label %for.body.i.i.i, !dbg !80

trace_get_fields.exit.i.i.i.trace_get_entry_size.exit.i.i_crit_edge: ; preds = %trace_get_fields.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !80
  br label %trace_get_entry_size.exit.i.i, !dbg !80

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %trace_get_fields.exit.i.i.i.for.body.i.i.i_crit_edge
  %field.024.i.i.i = phi ptr [ %field.0.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %field.021.i.i.i, %trace_get_fields.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %size.023.i.i.i = phi i32 [ %size.1.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %trace_get_fields.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %size2.i.i.i = getelementptr inbounds %struct.ftrace_event_field, ptr %field.024.i.i.i, i32 0, i32 5, !dbg !81
  %25 = ptrtoint ptr %size2.i.i.i to i32, !dbg !81
  call void @__asan_load4_noabort(i32 %25), !dbg !81
  %26 = load i32, ptr %size2.i.i.i, align 4, !dbg !81
  %offset.i.i.i = getelementptr inbounds %struct.ftrace_event_field, ptr %field.024.i.i.i, i32 0, i32 4, !dbg !82
  %27 = ptrtoint ptr %offset.i.i.i to i32, !dbg !82
  call void @__asan_load4_noabort(i32 %27), !dbg !82
  %28 = load i32, ptr %offset.i.i.i, align 4, !dbg !82
  %add.i.i.i = add i32 %28, %26, !dbg !83
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %size.023.i.i.i), !dbg !84
  %cmp3.i.i.i = icmp sgt i32 %add.i.i.i, %size.023.i.i.i, !dbg !84
  br i1 %cmp3.i.i.i, label %if.then.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, !dbg !85

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !85
  br label %for.inc.i.i.i, !dbg !85

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !86
  %gcov_ctr12.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !86
  %29 = add i64 %gcov_ctr12.i.i.i, 1, !dbg !86
  store i64 %29, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !86
  br label %for.inc.i.i.i, !dbg !87

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %size.1.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ %size.023.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge ], !dbg !88
  %gcov_ctr13.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 2), align 16, !dbg !80
  %30 = add i64 %gcov_ctr13.i.i.i, 1, !dbg !80
  store i64 %30, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 2), align 16, !dbg !80
  %31 = ptrtoint ptr %field.024.i.i.i to i32, !dbg !80
  call void @__asan_load4_noabort(i32 %31), !dbg !80
  %field.0.i.i.i = load ptr, ptr %field.024.i.i.i, align 4, !dbg !80
  %cmp.not.i.i.i = icmp eq ptr %field.0.i.i.i, %retval.0.i.i.i.i, !dbg !80
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.trace_get_entry_size.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, !dbg !80, !llvm.loop !89

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !80
  br label %for.body.i.i.i, !dbg !80

for.inc.i.i.i.trace_get_entry_size.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !80
  br label %trace_get_entry_size.exit.i.i, !dbg !80

trace_get_entry_size.exit.i.i:                    ; preds = %for.inc.i.i.i.trace_get_entry_size.exit.i.i_crit_edge, %trace_get_fields.exit.i.i.i.trace_get_entry_size.exit.i.i_crit_edge
  %size.0.lcssa.i.i.i = phi i32 [ 0, %trace_get_fields.exit.i.i.i.trace_get_entry_size.exit.i.i_crit_edge ], [ %size.1.i.i.i, %for.inc.i.i.i.trace_get_entry_size.exit.i.i_crit_edge ], !dbg !88
  %add.i.i = add i32 %size.0.lcssa.i.i.i, 1, !dbg !91
  %gcov_ctr.i61.i.i = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %32 = add i64 %gcov_ctr.i61.i.i, 1
  store i64 %32, ptr @__llvm_gcov_ctr.19, align 8
  %gcov_ctr12.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 3), align 8, !dbg !92
  %33 = add i64 %gcov_ctr12.i.i.i.i, 1, !dbg !92
  store i64 %33, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 3), align 8, !dbg !92
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #15, !dbg !98
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null, !dbg !99
  br i1 %tobool.not.i.i, label %trace_alloc_entry.exit.thread.i, label %if.end.i.i, !dbg !100

trace_alloc_entry.exit.thread.i:                  ; preds = %trace_get_entry_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !101
  %gcov_ctr.i.i43 = load i64, ptr @__llvm_gcov_ctr.12, align 16, !dbg !101
  %34 = add i64 %gcov_ctr.i.i43, 1, !dbg !101
  store i64 %34, ptr @__llvm_gcov_ctr.12, align 16, !dbg !101
  %gcov_ctr.i44 = load i64, ptr @__llvm_gcov_ctr.9, align 16, !dbg !102
  %35 = add i64 %gcov_ctr.i44, 1, !dbg !102
  store i64 %35, ptr @__llvm_gcov_ctr.9, align 16, !dbg !102
  br label %if.then12, !dbg !102

if.end.i.i:                                       ; preds = %trace_get_entry_size.exit.i.i
  %36 = ptrtoint ptr %class.i.i.i.i to i32, !dbg !103
  call void @__asan_load4_noabort(i32 %36), !dbg !103
  %37 = load ptr, ptr %class.i.i.i.i, align 4, !dbg !103
  %get_fields.i.i.i = getelementptr inbounds %struct.trace_event_class, ptr %37, i32 0, i32 5, !dbg !105
  %38 = ptrtoint ptr %get_fields.i.i.i to i32, !dbg !105
  call void @__asan_load4_noabort(i32 %38), !dbg !105
  %39 = load ptr, ptr %get_fields.i.i.i, align 4, !dbg !105
  %tobool.not.i.i.i = icmp eq ptr %39, null, !dbg !106
  br i1 %tobool.not.i.i.i, label %if.then.i66.i.i, label %if.end.i.i.i, !dbg !107

if.then.i66.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !108
  %gcov_ctr.i65.i.i = load i64, ptr @__llvm_gcov_ctr.20, align 8, !dbg !108
  %40 = add i64 %gcov_ctr.i65.i.i, 1, !dbg !108
  store i64 %40, ptr @__llvm_gcov_ctr.20, align 8, !dbg !108
  %fields.i.i.i = getelementptr inbounds %struct.trace_event_class, ptr %37, i32 0, i32 6, !dbg !109
  br label %trace_get_fields.exit.i.i, !dbg !110

if.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !111
  %gcov_ctr4.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 1), align 8, !dbg !111
  %41 = add i64 %gcov_ctr4.i.i.i, 1, !dbg !111
  store i64 %41, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 1), align 8, !dbg !111
  %42 = ptrtoint ptr %class.i.i.i.i to i32, !dbg !112
  call void @__asan_load4_noabort(i32 %42), !dbg !112
  %43 = load ptr, ptr %class.i.i.i.i, align 4, !dbg !112
  %get_fields3.i.i.i = getelementptr inbounds %struct.trace_event_class, ptr %43, i32 0, i32 5, !dbg !113
  %44 = ptrtoint ptr %get_fields3.i.i.i to i32, !dbg !113
  call void @__asan_load4_noabort(i32 %44), !dbg !113
  %45 = load ptr, ptr %get_fields3.i.i.i, align 4, !dbg !113
  %call.i.i.i = tail call ptr %45(ptr noundef %12) #14, !dbg !111
  br label %trace_get_fields.exit.i.i, !dbg !114

trace_get_fields.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i66.i.i
  %retval.0.i.i.i = phi ptr [ %call.i.i.i, %if.end.i.i.i ], [ %fields.i.i.i, %if.then.i66.i.i ], !dbg !115
  %46 = ptrtoint ptr %retval.0.i.i.i to i32, !dbg !116
  call void @__asan_load4_noabort(i32 %46), !dbg !116
  %field.082.i.i = load ptr, ptr %retval.0.i.i.i, align 4, !dbg !116
  %cmp.not83.i.i = icmp eq ptr %field.082.i.i, %retval.0.i.i.i, !dbg !116
  br i1 %cmp.not83.i.i, label %trace_get_fields.exit.i.i.trace_alloc_entry.exit.i_crit_edge, label %for.body.lr.ph.i.i, !dbg !116

trace_get_fields.exit.i.i.trace_alloc_entry.exit.i_crit_edge: ; preds = %trace_get_fields.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !116
  br label %trace_alloc_entry.exit.i, !dbg !116

for.body.lr.ph.i.i:                               ; preds = %trace_get_fields.exit.i.i
  %and.i.i = and i32 %size.0.lcssa.i.i.i, 65535
  br label %for.body.i.i, !dbg !116

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %field.084.i.i = phi ptr [ %field.082.i.i, %for.body.lr.ph.i.i ], [ %field.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %gcov_ctr.i67.i.i = load i64, ptr @__llvm_gcov_ctr.17, align 16
  %47 = add i64 %gcov_ctr.i67.i.i, 1
  store i64 %47, ptr @__llvm_gcov_ctr.17, align 16
  %filter_type.i.i.i = getelementptr inbounds %struct.ftrace_event_field, ptr %field.084.i.i, i32 0, i32 3, !dbg !117
  %48 = ptrtoint ptr %filter_type.i.i.i to i32, !dbg !117
  call void @__asan_load4_noabort(i32 %48), !dbg !117
  %49 = load i32, ptr %filter_type.i.i.i, align 4, !dbg !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49), !dbg !120
  %cmp.i.i.i = icmp eq i32 %49, 2, !dbg !120
  br i1 %cmp.i.i.i, label %for.body.i.i.if.end21.i.i_crit_edge, label %lor.lhs.false.i.i.i, !dbg !121

for.body.i.i.if.end21.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !121
  br label %if.end21.i.i, !dbg !121

lor.lhs.false.i.i.i:                              ; preds = %for.body.i.i
  %gcov_ctr11.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 1), align 8, !dbg !122
  %50 = add i64 %gcov_ctr11.i.i.i, 1, !dbg !122
  store i64 %50, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 1), align 8, !dbg !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49), !dbg !123
  %cmp2.i.i.i = icmp eq i32 %49, 3, !dbg !123
  br i1 %cmp2.i.i.i, label %lor.lhs.false.i.i.i.lor.lhs.false.i.i_crit_edge, label %lor.lhs.false3.i.i.i, !dbg !124

lor.lhs.false.i.i.i.lor.lhs.false.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !124
  br label %lor.lhs.false.i.i, !dbg !124

lor.lhs.false3.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %gcov_ctr12.i68.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 2), align 16, !dbg !125
  %51 = add i64 %gcov_ctr12.i68.i.i, 1, !dbg !125
  store i64 %51, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 2), align 16, !dbg !125
  %52 = ptrtoint ptr %filter_type.i.i.i to i32, !dbg !126
  call void @__asan_load4_noabort(i32 %52), !dbg !126
  %53 = load i32, ptr %filter_type.i.i.i, align 4, !dbg !126
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53), !dbg !127
  %cmp5.i.i.i = icmp eq i32 %53, 1, !dbg !127
  br i1 %cmp5.i.i.i, label %if.then9.i.i, label %lor.lhs.false6.i.i.i, !dbg !128

lor.lhs.false6.i.i.i:                             ; preds = %lor.lhs.false3.i.i.i
  %gcov_ctr13.i69.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 3), align 8, !dbg !129
  %54 = add i64 %gcov_ctr13.i69.i.i, 1, !dbg !129
  store i64 %54, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 3), align 8, !dbg !129
  %55 = ptrtoint ptr %filter_type.i.i.i to i32, !dbg !130
  call void @__asan_load4_noabort(i32 %55), !dbg !130
  %56 = load i32, ptr %filter_type.i.i.i, align 4, !dbg !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %56), !dbg !131
  %cmp8.i.i.i = icmp eq i32 %56, 4, !dbg !131
  br i1 %cmp8.i.i.i, label %lor.lhs.false6.i.i.i.lor.lhs.false.i.i_crit_edge, label %is_string_field.exit.i.i, !dbg !132

lor.lhs.false6.i.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %lor.lhs.false6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !132
  br label %lor.lhs.false.i.i, !dbg !132

is_string_field.exit.i.i:                         ; preds = %lor.lhs.false6.i.i.i
  %gcov_ctr14.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 4), align 16, !dbg !133
  %57 = add i64 %gcov_ctr14.i.i.i, 1, !dbg !133
  store i64 %57, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 4), align 16, !dbg !133
  %58 = ptrtoint ptr %filter_type.i.i.i to i32, !dbg !134
  call void @__asan_load4_noabort(i32 %58), !dbg !134
  %59 = load i32, ptr %filter_type.i.i.i, align 4, !dbg !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %59), !dbg !135
  %cmp10.i.i.i = icmp eq i32 %59, 6, !dbg !135
  br i1 %cmp10.i.i.i, label %is_string_field.exit.i.i.lor.lhs.false.i.i_crit_edge, label %if.then6.i.i, !dbg !136

is_string_field.exit.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %is_string_field.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !136
  br label %lor.lhs.false.i.i, !dbg !136

if.then6.i.i:                                     ; preds = %is_string_field.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !137
  %gcov_ctr37.i.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 2), align 16, !dbg !137
  %60 = add i64 %gcov_ctr37.i.i, 1, !dbg !137
  store i64 %60, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 2), align 16, !dbg !137
  br label %for.inc.i.i, !dbg !137

if.then9.i.i:                                     ; preds = %lor.lhs.false3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !138
  %gcov_ctr38.i.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 3), align 8, !dbg !138
  %61 = add i64 %gcov_ctr38.i.i, 1, !dbg !138
  store i64 %61, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 3), align 8, !dbg !138
  br label %for.inc.i.i, !dbg !138

lor.lhs.false.i.i:                                ; preds = %is_string_field.exit.i.i.lor.lhs.false.i.i_crit_edge, %lor.lhs.false6.i.i.i.lor.lhs.false.i.i_crit_edge, %lor.lhs.false.i.i.i.lor.lhs.false.i.i_crit_edge
  %gcov_ctr39.i.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 4), align 16, !dbg !139
  %62 = add i64 %gcov_ctr39.i.i, 1, !dbg !139
  store i64 %62, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 4), align 16, !dbg !139
  %63 = ptrtoint ptr %filter_type.i.i.i to i32, !dbg !140
  call void @__asan_load4_noabort(i32 %63), !dbg !140
  %64 = load i32, ptr %filter_type.i.i.i, align 4, !dbg !140
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %64), !dbg !141
  %cmp14.i.i = icmp eq i32 %64, 3, !dbg !141
  br i1 %cmp14.i.i, label %if.then18.i.i, label %if.else.i.i, !dbg !142

if.then18.i.i:                                    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !143
  %gcov_ctr40.i.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 5), align 8, !dbg !143
  %65 = add i64 %gcov_ctr40.i.i, 1, !dbg !143
  store i64 %65, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 5), align 8, !dbg !143
  %offset.i.i = getelementptr inbounds %struct.ftrace_event_field, ptr %field.084.i.i, i32 0, i32 4, !dbg !144
  %66 = ptrtoint ptr %offset.i.i to i32, !dbg !144
  call void @__asan_load4_noabort(i32 %66), !dbg !144
  %67 = load i32, ptr %offset.i.i, align 4, !dbg !144
  %size19.i.i = getelementptr inbounds %struct.ftrace_event_field, ptr %field.084.i.i, i32 0, i32 5, !dbg !145
  %68 = ptrtoint ptr %size19.i.i to i32, !dbg !145
  call void @__asan_load4_noabort(i32 %68), !dbg !145
  %69 = load i32, ptr %size19.i.i, align 4, !dbg !145
  %70 = add i32 %67, %69, !dbg !146
  %sub.i.i = sub i32 %and.i.i, %70, !dbg !146
  br label %if.end21.i.i, !dbg !147

if.end21.i.i:                                     ; preds = %if.then18.i.i, %for.body.i.i.if.end21.i.i_crit_edge
  %str_loc.0.i.i = phi i32 [ %sub.i.i, %if.then18.i.i ], [ %and.i.i, %for.body.i.i.if.end21.i.i_crit_edge ], !dbg !148
  %gcov_ctr41.i.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 6), align 16, !dbg !149
  %71 = add i64 %gcov_ctr41.i.i, 1, !dbg !149
  store i64 %71, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 6), align 16, !dbg !149
  %offset22.i.i = getelementptr inbounds %struct.ftrace_event_field, ptr %field.084.i.i, i32 0, i32 4, !dbg !150
  %72 = ptrtoint ptr %offset22.i.i to i32, !dbg !150
  call void @__asan_load4_noabort(i32 %72), !dbg !150
  %73 = load i32, ptr %offset22.i.i, align 4, !dbg !150
  %add.ptr23.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 %73, !dbg !151
  %74 = ptrtoint ptr %add.ptr23.i.i to i32, !dbg !152
  call void @__asan_store4_noabort(i32 %74), !dbg !152
  store i32 %str_loc.0.i.i, ptr %add.ptr23.i.i, align 4, !dbg !152
  br label %for.inc.i.i, !dbg !153

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !154
  %gcov_ctr42.i.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 7), align 8, !dbg !154
  %75 = add i64 %gcov_ctr42.i.i, 1, !dbg !154
  store i64 %75, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 7), align 8, !dbg !154
  %offset24.i.i = getelementptr inbounds %struct.ftrace_event_field, ptr %field.084.i.i, i32 0, i32 4, !dbg !155
  %76 = ptrtoint ptr %offset24.i.i to i32, !dbg !155
  call void @__asan_load4_noabort(i32 %76), !dbg !155
  %77 = load i32, ptr %offset24.i.i, align 4, !dbg !155
  %add.ptr25.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 %77, !dbg !156
  %78 = ptrtoint ptr %add.ptr25.i.i to i32, !dbg !157
  call void @__asan_store4_noabort(i32 %78), !dbg !157
  store ptr @.str.1, ptr %add.ptr25.i.i, align 4, !dbg !157
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %if.end21.i.i, %if.then9.i.i, %if.then6.i.i
  %79 = ptrtoint ptr %field.084.i.i to i32, !dbg !116
  call void @__asan_load4_noabort(i32 %79), !dbg !116
  %field.0.i.i = load ptr, ptr %field.084.i.i, align 4, !dbg !116
  %cmp.not.i.i = icmp eq ptr %field.0.i.i, %retval.0.i.i.i, !dbg !116
  br i1 %cmp.not.i.i, label %for.inc.i.i.trace_alloc_entry.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge, !dbg !116, !llvm.loop !158

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !116
  br label %for.body.i.i, !dbg !116

for.inc.i.i.trace_alloc_entry.exit.i_crit_edge:   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !116
  br label %trace_alloc_entry.exit.i, !dbg !116

trace_alloc_entry.exit.i:                         ; preds = %for.inc.i.i.trace_alloc_entry.exit.i_crit_edge, %trace_get_fields.exit.i.i.trace_alloc_entry.exit.i_crit_edge
  %gcov_ctr36.i.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 1), align 8, !dbg !160
  %80 = add i64 %gcov_ctr36.i.i, 1, !dbg !160
  store i64 %80, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 1), align 8, !dbg !160
  %gcov_ctr84.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 1), align 8, !dbg !161
  %81 = add i64 %gcov_ctr84.i, 1, !dbg !161
  store i64 %81, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 1), align 8, !dbg !161
  %type.i = getelementptr inbounds %struct.trace_event_call, ptr %12, i32 0, i32 3, i32 2, !dbg !162
  %82 = ptrtoint ptr %type.i to i32, !dbg !162
  call void @__asan_load4_noabort(i32 %82), !dbg !162
  %83 = load i32, ptr %type.i, align 4, !dbg !162
  %conv.i = trunc i32 %83 to i16, !dbg !163
  %gcov_ctr.i128.i = load i64, ptr @__llvm_gcov_ctr.14, align 8, !dbg !164
  %84 = add i64 %gcov_ctr.i128.i, 1, !dbg !164
  store i64 %84, ptr @__llvm_gcov_ctr.14, align 8, !dbg !164
  %gcov_ctr.i.i129.i = load i64, ptr @__llvm_gcov_ctr.29, align 8
  %85 = add i64 %gcov_ctr.i.i129.i, 1
  store i64 %85, ptr @__llvm_gcov_ctr.29, align 8
  %86 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !dbg !167, !srcloc !171
  %gcov_ctr.i2.i.i = load i64, ptr @__llvm_gcov_ctr.30, align 8
  %87 = add i64 %gcov_ctr.i2.i.i, 1
  store i64 %87, ptr @__llvm_gcov_ctr.30, align 8
  %gcov_ctr.i.i.i130.i = load i64, ptr @__llvm_gcov_ctr.31, align 8
  %88 = add i64 %gcov_ctr.i.i.i130.i, 1
  store i64 %88, ptr @__llvm_gcov_ctr.31, align 8
  %and.i.i.i.i = lshr i32 %86, 7, !dbg !172
  %and.i.lobit.i.i.i = and i32 %and.i.i.i.i, 1, !dbg !172
  %call2.i.i.i = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %and.i.lobit.i.i.i) #14, !dbg !175
  %gcov_ctr.i131.i = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %89 = add i64 %gcov_ctr.i131.i, 1
  store i64 %89, ptr @__llvm_gcov_ctr.13, align 8
  %conv.i.i = trunc i32 %call2.i.i.i to i8, !dbg !176
  %preempt_count.i.i = getelementptr inbounds %struct.trace_entry, ptr %call9.i.i.i.i, i32 0, i32 2, !dbg !179
  %90 = ptrtoint ptr %preempt_count.i.i to i32, !dbg !180
  call void @__asan_store1_noabort(i32 %90), !dbg !180
  store i8 %conv.i.i, ptr %preempt_count.i.i, align 1, !dbg !180
  %gcov_ctr.i.i132.i = load i64, ptr @__llvm_gcov_ctr.28, align 8, !dbg !181
  %91 = add i64 %gcov_ctr.i.i132.i, 1, !dbg !181
  store i64 %91, ptr @__llvm_gcov_ctr.28, align 8, !dbg !181
  %92 = tail call i32 @llvm.read_register.i32(metadata !15) #14, !dbg !181
  %and.i.i.i = and i32 %92, -16384, !dbg !185
  %93 = inttoptr i32 %and.i.i.i to ptr, !dbg !186
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 2, !dbg !187
  %94 = ptrtoint ptr %task.i.i to i32, !dbg !187
  call void @__asan_load4_noabort(i32 %94), !dbg !187
  %95 = load ptr, ptr %task.i.i, align 8, !dbg !187
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %95, i32 0, i32 68, !dbg !188
  %96 = ptrtoint ptr %pid.i.i to i32, !dbg !188
  call void @__asan_load4_noabort(i32 %96), !dbg !188
  %97 = load i32, ptr %pid.i.i, align 8, !dbg !188
  %pid2.i.i = getelementptr inbounds %struct.trace_entry, ptr %call9.i.i.i.i, i32 0, i32 3, !dbg !189
  %98 = ptrtoint ptr %pid2.i.i to i32, !dbg !190
  call void @__asan_store4_noabort(i32 %98), !dbg !190
  store i32 %97, ptr %pid2.i.i, align 4, !dbg !190
  %99 = ptrtoint ptr %call9.i.i.i.i to i32, !dbg !191
  call void @__asan_store2_noabort(i32 %99), !dbg !191
  store i16 %conv.i, ptr %call9.i.i.i.i, align 128, !dbg !191
  %shr.i.i = lshr i32 %call2.i.i.i, 16, !dbg !192
  %conv4.i.i = trunc i32 %shr.i.i to i8, !dbg !193
  %flags.i.i = getelementptr inbounds %struct.trace_entry, ptr %call9.i.i.i.i, i32 0, i32 1, !dbg !194
  %100 = ptrtoint ptr %flags.i.i to i32, !dbg !195
  call void @__asan_store1_noabort(i32 %100), !dbg !195
  store i8 %conv4.i.i, ptr %flags.i.i, align 2, !dbg !195
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i.i) #14, !dbg !196
  %101 = ptrtoint ptr %val.i.i to i32, !dbg !199
  call void @__asan_store8_noabort(i32 %101), !dbg !199
  store i64 -1, ptr %val.i.i, align 8, !dbg !199, !annotation !200
  %102 = ptrtoint ptr %call2 to i32, !dbg !201
  call void @__asan_load1_noabort(i32 %102), !dbg !201
  %103 = load i8, ptr %call2, align 1, !dbg !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103), !dbg !201
  %tobool.not.i133265.i = icmp eq i8 %103, 0, !dbg !201
  br i1 %tobool.not.i133265.i, label %trace_alloc_entry.exit.i.if.then.i135.i_crit_edge, label %trace_alloc_entry.exit.i.while.cond.preheader.i.i_crit_edge, !dbg !202

trace_alloc_entry.exit.i.while.cond.preheader.i.i_crit_edge: ; preds = %trace_alloc_entry.exit.i
  br label %while.cond.preheader.i.i, !dbg !202

trace_alloc_entry.exit.i.if.then.i135.i_crit_edge: ; preds = %trace_alloc_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !202
  br label %if.then.i135.i, !dbg !202

while.cond.preheader.i.i:                         ; preds = %if.end73.i.while.cond.preheader.i.i_crit_edge, %trace_alloc_entry.exit.i.while.cond.preheader.i.i_crit_edge
  %entry1.1 = phi ptr [ %entry1.4, %if.end73.i.while.cond.preheader.i.i_crit_edge ], [ %call9.i.i.i.i, %trace_alloc_entry.exit.i.while.cond.preheader.i.i_crit_edge ], !dbg !203
  %104 = phi i8 [ %305, %if.end73.i.while.cond.preheader.i.i_crit_edge ], [ %103, %trace_alloc_entry.exit.i.while.cond.preheader.i.i_crit_edge ]
  %str.addr.0272.i = phi ptr [ %add.ptr74.i, %if.end73.i.while.cond.preheader.i.i_crit_edge ], [ %call2, %trace_alloc_entry.exit.i.while.cond.preheader.i.i_crit_edge ]
  %entry1.0270.i = phi ptr [ %entry1.4.i, %if.end73.i.while.cond.preheader.i.i_crit_edge ], [ %call9.i.i.i.i, %trace_alloc_entry.exit.i.while.cond.preheader.i.i_crit_edge ]
  %val.0269.i = phi i64 [ %val.1.i, %if.end73.i.while.cond.preheader.i.i_crit_edge ], [ 0, %trace_alloc_entry.exit.i.while.cond.preheader.i.i_crit_edge ]
  %entry_size.1266.i = phi i32 [ %entry_size.3.i, %if.end73.i.while.cond.preheader.i.i_crit_edge ], [ %add.i.i, %trace_alloc_entry.exit.i.while.cond.preheader.i.i_crit_edge ]
  %conv295.i.i = zext i8 %104 to i32, !dbg !204
  %arrayidx2296.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv295.i.i, !dbg !204
  %105 = ptrtoint ptr %arrayidx2296.i.i to i32, !dbg !204
  call void @__asan_load1_noabort(i32 %105), !dbg !204
  %106 = load i8, ptr %arrayidx2296.i.i, align 1, !dbg !204
  %107 = and i8 %106, 32, !dbg !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107), !dbg !204
  %cmp.not297.i.i = icmp eq i8 %107, 0, !dbg !204
  br i1 %cmp.not297.i.i, label %while.cond.preheader.i.i.while.cond5.preheader.i.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge, !dbg !205

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i, !dbg !205

while.cond.preheader.i.i.while.cond5.preheader.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !205
  br label %while.cond5.preheader.i.i, !dbg !205

if.then.i135.i:                                   ; preds = %if.end73.i.if.then.i135.i_crit_edge, %trace_alloc_entry.exit.i.if.then.i135.i_crit_edge
  %entry1.2 = phi ptr [ %call9.i.i.i.i, %trace_alloc_entry.exit.i.if.then.i135.i_crit_edge ], [ %entry1.4, %if.end73.i.if.then.i135.i_crit_edge ], !dbg !203
  %entry_size.1.lcssa.i = phi i32 [ %add.i.i, %trace_alloc_entry.exit.i.if.then.i135.i_crit_edge ], [ %entry_size.3.i, %if.end73.i.if.then.i135.i_crit_edge ], !dbg !203
  %gcov_ctr.i134.i = load i64, ptr @__llvm_gcov_ctr.15, align 16, !dbg !206
  %108 = add i64 %gcov_ctr.i134.i, 1, !dbg !206
  store i64 %108, ptr @__llvm_gcov_ctr.15, align 16, !dbg !206
  br label %parse_field.exit.thread.i, !dbg !206

while.cond5.preheader.i.i:                        ; preds = %while.body.i.i.while.cond5.preheader.i.i_crit_edge, %while.cond.preheader.i.i.while.cond5.preheader.i.i_crit_edge
  %i.0.lcssa294.i.i = phi i32 [ 0, %while.cond.preheader.i.i.while.cond5.preheader.i.i_crit_edge ], [ %inc.i.i, %while.body.i.i.while.cond5.preheader.i.i_crit_edge ]
  br label %while.cond5.i.i, !dbg !207

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %i.0298.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %gcov_ctr175.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 1), align 8, !dbg !208
  %109 = add i64 %gcov_ctr175.i.i, 1, !dbg !208
  store i64 %109, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 1), align 8, !dbg !208
  %inc.i.i = add i32 %i.0298.i.i, 1, !dbg !208
  %arrayidx1.i.i = getelementptr i8, ptr %str.addr.0272.i, i32 %inc.i.i, !dbg !204
  %110 = ptrtoint ptr %arrayidx1.i.i to i32, !dbg !204
  call void @__asan_load1_noabort(i32 %110), !dbg !204
  %111 = load i8, ptr %arrayidx1.i.i, align 1, !dbg !204
  %conv.i136.i = zext i8 %111 to i32, !dbg !204
  %arrayidx2.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i136.i, !dbg !204
  %112 = ptrtoint ptr %arrayidx2.i.i to i32, !dbg !204
  call void @__asan_load1_noabort(i32 %112), !dbg !204
  %113 = load i8, ptr %arrayidx2.i.i, align 1, !dbg !204
  %114 = and i8 %113, 32, !dbg !204
  %cmp.not.i137.i = icmp eq i8 %114, 0, !dbg !204
  br i1 %cmp.not.i137.i, label %while.body.i.i.while.cond5.preheader.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge, !dbg !205, !llvm.loop !209

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !205
  br label %while.body.i.i, !dbg !205

while.body.i.i.while.cond5.preheader.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !205
  br label %while.cond5.preheader.i.i, !dbg !205

while.cond5.i.i:                                  ; preds = %while.body17.i.i, %while.cond5.preheader.i.i
  %i.1.i.i = phi i32 [ %inc18.i.i, %while.body17.i.i ], [ %i.0.lcssa294.i.i, %while.cond5.preheader.i.i ], !dbg !210
  %arrayidx6.i.i = getelementptr i8, ptr %str.addr.0272.i, i32 %i.1.i.i, !dbg !211
  %115 = ptrtoint ptr %arrayidx6.i.i to i32, !dbg !211
  call void @__asan_load1_noabort(i32 %115), !dbg !211
  %116 = load i8, ptr %arrayidx6.i.i, align 1, !dbg !211
  %conv7.i.i = zext i8 %116 to i32, !dbg !211
  %arrayidx8.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv7.i.i, !dbg !211
  %117 = ptrtoint ptr %arrayidx8.i.i to i32, !dbg !211
  call void @__asan_load1_noabort(i32 %117), !dbg !211
  %118 = load i8, ptr %arrayidx8.i.i, align 1, !dbg !211
  %119 = and i8 %118, 7, !dbg !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119), !dbg !211
  %cmp11.not.i.i = icmp eq i8 %119, 0, !dbg !211
  br i1 %cmp11.not.i.i, label %lor.rhs.i.i, label %while.cond5.i.i.while.body17.i.i_crit_edge, !dbg !212

while.cond5.i.i.while.body17.i.i_crit_edge:       ; preds = %while.cond5.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !212
  br label %while.body17.i.i, !dbg !212

lor.rhs.i.i:                                      ; preds = %while.cond5.i.i
  %gcov_ctr176.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 2), align 16, !dbg !213
  %120 = add i64 %gcov_ctr176.i.i, 1, !dbg !213
  store i64 %120, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 2), align 16, !dbg !213
  %121 = ptrtoint ptr %arrayidx6.i.i to i32, !dbg !213
  call void @__asan_load1_noabort(i32 %121), !dbg !213
  %122 = load i8, ptr %arrayidx6.i.i, align 1, !dbg !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %122), !dbg !214
  %cmp15.i.i = icmp eq i8 %122, 95, !dbg !214
  br i1 %cmp15.i.i, label %lor.rhs.i.i.while.body17.i.i_crit_edge, label %while.end19.i.i, !dbg !207

lor.rhs.i.i.while.body17.i.i_crit_edge:           ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !207
  br label %while.body17.i.i, !dbg !207

while.body17.i.i:                                 ; preds = %lor.rhs.i.i.while.body17.i.i_crit_edge, %while.cond5.i.i.while.body17.i.i_crit_edge
  %gcov_ctr177.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 3), align 8, !dbg !215
  %123 = add i64 %gcov_ctr177.i.i, 1, !dbg !215
  store i64 %123, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 3), align 8, !dbg !215
  %inc18.i.i = add i32 %i.1.i.i, 1, !dbg !215
  br label %while.cond5.i.i, !dbg !207, !llvm.loop !216

while.end19.i.i:                                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.i.i, i32 %i.0.lcssa294.i.i), !dbg !217
  %tobool20.not.i.i = icmp eq i32 %i.1.i.i, %i.0.lcssa294.i.i, !dbg !217
  br i1 %tobool20.not.i.i, label %if.then21.i.i, label %if.end22.i.i, !dbg !218

if.then21.i.i:                                    ; preds = %while.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !219
  %gcov_ctr178.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 4), align 16, !dbg !219
  %124 = add i64 %gcov_ctr178.i.i, 1, !dbg !219
  store i64 %124, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 4), align 16, !dbg !219
  br label %parse_field.exit.thread.i, !dbg !219

if.end22.i.i:                                     ; preds = %while.end19.i.i
  %arrayidx1.le.i.i = getelementptr i8, ptr %str.addr.0272.i, i32 %i.0.lcssa294.i.i, !dbg !204
  %sub.i138.i = sub i32 %i.1.i.i, %i.0.lcssa294.i.i, !dbg !220
  %call23.i.i = call ptr @kmemdup_nul(ptr noundef %arrayidx1.le.i.i, i32 noundef %sub.i138.i, i32 noundef 3264) #14, !dbg !221
  %tobool24.not.i.i = icmp eq ptr %call23.i.i, null, !dbg !222
  br i1 %tobool24.not.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !223

if.then25.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !224
  %gcov_ctr179.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 5), align 8, !dbg !224
  %125 = add i64 %gcov_ctr179.i.i, 1, !dbg !224
  store i64 %125, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 5), align 8, !dbg !224
  br label %parse_field.exit.thread.i, !dbg !224

if.end26.i.i:                                     ; preds = %if.end22.i.i
  %call27.i.i = call ptr @trace_find_event_field(ptr noundef %12, ptr noundef nonnull %call23.i.i) #14, !dbg !225
  call void @kfree(ptr noundef nonnull %call23.i.i) #14, !dbg !226
  %tobool28.not.i.i = icmp eq ptr %call27.i.i, null, !dbg !227
  br i1 %tobool28.not.i.i, label %if.then29.i.i, label %if.end30.i.i, !dbg !228

if.then29.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !229
  %gcov_ctr180.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 6), align 16, !dbg !229
  %126 = add i64 %gcov_ctr180.i.i, 1, !dbg !229
  store i64 %126, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 6), align 16, !dbg !229
  br label %parse_field.exit.thread.i, !dbg !229

if.end30.i.i:                                     ; preds = %if.end26.i.i
  %127 = ptrtoint ptr %arrayidx6.i.i to i32, !dbg !230
  call void @__asan_load1_noabort(i32 %127), !dbg !230
  %128 = load i8, ptr %arrayidx6.i.i, align 1, !dbg !230
  %conv33301.i.i = zext i8 %128 to i32, !dbg !230
  %arrayidx34302.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv33301.i.i, !dbg !230
  %129 = ptrtoint ptr %arrayidx34302.i.i to i32, !dbg !230
  call void @__asan_load1_noabort(i32 %129), !dbg !230
  %130 = load i8, ptr %arrayidx34302.i.i, align 1, !dbg !230
  %131 = and i8 %130, 32, !dbg !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131), !dbg !230
  %cmp37.not303.i.i = icmp eq i8 %131, 0, !dbg !230
  br i1 %cmp37.not303.i.i, label %if.end30.i.i.while.end41.i.i_crit_edge, label %if.end30.i.i.while.body39.i.i_crit_edge, !dbg !231

if.end30.i.i.while.body39.i.i_crit_edge:          ; preds = %if.end30.i.i
  br label %while.body39.i.i, !dbg !231

if.end30.i.i.while.end41.i.i_crit_edge:           ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !231
  br label %while.end41.i.i, !dbg !231

while.body39.i.i:                                 ; preds = %while.body39.i.i.while.body39.i.i_crit_edge, %if.end30.i.i.while.body39.i.i_crit_edge
  %i.2304.i.i = phi i32 [ %inc40.i.i, %while.body39.i.i.while.body39.i.i_crit_edge ], [ %i.1.i.i, %if.end30.i.i.while.body39.i.i_crit_edge ]
  %gcov_ctr181.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 7), align 8, !dbg !232
  %132 = add i64 %gcov_ctr181.i.i, 1, !dbg !232
  store i64 %132, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 7), align 8, !dbg !232
  %inc40.i.i = add i32 %i.2304.i.i, 1, !dbg !232
  %arrayidx32.i.i = getelementptr i8, ptr %str.addr.0272.i, i32 %inc40.i.i, !dbg !230
  %133 = ptrtoint ptr %arrayidx32.i.i to i32, !dbg !230
  call void @__asan_load1_noabort(i32 %133), !dbg !230
  %134 = load i8, ptr %arrayidx32.i.i, align 1, !dbg !230
  %conv33.i.i = zext i8 %134 to i32, !dbg !230
  %arrayidx34.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv33.i.i, !dbg !230
  %135 = ptrtoint ptr %arrayidx34.i.i to i32, !dbg !230
  call void @__asan_load1_noabort(i32 %135), !dbg !230
  %136 = load i8, ptr %arrayidx34.i.i, align 1, !dbg !230
  %137 = and i8 %136, 32, !dbg !230
  %cmp37.not.i.i = icmp eq i8 %137, 0, !dbg !230
  br i1 %cmp37.not.i.i, label %while.body39.i.i.while.end41.i.i_crit_edge, label %while.body39.i.i.while.body39.i.i_crit_edge, !dbg !231, !llvm.loop !233

while.body39.i.i.while.body39.i.i_crit_edge:      ; preds = %while.body39.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !231
  br label %while.body39.i.i, !dbg !231

while.body39.i.i.while.end41.i.i_crit_edge:       ; preds = %while.body39.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !231
  br label %while.end41.i.i, !dbg !231

while.end41.i.i:                                  ; preds = %while.body39.i.i.while.end41.i.i_crit_edge, %if.end30.i.i.while.end41.i.i_crit_edge
  %i.2.lcssa.i.i = phi i32 [ %i.1.i.i, %if.end30.i.i.while.end41.i.i_crit_edge ], [ %inc40.i.i, %while.body39.i.i.while.end41.i.i_crit_edge ], !dbg !210
  %.lcssa293.i.i = phi i8 [ %128, %if.end30.i.i.while.end41.i.i_crit_edge ], [ %134, %while.body39.i.i.while.end41.i.i_crit_edge ], !dbg !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %.lcssa293.i.i), !dbg !234
  %cmp44.not.i.i = icmp eq i8 %.lcssa293.i.i, 61, !dbg !234
  br i1 %cmp44.not.i.i, label %while.cond49.preheader.i.i, label %if.then46.i.i, !dbg !235

while.cond49.preheader.i.i:                       ; preds = %while.end41.i.i
  %i.3308.i.i = add i32 %i.2.lcssa.i.i, 1, !dbg !210
  %arrayidx50309.i.i = getelementptr i8, ptr %str.addr.0272.i, i32 %i.3308.i.i, !dbg !236
  %138 = ptrtoint ptr %arrayidx50309.i.i to i32, !dbg !236
  call void @__asan_load1_noabort(i32 %138), !dbg !236
  %139 = load i8, ptr %arrayidx50309.i.i, align 1, !dbg !236
  %conv51310.i.i = zext i8 %139 to i32, !dbg !236
  %arrayidx52311.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv51310.i.i, !dbg !236
  %140 = ptrtoint ptr %arrayidx52311.i.i to i32, !dbg !236
  call void @__asan_load1_noabort(i32 %140), !dbg !236
  %141 = load i8, ptr %arrayidx52311.i.i, align 1, !dbg !236
  %142 = and i8 %141, 32, !dbg !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142), !dbg !236
  %cmp55.not312.i.i = icmp eq i8 %142, 0, !dbg !236
  br i1 %cmp55.not312.i.i, label %while.cond49.preheader.i.i.while.end59.i.i_crit_edge, label %while.cond49.preheader.i.i.while.body57.i.i_crit_edge, !dbg !237

while.cond49.preheader.i.i.while.body57.i.i_crit_edge: ; preds = %while.cond49.preheader.i.i
  br label %while.body57.i.i, !dbg !237

while.cond49.preheader.i.i.while.end59.i.i_crit_edge: ; preds = %while.cond49.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !237
  br label %while.end59.i.i, !dbg !237

if.then46.i.i:                                    ; preds = %while.end41.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !238
  %gcov_ctr182.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 8), align 16, !dbg !238
  %143 = add i64 %gcov_ctr182.i.i, 1, !dbg !238
  store i64 %143, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 8), align 16, !dbg !238
  br label %parse_field.exit.thread.i, !dbg !238

while.body57.i.i:                                 ; preds = %while.body57.i.i.while.body57.i.i_crit_edge, %while.cond49.preheader.i.i.while.body57.i.i_crit_edge
  %i.3313.i.i = phi i32 [ %i.3.i.i, %while.body57.i.i.while.body57.i.i_crit_edge ], [ %i.3308.i.i, %while.cond49.preheader.i.i.while.body57.i.i_crit_edge ]
  %gcov_ctr183.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 9), align 8, !dbg !239
  %144 = add i64 %gcov_ctr183.i.i, 1, !dbg !239
  store i64 %144, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 9), align 8, !dbg !239
  %i.3.i.i = add i32 %i.3313.i.i, 1, !dbg !210
  %arrayidx50.i.i = getelementptr i8, ptr %str.addr.0272.i, i32 %i.3.i.i, !dbg !236
  %145 = ptrtoint ptr %arrayidx50.i.i to i32, !dbg !236
  call void @__asan_load1_noabort(i32 %145), !dbg !236
  %146 = load i8, ptr %arrayidx50.i.i, align 1, !dbg !236
  %conv51.i.i = zext i8 %146 to i32, !dbg !236
  %arrayidx52.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv51.i.i, !dbg !236
  %147 = ptrtoint ptr %arrayidx52.i.i to i32, !dbg !236
  call void @__asan_load1_noabort(i32 %147), !dbg !236
  %148 = load i8, ptr %arrayidx52.i.i, align 1, !dbg !236
  %149 = and i8 %148, 32, !dbg !236
  %cmp55.not.i.i = icmp eq i8 %149, 0, !dbg !236
  br i1 %cmp55.not.i.i, label %while.body57.i.i.while.end59.i.i_crit_edge, label %while.body57.i.i.while.body57.i.i_crit_edge, !dbg !237, !llvm.loop !240

while.body57.i.i.while.body57.i.i_crit_edge:      ; preds = %while.body57.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !237
  br label %while.body57.i.i, !dbg !237

while.body57.i.i.while.end59.i.i_crit_edge:       ; preds = %while.body57.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !237
  br label %while.end59.i.i, !dbg !237

while.end59.i.i:                                  ; preds = %while.body57.i.i.while.end59.i.i_crit_edge, %while.cond49.preheader.i.i.while.end59.i.i_crit_edge
  %i.3.lcssa307.i.i = phi i32 [ %i.3308.i.i, %while.cond49.preheader.i.i.while.end59.i.i_crit_edge ], [ %i.3.i.i, %while.body57.i.i.while.end59.i.i_crit_edge ]
  %i.3.in.lcssa.i.i = phi i32 [ %i.2.lcssa.i.i, %while.cond49.preheader.i.i.while.end59.i.i_crit_edge ], [ %i.3313.i.i, %while.body57.i.i.while.end59.i.i_crit_edge ]
  %.lcssa292.i.i = phi i8 [ %139, %while.cond49.preheader.i.i.while.end59.i.i_crit_edge ], [ %146, %while.body57.i.i.while.end59.i.i_crit_edge ], !dbg !236
  %arrayidx50.le.i.i = getelementptr i8, ptr %str.addr.0272.i, i32 %i.3.lcssa307.i.i, !dbg !236
  %gcov_ctr.i.i139.i = load i64, ptr @__llvm_gcov_ctr.32, align 8
  %150 = add i64 %gcov_ctr.i.i139.i, 1
  store i64 %150, ptr @__llvm_gcov_ctr.32, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %.lcssa292.i.i), !dbg !241
  %cmp.i.i140.i = icmp ugt i8 %.lcssa292.i.i, 47, !dbg !241
  br i1 %cmp.i.i140.i, label %isdigit.exit.i.i, label %while.end59.i.i.lor.lhs.false.i141.i_crit_edge, !dbg !245

while.end59.i.i.lor.lhs.false.i141.i_crit_edge:   ; preds = %while.end59.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !245
  br label %lor.lhs.false.i141.i, !dbg !245

isdigit.exit.i.i:                                 ; preds = %while.end59.i.i
  %gcov_ctr2.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !246
  %151 = add i64 %gcov_ctr2.i.i.i, 1, !dbg !246
  store i64 %151, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %.lcssa292.i.i), !dbg !247
  %cmp1.i.i.i = icmp ugt i8 %.lcssa292.i.i, 57, !dbg !247
  br i1 %cmp1.i.i.i, label %isdigit.exit.i.i.lor.lhs.false.i141.i_crit_edge, label %isdigit.exit.i.i.if.then68.i.i_crit_edge, !dbg !248

isdigit.exit.i.i.if.then68.i.i_crit_edge:         ; preds = %isdigit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !248
  br label %if.then68.i.i, !dbg !248

isdigit.exit.i.i.lor.lhs.false.i141.i_crit_edge:  ; preds = %isdigit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !248
  br label %lor.lhs.false.i141.i, !dbg !248

lor.lhs.false.i141.i:                             ; preds = %isdigit.exit.i.i.lor.lhs.false.i141.i_crit_edge, %while.end59.i.i.lor.lhs.false.i141.i_crit_edge
  %gcov_ctr184.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 10), align 16, !dbg !249
  %152 = add i64 %gcov_ctr184.i.i, 1, !dbg !249
  store i64 %152, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 10), align 16, !dbg !249
  %153 = ptrtoint ptr %arrayidx50.le.i.i to i32, !dbg !249
  call void @__asan_load1_noabort(i32 %153), !dbg !249
  %154 = load i8, ptr %arrayidx50.le.i.i, align 1, !dbg !249
  %155 = zext i8 %154 to i64, !dbg !250
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values), !dbg !250
  switch i8 %154, label %lor.lhs.false120.i.i [
    i8 45, label %lor.lhs.false.i141.i.if.then68.i.i_crit_edge
    i8 39, label %lor.lhs.false.i141.i.if.then125.i.i_crit_edge
  ], !dbg !250

lor.lhs.false.i141.i.if.then125.i.i_crit_edge:    ; preds = %lor.lhs.false.i141.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !250
  br label %if.then125.i.i, !dbg !250

lor.lhs.false.i141.i.if.then68.i.i_crit_edge:     ; preds = %lor.lhs.false.i141.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !250
  br label %if.then68.i.i, !dbg !250

if.then68.i.i:                                    ; preds = %lor.lhs.false.i141.i.if.then68.i.i_crit_edge, %isdigit.exit.i.i.if.then68.i.i_crit_edge
  %gcov_ctr.i285.i.i = load i64, ptr @__llvm_gcov_ctr.17, align 16
  %156 = add i64 %gcov_ctr.i285.i.i, 1
  store i64 %156, ptr @__llvm_gcov_ctr.17, align 16
  %filter_type.i.i142.i = getelementptr inbounds %struct.ftrace_event_field, ptr %call27.i.i, i32 0, i32 3, !dbg !251
  %157 = ptrtoint ptr %filter_type.i.i142.i to i32, !dbg !251
  call void @__asan_load4_noabort(i32 %157), !dbg !251
  %158 = load i32, ptr %filter_type.i.i142.i, align 4, !dbg !251
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %158), !dbg !253
  %cmp.i286.i.i = icmp eq i32 %158, 2, !dbg !253
  br i1 %cmp.i286.i.i, label %if.then68.i.i.if.then70.i.i_crit_edge, label %lor.lhs.false.i.i145.i, !dbg !254

if.then68.i.i.if.then70.i.i_crit_edge:            ; preds = %if.then68.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !254
  br label %if.then70.i.i, !dbg !254

lor.lhs.false.i.i145.i:                           ; preds = %if.then68.i.i
  %gcov_ctr11.i.i143.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 1), align 8, !dbg !255
  %159 = add i64 %gcov_ctr11.i.i143.i, 1, !dbg !255
  store i64 %159, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 1), align 8, !dbg !255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %158), !dbg !256
  %cmp2.i.i144.i = icmp eq i32 %158, 3, !dbg !256
  br i1 %cmp2.i.i144.i, label %lor.lhs.false.i.i145.i.if.then70.i.i_crit_edge, label %lor.lhs.false3.i.i148.i, !dbg !257

lor.lhs.false.i.i145.i.if.then70.i.i_crit_edge:   ; preds = %lor.lhs.false.i.i145.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !257
  br label %if.then70.i.i, !dbg !257

lor.lhs.false3.i.i148.i:                          ; preds = %lor.lhs.false.i.i145.i
  %gcov_ctr12.i.i146.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 2), align 16, !dbg !258
  %160 = add i64 %gcov_ctr12.i.i146.i, 1, !dbg !258
  store i64 %160, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 2), align 16, !dbg !258
  %161 = ptrtoint ptr %filter_type.i.i142.i to i32, !dbg !259
  call void @__asan_load4_noabort(i32 %161), !dbg !259
  %162 = load i32, ptr %filter_type.i.i142.i, align 4, !dbg !259
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %162), !dbg !260
  %cmp5.i.i147.i = icmp eq i32 %162, 1, !dbg !260
  br i1 %cmp5.i.i147.i, label %lor.lhs.false3.i.i148.i.if.then70.i.i_crit_edge, label %lor.lhs.false6.i.i151.i, !dbg !261

lor.lhs.false3.i.i148.i.if.then70.i.i_crit_edge:  ; preds = %lor.lhs.false3.i.i148.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !261
  br label %if.then70.i.i, !dbg !261

lor.lhs.false6.i.i151.i:                          ; preds = %lor.lhs.false3.i.i148.i
  %gcov_ctr13.i.i149.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 3), align 8, !dbg !262
  %163 = add i64 %gcov_ctr13.i.i149.i, 1, !dbg !262
  store i64 %163, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 3), align 8, !dbg !262
  %164 = ptrtoint ptr %filter_type.i.i142.i to i32, !dbg !263
  call void @__asan_load4_noabort(i32 %164), !dbg !263
  %165 = load i32, ptr %filter_type.i.i142.i, align 4, !dbg !263
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %165), !dbg !264
  %cmp8.i.i150.i = icmp eq i32 %165, 4, !dbg !264
  br i1 %cmp8.i.i150.i, label %lor.lhs.false6.i.i151.i.if.then70.i.i_crit_edge, label %is_string_field.exit.i154.i, !dbg !265

lor.lhs.false6.i.i151.i.if.then70.i.i_crit_edge:  ; preds = %lor.lhs.false6.i.i151.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !265
  br label %if.then70.i.i, !dbg !265

is_string_field.exit.i154.i:                      ; preds = %lor.lhs.false6.i.i151.i
  %gcov_ctr14.i.i152.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 4), align 16, !dbg !266
  %166 = add i64 %gcov_ctr14.i.i152.i, 1, !dbg !266
  store i64 %166, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 4), align 16, !dbg !266
  %167 = ptrtoint ptr %filter_type.i.i142.i to i32, !dbg !267
  call void @__asan_load4_noabort(i32 %167), !dbg !267
  %168 = load i32, ptr %filter_type.i.i142.i, align 4, !dbg !267
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %168), !dbg !268
  %cmp10.i.i153.i = icmp eq i32 %168, 6, !dbg !268
  br i1 %cmp10.i.i153.i, label %is_string_field.exit.i154.i.if.then70.i.i_crit_edge, label %if.end71.i.i, !dbg !269

is_string_field.exit.i154.i.if.then70.i.i_crit_edge: ; preds = %is_string_field.exit.i154.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !269
  br label %if.then70.i.i, !dbg !269

if.then70.i.i:                                    ; preds = %is_string_field.exit.i154.i.if.then70.i.i_crit_edge, %lor.lhs.false6.i.i151.i.if.then70.i.i_crit_edge, %lor.lhs.false3.i.i148.i.if.then70.i.i_crit_edge, %lor.lhs.false.i.i145.i.if.then70.i.i_crit_edge, %if.then68.i.i.if.then70.i.i_crit_edge
  %gcov_ctr185.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 11), align 8, !dbg !270
  %169 = add i64 %gcov_ctr185.i.i, 1, !dbg !270
  store i64 %169, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 11), align 8, !dbg !270
  br label %parse_field.exit.thread.i, !dbg !270

if.end71.i.i:                                     ; preds = %is_string_field.exit.i154.i
  %170 = ptrtoint ptr %arrayidx50.le.i.i to i32, !dbg !271
  call void @__asan_load1_noabort(i32 %170), !dbg !271
  %171 = load i8, ptr %arrayidx50.le.i.i, align 1, !dbg !271
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %171), !dbg !272
  %cmp74.i.i = icmp eq i8 %171, 45, !dbg !272
  br i1 %cmp74.i.i, label %if.then76.i.i, label %if.end71.i.i.if.end78.i.i_crit_edge, !dbg !271

if.end71.i.i.if.end78.i.i_crit_edge:              ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !271
  br label %if.end78.i.i, !dbg !271

if.then76.i.i:                                    ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !273
  %gcov_ctr186.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 12), align 16, !dbg !273
  %172 = add i64 %gcov_ctr186.i.i, 1, !dbg !273
  store i64 %172, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 12), align 16, !dbg !273
  %inc77.i.i = add i32 %i.3.in.lcssa.i.i, 2, !dbg !273
  br label %if.end78.i.i, !dbg !274

if.end78.i.i:                                     ; preds = %if.then76.i.i, %if.end71.i.i.if.end78.i.i_crit_edge
  %i.4.i.i = phi i32 [ %inc77.i.i, %if.then76.i.i ], [ %i.3.lcssa307.i.i, %if.end71.i.i.if.end78.i.i_crit_edge ], !dbg !210
  %arrayidx80319.i.i = getelementptr i8, ptr %str.addr.0272.i, i32 %i.4.i.i, !dbg !275
  %173 = ptrtoint ptr %arrayidx80319.i.i to i32, !dbg !275
  call void @__asan_load1_noabort(i32 %173), !dbg !275
  %174 = load i8, ptr %arrayidx80319.i.i, align 1, !dbg !275
  %conv81320.i.i = zext i8 %174 to i32, !dbg !275
  %arrayidx82321.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv81320.i.i, !dbg !275
  %175 = ptrtoint ptr %arrayidx82321.i.i to i32, !dbg !275
  call void @__asan_load1_noabort(i32 %175), !dbg !275
  %176 = load i8, ptr %arrayidx82321.i.i, align 1, !dbg !275
  %177 = and i8 %176, 7, !dbg !275
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177), !dbg !275
  %cmp85.not322.i.i = icmp eq i8 %177, 0, !dbg !275
  br i1 %cmp85.not322.i.i, label %if.end78.i.i.while.end89.i.i_crit_edge, label %if.end78.i.i.while.body87.i.i_crit_edge, !dbg !276

if.end78.i.i.while.body87.i.i_crit_edge:          ; preds = %if.end78.i.i
  br label %while.body87.i.i, !dbg !276

if.end78.i.i.while.end89.i.i_crit_edge:           ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !276
  br label %while.end89.i.i, !dbg !276

while.body87.i.i:                                 ; preds = %while.body87.i.i.while.body87.i.i_crit_edge, %if.end78.i.i.while.body87.i.i_crit_edge
  %i.5323.i.i = phi i32 [ %inc88.i.i, %while.body87.i.i.while.body87.i.i_crit_edge ], [ %i.4.i.i, %if.end78.i.i.while.body87.i.i_crit_edge ]
  %gcov_ctr187.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 13), align 8, !dbg !277
  %178 = add i64 %gcov_ctr187.i.i, 1, !dbg !277
  store i64 %178, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 13), align 8, !dbg !277
  %inc88.i.i = add i32 %i.5323.i.i, 1, !dbg !277
  %arrayidx80.i.i = getelementptr i8, ptr %str.addr.0272.i, i32 %inc88.i.i, !dbg !275
  %179 = ptrtoint ptr %arrayidx80.i.i to i32, !dbg !275
  call void @__asan_load1_noabort(i32 %179), !dbg !275
  %180 = load i8, ptr %arrayidx80.i.i, align 1, !dbg !275
  %conv81.i.i = zext i8 %180 to i32, !dbg !275
  %arrayidx82.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv81.i.i, !dbg !275
  %181 = ptrtoint ptr %arrayidx82.i.i to i32, !dbg !275
  call void @__asan_load1_noabort(i32 %181), !dbg !275
  %182 = load i8, ptr %arrayidx82.i.i, align 1, !dbg !275
  %183 = and i8 %182, 7, !dbg !275
  %cmp85.not.i.i = icmp eq i8 %183, 0, !dbg !275
  br i1 %cmp85.not.i.i, label %while.body87.i.i.while.end89.i.i_crit_edge, label %while.body87.i.i.while.body87.i.i_crit_edge, !dbg !276, !llvm.loop !278

while.body87.i.i.while.body87.i.i_crit_edge:      ; preds = %while.body87.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !276
  br label %while.body87.i.i, !dbg !276

while.body87.i.i.while.end89.i.i_crit_edge:       ; preds = %while.body87.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !276
  br label %while.end89.i.i, !dbg !276

while.end89.i.i:                                  ; preds = %while.body87.i.i.while.end89.i.i_crit_edge, %if.end78.i.i.while.end89.i.i_crit_edge
  %i.5.lcssa318.i.i = phi i32 [ %i.4.i.i, %if.end78.i.i.while.end89.i.i_crit_edge ], [ %inc88.i.i, %while.body87.i.i.while.end89.i.i_crit_edge ]
  %.lcssa291.i.i = phi i8 [ %174, %if.end78.i.i.while.end89.i.i_crit_edge ], [ %180, %while.body87.i.i.while.end89.i.i_crit_edge ], !dbg !275
  %.lcssa.i.i = phi i8 [ %176, %if.end78.i.i.while.end89.i.i_crit_edge ], [ %182, %while.body87.i.i.while.end89.i.i_crit_edge ], !dbg !275
  %arrayidx80.le.i.i = getelementptr i8, ptr %str.addr.0272.i, i32 %i.5.lcssa318.i.i, !dbg !275
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lcssa291.i.i), !dbg !279
  %cmp93.not.i.i = icmp eq i8 %.lcssa291.i.i, 0, !dbg !279
  br i1 %cmp93.not.i.i, label %while.end89.i.i.if.end102.i.i_crit_edge, label %land.lhs.true.i.i, !dbg !280

while.end89.i.i.if.end102.i.i_crit_edge:          ; preds = %while.end89.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !280
  br label %if.end102.i.i, !dbg !280

land.lhs.true.i.i:                                ; preds = %while.end89.i.i
  %gcov_ctr188.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 14), align 16, !dbg !281
  %184 = add i64 %gcov_ctr188.i.i, 1, !dbg !281
  store i64 %184, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 14), align 16, !dbg !281
  %185 = and i8 %.lcssa.i.i, 32, !dbg !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185), !dbg !281
  %cmp99.not.i.i = icmp eq i8 %185, 0, !dbg !281
  br i1 %cmp99.not.i.i, label %if.then101.i.i, label %land.lhs.true.i.i.if.end102.i.i_crit_edge, !dbg !282

land.lhs.true.i.i.if.end102.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !282
  br label %if.end102.i.i, !dbg !282

if.then101.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !283
  %gcov_ctr189.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 15), align 8, !dbg !283
  %186 = add i64 %gcov_ctr189.i.i, 1, !dbg !283
  store i64 %186, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 15), align 8, !dbg !283
  br label %parse_field.exit.thread.i, !dbg !283

if.end102.i.i:                                    ; preds = %land.lhs.true.i.i.if.end102.i.i_crit_edge, %while.end89.i.i.if.end102.i.i_crit_edge
  %187 = ptrtoint ptr %arrayidx80.le.i.i to i32, !dbg !284
  call void @__asan_store1_noabort(i32 %187), !dbg !284
  store i8 0, ptr %arrayidx80.le.i.i, align 1, !dbg !284
  %is_signed.i.i = getelementptr inbounds %struct.ftrace_event_field, ptr %call27.i.i, i32 0, i32 6, !dbg !285
  %188 = ptrtoint ptr %is_signed.i.i to i32, !dbg !285
  call void @__asan_load4_noabort(i32 %188), !dbg !285
  %189 = load i32, ptr %is_signed.i.i, align 4, !dbg !285
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189), !dbg !286
  %tobool104.not.i.i = icmp eq i32 %189, 0, !dbg !286
  br i1 %tobool104.not.i.i, label %if.else.i155.i, label %if.then105.i.i, !dbg !286

if.then105.i.i:                                   ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !287
  %call106.i.i = call i32 @kstrtoll(ptr noundef %arrayidx50.le.i.i, i32 noundef 0, ptr noundef nonnull %val.i.i) #14, !dbg !287
  br label %if.end108.i.i, !dbg !288

if.else.i155.i:                                   ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !289
  %gcov_ctr190.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 16), align 16, !dbg !289
  %190 = add i64 %gcov_ctr190.i.i, 1, !dbg !289
  store i64 %190, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 16), align 16, !dbg !289
  %call107.i.i = call i32 @kstrtoull(ptr noundef %arrayidx50.le.i.i, i32 noundef 0, ptr noundef nonnull %val.i.i) #14, !dbg !290
  br label %if.end108.i.i

if.end108.i.i:                                    ; preds = %if.else.i155.i, %if.then105.i.i
  %ret.0.i.i = phi i32 [ %call106.i.i, %if.then105.i.i ], [ %call107.i.i, %if.else.i155.i ], !dbg !210
  %191 = ptrtoint ptr %arrayidx80.le.i.i to i32, !dbg !291
  call void @__asan_store1_noabort(i32 %191), !dbg !291
  store i8 %.lcssa291.i.i, ptr %arrayidx80.le.i.i, align 1, !dbg !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i), !dbg !292
  %tobool110.not.i.i = icmp eq i32 %ret.0.i.i, 0, !dbg !292
  br i1 %tobool110.not.i.i, label %if.end112.i.i, label %if.then111.i.i, !dbg !292

if.then111.i.i:                                   ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !293
  %gcov_ctr192.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 18), align 16, !dbg !293
  %192 = add i64 %gcov_ctr192.i.i, 1, !dbg !293
  store i64 %192, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 18), align 16, !dbg !293
  br label %parse_field.exit.i, !dbg !294

if.end112.i.i:                                    ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !295
  %gcov_ctr191.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 17), align 8, !dbg !295
  %193 = add i64 %gcov_ctr191.i.i, 1, !dbg !295
  store i64 %193, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 17), align 8, !dbg !295
  %194 = ptrtoint ptr %val.i.i to i32, !dbg !295
  call void @__asan_load8_noabort(i32 %194), !dbg !295
  %195 = load i64, ptr %val.i.i, align 8, !dbg !295
  br label %parse_field.exit.i, !dbg !296

lor.lhs.false120.i.i:                             ; preds = %lor.lhs.false.i141.i
  %gcov_ctr193.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 19), align 8, !dbg !297
  %196 = add i64 %gcov_ctr193.i.i, 1, !dbg !297
  store i64 %196, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 19), align 8, !dbg !297
  %197 = ptrtoint ptr %arrayidx50.le.i.i to i32, !dbg !297
  call void @__asan_load1_noabort(i32 %197), !dbg !297
  %198 = load i8, ptr %arrayidx50.le.i.i, align 1, !dbg !297
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %198), !dbg !298
  %cmp123.i.i = icmp eq i8 %198, 34, !dbg !298
  br i1 %cmp123.i.i, label %lor.lhs.false120.i.i.if.then125.i.i_crit_edge, label %if.end168.i.i, !dbg !299

lor.lhs.false120.i.i.if.then125.i.i_crit_edge:    ; preds = %lor.lhs.false120.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !299
  br label %if.then125.i.i, !dbg !299

if.then125.i.i:                                   ; preds = %lor.lhs.false120.i.i.if.then125.i.i_crit_edge, %lor.lhs.false.i141.i.if.then125.i.i_crit_edge
  %199 = ptrtoint ptr %arrayidx50.le.i.i to i32, !dbg !300
  call void @__asan_load1_noabort(i32 %199), !dbg !300
  %200 = load i8, ptr %arrayidx50.le.i.i, align 1, !dbg !300
  %gcov_ctr.i165.i = load i64, ptr @__llvm_gcov_ctr.17, align 16
  %201 = add i64 %gcov_ctr.i165.i, 1
  store i64 %201, ptr @__llvm_gcov_ctr.17, align 16
  %filter_type.i166.i = getelementptr inbounds %struct.ftrace_event_field, ptr %call27.i.i, i32 0, i32 3, !dbg !301
  %202 = ptrtoint ptr %filter_type.i166.i to i32, !dbg !301
  call void @__asan_load4_noabort(i32 %202), !dbg !301
  %203 = load i32, ptr %filter_type.i166.i, align 4, !dbg !301
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %203), !dbg !303
  %cmp.i167.i = icmp eq i32 %203, 2, !dbg !303
  br i1 %cmp.i167.i, label %if.then125.i.i.if.end129.i.i_crit_edge, label %lor.lhs.false.i170.i, !dbg !304

if.then125.i.i.if.end129.i.i_crit_edge:           ; preds = %if.then125.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !304
  br label %if.end129.i.i, !dbg !304

lor.lhs.false.i170.i:                             ; preds = %if.then125.i.i
  %gcov_ctr11.i168.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 1), align 8, !dbg !305
  %204 = add i64 %gcov_ctr11.i168.i, 1, !dbg !305
  store i64 %204, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 1), align 8, !dbg !305
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %203), !dbg !306
  %cmp2.i169.i = icmp eq i32 %203, 3, !dbg !306
  br i1 %cmp2.i169.i, label %lor.lhs.false.i170.i.if.end129.i.i_crit_edge, label %lor.lhs.false3.i173.i, !dbg !307

lor.lhs.false.i170.i.if.end129.i.i_crit_edge:     ; preds = %lor.lhs.false.i170.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !307
  br label %if.end129.i.i, !dbg !307

lor.lhs.false3.i173.i:                            ; preds = %lor.lhs.false.i170.i
  %gcov_ctr12.i171.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 2), align 16, !dbg !308
  %205 = add i64 %gcov_ctr12.i171.i, 1, !dbg !308
  store i64 %205, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 2), align 16, !dbg !308
  %206 = ptrtoint ptr %filter_type.i166.i to i32, !dbg !309
  call void @__asan_load4_noabort(i32 %206), !dbg !309
  %207 = load i32, ptr %filter_type.i166.i, align 4, !dbg !309
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %207), !dbg !310
  %cmp5.i172.i = icmp eq i32 %207, 1, !dbg !310
  br i1 %cmp5.i172.i, label %lor.lhs.false3.i173.i.if.end129.i.i_crit_edge, label %lor.lhs.false6.i176.i, !dbg !311

lor.lhs.false3.i173.i.if.end129.i.i_crit_edge:    ; preds = %lor.lhs.false3.i173.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !311
  br label %if.end129.i.i, !dbg !311

lor.lhs.false6.i176.i:                            ; preds = %lor.lhs.false3.i173.i
  %gcov_ctr13.i174.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 3), align 8, !dbg !312
  %208 = add i64 %gcov_ctr13.i174.i, 1, !dbg !312
  store i64 %208, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 3), align 8, !dbg !312
  %209 = ptrtoint ptr %filter_type.i166.i to i32, !dbg !313
  call void @__asan_load4_noabort(i32 %209), !dbg !313
  %210 = load i32, ptr %filter_type.i166.i, align 4, !dbg !313
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %210), !dbg !314
  %cmp8.i175.i = icmp eq i32 %210, 4, !dbg !314
  br i1 %cmp8.i175.i, label %lor.lhs.false6.i176.i.if.end129.i.i_crit_edge, label %is_string_field.exit180.i, !dbg !315

lor.lhs.false6.i176.i.if.end129.i.i_crit_edge:    ; preds = %lor.lhs.false6.i176.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !315
  br label %if.end129.i.i, !dbg !315

is_string_field.exit180.i:                        ; preds = %lor.lhs.false6.i176.i
  %gcov_ctr14.i177.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 4), align 16, !dbg !316
  %211 = add i64 %gcov_ctr14.i177.i, 1, !dbg !316
  store i64 %211, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 4), align 16, !dbg !316
  %212 = ptrtoint ptr %filter_type.i166.i to i32, !dbg !317
  call void @__asan_load4_noabort(i32 %212), !dbg !317
  %213 = load i32, ptr %filter_type.i166.i, align 4, !dbg !317
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %213), !dbg !318
  %cmp10.i178.i = icmp eq i32 %213, 6, !dbg !318
  br i1 %cmp10.i178.i, label %is_string_field.exit180.i.if.end129.i.i_crit_edge, label %if.then128.i.i, !dbg !319

is_string_field.exit180.i.if.end129.i.i_crit_edge: ; preds = %is_string_field.exit180.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !319
  br label %if.end129.i.i, !dbg !319

if.then128.i.i:                                   ; preds = %is_string_field.exit180.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !320
  %gcov_ctr194.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 20), align 16, !dbg !320
  %214 = add i64 %gcov_ctr194.i.i, 1, !dbg !320
  store i64 %214, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 20), align 16, !dbg !320
  br label %parse_field.exit.thread.i, !dbg !320

if.end129.i.i:                                    ; preds = %is_string_field.exit180.i.if.end129.i.i_crit_edge, %lor.lhs.false6.i176.i.if.end129.i.i_crit_edge, %lor.lhs.false3.i173.i.if.end129.i.i_crit_edge, %lor.lhs.false.i170.i.if.end129.i.i_crit_edge, %if.then125.i.i.if.end129.i.i_crit_edge
  %inc130.i.i = add i32 %i.3.in.lcssa.i.i, 2, !dbg !321
  br label %for.cond.i.i, !dbg !322

for.cond.i.i:                                     ; preds = %for.inc.i157.i, %if.end129.i.i
  %i.6.i.i = phi i32 [ %inc130.i.i, %if.end129.i.i ], [ %inc151.i.i, %for.inc.i157.i ], !dbg !210
  %arrayidx131.i.i = getelementptr i8, ptr %str.addr.0272.i, i32 %i.6.i.i, !dbg !323
  %215 = ptrtoint ptr %arrayidx131.i.i to i32, !dbg !323
  call void @__asan_load1_noabort(i32 %215), !dbg !323
  %216 = load i8, ptr %arrayidx131.i.i, align 1, !dbg !323
  %217 = zext i8 %216 to i64, !dbg !324
  call void @__sanitizer_cov_trace_switch(i64 %217, ptr @__sancov_gen_cov_switch_values.40), !dbg !324
  switch i8 %216, label %for.cond.i.i.if.end143.i.i_crit_edge [
    i8 0, label %for.cond.i.i.if.then154.i.i_crit_edge
    i8 92, label %land.lhs.true137.i.i
  ], !dbg !324

for.cond.i.i.if.then154.i.i_crit_edge:            ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !324
  br label %if.then154.i.i, !dbg !324

for.cond.i.i.if.end143.i.i_crit_edge:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !324
  br label %if.end143.i.i, !dbg !324

land.lhs.true137.i.i:                             ; preds = %for.cond.i.i
  %gcov_ctr195.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 21), align 8, !dbg !325
  %218 = add i64 %gcov_ctr195.i.i, 1, !dbg !325
  store i64 %218, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 21), align 8, !dbg !325
  %add.i156.i = add i32 %i.6.i.i, 1, !dbg !326
  %arrayidx138.i.i = getelementptr i8, ptr %str.addr.0272.i, i32 %add.i156.i, !dbg !325
  %219 = ptrtoint ptr %arrayidx138.i.i to i32, !dbg !325
  call void @__asan_load1_noabort(i32 %219), !dbg !325
  %220 = load i8, ptr %arrayidx138.i.i, align 1, !dbg !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220), !dbg !325
  %tobool140.not.i.i = icmp eq i8 %220, 0, !dbg !325
  br i1 %tobool140.not.i.i, label %land.lhs.true137.i.i.if.end143.i.i_crit_edge, label %if.then141.i.i, !dbg !327

land.lhs.true137.i.i.if.end143.i.i_crit_edge:     ; preds = %land.lhs.true137.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !327
  br label %if.end143.i.i, !dbg !327

if.then141.i.i:                                   ; preds = %land.lhs.true137.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !328
  %gcov_ctr196.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 22), align 16, !dbg !328
  %221 = add i64 %gcov_ctr196.i.i, 1, !dbg !328
  store i64 %221, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 22), align 16, !dbg !328
  br label %for.inc.i157.i, !dbg !329

if.end143.i.i:                                    ; preds = %land.lhs.true137.i.i.if.end143.i.i_crit_edge, %for.cond.i.i.if.end143.i.i_crit_edge
  %222 = ptrtoint ptr %arrayidx131.i.i to i32, !dbg !330
  call void @__asan_load1_noabort(i32 %222), !dbg !330
  %223 = load i8, ptr %arrayidx131.i.i, align 1, !dbg !330
  call void @__sanitizer_cov_trace_cmp1(i8 %223, i8 %200), !dbg !331
  %cmp147.i.i = icmp eq i8 %223, %200, !dbg !331
  br i1 %cmp147.i.i, label %for.end.i158.i, label %if.end150.i.i, !dbg !330

if.end150.i.i:                                    ; preds = %if.end143.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !332
  %gcov_ctr197.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 23), align 8, !dbg !332
  %224 = add i64 %gcov_ctr197.i.i, 1, !dbg !332
  store i64 %224, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 23), align 8, !dbg !332
  br label %for.inc.i157.i, !dbg !332

for.inc.i157.i:                                   ; preds = %if.end150.i.i, %if.then141.i.i
  %i.7.i.i = phi i32 [ %add.i156.i, %if.then141.i.i ], [ %i.6.i.i, %if.end150.i.i ], !dbg !210
  %inc151.i.i = add i32 %i.7.i.i, 1, !dbg !333
  br label %for.cond.i.i, !dbg !324, !llvm.loop !334

for.end.i158.i:                                   ; preds = %if.end143.i.i
  %gcov_ctr198.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 24), align 16, !dbg !335
  %225 = add i64 %gcov_ctr198.i.i, 1, !dbg !335
  store i64 %225, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 24), align 16, !dbg !335
  %226 = ptrtoint ptr %arrayidx131.i.i to i32, !dbg !336
  call void @__asan_load1_noabort(i32 %226), !dbg !336
  %.pr.i.i = load i8, ptr %arrayidx131.i.i, align 1, !dbg !336
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.i), !dbg !336
  %tobool153.not.i.i = icmp eq i8 %.pr.i.i, 0, !dbg !336
  br i1 %tobool153.not.i.i, label %for.end.i158.i.if.then154.i.i_crit_edge, label %if.end155.i.i, !dbg !337

for.end.i158.i.if.then154.i.i_crit_edge:          ; preds = %for.end.i158.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !337
  br label %if.then154.i.i, !dbg !337

if.then154.i.i:                                   ; preds = %for.end.i158.i.if.then154.i.i_crit_edge, %for.cond.i.i.if.then154.i.i_crit_edge
  %gcov_ctr199.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 25), align 8, !dbg !338
  %227 = add i64 %gcov_ctr199.i.i, 1, !dbg !338
  store i64 %227, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 25), align 8, !dbg !338
  br label %parse_field.exit.thread.i, !dbg !338

if.end155.i.i:                                    ; preds = %for.end.i158.i
  %sub157.i.i = sub i32 %i.6.i.i, %inc130.i.i, !dbg !339
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub157.i.i), !dbg !340
  %cmp158.i.i = icmp ugt i32 %sub157.i.i, 255, !dbg !340
  br i1 %cmp158.i.i, label %if.then160.i.i, label %if.end161.i.i, !dbg !341

if.then160.i.i:                                   ; preds = %if.end155.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !342
  %gcov_ctr200.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 26), align 16, !dbg !342
  %228 = add i64 %gcov_ctr200.i.i, 1, !dbg !342
  store i64 %228, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 26), align 16, !dbg !342
  br label %parse_field.exit.thread.i, !dbg !342

if.end161.i.i:                                    ; preds = %if.end155.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !343
  %gcov_ctr201.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 27), align 8, !dbg !343
  %229 = add i64 %gcov_ctr201.i.i, 1, !dbg !343
  store i64 %229, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 27), align 8, !dbg !343
  %add.ptr162.i.i = getelementptr i8, ptr %str.addr.0272.i, i32 %inc130.i.i, !dbg !344
  %230 = ptrtoint ptr %add.ptr162.i.i to i32, !dbg !345
  %conv163.i.i = zext i32 %230 to i64, !dbg !345
  %231 = ptrtoint ptr %arrayidx131.i.i to i32, !dbg !346
  call void @__asan_store1_noabort(i32 %231), !dbg !346
  store i8 0, ptr %arrayidx131.i.i, align 1, !dbg !346
  %inc165.i.i = add i32 %i.6.i.i, 1, !dbg !347
  br label %parse_field.exit.i, !dbg !348

if.end168.i.i:                                    ; preds = %lor.lhs.false120.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !349
  %gcov_ctr202.i.i = load i64, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 28), align 16, !dbg !349
  %232 = add i64 %gcov_ctr202.i.i, 1, !dbg !349
  store i64 %232, ptr getelementptr inbounds ([29 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 28), align 16, !dbg !349
  br label %parse_field.exit.thread.i, !dbg !349

parse_field.exit.thread.i:                        ; preds = %if.end168.i.i, %if.then160.i.i, %if.then154.i.i, %if.then128.i.i, %if.then101.i.i, %if.then70.i.i, %if.then46.i.i, %if.then29.i.i, %if.then25.i.i, %if.then21.i.i, %if.then.i135.i
  %entry1.3 = phi ptr [ %entry1.2, %if.then.i135.i ], [ %entry1.1, %if.then21.i.i ], [ %entry1.1, %if.then25.i.i ], [ %entry1.1, %if.then29.i.i ], [ %entry1.1, %if.then154.i.i ], [ %entry1.1, %if.then160.i.i ], [ %entry1.1, %if.then128.i.i ], [ %entry1.1, %if.end168.i.i ], [ %entry1.1, %if.then70.i.i ], [ %entry1.1, %if.then101.i.i ], [ %entry1.1, %if.then46.i.i ], !dbg !350
  %entry_size.1260.i = phi i32 [ %entry_size.1.lcssa.i, %if.then.i135.i ], [ %entry_size.1266.i, %if.then21.i.i ], [ %entry_size.1266.i, %if.then25.i.i ], [ %entry_size.1266.i, %if.then29.i.i ], [ %entry_size.1266.i, %if.then154.i.i ], [ %entry_size.1266.i, %if.then160.i.i ], [ %entry_size.1266.i, %if.then128.i.i ], [ %entry_size.1266.i, %if.end168.i.i ], [ %entry_size.1266.i, %if.then70.i.i ], [ %entry_size.1266.i, %if.then101.i.i ], [ %entry_size.1266.i, %if.then46.i.i ]
  %retval.2.i.ph.i = phi i32 [ 0, %if.then.i135.i ], [ -22, %if.then21.i.i ], [ -12, %if.then25.i.i ], [ -2, %if.then29.i.i ], [ -22, %if.then154.i.i ], [ -22, %if.then160.i.i ], [ -22, %if.then128.i.i ], [ -22, %if.end168.i.i ], [ -22, %if.then70.i.i ], [ -22, %if.then101.i.i ], [ -22, %if.then46.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i.i) #14, !dbg !351
  br label %while.end.i, !dbg !352

parse_field.exit.i:                               ; preds = %if.end161.i.i, %if.end112.i.i, %if.then111.i.i
  %val.1.i = phi i64 [ %conv163.i.i, %if.end161.i.i ], [ %195, %if.end112.i.i ], [ %val.0269.i, %if.then111.i.i ], !dbg !203
  %retval.2.i.i = phi i32 [ %inc165.i.i, %if.end161.i.i ], [ %i.5.lcssa318.i.i, %if.end112.i.i ], [ %ret.0.i.i, %if.then111.i.i ], !dbg !210
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i.i) #14, !dbg !351
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i.i), !dbg !353
  %cmp.i45 = icmp sgt i32 %retval.2.i.i, 0, !dbg !353
  br i1 %cmp.i45, label %while.body.i, label %parse_field.exit.i.while.end.i_crit_edge, !dbg !352

parse_field.exit.i.while.end.i_crit_edge:         ; preds = %parse_field.exit.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !352
  br label %while.end.i, !dbg !352

while.body.i:                                     ; preds = %parse_field.exit.i
  %gcov_ctr.i159.i = load i64, ptr @__llvm_gcov_ctr.16, align 8
  %233 = add i64 %gcov_ctr.i159.i, 1
  store i64 %233, ptr @__llvm_gcov_ctr.16, align 8
  %filter_type.i.i = getelementptr inbounds %struct.ftrace_event_field, ptr %call27.i.i, i32 0, i32 3, !dbg !354
  %234 = ptrtoint ptr %filter_type.i.i to i32, !dbg !354
  call void @__asan_load4_noabort(i32 %234), !dbg !354
  %235 = load i32, ptr %filter_type.i.i, align 4, !dbg !354
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %235), !dbg !357
  %cmp.i.i = icmp eq i32 %235, 5, !dbg !357
  br i1 %cmp.i.i, label %if.then7.i, label %if.end8.i, !dbg !358

if.then7.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !359
  %gcov_ctr85.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 2), align 16, !dbg !359
  %236 = add i64 %gcov_ctr85.i, 1, !dbg !359
  store i64 %236, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 2), align 16, !dbg !359
  br label %if.then12, !dbg !359

if.end8.i:                                        ; preds = %while.body.i
  %gcov_ctr.i160.i = load i64, ptr @__llvm_gcov_ctr.17, align 16
  %237 = add i64 %gcov_ctr.i160.i, 1
  store i64 %237, ptr @__llvm_gcov_ctr.17, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %235), !dbg !360
  %cmp.i162.i = icmp eq i32 %235, 2, !dbg !360
  br i1 %cmp.i162.i, label %if.end8.i.if.then10.i_crit_edge, label %lor.lhs.false.i163.i, !dbg !362

if.end8.i.if.then10.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !362
  br label %if.then10.i, !dbg !362

lor.lhs.false.i163.i:                             ; preds = %if.end8.i
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 1), align 8, !dbg !363
  %238 = add i64 %gcov_ctr11.i.i, 1, !dbg !363
  store i64 %238, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 1), align 8, !dbg !363
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %235), !dbg !364
  %cmp2.i.i = icmp eq i32 %235, 3, !dbg !364
  br i1 %cmp2.i.i, label %lor.lhs.false.i163.i.if.then10.i_crit_edge, label %lor.lhs.false3.i.i, !dbg !365

lor.lhs.false.i163.i.if.then10.i_crit_edge:       ; preds = %lor.lhs.false.i163.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !365
  br label %if.then10.i, !dbg !365

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i163.i
  %gcov_ctr12.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 2), align 16, !dbg !366
  %239 = add i64 %gcov_ctr12.i.i, 1, !dbg !366
  store i64 %239, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 2), align 16, !dbg !366
  %240 = ptrtoint ptr %filter_type.i.i to i32, !dbg !367
  call void @__asan_load4_noabort(i32 %240), !dbg !367
  %241 = load i32, ptr %filter_type.i.i, align 4, !dbg !367
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %241), !dbg !368
  %cmp5.i.i = icmp eq i32 %241, 1, !dbg !368
  br i1 %cmp5.i.i, label %if.then10.thread212.i, label %lor.lhs.false6.i.i, !dbg !369

if.then10.thread212.i:                            ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !370
  %conv11214.i = trunc i64 %val.1.i to i32, !dbg !370
  %242 = inttoptr i32 %conv11214.i to ptr, !dbg !371
  br label %if.then14.i, !dbg !372

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false3.i.i
  %gcov_ctr13.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 3), align 8, !dbg !373
  %243 = add i64 %gcov_ctr13.i.i, 1, !dbg !373
  store i64 %243, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 3), align 8, !dbg !373
  %244 = ptrtoint ptr %filter_type.i.i to i32, !dbg !374
  call void @__asan_load4_noabort(i32 %244), !dbg !374
  %245 = load i32, ptr %filter_type.i.i, align 4, !dbg !374
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %245), !dbg !375
  %cmp8.i.i = icmp eq i32 %245, 4, !dbg !375
  br i1 %cmp8.i.i, label %if.then10.thread209.i, label %is_string_field.exit.i, !dbg !376

if.then10.thread209.i:                            ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !370
  %conv11211.i = trunc i64 %val.1.i to i32, !dbg !370
  %246 = inttoptr i32 %conv11211.i to ptr, !dbg !371
  br label %lor.lhs.false.i, !dbg !372

is_string_field.exit.i:                           ; preds = %lor.lhs.false6.i.i
  %gcov_ctr14.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 4), align 16, !dbg !377
  %247 = add i64 %gcov_ctr14.i.i, 1, !dbg !377
  store i64 %247, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 4), align 16, !dbg !377
  %248 = ptrtoint ptr %filter_type.i.i to i32, !dbg !378
  call void @__asan_load4_noabort(i32 %248), !dbg !378
  %249 = load i32, ptr %filter_type.i.i, align 4, !dbg !378
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %249), !dbg !379
  %cmp10.i.i = icmp eq i32 %249, 6, !dbg !379
  br i1 %cmp10.i.i, label %if.then10.thread.i, label %if.else52.i, !dbg !380

if.then10.thread.i:                               ; preds = %is_string_field.exit.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !370
  %conv11208.i = trunc i64 %val.1.i to i32, !dbg !370
  %250 = inttoptr i32 %conv11208.i to ptr, !dbg !371
  br label %lor.lhs.false.i, !dbg !372

if.then10.i:                                      ; preds = %lor.lhs.false.i163.i.if.then10.i_crit_edge, %if.end8.i.if.then10.i_crit_edge
  %251 = ptrtoint ptr %filter_type.i.i to i32, !dbg !381
  call void @__asan_load4_noabort(i32 %251), !dbg !381
  %.pr.pr.i = load i32, ptr %filter_type.i.i, align 4, !dbg !381
  %conv11.i = trunc i64 %val.1.i to i32, !dbg !370
  %252 = inttoptr i32 %conv11.i to ptr, !dbg !371
  %253 = zext i32 %.pr.pr.i to i64, !dbg !372
  call void @__sanitizer_cov_trace_switch(i64 %253, ptr @__sancov_gen_cov_switch_values.41), !dbg !372
  switch i32 %.pr.pr.i, label %if.then10.i.lor.lhs.false.i_crit_edge [
    i32 1, label %if.then10.i.if.then14.i_crit_edge
    i32 2, label %if.then10.i.if.then22.i_crit_edge
  ], !dbg !372

if.then10.i.if.then22.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !372
  br label %if.then22.i, !dbg !372

if.then10.i.if.then14.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !372
  br label %if.then14.i, !dbg !372

if.then10.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !372
  br label %lor.lhs.false.i, !dbg !372

if.then14.i:                                      ; preds = %if.then10.i.if.then14.i_crit_edge, %if.then10.thread212.i
  %254 = phi ptr [ %242, %if.then10.thread212.i ], [ %252, %if.then10.i.if.then14.i_crit_edge ]
  %gcov_ctr86.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 3), align 8, !dbg !382
  %255 = add i64 %gcov_ctr86.i, 1, !dbg !382
  store i64 %255, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 3), align 8, !dbg !382
  %offset.i = getelementptr inbounds %struct.ftrace_event_field, ptr %call27.i.i, i32 0, i32 4, !dbg !383
  %256 = ptrtoint ptr %offset.i to i32, !dbg !383
  call void @__asan_load4_noabort(i32 %256), !dbg !383
  %257 = load i32, ptr %offset.i, align 4, !dbg !383
  %add.ptr.i = getelementptr i8, ptr %entry1.0270.i, i32 %257, !dbg !384
  %size.i = getelementptr inbounds %struct.ftrace_event_field, ptr %call27.i.i, i32 0, i32 5, !dbg !385
  %258 = ptrtoint ptr %size.i to i32, !dbg !385
  call void @__asan_load4_noabort(i32 %258), !dbg !385
  %259 = load i32, ptr %size.i, align 4, !dbg !385
  %call15.i = call i32 @strlcpy(ptr noundef %add.ptr.i, ptr noundef %254, i32 noundef %259) #14, !dbg !386
  br label %if.end73.i, !dbg !387

lor.lhs.false.i:                                  ; preds = %if.then10.i.lor.lhs.false.i_crit_edge, %if.then10.thread.i, %if.then10.thread209.i
  %260 = phi ptr [ %250, %if.then10.thread.i ], [ %252, %if.then10.i.lor.lhs.false.i_crit_edge ], [ %246, %if.then10.thread209.i ]
  %gcov_ctr87.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 4), align 16, !dbg !388
  %261 = add i64 %gcov_ctr87.i, 1, !dbg !388
  store i64 %261, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 4), align 16, !dbg !388
  %262 = ptrtoint ptr %filter_type.i.i to i32, !dbg !389
  call void @__asan_load4_noabort(i32 %262), !dbg !389
  %263 = load i32, ptr %filter_type.i.i, align 4, !dbg !389
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %263), !dbg !390
  %cmp20.i = icmp eq i32 %263, 3, !dbg !390
  br i1 %cmp20.i, label %lor.lhs.false.i.if.then22.i_crit_edge, label %if.else44.i, !dbg !391

lor.lhs.false.i.if.then22.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !391
  br label %if.then22.i, !dbg !391

if.then22.i:                                      ; preds = %lor.lhs.false.i.if.then22.i_crit_edge, %if.then10.i.if.then22.i_crit_edge
  %264 = phi ptr [ %252, %if.then10.i.if.then22.i_crit_edge ], [ %260, %lor.lhs.false.i.if.then22.i_crit_edge ]
  %call23.i = call i32 @strlen(ptr noundef %264) #16, !dbg !392
  %add.i = add i32 %call23.i, 1, !dbg !393
  %and.i = and i32 %entry_size.1266.i, 65535, !dbg !394
  %add24.i = add i32 %add.i, %entry_size.1266.i, !dbg !395
  %call25.i = call noalias ptr @krealloc(ptr noundef %entry1.0270.i, i32 noundef %add24.i, i32 noundef 3264) #17, !dbg !396
  %tobool26.not.i = icmp eq ptr %call25.i, null, !dbg !397
  br i1 %tobool26.not.i, label %cleanup49.i, label %if.end28.i, !dbg !398

if.end28.i:                                       ; preds = %if.then22.i
  %add.ptr29.i = getelementptr i8, ptr %call25.i, i32 %entry_size.1266.i, !dbg !399
  %call30.i = call i32 @strlcpy(ptr noundef %add.ptr29.i, ptr noundef %264, i32 noundef %add.i) #14, !dbg !400
  %offset31.i = getelementptr inbounds %struct.ftrace_event_field, ptr %call27.i.i, i32 0, i32 4, !dbg !401
  %265 = ptrtoint ptr %offset31.i to i32, !dbg !401
  call void @__asan_load4_noabort(i32 %265), !dbg !401
  %266 = load i32, ptr %offset31.i, align 4, !dbg !401
  %add.ptr32.i = getelementptr i8, ptr %call25.i, i32 %266, !dbg !402
  %267 = ptrtoint ptr %filter_type.i.i to i32, !dbg !403
  call void @__asan_load4_noabort(i32 %267), !dbg !403
  %268 = load i32, ptr %filter_type.i.i, align 4, !dbg !403
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %268), !dbg !404
  %cmp34.i = icmp eq i32 %268, 3, !dbg !404
  br i1 %cmp34.i, label %if.then36.i, label %if.end28.i.cleanup.cont.i_crit_edge, !dbg !405

if.end28.i.cleanup.cont.i_crit_edge:              ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !405
  br label %cleanup.cont.i, !dbg !405

if.then36.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !406
  %gcov_ctr89.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 6), align 16, !dbg !406
  %269 = add i64 %gcov_ctr89.i, 1, !dbg !406
  store i64 %269, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 6), align 16, !dbg !406
  %270 = ptrtoint ptr %offset31.i to i32, !dbg !407
  call void @__asan_load4_noabort(i32 %270), !dbg !407
  %271 = load i32, ptr %offset31.i, align 4, !dbg !407
  %size38.i = getelementptr inbounds %struct.ftrace_event_field, ptr %call27.i.i, i32 0, i32 5, !dbg !408
  %272 = ptrtoint ptr %size38.i to i32, !dbg !408
  call void @__asan_load4_noabort(i32 %272), !dbg !408
  %273 = load i32, ptr %size38.i, align 4, !dbg !408
  %274 = add i32 %271, %273, !dbg !409
  %sub40.i = sub i32 %and.i, %274, !dbg !409
  br label %cleanup.cont.i, !dbg !410

cleanup.cont.i:                                   ; preds = %if.then36.i, %if.end28.i.cleanup.cont.i_crit_edge
  %str_loc.0.i = phi i32 [ %sub40.i, %if.then36.i ], [ %and.i, %if.end28.i.cleanup.cont.i_crit_edge ], !dbg !203
  %gcov_ctr90.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 7), align 8, !dbg !411
  %275 = add i64 %gcov_ctr90.i, 1, !dbg !411
  store i64 %275, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 7), align 8, !dbg !411
  %shl.i = shl i32 %add.i, 16, !dbg !412
  %or.i = or i32 %str_loc.0.i, %shl.i, !dbg !413
  %276 = ptrtoint ptr %add.ptr32.i to i32, !dbg !414
  call void @__asan_store4_noabort(i32 %276), !dbg !414
  store i32 %or.i, ptr %add.ptr32.i, align 4, !dbg !414
  %gcov_ctr91.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 8), align 16, !dbg !415
  %277 = add i64 %gcov_ctr91.i, 1, !dbg !415
  store i64 %277, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 8), align 16, !dbg !415
  br label %if.end73.i, !dbg !415

if.else44.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !416
  %gcov_ctr92.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 9), align 8, !dbg !416
  %278 = add i64 %gcov_ctr92.i, 1, !dbg !416
  store i64 %278, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 9), align 8, !dbg !416
  %offset45.i = getelementptr inbounds %struct.ftrace_event_field, ptr %call27.i.i, i32 0, i32 4, !dbg !417
  %279 = ptrtoint ptr %offset45.i to i32, !dbg !417
  call void @__asan_load4_noabort(i32 %279), !dbg !417
  %280 = load i32, ptr %offset45.i, align 4, !dbg !417
  %add.ptr46.i = getelementptr i8, ptr %entry1.0270.i, i32 %280, !dbg !418
  %281 = ptrtoint ptr %add.ptr46.i to i32, !dbg !419
  call void @__asan_store4_noabort(i32 %281), !dbg !419
  store ptr @.str, ptr %add.ptr46.i, align 4, !dbg !419
  br label %if.end73.i

cleanup49.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !420
  %gcov_ctr88.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 5), align 8, !dbg !420
  %282 = add i64 %gcov_ctr88.i, 1, !dbg !420
  store i64 %282, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 5), align 8, !dbg !420
  call void @kfree(ptr noundef %entry1.0270.i) #14, !dbg !421
  br label %if.then12

if.else52.i:                                      ; preds = %is_string_field.exit.i
  %size53.i = getelementptr inbounds %struct.ftrace_event_field, ptr %call27.i.i, i32 0, i32 5, !dbg !422
  %283 = ptrtoint ptr %size53.i to i32, !dbg !422
  call void @__asan_load4_noabort(i32 %283), !dbg !422
  %284 = load i32, ptr %size53.i, align 4, !dbg !422
  %285 = zext i32 %284 to i64, !dbg !423
  call void @__sanitizer_cov_trace_switch(i64 %285, ptr @__sancov_gen_cov_switch_values.42), !dbg !423
  switch i32 %284, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb58.i
    i32 4, label %sw.bb64.i
    i32 8, label %sw.bb70.i
  ], !dbg !423

sw.bb.i:                                          ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !424
  %gcov_ctr94.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 11), align 8, !dbg !424
  %286 = add i64 %gcov_ctr94.i, 1, !dbg !424
  store i64 %286, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 11), align 8, !dbg !424
  %conv54.i = trunc i64 %val.1.i to i8, !dbg !425
  %offset55.i = getelementptr inbounds %struct.ftrace_event_field, ptr %call27.i.i, i32 0, i32 4, !dbg !426
  %287 = ptrtoint ptr %offset55.i to i32, !dbg !426
  call void @__asan_load4_noabort(i32 %287), !dbg !426
  %288 = load i32, ptr %offset55.i, align 4, !dbg !426
  %add.ptr56.i = getelementptr i8, ptr %entry1.0270.i, i32 %288, !dbg !427
  %289 = ptrtoint ptr %add.ptr56.i to i32, !dbg !428
  call void @__asan_store1_noabort(i32 %289), !dbg !428
  store i8 %conv54.i, ptr %add.ptr56.i, align 1, !dbg !428
  br label %if.end73.i

sw.bb58.i:                                        ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !429
  %gcov_ctr95.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 12), align 16, !dbg !429
  %290 = add i64 %gcov_ctr95.i, 1, !dbg !429
  store i64 %290, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 12), align 16, !dbg !429
  %conv60.i = trunc i64 %val.1.i to i16, !dbg !430
  %offset61.i = getelementptr inbounds %struct.ftrace_event_field, ptr %call27.i.i, i32 0, i32 4, !dbg !431
  %291 = ptrtoint ptr %offset61.i to i32, !dbg !431
  call void @__asan_load4_noabort(i32 %291), !dbg !431
  %292 = load i32, ptr %offset61.i, align 4, !dbg !431
  %add.ptr62.i = getelementptr i8, ptr %entry1.0270.i, i32 %292, !dbg !432
  %293 = ptrtoint ptr %add.ptr62.i to i32, !dbg !433
  call void @__asan_storeN_noabort(i32 %293, i32 2), !dbg !433
  store i16 %conv60.i, ptr %add.ptr62.i, align 1, !dbg !433
  br label %if.end73.i

sw.bb64.i:                                        ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !434
  %gcov_ctr96.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 13), align 8, !dbg !434
  %294 = add i64 %gcov_ctr96.i, 1, !dbg !434
  store i64 %294, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 13), align 8, !dbg !434
  %conv66.i = trunc i64 %val.1.i to i32, !dbg !435
  %offset67.i = getelementptr inbounds %struct.ftrace_event_field, ptr %call27.i.i, i32 0, i32 4, !dbg !436
  %295 = ptrtoint ptr %offset67.i to i32, !dbg !436
  call void @__asan_load4_noabort(i32 %295), !dbg !436
  %296 = load i32, ptr %offset67.i, align 4, !dbg !436
  %add.ptr68.i = getelementptr i8, ptr %entry1.0270.i, i32 %296, !dbg !437
  %297 = ptrtoint ptr %add.ptr68.i to i32, !dbg !438
  call void @__asan_storeN_noabort(i32 %297, i32 4), !dbg !438
  store i32 %conv66.i, ptr %add.ptr68.i, align 1, !dbg !438
  br label %if.end73.i

sw.bb70.i:                                        ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !439
  %gcov_ctr97.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 14), align 16, !dbg !439
  %298 = add i64 %gcov_ctr97.i, 1, !dbg !439
  store i64 %298, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 14), align 16, !dbg !439
  %offset71.i = getelementptr inbounds %struct.ftrace_event_field, ptr %call27.i.i, i32 0, i32 4, !dbg !440
  %299 = ptrtoint ptr %offset71.i to i32, !dbg !440
  call void @__asan_load4_noabort(i32 %299), !dbg !440
  %300 = load i32, ptr %offset71.i, align 4, !dbg !440
  %add.ptr72.i = getelementptr i8, ptr %entry1.0270.i, i32 %300, !dbg !441
  %301 = ptrtoint ptr %add.ptr72.i to i32, !dbg !442
  call void @__asan_storeN_noabort(i32 %301, i32 8), !dbg !442
  store i64 %val.1.i, ptr %add.ptr72.i, align 1, !dbg !442
  br label %if.end73.i, !dbg !443

sw.default.i:                                     ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !444
  %gcov_ctr93.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 10), align 16, !dbg !444
  %302 = add i64 %gcov_ctr93.i, 1, !dbg !444
  store i64 %302, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 10), align 16, !dbg !444
  br label %if.then12, !dbg !444

if.end73.i:                                       ; preds = %sw.bb70.i, %sw.bb64.i, %sw.bb58.i, %sw.bb.i, %if.else44.i, %cleanup.cont.i, %if.then14.i
  %entry1.4 = phi ptr [ %call25.i, %cleanup.cont.i ], [ %entry1.1, %if.else44.i ], [ %entry1.1, %if.then14.i ], [ %entry1.1, %sw.bb70.i ], [ %entry1.1, %sw.bb64.i ], [ %entry1.1, %sw.bb58.i ], [ %entry1.1, %sw.bb.i ], !dbg !203
  %entry_size.3.i = phi i32 [ %add24.i, %cleanup.cont.i ], [ %entry_size.1266.i, %if.else44.i ], [ %entry_size.1266.i, %if.then14.i ], [ %entry_size.1266.i, %sw.bb70.i ], [ %entry_size.1266.i, %sw.bb64.i ], [ %entry_size.1266.i, %sw.bb58.i ], [ %entry_size.1266.i, %sw.bb.i ], !dbg !203
  %entry1.4.i = phi ptr [ %call25.i, %cleanup.cont.i ], [ %entry1.0270.i, %if.else44.i ], [ %entry1.0270.i, %if.then14.i ], [ %entry1.0270.i, %sw.bb70.i ], [ %entry1.0270.i, %sw.bb64.i ], [ %entry1.0270.i, %sw.bb58.i ], [ %entry1.0270.i, %sw.bb.i ], !dbg !445
  %add.ptr74.i = getelementptr i8, ptr %str.addr.0272.i, i32 %retval.2.i.i, !dbg !446
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i.i) #14, !dbg !196
  %303 = ptrtoint ptr %val.i.i to i32, !dbg !199
  call void @__asan_store8_noabort(i32 %303), !dbg !199
  store i64 -1, ptr %val.i.i, align 8, !dbg !199, !annotation !200
  %304 = ptrtoint ptr %add.ptr74.i to i32, !dbg !201
  call void @__asan_load1_noabort(i32 %304), !dbg !201
  %305 = load i8, ptr %add.ptr74.i, align 1, !dbg !201
  %tobool.not.i133.i = icmp eq i8 %305, 0, !dbg !201
  br i1 %tobool.not.i133.i, label %if.end73.i.if.then.i135.i_crit_edge, label %if.end73.i.while.cond.preheader.i.i_crit_edge, !dbg !202, !llvm.loop !447

if.end73.i.while.cond.preheader.i.i_crit_edge:    ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !202
  br label %while.cond.preheader.i.i, !dbg !202

if.end73.i.if.then.i135.i_crit_edge:              ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !202
  br label %if.then.i135.i, !dbg !202

while.end.i:                                      ; preds = %parse_field.exit.i.while.end.i_crit_edge, %parse_field.exit.thread.i
  %entry1.5 = phi ptr [ %entry1.3, %parse_field.exit.thread.i ], [ %entry1.1, %parse_field.exit.i.while.end.i_crit_edge ], !dbg !350
  %entry_size.1259.i = phi i32 [ %entry_size.1260.i, %parse_field.exit.thread.i ], [ %entry_size.1266.i, %parse_field.exit.i.while.end.i_crit_edge ]
  %retval.2.i207.i = phi i32 [ %retval.2.i.ph.i, %parse_field.exit.thread.i ], [ %retval.2.i.i, %parse_field.exit.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i207.i), !dbg !449
  %cmp75.i = icmp slt i32 %retval.2.i207.i, 0, !dbg !449
  br i1 %cmp75.i, label %if.then77.i, label %parse_entry.exit, !dbg !450

if.then77.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !451
  %gcov_ctr98.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 15), align 8, !dbg !451
  %306 = add i64 %gcov_ctr98.i, 1, !dbg !451
  store i64 %306, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 15), align 8, !dbg !451
  br label %if.then12, !dbg !452

parse_entry.exit:                                 ; preds = %while.end.i
  %gcov_ctr99.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 16), align 16, !dbg !453
  %307 = add i64 %gcov_ctr99.i, 1, !dbg !453
  store i64 %307, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 16), align 16, !dbg !453
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entry_size.1259.i), !dbg !454
  %cmp11 = icmp slt i32 %entry_size.1259.i, 0, !dbg !454
  br i1 %cmp11, label %parse_entry.exit.if.then12_crit_edge, label %if.else, !dbg !455

parse_entry.exit.if.then12_crit_edge:             ; preds = %parse_entry.exit
  call void @__sanitizer_cov_trace_pc() #13, !dbg !455
  br label %if.then12, !dbg !455

if.then12:                                        ; preds = %parse_entry.exit.if.then12_crit_edge, %if.then77.i, %sw.default.i, %cleanup49.i, %if.then7.i, %trace_alloc_entry.exit.thread.i
  %retval.5.i63 = phi i32 [ %entry_size.1259.i, %parse_entry.exit.if.then12_crit_edge ], [ -12, %trace_alloc_entry.exit.thread.i ], [ %retval.2.i207.i, %if.then77.i ], [ -22, %sw.default.i ], [ -12, %cleanup49.i ], [ -22, %if.then7.i ]
  %entry1.661 = phi ptr [ %entry1.5, %parse_entry.exit.if.then12_crit_edge ], [ null, %trace_alloc_entry.exit.thread.i ], [ %entry1.5, %if.then77.i ], [ %entry1.1, %sw.default.i ], [ null, %cleanup49.i ], [ %entry1.1, %if.then7.i ]
  %gcov_ctr25 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 2), align 16, !dbg !456
  %308 = add i64 %gcov_ctr25, 1, !dbg !456
  store i64 %308, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 2), align 16, !dbg !456
  br label %if.end15, !dbg !457

if.else:                                          ; preds = %parse_entry.exit
  %gcov_ctr26 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 3), align 8, !dbg !458
  %309 = add i64 %gcov_ctr26, 1, !dbg !458
  store i64 %309, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 3), align 8, !dbg !458
  %gcov_ctr.i46 = load i64, ptr @__llvm_gcov_ctr.10, align 8
  %310 = add i64 %gcov_ctr.i46, 1
  store i64 %310, ptr @__llvm_gcov_ctr.10, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer.i) #14, !dbg !459
  %311 = call ptr @memset(ptr %fbuffer.i, i32 255, i32 24), !dbg !462
  %gcov_ctr.i.i.i47 = load i64, ptr @__llvm_gcov_ctr.35, align 8
  %312 = add i64 %gcov_ctr.i.i.i47, 1
  store i64 %312, ptr @__llvm_gcov_ctr.35, align 8
  %gcov_ctr.i.i.i.i48 = load i64, ptr @__llvm_gcov_ctr.37, align 8, !dbg !463
  %313 = add i64 %gcov_ctr.i.i.i.i48, 1, !dbg !463
  store i64 %313, ptr @__llvm_gcov_ctr.37, align 8, !dbg !463
  %gcov_ctr.i.i.i.i.i49 = load i64, ptr @__llvm_gcov_ctr.28, align 8, !dbg !472
  %314 = add i64 %gcov_ctr.i.i.i.i.i49, 1, !dbg !472
  store i64 %314, ptr @__llvm_gcov_ctr.28, align 8, !dbg !472
  %315 = call i32 @llvm.read_register.i32(metadata !15) #14, !dbg !472
  %and.i.i.i.i.i = and i32 %315, -16384, !dbg !474
  %316 = inttoptr i32 %and.i.i.i.i.i to ptr, !dbg !475
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %316, i32 0, i32 1, !dbg !476
  %317 = ptrtoint ptr %preempt_count.i.i.i.i to i32, !dbg !477
  call void @__asan_load4_noabort(i32 %317), !dbg !477
  %318 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4, !dbg !477
  %add.i.i.i50 = add i32 %318, 1, !dbg !477
  store volatile i32 %add.i.i.i50, ptr %preempt_count.i.i.i.i, align 4, !dbg !477
  call void asm sideeffect "", "~{memory}"() #14, !dbg !478, !srcloc !479
  %gcov_ctr.i.i51 = load i64, ptr @__llvm_gcov_ctr.33, align 16, !dbg !480
  %319 = add i64 %gcov_ctr.i.i51, 1, !dbg !480
  store i64 %319, ptr @__llvm_gcov_ctr.33, align 16, !dbg !480
  %gcov_ctr.i10.i.i = load i64, ptr @__llvm_gcov_ctr.36, align 8
  %320 = add i64 %gcov_ctr.i10.i.i, 1
  store i64 %320, ptr @__llvm_gcov_ctr.36, align 8
  call void @lock_acquire(ptr noundef nonnull @rcu_sched_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef 1) #14, !dbg !481
  %call.i.i = call zeroext i1 @rcu_is_watching() #14, !dbg !484
  br i1 %call.i.i, label %if.else.rcu_read_lock_sched.exit.i_crit_edge, label %land.lhs.true.i.i53, !dbg !484

if.else.rcu_read_lock_sched.exit.i_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13, !dbg !484
  br label %rcu_read_lock_sched.exit.i, !dbg !484

land.lhs.true.i.i53:                              ; preds = %if.else
  %gcov_ctr6.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 1), align 8, !dbg !484
  %321 = add i64 %gcov_ctr6.i.i, 1, !dbg !484
  store i64 %321, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 1), align 8, !dbg !484
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #14, !dbg !484
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i), !dbg !484
  %tobool.not.i.i52 = icmp eq i32 %call2.i.i, 0, !dbg !484
  br i1 %tobool.not.i.i52, label %land.lhs.true.i.i53.rcu_read_lock_sched.exit.i_crit_edge, label %land.lhs.true3.i.i, !dbg !484

land.lhs.true.i.i53.rcu_read_lock_sched.exit.i_crit_edge: ; preds = %land.lhs.true.i.i53
  call void @__sanitizer_cov_trace_pc() #13, !dbg !484
  br label %rcu_read_lock_sched.exit.i, !dbg !484

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i53
  %gcov_ctr7.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 2), align 16, !dbg !484
  %322 = add i64 %gcov_ctr7.i.i, 1, !dbg !484
  store i64 %322, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 2), align 16, !dbg !484
  %.b9.i.i = load i1, ptr @rcu_read_lock_sched.__warned, align 1, !dbg !484
  br i1 %.b9.i.i, label %land.lhs.true3.i.i.rcu_read_lock_sched.exit.i_crit_edge, label %if.then.i.i, !dbg !484

land.lhs.true3.i.i.rcu_read_lock_sched.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !484
  br label %rcu_read_lock_sched.exit.i, !dbg !484

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !484
  %gcov_ctr8.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 3), align 8, !dbg !484
  %323 = add i64 %gcov_ctr8.i.i, 1, !dbg !484
  store i64 %323, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 3), align 8, !dbg !484
  store i1 true, ptr @rcu_read_lock_sched.__warned, align 1, !dbg !484
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 788, ptr noundef nonnull @.str.3) #14, !dbg !484
  br label %rcu_read_lock_sched.exit.i, !dbg !484

rcu_read_lock_sched.exit.i:                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.rcu_read_lock_sched.exit.i_crit_edge, %land.lhs.true.i.i53.rcu_read_lock_sched.exit.i_crit_edge, %if.else.rcu_read_lock_sched.exit.i_crit_edge
  %call.i = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer.i, ptr noundef nonnull %10, i32 noundef %entry_size.1259.i) #14, !dbg !485
  %tobool.not.i54 = icmp eq ptr %call.i, null, !dbg !486
  br i1 %tobool.not.i54, label %rcu_read_lock_sched.exit.i.if.end.i56_crit_edge, label %if.then.i55, !dbg !486

rcu_read_lock_sched.exit.i.if.end.i56_crit_edge:  ; preds = %rcu_read_lock_sched.exit.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !486
  br label %if.end.i56, !dbg !486

if.then.i55:                                      ; preds = %rcu_read_lock_sched.exit.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !487
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 1), align 8, !dbg !487
  %324 = add i64 %gcov_ctr2.i, 1, !dbg !487
  store i64 %324, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 1), align 8, !dbg !487
  %325 = call ptr @memcpy(ptr %call.i, ptr %entry1.5, i32 %entry_size.1259.i), !dbg !488
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer.i) #14, !dbg !489
  br label %if.end.i56, !dbg !490

if.end.i56:                                       ; preds = %if.then.i55, %rcu_read_lock_sched.exit.i.if.end.i56_crit_edge
  %written.0.i = phi i32 [ %entry_size.1259.i, %if.then.i55 ], [ 0, %rcu_read_lock_sched.exit.i.if.end.i56_crit_edge ], !dbg !491
  %call.i6.i = call zeroext i1 @rcu_is_watching() #14, !dbg !492
  br i1 %call.i6.i, label %if.end.i56.trace_inject_entry.exit_crit_edge, label %land.lhs.true.i9.i, !dbg !492

if.end.i56.trace_inject_entry.exit_crit_edge:     ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #13, !dbg !492
  br label %trace_inject_entry.exit, !dbg !492

land.lhs.true.i9.i:                               ; preds = %if.end.i56
  %gcov_ctr.i7.i = load i64, ptr @__llvm_gcov_ctr.34, align 16, !dbg !492
  %326 = add i64 %gcov_ctr.i7.i, 1, !dbg !492
  store i64 %326, ptr @__llvm_gcov_ctr.34, align 16, !dbg !492
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #14, !dbg !492
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i), !dbg !492
  %tobool.not.i8.i = icmp eq i32 %call1.i.i, 0, !dbg !492
  br i1 %tobool.not.i8.i, label %land.lhs.true.i9.i.trace_inject_entry.exit_crit_edge, label %land.lhs.true2.i.i, !dbg !492

land.lhs.true.i9.i.trace_inject_entry.exit_crit_edge: ; preds = %land.lhs.true.i9.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !492
  br label %trace_inject_entry.exit, !dbg !492

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i9.i
  %gcov_ctr6.i10.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 1), align 8, !dbg !492
  %327 = add i64 %gcov_ctr6.i10.i, 1, !dbg !492
  store i64 %327, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 1), align 8, !dbg !492
  %.b9.i11.i = load i1, ptr @rcu_read_unlock_sched.__warned, align 1, !dbg !492
  br i1 %.b9.i11.i, label %land.lhs.true2.i.i.trace_inject_entry.exit_crit_edge, label %if.then.i13.i, !dbg !492

land.lhs.true2.i.i.trace_inject_entry.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !492
  br label %trace_inject_entry.exit, !dbg !492

if.then.i13.i:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !492
  %gcov_ctr7.i12.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 2), align 16, !dbg !492
  %328 = add i64 %gcov_ctr7.i12.i, 1, !dbg !492
  store i64 %328, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 2), align 16, !dbg !492
  store i1 true, ptr @rcu_read_unlock_sched.__warned, align 1, !dbg !492
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 806, ptr noundef nonnull @.str.4) #14, !dbg !492
  br label %trace_inject_entry.exit, !dbg !492

trace_inject_entry.exit:                          ; preds = %if.then.i13.i, %land.lhs.true2.i.i.trace_inject_entry.exit_crit_edge, %land.lhs.true.i9.i.trace_inject_entry.exit_crit_edge, %if.end.i56.trace_inject_entry.exit_crit_edge
  %gcov_ctr8.i14.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 3), align 8, !dbg !495
  %329 = add i64 %gcov_ctr8.i14.i, 1, !dbg !495
  store i64 %329, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 3), align 8, !dbg !495
  %gcov_ctr.i10.i15.i = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %330 = add i64 %gcov_ctr.i10.i15.i, 1
  store i64 %330, ptr @__llvm_gcov_ctr.38, align 8
  call void @lock_release(ptr noundef nonnull @rcu_sched_lock_map, i32 noundef 1) #14, !dbg !496
  call void asm sideeffect "", "~{memory}"() #14, !dbg !499, !srcloc !500
  %gcov_ctr.i.i16.i = load i64, ptr @__llvm_gcov_ctr.39, align 8
  %331 = add i64 %gcov_ctr.i.i16.i, 1
  store i64 %331, ptr @__llvm_gcov_ctr.39, align 8
  %gcov_ctr.i.i.i17.i = load i64, ptr @__llvm_gcov_ctr.37, align 8, !dbg !501
  %332 = add i64 %gcov_ctr.i.i.i17.i, 1, !dbg !501
  store i64 %332, ptr @__llvm_gcov_ctr.37, align 8, !dbg !501
  %gcov_ctr.i.i.i.i18.i = load i64, ptr @__llvm_gcov_ctr.28, align 8, !dbg !505
  %333 = add i64 %gcov_ctr.i.i.i.i18.i, 1, !dbg !505
  store i64 %333, ptr @__llvm_gcov_ctr.28, align 8, !dbg !505
  %334 = call i32 @llvm.read_register.i32(metadata !15) #14, !dbg !505
  %and.i.i.i.i19.i = and i32 %334, -16384, !dbg !507
  %335 = inttoptr i32 %and.i.i.i.i19.i to ptr, !dbg !508
  %preempt_count.i.i.i20.i = getelementptr inbounds %struct.thread_info, ptr %335, i32 0, i32 1, !dbg !509
  %336 = ptrtoint ptr %preempt_count.i.i.i20.i to i32, !dbg !510
  call void @__asan_load4_noabort(i32 %336), !dbg !510
  %337 = load volatile i32, ptr %preempt_count.i.i.i20.i, align 4, !dbg !510
  %sub.i.i.i = add i32 %337, -1, !dbg !510
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i20.i, align 4, !dbg !510
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer.i) #14, !dbg !511
  br label %if.end15

if.end15:                                         ; preds = %trace_inject_entry.exit, %if.then12, %if.end6.if.end15_crit_edge
  %entry1.7 = phi ptr [ null, %if.end6.if.end15_crit_edge ], [ %entry1.661, %if.then12 ], [ %entry1.5, %trace_inject_entry.exit ], !dbg !512
  %err.0 = phi i32 [ -19, %if.end6.if.end15_crit_edge ], [ %retval.5.i63, %if.then12 ], [ %written.0.i, %trace_inject_entry.exit ], !dbg !512
  call void @mutex_unlock(ptr noundef nonnull @event_mutex) #14, !dbg !513
  call void @kfree(ptr noundef %entry1.7) #14, !dbg !514
  call void @kfree(ptr noundef %call2) #14, !dbg !515
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0), !dbg !516
  %cmp16 = icmp slt i32 %err.0, 0, !dbg !516
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !517

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13, !dbg !518
  %gcov_ctr27 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 4), align 16, !dbg !518
  %338 = add i64 %gcov_ctr27, 1, !dbg !518
  store i64 %338, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 4), align 16, !dbg !518
  br label %cleanup, !dbg !519

if.end18:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13, !dbg !520
  %gcov_ctr28 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 5), align 8, !dbg !520
  %339 = add i64 %gcov_ctr28, 1, !dbg !520
  store i64 %339, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 5), align 8, !dbg !520
  %conv64 = zext i32 %err.0 to i64, !dbg !520
  %340 = ptrtoint ptr %ppos to i32, !dbg !521
  call void @__asan_load8_noabort(i32 %340), !dbg !521
  %341 = load i64, ptr %ppos, align 8, !dbg !521
  %add = add i64 %341, %conv64, !dbg !521
  store i64 %add, ptr %ppos, align 8, !dbg !521
  br label %cleanup, !dbg !522

cleanup:                                          ; preds = %if.end18, %if.then17, %if.then4, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %4, %if.then4 ], [ %err.0, %if.then17 ], [ %cnt, %if.end18 ], !dbg !512
  ret i32 %retval.0, !dbg !523
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_open_generic(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_gen_ctx_irq_test(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_find_event_field(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #9 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 1039937912) #14
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #14
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #14
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 36
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #13
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @llvm_gcda_summary_info() #14
  tail call void @llvm_gcda_end_file() #14
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #10 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  store i64 0, ptr @__llvm_gcov_ctr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.5, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.6, align 8
  store i64 0, ptr @__llvm_gcov_ctr.7, align 8
  store i64 0, ptr @__llvm_gcov_ctr.8, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) @__llvm_gcov_ctr.9, i8 0, i64 136, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.10, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.11, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.12, i8 0, i64 64, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.13, align 8
  store i64 0, ptr @__llvm_gcov_ctr.14, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(232) @__llvm_gcov_ctr.15, i8 0, i64 232, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.16, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.17, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.18, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.19, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.20, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.21, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.22, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @__llvm_gcov_ctr.23, i8 0, i64 216, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.24, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.25, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.26, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.27, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.28, align 8
  store i64 0, ptr @__llvm_gcov_ctr.29, align 8
  store i64 0, ptr @__llvm_gcov_ctr.30, align 8
  store i64 0, ptr @__llvm_gcov_ctr.31, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.32, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.33, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.34, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.35, align 8
  store i64 0, ptr @__llvm_gcov_ctr.36, align 8
  store i64 0, ptr @__llvm_gcov_ctr.37, align 8
  store i64 0, ptr @__llvm_gcov_ctr.38, align 8
  store i64 0, ptr @__llvm_gcov_ctr.39, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #9 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #14
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 7)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { noinline nounwind uwtable(sync) }
attributes #10 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nounwind uwtable(sync) }
attributes #13 = { nomerge }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !6, !8, !10, !11, !12, !14}
!llvm.named.register.sp = !{!15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.gcov = !{!24}
!llvm.ident = !{!25}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_events_inject.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @event_inject_fops, !3, !"event_inject_fops", i1 false, i1 false}
!3 = !{!"../kernel/trace/trace_events_inject.c", i32 330, i32 30}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/trace/trace_events_inject.c", i32 244, i32 14}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/trace/trace_events_inject.c", i32 185, i32 13}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 787, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 805, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{!"sp"}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_events_inject.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_events_inject.gcda", !0}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = distinct !DISubprogram(name: "event_inject_read", scope: !1, file: !1, line: 324, type: !27, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!27 = !DISubroutineType(types: !28)
!28 = !{}
!29 = !DILocation(line: 326, scope: !26)
!30 = !DILocation(line: 327, column: 2, scope: !26)
!31 = distinct !DISubprogram(name: "event_inject_write", scope: !1, file: !1, line: 284, type: !27, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!32 = !DILocation(line: 286, scope: !31)
!33 = !DILocation(line: 293, column: 10, scope: !31)
!34 = !DILocation(line: 293, column: 6, scope: !31)
!35 = !DILocation(line: 294, column: 3, scope: !31)
!36 = !DILocation(line: 296, column: 8, scope: !31)
!37 = !DILocation(line: 36, column: 9, scope: !38, inlinedAt: !40)
!38 = distinct !DISubprogram(name: "IS_ERR", scope: !39, file: !39, line: 34, type: !27, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!39 = !DIFile(filename: "../include/linux/err.h", directory: "/llk/linux-5.17/build_arm_allyes")
!40 = distinct !DILocation(line: 297, column: 6, scope: !31)
!41 = !DILocation(line: 297, column: 6, scope: !31)
!42 = !DILocation(line: 298, column: 18, scope: !31)
!43 = !DILocation(line: 31, column: 9, scope: !44, inlinedAt: !45)
!44 = distinct !DISubprogram(name: "PTR_ERR", scope: !39, file: !39, line: 29, type: !27, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!45 = distinct !DILocation(line: 298, column: 10, scope: !31)
!46 = !DILocation(line: 298, column: 3, scope: !31)
!47 = !DILocation(line: 299, column: 2, scope: !31)
!48 = !DILocation(line: 301, column: 2, scope: !31)
!49 = !DILocation(line: 1341, column: 12, scope: !50, inlinedAt: !52)
!50 = distinct !DISubprogram(name: "file_inode", scope: !51, file: !51, line: 1339, type: !27, scopeLine: 1340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!51 = !DIFile(filename: "../include/linux/fs.h", directory: "/llk/linux-5.17/build_arm_allyes")
!52 = distinct !DILocation(line: 1520, column: 9, scope: !53, inlinedAt: !55)
!53 = distinct !DISubprogram(name: "event_file_data", scope: !54, file: !54, line: 1518, type: !27, scopeLine: 1519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!54 = !DIFile(filename: "../kernel/trace/trace.h", directory: "/llk/linux-5.17/build_arm_allyes")
!55 = distinct !DILocation(line: 302, column: 9, scope: !31)
!56 = !DILocation(line: 1520, column: 9, scope: !53, inlinedAt: !55)
!57 = !DILocation(line: 303, column: 6, scope: !31)
!58 = !DILocation(line: 304, column: 16, scope: !31)
!59 = !DILocation(line: 452, column: 19, scope: !60, inlinedAt: !62)
!60 = distinct !DISubprogram(name: "trace_get_fields", scope: !61, file: !61, line: 450, type: !27, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!61 = !DIFile(filename: "../include/linux/trace_events.h", directory: "/llk/linux-5.17/build_arm_allyes")
!62 = distinct !DILocation(line: 144, column: 9, scope: !63, inlinedAt: !64)
!63 = distinct !DISubprogram(name: "trace_get_entry_size", scope: !1, file: !1, line: 138, type: !27, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!64 = distinct !DILocation(line: 155, column: 19, scope: !65, inlinedAt: !66)
!65 = distinct !DISubprogram(name: "trace_alloc_entry", scope: !1, file: !1, line: 153, type: !27, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!66 = distinct !DILocation(line: 204, column: 10, scope: !67, inlinedAt: !68)
!67 = distinct !DISubprogram(name: "parse_entry", scope: !1, file: !1, line: 196, type: !27, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!68 = distinct !DILocation(line: 305, column: 10, scope: !31)
!69 = !DILocation(line: 452, column: 26, scope: !60, inlinedAt: !62)
!70 = !DILocation(line: 452, column: 7, scope: !60, inlinedAt: !62)
!71 = !DILocation(line: 452, column: 6, scope: !60, inlinedAt: !62)
!72 = !DILocation(line: 453, column: 11, scope: !60, inlinedAt: !62)
!73 = !DILocation(line: 453, column: 30, scope: !60, inlinedAt: !62)
!74 = !DILocation(line: 453, column: 3, scope: !60, inlinedAt: !62)
!75 = !DILocation(line: 454, column: 9, scope: !60, inlinedAt: !62)
!76 = !DILocation(line: 454, column: 21, scope: !60, inlinedAt: !62)
!77 = !DILocation(line: 454, column: 28, scope: !60, inlinedAt: !62)
!78 = !DILocation(line: 454, column: 2, scope: !60, inlinedAt: !62)
!79 = !DILocation(line: 0, scope: !60, inlinedAt: !62)
!80 = !DILocation(line: 145, column: 2, scope: !63, inlinedAt: !64)
!81 = !DILocation(line: 146, column: 14, scope: !63, inlinedAt: !64)
!82 = !DILocation(line: 146, column: 28, scope: !63, inlinedAt: !64)
!83 = !DILocation(line: 146, column: 19, scope: !63, inlinedAt: !64)
!84 = !DILocation(line: 146, column: 35, scope: !63, inlinedAt: !64)
!85 = !DILocation(line: 146, column: 7, scope: !63, inlinedAt: !64)
!86 = !DILocation(line: 147, column: 11, scope: !63, inlinedAt: !64)
!87 = !DILocation(line: 147, column: 4, scope: !63, inlinedAt: !64)
!88 = !DILocation(line: 0, scope: !63, inlinedAt: !64)
!89 = distinct !{!89, !80, !90}
!90 = !DILocation(line: 148, column: 2, scope: !63, inlinedAt: !64)
!91 = !DILocation(line: 161, column: 29, scope: !65, inlinedAt: !66)
!92 = !DILocation(line: 586, column: 19, scope: !93, inlinedAt: !95)
!93 = distinct !DISubprogram(name: "kmalloc", scope: !94, file: !94, line: 567, type: !27, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!94 = !DIFile(filename: "../include/linux/slab.h", directory: "/llk/linux-5.17/build_arm_allyes")
!95 = distinct !DILocation(line: 714, column: 9, scope: !96, inlinedAt: !97)
!96 = distinct !DISubprogram(name: "kzalloc", scope: !94, file: !94, line: 712, type: !27, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!97 = distinct !DILocation(line: 161, column: 10, scope: !65, inlinedAt: !66)
!98 = !DILocation(line: 586, column: 9, scope: !93, inlinedAt: !95)
!99 = !DILocation(line: 162, column: 7, scope: !65, inlinedAt: !66)
!100 = !DILocation(line: 162, column: 6, scope: !65, inlinedAt: !66)
!101 = !DILocation(line: 163, column: 3, scope: !65, inlinedAt: !66)
!102 = !DILocation(line: 207, column: 3, scope: !67, inlinedAt: !68)
!103 = !DILocation(line: 452, column: 19, scope: !60, inlinedAt: !104)
!104 = distinct !DILocation(line: 165, column: 9, scope: !65, inlinedAt: !66)
!105 = !DILocation(line: 452, column: 26, scope: !60, inlinedAt: !104)
!106 = !DILocation(line: 452, column: 7, scope: !60, inlinedAt: !104)
!107 = !DILocation(line: 452, column: 6, scope: !60, inlinedAt: !104)
!108 = !DILocation(line: 453, column: 11, scope: !60, inlinedAt: !104)
!109 = !DILocation(line: 453, column: 30, scope: !60, inlinedAt: !104)
!110 = !DILocation(line: 453, column: 3, scope: !60, inlinedAt: !104)
!111 = !DILocation(line: 454, column: 9, scope: !60, inlinedAt: !104)
!112 = !DILocation(line: 454, column: 21, scope: !60, inlinedAt: !104)
!113 = !DILocation(line: 454, column: 28, scope: !60, inlinedAt: !104)
!114 = !DILocation(line: 454, column: 2, scope: !60, inlinedAt: !104)
!115 = !DILocation(line: 0, scope: !60, inlinedAt: !104)
!116 = !DILocation(line: 166, column: 2, scope: !65, inlinedAt: !66)
!117 = !DILocation(line: 1471, column: 16, scope: !118, inlinedAt: !119)
!118 = distinct !DISubprogram(name: "is_string_field", scope: !54, file: !54, line: 1469, type: !27, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!119 = distinct !DILocation(line: 167, column: 8, scope: !65, inlinedAt: !66)
!120 = !DILocation(line: 1471, column: 28, scope: !118, inlinedAt: !119)
!121 = !DILocation(line: 1471, column: 49, scope: !118, inlinedAt: !119)
!122 = !DILocation(line: 1472, column: 9, scope: !118, inlinedAt: !119)
!123 = !DILocation(line: 1472, column: 28, scope: !118, inlinedAt: !119)
!124 = !DILocation(line: 1472, column: 50, scope: !118, inlinedAt: !119)
!125 = !DILocation(line: 1473, column: 9, scope: !118, inlinedAt: !119)
!126 = !DILocation(line: 1473, column: 16, scope: !118, inlinedAt: !119)
!127 = !DILocation(line: 1473, column: 28, scope: !118, inlinedAt: !119)
!128 = !DILocation(line: 1473, column: 52, scope: !118, inlinedAt: !119)
!129 = !DILocation(line: 1474, column: 9, scope: !118, inlinedAt: !119)
!130 = !DILocation(line: 1474, column: 16, scope: !118, inlinedAt: !119)
!131 = !DILocation(line: 1474, column: 28, scope: !118, inlinedAt: !119)
!132 = !DILocation(line: 1474, column: 49, scope: !118, inlinedAt: !119)
!133 = !DILocation(line: 1475, column: 9, scope: !118, inlinedAt: !119)
!134 = !DILocation(line: 1475, column: 16, scope: !118, inlinedAt: !119)
!135 = !DILocation(line: 1475, column: 28, scope: !118, inlinedAt: !119)
!136 = !DILocation(line: 167, column: 7, scope: !65, inlinedAt: !66)
!137 = !DILocation(line: 168, column: 4, scope: !65, inlinedAt: !66)
!138 = !DILocation(line: 170, column: 4, scope: !65, inlinedAt: !66)
!139 = !DILocation(line: 172, column: 7, scope: !65, inlinedAt: !66)
!140 = !DILocation(line: 172, column: 14, scope: !65, inlinedAt: !66)
!141 = !DILocation(line: 172, column: 26, scope: !65, inlinedAt: !66)
!142 = !DILocation(line: 171, column: 7, scope: !65, inlinedAt: !66)
!143 = !DILocation(line: 177, column: 16, scope: !65, inlinedAt: !66)
!144 = !DILocation(line: 177, column: 23, scope: !65, inlinedAt: !66)
!145 = !DILocation(line: 177, column: 39, scope: !65, inlinedAt: !66)
!146 = !DILocation(line: 177, column: 13, scope: !65, inlinedAt: !66)
!147 = !DILocation(line: 177, column: 5, scope: !65, inlinedAt: !66)
!148 = !DILocation(line: 0, scope: !65, inlinedAt: !66)
!149 = !DILocation(line: 179, column: 23, scope: !65, inlinedAt: !66)
!150 = !DILocation(line: 179, column: 38, scope: !65, inlinedAt: !66)
!151 = !DILocation(line: 179, column: 29, scope: !65, inlinedAt: !66)
!152 = !DILocation(line: 180, column: 14, scope: !65, inlinedAt: !66)
!153 = !DILocation(line: 181, column: 3, scope: !65, inlinedAt: !66)
!154 = !DILocation(line: 182, column: 4, scope: !65, inlinedAt: !66)
!155 = !DILocation(line: 184, column: 37, scope: !65, inlinedAt: !66)
!156 = !DILocation(line: 184, column: 28, scope: !65, inlinedAt: !66)
!157 = !DILocation(line: 185, column: 11, scope: !65, inlinedAt: !66)
!158 = distinct !{!158, !116, !159}
!159 = !DILocation(line: 187, column: 2, scope: !65, inlinedAt: !66)
!160 = !DILocation(line: 189, column: 10, scope: !65, inlinedAt: !66)
!161 = !DILocation(line: 209, column: 31, scope: !67, inlinedAt: !68)
!162 = !DILocation(line: 209, column: 50, scope: !67, inlinedAt: !68)
!163 = !DILocation(line: 209, column: 38, scope: !67, inlinedAt: !68)
!164 = !DILocation(line: 189, column: 2, scope: !165, inlinedAt: !166)
!165 = distinct !DISubprogram(name: "tracing_gen_ctx", scope: !61, file: !61, line: 185, type: !27, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!166 = distinct !DILocation(line: 210, column: 10, scope: !67, inlinedAt: !68)
!167 = !DILocation(line: 159, column: 2, scope: !168, inlinedAt: !170)
!168 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !169, file: !169, line: 156, type: !27, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!169 = !DIFile(filename: "../arch/arm/include/asm/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!170 = distinct !DILocation(line: 189, column: 2, scope: !165, inlinedAt: !166)
!171 = !{i64 751347}
!172 = !DILocation(line: 181, column: 28, scope: !173, inlinedAt: !174)
!173 = distinct !DISubprogram(name: "tracing_gen_ctx_flags", scope: !61, file: !61, line: 179, type: !27, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!174 = distinct !DILocation(line: 190, column: 9, scope: !165, inlinedAt: !166)
!175 = !DILocation(line: 183, column: 9, scope: !173, inlinedAt: !174)
!176 = !DILocation(line: 159, column: 26, scope: !177, inlinedAt: !178)
!177 = distinct !DISubprogram(name: "tracing_generic_entry_update", scope: !61, file: !61, line: 155, type: !27, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!178 = distinct !DILocation(line: 209, column: 2, scope: !67, inlinedAt: !68)
!179 = !DILocation(line: 159, column: 9, scope: !177, inlinedAt: !178)
!180 = !DILocation(line: 159, column: 24, scope: !177, inlinedAt: !178)
!181 = !DILocation(line: 104, column: 4, scope: !182, inlinedAt: !184)
!182 = distinct !DISubprogram(name: "current_thread_info", scope: !183, file: !183, line: 101, type: !27, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!183 = !DIFile(filename: "../arch/arm/include/asm/thread_info.h", directory: "/llk/linux-5.17/build_arm_allyes")
!184 = distinct !DILocation(line: 160, column: 17, scope: !177, inlinedAt: !178)
!185 = !DILocation(line: 104, column: 26, scope: !182, inlinedAt: !184)
!186 = !DILocation(line: 103, column: 9, scope: !182, inlinedAt: !184)
!187 = !DILocation(line: 160, column: 17, scope: !177, inlinedAt: !178)
!188 = !DILocation(line: 160, column: 26, scope: !177, inlinedAt: !178)
!189 = !DILocation(line: 160, column: 9, scope: !177, inlinedAt: !178)
!190 = !DILocation(line: 160, column: 15, scope: !177, inlinedAt: !178)
!191 = !DILocation(line: 161, column: 16, scope: !177, inlinedAt: !178)
!192 = !DILocation(line: 162, column: 29, scope: !177, inlinedAt: !178)
!193 = !DILocation(line: 162, column: 19, scope: !177, inlinedAt: !178)
!194 = !DILocation(line: 162, column: 9, scope: !177, inlinedAt: !178)
!195 = !DILocation(line: 162, column: 15, scope: !177, inlinedAt: !178)
!196 = !DILocation(line: 43, column: 2, scope: !197, inlinedAt: !198)
!197 = distinct !DISubprogram(name: "parse_field", scope: !1, file: !1, line: 36, type: !27, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!198 = distinct !DILocation(line: 212, column: 16, scope: !67, inlinedAt: !68)
!199 = !DILocation(line: 43, column: 6, scope: !197, inlinedAt: !198)
!200 = !{!"auto-init"}
!201 = !DILocation(line: 45, column: 7, scope: !197, inlinedAt: !198)
!202 = !DILocation(line: 45, column: 6, scope: !197, inlinedAt: !198)
!203 = !DILocation(line: 0, scope: !67, inlinedAt: !68)
!204 = !DILocation(line: 48, column: 9, scope: !197, inlinedAt: !198)
!205 = !DILocation(line: 48, column: 2, scope: !197, inlinedAt: !198)
!206 = !DILocation(line: 46, column: 3, scope: !197, inlinedAt: !198)
!207 = !DILocation(line: 51, column: 2, scope: !197, inlinedAt: !198)
!208 = !DILocation(line: 49, column: 4, scope: !197, inlinedAt: !198)
!209 = distinct !{!209, !205, !208}
!210 = !DILocation(line: 0, scope: !197, inlinedAt: !198)
!211 = !DILocation(line: 51, column: 9, scope: !197, inlinedAt: !198)
!212 = !DILocation(line: 51, column: 25, scope: !197, inlinedAt: !198)
!213 = !DILocation(line: 51, column: 28, scope: !197, inlinedAt: !198)
!214 = !DILocation(line: 51, column: 35, scope: !197, inlinedAt: !198)
!215 = !DILocation(line: 52, column: 4, scope: !197, inlinedAt: !198)
!216 = distinct !{!216, !207, !215}
!217 = !DILocation(line: 54, column: 7, scope: !197, inlinedAt: !198)
!218 = !DILocation(line: 54, column: 6, scope: !197, inlinedAt: !198)
!219 = !DILocation(line: 55, column: 3, scope: !197, inlinedAt: !198)
!220 = !DILocation(line: 53, column: 10, scope: !197, inlinedAt: !198)
!221 = !DILocation(line: 57, column: 15, scope: !197, inlinedAt: !198)
!222 = !DILocation(line: 58, column: 7, scope: !197, inlinedAt: !198)
!223 = !DILocation(line: 58, column: 6, scope: !197, inlinedAt: !198)
!224 = !DILocation(line: 59, column: 3, scope: !197, inlinedAt: !198)
!225 = !DILocation(line: 60, column: 10, scope: !197, inlinedAt: !198)
!226 = !DILocation(line: 61, column: 2, scope: !197, inlinedAt: !198)
!227 = !DILocation(line: 62, column: 7, scope: !197, inlinedAt: !198)
!228 = !DILocation(line: 62, column: 6, scope: !197, inlinedAt: !198)
!229 = !DILocation(line: 63, column: 3, scope: !197, inlinedAt: !198)
!230 = !DILocation(line: 66, column: 9, scope: !197, inlinedAt: !198)
!231 = !DILocation(line: 66, column: 2, scope: !197, inlinedAt: !198)
!232 = !DILocation(line: 67, column: 4, scope: !197, inlinedAt: !198)
!233 = distinct !{!233, !231, !232}
!234 = !DILocation(line: 68, column: 13, scope: !197, inlinedAt: !198)
!235 = !DILocation(line: 68, column: 6, scope: !197, inlinedAt: !198)
!236 = !DILocation(line: 71, column: 9, scope: !197, inlinedAt: !198)
!237 = !DILocation(line: 71, column: 2, scope: !197, inlinedAt: !198)
!238 = !DILocation(line: 69, column: 3, scope: !197, inlinedAt: !198)
!239 = !DILocation(line: 72, column: 4, scope: !197, inlinedAt: !198)
!240 = distinct !{!240, !237, !239}
!241 = !DILocation(line: 45, column: 13, scope: !242, inlinedAt: !244)
!242 = distinct !DISubprogram(name: "isdigit", scope: !243, file: !243, line: 43, type: !27, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!243 = !DIFile(filename: "../include/linux/ctype.h", directory: "/llk/linux-5.17/build_arm_allyes")
!244 = distinct !DILocation(line: 74, column: 6, scope: !197, inlinedAt: !198)
!245 = !DILocation(line: 45, column: 18, scope: !242, inlinedAt: !244)
!246 = !DILocation(line: 45, column: 21, scope: !242, inlinedAt: !244)
!247 = !DILocation(line: 45, column: 23, scope: !242, inlinedAt: !244)
!248 = !DILocation(line: 74, column: 22, scope: !197, inlinedAt: !198)
!249 = !DILocation(line: 74, column: 25, scope: !197, inlinedAt: !198)
!250 = !DILocation(line: 74, column: 6, scope: !197, inlinedAt: !198)
!251 = !DILocation(line: 1471, column: 16, scope: !118, inlinedAt: !252)
!252 = distinct !DILocation(line: 79, column: 7, scope: !197, inlinedAt: !198)
!253 = !DILocation(line: 1471, column: 28, scope: !118, inlinedAt: !252)
!254 = !DILocation(line: 1471, column: 49, scope: !118, inlinedAt: !252)
!255 = !DILocation(line: 1472, column: 9, scope: !118, inlinedAt: !252)
!256 = !DILocation(line: 1472, column: 28, scope: !118, inlinedAt: !252)
!257 = !DILocation(line: 1472, column: 50, scope: !118, inlinedAt: !252)
!258 = !DILocation(line: 1473, column: 9, scope: !118, inlinedAt: !252)
!259 = !DILocation(line: 1473, column: 16, scope: !118, inlinedAt: !252)
!260 = !DILocation(line: 1473, column: 28, scope: !118, inlinedAt: !252)
!261 = !DILocation(line: 1473, column: 52, scope: !118, inlinedAt: !252)
!262 = !DILocation(line: 1474, column: 9, scope: !118, inlinedAt: !252)
!263 = !DILocation(line: 1474, column: 16, scope: !118, inlinedAt: !252)
!264 = !DILocation(line: 1474, column: 28, scope: !118, inlinedAt: !252)
!265 = !DILocation(line: 1474, column: 49, scope: !118, inlinedAt: !252)
!266 = !DILocation(line: 1475, column: 9, scope: !118, inlinedAt: !252)
!267 = !DILocation(line: 1475, column: 16, scope: !118, inlinedAt: !252)
!268 = !DILocation(line: 1475, column: 28, scope: !118, inlinedAt: !252)
!269 = !DILocation(line: 79, column: 7, scope: !197, inlinedAt: !198)
!270 = !DILocation(line: 80, column: 4, scope: !197, inlinedAt: !198)
!271 = !DILocation(line: 82, column: 7, scope: !197, inlinedAt: !198)
!272 = !DILocation(line: 82, column: 14, scope: !197, inlinedAt: !198)
!273 = !DILocation(line: 83, column: 5, scope: !197, inlinedAt: !198)
!274 = !DILocation(line: 83, column: 4, scope: !197, inlinedAt: !198)
!275 = !DILocation(line: 86, column: 10, scope: !197, inlinedAt: !198)
!276 = !DILocation(line: 86, column: 3, scope: !197, inlinedAt: !198)
!277 = !DILocation(line: 87, column: 5, scope: !197, inlinedAt: !198)
!278 = distinct !{!278, !276, !277}
!279 = !DILocation(line: 90, column: 9, scope: !197, inlinedAt: !198)
!280 = !DILocation(line: 90, column: 17, scope: !197, inlinedAt: !198)
!281 = !DILocation(line: 90, column: 21, scope: !197, inlinedAt: !198)
!282 = !DILocation(line: 90, column: 7, scope: !197, inlinedAt: !198)
!283 = !DILocation(line: 91, column: 4, scope: !197, inlinedAt: !198)
!284 = !DILocation(line: 92, column: 10, scope: !197, inlinedAt: !198)
!285 = !DILocation(line: 94, column: 14, scope: !197, inlinedAt: !198)
!286 = !DILocation(line: 94, column: 7, scope: !197, inlinedAt: !198)
!287 = !DILocation(line: 95, column: 10, scope: !197, inlinedAt: !198)
!288 = !DILocation(line: 95, column: 4, scope: !197, inlinedAt: !198)
!289 = !DILocation(line: 97, column: 20, scope: !197, inlinedAt: !198)
!290 = !DILocation(line: 97, column: 10, scope: !197, inlinedAt: !198)
!291 = !DILocation(line: 98, column: 10, scope: !197, inlinedAt: !198)
!292 = !DILocation(line: 99, column: 7, scope: !197, inlinedAt: !198)
!293 = !DILocation(line: 100, column: 11, scope: !197, inlinedAt: !198)
!294 = !DILocation(line: 100, column: 4, scope: !197, inlinedAt: !198)
!295 = !DILocation(line: 102, column: 9, scope: !197, inlinedAt: !198)
!296 = !DILocation(line: 103, column: 3, scope: !197, inlinedAt: !198)
!297 = !DILocation(line: 104, column: 31, scope: !197, inlinedAt: !198)
!298 = !DILocation(line: 104, column: 38, scope: !197, inlinedAt: !198)
!299 = !DILocation(line: 104, column: 13, scope: !197, inlinedAt: !198)
!300 = !DILocation(line: 105, column: 12, scope: !197, inlinedAt: !198)
!301 = !DILocation(line: 1471, column: 16, scope: !118, inlinedAt: !302)
!302 = distinct !DILocation(line: 108, column: 8, scope: !197, inlinedAt: !198)
!303 = !DILocation(line: 1471, column: 28, scope: !118, inlinedAt: !302)
!304 = !DILocation(line: 1471, column: 49, scope: !118, inlinedAt: !302)
!305 = !DILocation(line: 1472, column: 9, scope: !118, inlinedAt: !302)
!306 = !DILocation(line: 1472, column: 28, scope: !118, inlinedAt: !302)
!307 = !DILocation(line: 1472, column: 50, scope: !118, inlinedAt: !302)
!308 = !DILocation(line: 1473, column: 9, scope: !118, inlinedAt: !302)
!309 = !DILocation(line: 1473, column: 16, scope: !118, inlinedAt: !302)
!310 = !DILocation(line: 1473, column: 28, scope: !118, inlinedAt: !302)
!311 = !DILocation(line: 1473, column: 52, scope: !118, inlinedAt: !302)
!312 = !DILocation(line: 1474, column: 9, scope: !118, inlinedAt: !302)
!313 = !DILocation(line: 1474, column: 16, scope: !118, inlinedAt: !302)
!314 = !DILocation(line: 1474, column: 28, scope: !118, inlinedAt: !302)
!315 = !DILocation(line: 1474, column: 49, scope: !118, inlinedAt: !302)
!316 = !DILocation(line: 1475, column: 9, scope: !118, inlinedAt: !302)
!317 = !DILocation(line: 1475, column: 16, scope: !118, inlinedAt: !302)
!318 = !DILocation(line: 1475, column: 28, scope: !118, inlinedAt: !302)
!319 = !DILocation(line: 108, column: 7, scope: !197, inlinedAt: !198)
!320 = !DILocation(line: 109, column: 4, scope: !197, inlinedAt: !198)
!321 = !DILocation(line: 111, column: 9, scope: !197, inlinedAt: !198)
!322 = !DILocation(line: 111, column: 8, scope: !197, inlinedAt: !198)
!323 = !DILocation(line: 111, column: 13, scope: !197, inlinedAt: !198)
!324 = !DILocation(line: 111, column: 3, scope: !197, inlinedAt: !198)
!325 = !DILocation(line: 112, column: 26, scope: !197, inlinedAt: !198)
!326 = !DILocation(line: 112, column: 32, scope: !197, inlinedAt: !198)
!327 = !DILocation(line: 112, column: 8, scope: !197, inlinedAt: !198)
!328 = !DILocation(line: 113, column: 6, scope: !197, inlinedAt: !198)
!329 = !DILocation(line: 114, column: 5, scope: !197, inlinedAt: !198)
!330 = !DILocation(line: 116, column: 8, scope: !197, inlinedAt: !198)
!331 = !DILocation(line: 116, column: 15, scope: !197, inlinedAt: !198)
!332 = !DILocation(line: 118, column: 3, scope: !197, inlinedAt: !198)
!333 = !DILocation(line: 111, column: 22, scope: !197, inlinedAt: !198)
!334 = distinct !{!334, !324, !332}
!335 = !DILocation(line: 117, column: 5, scope: !197, inlinedAt: !198)
!336 = !DILocation(line: 119, column: 8, scope: !197, inlinedAt: !198)
!337 = !DILocation(line: 119, column: 7, scope: !197, inlinedAt: !198)
!338 = !DILocation(line: 120, column: 4, scope: !197, inlinedAt: !198)
!339 = !DILocation(line: 124, column: 11, scope: !197, inlinedAt: !198)
!340 = !DILocation(line: 125, column: 11, scope: !197, inlinedAt: !198)
!341 = !DILocation(line: 125, column: 7, scope: !197, inlinedAt: !198)
!342 = !DILocation(line: 126, column: 4, scope: !197, inlinedAt: !198)
!343 = !DILocation(line: 128, column: 25, scope: !197, inlinedAt: !198)
!344 = !DILocation(line: 128, column: 29, scope: !197, inlinedAt: !198)
!345 = !DILocation(line: 128, column: 9, scope: !197, inlinedAt: !198)
!346 = !DILocation(line: 129, column: 10, scope: !197, inlinedAt: !198)
!347 = !DILocation(line: 131, column: 4, scope: !197, inlinedAt: !198)
!348 = !DILocation(line: 132, column: 3, scope: !197, inlinedAt: !198)
!349 = !DILocation(line: 135, column: 2, scope: !197, inlinedAt: !198)
!350 = !DILocation(line: 205, column: 10, scope: !67, inlinedAt: !68)
!351 = !DILocation(line: 136, column: 1, scope: !197, inlinedAt: !198)
!352 = !DILocation(line: 212, column: 2, scope: !67, inlinedAt: !68)
!353 = !DILocation(line: 212, column: 54, scope: !67, inlinedAt: !68)
!354 = !DILocation(line: 1480, column: 16, scope: !355, inlinedAt: !356)
!355 = distinct !DISubprogram(name: "is_function_field", scope: !54, file: !54, line: 1478, type: !27, scopeLine: 1479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!356 = distinct !DILocation(line: 213, column: 7, scope: !67, inlinedAt: !68)
!357 = !DILocation(line: 1480, column: 28, scope: !355, inlinedAt: !356)
!358 = !DILocation(line: 213, column: 7, scope: !67, inlinedAt: !68)
!359 = !DILocation(line: 214, column: 4, scope: !67, inlinedAt: !68)
!360 = !DILocation(line: 1471, column: 28, scope: !118, inlinedAt: !361)
!361 = distinct !DILocation(line: 216, column: 7, scope: !67, inlinedAt: !68)
!362 = !DILocation(line: 1471, column: 49, scope: !118, inlinedAt: !361)
!363 = !DILocation(line: 1472, column: 9, scope: !118, inlinedAt: !361)
!364 = !DILocation(line: 1472, column: 28, scope: !118, inlinedAt: !361)
!365 = !DILocation(line: 1472, column: 50, scope: !118, inlinedAt: !361)
!366 = !DILocation(line: 1473, column: 9, scope: !118, inlinedAt: !361)
!367 = !DILocation(line: 1473, column: 16, scope: !118, inlinedAt: !361)
!368 = !DILocation(line: 1473, column: 28, scope: !118, inlinedAt: !361)
!369 = !DILocation(line: 1473, column: 52, scope: !118, inlinedAt: !361)
!370 = !DILocation(line: 217, column: 25, scope: !67, inlinedAt: !68)
!371 = !DILocation(line: 217, column: 17, scope: !67, inlinedAt: !68)
!372 = !DILocation(line: 219, column: 8, scope: !67, inlinedAt: !68)
!373 = !DILocation(line: 1474, column: 9, scope: !118, inlinedAt: !361)
!374 = !DILocation(line: 1474, column: 16, scope: !118, inlinedAt: !361)
!375 = !DILocation(line: 1474, column: 28, scope: !118, inlinedAt: !361)
!376 = !DILocation(line: 1474, column: 49, scope: !118, inlinedAt: !361)
!377 = !DILocation(line: 1475, column: 9, scope: !118, inlinedAt: !361)
!378 = !DILocation(line: 1475, column: 16, scope: !118, inlinedAt: !361)
!379 = !DILocation(line: 1475, column: 28, scope: !118, inlinedAt: !361)
!380 = !DILocation(line: 216, column: 7, scope: !67, inlinedAt: !68)
!381 = !DILocation(line: 219, column: 15, scope: !67, inlinedAt: !68)
!382 = !DILocation(line: 220, column: 13, scope: !67, inlinedAt: !68)
!383 = !DILocation(line: 220, column: 28, scope: !67, inlinedAt: !68)
!384 = !DILocation(line: 220, column: 19, scope: !67, inlinedAt: !68)
!385 = !DILocation(line: 220, column: 49, scope: !67, inlinedAt: !68)
!386 = !DILocation(line: 220, column: 5, scope: !67, inlinedAt: !68)
!387 = !DILocation(line: 221, column: 4, scope: !67, inlinedAt: !68)
!388 = !DILocation(line: 222, column: 8, scope: !67, inlinedAt: !68)
!389 = !DILocation(line: 222, column: 15, scope: !67, inlinedAt: !68)
!390 = !DILocation(line: 222, column: 27, scope: !67, inlinedAt: !68)
!391 = !DILocation(line: 221, column: 15, scope: !67, inlinedAt: !68)
!392 = !DILocation(line: 223, column: 19, scope: !67, inlinedAt: !68)
!393 = !DILocation(line: 223, column: 32, scope: !67, inlinedAt: !68)
!394 = !DILocation(line: 224, column: 30, scope: !67, inlinedAt: !68)
!395 = !DILocation(line: 227, column: 16, scope: !67, inlinedAt: !68)
!396 = !DILocation(line: 228, column: 15, scope: !67, inlinedAt: !68)
!397 = !DILocation(line: 229, column: 10, scope: !67, inlinedAt: !68)
!398 = !DILocation(line: 229, column: 9, scope: !67, inlinedAt: !68)
!399 = !DILocation(line: 235, column: 19, scope: !67, inlinedAt: !68)
!400 = !DILocation(line: 235, column: 5, scope: !67, inlinedAt: !68)
!401 = !DILocation(line: 236, column: 39, scope: !67, inlinedAt: !68)
!402 = !DILocation(line: 236, column: 30, scope: !67, inlinedAt: !68)
!403 = !DILocation(line: 237, column: 16, scope: !67, inlinedAt: !68)
!404 = !DILocation(line: 237, column: 28, scope: !67, inlinedAt: !68)
!405 = !DILocation(line: 237, column: 9, scope: !67, inlinedAt: !68)
!406 = !DILocation(line: 238, column: 17, scope: !67, inlinedAt: !68)
!407 = !DILocation(line: 238, column: 24, scope: !67, inlinedAt: !68)
!408 = !DILocation(line: 238, column: 40, scope: !67, inlinedAt: !68)
!409 = !DILocation(line: 238, column: 14, scope: !67, inlinedAt: !68)
!410 = !DILocation(line: 238, column: 6, scope: !67, inlinedAt: !68)
!411 = !DILocation(line: 239, column: 18, scope: !67, inlinedAt: !68)
!412 = !DILocation(line: 239, column: 26, scope: !67, inlinedAt: !68)
!413 = !DILocation(line: 239, column: 33, scope: !67, inlinedAt: !68)
!414 = !DILocation(line: 239, column: 15, scope: !67, inlinedAt: !68)
!415 = !DILocation(line: 240, column: 4, scope: !67, inlinedAt: !68)
!416 = !DILocation(line: 241, column: 5, scope: !67, inlinedAt: !68)
!417 = !DILocation(line: 243, column: 38, scope: !67, inlinedAt: !68)
!418 = !DILocation(line: 243, column: 29, scope: !67, inlinedAt: !68)
!419 = !DILocation(line: 244, column: 12, scope: !67, inlinedAt: !68)
!420 = !DILocation(line: 230, column: 12, scope: !67, inlinedAt: !68)
!421 = !DILocation(line: 230, column: 6, scope: !67, inlinedAt: !68)
!422 = !DILocation(line: 247, column: 19, scope: !67, inlinedAt: !68)
!423 = !DILocation(line: 247, column: 4, scope: !67, inlinedAt: !68)
!424 = !DILocation(line: 249, column: 5, scope: !67, inlinedAt: !68)
!425 = !DILocation(line: 249, column: 14, scope: !67, inlinedAt: !68)
!426 = !DILocation(line: 251, column: 27, scope: !67, inlinedAt: !68)
!427 = !DILocation(line: 251, column: 18, scope: !67, inlinedAt: !68)
!428 = !DILocation(line: 251, column: 5, scope: !67, inlinedAt: !68)
!429 = !DILocation(line: 255, column: 5, scope: !67, inlinedAt: !68)
!430 = !DILocation(line: 255, column: 15, scope: !67, inlinedAt: !68)
!431 = !DILocation(line: 257, column: 27, scope: !67, inlinedAt: !68)
!432 = !DILocation(line: 257, column: 18, scope: !67, inlinedAt: !68)
!433 = !DILocation(line: 257, column: 5, scope: !67, inlinedAt: !68)
!434 = !DILocation(line: 261, column: 5, scope: !67, inlinedAt: !68)
!435 = !DILocation(line: 261, column: 15, scope: !67, inlinedAt: !68)
!436 = !DILocation(line: 263, column: 27, scope: !67, inlinedAt: !68)
!437 = !DILocation(line: 263, column: 18, scope: !67, inlinedAt: !68)
!438 = !DILocation(line: 263, column: 5, scope: !67, inlinedAt: !68)
!439 = !DILocation(line: 267, column: 12, scope: !67, inlinedAt: !68)
!440 = !DILocation(line: 267, column: 27, scope: !67, inlinedAt: !68)
!441 = !DILocation(line: 267, column: 18, scope: !67, inlinedAt: !68)
!442 = !DILocation(line: 267, column: 5, scope: !67, inlinedAt: !68)
!443 = !DILocation(line: 268, column: 5, scope: !67, inlinedAt: !68)
!444 = !DILocation(line: 270, column: 5, scope: !67, inlinedAt: !68)
!445 = !DILocation(line: 204, column: 8, scope: !67, inlinedAt: !68)
!446 = !DILocation(line: 274, column: 7, scope: !67, inlinedAt: !68)
!447 = distinct !{!447, !352, !448}
!448 = !DILocation(line: 275, column: 2, scope: !67, inlinedAt: !68)
!449 = !DILocation(line: 277, column: 10, scope: !67, inlinedAt: !68)
!450 = !DILocation(line: 277, column: 6, scope: !67, inlinedAt: !68)
!451 = !DILocation(line: 278, column: 10, scope: !67, inlinedAt: !68)
!452 = !DILocation(line: 278, column: 3, scope: !67, inlinedAt: !68)
!453 = !DILocation(line: 280, column: 9, scope: !67, inlinedAt: !68)
!454 = !DILocation(line: 306, column: 12, scope: !31)
!455 = !DILocation(line: 306, column: 7, scope: !31)
!456 = !DILocation(line: 307, column: 10, scope: !31)
!457 = !DILocation(line: 307, column: 4, scope: !31)
!458 = !DILocation(line: 309, column: 29, scope: !31)
!459 = !DILocation(line: 19, column: 2, scope: !460, inlinedAt: !461)
!460 = distinct !DISubprogram(name: "trace_inject_entry", scope: !1, file: !1, line: 17, type: !27, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!461 = distinct !DILocation(line: 309, column: 10, scope: !31)
!462 = !DILocation(line: 19, column: 28, scope: !460, inlinedAt: !461)
!463 = !DILocation(line: 16, column: 10, scope: !464, inlinedAt: !466)
!464 = distinct !DISubprogram(name: "preempt_count_ptr", scope: !465, file: !465, line: 14, type: !27, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!465 = !DIFile(filename: "../include/asm-generic/preempt.h", directory: "/llk/linux-5.17/build_arm_allyes")
!466 = distinct !DILocation(line: 54, column: 3, scope: !467, inlinedAt: !468)
!467 = distinct !DISubprogram(name: "__preempt_count_add", scope: !465, file: !465, line: 52, type: !27, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!468 = distinct !DILocation(line: 784, column: 2, scope: !469, inlinedAt: !471)
!469 = distinct !DISubprogram(name: "rcu_read_lock_sched", scope: !470, file: !470, line: 782, type: !27, scopeLine: 783, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!470 = !DIFile(filename: "../include/linux/rcupdate.h", directory: "/llk/linux-5.17/build_arm_allyes")
!471 = distinct !DILocation(line: 23, column: 2, scope: !460, inlinedAt: !461)
!472 = !DILocation(line: 104, column: 4, scope: !182, inlinedAt: !473)
!473 = distinct !DILocation(line: 16, column: 10, scope: !464, inlinedAt: !466)
!474 = !DILocation(line: 104, column: 26, scope: !182, inlinedAt: !473)
!475 = !DILocation(line: 103, column: 9, scope: !182, inlinedAt: !473)
!476 = !DILocation(line: 16, column: 33, scope: !464, inlinedAt: !466)
!477 = !DILocation(line: 54, column: 23, scope: !467, inlinedAt: !468)
!478 = !DILocation(line: 784, column: 2, scope: !469, inlinedAt: !471)
!479 = !{i64 2149368906}
!480 = !DILocation(line: 786, column: 2, scope: !469, inlinedAt: !471)
!481 = !DILocation(line: 268, column: 2, scope: !482, inlinedAt: !483)
!482 = distinct !DISubprogram(name: "rcu_lock_acquire", scope: !470, file: !470, line: 266, type: !27, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!483 = distinct !DILocation(line: 786, column: 2, scope: !469, inlinedAt: !471)
!484 = !DILocation(line: 787, column: 2, scope: !469, inlinedAt: !471)
!485 = !DILocation(line: 24, column: 10, scope: !460, inlinedAt: !461)
!486 = !DILocation(line: 25, column: 6, scope: !460, inlinedAt: !461)
!487 = !DILocation(line: 26, column: 10, scope: !460, inlinedAt: !461)
!488 = !DILocation(line: 26, column: 3, scope: !460, inlinedAt: !461)
!489 = !DILocation(line: 28, column: 3, scope: !460, inlinedAt: !461)
!490 = !DILocation(line: 29, column: 2, scope: !460, inlinedAt: !461)
!491 = !DILocation(line: 0, scope: !460, inlinedAt: !461)
!492 = !DILocation(line: 805, column: 2, scope: !493, inlinedAt: !494)
!493 = distinct !DISubprogram(name: "rcu_read_unlock_sched", scope: !470, file: !470, line: 803, type: !27, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!494 = distinct !DILocation(line: 30, column: 2, scope: !460, inlinedAt: !461)
!495 = !DILocation(line: 807, column: 2, scope: !493, inlinedAt: !494)
!496 = !DILocation(line: 273, column: 2, scope: !497, inlinedAt: !498)
!497 = distinct !DISubprogram(name: "rcu_lock_release", scope: !470, file: !470, line: 271, type: !27, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!498 = distinct !DILocation(line: 807, column: 2, scope: !493, inlinedAt: !494)
!499 = !DILocation(line: 809, column: 2, scope: !493, inlinedAt: !494)
!500 = !{i64 2149370301}
!501 = !DILocation(line: 16, column: 10, scope: !464, inlinedAt: !502)
!502 = distinct !DILocation(line: 59, column: 3, scope: !503, inlinedAt: !504)
!503 = distinct !DISubprogram(name: "__preempt_count_sub", scope: !465, file: !465, line: 57, type: !27, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!504 = distinct !DILocation(line: 809, column: 2, scope: !493, inlinedAt: !494)
!505 = !DILocation(line: 104, column: 4, scope: !182, inlinedAt: !506)
!506 = distinct !DILocation(line: 16, column: 10, scope: !464, inlinedAt: !502)
!507 = !DILocation(line: 104, column: 26, scope: !182, inlinedAt: !506)
!508 = !DILocation(line: 103, column: 9, scope: !182, inlinedAt: !506)
!509 = !DILocation(line: 16, column: 33, scope: !464, inlinedAt: !502)
!510 = !DILocation(line: 59, column: 23, scope: !503, inlinedAt: !504)
!511 = !DILocation(line: 33, column: 1, scope: !460, inlinedAt: !461)
!512 = !DILocation(line: 0, scope: !31)
!513 = !DILocation(line: 311, column: 2, scope: !31)
!514 = !DILocation(line: 313, column: 2, scope: !31)
!515 = !DILocation(line: 314, column: 2, scope: !31)
!516 = !DILocation(line: 316, column: 10, scope: !31)
!517 = !DILocation(line: 316, column: 6, scope: !31)
!518 = !DILocation(line: 317, column: 10, scope: !31)
!519 = !DILocation(line: 317, column: 3, scope: !31)
!520 = !DILocation(line: 319, column: 11, scope: !31)
!521 = !DILocation(line: 319, column: 8, scope: !31)
!522 = !DILocation(line: 320, column: 2, scope: !31)
!523 = !DILocation(line: 321, column: 1, scope: !31)
