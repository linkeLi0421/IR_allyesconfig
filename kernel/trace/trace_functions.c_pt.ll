; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_functions.c_pt.bc'
source_filename = "../kernel/trace/trace_functions.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracer = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.ftrace_func_command = type { %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ftrace_probe_ops = type { ptr, ptr, ptr, ptr }
%struct.tracer_flags = type { i32, ptr, ptr }
%struct.tracer_opt = type { ptr, i32 }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.trace_array = type { %struct.list_head, ptr, %struct.array_buffer, %struct.array_buffer, i8, i32, ptr, %struct.work_struct, %struct.irq_work, ptr, ptr, %struct.arch_spinlock_t, i32, i32, i32, [452 x ptr], [452 x ptr], i32, i32, i32, i8, i32, i32, ptr, i32, [32 x i8], i32, %struct.raw_spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.list_head, ptr, ptr }
%struct.array_buffer = type { ptr, ptr, ptr, i64, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.ftrace_ops = type { ptr, ptr, i32, ptr, ptr, %struct.ftrace_ops_hash, ptr, %struct.ftrace_ops_hash, i32, i32, %struct.list_head }
%struct.ftrace_ops_hash = type { ptr, ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.80, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.trace_func_repeats = type { i32, i32, i32, i64 }

@function_trace = internal global %struct.tracer { ptr @.str.10, ptr @function_trace_init, ptr @function_trace_reset, ptr @function_trace_start, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @trace_selftest_startup_function, ptr null, ptr null, ptr @func_set_flag, ptr null, ptr null, ptr @func_flags, i32 0, i8 0, i8 1, i8 0, i8 0 }, section ".ref.data", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ftrace_traceoff_cmd = internal global { %struct.ftrace_func_command, [16 x i8] } { %struct.ftrace_func_command { %struct.list_head zeroinitializer, ptr @.str, ptr @ftrace_trace_onoff_callback }, [16 x i8] zeroinitializer }, align 32
@ftrace_traceon_cmd = internal global { %struct.ftrace_func_command, [16 x i8] } { %struct.ftrace_func_command { %struct.list_head zeroinitializer, ptr @.str.1, ptr @ftrace_trace_onoff_callback }, [16 x i8] zeroinitializer }, align 32
@ftrace_stacktrace_cmd = internal global { %struct.ftrace_func_command, [16 x i8] } { %struct.ftrace_func_command { %struct.list_head zeroinitializer, ptr @.str.6, ptr @ftrace_stacktrace_callback }, [16 x i8] zeroinitializer }, align 32
@ftrace_dump_cmd = internal global { %struct.ftrace_func_command, [16 x i8] } { %struct.ftrace_func_command { %struct.list_head zeroinitializer, ptr @.str.7, ptr @ftrace_dump_callback }, [16 x i8] zeroinitializer }, align 32
@ftrace_cpudump_cmd = internal global { %struct.ftrace_func_command, [16 x i8] } { %struct.ftrace_func_command { %struct.list_head zeroinitializer, ptr @.str.9, ptr @ftrace_cpudump_callback }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"traceoff\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"traceon\00", [24 x i8] zeroinitializer }, align 32
@traceon_count_probe_ops = internal global { %struct.ftrace_probe_ops, [16 x i8] } { %struct.ftrace_probe_ops { ptr @ftrace_traceon_count, ptr @ftrace_count_init, ptr @ftrace_count_free, ptr @ftrace_traceon_print }, [16 x i8] zeroinitializer }, align 32
@traceon_probe_ops = internal global { %struct.ftrace_probe_ops, [16 x i8] } { %struct.ftrace_probe_ops { ptr @ftrace_traceon, ptr null, ptr null, ptr @ftrace_traceon_print }, [16 x i8] zeroinitializer }, align 32
@traceoff_count_probe_ops = internal global { %struct.ftrace_probe_ops, [16 x i8] } { %struct.ftrace_probe_ops { ptr @ftrace_traceoff_count, ptr @ftrace_count_init, ptr @ftrace_count_free, ptr @ftrace_traceoff_print }, [16 x i8] zeroinitializer }, align 32
@traceoff_probe_ops = internal global { %struct.ftrace_probe_ops, [16 x i8] } { %struct.ftrace_probe_ops { ptr @ftrace_traceoff, ptr null, ptr null, ptr @ftrace_traceoff_print }, [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%ps:%s\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c":count=%ld\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c":unlimited\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stacktrace\00", [21 x i8] zeroinitializer }, align 32
@stacktrace_count_probe_ops = internal global { %struct.ftrace_probe_ops, [16 x i8] } { %struct.ftrace_probe_ops { ptr @ftrace_stacktrace_count, ptr @ftrace_count_init, ptr @ftrace_count_free, ptr @ftrace_stacktrace_print }, [16 x i8] zeroinitializer }, align 32
@stacktrace_probe_ops = internal global { %struct.ftrace_probe_ops, [16 x i8] } { %struct.ftrace_probe_ops { ptr @ftrace_stacktrace, ptr null, ptr null, ptr @ftrace_stacktrace_print }, [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dump\00", [27 x i8] zeroinitializer }, align 32
@dump_probe_ops = internal global { %struct.ftrace_probe_ops, [16 x i8] } { %struct.ftrace_probe_ops { ptr @ftrace_dump_probe, ptr @ftrace_count_init, ptr @ftrace_count_free, ptr @ftrace_dump_print }, [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpudump\00", [24 x i8] zeroinitializer }, align 32
@cpudump_probe_ops = internal global { %struct.ftrace_probe_ops, [16 x i8] } { %struct.ftrace_probe_ops { ptr @ftrace_cpudump_probe, ptr null, ptr null, ptr @ftrace_cpudump_print }, [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"function\00", [23 x i8] zeroinitializer }, align 32
@func_flags = internal global { %struct.tracer_flags, [20 x i8] } { %struct.tracer_flags { i32 0, ptr @func_opts, ptr null }, [20 x i8] zeroinitializer }, align 32
@func_opts = internal global { [3 x %struct.tracer_opt], [40 x i8] } { [3 x %struct.tracer_opt] [%struct.tracer_opt { ptr @.str.11, i32 1 }, %struct.tracer_opt { ptr @.str.12, i32 2 }, %struct.tracer_opt zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"func_stack_trace\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"func-no-repeats\00", [16 x i8] zeroinitializer }, align 32
@__llvm_gcov_ctr = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.13 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.14 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.15 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.16 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.17 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.22 = internal global [27 x i64] zeroinitializer
@__llvm_gcov_ctr.23 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.24 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.25 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.26 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.27 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.28 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.29 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.30 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.31 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.32 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.33 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.34 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.35 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.36 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.37 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.38 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.39 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.40 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.41 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.42 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.43 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.44 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.45 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.46 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.47 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.48 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.49 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.50 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.51 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.52 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.53 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.54 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.55 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.56 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.57 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.58 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.59 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.60 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.61 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.62 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.63 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.64 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.65 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.66 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.67 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.68 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.69 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.70 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.71 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.72 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.73 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.74 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.75 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.76 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.77 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.78 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.79 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.80 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.81 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.82 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.83 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.84 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.85 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.86 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.87 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.88 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.89 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.90 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.91 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.92 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.93 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.94 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.95 = internal global [1 x i64] zeroinitializer
@0 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_functions.gcda\00", [61 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [84 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 -943727922, i32 -910977724 }, %emit_function_args_ty { i32 1, i32 436087400, i32 -910977724 }, %emit_function_args_ty { i32 2, i32 2017982059, i32 -910977724 }, %emit_function_args_ty { i32 3, i32 471702243, i32 -910977724 }, %emit_function_args_ty { i32 4, i32 -760993064, i32 -910977724 }, %emit_function_args_ty { i32 5, i32 -1532671059, i32 -910977724 }, %emit_function_args_ty { i32 6, i32 1647161404, i32 -910977724 }, %emit_function_args_ty { i32 7, i32 2003533564, i32 -910977724 }, %emit_function_args_ty { i32 8, i32 -400554785, i32 -910977724 }, %emit_function_args_ty { i32 9, i32 -1782918348, i32 -910977724 }, %emit_function_args_ty { i32 10, i32 795548855, i32 -910977724 }, %emit_function_args_ty { i32 11, i32 727036892, i32 -910977724 }, %emit_function_args_ty { i32 12, i32 1841983822, i32 -910977724 }, %emit_function_args_ty { i32 13, i32 1624494247, i32 -910977724 }, %emit_function_args_ty { i32 14, i32 -963894156, i32 -910977724 }, %emit_function_args_ty { i32 15, i32 940485695, i32 -910977724 }, %emit_function_args_ty { i32 16, i32 1249662737, i32 -910977724 }, %emit_function_args_ty { i32 17, i32 288547376, i32 -910977724 }, %emit_function_args_ty { i32 18, i32 -464218692, i32 -910977724 }, %emit_function_args_ty { i32 19, i32 -406829888, i32 -910977724 }, %emit_function_args_ty { i32 20, i32 -1049072290, i32 -910977724 }, %emit_function_args_ty { i32 21, i32 -1091439523, i32 -910977724 }, %emit_function_args_ty { i32 22, i32 -1567486560, i32 -910977724 }, %emit_function_args_ty { i32 23, i32 1318765010, i32 -910977724 }, %emit_function_args_ty { i32 24, i32 -1543658690, i32 -910977724 }, %emit_function_args_ty { i32 25, i32 -1111025999, i32 -910977724 }, %emit_function_args_ty { i32 26, i32 835031753, i32 -910977724 }, %emit_function_args_ty { i32 27, i32 -1846855200, i32 -910977724 }, %emit_function_args_ty { i32 28, i32 81157262, i32 -910977724 }, %emit_function_args_ty { i32 29, i32 1663674071, i32 -910977724 }, %emit_function_args_ty { i32 30, i32 -1672745738, i32 -910977724 }, %emit_function_args_ty { i32 31, i32 1834354242, i32 -910977724 }, %emit_function_args_ty { i32 32, i32 1333844298, i32 -910977724 }, %emit_function_args_ty { i32 33, i32 577183102, i32 -910977724 }, %emit_function_args_ty { i32 34, i32 1044541543, i32 -910977724 }, %emit_function_args_ty { i32 35, i32 1109411116, i32 -910977724 }, %emit_function_args_ty { i32 36, i32 -1398427033, i32 -910977724 }, %emit_function_args_ty { i32 37, i32 -2037898029, i32 -910977724 }, %emit_function_args_ty { i32 38, i32 -123444826, i32 -910977724 }, %emit_function_args_ty { i32 39, i32 -824492806, i32 -910977724 }, %emit_function_args_ty { i32 40, i32 -1885694463, i32 -910977724 }, %emit_function_args_ty { i32 41, i32 -413852470, i32 -910977724 }, %emit_function_args_ty { i32 42, i32 312516358, i32 -910977724 }, %emit_function_args_ty { i32 43, i32 856024504, i32 -910977724 }, %emit_function_args_ty { i32 44, i32 -125011338, i32 -910977724 }, %emit_function_args_ty { i32 45, i32 -117061252, i32 -910977724 }, %emit_function_args_ty { i32 46, i32 613092931, i32 -910977724 }, %emit_function_args_ty { i32 47, i32 1590062101, i32 -910977724 }, %emit_function_args_ty { i32 48, i32 1841621385, i32 -910977724 }, %emit_function_args_ty { i32 49, i32 -1290223341, i32 -910977724 }, %emit_function_args_ty { i32 50, i32 -986397664, i32 -910977724 }, %emit_function_args_ty { i32 51, i32 -918793433, i32 -910977724 }, %emit_function_args_ty { i32 52, i32 -331997553, i32 -910977724 }, %emit_function_args_ty { i32 53, i32 283381449, i32 -910977724 }, %emit_function_args_ty { i32 54, i32 1511643038, i32 -910977724 }, %emit_function_args_ty { i32 55, i32 1963571882, i32 -910977724 }, %emit_function_args_ty { i32 56, i32 -50400276, i32 -910977724 }, %emit_function_args_ty { i32 57, i32 1089353167, i32 -910977724 }, %emit_function_args_ty { i32 58, i32 1697871235, i32 -910977724 }, %emit_function_args_ty { i32 59, i32 -1874760673, i32 -910977724 }, %emit_function_args_ty { i32 60, i32 -1266087175, i32 -910977724 }, %emit_function_args_ty { i32 61, i32 -1220601477, i32 -910977724 }, %emit_function_args_ty { i32 62, i32 -1845229590, i32 -910977724 }, %emit_function_args_ty { i32 63, i32 -36093107, i32 -910977724 }, %emit_function_args_ty { i32 64, i32 -1192461323, i32 -910977724 }, %emit_function_args_ty { i32 65, i32 -1954050047, i32 -910977724 }, %emit_function_args_ty { i32 66, i32 48598087, i32 -910977724 }, %emit_function_args_ty { i32 67, i32 -534313391, i32 -910977724 }, %emit_function_args_ty { i32 68, i32 -71949746, i32 -910977724 }, %emit_function_args_ty { i32 69, i32 -1912370406, i32 -910977724 }, %emit_function_args_ty { i32 70, i32 1403380823, i32 -910977724 }, %emit_function_args_ty { i32 71, i32 -1082265946, i32 -910977724 }, %emit_function_args_ty { i32 72, i32 -1023618272, i32 -910977724 }, %emit_function_args_ty { i32 73, i32 -743251458, i32 -910977724 }, %emit_function_args_ty { i32 74, i32 -1208743970, i32 -910977724 }, %emit_function_args_ty { i32 75, i32 47165945, i32 -910977724 }, %emit_function_args_ty { i32 76, i32 -868360281, i32 -910977724 }, %emit_function_args_ty { i32 77, i32 -693354315, i32 -910977724 }, %emit_function_args_ty { i32 78, i32 1212846073, i32 -910977724 }, %emit_function_args_ty { i32 79, i32 1044414937, i32 -910977724 }, %emit_function_args_ty { i32 80, i32 1311495864, i32 -910977724 }, %emit_function_args_ty { i32 81, i32 206218173, i32 -910977724 }, %emit_function_args_ty { i32 82, i32 -1153801267, i32 -910977724 }, %emit_function_args_ty { i32 83, i32 -1687001279, i32 -910977724 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [84 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.13 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.14 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.15 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.16 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.17 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.18 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.19 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.20 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.21 }, %emit_arcs_args_ty { i32 27, ptr @__llvm_gcov_ctr.22 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.23 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.24 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.25 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.26 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.27 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.28 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.29 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.30 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.31 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.32 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.33 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.34 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.35 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.36 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.37 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.38 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.39 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.40 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.41 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.42 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.43 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.44 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.45 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.46 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.47 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.48 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.49 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.50 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.51 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.52 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.53 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.54 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.55 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.56 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.57 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.58 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.59 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.60 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.61 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.62 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.63 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.64 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.65 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.66 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.67 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.68 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.69 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.70 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.71 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.72 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.73 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.74 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.75 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.76 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.77 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.78 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.79 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.80 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.81 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.82 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.83 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.84 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.85 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.86 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.87 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.88 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.89 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.90 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.91 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.92 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.93 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.94 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.95 }]
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.96 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"ftrace_traceoff_cmd\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 906, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c"ftrace_traceon_cmd\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 901, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant [22 x i8] c"ftrace_stacktrace_cmd\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 911, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"ftrace_dump_cmd\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 916, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant [19 x i8] c"ftrace_cpudump_cmd\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 921, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 907, i32 12 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 845, i32 18 }
@___asan_gen_.118 = private unnamed_addr constant [24 x i8] c"traceon_count_probe_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 748, i32 32 }
@___asan_gen_.121 = private unnamed_addr constant [18 x i8] c"traceon_probe_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 781, i32 32 }
@___asan_gen_.124 = private unnamed_addr constant [25 x i8] c"traceoff_count_probe_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 755, i32 32 }
@___asan_gen_.127 = private unnamed_addr constant [19 x i8] c"traceoff_probe_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 786, i32 32 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 668, i32 16 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 674, i32 17 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 676, i32 15 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 816, i32 26 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 912, i32 12 }
@___asan_gen_.145 = private unnamed_addr constant [27 x i8] c"stacktrace_count_probe_ops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 762, i32 32 }
@___asan_gen_.148 = private unnamed_addr constant [21 x i8] c"stacktrace_probe_ops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 791, i32 32 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 917, i32 12 }
@___asan_gen_.154 = private unnamed_addr constant [15 x i8] c"dump_probe_ops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 769, i32 32 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 882, i32 9 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 922, i32 12 }
@___asan_gen_.163 = private unnamed_addr constant [18 x i8] c"cpudump_probe_ops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 776, i32 32 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 430, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant [11 x i8] c"func_flags\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 375, i32 28 }
@___asan_gen_.172 = private unnamed_addr constant [10 x i8] c"func_opts\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 367, i32 26 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 369, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private constant [34 x i8] c"../kernel/trace/trace_functions.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 371, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @ftrace_traceoff_cmd, ptr @ftrace_traceon_cmd, ptr @ftrace_stacktrace_cmd, ptr @ftrace_dump_cmd, ptr @ftrace_cpudump_cmd, ptr @.str, ptr @.str.1, ptr @traceon_count_probe_ops, ptr @traceon_probe_ops, ptr @traceoff_count_probe_ops, ptr @traceoff_probe_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @stacktrace_count_probe_ops, ptr @stacktrace_probe_ops, ptr @.str.7, ptr @dump_probe_ops, ptr @.str.8, ptr @.str.9, ptr @cpudump_probe_ops, ptr @.str.10, ptr @func_flags, ptr @func_opts, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@1 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_traceoff_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_traceon_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_stacktrace_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_dump_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_cpudump_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @traceon_count_probe_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @traceon_probe_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @traceoff_count_probe_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @traceoff_probe_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stacktrace_count_probe_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stacktrace_probe_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_probe_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpudump_probe_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @func_flags to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @func_opts to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ftrace_allocate_ftrace_ops(ptr noundef %tr) local_unnamed_addr #0 align 64 !dbg !71 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !74
  %flags = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 26, !dbg !75
  %0 = ptrtoint ptr %flags to i32, !dbg !75
  call void @__asan_load4_noabort(i32 %0), !dbg !75
  %1 = load i32, ptr %flags, align 8, !dbg !75
  %and = and i32 %1, 1, !dbg !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !76
  %tobool.not = icmp eq i32 %and, 0, !dbg !76
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !78
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 16, !dbg !78
  %2 = add i64 %gcov_ctr, 1, !dbg !78
  store i64 %2, ptr @__llvm_gcov_ctr, align 16, !dbg !78
  br label %cleanup, !dbg !78

if.end:                                           ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.13, align 8
  %gcov_ctr85.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 7), align 8, !dbg !79
  %4 = add i64 %gcov_ctr85.i.i.i, 1, !dbg !79
  store i64 %4, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 7), align 8, !dbg !79
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 2), align 16, !dbg !87
  %5 = add i64 %gcov_ctr11.i.i, 1, !dbg !87
  store i64 %5, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 2), align 16, !dbg !87
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.23, align 16, !dbg !88
  %6 = add i64 %gcov_ctr.i.i.i, 1, !dbg !88
  store i64 %6, ptr @__llvm_gcov_ctr.23, align 16, !dbg !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32)), !dbg !91
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4, !dbg !91
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 240) #14, !dbg !92
  %tobool1.not = icmp eq ptr %call7.i.i, null, !dbg !93
  br i1 %tobool1.not, label %if.then2, label %if.end3, !dbg !94

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !95
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !95
  %8 = add i64 %gcov_ctr6, 1, !dbg !95
  store i64 %8, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !95
  br label %cleanup, !dbg !95

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !96
  %gcov_ctr7 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !96
  %9 = add i64 %gcov_ctr7, 1, !dbg !96
  store i64 %9, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !96
  %10 = ptrtoint ptr %call7.i.i to i32, !dbg !97
  call void @__asan_store4_noabort(i32 %10), !dbg !97
  store ptr @function_trace_call, ptr %call7.i.i, align 8, !dbg !97
  %flags4 = getelementptr inbounds %struct.ftrace_ops, ptr %call7.i.i, i32 0, i32 2, !dbg !98
  %11 = ptrtoint ptr %flags4 to i32, !dbg !99
  call void @__asan_store4_noabort(i32 %11), !dbg !99
  store i32 8192, ptr %flags4, align 8, !dbg !99
  %ops5 = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 40, !dbg !100
  %12 = ptrtoint ptr %ops5 to i32, !dbg !101
  call void @__asan_store4_noabort(i32 %12), !dbg !101
  store ptr %call7.i.i, ptr %ops5, align 4, !dbg !101
  %private = getelementptr inbounds %struct.ftrace_ops, ptr %call7.i.i, i32 0, i32 3, !dbg !102
  %13 = ptrtoint ptr %private to i32, !dbg !103
  call void @__asan_store4_noabort(i32 %13), !dbg !103
  store ptr %tr, ptr %private, align 4, !dbg !103
  br label %cleanup, !dbg !104

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end3 ], [ -12, %if.then2 ], !dbg !105
  ret i32 %retval.0, !dbg !106
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @function_trace_call(i32 noundef %ip, i32 noundef %parent_ip, ptr nocapture noundef readonly %op, ptr nocapture noundef readnone %fregs) #0 align 64 !dbg !107 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !108
  %private = getelementptr inbounds %struct.ftrace_ops, ptr %op, i32 0, i32 3, !dbg !109
  %0 = ptrtoint ptr %private to i32, !dbg !109
  call void @__asan_load4_noabort(i32 %0), !dbg !109
  %1 = load ptr, ptr %private, align 4, !dbg !109
  %function_enabled = getelementptr inbounds %struct.trace_array, ptr %1, i32 0, i32 46, !dbg !110
  %2 = ptrtoint ptr %function_enabled to i32, !dbg !110
  call void @__asan_load4_noabort(i32 %2), !dbg !110
  %3 = load i32, ptr %function_enabled, align 8, !dbg !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3), !dbg !110
  %tobool.not = icmp eq i32 %3, 0, !dbg !110
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !110, !prof !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !112
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.14, align 16
  %4 = add i64 %gcov_ctr, 1
  store i64 %4, ptr @__llvm_gcov_ctr.14, align 16
  br label %cleanup, !dbg !113

if.end:                                           ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %5 = add i64 %gcov_ctr.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.27, align 8
  %gcov_ctr.i4.i.i = load i64, ptr @__llvm_gcov_ctr.29, align 8, !dbg !114
  %6 = add i64 %gcov_ctr.i4.i.i, 1, !dbg !114
  store i64 %6, ptr @__llvm_gcov_ctr.29, align 8, !dbg !114
  %7 = tail call i32 @llvm.read_register.i32(metadata !2) #15, !dbg !114
  %and.i.i.i = and i32 %7, -16384, !dbg !123
  %8 = inttoptr i32 %and.i.i.i to ptr, !dbg !124
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2, !dbg !125
  %9 = ptrtoint ptr %task.i.i to i32, !dbg !125
  call void @__asan_load4_noabort(i32 %9), !dbg !125
  %10 = load ptr, ptr %task.i.i, align 8, !dbg !125
  %trace_recursion.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 194, !dbg !125
  %11 = ptrtoint ptr %trace_recursion.i.i to i32, !dbg !125
  call void @__asan_load4_noabort(i32 %11), !dbg !125
  %12 = load volatile i32, ptr %trace_recursion.i.i, align 4, !dbg !125
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.33, align 8
  %13 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %13, ptr @__llvm_gcov_ctr.33, align 8
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.35, align 8
  %14 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %14, ptr @__llvm_gcov_ctr.35, align 8
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.36, align 8
  %15 = add i64 %gcov_ctr.i.i.i.i.i, 1
  store i64 %15, ptr @__llvm_gcov_ctr.36, align 8
  %16 = add i64 %gcov_ctr.i4.i.i, 2, !dbg !126
  store i64 %16, ptr @__llvm_gcov_ctr.29, align 8, !dbg !126
  %17 = tail call i32 @llvm.read_register.i32(metadata !2) #15, !dbg !126
  %and.i.i.i.i.i.i = and i32 %17, -16384, !dbg !136
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr, !dbg !137
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1, !dbg !138
  %19 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32, !dbg !138
  call void @__asan_load4_noabort(i32 %19), !dbg !138
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4, !dbg !138
  %and.i.i.i.i = and i32 %20, 15728640, !dbg !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i), !dbg !140
  %tobool.i.i.i.i = icmp ne i32 %and.i.i.i.i, 0, !dbg !140
  %and3.i.i.i.i = and i32 %20, 16711680, !dbg !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i.i), !dbg !142
  %tobool4.i.not.i.i.i = icmp eq i32 %and3.i.i.i.i, 0, !dbg !142
  %conv9.i.neg.i.i.i = sext i1 %tobool.i.i.i.i to i32, !dbg !143
  %and12.i.i.i.i = and i32 %20, 16711936, !dbg !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i.i.i), !dbg !145
  %tobool13.i.i.i.i = icmp ne i32 %and12.i.i.i.i, 0, !dbg !145
  %lnot.ext17.i.neg.i.i.i = sext i1 %tobool13.i.i.i.i to i32, !dbg !146
  %add10.i.neg.i.i.i = select i1 %tobool4.i.not.i.i.i, i32 3, i32 2, !dbg !143
  %add19.i.neg.i.i.i = add nsw i32 %add10.i.neg.i.i.i, %conv9.i.neg.i.i.i, !dbg !147
  %sub.i.i.i = add nsw i32 %add19.i.neg.i.i.i, %lnot.ext17.i.neg.i.i.i, !dbg !148
  %shl.i.i = shl nuw nsw i32 1, %sub.i.i.i, !dbg !149
  %and.i.i = and i32 %shl.i.i, %12, !dbg !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !149
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !149
  br i1 %tobool.not.i.i, label %if.end.if.end5_crit_edge, label %if.then.i.i, !dbg !149, !prof !150

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !149
  br label %if.end5, !dbg !149

if.then.i.i:                                      ; preds = %if.end
  %and6.i.i = and i32 %12, 16, !dbg !151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i), !dbg !151
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0, !dbg !151
  br i1 %tobool7.not.i.i, label %if.end31.i.i, label %do.body9.i.i, !dbg !152

do.body9.i.i:                                     ; preds = %if.then.i.i
  %and13.i.i = and i32 %12, 65536, !dbg !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i), !dbg !153
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0, !dbg !153
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %do.body9.i.i.if.then4_crit_edge, !dbg !153

do.body9.i.i.if.then4_crit_edge:                  ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !153
  br label %if.then4, !dbg !153

if.then15.i.i:                                    ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !153
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.32, align 16, !dbg !153
  %21 = add i64 %gcov_ctr.i.i, 1, !dbg !153
  store i64 %21, ptr @__llvm_gcov_ctr.32, align 16, !dbg !153
  %or.i.i = or i32 %12, 65536, !dbg !153
  %22 = ptrtoint ptr %trace_recursion.i.i to i32, !dbg !153
  call void @__asan_store4_noabort(i32 %22), !dbg !153
  store i32 %or.i.i, ptr %trace_recursion.i.i, align 4, !dbg !153
  tail call void @ftrace_record_recursion(i32 noundef %ip, i32 noundef %parent_ip) #15, !dbg !153
  %23 = ptrtoint ptr %task.i.i to i32, !dbg !153
  call void @__asan_load4_noabort(i32 %23), !dbg !153
  %24 = load ptr, ptr %task.i.i, align 8, !dbg !153
  %trace_recursion25.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 194, !dbg !153
  %25 = ptrtoint ptr %trace_recursion25.i.i to i32, !dbg !153
  call void @__asan_load4_noabort(i32 %25), !dbg !153
  %26 = load i32, ptr %trace_recursion25.i.i, align 4, !dbg !153
  %and26.i.i = and i32 %26, -65537, !dbg !153
  store i32 %and26.i.i, ptr %trace_recursion25.i.i, align 4, !dbg !153
  br label %if.then4, !dbg !153

if.end31.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !154
  %gcov_ctr43.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 2), align 16, !dbg !154
  %27 = add i64 %gcov_ctr43.i.i, 1, !dbg !154
  store i64 %27, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 2), align 16, !dbg !154
  br label %if.end5, !dbg !154

if.then4:                                         ; preds = %if.then15.i.i, %do.body9.i.i.if.then4_crit_edge
  %gcov_ctr44.i.i51 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !155
  %28 = add i64 %gcov_ctr44.i.i51, 1, !dbg !155
  store i64 %28, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !155
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 1), align 8
  %29 = add i64 %gcov_ctr19, 1
  store i64 %29, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 1), align 8
  br label %cleanup, !dbg !156

if.end5:                                          ; preds = %if.end31.i.i, %if.end.if.end5_crit_edge
  %bit.0.i.i = phi i32 [ 4, %if.end31.i.i ], [ %sub.i.i.i, %if.end.if.end5_crit_edge ], !dbg !155
  %shl33.i.i = shl nuw nsw i32 1, %bit.0.i.i, !dbg !157
  %or34.i.i = or i32 %shl33.i.i, %12, !dbg !158
  %30 = ptrtoint ptr %task.i.i to i32, !dbg !159
  call void @__asan_load4_noabort(i32 %30), !dbg !159
  %31 = load ptr, ptr %task.i.i, align 8, !dbg !159
  %trace_recursion37.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 194, !dbg !160
  %32 = ptrtoint ptr %trace_recursion37.i.i to i32, !dbg !161
  call void @__asan_store4_noabort(i32 %32), !dbg !161
  store i32 %or34.i.i, ptr %trace_recursion37.i.i, align 4, !dbg !161
  tail call void asm sideeffect "", "~{memory}"() #15, !dbg !162, !srcloc !163
  %gcov_ctr.i1.i.i = load i64, ptr @__llvm_gcov_ctr.34, align 8
  %33 = add i64 %gcov_ctr.i1.i.i, 1
  store i64 %33, ptr @__llvm_gcov_ctr.34, align 8
  %gcov_ctr.i.i2.i.i = load i64, ptr @__llvm_gcov_ctr.37, align 8, !dbg !164
  %34 = add i64 %gcov_ctr.i.i2.i.i, 1, !dbg !164
  store i64 %34, ptr @__llvm_gcov_ctr.37, align 8, !dbg !164
  %gcov_ctr.i.i.i3.i.i = load i64, ptr @__llvm_gcov_ctr.29, align 8, !dbg !169
  %35 = add i64 %gcov_ctr.i.i.i3.i.i, 1, !dbg !169
  store i64 %35, ptr @__llvm_gcov_ctr.29, align 8, !dbg !169
  %36 = tail call i32 @llvm.read_register.i32(metadata !2) #15, !dbg !169
  %and.i.i.i.i.i = and i32 %36, -16384, !dbg !171
  %37 = inttoptr i32 %and.i.i.i.i.i to ptr, !dbg !172
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1, !dbg !173
  %38 = ptrtoint ptr %preempt_count.i.i.i.i to i32, !dbg !174
  call void @__asan_load4_noabort(i32 %38), !dbg !174
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4, !dbg !174
  %add.i.i.i = add i32 %39, 1, !dbg !174
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4, !dbg !174
  tail call void asm sideeffect "", "~{memory}"() #15, !dbg !175, !srcloc !176
  %gcov_ctr44.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 3), align 8, !dbg !155
  %40 = add i64 %gcov_ctr44.i.i, 1, !dbg !155
  store i64 %40, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 3), align 8, !dbg !155
  %gcov_ctr.i44 = load i64, ptr @__llvm_gcov_ctr.28, align 8, !dbg !177
  %41 = add i64 %gcov_ctr.i44, 1, !dbg !177
  store i64 %41, ptr @__llvm_gcov_ctr.28, align 8, !dbg !177
  %gcov_ctr.i.i45 = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %42 = add i64 %gcov_ctr.i.i45, 1
  store i64 %42, ptr @__llvm_gcov_ctr.38, align 8
  %43 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !dbg !181, !srcloc !185
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.39, align 8
  %44 = add i64 %gcov_ctr.i2.i, 1
  store i64 %44, ptr @__llvm_gcov_ctr.39, align 8
  %gcov_ctr.i.i.i46 = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %45 = add i64 %gcov_ctr.i.i.i46, 1
  store i64 %45, ptr @__llvm_gcov_ctr.40, align 8
  %and.i.i.i47 = lshr i32 %43, 7, !dbg !186
  %and.i.lobit.i.i = and i32 %and.i.i.i47, 1, !dbg !186
  %call2.i.i = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %and.i.lobit.i.i) #15, !dbg !189
  %gcov_ctr.i48 = load i64, ptr @__llvm_gcov_ctr.29, align 8, !dbg !190
  %46 = add i64 %gcov_ctr.i48, 1, !dbg !190
  store i64 %46, ptr @__llvm_gcov_ctr.29, align 8, !dbg !190
  %47 = tail call i32 @llvm.read_register.i32(metadata !2) #15, !dbg !190
  %and.i = and i32 %47, -16384, !dbg !192
  %48 = inttoptr i32 %and.i to ptr, !dbg !193
  %cpu8 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3, !dbg !194
  %49 = ptrtoint ptr %cpu8 to i32, !dbg !194
  call void @__asan_load4_noabort(i32 %49), !dbg !194
  %50 = load i32, ptr %cpu8, align 4, !dbg !194
  %data9 = getelementptr inbounds %struct.trace_array, ptr %1, i32 0, i32 2, i32 2, !dbg !195
  %51 = ptrtoint ptr %data9 to i32, !dbg !195
  call void @__asan_load4_noabort(i32 %51), !dbg !195
  %52 = load ptr, ptr %data9, align 8, !dbg !195
  %53 = ptrtoint ptr %52 to i32, !dbg !195
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50, !dbg !195
  %54 = ptrtoint ptr %arrayidx to i32, !dbg !195
  call void @__asan_load4_noabort(i32 %54), !dbg !195
  %55 = load i32, ptr %arrayidx, align 4, !dbg !195
  %add = add i32 %55, %53, !dbg !195
  %56 = inttoptr i32 %add to ptr, !dbg !195
  %gcov_ctr.i28 = load i64, ptr @__llvm_gcov_ctr.30, align 8
  %57 = add i64 %gcov_ctr.i28, 1
  store i64 %57, ptr @__llvm_gcov_ctr.30, align 8
  %gcov_ctr.i.i29 = load i64, ptr @__llvm_gcov_ctr.41, align 8
  %58 = add i64 %gcov_ctr.i.i29, 1
  store i64 %58, ptr @__llvm_gcov_ctr.41, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %56, i32 noundef 4) #15, !dbg !196
  %gcov_ctr.i.i.i30 = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %59 = add i64 %gcov_ctr.i.i.i30, 1
  store i64 %59, ptr @__llvm_gcov_ctr.42, align 8
  %60 = ptrtoint ptr %56 to i32, !dbg !203
  call void @__asan_load4_noabort(i32 %60), !dbg !203
  %61 = load volatile i32, ptr %56, align 4, !dbg !203
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61), !dbg !204
  %tobool12.not = icmp eq i32 %61, 0, !dbg !204
  br i1 %tobool12.not, label %if.then13, label %if.end5.if.end14_crit_edge, !dbg !205

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13, !dbg !205
  br label %if.end14, !dbg !205

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13, !dbg !206
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 2), align 16, !dbg !206
  %62 = add i64 %gcov_ctr20, 1, !dbg !206
  store i64 %62, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 2), align 16, !dbg !206
  tail call void @trace_function(ptr noundef %1, i32 noundef %ip, i32 noundef %parent_ip, i32 noundef %call2.i.i) #15, !dbg !207
  br label %if.end14, !dbg !207

if.end14:                                         ; preds = %if.then13, %if.end5.if.end14_crit_edge
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 3), align 8, !dbg !208
  %63 = add i64 %gcov_ctr21, 1, !dbg !208
  store i64 %63, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 3), align 8, !dbg !208
  %gcov_ctr.i31 = load i64, ptr @__llvm_gcov_ctr.31, align 8
  %64 = add i64 %gcov_ctr.i31, 1
  store i64 %64, ptr @__llvm_gcov_ctr.31, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !dbg !209, !srcloc !214
  %gcov_ctr.i.i.i32 = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %65 = add i64 %gcov_ctr.i.i.i32, 1
  store i64 %65, ptr @__llvm_gcov_ctr.44, align 8
  %gcov_ctr.i.i.i.i33 = load i64, ptr @__llvm_gcov_ctr.37, align 8, !dbg !215
  %66 = add i64 %gcov_ctr.i.i.i.i33, 1, !dbg !215
  store i64 %66, ptr @__llvm_gcov_ctr.37, align 8, !dbg !215
  %gcov_ctr.i.i.i.i.i34 = load i64, ptr @__llvm_gcov_ctr.29, align 8, !dbg !219
  %67 = add i64 %gcov_ctr.i.i.i.i.i34, 1, !dbg !219
  store i64 %67, ptr @__llvm_gcov_ctr.29, align 8, !dbg !219
  %68 = tail call i32 @llvm.read_register.i32(metadata !2) #15, !dbg !219
  %and.i.i.i.i.i35 = and i32 %68, -16384, !dbg !221
  %69 = inttoptr i32 %and.i.i.i.i.i35 to ptr, !dbg !222
  %preempt_count.i.i.i.i36 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1, !dbg !223
  %70 = ptrtoint ptr %preempt_count.i.i.i.i36 to i32, !dbg !224
  call void @__asan_load4_noabort(i32 %70), !dbg !224
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i36, align 4, !dbg !224
  %sub.i.i.i37 = add i32 %71, -1, !dbg !224
  store volatile i32 %sub.i.i.i37, ptr %preempt_count.i.i.i.i36, align 4, !dbg !224
  %gcov_ctr.i.i38 = load i64, ptr @__llvm_gcov_ctr.43, align 8, !dbg !225
  %72 = add i64 %gcov_ctr.i.i38, 1, !dbg !225
  store i64 %72, ptr @__llvm_gcov_ctr.43, align 8, !dbg !225
  tail call void asm sideeffect "", "~{memory}"() #15, !dbg !225, !srcloc !226
  %neg.i.i = xor i32 %shl33.i.i, -1, !dbg !227
  %gcov_ctr.i3.i.i = load i64, ptr @__llvm_gcov_ctr.29, align 8, !dbg !228
  %73 = add i64 %gcov_ctr.i3.i.i, 1, !dbg !228
  store i64 %73, ptr @__llvm_gcov_ctr.29, align 8, !dbg !228
  %74 = tail call i32 @llvm.read_register.i32(metadata !2) #15, !dbg !228
  %and.i.i.i40 = and i32 %74, -16384, !dbg !230
  %75 = inttoptr i32 %and.i.i.i40 to ptr, !dbg !231
  %task.i.i41 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2, !dbg !227
  %76 = ptrtoint ptr %task.i.i41 to i32, !dbg !227
  call void @__asan_load4_noabort(i32 %76), !dbg !227
  %77 = load ptr, ptr %task.i.i41, align 8, !dbg !227
  %trace_recursion.i.i42 = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 194, !dbg !227
  %78 = ptrtoint ptr %trace_recursion.i.i42 to i32, !dbg !227
  call void @__asan_load4_noabort(i32 %78), !dbg !227
  %79 = load i32, ptr %trace_recursion.i.i42, align 4, !dbg !227
  %and.i.i43 = and i32 %79, %neg.i.i, !dbg !227
  store i32 %and.i.i43, ptr %trace_recursion.i.i42, align 4, !dbg !227
  br label %cleanup, !dbg !232

cleanup:                                          ; preds = %if.end14, %if.then4, %if.then
  ret void, !dbg !232
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ftrace_free_ftrace_ops(ptr nocapture noundef %tr) local_unnamed_addr #0 align 64 !dbg !233 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !234
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.15, align 8
  %ops = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 40, !dbg !235
  %1 = ptrtoint ptr %ops to i32, !dbg !235
  call void @__asan_load4_noabort(i32 %1), !dbg !235
  %2 = load ptr, ptr %ops, align 4, !dbg !235
  tail call void @kfree(ptr noundef %2) #15, !dbg !236
  %3 = ptrtoint ptr %ops to i32, !dbg !237
  call void @__asan_store4_noabort(i32 %3), !dbg !237
  store ptr null, ptr %ops, align 4, !dbg !237
  ret void, !dbg !238
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ftrace_create_function_files(ptr nocapture noundef readonly %tr, ptr noundef %parent) local_unnamed_addr #0 align 64 !dbg !239 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !240
  %flags = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 26, !dbg !241
  %0 = ptrtoint ptr %flags to i32, !dbg !241
  call void @__asan_load4_noabort(i32 %0), !dbg !241
  %1 = load i32, ptr %flags, align 8, !dbg !241
  %and = and i32 %1, 1, !dbg !242
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !242
  %tobool.not = icmp eq i32 %and, 0, !dbg !242
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !243

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !244
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.16, align 16, !dbg !244
  %2 = add i64 %gcov_ctr, 1, !dbg !244
  store i64 %2, ptr @__llvm_gcov_ctr.16, align 16, !dbg !244
  br label %return, !dbg !244

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 40, !dbg !245
  %3 = ptrtoint ptr %ops to i32, !dbg !245
  call void @__asan_load4_noabort(i32 %3), !dbg !245
  %4 = load ptr, ptr %ops, align 4, !dbg !245
  %tobool1.not = icmp eq ptr %4, null, !dbg !246
  br i1 %tobool1.not, label %if.then2, label %if.end3, !dbg !247

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !248
  %gcov_ctr5 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8, !dbg !248
  %5 = add i64 %gcov_ctr5, 1, !dbg !248
  store i64 %5, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8, !dbg !248
  br label %return, !dbg !248

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !249
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 2), align 16, !dbg !249
  %6 = add i64 %gcov_ctr6, 1, !dbg !249
  store i64 %6, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 2), align 16, !dbg !249
  tail call void @ftrace_create_filter_files(ptr noundef nonnull %4, ptr noundef %parent) #15, !dbg !250
  br label %return, !dbg !251

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end3 ], [ -22, %if.then2 ], !dbg !252
  ret i32 %retval.0, !dbg !253
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_create_filter_files(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ftrace_destroy_function_files(ptr nocapture noundef %tr) local_unnamed_addr #0 align 64 !dbg !254 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !255
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.17, align 8
  %ops = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 40, !dbg !256
  %1 = ptrtoint ptr %ops to i32, !dbg !256
  call void @__asan_load4_noabort(i32 %1), !dbg !256
  %2 = load ptr, ptr %ops, align 4, !dbg !256
  tail call void @ftrace_destroy_filter_files(ptr noundef %2) #15, !dbg !257
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.15, align 8
  %4 = ptrtoint ptr %ops to i32, !dbg !258
  call void @__asan_load4_noabort(i32 %4), !dbg !258
  %5 = load ptr, ptr %ops, align 4, !dbg !258
  tail call void @kfree(ptr noundef %5) #15, !dbg !260
  %6 = ptrtoint ptr %ops to i32, !dbg !261
  call void @__asan_store4_noabort(i32 %6), !dbg !261
  store ptr null, ptr %ops, align 4, !dbg !261
  ret void, !dbg !262
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_destroy_filter_files(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_function_trace() local_unnamed_addr #3 section ".init.text" align 64 !dbg !263 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !264
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.18, align 8, !dbg !265
  %0 = add i64 %gcov_ctr, 1, !dbg !265
  store i64 %0, ptr @__llvm_gcov_ctr.18, align 8, !dbg !265
  tail call fastcc void @init_func_cmd_traceon() #16, !dbg !265
  %call1 = tail call i32 @register_tracer(ptr noundef nonnull @function_trace) #15, !dbg !266
  ret i32 %call1, !dbg !267
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_func_cmd_traceon() unnamed_addr #3 section ".init.text" align 64 !dbg !268 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !269
  %call = tail call i32 @register_ftrace_command(ptr noundef nonnull @ftrace_traceoff_cmd) #15, !dbg !270
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !271
  %tobool.not = icmp eq i32 %call, 0, !dbg !271
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !271

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !272
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.19, align 16, !dbg !272
  %0 = add i64 %gcov_ctr, 1, !dbg !272
  store i64 %0, ptr @__llvm_gcov_ctr.19, align 16, !dbg !272
  br label %cleanup, !dbg !273

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_ftrace_command(ptr noundef nonnull @ftrace_traceon_cmd) #15, !dbg !274
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1), !dbg !275
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !275
  br i1 %tobool2.not, label %if.end4, label %if.then3, !dbg !275

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !276
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 1), align 8, !dbg !276
  %1 = add i64 %gcov_ctr21, 1, !dbg !276
  store i64 %1, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 1), align 8, !dbg !276
  br label %out_free_traceoff, !dbg !276

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_ftrace_command(ptr noundef nonnull @ftrace_stacktrace_cmd) #15, !dbg !277
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5), !dbg !278
  %tobool6.not = icmp eq i32 %call5, 0, !dbg !278
  br i1 %tobool6.not, label %if.end8, label %if.then7, !dbg !278

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13, !dbg !279
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 2), align 16, !dbg !279
  %2 = add i64 %gcov_ctr22, 1, !dbg !279
  store i64 %2, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 2), align 16, !dbg !279
  br label %out_free_traceon, !dbg !279

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @register_ftrace_command(ptr noundef nonnull @ftrace_dump_cmd) #15, !dbg !280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9), !dbg !281
  %tobool10.not = icmp eq i32 %call9, 0, !dbg !281
  br i1 %tobool10.not, label %if.end12, label %if.then11, !dbg !281

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13, !dbg !282
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 3), align 8, !dbg !282
  %3 = add i64 %gcov_ctr23, 1, !dbg !282
  store i64 %3, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 3), align 8, !dbg !282
  br label %out_free_stacktrace, !dbg !282

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @register_ftrace_command(ptr noundef nonnull @ftrace_cpudump_cmd) #15, !dbg !283
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13), !dbg !284
  %tobool14.not = icmp eq i32 %call13, 0, !dbg !284
  br i1 %tobool14.not, label %if.end16, label %out_free_dump, !dbg !284

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13, !dbg !285
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 4), align 16, !dbg !285
  %4 = add i64 %gcov_ctr24, 1, !dbg !285
  store i64 %4, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 4), align 16, !dbg !285
  br label %cleanup, !dbg !285

out_free_dump:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13, !dbg !286
  %gcov_ctr25 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 5), align 8, !dbg !286
  %5 = add i64 %gcov_ctr25, 1, !dbg !286
  store i64 %5, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 5), align 8, !dbg !286
  %call17 = tail call i32 @unregister_ftrace_command(ptr noundef nonnull @ftrace_dump_cmd) #15, !dbg !286
  br label %out_free_stacktrace, !dbg !286

out_free_stacktrace:                              ; preds = %out_free_dump, %if.then11
  %call18 = tail call i32 @unregister_ftrace_command(ptr noundef nonnull @ftrace_stacktrace_cmd) #15, !dbg !287
  br label %out_free_traceon, !dbg !287

out_free_traceon:                                 ; preds = %out_free_stacktrace, %if.then7
  %call19 = tail call i32 @unregister_ftrace_command(ptr noundef nonnull @ftrace_traceon_cmd) #15, !dbg !288
  br label %out_free_traceoff, !dbg !288

out_free_traceoff:                                ; preds = %out_free_traceon, %if.then3
  %call20 = tail call i32 @unregister_ftrace_command(ptr noundef nonnull @ftrace_traceoff_cmd) #15, !dbg !289
  br label %cleanup, !dbg !290

cleanup:                                          ; preds = %out_free_traceoff, %if.end16, %if.then
  ret void, !dbg !291
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_tracer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_function(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_record_recursion(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_gen_ctx_irq_test(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_ftrace_command(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_ftrace_command(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftrace_trace_onoff_callback(ptr noundef %tr, ptr nocapture noundef readnone %hash, ptr noundef %glob, ptr nocapture noundef readonly %cmd, ptr noundef %param, i32 noundef %enable) #0 align 64 !dbg !292 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !293
  %tobool.not = icmp eq ptr %tr, null, !dbg !294
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !295

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !296
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.45, align 16, !dbg !296
  %0 = add i64 %gcov_ctr, 1, !dbg !296
  store i64 %0, ptr @__llvm_gcov_ctr.45, align 16, !dbg !296
  br label %cleanup, !dbg !296

if.end:                                           ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef %cmd, ptr noundef nonnull dereferenceable(8) @.str.1) #17, !dbg !297
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !298
  %cmp = icmp eq i32 %call, 0, !dbg !298
  br i1 %cmp, label %if.then1, label %if.else, !dbg !297

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !299
  %gcov_ctr7 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !299
  %1 = add i64 %gcov_ctr7, 1, !dbg !299
  store i64 %1, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !299
  %tobool2.not = icmp eq ptr %param, null, !dbg !299
  %cond = select i1 %tobool2.not, ptr @traceon_probe_ops, ptr @traceon_count_probe_ops, !dbg !299
  br label %if.end5, !dbg !300

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !301
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 2), align 16, !dbg !301
  %2 = add i64 %gcov_ctr8, 1, !dbg !301
  store i64 %2, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 2), align 16, !dbg !301
  %tobool3.not = icmp eq ptr %param, null, !dbg !301
  %cond4 = select i1 %tobool3.not, ptr @traceoff_probe_ops, ptr @traceoff_count_probe_ops, !dbg !301
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then1
  %ops.0 = phi ptr [ %cond, %if.then1 ], [ %cond4, %if.else ], !dbg !302
  %call6 = tail call fastcc i32 @ftrace_trace_probe_callback(ptr noundef nonnull %tr, ptr noundef nonnull %ops.0, ptr noundef %glob, ptr noundef %param, i32 noundef %enable), !dbg !303
  br label %cleanup, !dbg !304

cleanup:                                          ; preds = %if.end5, %if.then
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -19, %if.then ], !dbg !302
  ret i32 %retval.0, !dbg !305
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ftrace_trace_probe_callback(ptr noundef %tr, ptr noundef %ops, ptr noundef %glob, ptr noundef %param, i32 noundef %enable) unnamed_addr #0 align 64 !dbg !306 {
entry:
  %param.addr = alloca ptr, align 4
  %count = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13, !dbg !307
  %0 = ptrtoint ptr %param.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %param, ptr %param.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #15, !dbg !308
  %1 = ptrtoint ptr %count to i32, !dbg !309
  call void @__asan_store4_noabort(i32 %1), !dbg !309
  store ptr inttoptr (i32 -1 to ptr), ptr %count, align 4, !dbg !309
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable), !dbg !310
  %tobool.not = icmp eq i32 %enable, 0, !dbg !310
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !311

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !312
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.46, align 16, !dbg !312
  %2 = add i64 %gcov_ctr, 1, !dbg !312
  store i64 %2, ptr @__llvm_gcov_ctr.46, align 16, !dbg !312
  br label %cleanup, !dbg !312

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %glob to i32, !dbg !313
  call void @__asan_load1_noabort(i32 %3), !dbg !313
  %4 = load i8, ptr %glob, align 1, !dbg !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %4), !dbg !314
  %cmp = icmp eq i8 %4, 33, !dbg !314
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !313

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !315
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 1), align 8, !dbg !315
  %5 = add i64 %gcov_ctr21, 1, !dbg !315
  store i64 %5, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 1), align 8, !dbg !315
  %add.ptr = getelementptr i8, ptr %glob, i32 1, !dbg !316
  %call = tail call i32 @unregister_ftrace_function_probe_func(ptr noundef %add.ptr, ptr noundef %tr, ptr noundef %ops) #15, !dbg !317
  br label %cleanup, !dbg !318

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq ptr %param, null, !dbg !319
  br i1 %tobool4.not, label %if.then5, label %if.end6, !dbg !320

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13, !dbg !321
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 2), align 16, !dbg !321
  %6 = add i64 %gcov_ctr22, 1, !dbg !321
  store i64 %6, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 2), align 16, !dbg !321
  br label %out_reg, !dbg !321

if.end6:                                          ; preds = %if.end3
  %call7 = call ptr @strsep(ptr noundef nonnull %param.addr, ptr noundef nonnull @.str.5) #15, !dbg !322
  %7 = ptrtoint ptr %call7 to i32, !dbg !323
  call void @__asan_load1_noabort(i32 %7), !dbg !323
  %char0 = load i8, ptr %call7, align 1, !dbg !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0), !dbg !323
  %tobool9.not = icmp eq i8 %char0, 0, !dbg !323
  br i1 %tobool9.not, label %if.then10, label %if.end11, !dbg !324

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13, !dbg !325
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 3), align 8, !dbg !325
  %8 = add i64 %gcov_ctr23, 1, !dbg !325
  store i64 %8, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 3), align 8, !dbg !325
  br label %out_reg, !dbg !325

if.end11:                                         ; preds = %if.end6
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.57, align 8
  %9 = add i64 %gcov_ctr.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.57, align 8
  %call.i = call i32 @_kstrtoul(ptr noundef %call7, i32 noundef 0, ptr noundef nonnull %count) #15, !dbg !326
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !330
  %tobool13.not = icmp eq i32 %call.i, 0, !dbg !330
  br i1 %tobool13.not, label %if.end15, label %if.then14, !dbg !330

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13, !dbg !331
  %gcov_ctr25 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 5), align 8, !dbg !331
  %10 = add i64 %gcov_ctr25, 1, !dbg !331
  store i64 %10, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 5), align 8, !dbg !331
  br label %cleanup, !dbg !332

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13, !dbg !330
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 4), align 16, !dbg !330
  %11 = add i64 %gcov_ctr24, 1, !dbg !330
  store i64 %11, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 4), align 16, !dbg !330
  br label %out_reg, !dbg !330

out_reg:                                          ; preds = %if.end15, %if.then10, %if.then5
  %12 = ptrtoint ptr %count to i32, !dbg !333
  call void @__asan_load4_noabort(i32 %12), !dbg !333
  %13 = load ptr, ptr %count, align 4, !dbg !333
  %call16 = call i32 @register_ftrace_function_probe(ptr noundef %glob, ptr noundef %tr, ptr noundef %ops, ptr noundef %13) #15, !dbg !334
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16), !dbg !335
  %cmp17 = icmp slt i32 %call16, 0, !dbg !335
  br i1 %cmp17, label %cond.true, label %out_reg.cleanup_crit_edge, !dbg !336

out_reg.cleanup_crit_edge:                        ; preds = %out_reg
  call void @__sanitizer_cov_trace_pc() #13, !dbg !336
  br label %cleanup, !dbg !336

cond.true:                                        ; preds = %out_reg
  call void @__sanitizer_cov_trace_pc() #13, !dbg !337
  %gcov_ctr26 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 6), align 16, !dbg !337
  %14 = add i64 %gcov_ctr26, 1, !dbg !337
  store i64 %14, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 6), align 16, !dbg !337
  br label %cleanup, !dbg !336

cleanup:                                          ; preds = %cond.true, %out_reg.cleanup_crit_edge, %if.then14, %if.then2, %if.then
  %retval.0 = phi i32 [ %call, %if.then2 ], [ %call.i, %if.then14 ], [ -22, %if.then ], [ %call16, %cond.true ], [ 0, %out_reg.cleanup_crit_edge ], !dbg !338
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #15, !dbg !339
  ret i32 %retval.0, !dbg !339
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftrace_traceon_count(i32 noundef %ip, i32 noundef %parent_ip, ptr noundef %tr, ptr nocapture noundef readnone %ops, ptr noundef %data) #0 align 64 !dbg !340 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !341
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.47, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.47, align 8
  %call.i = tail call ptr @ftrace_func_mapper_find_ip(ptr noundef %data, i32 noundef %ip) #15, !dbg !342
  %1 = ptrtoint ptr %call.i to i32, !dbg !345
  call void @__asan_load4_noabort(i32 %1), !dbg !345
  %2 = load i32, ptr %call.i, align 4, !dbg !345
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2), !dbg !346
  %cmp.i = icmp slt i32 %2, 1, !dbg !346
  br i1 %cmp.i, label %if.then.i, label %do.end.i, !dbg !347

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !348
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.51, align 16
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.51, align 16
  br label %update_traceon_count.exit, !dbg !349

do.end.i:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !350, !srcloc !351
  %call4.i = tail call zeroext i1 @tracer_tracing_is_on(ptr noundef %tr) #15, !dbg !352
  br i1 %call4.i, label %if.then8.i, label %if.end9.i, !dbg !353

if.then8.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !348
  %gcov_ctr21.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 1), align 8
  %4 = add i64 %gcov_ctr21.i, 1
  store i64 %4, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 1), align 8
  br label %update_traceon_count.exit, !dbg !354

if.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !355
  %gcov_ctr22.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 2), align 16, !dbg !355
  %5 = add i64 %gcov_ctr22.i, 1, !dbg !355
  store i64 %5, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 2), align 16, !dbg !355
  tail call void @tracer_tracing_on(ptr noundef %tr) #15, !dbg !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !357, !srcloc !358
  %sub.i = add nsw i32 %2, -1, !dbg !359
  %6 = ptrtoint ptr %call.i to i32, !dbg !360
  call void @__asan_store4_noabort(i32 %6), !dbg !360
  store i32 %sub.i, ptr %call.i, align 4, !dbg !360
  br label %update_traceon_count.exit, !dbg !361

update_traceon_count.exit:                        ; preds = %if.end9.i, %if.then8.i, %if.then.i
  ret void, !dbg !362
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftrace_count_init(ptr nocapture noundef readnone %ops, ptr nocapture noundef readnone %tr, i32 noundef %ip, ptr noundef %init_data, ptr nocapture noundef %data) #0 align 64 !dbg !363 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !364
  %0 = ptrtoint ptr %data to i32, !dbg !365
  call void @__asan_load4_noabort(i32 %0), !dbg !365
  %1 = load ptr, ptr %data, align 4, !dbg !365
  %tobool.not = icmp eq ptr %1, null, !dbg !366
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge, !dbg !367

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !367
  br label %if.end3, !dbg !367

if.then:                                          ; preds = %entry
  %call = tail call ptr @allocate_ftrace_func_mapper() #15, !dbg !368
  %tobool1.not = icmp eq ptr %call, null, !dbg !369
  br i1 %tobool1.not, label %if.then2, label %if.end, !dbg !370

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13, !dbg !371
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.48, align 16, !dbg !371
  %2 = add i64 %gcov_ctr, 1, !dbg !371
  store i64 %2, ptr @__llvm_gcov_ctr.48, align 16, !dbg !371
  br label %cleanup, !dbg !371

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13, !dbg !372
  %gcov_ctr5 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 1), align 8, !dbg !372
  %3 = add i64 %gcov_ctr5, 1, !dbg !372
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 1), align 8, !dbg !372
  %4 = ptrtoint ptr %data to i32, !dbg !373
  call void @__asan_store4_noabort(i32 %4), !dbg !373
  store ptr %call, ptr %data, align 4, !dbg !373
  br label %if.end3, !dbg !374

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %mapper.0 = phi ptr [ %1, %entry.if.end3_crit_edge ], [ %call, %if.end ], !dbg !375
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 2), align 16, !dbg !376
  %5 = add i64 %gcov_ctr6, 1, !dbg !376
  store i64 %5, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 2), align 16, !dbg !376
  %call4 = tail call i32 @ftrace_func_mapper_add_ip(ptr noundef nonnull %mapper.0, i32 noundef %ip, ptr noundef %init_data) #15, !dbg !377
  br label %cleanup, !dbg !378

cleanup:                                          ; preds = %if.end3, %if.then2
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -12, %if.then2 ], !dbg !375
  ret i32 %retval.0, !dbg !379
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftrace_count_free(ptr nocapture noundef readnone %ops, ptr nocapture noundef readnone %tr, i32 noundef %ip, ptr noundef %data) #0 align 64 !dbg !380 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !381
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ip), !dbg !382
  %tobool.not = icmp eq i32 %ip, 0, !dbg !382
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !383

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !384
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.49, align 16, !dbg !384
  %0 = add i64 %gcov_ctr, 1, !dbg !384
  store i64 %0, ptr @__llvm_gcov_ctr.49, align 16, !dbg !384
  tail call void @free_ftrace_func_mapper(ptr noundef %data, ptr noundef null) #15, !dbg !385
  br label %cleanup, !dbg !386

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !387
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 1), align 8, !dbg !387
  %1 = add i64 %gcov_ctr1, 1, !dbg !387
  store i64 %1, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 1), align 8, !dbg !387
  %call = tail call ptr @ftrace_func_mapper_remove_ip(ptr noundef %data, i32 noundef %ip) #15, !dbg !388
  br label %cleanup, !dbg !389

cleanup:                                          ; preds = %if.end, %if.then
  ret void, !dbg !389
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftrace_traceon_print(ptr noundef %m, i32 noundef %ip, ptr nocapture noundef readnone %ops, ptr noundef %data) #0 align 64 !dbg !390 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !391
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.50, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.50, align 8
  %1 = inttoptr i32 %ip to ptr, !dbg !392
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef nonnull @.str.1) #15, !dbg !395
  %tobool.not.i = icmp eq ptr %data, null, !dbg !396
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %if.end.i, !dbg !396

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !396
  br label %if.else.i, !dbg !396

if.end.i:                                         ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.52, align 16, !dbg !397
  %2 = add i64 %gcov_ctr.i, 1, !dbg !397
  store i64 %2, ptr @__llvm_gcov_ctr.52, align 16, !dbg !397
  %call.i = tail call ptr @ftrace_func_mapper_find_ip(ptr noundef nonnull %data, i32 noundef %ip) #15, !dbg !398
  %tobool1.not.i = icmp eq ptr %call.i, null, !dbg !399
  br i1 %tobool1.not.i, label %if.end.i.if.else.i_crit_edge, label %if.then2.i, !dbg !399

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !399
  br label %if.else.i, !dbg !399

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !400
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 2), align 16, !dbg !400
  %3 = add i64 %gcov_ctr5.i, 1, !dbg !400
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 2), align 16, !dbg !400
  %4 = ptrtoint ptr %call.i to i32, !dbg !401
  call void @__asan_load4_noabort(i32 %4), !dbg !401
  %5 = load i32, ptr %call.i, align 4, !dbg !401
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %5) #15, !dbg !402
  br label %ftrace_probe_print.exit, !dbg !402

if.else.i:                                        ; preds = %if.end.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 1), align 8, !dbg !403
  %6 = add i64 %gcov_ctr4.i, 1, !dbg !403
  store i64 %6, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 1), align 8, !dbg !403
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.4) #15, !dbg !404
  br label %ftrace_probe_print.exit

ftrace_probe_print.exit:                          ; preds = %if.else.i, %if.then2.i
  ret i32 0, !dbg !405
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ftrace_func_mapper_find_ip(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tracer_tracing_is_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracer_tracing_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracer_tracing_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @allocate_ftrace_func_mapper() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ftrace_func_mapper_add_ip(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_ftrace_func_mapper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ftrace_func_mapper_remove_ip(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftrace_traceon(i32 noundef %ip, i32 noundef %parent_ip, ptr noundef %tr, ptr nocapture noundef readnone %ops, ptr nocapture noundef readnone %data) #0 align 64 !dbg !406 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !407
  %call = tail call zeroext i1 @tracer_tracing_is_on(ptr noundef %tr) #15, !dbg !408
  br i1 %call, label %if.then, label %if.end, !dbg !408

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !409
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.53, align 8, !dbg !409
  %0 = add i64 %gcov_ctr, 1, !dbg !409
  store i64 %0, ptr @__llvm_gcov_ctr.53, align 8, !dbg !409
  br label %return, !dbg !409

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !410
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.53, i32 0, i32 1), align 8, !dbg !410
  %1 = add i64 %gcov_ctr1, 1, !dbg !410
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.53, i32 0, i32 1), align 8, !dbg !410
  tail call void @tracer_tracing_on(ptr noundef %tr) #15, !dbg !411
  br label %return, !dbg !412

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !412
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftrace_traceoff_count(i32 noundef %ip, i32 noundef %parent_ip, ptr noundef %tr, ptr nocapture noundef readnone %ops, ptr noundef %data) #0 align 64 !dbg !413 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !414
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.54, align 8
  %call.i = tail call ptr @ftrace_func_mapper_find_ip(ptr noundef %data, i32 noundef %ip) #15, !dbg !415
  %1 = ptrtoint ptr %call.i to i32, !dbg !417
  call void @__asan_load4_noabort(i32 %1), !dbg !417
  %2 = load i32, ptr %call.i, align 4, !dbg !417
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2), !dbg !418
  %cmp.i = icmp slt i32 %2, 1, !dbg !418
  br i1 %cmp.i, label %if.then.i, label %do.end.i, !dbg !419

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !420
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.51, align 16
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.51, align 16
  br label %update_traceon_count.exit, !dbg !421

do.end.i:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !422, !srcloc !351
  %call4.i = tail call zeroext i1 @tracer_tracing_is_on(ptr noundef %tr) #15, !dbg !423
  br i1 %call4.i, label %if.end9.i, label %if.then8.i, !dbg !424

if.then8.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !420
  %gcov_ctr21.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 1), align 8
  %4 = add i64 %gcov_ctr21.i, 1
  store i64 %4, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 1), align 8
  br label %update_traceon_count.exit, !dbg !425

if.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !426
  %gcov_ctr23.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 3), align 8, !dbg !426
  %5 = add i64 %gcov_ctr23.i, 1, !dbg !426
  store i64 %5, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 3), align 8, !dbg !426
  tail call void @tracer_tracing_off(ptr noundef %tr) #15, !dbg !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !428, !srcloc !358
  %sub.i = add nsw i32 %2, -1, !dbg !429
  %6 = ptrtoint ptr %call.i to i32, !dbg !430
  call void @__asan_store4_noabort(i32 %6), !dbg !430
  store i32 %sub.i, ptr %call.i, align 4, !dbg !430
  br label %update_traceon_count.exit, !dbg !431

update_traceon_count.exit:                        ; preds = %if.end9.i, %if.then8.i, %if.then.i
  ret void, !dbg !432
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftrace_traceoff_print(ptr noundef %m, i32 noundef %ip, ptr nocapture noundef readnone %ops, ptr noundef %data) #0 align 64 !dbg !433 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !434
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.55, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.55, align 8
  %1 = inttoptr i32 %ip to ptr, !dbg !435
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef nonnull @.str) #15, !dbg !437
  %tobool.not.i = icmp eq ptr %data, null, !dbg !438
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %if.end.i, !dbg !438

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !438
  br label %if.else.i, !dbg !438

if.end.i:                                         ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.52, align 16, !dbg !439
  %2 = add i64 %gcov_ctr.i, 1, !dbg !439
  store i64 %2, ptr @__llvm_gcov_ctr.52, align 16, !dbg !439
  %call.i = tail call ptr @ftrace_func_mapper_find_ip(ptr noundef nonnull %data, i32 noundef %ip) #15, !dbg !440
  %tobool1.not.i = icmp eq ptr %call.i, null, !dbg !441
  br i1 %tobool1.not.i, label %if.end.i.if.else.i_crit_edge, label %if.then2.i, !dbg !441

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !441
  br label %if.else.i, !dbg !441

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !442
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 2), align 16, !dbg !442
  %3 = add i64 %gcov_ctr5.i, 1, !dbg !442
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 2), align 16, !dbg !442
  %4 = ptrtoint ptr %call.i to i32, !dbg !443
  call void @__asan_load4_noabort(i32 %4), !dbg !443
  %5 = load i32, ptr %call.i, align 4, !dbg !443
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %5) #15, !dbg !444
  br label %ftrace_probe_print.exit, !dbg !444

if.else.i:                                        ; preds = %if.end.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 1), align 8, !dbg !445
  %6 = add i64 %gcov_ctr4.i, 1, !dbg !445
  store i64 %6, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 1), align 8, !dbg !445
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.4) #15, !dbg !446
  br label %ftrace_probe_print.exit

ftrace_probe_print.exit:                          ; preds = %if.else.i, %if.then2.i
  ret i32 0, !dbg !447
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftrace_traceoff(i32 noundef %ip, i32 noundef %parent_ip, ptr noundef %tr, ptr nocapture noundef readnone %ops, ptr nocapture noundef readnone %data) #0 align 64 !dbg !448 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !449
  %call = tail call zeroext i1 @tracer_tracing_is_on(ptr noundef %tr) #15, !dbg !450
  br i1 %call, label %if.end, label %if.then, !dbg !451

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !452
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.56, align 8, !dbg !452
  %0 = add i64 %gcov_ctr, 1, !dbg !452
  store i64 %0, ptr @__llvm_gcov_ctr.56, align 8, !dbg !452
  br label %return, !dbg !452

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !453
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.56, i32 0, i32 1), align 8, !dbg !453
  %1 = add i64 %gcov_ctr1, 1, !dbg !453
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.56, i32 0, i32 1), align 8, !dbg !453
  tail call void @tracer_tracing_off(ptr noundef %tr) #15, !dbg !454
  br label %return, !dbg !455

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !455
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_ftrace_function_probe_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_ftrace_function_probe(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftrace_stacktrace_callback(ptr noundef %tr, ptr nocapture noundef readnone %hash, ptr noundef %glob, ptr nocapture noundef readnone %cmd, ptr noundef %param, i32 noundef %enable) #0 align 64 !dbg !456 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !457
  %tobool.not = icmp eq ptr %tr, null, !dbg !458
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !459

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !460
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.58, align 8, !dbg !460
  %0 = add i64 %gcov_ctr, 1, !dbg !460
  store i64 %0, ptr @__llvm_gcov_ctr.58, align 8, !dbg !460
  br label %cleanup, !dbg !460

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !461
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 1), align 8, !dbg !461
  %1 = add i64 %gcov_ctr2, 1, !dbg !461
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 1), align 8, !dbg !461
  %tobool1.not = icmp eq ptr %param, null, !dbg !461
  %cond = select i1 %tobool1.not, ptr @stacktrace_probe_ops, ptr @stacktrace_count_probe_ops, !dbg !461
  %call = tail call fastcc i32 @ftrace_trace_probe_callback(ptr noundef nonnull %tr, ptr noundef nonnull %cond, ptr noundef %glob, ptr noundef %param, i32 noundef %enable), !dbg !462
  br label %cleanup, !dbg !463

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %if.then ], !dbg !464
  ret i32 %retval.0, !dbg !465
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftrace_stacktrace_count(i32 noundef %ip, i32 noundef %parent_ip, ptr noundef %tr, ptr nocapture noundef readnone %ops, ptr noundef %data) #0 align 64 !dbg !466 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !467
  %call = tail call i32 @tracing_is_on() #15, !dbg !468
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !468
  %tobool.not = icmp eq i32 %call, 0, !dbg !468
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !469

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !470
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.59, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.59, align 16
  br label %cleanup, !dbg !471

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %data, null, !dbg !472
  br i1 %tobool1.not, label %if.then2, label %if.end3, !dbg !473

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !474
  %gcov_ctr36 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 1), align 8, !dbg !474
  %1 = add i64 %gcov_ctr36, 1, !dbg !474
  store i64 %1, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 1), align 8, !dbg !474
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.61, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.61, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.28, align 8, !dbg !475
  %3 = add i64 %gcov_ctr.i.i, 1, !dbg !475
  store i64 %3, ptr @__llvm_gcov_ctr.28, align 8, !dbg !475
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %4 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.38, align 8
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !dbg !479, !srcloc !185
  %gcov_ctr.i2.i.i = load i64, ptr @__llvm_gcov_ctr.39, align 8
  %6 = add i64 %gcov_ctr.i2.i.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.39, align 8
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %7 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.40, align 8
  %and.i.i.i.i = lshr i32 %5, 7, !dbg !481
  %and.i.lobit.i.i.i = and i32 %and.i.i.i.i, 1, !dbg !481
  %call2.i.i.i = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %and.i.lobit.i.i.i) #15, !dbg !483
  tail call void @__trace_stack(ptr noundef %tr, i32 noundef %call2.i.i.i, i32 noundef 5) #15, !dbg !484
  br label %cleanup, !dbg !485

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @ftrace_func_mapper_find_ip(ptr noundef nonnull %data, i32 noundef %ip) #15, !dbg !486
  br label %do.body, !dbg !487

do.body:                                          ; preds = %if.end29.do.body_crit_edge, %if.end3
  %8 = ptrtoint ptr %call4 to i32, !dbg !488
  call void @__asan_load4_noabort(i32 %8), !dbg !488
  %9 = load i32, ptr %call4, align 4, !dbg !488
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9), !dbg !489
  %tobool5.not = icmp eq i32 %9, 0, !dbg !489
  br i1 %tobool5.not, label %if.then6, label %if.end7, !dbg !490

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13, !dbg !470
  %gcov_ctr37 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 2), align 16
  %10 = add i64 %gcov_ctr37, 1
  store i64 %10, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 2), align 16
  br label %cleanup, !dbg !491

if.end7:                                          ; preds = %do.body
  %sub = add i32 %9, -1, !dbg !492
  %gcov_ctr.i53 = load i64, ptr @__llvm_gcov_ctr.62, align 8
  %11 = add i64 %gcov_ctr.i53, 1
  store i64 %11, ptr @__llvm_gcov_ctr.62, align 8
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call4, i32 noundef 4) #15, !dbg !493
  %gcov_ctr.i.i54 = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %12 = add i64 %gcov_ctr.i.i54, 1
  store i64 %12, ptr @__llvm_gcov_ctr.42, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !496, !srcloc !497
  tail call void @llvm.prefetch.p0(ptr %call4, i32 1, i32 3, i32 1) #15, !dbg !498
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end7
  %gcov_ctr.i63 = load i64, ptr @__llvm_gcov_ctr.63, align 16, !dbg !502
  %13 = add i64 %gcov_ctr.i63, 1, !dbg !502
  store i64 %13, ptr @__llvm_gcov_ctr.63, align 16, !dbg !502
  %14 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %call4, i32 %9, i32 %sub) #15, !dbg !503, !srcloc !504
  %asmresult.i = extractvalue { i32, i32 } %14, 0, !dbg !503
  %tobool.not.i = icmp eq i32 %asmresult.i, 0, !dbg !505
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge, !dbg !505, !llvm.loop !506

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !505
  br label %do.body.i, !dbg !505

__cmpxchg.exit:                                   ; preds = %do.body.i
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 1), align 8, !dbg !509
  %15 = add i64 %gcov_ctr2.i, 1, !dbg !509
  store i64 %15, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 1), align 8, !dbg !509
  %asmresult1.i = extractvalue { i32, i32 } %14, 1, !dbg !503
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !496, !srcloc !510
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult1.i, i32 %9), !dbg !511
  %cmp = icmp eq i32 %asmresult1.i, %9, !dbg !511
  br i1 %cmp, label %if.then24, label %__cmpxchg.exit.if.end25_crit_edge, !dbg !512

__cmpxchg.exit.if.end25_crit_edge:                ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #13, !dbg !512
  br label %if.end25, !dbg !512

if.then24:                                        ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #13, !dbg !513
  %gcov_ctr38 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 3), align 8, !dbg !513
  %16 = add i64 %gcov_ctr38, 1, !dbg !513
  store i64 %16, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 3), align 8, !dbg !513
  %gcov_ctr.i55 = load i64, ptr @__llvm_gcov_ctr.61, align 8
  %17 = add i64 %gcov_ctr.i55, 1
  store i64 %17, ptr @__llvm_gcov_ctr.61, align 8
  %gcov_ctr.i.i56 = load i64, ptr @__llvm_gcov_ctr.28, align 8, !dbg !514
  %18 = add i64 %gcov_ctr.i.i56, 1, !dbg !514
  store i64 %18, ptr @__llvm_gcov_ctr.28, align 8, !dbg !514
  %gcov_ctr.i.i.i57 = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %19 = add i64 %gcov_ctr.i.i.i57, 1
  store i64 %19, ptr @__llvm_gcov_ctr.38, align 8
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !dbg !517, !srcloc !185
  %gcov_ctr.i2.i.i58 = load i64, ptr @__llvm_gcov_ctr.39, align 8
  %21 = add i64 %gcov_ctr.i2.i.i58, 1
  store i64 %21, ptr @__llvm_gcov_ctr.39, align 8
  %gcov_ctr.i.i.i.i59 = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %22 = add i64 %gcov_ctr.i.i.i.i59, 1
  store i64 %22, ptr @__llvm_gcov_ctr.40, align 8
  %and.i.i.i.i60 = lshr i32 %20, 7, !dbg !519
  %and.i.lobit.i.i.i61 = and i32 %and.i.i.i.i60, 1, !dbg !519
  %call2.i.i.i62 = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %and.i.lobit.i.i.i61) #15, !dbg !521
  tail call void @__trace_stack(ptr noundef %tr, i32 noundef %call2.i.i.i62, i32 noundef 5) #15, !dbg !522
  br label %if.end25, !dbg !523

if.end25:                                         ; preds = %if.then24, %__cmpxchg.exit.if.end25_crit_edge
  %call26 = tail call i32 @tracing_is_on() #15, !dbg !524
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26), !dbg !524
  %tobool27.not = icmp eq i32 %call26, 0, !dbg !524
  br i1 %tobool27.not, label %if.then28, label %if.end29, !dbg !525

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13, !dbg !470
  %gcov_ctr40 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 5), align 8
  %23 = add i64 %gcov_ctr40, 1
  store i64 %23, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 5), align 8
  br label %cleanup, !dbg !526

if.end29:                                         ; preds = %if.end25
  %gcov_ctr39 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 4), align 16, !dbg !527
  %24 = add i64 %gcov_ctr39, 1, !dbg !527
  store i64 %24, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 4), align 16, !dbg !527
  br i1 %cmp, label %do.end32, label %if.end29.do.body_crit_edge, !dbg !527, !llvm.loop !528

if.end29.do.body_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13, !dbg !527
  br label %do.body, !dbg !527

do.end32:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13, !dbg !530
  %gcov_ctr41 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 6), align 16, !dbg !530
  %25 = add i64 %gcov_ctr41, 1, !dbg !530
  store i64 %25, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 6), align 16, !dbg !530
  br label %cleanup, !dbg !530

cleanup:                                          ; preds = %do.end32, %if.then28, %if.then6, %if.then2, %if.then
  ret void, !dbg !530
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftrace_stacktrace_print(ptr noundef %m, i32 noundef %ip, ptr nocapture noundef readnone %ops, ptr noundef %data) #0 align 64 !dbg !531 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !532
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.60, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.60, align 8
  %1 = inttoptr i32 %ip to ptr, !dbg !533
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef nonnull @.str.6) #15, !dbg !535
  %tobool.not.i = icmp eq ptr %data, null, !dbg !536
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %if.end.i, !dbg !536

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !536
  br label %if.else.i, !dbg !536

if.end.i:                                         ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.52, align 16, !dbg !537
  %2 = add i64 %gcov_ctr.i, 1, !dbg !537
  store i64 %2, ptr @__llvm_gcov_ctr.52, align 16, !dbg !537
  %call.i = tail call ptr @ftrace_func_mapper_find_ip(ptr noundef nonnull %data, i32 noundef %ip) #15, !dbg !538
  %tobool1.not.i = icmp eq ptr %call.i, null, !dbg !539
  br i1 %tobool1.not.i, label %if.end.i.if.else.i_crit_edge, label %if.then2.i, !dbg !539

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !539
  br label %if.else.i, !dbg !539

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !540
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 2), align 16, !dbg !540
  %3 = add i64 %gcov_ctr5.i, 1, !dbg !540
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 2), align 16, !dbg !540
  %4 = ptrtoint ptr %call.i to i32, !dbg !541
  call void @__asan_load4_noabort(i32 %4), !dbg !541
  %5 = load i32, ptr %call.i, align 4, !dbg !541
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %5) #15, !dbg !542
  br label %ftrace_probe_print.exit, !dbg !542

if.else.i:                                        ; preds = %if.end.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 1), align 8, !dbg !543
  %6 = add i64 %gcov_ctr4.i, 1, !dbg !543
  store i64 %6, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 1), align 8, !dbg !543
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.4) #15, !dbg !544
  br label %ftrace_probe_print.exit

ftrace_probe_print.exit:                          ; preds = %if.else.i, %if.then2.i
  ret i32 0, !dbg !545
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_is_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__trace_stack(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftrace_stacktrace(i32 noundef %ip, i32 noundef %parent_ip, ptr noundef %tr, ptr nocapture noundef readnone %ops, ptr nocapture noundef readnone %data) #0 align 64 !dbg !546 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !547
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.64, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.64, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.61, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.61, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.28, align 8, !dbg !548
  %2 = add i64 %gcov_ctr.i.i, 1, !dbg !548
  store i64 %2, ptr @__llvm_gcov_ctr.28, align 8, !dbg !548
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %3 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.38, align 8
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !dbg !551, !srcloc !185
  %gcov_ctr.i2.i.i = load i64, ptr @__llvm_gcov_ctr.39, align 8
  %5 = add i64 %gcov_ctr.i2.i.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.39, align 8
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %6 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.40, align 8
  %and.i.i.i.i = lshr i32 %4, 7, !dbg !553
  %and.i.lobit.i.i.i = and i32 %and.i.i.i.i, 1, !dbg !553
  %call2.i.i.i = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %and.i.lobit.i.i.i) #15, !dbg !555
  tail call void @__trace_stack(ptr noundef %tr, i32 noundef %call2.i.i.i, i32 noundef 5) #15, !dbg !556
  ret void, !dbg !557
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftrace_dump_callback(ptr noundef %tr, ptr nocapture noundef readnone %hash, ptr noundef %glob, ptr nocapture noundef readnone %cmd, ptr nocapture noundef readnone %param, i32 noundef %enable) #0 align 64 !dbg !558 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !559
  %tobool.not = icmp eq ptr %tr, null, !dbg !560
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !561

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !562
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.65, align 8, !dbg !562
  %0 = add i64 %gcov_ctr, 1, !dbg !562
  store i64 %0, ptr @__llvm_gcov_ctr.65, align 8, !dbg !562
  br label %cleanup, !dbg !562

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !563
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 1), align 8, !dbg !563
  %1 = add i64 %gcov_ctr1, 1, !dbg !563
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 1), align 8, !dbg !563
  %call = tail call fastcc i32 @ftrace_trace_probe_callback(ptr noundef nonnull %tr, ptr noundef nonnull @dump_probe_ops, ptr noundef %glob, ptr noundef nonnull @.str.8, i32 noundef %enable), !dbg !564
  br label %cleanup, !dbg !565

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %if.then ], !dbg !566
  ret i32 %retval.0, !dbg !567
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftrace_dump_probe(i32 noundef %ip, i32 noundef %parent_ip, ptr nocapture noundef readnone %tr, ptr nocapture noundef readnone %ops, ptr noundef %data) #0 align 64 !dbg !568 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !569
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.66, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.66, align 8
  %tobool.not.i = icmp eq ptr %data, null, !dbg !570
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i, !dbg !570

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !570
  br label %if.then, !dbg !570

if.end.i:                                         ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.68, align 16, !dbg !573
  %1 = add i64 %gcov_ctr.i, 1, !dbg !573
  store i64 %1, ptr @__llvm_gcov_ctr.68, align 16, !dbg !573
  %call.i = tail call ptr @ftrace_func_mapper_find_ip(ptr noundef nonnull %data, i32 noundef %ip) #15, !dbg !574
  %tobool1.not.i = icmp eq ptr %call.i, null, !dbg !575
  br i1 %tobool1.not.i, label %if.end.i.if.then_crit_edge, label %if.then2.i, !dbg !575

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !575
  br label %if.then, !dbg !575

if.then2.i:                                       ; preds = %if.end.i
  %2 = ptrtoint ptr %call.i to i32, !dbg !576
  call void @__asan_load4_noabort(i32 %2), !dbg !576
  %3 = load i32, ptr %call.i, align 4, !dbg !576
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3), !dbg !577
  %cmp.i = icmp slt i32 %3, 1, !dbg !577
  br i1 %cmp.i, label %update_count.exit, label %if.end4.i, !dbg !576

if.end4.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !578
  %gcov_ctr8.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.68, i32 0, i32 2), align 16, !dbg !578
  %4 = add i64 %gcov_ctr8.i, 1, !dbg !578
  store i64 %4, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.68, i32 0, i32 2), align 16, !dbg !578
  %5 = ptrtoint ptr %call.i to i32, !dbg !579
  call void @__asan_load4_noabort(i32 %5), !dbg !579
  %6 = load i32, ptr %call.i, align 4, !dbg !579
  %dec.i = add i32 %6, -1, !dbg !579
  store i32 %dec.i, ptr %call.i, align 4, !dbg !579
  br label %if.then, !dbg !580

update_count.exit:                                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !581
  %gcov_ctr9.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.68, i32 0, i32 1), align 8, !dbg !581
  %7 = add i64 %gcov_ctr9.i, 1, !dbg !581
  store i64 %7, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.68, i32 0, i32 1), align 8, !dbg !581
  br label %if.end, !dbg !582

if.then:                                          ; preds = %if.end4.i, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %gcov_ctr9.i4 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.68, i32 0, i32 3), align 8, !dbg !581
  %8 = add i64 %gcov_ctr9.i4, 1, !dbg !581
  store i64 %8, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.68, i32 0, i32 3), align 8, !dbg !581
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 1), align 8, !dbg !583
  %9 = add i64 %gcov_ctr1, 1, !dbg !583
  store i64 %9, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 1), align 8, !dbg !583
  tail call void @ftrace_dump(i32 noundef 1) #15, !dbg !583
  br label %if.end, !dbg !583

if.end:                                           ; preds = %if.then, %update_count.exit
  ret void, !dbg !584
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftrace_dump_print(ptr noundef %m, i32 noundef %ip, ptr nocapture noundef readnone %ops, ptr noundef %data) #0 align 64 !dbg !585 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !586
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.67, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.67, align 8
  %1 = inttoptr i32 %ip to ptr, !dbg !587
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef nonnull @.str.7) #15, !dbg !589
  %tobool.not.i = icmp eq ptr %data, null, !dbg !590
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %if.end.i, !dbg !590

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !590
  br label %if.else.i, !dbg !590

if.end.i:                                         ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.52, align 16, !dbg !591
  %2 = add i64 %gcov_ctr.i, 1, !dbg !591
  store i64 %2, ptr @__llvm_gcov_ctr.52, align 16, !dbg !591
  %call.i = tail call ptr @ftrace_func_mapper_find_ip(ptr noundef nonnull %data, i32 noundef %ip) #15, !dbg !592
  %tobool1.not.i = icmp eq ptr %call.i, null, !dbg !593
  br i1 %tobool1.not.i, label %if.end.i.if.else.i_crit_edge, label %if.then2.i, !dbg !593

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !593
  br label %if.else.i, !dbg !593

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !594
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 2), align 16, !dbg !594
  %3 = add i64 %gcov_ctr5.i, 1, !dbg !594
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 2), align 16, !dbg !594
  %4 = ptrtoint ptr %call.i to i32, !dbg !595
  call void @__asan_load4_noabort(i32 %4), !dbg !595
  %5 = load i32, ptr %call.i, align 4, !dbg !595
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %5) #15, !dbg !596
  br label %ftrace_probe_print.exit, !dbg !596

if.else.i:                                        ; preds = %if.end.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 1), align 8, !dbg !597
  %6 = add i64 %gcov_ctr4.i, 1, !dbg !597
  store i64 %6, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 1), align 8, !dbg !597
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.4) #15, !dbg !598
  br label %ftrace_probe_print.exit

ftrace_probe_print.exit:                          ; preds = %if.else.i, %if.then2.i
  ret i32 0, !dbg !599
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_dump(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftrace_cpudump_callback(ptr noundef %tr, ptr nocapture noundef readnone %hash, ptr noundef %glob, ptr nocapture noundef readnone %cmd, ptr nocapture noundef readnone %param, i32 noundef %enable) #0 align 64 !dbg !600 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !601
  %tobool.not = icmp eq ptr %tr, null, !dbg !602
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !603

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !604
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.69, align 8, !dbg !604
  %0 = add i64 %gcov_ctr, 1, !dbg !604
  store i64 %0, ptr @__llvm_gcov_ctr.69, align 8, !dbg !604
  br label %cleanup, !dbg !604

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !605
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 1), align 8, !dbg !605
  %1 = add i64 %gcov_ctr1, 1, !dbg !605
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 1), align 8, !dbg !605
  %call = tail call fastcc i32 @ftrace_trace_probe_callback(ptr noundef nonnull %tr, ptr noundef nonnull @cpudump_probe_ops, ptr noundef %glob, ptr noundef nonnull @.str.8, i32 noundef %enable), !dbg !606
  br label %cleanup, !dbg !607

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %if.then ], !dbg !608
  ret i32 %retval.0, !dbg !609
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftrace_cpudump_probe(i32 noundef %ip, i32 noundef %parent_ip, ptr nocapture noundef readnone %tr, ptr nocapture noundef readnone %ops, ptr noundef %data) #0 align 64 !dbg !610 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !611
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.70, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.70, align 8
  %tobool.not.i = icmp eq ptr %data, null, !dbg !612
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i, !dbg !612

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !612
  br label %if.then, !dbg !612

if.end.i:                                         ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.68, align 16, !dbg !614
  %1 = add i64 %gcov_ctr.i, 1, !dbg !614
  store i64 %1, ptr @__llvm_gcov_ctr.68, align 16, !dbg !614
  %call.i = tail call ptr @ftrace_func_mapper_find_ip(ptr noundef nonnull %data, i32 noundef %ip) #15, !dbg !615
  %tobool1.not.i = icmp eq ptr %call.i, null, !dbg !616
  br i1 %tobool1.not.i, label %if.end.i.if.then_crit_edge, label %if.then2.i, !dbg !616

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !616
  br label %if.then, !dbg !616

if.then2.i:                                       ; preds = %if.end.i
  %2 = ptrtoint ptr %call.i to i32, !dbg !617
  call void @__asan_load4_noabort(i32 %2), !dbg !617
  %3 = load i32, ptr %call.i, align 4, !dbg !617
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3), !dbg !618
  %cmp.i = icmp slt i32 %3, 1, !dbg !618
  br i1 %cmp.i, label %update_count.exit, label %if.end4.i, !dbg !617

if.end4.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !619
  %gcov_ctr8.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.68, i32 0, i32 2), align 16, !dbg !619
  %4 = add i64 %gcov_ctr8.i, 1, !dbg !619
  store i64 %4, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.68, i32 0, i32 2), align 16, !dbg !619
  %5 = ptrtoint ptr %call.i to i32, !dbg !620
  call void @__asan_load4_noabort(i32 %5), !dbg !620
  %6 = load i32, ptr %call.i, align 4, !dbg !620
  %dec.i = add i32 %6, -1, !dbg !620
  store i32 %dec.i, ptr %call.i, align 4, !dbg !620
  br label %if.then, !dbg !621

update_count.exit:                                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !622
  %gcov_ctr9.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.68, i32 0, i32 1), align 8, !dbg !622
  %7 = add i64 %gcov_ctr9.i, 1, !dbg !622
  store i64 %7, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.68, i32 0, i32 1), align 8, !dbg !622
  br label %if.end, !dbg !623

if.then:                                          ; preds = %if.end4.i, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %gcov_ctr9.i4 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.68, i32 0, i32 3), align 8, !dbg !622
  %8 = add i64 %gcov_ctr9.i4, 1, !dbg !622
  store i64 %8, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.68, i32 0, i32 3), align 8, !dbg !622
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 1), align 8, !dbg !624
  %9 = add i64 %gcov_ctr1, 1, !dbg !624
  store i64 %9, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 1), align 8, !dbg !624
  tail call void @ftrace_dump(i32 noundef 2) #15, !dbg !624
  br label %if.end, !dbg !624

if.end:                                           ; preds = %if.then, %update_count.exit
  ret void, !dbg !625
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftrace_cpudump_print(ptr noundef %m, i32 noundef %ip, ptr nocapture noundef readnone %ops, ptr noundef %data) #0 align 64 !dbg !626 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !627
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.71, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.71, align 8
  %1 = inttoptr i32 %ip to ptr, !dbg !628
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef nonnull @.str.9) #15, !dbg !630
  %tobool.not.i = icmp eq ptr %data, null, !dbg !631
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %if.end.i, !dbg !631

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !631
  br label %if.else.i, !dbg !631

if.end.i:                                         ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.52, align 16, !dbg !632
  %2 = add i64 %gcov_ctr.i, 1, !dbg !632
  store i64 %2, ptr @__llvm_gcov_ctr.52, align 16, !dbg !632
  %call.i = tail call ptr @ftrace_func_mapper_find_ip(ptr noundef nonnull %data, i32 noundef %ip) #15, !dbg !633
  %tobool1.not.i = icmp eq ptr %call.i, null, !dbg !634
  br i1 %tobool1.not.i, label %if.end.i.if.else.i_crit_edge, label %if.then2.i, !dbg !634

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !634
  br label %if.else.i, !dbg !634

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !635
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 2), align 16, !dbg !635
  %3 = add i64 %gcov_ctr5.i, 1, !dbg !635
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 2), align 16, !dbg !635
  %4 = ptrtoint ptr %call.i to i32, !dbg !636
  call void @__asan_load4_noabort(i32 %4), !dbg !636
  %5 = load i32, ptr %call.i, align 4, !dbg !636
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %5) #15, !dbg !637
  br label %ftrace_probe_print.exit, !dbg !637

if.else.i:                                        ; preds = %if.end.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 1), align 8, !dbg !638
  %6 = add i64 %gcov_ctr4.i, 1, !dbg !638
  store i64 %6, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 1), align 8, !dbg !638
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.4) #15, !dbg !639
  br label %ftrace_probe_print.exit

ftrace_probe_print.exit:                          ; preds = %if.else.i, %if.then2.i
  ret i32 0, !dbg !640
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @function_trace_init(ptr noundef %tr) #0 align 64 !dbg !641 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !642
  %ops = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 40, !dbg !643
  %0 = ptrtoint ptr %ops to i32, !dbg !643
  call void @__asan_load4_noabort(i32 %0), !dbg !643
  %1 = load ptr, ptr %ops, align 4, !dbg !643
  %tobool.not = icmp eq ptr %1, null, !dbg !644
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !645

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !646
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.72, align 16, !dbg !646
  %2 = add i64 %gcov_ctr, 1, !dbg !646
  store i64 %2, ptr @__llvm_gcov_ctr.72, align 16, !dbg !646
  br label %cleanup, !dbg !646

if.end:                                           ; preds = %entry
  %3 = load i32, ptr @func_flags, align 4, !dbg !647
  %and.i = and i32 %3, 3, !dbg !648
  %4 = zext i32 %and.i to i64, !dbg !651
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values), !dbg !651
  switch i32 %and.i, label %entry.unreachabledefault.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
  ], !dbg !651

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !652
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.76, align 16, !dbg !652
  %5 = add i64 %gcov_ctr.i, 1, !dbg !652
  store i64 %5, ptr @__llvm_gcov_ctr.76, align 16, !dbg !652
  br label %if.end3, !dbg !652

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !653
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 1), align 8, !dbg !653
  %6 = add i64 %gcov_ctr4.i, 1, !dbg !653
  store i64 %6, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 1), align 8, !dbg !653
  br label %if.end3, !dbg !653

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !654
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 2), align 16, !dbg !654
  %7 = add i64 %gcov_ctr5.i, 1, !dbg !654
  store i64 %7, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 2), align 16, !dbg !654
  br label %if.end3, !dbg !654

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !655
  %gcov_ctr6.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 3), align 8, !dbg !655
  %8 = add i64 %gcov_ctr6.i, 1, !dbg !655
  store i64 %8, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 3), align 8, !dbg !655
  br label %if.end3, !dbg !655

entry.unreachabledefault.i:                       ; preds = %if.end
  unreachable

if.end3:                                          ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ @function_stack_no_repeats_trace_call, %sw.bb3.i ], [ @function_no_repeats_trace_call, %sw.bb2.i ], [ @function_stack_trace_call, %sw.bb1.i ], [ @function_trace_call, %sw.bb.i ], !dbg !656
  %last_func_repeats.i = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 50, !dbg !657
  %9 = ptrtoint ptr %last_func_repeats.i to i32, !dbg !657
  call void @__asan_load4_noabort(i32 %9), !dbg !657
  %10 = load ptr, ptr %last_func_repeats.i, align 4, !dbg !657
  %tobool.not.i = icmp eq ptr %10, null, !dbg !660
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end3.if.end6_crit_edge, !dbg !661

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13, !dbg !661
  br label %if.end6, !dbg !661

land.lhs.true.i:                                  ; preds = %if.end3
  %gcov_ctr.i17 = load i64, ptr @__llvm_gcov_ctr.77, align 16, !dbg !662
  %11 = add i64 %gcov_ctr.i17, 1, !dbg !662
  store i64 %11, ptr @__llvm_gcov_ctr.77, align 16, !dbg !662
  %and.i18 = and i32 %3, 2, !dbg !663
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18), !dbg !663
  %tobool1.not.i = icmp eq i32 %and.i18, 0, !dbg !663
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end6_crit_edge, label %if.then.i, !dbg !664

land.lhs.true.i.if.end6_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !664
  br label %if.end6, !dbg !664

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i = tail call noalias ptr @__alloc_percpu(i32 noundef 24, i32 noundef 8) #18, !dbg !665
  %12 = ptrtoint ptr %last_func_repeats.i to i32, !dbg !666
  call void @__asan_store4_noabort(i32 %12), !dbg !666
  store ptr %call.i, ptr %last_func_repeats.i, align 4, !dbg !666
  %tobool4.not.i = icmp eq ptr %call.i, null, !dbg !667
  br i1 %tobool4.not.i, label %if.then5, label %if.end.i, !dbg !668

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !669
  %gcov_ctr8.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 2), align 16, !dbg !669
  %13 = add i64 %gcov_ctr8.i, 1, !dbg !669
  store i64 %13, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 2), align 16, !dbg !669
  br label %if.end6, !dbg !669

if.then5:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !670
  %gcov_ctr9.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 1), align 8, !dbg !670
  %14 = add i64 %gcov_ctr9.i, 1, !dbg !670
  store i64 %14, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 1), align 8, !dbg !670
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 2), align 16, !dbg !671
  %15 = add i64 %gcov_ctr10, 1, !dbg !671
  store i64 %15, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 2), align 16, !dbg !671
  br label %cleanup, !dbg !671

if.end6:                                          ; preds = %if.end.i, %land.lhs.true.i.if.end6_crit_edge, %if.end3.if.end6_crit_edge
  %gcov_ctr9.i26 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 3), align 8, !dbg !670
  %16 = add i64 %gcov_ctr9.i26, 1, !dbg !670
  store i64 %16, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 3), align 8, !dbg !670
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 3), align 8, !dbg !672
  %17 = add i64 %gcov_ctr11, 1, !dbg !672
  store i64 %17, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 3), align 8, !dbg !672
  tail call void @ftrace_init_array_ops(ptr noundef %tr, ptr noundef nonnull %retval.0.i) #15, !dbg !673
  %gcov_ctr.i20 = load i64, ptr @__llvm_gcov_ctr.29, align 8, !dbg !674
  %18 = add i64 %gcov_ctr.i20, 1, !dbg !674
  store i64 %18, ptr @__llvm_gcov_ctr.29, align 8, !dbg !674
  %19 = tail call i32 @llvm.read_register.i32(metadata !2) #15, !dbg !674
  %and.i21 = and i32 %19, -16384, !dbg !676
  %20 = inttoptr i32 %and.i21 to ptr, !dbg !677
  %cpu = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3, !dbg !678
  %21 = ptrtoint ptr %cpu to i32, !dbg !678
  call void @__asan_load4_noabort(i32 %21), !dbg !678
  %22 = load i32, ptr %cpu, align 4, !dbg !678
  %cpu8 = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 2, i32 4, !dbg !679
  %23 = ptrtoint ptr %cpu8 to i32, !dbg !680
  call void @__asan_store4_noabort(i32 %23), !dbg !680
  store i32 %22, ptr %cpu8, align 8, !dbg !680
  tail call void @tracing_start_cmdline_record() #15, !dbg !681
  %gcov_ctr.i22 = load i64, ptr @__llvm_gcov_ctr.78, align 8
  %24 = add i64 %gcov_ctr.i22, 1
  store i64 %24, ptr @__llvm_gcov_ctr.78, align 8
  %function_enabled.i = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 46, !dbg !682
  %25 = ptrtoint ptr %function_enabled.i to i32, !dbg !685
  call void @__asan_store4_noabort(i32 %25), !dbg !685
  store i32 0, ptr %function_enabled.i, align 8, !dbg !685
  %26 = ptrtoint ptr %ops to i32, !dbg !686
  call void @__asan_load4_noabort(i32 %26), !dbg !686
  %27 = load ptr, ptr %ops, align 4, !dbg !686
  %call.i23 = tail call i32 @register_ftrace_function(ptr noundef %27) #15, !dbg !687
  %28 = ptrtoint ptr %function_enabled.i to i32, !dbg !688
  call void @__asan_store4_noabort(i32 %28), !dbg !688
  store i32 1, ptr %function_enabled.i, align 8, !dbg !688
  br label %cleanup, !dbg !689

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %if.then5 ], [ -12, %if.then ], !dbg !690
  ret i32 %retval.0, !dbg !691
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @function_trace_reset(ptr noundef %tr) #0 align 64 !dbg !692 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !693
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.73, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.73, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.95, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.95, align 8
  %function_enabled.i = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 46, !dbg !694
  %2 = ptrtoint ptr %function_enabled.i to i32, !dbg !697
  call void @__asan_store4_noabort(i32 %2), !dbg !697
  store i32 0, ptr %function_enabled.i, align 8, !dbg !697
  %ops.i = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 40, !dbg !698
  %3 = ptrtoint ptr %ops.i to i32, !dbg !698
  call void @__asan_load4_noabort(i32 %3), !dbg !698
  %4 = load ptr, ptr %ops.i, align 4, !dbg !698
  %call.i = tail call i32 @unregister_ftrace_function(ptr noundef %4) #15, !dbg !699
  tail call void @tracing_stop_cmdline_record() #15, !dbg !700
  tail call void @ftrace_reset_array_ops(ptr noundef %tr) #15, !dbg !701
  ret void, !dbg !702
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @function_trace_start(ptr noundef %tr) #0 align 64 !dbg !703 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !704
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.74, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.74, align 8
  %array_buffer = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 2, !dbg !705
  tail call void @tracing_reset_online_cpus(ptr noundef %array_buffer) #15, !dbg !706
  ret void, !dbg !707
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_selftest_startup_function(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @func_set_flag(ptr nocapture noundef %tr, i32 noundef %old_flags, i32 noundef %bit, i32 noundef %set) #0 align 64 !dbg !708 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !709
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set), !dbg !710
  %tobool = icmp ne i32 %set, 0, !dbg !710
  %0 = load i32, ptr @func_flags, align 4, !dbg !711
  %and = and i32 %0, %bit, !dbg !712
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !713
  %tobool2 = icmp eq i32 %and, 0, !dbg !713
  %cmp = xor i1 %tobool, %tobool2, !dbg !714
  br i1 %cmp, label %if.then, label %if.end, !dbg !715

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !716
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.75, align 16, !dbg !716
  %1 = add i64 %gcov_ctr, 1, !dbg !716
  store i64 %1, ptr @__llvm_gcov_ctr.75, align 16, !dbg !716
  br label %cleanup, !dbg !716

if.end:                                           ; preds = %entry
  %current_trace = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 23, !dbg !717
  %2 = ptrtoint ptr %current_trace to i32, !dbg !717
  call void @__asan_load4_noabort(i32 %2), !dbg !717
  %3 = load ptr, ptr %current_trace, align 8, !dbg !717
  %cmp7.not = icmp eq ptr %3, @function_trace, !dbg !718
  br i1 %cmp7.not, label %if.end9, label %if.then8, !dbg !719

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !720
  %gcov_ctr29 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.75, i32 0, i32 1), align 8, !dbg !720
  %4 = add i64 %gcov_ctr29, 1, !dbg !720
  store i64 %4, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.75, i32 0, i32 1), align 8, !dbg !720
  br label %cleanup, !dbg !720

if.end9:                                          ; preds = %if.end
  %neg = xor i32 %bit, -1, !dbg !721
  %and10 = and i32 %0, %neg, !dbg !722
  br i1 %tobool, label %if.end9.cond.end_crit_edge, label %cond.false, !dbg !723

if.end9.cond.end_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13, !dbg !723
  br label %cond.end, !dbg !723

cond.false:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13, !dbg !723
  %gcov_ctr30 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.75, i32 0, i32 2), align 16, !dbg !723
  %5 = add i64 %gcov_ctr30, 1, !dbg !723
  store i64 %5, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.75, i32 0, i32 2), align 16, !dbg !723
  br label %cond.end, !dbg !723

cond.end:                                         ; preds = %cond.false, %if.end9.cond.end_crit_edge
  %cond = phi i32 [ 0, %cond.false ], [ %bit, %if.end9.cond.end_crit_edge ], !dbg !723
  %or = or i32 %cond, %and10, !dbg !724
  %and.i = and i32 %or, 3, !dbg !725
  %6 = zext i32 %and.i to i64, !dbg !727
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.96), !dbg !727
  switch i32 %and.i, label %entry.unreachabledefault.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
  ], !dbg !727

sw.bb.i:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !728
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.76, align 16, !dbg !728
  %7 = add i64 %gcov_ctr.i, 1, !dbg !728
  store i64 %7, ptr @__llvm_gcov_ctr.76, align 16, !dbg !728
  br label %if.end14, !dbg !728

sw.bb1.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !729
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 1), align 8, !dbg !729
  %8 = add i64 %gcov_ctr4.i, 1, !dbg !729
  store i64 %8, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 1), align 8, !dbg !729
  br label %if.end14, !dbg !729

sw.bb2.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !730
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 2), align 16, !dbg !730
  %9 = add i64 %gcov_ctr5.i, 1, !dbg !730
  store i64 %9, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 2), align 16, !dbg !730
  br label %if.end14, !dbg !730

sw.bb3.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !731
  %gcov_ctr6.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 3), align 8, !dbg !731
  %10 = add i64 %gcov_ctr6.i, 1, !dbg !731
  store i64 %10, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 3), align 8, !dbg !731
  br label %if.end14, !dbg !731

entry.unreachabledefault.i:                       ; preds = %cond.end
  unreachable

if.end14:                                         ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ @function_stack_no_repeats_trace_call, %sw.bb3.i ], [ @function_no_repeats_trace_call, %sw.bb2.i ], [ @function_stack_trace_call, %sw.bb1.i ], [ @function_trace_call, %sw.bb.i ], !dbg !732
  %ops = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 40, !dbg !733
  %11 = ptrtoint ptr %ops to i32, !dbg !733
  call void @__asan_load4_noabort(i32 %11), !dbg !733
  %12 = load ptr, ptr %ops, align 4, !dbg !733
  %13 = ptrtoint ptr %12 to i32, !dbg !734
  call void @__asan_load4_noabort(i32 %13), !dbg !734
  %14 = load ptr, ptr %12, align 4, !dbg !734
  %cmp16 = icmp eq ptr %14, %retval.0.i, !dbg !735
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !736

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13, !dbg !737
  %gcov_ctr32 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.75, i32 0, i32 4), align 16, !dbg !737
  %15 = add i64 %gcov_ctr32, 1, !dbg !737
  store i64 %15, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.75, i32 0, i32 4), align 16, !dbg !737
  br label %cleanup, !dbg !737

if.end18:                                         ; preds = %if.end14
  %last_func_repeats.i = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 50, !dbg !738
  %16 = ptrtoint ptr %last_func_repeats.i to i32, !dbg !738
  call void @__asan_load4_noabort(i32 %16), !dbg !738
  %17 = load ptr, ptr %last_func_repeats.i, align 4, !dbg !738
  %tobool.not.i = icmp eq ptr %17, null, !dbg !740
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end18.if.end21_crit_edge, !dbg !741

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13, !dbg !741
  br label %if.end21, !dbg !741

land.lhs.true.i:                                  ; preds = %if.end18
  %gcov_ctr.i46 = load i64, ptr @__llvm_gcov_ctr.77, align 16, !dbg !742
  %18 = add i64 %gcov_ctr.i46, 1, !dbg !742
  store i64 %18, ptr @__llvm_gcov_ctr.77, align 16, !dbg !742
  %and.i47 = and i32 %or, 2, !dbg !743
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i47), !dbg !743
  %tobool1.not.i = icmp eq i32 %and.i47, 0, !dbg !743
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end21_crit_edge, label %if.then.i, !dbg !744

land.lhs.true.i.if.end21_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !744
  br label %if.end21, !dbg !744

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i = tail call noalias ptr @__alloc_percpu(i32 noundef 24, i32 noundef 8) #18, !dbg !745
  %19 = ptrtoint ptr %last_func_repeats.i to i32, !dbg !746
  call void @__asan_store4_noabort(i32 %19), !dbg !746
  store ptr %call.i, ptr %last_func_repeats.i, align 4, !dbg !746
  %tobool4.not.i = icmp eq ptr %call.i, null, !dbg !747
  br i1 %tobool4.not.i, label %if.then20, label %if.end.i, !dbg !748

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !749
  %gcov_ctr8.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 2), align 16, !dbg !749
  %20 = add i64 %gcov_ctr8.i, 1, !dbg !749
  store i64 %20, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 2), align 16, !dbg !749
  br label %if.end21, !dbg !749

if.then20:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !750
  %gcov_ctr9.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 1), align 8, !dbg !750
  %21 = add i64 %gcov_ctr9.i, 1, !dbg !750
  store i64 %21, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 1), align 8, !dbg !750
  %gcov_ctr33 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.75, i32 0, i32 5), align 8, !dbg !751
  %22 = add i64 %gcov_ctr33, 1, !dbg !751
  store i64 %22, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.75, i32 0, i32 5), align 8, !dbg !751
  br label %cleanup, !dbg !751

if.end21:                                         ; preds = %if.end.i, %land.lhs.true.i.if.end21_crit_edge, %if.end18.if.end21_crit_edge
  %gcov_ctr9.i51 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 3), align 8, !dbg !750
  %23 = add i64 %gcov_ctr9.i51, 1, !dbg !750
  store i64 %23, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 3), align 8, !dbg !750
  %gcov_ctr34 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.75, i32 0, i32 6), align 16, !dbg !752
  %24 = add i64 %gcov_ctr34, 1, !dbg !752
  store i64 %24, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.75, i32 0, i32 6), align 16, !dbg !752
  %25 = ptrtoint ptr %ops to i32, !dbg !753
  call void @__asan_load4_noabort(i32 %25), !dbg !753
  %26 = load ptr, ptr %ops, align 4, !dbg !753
  %call23 = tail call i32 @unregister_ftrace_function(ptr noundef %26) #15, !dbg !754
  %27 = ptrtoint ptr %ops to i32, !dbg !755
  call void @__asan_load4_noabort(i32 %27), !dbg !755
  %28 = load ptr, ptr %ops, align 4, !dbg !755
  %29 = ptrtoint ptr %28 to i32, !dbg !756
  call void @__asan_store4_noabort(i32 %29), !dbg !756
  store ptr %retval.0.i, ptr %28, align 4, !dbg !756
  %30 = load ptr, ptr %ops, align 4, !dbg !757
  %call27 = tail call i32 @register_ftrace_function(ptr noundef %30) #15, !dbg !758
  br label %cleanup, !dbg !759

cleanup:                                          ; preds = %if.end21, %if.then20, %if.then17, %if.then8, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then8 ], [ 0, %if.then17 ], [ 0, %if.end21 ], [ -12, %if.then20 ], !dbg !760
  ret i32 %retval.0, !dbg !761
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_init_array_ops(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_start_cmdline_record() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @function_stack_trace_call(i32 noundef %ip, i32 noundef %parent_ip, ptr nocapture noundef readonly %op, ptr nocapture noundef readnone %fregs) #0 align 64 !dbg !762 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !763
  %private = getelementptr inbounds %struct.ftrace_ops, ptr %op, i32 0, i32 3, !dbg !764
  %0 = ptrtoint ptr %private to i32, !dbg !764
  call void @__asan_load4_noabort(i32 %0), !dbg !764
  %1 = load ptr, ptr %private, align 4, !dbg !764
  %function_enabled = getelementptr inbounds %struct.trace_array, ptr %1, i32 0, i32 46, !dbg !765
  %2 = ptrtoint ptr %function_enabled to i32, !dbg !765
  call void @__asan_load4_noabort(i32 %2), !dbg !765
  %3 = load i32, ptr %function_enabled, align 8, !dbg !765
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3), !dbg !765
  %tobool.not = icmp eq i32 %3, 0, !dbg !765
  br i1 %tobool.not, label %if.then, label %do.body4, !dbg !765, !prof !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !766
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.79, align 16
  %4 = add i64 %gcov_ctr, 1
  store i64 %4, ptr @__llvm_gcov_ctr.79, align 16
  br label %cleanup, !dbg !767

do.body4:                                         ; preds = %entry
  %gcov_ctr.i100 = load i64, ptr @__llvm_gcov_ctr.82, align 8
  %5 = add i64 %gcov_ctr.i100, 1
  store i64 %5, ptr @__llvm_gcov_ctr.82, align 8
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !dbg !768, !srcloc !771
  %gcov_ctr.i101 = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %7 = add i64 %gcov_ctr.i101, 1
  store i64 %7, ptr @__llvm_gcov_ctr.40, align 8
  %and.i = and i32 %6, 128, !dbg !772
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !775
  %tobool12.not = icmp eq i32 %and.i, 0, !dbg !775
  br i1 %tobool12.not, label %if.then13, label %do.body4.do.end16_crit_edge, !dbg !775

do.body4.do.end16_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13, !dbg !775
  br label %do.end16, !dbg !775

if.then13:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13, !dbg !775
  %gcov_ctr80 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 1), align 8, !dbg !775
  %8 = add i64 %gcov_ctr80, 1, !dbg !775
  store i64 %8, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 1), align 8, !dbg !775
  tail call void @trace_hardirqs_off() #15, !dbg !775
  br label %do.end16, !dbg !775

do.end16:                                         ; preds = %if.then13, %do.body4.do.end16_crit_edge
  %gcov_ctr.i102 = load i64, ptr @__llvm_gcov_ctr.29, align 8, !dbg !776
  %9 = add i64 %gcov_ctr.i102, 1, !dbg !776
  store i64 %9, ptr @__llvm_gcov_ctr.29, align 8, !dbg !776
  %10 = tail call i32 @llvm.read_register.i32(metadata !2) #15, !dbg !776
  %and.i103 = and i32 %10, -16384, !dbg !778
  %11 = inttoptr i32 %and.i103 to ptr, !dbg !779
  %cpu18 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3, !dbg !780
  %12 = ptrtoint ptr %cpu18 to i32, !dbg !780
  call void @__asan_load4_noabort(i32 %12), !dbg !780
  %13 = load i32, ptr %cpu18, align 4, !dbg !780
  %data23 = getelementptr inbounds %struct.trace_array, ptr %1, i32 0, i32 2, i32 2, !dbg !781
  %14 = ptrtoint ptr %data23 to i32, !dbg !781
  call void @__asan_load4_noabort(i32 %14), !dbg !781
  %15 = load ptr, ptr %data23, align 8, !dbg !781
  %16 = ptrtoint ptr %15 to i32, !dbg !781
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13, !dbg !781
  %17 = ptrtoint ptr %arrayidx to i32, !dbg !781
  call void @__asan_load4_noabort(i32 %17), !dbg !781
  %18 = load i32, ptr %arrayidx, align 4, !dbg !781
  %add = add i32 %18, %16, !dbg !781
  %19 = inttoptr i32 %add to ptr, !dbg !781
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.83, align 8
  %20 = add i64 %gcov_ctr.i, 1
  store i64 %20, ptr @__llvm_gcov_ctr.83, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.87, align 8
  %21 = add i64 %gcov_ctr.i.i, 1
  store i64 %21, ptr @__llvm_gcov_ctr.87, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %19, i32 noundef 4) #15, !dbg !782
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %22 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %22, ptr @__llvm_gcov_ctr.42, align 8
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.88, align 8
  %23 = add i64 %gcov_ctr.i2.i, 1
  store i64 %23, ptr @__llvm_gcov_ctr.88, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !787, !srcloc !793
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.90, align 8
  %24 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %24, ptr @__llvm_gcov_ctr.90, align 8
  tail call void @llvm.prefetch.p0(ptr %19, i32 1, i32 3, i32 1) #15, !dbg !794
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #15, !dbg !794, !srcloc !798
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %25, 0, !dbg !794
  %gcov_ctr.i.i3.i = load i64, ptr @__llvm_gcov_ctr.89, align 8, !dbg !799
  %26 = add i64 %gcov_ctr.i.i3.i, 1, !dbg !799
  store i64 %26, ptr @__llvm_gcov_ctr.89, align 8, !dbg !799
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !799, !srcloc !800
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i), !dbg !801
  %cmp27 = icmp eq i32 %asmresult.i.i.i.i, 1, !dbg !801
  br i1 %cmp27, label %if.then35, label %do.end16.if.end37_crit_edge, !dbg !801, !prof !150

do.end16.if.end37_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13, !dbg !801
  br label %if.end37, !dbg !801

if.then35:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13, !dbg !802
  %gcov_ctr81 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 2), align 16, !dbg !802
  %27 = add i64 %gcov_ctr81, 1, !dbg !802
  store i64 %27, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 2), align 16, !dbg !802
  %gcov_ctr.i104 = load i64, ptr @__llvm_gcov_ctr.39, align 8
  %28 = add i64 %gcov_ctr.i104, 1
  store i64 %28, ptr @__llvm_gcov_ctr.39, align 8
  %gcov_ctr.i.i105 = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %29 = add i64 %gcov_ctr.i.i105, 1
  store i64 %29, ptr @__llvm_gcov_ctr.40, align 8
  %and.i.i = lshr i32 %6, 7, !dbg !803
  %and.i.lobit.i = and i32 %and.i.i, 1, !dbg !803
  %call2.i = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %and.i.lobit.i) #15, !dbg !805
  tail call void @trace_function(ptr noundef %1, i32 noundef %ip, i32 noundef %parent_ip, i32 noundef %call2.i) #15, !dbg !806
  tail call void @__trace_stack(ptr noundef %1, i32 noundef %call2.i, i32 noundef 3) #15, !dbg !807
  br label %if.end37, !dbg !808

if.end37:                                         ; preds = %if.then35, %do.end16.if.end37_crit_edge
  %gcov_ctr.i94 = load i64, ptr @__llvm_gcov_ctr.84, align 8
  %30 = add i64 %gcov_ctr.i94, 1
  store i64 %30, ptr @__llvm_gcov_ctr.84, align 8
  %gcov_ctr.i.i95 = load i64, ptr @__llvm_gcov_ctr.87, align 8
  %31 = add i64 %gcov_ctr.i.i95, 1
  store i64 %31, ptr @__llvm_gcov_ctr.87, align 8
  %call.i.i96 = tail call zeroext i1 @__kasan_check_write(ptr noundef %19, i32 noundef 4) #15, !dbg !809
  %gcov_ctr.i.i.i97 = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %32 = add i64 %gcov_ctr.i.i.i97, 1
  store i64 %32, ptr @__llvm_gcov_ctr.42, align 8
  %gcov_ctr.i2.i98 = load i64, ptr @__llvm_gcov_ctr.91, align 8
  %33 = add i64 %gcov_ctr.i2.i98, 1
  store i64 %33, ptr @__llvm_gcov_ctr.91, align 8
  %gcov_ctr.i.i3.i99 = load i64, ptr @__llvm_gcov_ctr.92, align 8
  %34 = add i64 %gcov_ctr.i.i3.i99, 1
  store i64 %34, ptr @__llvm_gcov_ctr.92, align 8
  tail call void @llvm.prefetch.p0(ptr %19, i32 1, i32 3, i32 1) #15, !dbg !813
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #15, !dbg !813, !srcloc !818
  %gcov_ctr.i106 = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %36 = add i64 %gcov_ctr.i106, 1
  store i64 %36, ptr @__llvm_gcov_ctr.40, align 8
  br i1 %tobool12.not, label %if.then48, label %if.end37.do.body50_crit_edge, !dbg !819

if.end37.do.body50_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13, !dbg !819
  br label %do.body50, !dbg !819

if.then48:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13, !dbg !819
  %gcov_ctr82 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 3), align 8, !dbg !819
  %37 = add i64 %gcov_ctr82, 1, !dbg !819
  store i64 %37, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 3), align 8, !dbg !819
  tail call void @trace_hardirqs_on() #15, !dbg !819
  br label %do.body50, !dbg !819

do.body50:                                        ; preds = %if.then48, %if.end37.do.body50_crit_edge
  %gcov_ctr.i108 = load i64, ptr @__llvm_gcov_ctr.85, align 8, !dbg !820
  %38 = add i64 %gcov_ctr.i108, 1, !dbg !820
  store i64 %38, ptr @__llvm_gcov_ctr.85, align 8, !dbg !820
  %gcov_ctr.i.i109 = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %39 = add i64 %gcov_ctr.i.i109, 1
  store i64 %39, ptr @__llvm_gcov_ctr.38, align 8
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !dbg !824, !srcloc !185
  %gcov_ctr.i2.i110 = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %41 = add i64 %gcov_ctr.i2.i110, 1
  store i64 %41, ptr @__llvm_gcov_ctr.40, align 8
  %and.i.i111 = and i32 %40, 128, !dbg !826
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i111), !dbg !819
  %tobool58.not = icmp eq i32 %and.i.i111, 0, !dbg !819
  br i1 %tobool58.not, label %if.then67, label %do.body50.do.end70_crit_edge, !dbg !819, !prof !111

do.body50.do.end70_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13, !dbg !819
  br label %do.end70, !dbg !819

if.then67:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13, !dbg !819
  %gcov_ctr83 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 4), align 16, !dbg !819
  %42 = add i64 %gcov_ctr83, 1, !dbg !819
  store i64 %42, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 4), align 16, !dbg !819
  tail call void @warn_bogus_irq_restore() #15, !dbg !819
  br label %do.end70, !dbg !819

do.end70:                                         ; preds = %if.then67, %do.body50.do.end70_crit_edge
  %gcov_ctr.i112 = load i64, ptr @__llvm_gcov_ctr.86, align 8
  %43 = add i64 %gcov_ctr.i112, 1
  store i64 %43, ptr @__llvm_gcov_ctr.86, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #15, !dbg !828, !srcloc !831
  %gcov_ctr84 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 5), align 8, !dbg !832
  %44 = add i64 %gcov_ctr84, 1, !dbg !832
  store i64 %44, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 5), align 8, !dbg !832
  br label %cleanup, !dbg !832

cleanup:                                          ; preds = %do.end70, %if.then
  ret void, !dbg !832
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @function_no_repeats_trace_call(i32 noundef %ip, i32 noundef %parent_ip, ptr nocapture noundef readonly %op, ptr nocapture noundef readnone %fregs) #0 align 64 !dbg !833 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !834
  %private = getelementptr inbounds %struct.ftrace_ops, ptr %op, i32 0, i32 3, !dbg !835
  %0 = ptrtoint ptr %private to i32, !dbg !835
  call void @__asan_load4_noabort(i32 %0), !dbg !835
  %1 = load ptr, ptr %private, align 4, !dbg !835
  %function_enabled = getelementptr inbounds %struct.trace_array, ptr %1, i32 0, i32 46, !dbg !836
  %2 = ptrtoint ptr %function_enabled to i32, !dbg !836
  call void @__asan_load4_noabort(i32 %2), !dbg !836
  %3 = load i32, ptr %function_enabled, align 8, !dbg !836
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3), !dbg !836
  %tobool.not = icmp eq i32 %3, 0, !dbg !836
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !836, !prof !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !837
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.80, align 16
  %4 = add i64 %gcov_ctr, 1
  store i64 %4, ptr @__llvm_gcov_ctr.80, align 16
  br label %cleanup, !dbg !838

if.end:                                           ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %5 = add i64 %gcov_ctr.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.27, align 8
  %gcov_ctr.i4.i.i = load i64, ptr @__llvm_gcov_ctr.29, align 8, !dbg !839
  %6 = add i64 %gcov_ctr.i4.i.i, 1, !dbg !839
  store i64 %6, ptr @__llvm_gcov_ctr.29, align 8, !dbg !839
  %7 = tail call i32 @llvm.read_register.i32(metadata !2) #15, !dbg !839
  %and.i.i.i = and i32 %7, -16384, !dbg !843
  %8 = inttoptr i32 %and.i.i.i to ptr, !dbg !844
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2, !dbg !845
  %9 = ptrtoint ptr %task.i.i to i32, !dbg !845
  call void @__asan_load4_noabort(i32 %9), !dbg !845
  %10 = load ptr, ptr %task.i.i, align 8, !dbg !845
  %trace_recursion.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 194, !dbg !845
  %11 = ptrtoint ptr %trace_recursion.i.i to i32, !dbg !845
  call void @__asan_load4_noabort(i32 %11), !dbg !845
  %12 = load volatile i32, ptr %trace_recursion.i.i, align 4, !dbg !845
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.33, align 8
  %13 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %13, ptr @__llvm_gcov_ctr.33, align 8
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.35, align 8
  %14 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %14, ptr @__llvm_gcov_ctr.35, align 8
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.36, align 8
  %15 = add i64 %gcov_ctr.i.i.i.i.i, 1
  store i64 %15, ptr @__llvm_gcov_ctr.36, align 8
  %16 = add i64 %gcov_ctr.i4.i.i, 2, !dbg !846
  store i64 %16, ptr @__llvm_gcov_ctr.29, align 8, !dbg !846
  %17 = tail call i32 @llvm.read_register.i32(metadata !2) #15, !dbg !846
  %and.i.i.i.i.i.i = and i32 %17, -16384, !dbg !851
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr, !dbg !852
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1, !dbg !853
  %19 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32, !dbg !853
  call void @__asan_load4_noabort(i32 %19), !dbg !853
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4, !dbg !853
  %and.i.i.i.i = and i32 %20, 15728640, !dbg !854
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i), !dbg !855
  %tobool.i.i.i.i = icmp ne i32 %and.i.i.i.i, 0, !dbg !855
  %and3.i.i.i.i = and i32 %20, 16711680, !dbg !856
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i.i), !dbg !857
  %tobool4.i.not.i.i.i = icmp eq i32 %and3.i.i.i.i, 0, !dbg !857
  %conv9.i.neg.i.i.i = sext i1 %tobool.i.i.i.i to i32, !dbg !858
  %and12.i.i.i.i = and i32 %20, 16711936, !dbg !859
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i.i.i), !dbg !860
  %tobool13.i.i.i.i = icmp ne i32 %and12.i.i.i.i, 0, !dbg !860
  %lnot.ext17.i.neg.i.i.i = sext i1 %tobool13.i.i.i.i to i32, !dbg !861
  %add10.i.neg.i.i.i = select i1 %tobool4.i.not.i.i.i, i32 3, i32 2, !dbg !858
  %add19.i.neg.i.i.i = add nsw i32 %add10.i.neg.i.i.i, %conv9.i.neg.i.i.i, !dbg !862
  %sub.i.i.i = add nsw i32 %add19.i.neg.i.i.i, %lnot.ext17.i.neg.i.i.i, !dbg !863
  %shl.i.i = shl nuw nsw i32 1, %sub.i.i.i, !dbg !864
  %and.i.i = and i32 %shl.i.i, %12, !dbg !864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !864
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !864
  br i1 %tobool.not.i.i, label %if.end.if.end5_crit_edge, label %if.then.i.i, !dbg !864, !prof !150

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !864
  br label %if.end5, !dbg !864

if.then.i.i:                                      ; preds = %if.end
  %and6.i.i = and i32 %12, 16, !dbg !865
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i), !dbg !865
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0, !dbg !865
  br i1 %tobool7.not.i.i, label %if.end31.i.i, label %do.body9.i.i, !dbg !866

do.body9.i.i:                                     ; preds = %if.then.i.i
  %and13.i.i = and i32 %12, 65536, !dbg !867
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i), !dbg !867
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0, !dbg !867
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %do.body9.i.i.if.then4_crit_edge, !dbg !867

do.body9.i.i.if.then4_crit_edge:                  ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !867
  br label %if.then4, !dbg !867

if.then15.i.i:                                    ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !867
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.32, align 16, !dbg !867
  %21 = add i64 %gcov_ctr.i.i, 1, !dbg !867
  store i64 %21, ptr @__llvm_gcov_ctr.32, align 16, !dbg !867
  %or.i.i = or i32 %12, 65536, !dbg !867
  %22 = ptrtoint ptr %trace_recursion.i.i to i32, !dbg !867
  call void @__asan_store4_noabort(i32 %22), !dbg !867
  store i32 %or.i.i, ptr %trace_recursion.i.i, align 4, !dbg !867
  tail call void @ftrace_record_recursion(i32 noundef %ip, i32 noundef %parent_ip) #15, !dbg !867
  %23 = ptrtoint ptr %task.i.i to i32, !dbg !867
  call void @__asan_load4_noabort(i32 %23), !dbg !867
  %24 = load ptr, ptr %task.i.i, align 8, !dbg !867
  %trace_recursion25.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 194, !dbg !867
  %25 = ptrtoint ptr %trace_recursion25.i.i to i32, !dbg !867
  call void @__asan_load4_noabort(i32 %25), !dbg !867
  %26 = load i32, ptr %trace_recursion25.i.i, align 4, !dbg !867
  %and26.i.i = and i32 %26, -65537, !dbg !867
  store i32 %and26.i.i, ptr %trace_recursion25.i.i, align 4, !dbg !867
  br label %if.then4, !dbg !867

if.end31.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !868
  %gcov_ctr43.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 2), align 16, !dbg !868
  %27 = add i64 %gcov_ctr43.i.i, 1, !dbg !868
  store i64 %27, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 2), align 16, !dbg !868
  br label %if.end5, !dbg !868

if.then4:                                         ; preds = %if.then15.i.i, %do.body9.i.i.if.then4_crit_edge
  %gcov_ctr44.i.i87 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !869
  %28 = add i64 %gcov_ctr44.i.i87, 1, !dbg !869
  store i64 %28, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !869
  %gcov_ctr39 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 1), align 8
  %29 = add i64 %gcov_ctr39, 1
  store i64 %29, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 1), align 8
  br label %cleanup, !dbg !870

if.end5:                                          ; preds = %if.end31.i.i, %if.end.if.end5_crit_edge
  %bit.0.i.i = phi i32 [ 4, %if.end31.i.i ], [ %sub.i.i.i, %if.end.if.end5_crit_edge ], !dbg !869
  %shl33.i.i = shl nuw nsw i32 1, %bit.0.i.i, !dbg !871
  %or34.i.i = or i32 %shl33.i.i, %12, !dbg !872
  %30 = ptrtoint ptr %task.i.i to i32, !dbg !873
  call void @__asan_load4_noabort(i32 %30), !dbg !873
  %31 = load ptr, ptr %task.i.i, align 8, !dbg !873
  %trace_recursion37.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 194, !dbg !874
  %32 = ptrtoint ptr %trace_recursion37.i.i to i32, !dbg !875
  call void @__asan_store4_noabort(i32 %32), !dbg !875
  store i32 %or34.i.i, ptr %trace_recursion37.i.i, align 4, !dbg !875
  tail call void asm sideeffect "", "~{memory}"() #15, !dbg !876, !srcloc !163
  %gcov_ctr.i1.i.i = load i64, ptr @__llvm_gcov_ctr.34, align 8
  %33 = add i64 %gcov_ctr.i1.i.i, 1
  store i64 %33, ptr @__llvm_gcov_ctr.34, align 8
  %gcov_ctr.i.i2.i.i = load i64, ptr @__llvm_gcov_ctr.37, align 8, !dbg !877
  %34 = add i64 %gcov_ctr.i.i2.i.i, 1, !dbg !877
  store i64 %34, ptr @__llvm_gcov_ctr.37, align 8, !dbg !877
  %gcov_ctr.i.i.i3.i.i = load i64, ptr @__llvm_gcov_ctr.29, align 8, !dbg !880
  %35 = add i64 %gcov_ctr.i.i.i3.i.i, 1, !dbg !880
  store i64 %35, ptr @__llvm_gcov_ctr.29, align 8, !dbg !880
  %36 = tail call i32 @llvm.read_register.i32(metadata !2) #15, !dbg !880
  %and.i.i.i.i.i = and i32 %36, -16384, !dbg !882
  %37 = inttoptr i32 %and.i.i.i.i.i to ptr, !dbg !883
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1, !dbg !884
  %38 = ptrtoint ptr %preempt_count.i.i.i.i to i32, !dbg !885
  call void @__asan_load4_noabort(i32 %38), !dbg !885
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4, !dbg !885
  %add.i.i.i = add i32 %39, 1, !dbg !885
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4, !dbg !885
  tail call void asm sideeffect "", "~{memory}"() #15, !dbg !886, !srcloc !176
  %gcov_ctr44.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 3), align 8, !dbg !869
  %40 = add i64 %gcov_ctr44.i.i, 1, !dbg !869
  store i64 %40, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 3), align 8, !dbg !869
  %gcov_ctr.i75 = load i64, ptr @__llvm_gcov_ctr.29, align 8, !dbg !887
  %41 = add i64 %gcov_ctr.i75, 1, !dbg !887
  store i64 %41, ptr @__llvm_gcov_ctr.29, align 8, !dbg !887
  %42 = tail call i32 @llvm.read_register.i32(metadata !2) #15, !dbg !887
  %and.i = and i32 %42, -16384, !dbg !889
  %43 = inttoptr i32 %and.i to ptr, !dbg !890
  %cpu7 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3, !dbg !891
  %44 = ptrtoint ptr %cpu7 to i32, !dbg !891
  call void @__asan_load4_noabort(i32 %44), !dbg !891
  %45 = load i32, ptr %cpu7, align 4, !dbg !891
  %data8 = getelementptr inbounds %struct.trace_array, ptr %1, i32 0, i32 2, i32 2, !dbg !892
  %46 = ptrtoint ptr %data8 to i32, !dbg !892
  call void @__asan_load4_noabort(i32 %46), !dbg !892
  %47 = load ptr, ptr %data8, align 8, !dbg !892
  %48 = ptrtoint ptr %47 to i32, !dbg !892
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45, !dbg !892
  %49 = ptrtoint ptr %arrayidx to i32, !dbg !892
  call void @__asan_load4_noabort(i32 %49), !dbg !892
  %50 = load i32, ptr %arrayidx, align 4, !dbg !892
  %add = add i32 %50, %48, !dbg !892
  %51 = inttoptr i32 %add to ptr, !dbg !892
  %gcov_ctr.i59 = load i64, ptr @__llvm_gcov_ctr.30, align 8
  %52 = add i64 %gcov_ctr.i59, 1
  store i64 %52, ptr @__llvm_gcov_ctr.30, align 8
  %gcov_ctr.i.i60 = load i64, ptr @__llvm_gcov_ctr.41, align 8
  %53 = add i64 %gcov_ctr.i.i60, 1
  store i64 %53, ptr @__llvm_gcov_ctr.41, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %51, i32 noundef 4) #15, !dbg !893
  %gcov_ctr.i.i.i61 = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %54 = add i64 %gcov_ctr.i.i.i61, 1
  store i64 %54, ptr @__llvm_gcov_ctr.42, align 8
  %55 = ptrtoint ptr %51 to i32, !dbg !896
  call void @__asan_load4_noabort(i32 %55), !dbg !896
  %56 = load volatile i32, ptr %51, align 4, !dbg !896
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56), !dbg !897
  %tobool11.not = icmp eq i32 %56, 0, !dbg !897
  br i1 %tobool11.not, label %do.body14, label %if.then12, !dbg !897

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13, !dbg !898
  %gcov_ctr40 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 2), align 16, !dbg !898
  %57 = add i64 %gcov_ctr40, 1, !dbg !898
  store i64 %57, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 2), align 16, !dbg !898
  br label %out, !dbg !898

do.body14:                                        ; preds = %if.end5
  %last_func_repeats = getelementptr inbounds %struct.trace_array, ptr %1, i32 0, i32 50, !dbg !899
  %58 = ptrtoint ptr %last_func_repeats to i32, !dbg !899
  call void @__asan_load4_noabort(i32 %58), !dbg !899
  %59 = load ptr, ptr %last_func_repeats, align 4, !dbg !899
  %60 = ptrtoint ptr %59 to i32, !dbg !899
  %61 = ptrtoint ptr %arrayidx to i32, !dbg !899
  call void @__asan_load4_noabort(i32 %61), !dbg !899
  %62 = load i32, ptr %arrayidx, align 4, !dbg !899
  %add22 = add i32 %62, %60, !dbg !899
  %63 = inttoptr i32 %add22 to ptr, !dbg !899
  %64 = ptrtoint ptr %63 to i32, !dbg !900
  call void @__asan_load4_noabort(i32 %64), !dbg !900
  %65 = load i32, ptr %63, align 8, !dbg !900
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %ip), !dbg !903
  %cmp.i = icmp eq i32 %65, %ip, !dbg !903
  br i1 %cmp.i, label %land.lhs.true.i, label %do.body14.do.body26_crit_edge, !dbg !904

do.body14.do.body26_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13, !dbg !904
  br label %do.body26, !dbg !904

land.lhs.true.i:                                  ; preds = %do.body14
  %gcov_ctr.i76 = load i64, ptr @__llvm_gcov_ctr.93, align 16, !dbg !905
  %66 = add i64 %gcov_ctr.i76, 1, !dbg !905
  store i64 %66, ptr @__llvm_gcov_ctr.93, align 16, !dbg !905
  %parent_ip2.i = getelementptr inbounds %struct.trace_func_repeats, ptr %63, i32 0, i32 1, !dbg !906
  %67 = ptrtoint ptr %parent_ip2.i to i32, !dbg !906
  call void @__asan_load4_noabort(i32 %67), !dbg !906
  %68 = load i32, ptr %parent_ip2.i, align 4, !dbg !906
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %parent_ip), !dbg !907
  %cmp3.i = icmp eq i32 %68, %parent_ip, !dbg !907
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i.do.body26_crit_edge, !dbg !908

land.lhs.true.i.do.body26_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !908
  br label %do.body26, !dbg !908

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %gcov_ctr7.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 1), align 8, !dbg !909
  %69 = add i64 %gcov_ctr7.i, 1, !dbg !909
  store i64 %69, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 1), align 8, !dbg !909
  %count.i = getelementptr inbounds %struct.trace_func_repeats, ptr %63, i32 0, i32 2, !dbg !910
  %70 = ptrtoint ptr %count.i to i32, !dbg !910
  call void @__asan_load4_noabort(i32 %70), !dbg !910
  %71 = load i32, ptr %count.i, align 8, !dbg !910
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %71), !dbg !911
  %cmp5.i = icmp ult i32 %71, 65535, !dbg !911
  br i1 %cmp5.i, label %if.then24, label %land.lhs.true4.i.do.body26_crit_edge, !dbg !912

land.lhs.true4.i.do.body26_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !912
  br label %do.body26, !dbg !912

if.then24:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !913
  %gcov_ctr8.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 2), align 16, !dbg !913
  %72 = add i64 %gcov_ctr8.i, 1, !dbg !913
  store i64 %72, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 2), align 16, !dbg !913
  %buffer.i = getelementptr inbounds %struct.trace_array, ptr %1, i32 0, i32 2, i32 1, !dbg !914
  %73 = ptrtoint ptr %buffer.i to i32, !dbg !914
  call void @__asan_load4_noabort(i32 %73), !dbg !914
  %74 = load ptr, ptr %buffer.i, align 4, !dbg !914
  %call.i = tail call i64 @ring_buffer_time_stamp(ptr noundef %74) #15, !dbg !915
  %ts_last_call.i = getelementptr inbounds %struct.trace_func_repeats, ptr %63, i32 0, i32 3, !dbg !916
  %75 = ptrtoint ptr %ts_last_call.i to i32, !dbg !917
  call void @__asan_store8_noabort(i32 %75), !dbg !917
  store i64 %call.i, ptr %ts_last_call.i, align 8, !dbg !917
  %76 = ptrtoint ptr %count.i to i32, !dbg !918
  call void @__asan_load4_noabort(i32 %76), !dbg !918
  %77 = load i32, ptr %count.i, align 8, !dbg !918
  %inc.i = add i32 %77, 1, !dbg !918
  store i32 %inc.i, ptr %count.i, align 8, !dbg !918
  %gcov_ctr41 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 3), align 8, !dbg !919
  %78 = add i64 %gcov_ctr41, 1, !dbg !919
  store i64 %78, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 3), align 8, !dbg !919
  br label %out, !dbg !919

do.body26:                                        ; preds = %land.lhs.true4.i.do.body26_crit_edge, %land.lhs.true.i.do.body26_crit_edge, %do.body14.do.body26_crit_edge
  %gcov_ctr9.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 3), align 8, !dbg !920
  %79 = add i64 %gcov_ctr9.i, 1, !dbg !920
  store i64 %79, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 3), align 8, !dbg !920
  %gcov_ctr.i77 = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %80 = add i64 %gcov_ctr.i77, 1
  store i64 %80, ptr @__llvm_gcov_ctr.38, align 8
  %81 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !dbg !921, !srcloc !185
  %gcov_ctr42 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 4), align 16, !dbg !923
  %82 = add i64 %gcov_ctr42, 1, !dbg !923
  store i64 %82, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 4), align 16, !dbg !923
  %gcov_ctr.i78 = load i64, ptr @__llvm_gcov_ctr.39, align 8
  %83 = add i64 %gcov_ctr.i78, 1
  store i64 %83, ptr @__llvm_gcov_ctr.39, align 8
  %gcov_ctr.i.i79 = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %84 = add i64 %gcov_ctr.i.i79, 1
  store i64 %84, ptr @__llvm_gcov_ctr.40, align 8
  %and.i.i80 = lshr i32 %81, 7, !dbg !924
  %and.i.lobit.i = and i32 %and.i.i80, 1, !dbg !924
  %call2.i = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %and.i.lobit.i) #15, !dbg !926
  %gcov_ctr.i81 = load i64, ptr @__llvm_gcov_ctr.94, align 8
  %85 = add i64 %gcov_ctr.i81, 1
  store i64 %85, ptr @__llvm_gcov_ctr.94, align 8
  %count.i82 = getelementptr inbounds %struct.trace_func_repeats, ptr %63, i32 0, i32 2, !dbg !927
  %86 = ptrtoint ptr %count.i82 to i32, !dbg !927
  call void @__asan_load4_noabort(i32 %86), !dbg !927
  %87 = load i32, ptr %count.i82, align 8, !dbg !927
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87), !dbg !930
  %tobool.not.i = icmp eq i32 %87, 0, !dbg !930
  br i1 %tobool.not.i, label %do.body26.process_repeats.exit_crit_edge, label %if.then.i83, !dbg !930

do.body26.process_repeats.exit_crit_edge:         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13, !dbg !930
  br label %process_repeats.exit, !dbg !930

if.then.i83:                                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13, !dbg !931
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.94, i32 0, i32 1), align 8, !dbg !931
  %88 = add i64 %gcov_ctr4.i, 1, !dbg !931
  store i64 %88, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.94, i32 0, i32 1), align 8, !dbg !931
  tail call void @trace_last_func_repeats(ptr noundef %1, ptr noundef %63, i32 noundef %call2.i) #15, !dbg !932
  %89 = ptrtoint ptr %count.i82 to i32, !dbg !933
  call void @__asan_store4_noabort(i32 %89), !dbg !933
  store i32 0, ptr %count.i82, align 8, !dbg !933
  br label %process_repeats.exit, !dbg !934

process_repeats.exit:                             ; preds = %if.then.i83, %do.body26.process_repeats.exit_crit_edge
  %90 = ptrtoint ptr %63 to i32, !dbg !935
  call void @__asan_store4_noabort(i32 %90), !dbg !935
  store i32 %ip, ptr %63, align 8, !dbg !935
  %parent_ip3.i = getelementptr inbounds %struct.trace_func_repeats, ptr %63, i32 0, i32 1, !dbg !936
  %91 = ptrtoint ptr %parent_ip3.i to i32, !dbg !937
  call void @__asan_store4_noabort(i32 %91), !dbg !937
  store i32 %parent_ip, ptr %parent_ip3.i, align 4, !dbg !937
  tail call void @trace_function(ptr noundef %1, i32 noundef %ip, i32 noundef %parent_ip, i32 noundef %call2.i) #15, !dbg !938
  br label %out, !dbg !938

out:                                              ; preds = %process_repeats.exit, %if.then24, %if.then12
  %gcov_ctr.i62 = load i64, ptr @__llvm_gcov_ctr.31, align 8
  %92 = add i64 %gcov_ctr.i62, 1
  store i64 %92, ptr @__llvm_gcov_ctr.31, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !dbg !939, !srcloc !214
  %gcov_ctr.i.i.i63 = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %93 = add i64 %gcov_ctr.i.i.i63, 1
  store i64 %93, ptr @__llvm_gcov_ctr.44, align 8
  %gcov_ctr.i.i.i.i64 = load i64, ptr @__llvm_gcov_ctr.37, align 8, !dbg !942
  %94 = add i64 %gcov_ctr.i.i.i.i64, 1, !dbg !942
  store i64 %94, ptr @__llvm_gcov_ctr.37, align 8, !dbg !942
  %gcov_ctr.i.i.i.i.i65 = load i64, ptr @__llvm_gcov_ctr.29, align 8, !dbg !945
  %95 = add i64 %gcov_ctr.i.i.i.i.i65, 1, !dbg !945
  store i64 %95, ptr @__llvm_gcov_ctr.29, align 8, !dbg !945
  %96 = tail call i32 @llvm.read_register.i32(metadata !2) #15, !dbg !945
  %and.i.i.i.i.i66 = and i32 %96, -16384, !dbg !947
  %97 = inttoptr i32 %and.i.i.i.i.i66 to ptr, !dbg !948
  %preempt_count.i.i.i.i67 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 1, !dbg !949
  %98 = ptrtoint ptr %preempt_count.i.i.i.i67 to i32, !dbg !950
  call void @__asan_load4_noabort(i32 %98), !dbg !950
  %99 = load volatile i32, ptr %preempt_count.i.i.i.i67, align 4, !dbg !950
  %sub.i.i.i68 = add i32 %99, -1, !dbg !950
  store volatile i32 %sub.i.i.i68, ptr %preempt_count.i.i.i.i67, align 4, !dbg !950
  %gcov_ctr.i.i69 = load i64, ptr @__llvm_gcov_ctr.43, align 8, !dbg !951
  %100 = add i64 %gcov_ctr.i.i69, 1, !dbg !951
  store i64 %100, ptr @__llvm_gcov_ctr.43, align 8, !dbg !951
  tail call void asm sideeffect "", "~{memory}"() #15, !dbg !951, !srcloc !226
  %neg.i.i = xor i32 %shl33.i.i, -1, !dbg !952
  %gcov_ctr.i3.i.i = load i64, ptr @__llvm_gcov_ctr.29, align 8, !dbg !953
  %101 = add i64 %gcov_ctr.i3.i.i, 1, !dbg !953
  store i64 %101, ptr @__llvm_gcov_ctr.29, align 8, !dbg !953
  %102 = tail call i32 @llvm.read_register.i32(metadata !2) #15, !dbg !953
  %and.i.i.i71 = and i32 %102, -16384, !dbg !955
  %103 = inttoptr i32 %and.i.i.i71 to ptr, !dbg !956
  %task.i.i72 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 2, !dbg !952
  %104 = ptrtoint ptr %task.i.i72 to i32, !dbg !952
  call void @__asan_load4_noabort(i32 %104), !dbg !952
  %105 = load ptr, ptr %task.i.i72, align 8, !dbg !952
  %trace_recursion.i.i73 = getelementptr inbounds %struct.task_struct, ptr %105, i32 0, i32 194, !dbg !952
  %106 = ptrtoint ptr %trace_recursion.i.i73 to i32, !dbg !952
  call void @__asan_load4_noabort(i32 %106), !dbg !952
  %107 = load i32, ptr %trace_recursion.i.i73, align 4, !dbg !952
  %and.i.i74 = and i32 %107, %neg.i.i, !dbg !952
  store i32 %and.i.i74, ptr %trace_recursion.i.i73, align 4, !dbg !952
  br label %cleanup, !dbg !957

cleanup:                                          ; preds = %out, %if.then4, %if.then
  ret void, !dbg !957
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @function_stack_no_repeats_trace_call(i32 noundef %ip, i32 noundef %parent_ip, ptr nocapture noundef readonly %op, ptr nocapture noundef readnone %fregs) #0 align 64 !dbg !958 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !959
  %private = getelementptr inbounds %struct.ftrace_ops, ptr %op, i32 0, i32 3, !dbg !960
  %0 = ptrtoint ptr %private to i32, !dbg !960
  call void @__asan_load4_noabort(i32 %0), !dbg !960
  %1 = load ptr, ptr %private, align 4, !dbg !960
  %function_enabled = getelementptr inbounds %struct.trace_array, ptr %1, i32 0, i32 46, !dbg !961
  %2 = ptrtoint ptr %function_enabled to i32, !dbg !961
  call void @__asan_load4_noabort(i32 %2), !dbg !961
  %3 = load i32, ptr %function_enabled, align 8, !dbg !961
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3), !dbg !961
  %tobool.not = icmp eq i32 %3, 0, !dbg !961
  br i1 %tobool.not, label %if.then, label %do.body4, !dbg !961, !prof !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !962
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.81, align 16
  %4 = add i64 %gcov_ctr, 1
  store i64 %4, ptr @__llvm_gcov_ctr.81, align 16
  br label %cleanup, !dbg !963

do.body4:                                         ; preds = %entry
  %gcov_ctr.i124 = load i64, ptr @__llvm_gcov_ctr.82, align 8
  %5 = add i64 %gcov_ctr.i124, 1
  store i64 %5, ptr @__llvm_gcov_ctr.82, align 8
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !dbg !964, !srcloc !771
  %gcov_ctr.i125 = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %7 = add i64 %gcov_ctr.i125, 1
  store i64 %7, ptr @__llvm_gcov_ctr.40, align 8
  %and.i = and i32 %6, 128, !dbg !966
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !968
  %tobool12.not = icmp eq i32 %and.i, 0, !dbg !968
  br i1 %tobool12.not, label %if.then13, label %do.body4.do.end16_crit_edge, !dbg !968

do.body4.do.end16_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13, !dbg !968
  br label %do.end16, !dbg !968

if.then13:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13, !dbg !968
  %gcov_ctr93 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.81, i32 0, i32 1), align 8, !dbg !968
  %8 = add i64 %gcov_ctr93, 1, !dbg !968
  store i64 %8, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.81, i32 0, i32 1), align 8, !dbg !968
  tail call void @trace_hardirqs_off() #15, !dbg !968
  br label %do.end16, !dbg !968

do.end16:                                         ; preds = %if.then13, %do.body4.do.end16_crit_edge
  %gcov_ctr.i126 = load i64, ptr @__llvm_gcov_ctr.29, align 8, !dbg !969
  %9 = add i64 %gcov_ctr.i126, 1, !dbg !969
  store i64 %9, ptr @__llvm_gcov_ctr.29, align 8, !dbg !969
  %10 = tail call i32 @llvm.read_register.i32(metadata !2) #15, !dbg !969
  %and.i127 = and i32 %10, -16384, !dbg !971
  %11 = inttoptr i32 %and.i127 to ptr, !dbg !972
  %cpu18 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3, !dbg !973
  %12 = ptrtoint ptr %cpu18 to i32, !dbg !973
  call void @__asan_load4_noabort(i32 %12), !dbg !973
  %13 = load i32, ptr %cpu18, align 4, !dbg !973
  %data23 = getelementptr inbounds %struct.trace_array, ptr %1, i32 0, i32 2, i32 2, !dbg !974
  %14 = ptrtoint ptr %data23 to i32, !dbg !974
  call void @__asan_load4_noabort(i32 %14), !dbg !974
  %15 = load ptr, ptr %data23, align 8, !dbg !974
  %16 = ptrtoint ptr %15 to i32, !dbg !974
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13, !dbg !974
  %17 = ptrtoint ptr %arrayidx to i32, !dbg !974
  call void @__asan_load4_noabort(i32 %17), !dbg !974
  %18 = load i32, ptr %arrayidx, align 4, !dbg !974
  %add = add i32 %18, %16, !dbg !974
  %19 = inttoptr i32 %add to ptr, !dbg !974
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.83, align 8
  %20 = add i64 %gcov_ctr.i, 1
  store i64 %20, ptr @__llvm_gcov_ctr.83, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.87, align 8
  %21 = add i64 %gcov_ctr.i.i, 1
  store i64 %21, ptr @__llvm_gcov_ctr.87, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %19, i32 noundef 4) #15, !dbg !975
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %22 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %22, ptr @__llvm_gcov_ctr.42, align 8
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.88, align 8
  %23 = add i64 %gcov_ctr.i2.i, 1
  store i64 %23, ptr @__llvm_gcov_ctr.88, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !978, !srcloc !793
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.90, align 8
  %24 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %24, ptr @__llvm_gcov_ctr.90, align 8
  tail call void @llvm.prefetch.p0(ptr %19, i32 1, i32 3, i32 1) #15, !dbg !981
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #15, !dbg !981, !srcloc !798
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %25, 0, !dbg !981
  %gcov_ctr.i.i3.i = load i64, ptr @__llvm_gcov_ctr.89, align 8, !dbg !983
  %26 = add i64 %gcov_ctr.i.i3.i, 1, !dbg !983
  store i64 %26, ptr @__llvm_gcov_ctr.89, align 8, !dbg !983
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !983, !srcloc !800
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i), !dbg !984
  %cmp27 = icmp eq i32 %asmresult.i.i.i.i, 1, !dbg !984
  br i1 %cmp27, label %do.body36, label %do.end16.out_crit_edge, !dbg !984, !prof !150

do.end16.out_crit_edge:                           ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13, !dbg !984
  br label %out, !dbg !984

do.body36:                                        ; preds = %do.end16
  %last_func_repeats = getelementptr inbounds %struct.trace_array, ptr %1, i32 0, i32 50, !dbg !985
  %27 = ptrtoint ptr %last_func_repeats to i32, !dbg !985
  call void @__asan_load4_noabort(i32 %27), !dbg !985
  %28 = load ptr, ptr %last_func_repeats, align 4, !dbg !985
  %29 = ptrtoint ptr %28 to i32, !dbg !985
  %30 = ptrtoint ptr %arrayidx to i32, !dbg !985
  call void @__asan_load4_noabort(i32 %30), !dbg !985
  %31 = load i32, ptr %arrayidx, align 4, !dbg !985
  %add44 = add i32 %31, %29, !dbg !985
  %32 = inttoptr i32 %add44 to ptr, !dbg !985
  %33 = ptrtoint ptr %32 to i32, !dbg !986
  call void @__asan_load4_noabort(i32 %33), !dbg !986
  %34 = load i32, ptr %32, align 8, !dbg !986
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %ip), !dbg !988
  %cmp.i = icmp eq i32 %34, %ip, !dbg !988
  br i1 %cmp.i, label %land.lhs.true.i, label %do.body36.if.end47_crit_edge, !dbg !989

do.body36.if.end47_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13, !dbg !989
  br label %if.end47, !dbg !989

land.lhs.true.i:                                  ; preds = %do.body36
  %gcov_ctr.i128 = load i64, ptr @__llvm_gcov_ctr.93, align 16, !dbg !990
  %35 = add i64 %gcov_ctr.i128, 1, !dbg !990
  store i64 %35, ptr @__llvm_gcov_ctr.93, align 16, !dbg !990
  %parent_ip2.i = getelementptr inbounds %struct.trace_func_repeats, ptr %32, i32 0, i32 1, !dbg !991
  %36 = ptrtoint ptr %parent_ip2.i to i32, !dbg !991
  call void @__asan_load4_noabort(i32 %36), !dbg !991
  %37 = load i32, ptr %parent_ip2.i, align 4, !dbg !991
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %parent_ip), !dbg !992
  %cmp3.i = icmp eq i32 %37, %parent_ip, !dbg !992
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.end47_crit_edge, !dbg !993

land.lhs.true.i.if.end47_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !993
  br label %if.end47, !dbg !993

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %gcov_ctr7.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 1), align 8, !dbg !994
  %38 = add i64 %gcov_ctr7.i, 1, !dbg !994
  store i64 %38, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 1), align 8, !dbg !994
  %count.i = getelementptr inbounds %struct.trace_func_repeats, ptr %32, i32 0, i32 2, !dbg !995
  %39 = ptrtoint ptr %count.i to i32, !dbg !995
  call void @__asan_load4_noabort(i32 %39), !dbg !995
  %40 = load i32, ptr %count.i, align 8, !dbg !995
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %40), !dbg !996
  %cmp5.i = icmp ult i32 %40, 65535, !dbg !996
  br i1 %cmp5.i, label %if.then46, label %land.lhs.true4.i.if.end47_crit_edge, !dbg !997

land.lhs.true4.i.if.end47_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !997
  br label %if.end47, !dbg !997

if.then46:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !998
  %gcov_ctr8.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 2), align 16, !dbg !998
  %41 = add i64 %gcov_ctr8.i, 1, !dbg !998
  store i64 %41, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 2), align 16, !dbg !998
  %buffer.i = getelementptr inbounds %struct.trace_array, ptr %1, i32 0, i32 2, i32 1, !dbg !999
  %42 = ptrtoint ptr %buffer.i to i32, !dbg !999
  call void @__asan_load4_noabort(i32 %42), !dbg !999
  %43 = load ptr, ptr %buffer.i, align 4, !dbg !999
  %call.i = tail call i64 @ring_buffer_time_stamp(ptr noundef %43) #15, !dbg !1000
  %ts_last_call.i = getelementptr inbounds %struct.trace_func_repeats, ptr %32, i32 0, i32 3, !dbg !1001
  %44 = ptrtoint ptr %ts_last_call.i to i32, !dbg !1002
  call void @__asan_store8_noabort(i32 %44), !dbg !1002
  store i64 %call.i, ptr %ts_last_call.i, align 8, !dbg !1002
  %45 = ptrtoint ptr %count.i to i32, !dbg !1003
  call void @__asan_load4_noabort(i32 %45), !dbg !1003
  %46 = load i32, ptr %count.i, align 8, !dbg !1003
  %inc.i = add i32 %46, 1, !dbg !1003
  store i32 %inc.i, ptr %count.i, align 8, !dbg !1003
  br label %out, !dbg !1004

if.end47:                                         ; preds = %land.lhs.true4.i.if.end47_crit_edge, %land.lhs.true.i.if.end47_crit_edge, %do.body36.if.end47_crit_edge
  %gcov_ctr9.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 3), align 8, !dbg !1005
  %47 = add i64 %gcov_ctr9.i, 1, !dbg !1005
  store i64 %47, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 3), align 8, !dbg !1005
  %gcov_ctr95 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.81, i32 0, i32 3), align 8, !dbg !1006
  %48 = add i64 %gcov_ctr95, 1, !dbg !1006
  store i64 %48, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.81, i32 0, i32 3), align 8, !dbg !1006
  %gcov_ctr.i129 = load i64, ptr @__llvm_gcov_ctr.39, align 8
  %49 = add i64 %gcov_ctr.i129, 1
  store i64 %49, ptr @__llvm_gcov_ctr.39, align 8
  %gcov_ctr.i.i130 = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %50 = add i64 %gcov_ctr.i.i130, 1
  store i64 %50, ptr @__llvm_gcov_ctr.40, align 8
  %and.i.i = lshr i32 %6, 7, !dbg !1007
  %and.i.lobit.i = and i32 %and.i.i, 1, !dbg !1007
  %call2.i = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %and.i.lobit.i) #15, !dbg !1009
  %gcov_ctr.i131 = load i64, ptr @__llvm_gcov_ctr.94, align 8
  %51 = add i64 %gcov_ctr.i131, 1
  store i64 %51, ptr @__llvm_gcov_ctr.94, align 8
  %count.i132 = getelementptr inbounds %struct.trace_func_repeats, ptr %32, i32 0, i32 2, !dbg !1010
  %52 = ptrtoint ptr %count.i132 to i32, !dbg !1010
  call void @__asan_load4_noabort(i32 %52), !dbg !1010
  %53 = load i32, ptr %count.i132, align 8, !dbg !1010
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53), !dbg !1012
  %tobool.not.i = icmp eq i32 %53, 0, !dbg !1012
  br i1 %tobool.not.i, label %if.end47.process_repeats.exit_crit_edge, label %if.then.i133, !dbg !1012

if.end47.process_repeats.exit_crit_edge:          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13, !dbg !1012
  br label %process_repeats.exit, !dbg !1012

if.then.i133:                                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13, !dbg !1013
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.94, i32 0, i32 1), align 8, !dbg !1013
  %54 = add i64 %gcov_ctr4.i, 1, !dbg !1013
  store i64 %54, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.94, i32 0, i32 1), align 8, !dbg !1013
  tail call void @trace_last_func_repeats(ptr noundef %1, ptr noundef %32, i32 noundef %call2.i) #15, !dbg !1014
  %55 = ptrtoint ptr %count.i132 to i32, !dbg !1015
  call void @__asan_store4_noabort(i32 %55), !dbg !1015
  store i32 0, ptr %count.i132, align 8, !dbg !1015
  br label %process_repeats.exit, !dbg !1016

process_repeats.exit:                             ; preds = %if.then.i133, %if.end47.process_repeats.exit_crit_edge
  %56 = ptrtoint ptr %32 to i32, !dbg !1017
  call void @__asan_store4_noabort(i32 %56), !dbg !1017
  store i32 %ip, ptr %32, align 8, !dbg !1017
  %parent_ip3.i = getelementptr inbounds %struct.trace_func_repeats, ptr %32, i32 0, i32 1, !dbg !1018
  %57 = ptrtoint ptr %parent_ip3.i to i32, !dbg !1019
  call void @__asan_store4_noabort(i32 %57), !dbg !1019
  store i32 %parent_ip, ptr %parent_ip3.i, align 4, !dbg !1019
  tail call void @trace_function(ptr noundef %1, i32 noundef %ip, i32 noundef %parent_ip, i32 noundef %call2.i) #15, !dbg !1020
  tail call void @__trace_stack(ptr noundef %1, i32 noundef %call2.i, i32 noundef 3) #15, !dbg !1021
  br label %out, !dbg !1022

out:                                              ; preds = %process_repeats.exit, %if.then46, %do.end16.out_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.81, i32 0, i32 2), %if.then46 ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.81, i32 0, i32 4), %process_repeats.exit ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.81, i32 0, i32 4), %do.end16.out_crit_edge ]
  %58 = ptrtoint ptr %.sink to i32, !dbg !962
  call void @__asan_load8_noabort(i32 %58), !dbg !962
  %gcov_ctr96 = load i64, ptr %.sink, align 16, !dbg !962
  %59 = add i64 %gcov_ctr96, 1, !dbg !962
  store i64 %59, ptr %.sink, align 16, !dbg !962
  %gcov_ctr.i118 = load i64, ptr @__llvm_gcov_ctr.84, align 8
  %60 = add i64 %gcov_ctr.i118, 1
  store i64 %60, ptr @__llvm_gcov_ctr.84, align 8
  %gcov_ctr.i.i119 = load i64, ptr @__llvm_gcov_ctr.87, align 8
  %61 = add i64 %gcov_ctr.i.i119, 1
  store i64 %61, ptr @__llvm_gcov_ctr.87, align 8
  %call.i.i120 = tail call zeroext i1 @__kasan_check_write(ptr noundef %19, i32 noundef 4) #15, !dbg !1023
  %gcov_ctr.i.i.i121 = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %62 = add i64 %gcov_ctr.i.i.i121, 1
  store i64 %62, ptr @__llvm_gcov_ctr.42, align 8
  %gcov_ctr.i2.i122 = load i64, ptr @__llvm_gcov_ctr.91, align 8
  %63 = add i64 %gcov_ctr.i2.i122, 1
  store i64 %63, ptr @__llvm_gcov_ctr.91, align 8
  %gcov_ctr.i.i3.i123 = load i64, ptr @__llvm_gcov_ctr.92, align 8
  %64 = add i64 %gcov_ctr.i.i3.i123, 1
  store i64 %64, ptr @__llvm_gcov_ctr.92, align 8
  tail call void @llvm.prefetch.p0(ptr %19, i32 1, i32 3, i32 1) #15, !dbg !1026
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #15, !dbg !1026, !srcloc !818
  %gcov_ctr.i135 = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %66 = add i64 %gcov_ctr.i135, 1
  store i64 %66, ptr @__llvm_gcov_ctr.40, align 8
  br i1 %tobool12.not, label %if.then60, label %out.do.body62_crit_edge, !dbg !1029

out.do.body62_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13, !dbg !1029
  br label %do.body62, !dbg !1029

if.then60:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13, !dbg !1029
  %gcov_ctr97 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.81, i32 0, i32 5), align 8, !dbg !1029
  %67 = add i64 %gcov_ctr97, 1, !dbg !1029
  store i64 %67, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.81, i32 0, i32 5), align 8, !dbg !1029
  tail call void @trace_hardirqs_on() #15, !dbg !1029
  br label %do.body62, !dbg !1029

do.body62:                                        ; preds = %if.then60, %out.do.body62_crit_edge
  %gcov_ctr.i137 = load i64, ptr @__llvm_gcov_ctr.85, align 8, !dbg !1030
  %68 = add i64 %gcov_ctr.i137, 1, !dbg !1030
  store i64 %68, ptr @__llvm_gcov_ctr.85, align 8, !dbg !1030
  %gcov_ctr.i.i138 = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %69 = add i64 %gcov_ctr.i.i138, 1
  store i64 %69, ptr @__llvm_gcov_ctr.38, align 8
  %70 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !dbg !1032, !srcloc !185
  %gcov_ctr.i2.i139 = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %71 = add i64 %gcov_ctr.i2.i139, 1
  store i64 %71, ptr @__llvm_gcov_ctr.40, align 8
  %and.i.i140 = and i32 %70, 128, !dbg !1034
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i140), !dbg !1029
  %tobool70.not = icmp eq i32 %and.i.i140, 0, !dbg !1029
  br i1 %tobool70.not, label %if.then79, label %do.body62.do.end82_crit_edge, !dbg !1029, !prof !111

do.body62.do.end82_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #13, !dbg !1029
  br label %do.end82, !dbg !1029

if.then79:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #13, !dbg !1029
  %gcov_ctr98 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.81, i32 0, i32 6), align 16, !dbg !1029
  %72 = add i64 %gcov_ctr98, 1, !dbg !1029
  store i64 %72, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.81, i32 0, i32 6), align 16, !dbg !1029
  tail call void @warn_bogus_irq_restore() #15, !dbg !1029
  br label %do.end82, !dbg !1029

do.end82:                                         ; preds = %if.then79, %do.body62.do.end82_crit_edge
  %gcov_ctr.i141 = load i64, ptr @__llvm_gcov_ctr.86, align 8
  %73 = add i64 %gcov_ctr.i141, 1
  store i64 %73, ptr @__llvm_gcov_ctr.86, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #15, !dbg !1036, !srcloc !831
  br label %cleanup, !dbg !1038

cleanup:                                          ; preds = %do.end82, %if.then
  ret void, !dbg !1038
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ring_buffer_time_stamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_last_func_repeats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_ftrace_function(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_stop_cmdline_record() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_reset_array_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_ftrace_function(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_reset_online_cpus(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #9 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 -910977724) #15
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #15
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #15
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 84
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #13
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @llvm_gcda_summary_info() #15
  tail call void @llvm_gcda_end_file() #15
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.13, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.14, i8 0, i64 40, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.15, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.16, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.17, align 8
  store i64 0, ptr @__llvm_gcov_ctr.18, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.19, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.20, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.21, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @__llvm_gcov_ctr.22, i8 0, i64 216, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.23, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.24, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.25, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.26, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.27, align 8
  store i64 0, ptr @__llvm_gcov_ctr.28, align 8
  store i64 0, ptr @__llvm_gcov_ctr.29, align 8
  store i64 0, ptr @__llvm_gcov_ctr.30, align 8
  store i64 0, ptr @__llvm_gcov_ctr.31, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.32, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.33, align 8
  store i64 0, ptr @__llvm_gcov_ctr.34, align 8
  store i64 0, ptr @__llvm_gcov_ctr.35, align 8
  store i64 0, ptr @__llvm_gcov_ctr.36, align 8
  store i64 0, ptr @__llvm_gcov_ctr.37, align 8
  store i64 0, ptr @__llvm_gcov_ctr.38, align 8
  store i64 0, ptr @__llvm_gcov_ctr.39, align 8
  store i64 0, ptr @__llvm_gcov_ctr.40, align 8
  store i64 0, ptr @__llvm_gcov_ctr.41, align 8
  store i64 0, ptr @__llvm_gcov_ctr.42, align 8
  store i64 0, ptr @__llvm_gcov_ctr.43, align 8
  store i64 0, ptr @__llvm_gcov_ctr.44, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.45, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.46, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.47, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.48, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.49, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.50, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.51, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.52, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.53, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.54, align 8
  store i64 0, ptr @__llvm_gcov_ctr.55, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.56, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.57, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.58, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.59, i8 0, i64 64, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.60, align 8
  store i64 0, ptr @__llvm_gcov_ctr.61, align 8
  store i64 0, ptr @__llvm_gcov_ctr.62, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.63, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.64, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.65, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.66, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.67, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.68, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.69, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.70, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.71, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.72, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.73, align 8
  store i64 0, ptr @__llvm_gcov_ctr.74, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.75, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.76, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.77, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.78, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.79, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.80, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.81, i8 0, i64 64, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.82, align 8
  store i64 0, ptr @__llvm_gcov_ctr.83, align 8
  store i64 0, ptr @__llvm_gcov_ctr.84, align 8
  store i64 0, ptr @__llvm_gcov_ctr.85, align 8
  store i64 0, ptr @__llvm_gcov_ctr.86, align 8
  store i64 0, ptr @__llvm_gcov_ctr.87, align 8
  store i64 0, ptr @__llvm_gcov_ctr.88, align 8
  store i64 0, ptr @__llvm_gcov_ctr.89, align 8
  store i64 0, ptr @__llvm_gcov_ctr.90, align 8
  store i64 0, ptr @__llvm_gcov_ctr.91, align 8
  store i64 0, ptr @__llvm_gcov_ctr.92, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.93, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.94, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.95, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #9 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #15
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { noinline nounwind uwtable(sync) }
attributes #10 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nounwind uwtable(sync) }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind }
attributes #16 = { cold }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.named.register.sp = !{!2}
!llvm.asan.globals = !{!3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.gcov = !{!69}
!llvm.ident = !{!70}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_functions.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{!"sp"}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../kernel/trace/trace_functions.c", i32 907, i32 12}
!5 = !{ptr @ftrace_traceoff_cmd, !6, !"ftrace_traceoff_cmd", i1 false, i1 false}
!6 = !{!"../kernel/trace/trace_functions.c", i32 906, i32 35}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../kernel/trace/trace_functions.c", i32 845, i32 18}
!9 = !{ptr @traceon_count_probe_ops, !10, !"traceon_count_probe_ops", i1 false, i1 false}
!10 = !{!"../kernel/trace/trace_functions.c", i32 748, i32 32}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/trace/trace_functions.c", i32 668, i32 16}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../kernel/trace/trace_functions.c", i32 674, i32 17}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../kernel/trace/trace_functions.c", i32 676, i32 15}
!17 = !{ptr @traceon_probe_ops, !18, !"traceon_probe_ops", i1 false, i1 false}
!18 = !{!"../kernel/trace/trace_functions.c", i32 781, i32 32}
!19 = !{ptr @traceoff_count_probe_ops, !20, !"traceoff_count_probe_ops", i1 false, i1 false}
!20 = !{!"../kernel/trace/trace_functions.c", i32 755, i32 32}
!21 = !{ptr @traceoff_probe_ops, !22, !"traceoff_probe_ops", i1 false, i1 false}
!22 = !{!"../kernel/trace/trace_functions.c", i32 786, i32 32}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../kernel/trace/trace_functions.c", i32 816, i32 26}
!25 = !{ptr @ftrace_traceon_cmd, !26, !"ftrace_traceon_cmd", i1 false, i1 false}
!26 = !{!"../kernel/trace/trace_functions.c", i32 901, i32 35}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/trace/trace_functions.c", i32 912, i32 12}
!29 = !{ptr @ftrace_stacktrace_cmd, !30, !"ftrace_stacktrace_cmd", i1 false, i1 false}
!30 = !{!"../kernel/trace/trace_functions.c", i32 911, i32 35}
!31 = !{ptr @stacktrace_count_probe_ops, !32, !"stacktrace_count_probe_ops", i1 false, i1 false}
!32 = !{!"../kernel/trace/trace_functions.c", i32 762, i32 32}
!33 = !{ptr @stacktrace_probe_ops, !34, !"stacktrace_probe_ops", i1 false, i1 false}
!34 = !{!"../kernel/trace/trace_functions.c", i32 791, i32 32}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../kernel/trace/trace_functions.c", i32 917, i32 12}
!37 = !{ptr @ftrace_dump_cmd, !38, !"ftrace_dump_cmd", i1 false, i1 false}
!38 = !{!"../kernel/trace/trace_functions.c", i32 916, i32 35}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/trace/trace_functions.c", i32 882, i32 9}
!41 = !{ptr @dump_probe_ops, !42, !"dump_probe_ops", i1 false, i1 false}
!42 = !{!"../kernel/trace/trace_functions.c", i32 769, i32 32}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../kernel/trace/trace_functions.c", i32 922, i32 12}
!45 = !{ptr @ftrace_cpudump_cmd, !46, !"ftrace_cpudump_cmd", i1 false, i1 false}
!46 = !{!"../kernel/trace/trace_functions.c", i32 921, i32 35}
!47 = !{ptr @cpudump_probe_ops, !48, !"cpudump_probe_ops", i1 false, i1 false}
!48 = !{!"../kernel/trace/trace_functions.c", i32 776, i32 32}
!49 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../kernel/trace/trace_functions.c", i32 430, i32 11}
!51 = !{ptr @function_trace, !52, !"function_trace", i1 false, i1 false}
!52 = !{!"../kernel/trace/trace_functions.c", i32 428, i32 22}
!53 = !{ptr @func_flags, !54, !"func_flags", i1 false, i1 false}
!54 = !{!"../kernel/trace/trace_functions.c", i32 375, i32 28}
!55 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../kernel/trace/trace_functions.c", i32 369, i32 4}
!57 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../kernel/trace/trace_functions.c", i32 371, i32 4}
!59 = !{ptr @func_opts, !60, !"func_opts", i1 false, i1 false}
!60 = !{!"../kernel/trace/trace_functions.c", i32 367, i32 26}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_functions.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_functions.gcda", !0}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = distinct !DISubprogram(name: "ftrace_allocate_ftrace_ops", scope: !1, file: !1, line: 52, type: !72, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!72 = !DISubroutineType(types: !73)
!73 = !{}
!74 = !DILocation(line: 53, scope: !71)
!75 = !DILocation(line: 57, column: 10, scope: !71)
!76 = !DILocation(line: 57, column: 16, scope: !71)
!77 = !DILocation(line: 57, column: 6, scope: !71)
!78 = !DILocation(line: 58, column: 3, scope: !71)
!79 = !DILocation(line: 387, column: 26, scope: !80, inlinedAt: !82)
!80 = distinct !DISubprogram(name: "__kmalloc_index", scope: !81, file: !81, line: 369, type: !72, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!81 = !DIFile(filename: "../include/linux/slab.h", directory: "/llk/linux-5.17/build_arm_allyes")
!82 = distinct !DILocation(line: 576, column: 11, scope: !83, inlinedAt: !84)
!83 = distinct !DISubprogram(name: "kmalloc", scope: !81, file: !81, line: 567, type: !72, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!84 = distinct !DILocation(line: 714, column: 9, scope: !85, inlinedAt: !86)
!85 = distinct !DISubprogram(name: "kzalloc", scope: !81, file: !81, line: 712, type: !72, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!86 = distinct !DILocation(line: 60, column: 8, scope: !71)
!87 = !DILocation(line: 582, column: 33, scope: !83, inlinedAt: !84)
!88 = !DILocation(line: 339, column: 3, scope: !89, inlinedAt: !90)
!89 = distinct !DISubprogram(name: "kmalloc_type", scope: !81, file: !81, line: 332, type: !72, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!90 = distinct !DILocation(line: 582, column: 20, scope: !83, inlinedAt: !84)
!91 = !DILocation(line: 582, column: 5, scope: !83, inlinedAt: !84)
!92 = !DILocation(line: 581, column: 10, scope: !83, inlinedAt: !84)
!93 = !DILocation(line: 61, column: 7, scope: !71)
!94 = !DILocation(line: 61, column: 6, scope: !71)
!95 = !DILocation(line: 62, column: 3, scope: !71)
!96 = !DILocation(line: 65, column: 2, scope: !71)
!97 = !DILocation(line: 65, column: 12, scope: !71)
!98 = !DILocation(line: 66, column: 7, scope: !71)
!99 = !DILocation(line: 66, column: 13, scope: !71)
!100 = !DILocation(line: 68, column: 6, scope: !71)
!101 = !DILocation(line: 68, column: 10, scope: !71)
!102 = !DILocation(line: 69, column: 7, scope: !71)
!103 = !DILocation(line: 69, column: 15, scope: !71)
!104 = !DILocation(line: 71, column: 2, scope: !71)
!105 = !DILocation(line: 0, scope: !71)
!106 = !DILocation(line: 72, column: 1, scope: !71)
!107 = distinct !DISubprogram(name: "function_trace_call", scope: !1, file: !1, line: 172, type: !72, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!108 = !DILocation(line: 174, scope: !107)
!109 = !DILocation(line: 175, column: 31, scope: !107)
!110 = !DILocation(line: 181, column: 6, scope: !107)
!111 = !{!"branch_weights", i32 1, i32 2000}
!112 = !DILocation(line: 0, scope: !107)
!113 = !DILocation(line: 182, column: 3, scope: !107)
!114 = !DILocation(line: 104, column: 4, scope: !115, inlinedAt: !117)
!115 = distinct !DISubprogram(name: "current_thread_info", scope: !116, file: !116, line: 101, type: !72, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!116 = !DIFile(filename: "../arch/arm/include/asm/thread_info.h", directory: "/llk/linux-5.17/build_arm_allyes")
!117 = distinct !DILocation(line: 144, column: 21, scope: !118, inlinedAt: !120)
!118 = distinct !DISubprogram(name: "trace_test_and_set_recursion", scope: !119, file: !119, line: 141, type: !72, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!119 = !DIFile(filename: "../include/linux/trace_recursion.h", directory: "/llk/linux-5.17/build_arm_allyes")
!120 = distinct !DILocation(line: 195, column: 9, scope: !121, inlinedAt: !122)
!121 = distinct !DISubprogram(name: "ftrace_test_recursion_trylock", scope: !119, file: !119, line: 192, type: !72, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!122 = distinct !DILocation(line: 184, column: 8, scope: !107)
!123 = !DILocation(line: 104, column: 26, scope: !115, inlinedAt: !117)
!124 = !DILocation(line: 103, column: 9, scope: !115, inlinedAt: !117)
!125 = !DILocation(line: 144, column: 21, scope: !118, inlinedAt: !120)
!126 = !DILocation(line: 104, column: 4, scope: !115, inlinedAt: !127)
!127 = distinct !DILocation(line: 11, column: 9, scope: !128, inlinedAt: !130)
!128 = distinct !DISubprogram(name: "preempt_count", scope: !129, file: !129, line: 9, type: !72, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!129 = !DIFile(filename: "../include/asm-generic/preempt.h", directory: "/llk/linux-5.17/build_arm_allyes")
!130 = distinct !DILocation(line: 91, column: 21, scope: !131, inlinedAt: !133)
!131 = distinct !DISubprogram(name: "interrupt_context_level", scope: !132, file: !132, line: 89, type: !72, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!132 = !DIFile(filename: "../include/linux/preempt.h", directory: "/llk/linux-5.17/build_arm_allyes")
!133 = distinct !DILocation(line: 119, column: 22, scope: !134, inlinedAt: !135)
!134 = distinct !DISubprogram(name: "trace_get_context_bit", scope: !119, file: !119, line: 117, type: !72, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!135 = distinct !DILocation(line: 147, column: 8, scope: !118, inlinedAt: !120)
!136 = !DILocation(line: 104, column: 26, scope: !115, inlinedAt: !127)
!137 = !DILocation(line: 103, column: 9, scope: !115, inlinedAt: !127)
!138 = !DILocation(line: 11, column: 9, scope: !128, inlinedAt: !130)
!139 = !DILocation(line: 94, column: 17, scope: !131, inlinedAt: !133)
!140 = !DILocation(line: 94, column: 12, scope: !131, inlinedAt: !133)
!141 = !DILocation(line: 95, column: 17, scope: !131, inlinedAt: !133)
!142 = !DILocation(line: 95, column: 12, scope: !131, inlinedAt: !133)
!143 = !DILocation(line: 95, column: 8, scope: !131, inlinedAt: !133)
!144 = !DILocation(line: 96, column: 17, scope: !131, inlinedAt: !133)
!145 = !DILocation(line: 96, column: 12, scope: !131, inlinedAt: !133)
!146 = !DILocation(line: 96, column: 11, scope: !131, inlinedAt: !133)
!147 = !DILocation(line: 96, column: 8, scope: !131, inlinedAt: !133)
!148 = !DILocation(line: 121, column: 26, scope: !134, inlinedAt: !135)
!149 = !DILocation(line: 148, column: 6, scope: !118, inlinedAt: !120)
!150 = !{!"branch_weights", i32 2000, i32 1}
!151 = !DILocation(line: 158, column: 11, scope: !118, inlinedAt: !120)
!152 = !DILocation(line: 158, column: 7, scope: !118, inlinedAt: !120)
!153 = !DILocation(line: 159, column: 4, scope: !118, inlinedAt: !120)
!154 = !DILocation(line: 162, column: 2, scope: !118, inlinedAt: !120)
!155 = !DILocation(line: 0, scope: !118, inlinedAt: !120)
!156 = !DILocation(line: 186, column: 3, scope: !107)
!157 = !DILocation(line: 164, column: 11, scope: !118, inlinedAt: !120)
!158 = !DILocation(line: 164, column: 6, scope: !118, inlinedAt: !120)
!159 = !DILocation(line: 165, column: 2, scope: !118, inlinedAt: !120)
!160 = !DILocation(line: 165, column: 11, scope: !118, inlinedAt: !120)
!161 = !DILocation(line: 165, column: 27, scope: !118, inlinedAt: !120)
!162 = !DILocation(line: 166, column: 2, scope: !118, inlinedAt: !120)
!163 = !{i64 2153815553}
!164 = !DILocation(line: 16, column: 10, scope: !165, inlinedAt: !166)
!165 = distinct !DISubprogram(name: "preempt_count_ptr", scope: !129, file: !129, line: 14, type: !72, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!166 = distinct !DILocation(line: 54, column: 3, scope: !167, inlinedAt: !168)
!167 = distinct !DISubprogram(name: "__preempt_count_add", scope: !129, file: !129, line: 52, type: !72, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!168 = distinct !DILocation(line: 168, column: 2, scope: !118, inlinedAt: !120)
!169 = !DILocation(line: 104, column: 4, scope: !115, inlinedAt: !170)
!170 = distinct !DILocation(line: 16, column: 10, scope: !165, inlinedAt: !166)
!171 = !DILocation(line: 104, column: 26, scope: !115, inlinedAt: !170)
!172 = !DILocation(line: 103, column: 9, scope: !115, inlinedAt: !170)
!173 = !DILocation(line: 16, column: 33, scope: !165, inlinedAt: !166)
!174 = !DILocation(line: 54, column: 23, scope: !167, inlinedAt: !168)
!175 = !DILocation(line: 168, column: 2, scope: !118, inlinedAt: !120)
!176 = !{i64 2153815675}
!177 = !DILocation(line: 189, column: 2, scope: !178, inlinedAt: !180)
!178 = distinct !DISubprogram(name: "tracing_gen_ctx", scope: !179, file: !179, line: 185, type: !72, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!179 = !DIFile(filename: "../include/linux/trace_events.h", directory: "/llk/linux-5.17/build_arm_allyes")
!180 = distinct !DILocation(line: 188, column: 14, scope: !107)
!181 = !DILocation(line: 159, column: 2, scope: !182, inlinedAt: !184)
!182 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !183, file: !183, line: 156, type: !72, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!183 = !DIFile(filename: "../arch/arm/include/asm/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!184 = distinct !DILocation(line: 189, column: 2, scope: !178, inlinedAt: !180)
!185 = !{i64 1101156}
!186 = !DILocation(line: 181, column: 28, scope: !187, inlinedAt: !188)
!187 = distinct !DISubprogram(name: "tracing_gen_ctx_flags", scope: !179, file: !179, line: 179, type: !72, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!188 = distinct !DILocation(line: 190, column: 9, scope: !178, inlinedAt: !180)
!189 = !DILocation(line: 183, column: 9, scope: !187, inlinedAt: !188)
!190 = !DILocation(line: 104, column: 4, scope: !115, inlinedAt: !191)
!191 = distinct !DILocation(line: 190, column: 8, scope: !107)
!192 = !DILocation(line: 104, column: 26, scope: !115, inlinedAt: !191)
!193 = !DILocation(line: 103, column: 9, scope: !115, inlinedAt: !191)
!194 = !DILocation(line: 190, column: 8, scope: !107)
!195 = !DILocation(line: 191, column: 9, scope: !107)
!196 = !DILocation(line: 71, column: 2, scope: !197, inlinedAt: !199)
!197 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !198, file: !198, line: 69, type: !72, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!198 = !DIFile(filename: "../include/linux/instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!199 = distinct !DILocation(line: 27, column: 2, scope: !200, inlinedAt: !202)
!200 = distinct !DISubprogram(name: "atomic_read", scope: !201, file: !201, line: 25, type: !72, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!201 = !DIFile(filename: "../include/linux/atomic/atomic-instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!202 = distinct !DILocation(line: 192, column: 7, scope: !107)
!203 = !DILocation(line: 28, column: 9, scope: !200, inlinedAt: !202)
!204 = !DILocation(line: 192, column: 7, scope: !107)
!205 = !DILocation(line: 192, column: 6, scope: !107)
!206 = !DILocation(line: 193, column: 18, scope: !107)
!207 = !DILocation(line: 193, column: 3, scope: !107)
!208 = !DILocation(line: 195, column: 31, scope: !107)
!209 = !DILocation(line: 178, column: 2, scope: !210, inlinedAt: !211)
!210 = distinct !DISubprogram(name: "trace_clear_recursion", scope: !119, file: !119, line: 176, type: !72, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!211 = distinct !DILocation(line: 206, column: 2, scope: !212, inlinedAt: !213)
!212 = distinct !DISubprogram(name: "ftrace_test_recursion_unlock", scope: !119, file: !119, line: 204, type: !72, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!213 = distinct !DILocation(line: 195, column: 2, scope: !107)
!214 = !{i64 2153815985}
!215 = !DILocation(line: 16, column: 10, scope: !165, inlinedAt: !216)
!216 = distinct !DILocation(line: 59, column: 3, scope: !217, inlinedAt: !218)
!217 = distinct !DISubprogram(name: "__preempt_count_sub", scope: !129, file: !129, line: 57, type: !72, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!218 = distinct !DILocation(line: 178, column: 2, scope: !210, inlinedAt: !211)
!219 = !DILocation(line: 104, column: 4, scope: !115, inlinedAt: !220)
!220 = distinct !DILocation(line: 16, column: 10, scope: !165, inlinedAt: !216)
!221 = !DILocation(line: 104, column: 26, scope: !115, inlinedAt: !220)
!222 = !DILocation(line: 103, column: 9, scope: !115, inlinedAt: !220)
!223 = !DILocation(line: 16, column: 33, scope: !165, inlinedAt: !216)
!224 = !DILocation(line: 59, column: 23, scope: !217, inlinedAt: !218)
!225 = !DILocation(line: 179, column: 2, scope: !210, inlinedAt: !211)
!226 = !{i64 2153816046}
!227 = !DILocation(line: 180, column: 2, scope: !210, inlinedAt: !211)
!228 = !DILocation(line: 104, column: 4, scope: !115, inlinedAt: !229)
!229 = distinct !DILocation(line: 180, column: 2, scope: !210, inlinedAt: !211)
!230 = !DILocation(line: 104, column: 26, scope: !115, inlinedAt: !229)
!231 = !DILocation(line: 103, column: 9, scope: !115, inlinedAt: !229)
!232 = !DILocation(line: 196, column: 1, scope: !107)
!233 = distinct !DISubprogram(name: "ftrace_free_ftrace_ops", scope: !1, file: !1, line: 74, type: !72, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!234 = !DILocation(line: 75, scope: !233)
!235 = !DILocation(line: 76, column: 12, scope: !233)
!236 = !DILocation(line: 76, column: 2, scope: !233)
!237 = !DILocation(line: 77, column: 10, scope: !233)
!238 = !DILocation(line: 78, column: 1, scope: !233)
!239 = distinct !DISubprogram(name: "ftrace_create_function_files", scope: !1, file: !1, line: 80, type: !72, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!240 = !DILocation(line: 82, scope: !239)
!241 = !DILocation(line: 87, column: 10, scope: !239)
!242 = !DILocation(line: 87, column: 16, scope: !239)
!243 = !DILocation(line: 87, column: 6, scope: !239)
!244 = !DILocation(line: 88, column: 3, scope: !239)
!245 = !DILocation(line: 90, column: 11, scope: !239)
!246 = !DILocation(line: 90, column: 7, scope: !239)
!247 = !DILocation(line: 90, column: 6, scope: !239)
!248 = !DILocation(line: 91, column: 3, scope: !239)
!249 = !DILocation(line: 93, column: 29, scope: !239)
!250 = !DILocation(line: 93, column: 2, scope: !239)
!251 = !DILocation(line: 95, column: 2, scope: !239)
!252 = !DILocation(line: 0, scope: !239)
!253 = !DILocation(line: 96, column: 1, scope: !239)
!254 = distinct !DISubprogram(name: "ftrace_destroy_function_files", scope: !1, file: !1, line: 98, type: !72, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!255 = !DILocation(line: 99, scope: !254)
!256 = !DILocation(line: 100, column: 34, scope: !254)
!257 = !DILocation(line: 100, column: 2, scope: !254)
!258 = !DILocation(line: 76, column: 12, scope: !233, inlinedAt: !259)
!259 = distinct !DILocation(line: 101, column: 2, scope: !254)
!260 = !DILocation(line: 76, column: 2, scope: !233, inlinedAt: !259)
!261 = !DILocation(line: 77, column: 10, scope: !233, inlinedAt: !259)
!262 = !DILocation(line: 102, column: 1, scope: !254)
!263 = distinct !DISubprogram(name: "init_function_trace", scope: !1, file: !1, line: 970, type: !72, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!264 = !DILocation(line: 971, scope: !263)
!265 = !DILocation(line: 972, column: 2, scope: !263)
!266 = !DILocation(line: 973, column: 9, scope: !263)
!267 = !DILocation(line: 973, column: 2, scope: !263)
!268 = distinct !DISubprogram(name: "init_func_cmd_traceon", scope: !1, file: !1, line: 926, type: !72, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!269 = !DILocation(line: 927, scope: !268)
!270 = !DILocation(line: 930, column: 8, scope: !268)
!271 = !DILocation(line: 931, column: 6, scope: !268)
!272 = !DILocation(line: 932, column: 10, scope: !268)
!273 = !DILocation(line: 932, column: 3, scope: !268)
!274 = !DILocation(line: 934, column: 8, scope: !268)
!275 = !DILocation(line: 935, column: 6, scope: !268)
!276 = !DILocation(line: 936, column: 3, scope: !268)
!277 = !DILocation(line: 938, column: 8, scope: !268)
!278 = !DILocation(line: 939, column: 6, scope: !268)
!279 = !DILocation(line: 940, column: 3, scope: !268)
!280 = !DILocation(line: 942, column: 8, scope: !268)
!281 = !DILocation(line: 943, column: 6, scope: !268)
!282 = !DILocation(line: 944, column: 3, scope: !268)
!283 = !DILocation(line: 946, column: 8, scope: !268)
!284 = !DILocation(line: 947, column: 6, scope: !268)
!285 = !DILocation(line: 950, column: 2, scope: !268)
!286 = !DILocation(line: 953, column: 2, scope: !268)
!287 = !DILocation(line: 955, column: 2, scope: !268)
!288 = !DILocation(line: 957, column: 2, scope: !268)
!289 = !DILocation(line: 959, column: 2, scope: !268)
!290 = !DILocation(line: 961, column: 2, scope: !268)
!291 = !DILocation(line: 962, column: 1, scope: !268)
!292 = distinct !DISubprogram(name: "ftrace_trace_onoff_callback", scope: !1, file: !1, line: 836, type: !72, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!293 = !DILocation(line: 838, scope: !292)
!294 = !DILocation(line: 841, column: 7, scope: !292)
!295 = !DILocation(line: 841, column: 6, scope: !292)
!296 = !DILocation(line: 842, column: 3, scope: !292)
!297 = !DILocation(line: 845, column: 6, scope: !292)
!298 = !DILocation(line: 845, column: 29, scope: !292)
!299 = !DILocation(line: 846, column: 9, scope: !292)
!300 = !DILocation(line: 846, column: 3, scope: !292)
!301 = !DILocation(line: 848, column: 9, scope: !292)
!302 = !DILocation(line: 0, scope: !292)
!303 = !DILocation(line: 850, column: 9, scope: !292)
!304 = !DILocation(line: 850, column: 2, scope: !292)
!305 = !DILocation(line: 852, column: 1, scope: !292)
!306 = distinct !DISubprogram(name: "ftrace_trace_probe_callback", scope: !1, file: !1, line: 797, type: !72, scopeLine: 801, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!307 = !DILocation(line: 801, scope: !306)
!308 = !DILocation(line: 802, column: 2, scope: !306)
!309 = !DILocation(line: 802, column: 8, scope: !306)
!310 = !DILocation(line: 807, column: 7, scope: !306)
!311 = !DILocation(line: 807, column: 6, scope: !306)
!312 = !DILocation(line: 808, column: 3, scope: !306)
!313 = !DILocation(line: 810, column: 6, scope: !306)
!314 = !DILocation(line: 810, column: 14, scope: !306)
!315 = !DILocation(line: 811, column: 48, scope: !306)
!316 = !DILocation(line: 811, column: 52, scope: !306)
!317 = !DILocation(line: 811, column: 10, scope: !306)
!318 = !DILocation(line: 811, column: 3, scope: !306)
!319 = !DILocation(line: 813, column: 7, scope: !306)
!320 = !DILocation(line: 813, column: 6, scope: !306)
!321 = !DILocation(line: 814, column: 3, scope: !306)
!322 = !DILocation(line: 816, column: 11, scope: !306)
!323 = !DILocation(line: 818, column: 7, scope: !306)
!324 = !DILocation(line: 818, column: 6, scope: !306)
!325 = !DILocation(line: 819, column: 3, scope: !306)
!326 = !DILocation(line: 40, column: 10, scope: !327, inlinedAt: !329)
!327 = distinct !DISubprogram(name: "kstrtoul", scope: !328, file: !328, line: 30, type: !72, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!328 = !DIFile(filename: "../include/linux/kstrtox.h", directory: "/llk/linux-5.17/build_arm_allyes")
!329 = distinct !DILocation(line: 825, column: 8, scope: !306)
!330 = !DILocation(line: 826, column: 6, scope: !306)
!331 = !DILocation(line: 827, column: 10, scope: !306)
!332 = !DILocation(line: 827, column: 3, scope: !306)
!333 = !DILocation(line: 830, column: 54, scope: !306)
!334 = !DILocation(line: 830, column: 8, scope: !306)
!335 = !DILocation(line: 832, column: 13, scope: !306)
!336 = !DILocation(line: 832, column: 9, scope: !306)
!337 = !DILocation(line: 832, column: 19, scope: !306)
!338 = !DILocation(line: 0, scope: !306)
!339 = !DILocation(line: 833, column: 1, scope: !306)
!340 = distinct !DISubprogram(name: "ftrace_traceon_count", scope: !1, file: !1, line: 505, type: !72, scopeLine: 508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!341 = !DILocation(line: 508, scope: !340)
!342 = !DILocation(line: 481, column: 18, scope: !343, inlinedAt: !344)
!343 = distinct !DISubprogram(name: "update_traceon_count", scope: !1, file: !1, line: 443, type: !72, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!344 = distinct !DILocation(line: 509, column: 2, scope: !340)
!345 = !DILocation(line: 482, column: 14, scope: !343, inlinedAt: !344)
!346 = !DILocation(line: 484, column: 16, scope: !343, inlinedAt: !344)
!347 = !DILocation(line: 484, column: 6, scope: !343, inlinedAt: !344)
!348 = !DILocation(line: 0, scope: !340)
!349 = !DILocation(line: 485, column: 3, scope: !343, inlinedAt: !344)
!350 = !DILocation(line: 488, column: 2, scope: !343, inlinedAt: !344)
!351 = !{i64 2155305038}
!352 = !DILocation(line: 490, column: 14, scope: !343, inlinedAt: !344)
!353 = !DILocation(line: 490, column: 6, scope: !343, inlinedAt: !344)
!354 = !DILocation(line: 491, column: 3, scope: !343, inlinedAt: !344)
!355 = !DILocation(line: 494, column: 21, scope: !343, inlinedAt: !344)
!356 = !DILocation(line: 494, column: 3, scope: !343, inlinedAt: !344)
!357 = !DILocation(line: 499, column: 2, scope: !343, inlinedAt: !344)
!358 = !{i64 2155305194}
!359 = !DILocation(line: 501, column: 21, scope: !343, inlinedAt: !344)
!360 = !DILocation(line: 501, column: 9, scope: !343, inlinedAt: !344)
!361 = !DILocation(line: 502, column: 1, scope: !343, inlinedAt: !344)
!362 = !DILocation(line: 510, column: 1, scope: !340)
!363 = distinct !DISubprogram(name: "ftrace_count_init", scope: !1, file: !1, line: 719, type: !72, scopeLine: 721, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!364 = !DILocation(line: 721, scope: !363)
!365 = !DILocation(line: 722, column: 38, scope: !363)
!366 = !DILocation(line: 724, column: 7, scope: !363)
!367 = !DILocation(line: 724, column: 6, scope: !363)
!368 = !DILocation(line: 725, column: 12, scope: !363)
!369 = !DILocation(line: 726, column: 8, scope: !363)
!370 = !DILocation(line: 726, column: 7, scope: !363)
!371 = !DILocation(line: 727, column: 4, scope: !363)
!372 = !DILocation(line: 728, column: 11, scope: !363)
!373 = !DILocation(line: 728, column: 9, scope: !363)
!374 = !DILocation(line: 729, column: 2, scope: !363)
!375 = !DILocation(line: 0, scope: !363)
!376 = !DILocation(line: 731, column: 35, scope: !363)
!377 = !DILocation(line: 731, column: 9, scope: !363)
!378 = !DILocation(line: 731, column: 2, scope: !363)
!379 = !DILocation(line: 732, column: 1, scope: !363)
!380 = distinct !DISubprogram(name: "ftrace_count_free", scope: !1, file: !1, line: 735, type: !72, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!381 = !DILocation(line: 737, scope: !380)
!382 = !DILocation(line: 740, column: 7, scope: !380)
!383 = !DILocation(line: 740, column: 6, scope: !380)
!384 = !DILocation(line: 741, column: 27, scope: !380)
!385 = !DILocation(line: 741, column: 3, scope: !380)
!386 = !DILocation(line: 742, column: 3, scope: !380)
!387 = !DILocation(line: 745, column: 31, scope: !380)
!388 = !DILocation(line: 745, column: 2, scope: !380)
!389 = !DILocation(line: 746, column: 1, scope: !380)
!390 = distinct !DISubprogram(name: "ftrace_traceon_print", scope: !1, file: !1, line: 682, type: !72, scopeLine: 685, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!391 = !DILocation(line: 685, scope: !390)
!392 = !DILocation(line: 668, column: 26, scope: !393, inlinedAt: !394)
!393 = distinct !DISubprogram(name: "ftrace_probe_print", scope: !1, file: !1, line: 661, type: !72, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!394 = distinct !DILocation(line: 686, column: 9, scope: !390)
!395 = !DILocation(line: 668, column: 2, scope: !393, inlinedAt: !394)
!396 = !DILocation(line: 670, column: 6, scope: !393, inlinedAt: !394)
!397 = !DILocation(line: 671, column: 46, scope: !393, inlinedAt: !394)
!398 = !DILocation(line: 671, column: 19, scope: !393, inlinedAt: !394)
!399 = !DILocation(line: 673, column: 6, scope: !393, inlinedAt: !394)
!400 = !DILocation(line: 674, column: 14, scope: !393, inlinedAt: !394)
!401 = !DILocation(line: 674, column: 33, scope: !393, inlinedAt: !394)
!402 = !DILocation(line: 674, column: 3, scope: !393, inlinedAt: !394)
!403 = !DILocation(line: 676, column: 12, scope: !393, inlinedAt: !394)
!404 = !DILocation(line: 676, column: 3, scope: !393, inlinedAt: !394)
!405 = !DILocation(line: 686, column: 2, scope: !390)
!406 = distinct !DISubprogram(name: "ftrace_traceon", scope: !1, file: !1, line: 521, type: !72, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!407 = !DILocation(line: 524, scope: !406)
!408 = !DILocation(line: 525, column: 6, scope: !406)
!409 = !DILocation(line: 526, column: 3, scope: !406)
!410 = !DILocation(line: 528, column: 20, scope: !406)
!411 = !DILocation(line: 528, column: 2, scope: !406)
!412 = !DILocation(line: 529, column: 1, scope: !406)
!413 = distinct !DISubprogram(name: "ftrace_traceoff_count", scope: !1, file: !1, line: 513, type: !72, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!414 = !DILocation(line: 516, scope: !413)
!415 = !DILocation(line: 481, column: 18, scope: !343, inlinedAt: !416)
!416 = distinct !DILocation(line: 517, column: 2, scope: !413)
!417 = !DILocation(line: 482, column: 14, scope: !343, inlinedAt: !416)
!418 = !DILocation(line: 484, column: 16, scope: !343, inlinedAt: !416)
!419 = !DILocation(line: 484, column: 6, scope: !343, inlinedAt: !416)
!420 = !DILocation(line: 0, scope: !413)
!421 = !DILocation(line: 485, column: 3, scope: !343, inlinedAt: !416)
!422 = !DILocation(line: 488, column: 2, scope: !343, inlinedAt: !416)
!423 = !DILocation(line: 490, column: 14, scope: !343, inlinedAt: !416)
!424 = !DILocation(line: 490, column: 6, scope: !343, inlinedAt: !416)
!425 = !DILocation(line: 491, column: 3, scope: !343, inlinedAt: !416)
!426 = !DILocation(line: 496, column: 22, scope: !343, inlinedAt: !416)
!427 = !DILocation(line: 496, column: 3, scope: !343, inlinedAt: !416)
!428 = !DILocation(line: 499, column: 2, scope: !343, inlinedAt: !416)
!429 = !DILocation(line: 501, column: 21, scope: !343, inlinedAt: !416)
!430 = !DILocation(line: 501, column: 9, scope: !343, inlinedAt: !416)
!431 = !DILocation(line: 502, column: 1, scope: !343, inlinedAt: !416)
!432 = !DILocation(line: 518, column: 1, scope: !413)
!433 = distinct !DISubprogram(name: "ftrace_traceoff_print", scope: !1, file: !1, line: 690, type: !72, scopeLine: 692, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!434 = !DILocation(line: 692, scope: !433)
!435 = !DILocation(line: 668, column: 26, scope: !393, inlinedAt: !436)
!436 = distinct !DILocation(line: 693, column: 9, scope: !433)
!437 = !DILocation(line: 668, column: 2, scope: !393, inlinedAt: !436)
!438 = !DILocation(line: 670, column: 6, scope: !393, inlinedAt: !436)
!439 = !DILocation(line: 671, column: 46, scope: !393, inlinedAt: !436)
!440 = !DILocation(line: 671, column: 19, scope: !393, inlinedAt: !436)
!441 = !DILocation(line: 673, column: 6, scope: !393, inlinedAt: !436)
!442 = !DILocation(line: 674, column: 14, scope: !393, inlinedAt: !436)
!443 = !DILocation(line: 674, column: 33, scope: !393, inlinedAt: !436)
!444 = !DILocation(line: 674, column: 3, scope: !393, inlinedAt: !436)
!445 = !DILocation(line: 676, column: 12, scope: !393, inlinedAt: !436)
!446 = !DILocation(line: 676, column: 3, scope: !393, inlinedAt: !436)
!447 = !DILocation(line: 693, column: 2, scope: !433)
!448 = distinct !DISubprogram(name: "ftrace_traceoff", scope: !1, file: !1, line: 532, type: !72, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!449 = !DILocation(line: 535, scope: !448)
!450 = !DILocation(line: 536, column: 7, scope: !448)
!451 = !DILocation(line: 536, column: 6, scope: !448)
!452 = !DILocation(line: 537, column: 3, scope: !448)
!453 = !DILocation(line: 539, column: 21, scope: !448)
!454 = !DILocation(line: 539, column: 2, scope: !448)
!455 = !DILocation(line: 540, column: 1, scope: !448)
!456 = distinct !DISubprogram(name: "ftrace_stacktrace_callback", scope: !1, file: !1, line: 855, type: !72, scopeLine: 857, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!457 = !DILocation(line: 857, scope: !456)
!458 = !DILocation(line: 860, column: 7, scope: !456)
!459 = !DILocation(line: 860, column: 6, scope: !456)
!460 = !DILocation(line: 861, column: 3, scope: !456)
!461 = !DILocation(line: 863, column: 8, scope: !456)
!462 = !DILocation(line: 865, column: 9, scope: !456)
!463 = !DILocation(line: 865, column: 2, scope: !456)
!464 = !DILocation(line: 0, scope: !456)
!465 = !DILocation(line: 867, column: 1, scope: !456)
!466 = distinct !DISubprogram(name: "ftrace_stacktrace_count", scope: !1, file: !1, line: 582, type: !72, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!467 = !DILocation(line: 585, scope: !466)
!468 = !DILocation(line: 591, column: 7, scope: !466)
!469 = !DILocation(line: 591, column: 6, scope: !466)
!470 = !DILocation(line: 0, scope: !466)
!471 = !DILocation(line: 592, column: 3, scope: !466)
!472 = !DILocation(line: 595, column: 7, scope: !466)
!473 = !DILocation(line: 595, column: 6, scope: !466)
!474 = !DILocation(line: 596, column: 15, scope: !466)
!475 = !DILocation(line: 189, column: 2, scope: !178, inlinedAt: !476)
!476 = distinct !DILocation(line: 568, column: 14, scope: !477, inlinedAt: !478)
!477 = distinct !DISubprogram(name: "trace_stack", scope: !1, file: !1, line: 564, type: !72, scopeLine: 565, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!478 = distinct !DILocation(line: 596, column: 3, scope: !466)
!479 = !DILocation(line: 159, column: 2, scope: !182, inlinedAt: !480)
!480 = distinct !DILocation(line: 189, column: 2, scope: !178, inlinedAt: !476)
!481 = !DILocation(line: 181, column: 28, scope: !187, inlinedAt: !482)
!482 = distinct !DILocation(line: 190, column: 9, scope: !178, inlinedAt: !476)
!483 = !DILocation(line: 183, column: 9, scope: !187, inlinedAt: !482)
!484 = !DILocation(line: 570, column: 2, scope: !477, inlinedAt: !478)
!485 = !DILocation(line: 597, column: 3, scope: !466)
!486 = !DILocation(line: 600, column: 18, scope: !466)
!487 = !DILocation(line: 606, column: 2, scope: !466)
!488 = !DILocation(line: 607, column: 15, scope: !466)
!489 = !DILocation(line: 609, column: 8, scope: !466)
!490 = !DILocation(line: 609, column: 7, scope: !466)
!491 = !DILocation(line: 610, column: 4, scope: !466)
!492 = !DILocation(line: 612, column: 25, scope: !466)
!493 = !DILocation(line: 86, column: 2, scope: !494, inlinedAt: !495)
!494 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !198, file: !198, line: 84, type: !72, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!495 = distinct !DILocation(line: 613, column: 15, scope: !466)
!496 = !DILocation(line: 613, column: 15, scope: !466)
!497 = !{i64 2155306374}
!498 = !DILocation(line: 161, column: 2, scope: !499, inlinedAt: !501)
!499 = distinct !DISubprogram(name: "__cmpxchg", scope: !500, file: !500, line: 156, type: !72, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!500 = !DIFile(filename: "../arch/arm/include/asm/cmpxchg.h", directory: "/llk/linux-5.17/build_arm_allyes")
!501 = distinct !DILocation(line: 613, column: 15, scope: !466)
!502 = !DILocation(line: 198, column: 12, scope: !499, inlinedAt: !501)
!503 = !DILocation(line: 192, column: 4, scope: !499, inlinedAt: !501)
!504 = !{i64 1203236, i64 1203257, i64 1203280, i64 1203299, i64 1203318}
!505 = !DILocation(line: 200, column: 3, scope: !499, inlinedAt: !501)
!506 = distinct !{!506, !507, !508}
!507 = !DILocation(line: 191, column: 3, scope: !499, inlinedAt: !501)
!508 = !DILocation(line: 200, column: 15, scope: !499, inlinedAt: !501)
!509 = !DILocation(line: 201, column: 3, scope: !499, inlinedAt: !501)
!510 = !{i64 2155306791}
!511 = !DILocation(line: 614, column: 17, scope: !466)
!512 = !DILocation(line: 614, column: 7, scope: !466)
!513 = !DILocation(line: 615, column: 16, scope: !466)
!514 = !DILocation(line: 189, column: 2, scope: !178, inlinedAt: !515)
!515 = distinct !DILocation(line: 568, column: 14, scope: !477, inlinedAt: !516)
!516 = distinct !DILocation(line: 615, column: 4, scope: !466)
!517 = !DILocation(line: 159, column: 2, scope: !182, inlinedAt: !518)
!518 = distinct !DILocation(line: 189, column: 2, scope: !178, inlinedAt: !515)
!519 = !DILocation(line: 181, column: 28, scope: !187, inlinedAt: !520)
!520 = distinct !DILocation(line: 190, column: 9, scope: !178, inlinedAt: !515)
!521 = !DILocation(line: 183, column: 9, scope: !187, inlinedAt: !520)
!522 = !DILocation(line: 570, column: 2, scope: !477, inlinedAt: !516)
!523 = !DILocation(line: 615, column: 4, scope: !466)
!524 = !DILocation(line: 617, column: 8, scope: !466)
!525 = !DILocation(line: 617, column: 7, scope: !466)
!526 = !DILocation(line: 618, column: 4, scope: !466)
!527 = !DILocation(line: 620, column: 2, scope: !466)
!528 = distinct !{!528, !487, !529}
!529 = !DILocation(line: 620, column: 33, scope: !466)
!530 = !DILocation(line: 621, column: 1, scope: !466)
!531 = distinct !DISubprogram(name: "ftrace_stacktrace_print", scope: !1, file: !1, line: 697, type: !72, scopeLine: 699, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!532 = !DILocation(line: 699, scope: !531)
!533 = !DILocation(line: 668, column: 26, scope: !393, inlinedAt: !534)
!534 = distinct !DILocation(line: 700, column: 9, scope: !531)
!535 = !DILocation(line: 668, column: 2, scope: !393, inlinedAt: !534)
!536 = !DILocation(line: 670, column: 6, scope: !393, inlinedAt: !534)
!537 = !DILocation(line: 671, column: 46, scope: !393, inlinedAt: !534)
!538 = !DILocation(line: 671, column: 19, scope: !393, inlinedAt: !534)
!539 = !DILocation(line: 673, column: 6, scope: !393, inlinedAt: !534)
!540 = !DILocation(line: 674, column: 14, scope: !393, inlinedAt: !534)
!541 = !DILocation(line: 674, column: 33, scope: !393, inlinedAt: !534)
!542 = !DILocation(line: 674, column: 3, scope: !393, inlinedAt: !534)
!543 = !DILocation(line: 676, column: 12, scope: !393, inlinedAt: !534)
!544 = !DILocation(line: 676, column: 3, scope: !393, inlinedAt: !534)
!545 = !DILocation(line: 700, column: 2, scope: !531)
!546 = distinct !DISubprogram(name: "ftrace_stacktrace", scope: !1, file: !1, line: 574, type: !72, scopeLine: 577, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!547 = !DILocation(line: 577, scope: !546)
!548 = !DILocation(line: 189, column: 2, scope: !178, inlinedAt: !549)
!549 = distinct !DILocation(line: 568, column: 14, scope: !477, inlinedAt: !550)
!550 = distinct !DILocation(line: 578, column: 2, scope: !546)
!551 = !DILocation(line: 159, column: 2, scope: !182, inlinedAt: !552)
!552 = distinct !DILocation(line: 189, column: 2, scope: !178, inlinedAt: !549)
!553 = !DILocation(line: 181, column: 28, scope: !187, inlinedAt: !554)
!554 = distinct !DILocation(line: 190, column: 9, scope: !178, inlinedAt: !549)
!555 = !DILocation(line: 183, column: 9, scope: !187, inlinedAt: !554)
!556 = !DILocation(line: 570, column: 2, scope: !477, inlinedAt: !550)
!557 = !DILocation(line: 579, column: 1, scope: !546)
!558 = distinct !DISubprogram(name: "ftrace_dump_callback", scope: !1, file: !1, line: 870, type: !72, scopeLine: 872, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!559 = !DILocation(line: 872, scope: !558)
!560 = !DILocation(line: 875, column: 7, scope: !558)
!561 = !DILocation(line: 875, column: 6, scope: !558)
!562 = !DILocation(line: 876, column: 3, scope: !558)
!563 = !DILocation(line: 878, column: 6, scope: !558)
!564 = !DILocation(line: 881, column: 9, scope: !558)
!565 = !DILocation(line: 881, column: 2, scope: !558)
!566 = !DILocation(line: 0, scope: !558)
!567 = !DILocation(line: 883, column: 1, scope: !558)
!568 = distinct !DISubprogram(name: "ftrace_dump_probe", scope: !1, file: !1, line: 642, type: !72, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!569 = !DILocation(line: 645, scope: !568)
!570 = !DILocation(line: 629, column: 6, scope: !571, inlinedAt: !572)
!571 = distinct !DISubprogram(name: "update_count", scope: !1, file: !1, line: 623, type: !72, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!572 = distinct !DILocation(line: 646, column: 6, scope: !568)
!573 = !DILocation(line: 630, column: 46, scope: !571, inlinedAt: !572)
!574 = !DILocation(line: 630, column: 19, scope: !571, inlinedAt: !572)
!575 = !DILocation(line: 632, column: 6, scope: !571, inlinedAt: !572)
!576 = !DILocation(line: 633, column: 7, scope: !571, inlinedAt: !572)
!577 = !DILocation(line: 633, column: 14, scope: !571, inlinedAt: !572)
!578 = !DILocation(line: 635, column: 5, scope: !571, inlinedAt: !572)
!579 = !DILocation(line: 635, column: 11, scope: !571, inlinedAt: !572)
!580 = !DILocation(line: 636, column: 2, scope: !571, inlinedAt: !572)
!581 = !DILocation(line: 0, scope: !571, inlinedAt: !572)
!582 = !DILocation(line: 646, column: 6, scope: !568)
!583 = !DILocation(line: 647, column: 3, scope: !568)
!584 = !DILocation(line: 648, column: 1, scope: !568)
!585 = distinct !DISubprogram(name: "ftrace_dump_print", scope: !1, file: !1, line: 704, type: !72, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!586 = !DILocation(line: 706, scope: !585)
!587 = !DILocation(line: 668, column: 26, scope: !393, inlinedAt: !588)
!588 = distinct !DILocation(line: 707, column: 9, scope: !585)
!589 = !DILocation(line: 668, column: 2, scope: !393, inlinedAt: !588)
!590 = !DILocation(line: 670, column: 6, scope: !393, inlinedAt: !588)
!591 = !DILocation(line: 671, column: 46, scope: !393, inlinedAt: !588)
!592 = !DILocation(line: 671, column: 19, scope: !393, inlinedAt: !588)
!593 = !DILocation(line: 673, column: 6, scope: !393, inlinedAt: !588)
!594 = !DILocation(line: 674, column: 14, scope: !393, inlinedAt: !588)
!595 = !DILocation(line: 674, column: 33, scope: !393, inlinedAt: !588)
!596 = !DILocation(line: 674, column: 3, scope: !393, inlinedAt: !588)
!597 = !DILocation(line: 676, column: 12, scope: !393, inlinedAt: !588)
!598 = !DILocation(line: 676, column: 3, scope: !393, inlinedAt: !588)
!599 = !DILocation(line: 707, column: 2, scope: !585)
!600 = distinct !DISubprogram(name: "ftrace_cpudump_callback", scope: !1, file: !1, line: 886, type: !72, scopeLine: 888, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!601 = !DILocation(line: 888, scope: !600)
!602 = !DILocation(line: 891, column: 7, scope: !600)
!603 = !DILocation(line: 891, column: 6, scope: !600)
!604 = !DILocation(line: 892, column: 3, scope: !600)
!605 = !DILocation(line: 894, column: 6, scope: !600)
!606 = !DILocation(line: 897, column: 9, scope: !600)
!607 = !DILocation(line: 897, column: 2, scope: !600)
!608 = !DILocation(line: 0, scope: !600)
!609 = !DILocation(line: 899, column: 1, scope: !600)
!610 = distinct !DISubprogram(name: "ftrace_cpudump_probe", scope: !1, file: !1, line: 652, type: !72, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!611 = !DILocation(line: 655, scope: !610)
!612 = !DILocation(line: 629, column: 6, scope: !571, inlinedAt: !613)
!613 = distinct !DILocation(line: 656, column: 6, scope: !610)
!614 = !DILocation(line: 630, column: 46, scope: !571, inlinedAt: !613)
!615 = !DILocation(line: 630, column: 19, scope: !571, inlinedAt: !613)
!616 = !DILocation(line: 632, column: 6, scope: !571, inlinedAt: !613)
!617 = !DILocation(line: 633, column: 7, scope: !571, inlinedAt: !613)
!618 = !DILocation(line: 633, column: 14, scope: !571, inlinedAt: !613)
!619 = !DILocation(line: 635, column: 5, scope: !571, inlinedAt: !613)
!620 = !DILocation(line: 635, column: 11, scope: !571, inlinedAt: !613)
!621 = !DILocation(line: 636, column: 2, scope: !571, inlinedAt: !613)
!622 = !DILocation(line: 0, scope: !571, inlinedAt: !613)
!623 = !DILocation(line: 656, column: 6, scope: !610)
!624 = !DILocation(line: 657, column: 3, scope: !610)
!625 = !DILocation(line: 658, column: 1, scope: !610)
!626 = distinct !DISubprogram(name: "ftrace_cpudump_print", scope: !1, file: !1, line: 711, type: !72, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!627 = !DILocation(line: 713, scope: !626)
!628 = !DILocation(line: 668, column: 26, scope: !393, inlinedAt: !629)
!629 = distinct !DILocation(line: 714, column: 9, scope: !626)
!630 = !DILocation(line: 668, column: 2, scope: !393, inlinedAt: !629)
!631 = !DILocation(line: 670, column: 6, scope: !393, inlinedAt: !629)
!632 = !DILocation(line: 671, column: 46, scope: !393, inlinedAt: !629)
!633 = !DILocation(line: 671, column: 19, scope: !393, inlinedAt: !629)
!634 = !DILocation(line: 673, column: 6, scope: !393, inlinedAt: !629)
!635 = !DILocation(line: 674, column: 14, scope: !393, inlinedAt: !629)
!636 = !DILocation(line: 674, column: 33, scope: !393, inlinedAt: !629)
!637 = !DILocation(line: 674, column: 3, scope: !393, inlinedAt: !629)
!638 = !DILocation(line: 676, column: 12, scope: !393, inlinedAt: !629)
!639 = !DILocation(line: 676, column: 3, scope: !393, inlinedAt: !629)
!640 = !DILocation(line: 714, column: 2, scope: !626)
!641 = distinct !DISubprogram(name: "function_trace_init", scope: !1, file: !1, line: 132, type: !72, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!642 = !DILocation(line: 133, scope: !641)
!643 = !DILocation(line: 140, column: 11, scope: !641)
!644 = !DILocation(line: 140, column: 7, scope: !641)
!645 = !DILocation(line: 140, column: 6, scope: !641)
!646 = !DILocation(line: 141, column: 3, scope: !641)
!647 = !DILocation(line: 143, column: 42, scope: !641)
!648 = !DILocation(line: 106, column: 20, scope: !649, inlinedAt: !650)
!649 = distinct !DISubprogram(name: "select_trace_function", scope: !1, file: !1, line: 104, type: !72, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!650 = distinct !DILocation(line: 143, column: 9, scope: !641)
!651 = !DILocation(line: 106, column: 2, scope: !649, inlinedAt: !650)
!652 = !DILocation(line: 108, column: 3, scope: !649, inlinedAt: !650)
!653 = !DILocation(line: 110, column: 3, scope: !649, inlinedAt: !650)
!654 = !DILocation(line: 112, column: 3, scope: !649, inlinedAt: !650)
!655 = !DILocation(line: 114, column: 3, scope: !649, inlinedAt: !650)
!656 = !DILocation(line: 0, scope: !649, inlinedAt: !650)
!657 = !DILocation(line: 122, column: 11, scope: !658, inlinedAt: !659)
!658 = distinct !DISubprogram(name: "handle_func_repeats", scope: !1, file: !1, line: 120, type: !72, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!659 = distinct !DILocation(line: 147, column: 7, scope: !641)
!660 = !DILocation(line: 122, column: 7, scope: !658, inlinedAt: !659)
!661 = !DILocation(line: 122, column: 29, scope: !658, inlinedAt: !659)
!662 = !DILocation(line: 123, column: 7, scope: !658, inlinedAt: !659)
!663 = !DILocation(line: 123, column: 17, scope: !658, inlinedAt: !659)
!664 = !DILocation(line: 122, column: 6, scope: !658, inlinedAt: !659)
!665 = !DILocation(line: 124, column: 27, scope: !658, inlinedAt: !659)
!666 = !DILocation(line: 124, column: 25, scope: !658, inlinedAt: !659)
!667 = !DILocation(line: 125, column: 8, scope: !658, inlinedAt: !659)
!668 = !DILocation(line: 125, column: 7, scope: !658, inlinedAt: !659)
!669 = !DILocation(line: 127, column: 2, scope: !658, inlinedAt: !659)
!670 = !DILocation(line: 0, scope: !658, inlinedAt: !659)
!671 = !DILocation(line: 148, column: 3, scope: !641)
!672 = !DILocation(line: 150, column: 24, scope: !641)
!673 = !DILocation(line: 150, column: 2, scope: !641)
!674 = !DILocation(line: 104, column: 4, scope: !115, inlinedAt: !675)
!675 = distinct !DILocation(line: 152, column: 25, scope: !641)
!676 = !DILocation(line: 104, column: 26, scope: !115, inlinedAt: !675)
!677 = !DILocation(line: 103, column: 9, scope: !115, inlinedAt: !675)
!678 = !DILocation(line: 152, column: 25, scope: !641)
!679 = !DILocation(line: 152, column: 19, scope: !641)
!680 = !DILocation(line: 152, column: 23, scope: !641)
!681 = !DILocation(line: 154, column: 2, scope: !641)
!682 = !DILocation(line: 382, column: 6, scope: !683, inlinedAt: !684)
!683 = distinct !DISubprogram(name: "tracing_start_function_trace", scope: !1, file: !1, line: 380, type: !72, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!684 = distinct !DILocation(line: 155, column: 2, scope: !641)
!685 = !DILocation(line: 382, column: 23, scope: !683, inlinedAt: !684)
!686 = !DILocation(line: 383, column: 31, scope: !683, inlinedAt: !684)
!687 = !DILocation(line: 383, column: 2, scope: !683, inlinedAt: !684)
!688 = !DILocation(line: 384, column: 23, scope: !683, inlinedAt: !684)
!689 = !DILocation(line: 156, column: 2, scope: !641)
!690 = !DILocation(line: 0, scope: !641)
!691 = !DILocation(line: 157, column: 1, scope: !641)
!692 = distinct !DISubprogram(name: "function_trace_reset", scope: !1, file: !1, line: 159, type: !72, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!693 = !DILocation(line: 160, scope: !692)
!694 = !DILocation(line: 389, column: 6, scope: !695, inlinedAt: !696)
!695 = distinct !DISubprogram(name: "tracing_stop_function_trace", scope: !1, file: !1, line: 387, type: !72, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!696 = distinct !DILocation(line: 161, column: 2, scope: !692)
!697 = !DILocation(line: 389, column: 23, scope: !695, inlinedAt: !696)
!698 = !DILocation(line: 390, column: 33, scope: !695, inlinedAt: !696)
!699 = !DILocation(line: 390, column: 2, scope: !695, inlinedAt: !696)
!700 = !DILocation(line: 162, column: 2, scope: !692)
!701 = !DILocation(line: 163, column: 2, scope: !692)
!702 = !DILocation(line: 164, column: 1, scope: !692)
!703 = distinct !DISubprogram(name: "function_trace_start", scope: !1, file: !1, line: 166, type: !72, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!704 = !DILocation(line: 167, scope: !703)
!705 = !DILocation(line: 168, column: 33, scope: !703)
!706 = !DILocation(line: 168, column: 2, scope: !703)
!707 = !DILocation(line: 169, column: 1, scope: !703)
!708 = distinct !DISubprogram(name: "func_set_flag", scope: !1, file: !1, line: 396, type: !72, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!709 = !DILocation(line: 397, scope: !708)
!710 = !DILocation(line: 402, column: 7, scope: !708)
!711 = !DILocation(line: 402, column: 29, scope: !708)
!712 = !DILocation(line: 402, column: 33, scope: !708)
!713 = !DILocation(line: 402, column: 16, scope: !708)
!714 = !DILocation(line: 402, column: 12, scope: !708)
!715 = !DILocation(line: 402, column: 6, scope: !708)
!716 = !DILocation(line: 403, column: 3, scope: !708)
!717 = !DILocation(line: 406, column: 10, scope: !708)
!718 = !DILocation(line: 406, column: 24, scope: !708)
!719 = !DILocation(line: 406, column: 6, scope: !708)
!720 = !DILocation(line: 407, column: 3, scope: !708)
!721 = !DILocation(line: 409, column: 32, scope: !708)
!722 = !DILocation(line: 409, column: 30, scope: !708)
!723 = !DILocation(line: 409, column: 41, scope: !708)
!724 = !DILocation(line: 409, column: 38, scope: !708)
!725 = !DILocation(line: 106, column: 20, scope: !649, inlinedAt: !726)
!726 = distinct !DILocation(line: 410, column: 9, scope: !708)
!727 = !DILocation(line: 106, column: 2, scope: !649, inlinedAt: !726)
!728 = !DILocation(line: 108, column: 3, scope: !649, inlinedAt: !726)
!729 = !DILocation(line: 110, column: 3, scope: !649, inlinedAt: !726)
!730 = !DILocation(line: 112, column: 3, scope: !649, inlinedAt: !726)
!731 = !DILocation(line: 114, column: 3, scope: !649, inlinedAt: !726)
!732 = !DILocation(line: 0, scope: !649, inlinedAt: !726)
!733 = !DILocation(line: 415, column: 10, scope: !708)
!734 = !DILocation(line: 415, column: 15, scope: !708)
!735 = !DILocation(line: 415, column: 20, scope: !708)
!736 = !DILocation(line: 415, column: 6, scope: !708)
!737 = !DILocation(line: 416, column: 3, scope: !708)
!738 = !DILocation(line: 122, column: 11, scope: !658, inlinedAt: !739)
!739 = distinct !DILocation(line: 418, column: 7, scope: !708)
!740 = !DILocation(line: 122, column: 7, scope: !658, inlinedAt: !739)
!741 = !DILocation(line: 122, column: 29, scope: !658, inlinedAt: !739)
!742 = !DILocation(line: 123, column: 7, scope: !658, inlinedAt: !739)
!743 = !DILocation(line: 123, column: 17, scope: !658, inlinedAt: !739)
!744 = !DILocation(line: 122, column: 6, scope: !658, inlinedAt: !739)
!745 = !DILocation(line: 124, column: 27, scope: !658, inlinedAt: !739)
!746 = !DILocation(line: 124, column: 25, scope: !658, inlinedAt: !739)
!747 = !DILocation(line: 125, column: 8, scope: !658, inlinedAt: !739)
!748 = !DILocation(line: 125, column: 7, scope: !658, inlinedAt: !739)
!749 = !DILocation(line: 127, column: 2, scope: !658, inlinedAt: !739)
!750 = !DILocation(line: 0, scope: !658, inlinedAt: !739)
!751 = !DILocation(line: 419, column: 3, scope: !708)
!752 = !DILocation(line: 421, column: 29, scope: !708)
!753 = !DILocation(line: 421, column: 33, scope: !708)
!754 = !DILocation(line: 421, column: 2, scope: !708)
!755 = !DILocation(line: 422, column: 6, scope: !708)
!756 = !DILocation(line: 422, column: 16, scope: !708)
!757 = !DILocation(line: 423, column: 31, scope: !708)
!758 = !DILocation(line: 423, column: 2, scope: !708)
!759 = !DILocation(line: 425, column: 2, scope: !708)
!760 = !DILocation(line: 0, scope: !708)
!761 = !DILocation(line: 426, column: 1, scope: !708)
!762 = distinct !DISubprogram(name: "function_stack_trace_call", scope: !1, file: !1, line: 217, type: !72, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!763 = !DILocation(line: 219, scope: !762)
!764 = !DILocation(line: 220, column: 31, scope: !762)
!765 = !DILocation(line: 227, column: 6, scope: !762)
!766 = !DILocation(line: 0, scope: !762)
!767 = !DILocation(line: 228, column: 3, scope: !762)
!768 = !DILocation(line: 29, column: 2, scope: !769, inlinedAt: !770)
!769 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !183, file: !183, line: 25, type: !72, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!770 = distinct !DILocation(line: 234, column: 2, scope: !762)
!771 = !{i64 1098424, i64 1098485}
!772 = !DILocation(line: 181, column: 15, scope: !773, inlinedAt: !774)
!773 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !183, file: !183, line: 179, type: !72, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!774 = distinct !DILocation(line: 234, column: 2, scope: !762)
!775 = !DILocation(line: 234, column: 2, scope: !762)
!776 = !DILocation(line: 104, column: 4, scope: !115, inlinedAt: !777)
!777 = distinct !DILocation(line: 235, column: 8, scope: !762)
!778 = !DILocation(line: 104, column: 26, scope: !115, inlinedAt: !777)
!779 = !DILocation(line: 103, column: 9, scope: !115, inlinedAt: !777)
!780 = !DILocation(line: 235, column: 8, scope: !762)
!781 = !DILocation(line: 236, column: 9, scope: !762)
!782 = !DILocation(line: 101, column: 2, scope: !783, inlinedAt: !784)
!783 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !198, file: !198, line: 99, type: !72, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!784 = distinct !DILocation(line: 198, column: 2, scope: !785, inlinedAt: !786)
!785 = distinct !DISubprogram(name: "atomic_inc_return", scope: !201, file: !201, line: 195, type: !72, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!786 = distinct !DILocation(line: 237, column: 13, scope: !762)
!787 = !DILocation(line: 200, column: 2, scope: !788, inlinedAt: !790)
!788 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !789, file: !789, line: 197, type: !72, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!789 = !DIFile(filename: "../include/linux/atomic/atomic-arch-fallback.h", directory: "/llk/linux-5.17/build_arm_allyes")
!790 = distinct !DILocation(line: 356, column: 9, scope: !791, inlinedAt: !792)
!791 = distinct !DISubprogram(name: "arch_atomic_inc_return", scope: !789, file: !789, line: 354, type: !72, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!792 = distinct !DILocation(line: 199, column: 9, scope: !785, inlinedAt: !786)
!793 = !{i64 2148779179}
!794 = !DILocation(line: 223, column: 1, scope: !795, inlinedAt: !797)
!795 = distinct !DISubprogram(name: "arch_atomic_add_return_relaxed", scope: !796, file: !796, line: 223, type: !72, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!796 = !DIFile(filename: "../arch/arm/include/asm/atomic.h", directory: "/llk/linux-5.17/build_arm_allyes")
!797 = distinct !DILocation(line: 201, column: 8, scope: !788, inlinedAt: !790)
!798 = !{i64 2148694464, i64 2148694496, i64 2148694525, i64 2148694559, i64 2148694590, i64 2148694613}
!799 = !DILocation(line: 202, column: 2, scope: !788, inlinedAt: !790)
!800 = !{i64 2148779408}
!801 = !DILocation(line: 239, column: 6, scope: !762)
!802 = !DILocation(line: 240, column: 37, scope: !762)
!803 = !DILocation(line: 181, column: 28, scope: !187, inlinedAt: !804)
!804 = distinct !DILocation(line: 240, column: 15, scope: !762)
!805 = !DILocation(line: 183, column: 9, scope: !187, inlinedAt: !804)
!806 = !DILocation(line: 241, column: 3, scope: !762)
!807 = !DILocation(line: 242, column: 3, scope: !762)
!808 = !DILocation(line: 243, column: 2, scope: !762)
!809 = !DILocation(line: 101, column: 2, scope: !783, inlinedAt: !810)
!810 = distinct !DILocation(line: 257, column: 2, scope: !811, inlinedAt: !812)
!811 = distinct !DISubprogram(name: "atomic_dec", scope: !201, file: !201, line: 255, type: !72, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!812 = distinct !DILocation(line: 245, column: 2, scope: !762)
!813 = !DILocation(line: 224, column: 1, scope: !814, inlinedAt: !815)
!814 = distinct !DISubprogram(name: "arch_atomic_sub", scope: !796, file: !796, line: 224, type: !72, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!815 = distinct !DILocation(line: 511, column: 2, scope: !816, inlinedAt: !817)
!816 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !789, file: !789, line: 509, type: !72, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!817 = distinct !DILocation(line: 258, column: 2, scope: !811, inlinedAt: !812)
!818 = !{i64 2148696209, i64 2148696235, i64 2148696264, i64 2148696298, i64 2148696329, i64 2148696352}
!819 = !DILocation(line: 246, column: 2, scope: !762)
!820 = !DILocation(line: 63, column: 34, scope: !821, inlinedAt: !823)
!821 = distinct !DISubprogram(name: "arch_irqs_disabled", scope: !822, file: !822, line: 61, type: !72, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!822 = !DIFile(filename: "../include/asm-generic/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!823 = distinct !DILocation(line: 246, column: 2, scope: !762)
!824 = !DILocation(line: 159, column: 2, scope: !182, inlinedAt: !825)
!825 = distinct !DILocation(line: 63, column: 34, scope: !821, inlinedAt: !823)
!826 = !DILocation(line: 181, column: 15, scope: !773, inlinedAt: !827)
!827 = distinct !DILocation(line: 63, column: 9, scope: !821, inlinedAt: !823)
!828 = !DILocation(line: 171, column: 2, scope: !829, inlinedAt: !830)
!829 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !183, file: !183, line: 169, type: !72, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!830 = distinct !DILocation(line: 246, column: 2, scope: !762)
!831 = !{i64 1101441}
!832 = !DILocation(line: 247, column: 1, scope: !762)
!833 = distinct !DISubprogram(name: "function_no_repeats_trace_call", scope: !1, file: !1, line: 280, type: !72, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!834 = !DILocation(line: 283, scope: !833)
!835 = !DILocation(line: 285, column: 31, scope: !833)
!836 = !DILocation(line: 292, column: 6, scope: !833)
!837 = !DILocation(line: 0, scope: !833)
!838 = !DILocation(line: 293, column: 3, scope: !833)
!839 = !DILocation(line: 104, column: 4, scope: !115, inlinedAt: !840)
!840 = distinct !DILocation(line: 144, column: 21, scope: !118, inlinedAt: !841)
!841 = distinct !DILocation(line: 195, column: 9, scope: !121, inlinedAt: !842)
!842 = distinct !DILocation(line: 295, column: 8, scope: !833)
!843 = !DILocation(line: 104, column: 26, scope: !115, inlinedAt: !840)
!844 = !DILocation(line: 103, column: 9, scope: !115, inlinedAt: !840)
!845 = !DILocation(line: 144, column: 21, scope: !118, inlinedAt: !841)
!846 = !DILocation(line: 104, column: 4, scope: !115, inlinedAt: !847)
!847 = distinct !DILocation(line: 11, column: 9, scope: !128, inlinedAt: !848)
!848 = distinct !DILocation(line: 91, column: 21, scope: !131, inlinedAt: !849)
!849 = distinct !DILocation(line: 119, column: 22, scope: !134, inlinedAt: !850)
!850 = distinct !DILocation(line: 147, column: 8, scope: !118, inlinedAt: !841)
!851 = !DILocation(line: 104, column: 26, scope: !115, inlinedAt: !847)
!852 = !DILocation(line: 103, column: 9, scope: !115, inlinedAt: !847)
!853 = !DILocation(line: 11, column: 9, scope: !128, inlinedAt: !848)
!854 = !DILocation(line: 94, column: 17, scope: !131, inlinedAt: !849)
!855 = !DILocation(line: 94, column: 12, scope: !131, inlinedAt: !849)
!856 = !DILocation(line: 95, column: 17, scope: !131, inlinedAt: !849)
!857 = !DILocation(line: 95, column: 12, scope: !131, inlinedAt: !849)
!858 = !DILocation(line: 95, column: 8, scope: !131, inlinedAt: !849)
!859 = !DILocation(line: 96, column: 17, scope: !131, inlinedAt: !849)
!860 = !DILocation(line: 96, column: 12, scope: !131, inlinedAt: !849)
!861 = !DILocation(line: 96, column: 11, scope: !131, inlinedAt: !849)
!862 = !DILocation(line: 96, column: 8, scope: !131, inlinedAt: !849)
!863 = !DILocation(line: 121, column: 26, scope: !134, inlinedAt: !850)
!864 = !DILocation(line: 148, column: 6, scope: !118, inlinedAt: !841)
!865 = !DILocation(line: 158, column: 11, scope: !118, inlinedAt: !841)
!866 = !DILocation(line: 158, column: 7, scope: !118, inlinedAt: !841)
!867 = !DILocation(line: 159, column: 4, scope: !118, inlinedAt: !841)
!868 = !DILocation(line: 162, column: 2, scope: !118, inlinedAt: !841)
!869 = !DILocation(line: 0, scope: !118, inlinedAt: !841)
!870 = !DILocation(line: 297, column: 3, scope: !833)
!871 = !DILocation(line: 164, column: 11, scope: !118, inlinedAt: !841)
!872 = !DILocation(line: 164, column: 6, scope: !118, inlinedAt: !841)
!873 = !DILocation(line: 165, column: 2, scope: !118, inlinedAt: !841)
!874 = !DILocation(line: 165, column: 11, scope: !118, inlinedAt: !841)
!875 = !DILocation(line: 165, column: 27, scope: !118, inlinedAt: !841)
!876 = !DILocation(line: 166, column: 2, scope: !118, inlinedAt: !841)
!877 = !DILocation(line: 16, column: 10, scope: !165, inlinedAt: !878)
!878 = distinct !DILocation(line: 54, column: 3, scope: !167, inlinedAt: !879)
!879 = distinct !DILocation(line: 168, column: 2, scope: !118, inlinedAt: !841)
!880 = !DILocation(line: 104, column: 4, scope: !115, inlinedAt: !881)
!881 = distinct !DILocation(line: 16, column: 10, scope: !165, inlinedAt: !878)
!882 = !DILocation(line: 104, column: 26, scope: !115, inlinedAt: !881)
!883 = !DILocation(line: 103, column: 9, scope: !115, inlinedAt: !881)
!884 = !DILocation(line: 16, column: 33, scope: !165, inlinedAt: !878)
!885 = !DILocation(line: 54, column: 23, scope: !167, inlinedAt: !879)
!886 = !DILocation(line: 168, column: 2, scope: !118, inlinedAt: !841)
!887 = !DILocation(line: 104, column: 4, scope: !115, inlinedAt: !888)
!888 = distinct !DILocation(line: 299, column: 8, scope: !833)
!889 = !DILocation(line: 104, column: 26, scope: !115, inlinedAt: !888)
!890 = !DILocation(line: 103, column: 9, scope: !115, inlinedAt: !888)
!891 = !DILocation(line: 299, column: 8, scope: !833)
!892 = !DILocation(line: 300, column: 9, scope: !833)
!893 = !DILocation(line: 71, column: 2, scope: !197, inlinedAt: !894)
!894 = distinct !DILocation(line: 27, column: 2, scope: !200, inlinedAt: !895)
!895 = distinct !DILocation(line: 301, column: 6, scope: !833)
!896 = !DILocation(line: 28, column: 9, scope: !200, inlinedAt: !895)
!897 = !DILocation(line: 301, column: 6, scope: !833)
!898 = !DILocation(line: 302, column: 3, scope: !833)
!899 = !DILocation(line: 311, column: 14, scope: !833)
!900 = !DILocation(line: 253, column: 17, scope: !901, inlinedAt: !902)
!901 = distinct !DISubprogram(name: "is_repeat_check", scope: !1, file: !1, line: 249, type: !72, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!902 = distinct !DILocation(line: 312, column: 6, scope: !833)
!903 = !DILocation(line: 253, column: 20, scope: !901, inlinedAt: !902)
!904 = !DILocation(line: 253, column: 26, scope: !901, inlinedAt: !902)
!905 = !DILocation(line: 254, column: 6, scope: !901, inlinedAt: !902)
!906 = !DILocation(line: 254, column: 17, scope: !901, inlinedAt: !902)
!907 = !DILocation(line: 254, column: 27, scope: !901, inlinedAt: !902)
!908 = !DILocation(line: 254, column: 40, scope: !901, inlinedAt: !902)
!909 = !DILocation(line: 255, column: 6, scope: !901, inlinedAt: !902)
!910 = !DILocation(line: 255, column: 17, scope: !901, inlinedAt: !902)
!911 = !DILocation(line: 255, column: 23, scope: !901, inlinedAt: !902)
!912 = !DILocation(line: 253, column: 6, scope: !901, inlinedAt: !902)
!913 = !DILocation(line: 257, column: 27, scope: !901, inlinedAt: !902)
!914 = !DILocation(line: 257, column: 44, scope: !901, inlinedAt: !902)
!915 = !DILocation(line: 257, column: 4, scope: !901, inlinedAt: !902)
!916 = !DILocation(line: 256, column: 14, scope: !901, inlinedAt: !902)
!917 = !DILocation(line: 256, column: 27, scope: !901, inlinedAt: !902)
!918 = !DILocation(line: 258, column: 19, scope: !901, inlinedAt: !902)
!919 = !DILocation(line: 313, column: 3, scope: !833)
!920 = !DILocation(line: 262, column: 2, scope: !901, inlinedAt: !902)
!921 = !DILocation(line: 159, column: 2, scope: !182, inlinedAt: !922)
!922 = distinct !DILocation(line: 315, column: 2, scope: !833)
!923 = !DILocation(line: 316, column: 36, scope: !833)
!924 = !DILocation(line: 181, column: 28, scope: !187, inlinedAt: !925)
!925 = distinct !DILocation(line: 316, column: 14, scope: !833)
!926 = !DILocation(line: 183, column: 9, scope: !187, inlinedAt: !925)
!927 = !DILocation(line: 270, column: 17, scope: !928, inlinedAt: !929)
!928 = distinct !DISubprogram(name: "process_repeats", scope: !1, file: !1, line: 265, type: !72, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!929 = distinct !DILocation(line: 317, column: 2, scope: !833)
!930 = !DILocation(line: 270, column: 6, scope: !928, inlinedAt: !929)
!931 = !DILocation(line: 271, column: 27, scope: !928, inlinedAt: !929)
!932 = !DILocation(line: 271, column: 3, scope: !928, inlinedAt: !929)
!933 = !DILocation(line: 272, column: 20, scope: !928, inlinedAt: !929)
!934 = !DILocation(line: 273, column: 2, scope: !928, inlinedAt: !929)
!935 = !DILocation(line: 275, column: 16, scope: !928, inlinedAt: !929)
!936 = !DILocation(line: 276, column: 13, scope: !928, inlinedAt: !929)
!937 = !DILocation(line: 276, column: 23, scope: !928, inlinedAt: !929)
!938 = !DILocation(line: 319, column: 2, scope: !833)
!939 = !DILocation(line: 178, column: 2, scope: !210, inlinedAt: !940)
!940 = distinct !DILocation(line: 206, column: 2, scope: !212, inlinedAt: !941)
!941 = distinct !DILocation(line: 322, column: 2, scope: !833)
!942 = !DILocation(line: 16, column: 10, scope: !165, inlinedAt: !943)
!943 = distinct !DILocation(line: 59, column: 3, scope: !217, inlinedAt: !944)
!944 = distinct !DILocation(line: 178, column: 2, scope: !210, inlinedAt: !940)
!945 = !DILocation(line: 104, column: 4, scope: !115, inlinedAt: !946)
!946 = distinct !DILocation(line: 16, column: 10, scope: !165, inlinedAt: !943)
!947 = !DILocation(line: 104, column: 26, scope: !115, inlinedAt: !946)
!948 = !DILocation(line: 103, column: 9, scope: !115, inlinedAt: !946)
!949 = !DILocation(line: 16, column: 33, scope: !165, inlinedAt: !943)
!950 = !DILocation(line: 59, column: 23, scope: !217, inlinedAt: !944)
!951 = !DILocation(line: 179, column: 2, scope: !210, inlinedAt: !940)
!952 = !DILocation(line: 180, column: 2, scope: !210, inlinedAt: !940)
!953 = !DILocation(line: 104, column: 4, scope: !115, inlinedAt: !954)
!954 = distinct !DILocation(line: 180, column: 2, scope: !210, inlinedAt: !940)
!955 = !DILocation(line: 104, column: 26, scope: !115, inlinedAt: !954)
!956 = !DILocation(line: 103, column: 9, scope: !115, inlinedAt: !954)
!957 = !DILocation(line: 323, column: 1, scope: !833)
!958 = distinct !DISubprogram(name: "function_stack_no_repeats_trace_call", scope: !1, file: !1, line: 326, type: !72, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!959 = !DILocation(line: 329, scope: !958)
!960 = !DILocation(line: 331, column: 31, scope: !958)
!961 = !DILocation(line: 338, column: 6, scope: !958)
!962 = !DILocation(line: 0, scope: !958)
!963 = !DILocation(line: 339, column: 3, scope: !958)
!964 = !DILocation(line: 29, column: 2, scope: !769, inlinedAt: !965)
!965 = distinct !DILocation(line: 345, column: 2, scope: !958)
!966 = !DILocation(line: 181, column: 15, scope: !773, inlinedAt: !967)
!967 = distinct !DILocation(line: 345, column: 2, scope: !958)
!968 = !DILocation(line: 345, column: 2, scope: !958)
!969 = !DILocation(line: 104, column: 4, scope: !115, inlinedAt: !970)
!970 = distinct !DILocation(line: 346, column: 8, scope: !958)
!971 = !DILocation(line: 104, column: 26, scope: !115, inlinedAt: !970)
!972 = !DILocation(line: 103, column: 9, scope: !115, inlinedAt: !970)
!973 = !DILocation(line: 346, column: 8, scope: !958)
!974 = !DILocation(line: 347, column: 9, scope: !958)
!975 = !DILocation(line: 101, column: 2, scope: !783, inlinedAt: !976)
!976 = distinct !DILocation(line: 198, column: 2, scope: !785, inlinedAt: !977)
!977 = distinct !DILocation(line: 348, column: 13, scope: !958)
!978 = !DILocation(line: 200, column: 2, scope: !788, inlinedAt: !979)
!979 = distinct !DILocation(line: 356, column: 9, scope: !791, inlinedAt: !980)
!980 = distinct !DILocation(line: 199, column: 9, scope: !785, inlinedAt: !977)
!981 = !DILocation(line: 223, column: 1, scope: !795, inlinedAt: !982)
!982 = distinct !DILocation(line: 201, column: 8, scope: !788, inlinedAt: !979)
!983 = !DILocation(line: 202, column: 2, scope: !788, inlinedAt: !979)
!984 = !DILocation(line: 350, column: 6, scope: !958)
!985 = !DILocation(line: 351, column: 15, scope: !958)
!986 = !DILocation(line: 253, column: 17, scope: !901, inlinedAt: !987)
!987 = distinct !DILocation(line: 352, column: 7, scope: !958)
!988 = !DILocation(line: 253, column: 20, scope: !901, inlinedAt: !987)
!989 = !DILocation(line: 253, column: 26, scope: !901, inlinedAt: !987)
!990 = !DILocation(line: 254, column: 6, scope: !901, inlinedAt: !987)
!991 = !DILocation(line: 254, column: 17, scope: !901, inlinedAt: !987)
!992 = !DILocation(line: 254, column: 27, scope: !901, inlinedAt: !987)
!993 = !DILocation(line: 254, column: 40, scope: !901, inlinedAt: !987)
!994 = !DILocation(line: 255, column: 6, scope: !901, inlinedAt: !987)
!995 = !DILocation(line: 255, column: 17, scope: !901, inlinedAt: !987)
!996 = !DILocation(line: 255, column: 23, scope: !901, inlinedAt: !987)
!997 = !DILocation(line: 253, column: 6, scope: !901, inlinedAt: !987)
!998 = !DILocation(line: 257, column: 27, scope: !901, inlinedAt: !987)
!999 = !DILocation(line: 257, column: 44, scope: !901, inlinedAt: !987)
!1000 = !DILocation(line: 257, column: 4, scope: !901, inlinedAt: !987)
!1001 = !DILocation(line: 256, column: 14, scope: !901, inlinedAt: !987)
!1002 = !DILocation(line: 256, column: 27, scope: !901, inlinedAt: !987)
!1003 = !DILocation(line: 258, column: 19, scope: !901, inlinedAt: !987)
!1004 = !DILocation(line: 353, column: 4, scope: !958)
!1005 = !DILocation(line: 262, column: 2, scope: !901, inlinedAt: !987)
!1006 = !DILocation(line: 355, column: 37, scope: !958)
!1007 = !DILocation(line: 181, column: 28, scope: !187, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 355, column: 15, scope: !958)
!1009 = !DILocation(line: 183, column: 9, scope: !187, inlinedAt: !1008)
!1010 = !DILocation(line: 270, column: 17, scope: !928, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 356, column: 3, scope: !958)
!1012 = !DILocation(line: 270, column: 6, scope: !928, inlinedAt: !1011)
!1013 = !DILocation(line: 271, column: 27, scope: !928, inlinedAt: !1011)
!1014 = !DILocation(line: 271, column: 3, scope: !928, inlinedAt: !1011)
!1015 = !DILocation(line: 272, column: 20, scope: !928, inlinedAt: !1011)
!1016 = !DILocation(line: 273, column: 2, scope: !928, inlinedAt: !1011)
!1017 = !DILocation(line: 275, column: 16, scope: !928, inlinedAt: !1011)
!1018 = !DILocation(line: 276, column: 13, scope: !928, inlinedAt: !1011)
!1019 = !DILocation(line: 276, column: 23, scope: !928, inlinedAt: !1011)
!1020 = !DILocation(line: 358, column: 3, scope: !958)
!1021 = !DILocation(line: 359, column: 3, scope: !958)
!1022 = !DILocation(line: 360, column: 2, scope: !958)
!1023 = !DILocation(line: 101, column: 2, scope: !783, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 257, column: 2, scope: !811, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 363, column: 2, scope: !958)
!1026 = !DILocation(line: 224, column: 1, scope: !814, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 511, column: 2, scope: !816, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 258, column: 2, scope: !811, inlinedAt: !1025)
!1029 = !DILocation(line: 364, column: 2, scope: !958)
!1030 = !DILocation(line: 63, column: 34, scope: !821, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 364, column: 2, scope: !958)
!1032 = !DILocation(line: 159, column: 2, scope: !182, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 63, column: 34, scope: !821, inlinedAt: !1031)
!1034 = !DILocation(line: 181, column: 15, scope: !773, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 63, column: 9, scope: !821, inlinedAt: !1031)
!1036 = !DILocation(line: 171, column: 2, scope: !829, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 364, column: 2, scope: !958)
!1038 = !DILocation(line: 365, column: 1, scope: !958)
