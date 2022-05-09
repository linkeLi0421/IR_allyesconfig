; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_sched_wakeup.c_pt.bc'
source_filename = "../kernel/trace/trace_sched_wakeup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracer = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.75 }
%struct.atomic_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.74, %struct.trace_event, ptr, ptr, %union.anon.76, ptr, i32, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.74 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.76 = type { ptr }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.trace_array = type { %struct.list_head, ptr, %struct.array_buffer, %struct.array_buffer, i8, i32, ptr, %struct.work_struct, %struct.irq_work, ptr, ptr, %struct.arch_spinlock_t, i32, i32, i32, [452 x ptr], [452 x ptr], i32, i32, i32, i8, i32, i32, ptr, i32, [32 x i8], i32, %struct.raw_spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.list_head, ptr, ptr }
%struct.array_buffer = type { ptr, ptr, ptr, i64, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.43 }
%struct.llist_node = type { ptr }
%union.anon.43 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
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
%struct.restart_block = type { i32, ptr, %union.anon.45 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.trace_array_cpu = type { %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.kuid_t, [16 x i8], i32, i8 }
%struct.__raw_tickets = type { i16, i16 }
%struct.ctx_switch_entry = type { %struct.trace_entry, i32, i32, i32, i8, i8, i8, i8 }
%struct.trace_entry = type { i16, i8, i8, i32 }

@__initcall__kmod_trace_sched_wakeup__338_817_init_wakeup_tracer1 = internal global ptr @init_wakeup_tracer, section ".initcall1.init", align 4
@wakeup_tracer = internal global %struct.tracer { ptr @.str, ptr @wakeup_tracer_init, ptr @wakeup_tracer_reset, ptr @wakeup_tracer_start, ptr @wakeup_tracer_stop, ptr null, ptr @wakeup_trace_open, ptr null, ptr @wakeup_trace_close, ptr null, ptr null, ptr null, ptr @trace_selftest_startup_wakeup, ptr @wakeup_print_header, ptr @wakeup_print_line, ptr null, ptr @wakeup_flag_changed, ptr null, ptr null, i32 0, i8 1, i8 1, i8 1, i8 0 }, section ".data..read_mostly", align 4
@wakeup_rt_tracer = internal global %struct.tracer { ptr @.str.16, ptr @wakeup_rt_tracer_init, ptr @wakeup_tracer_reset, ptr @wakeup_tracer_start, ptr @wakeup_tracer_stop, ptr null, ptr @wakeup_trace_open, ptr null, ptr @wakeup_trace_close, ptr null, ptr null, ptr null, ptr @trace_selftest_startup_wakeup, ptr @wakeup_print_header, ptr @wakeup_print_line, ptr null, ptr @wakeup_flag_changed, ptr null, ptr null, i32 0, i8 1, i8 1, i8 1, i8 0 }, section ".data..read_mostly", align 4
@wakeup_dl_tracer = internal global %struct.tracer { ptr @.str.17, ptr @wakeup_dl_tracer_init, ptr @wakeup_tracer_reset, ptr @wakeup_tracer_start, ptr @wakeup_tracer_stop, ptr null, ptr @wakeup_trace_open, ptr null, ptr @wakeup_trace_close, ptr null, ptr null, ptr null, ptr @trace_selftest_startup_wakeup, ptr @wakeup_print_header, ptr @wakeup_print_line, ptr null, ptr @wakeup_flag_changed, ptr null, ptr null, i32 0, i8 1, i8 1, i8 1, i8 0 }, section ".data..read_mostly", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wakeup\00", [25 x i8] zeroinitializer }, align 32
@wakeup_busy = internal global { i1, [31 x i8] } zeroinitializer, align 32
@wakeup_dl = internal global { i1, [31 x i8] } zeroinitializer, align 32
@wakeup_rt = internal global { i1, [31 x i8] } zeroinitializer, align 32
@save_flags = internal global { i32, [28 x i8] } zeroinitializer, align 32
@wakeup_trace = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@wakeup_task = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@wakeup_current_cpu = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@start_wakeup_tracer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016wakeup trace: Couldn't activate tracepoint probe to kernel_sched_wakeup\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"start_wakeup_tracer\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"kernel/trace/trace_sched_wakeup.c\00", [62 x i8] zeroinitializer }, align 32
@start_wakeup_tracer._entry_ptr = internal global ptr @start_wakeup_tracer._entry, section ".printk_index", align 4
@start_wakeup_tracer._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016wakeup trace: Couldn't activate tracepoint probe to kernel_sched_wakeup_new\0A\00", [49 x i8] zeroinitializer }, align 32
@start_wakeup_tracer._entry_ptr.6 = internal global ptr @start_wakeup_tracer._entry.4, section ".printk_index", align 4
@start_wakeup_tracer._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016sched trace: Couldn't activate tracepoint probe to kernel_sched_switch\0A\00", [54 x i8] zeroinitializer }, align 32
@start_wakeup_tracer._entry_ptr.9 = internal global ptr @start_wakeup_tracer._entry.7, section ".printk_index", align 4
@start_wakeup_tracer._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\016wakeup trace: Couldn't activate tracepoint probe to kernel_sched_migrate_task\0A\00", [47 x i8] zeroinitializer }, align 32
@start_wakeup_tracer._entry_ptr.12 = internal global ptr @start_wakeup_tracer._entry.10, section ".printk_index", align 4
@start_wakeup_tracer._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013failed to start wakeup tracer\0A\00", [63 x i8] zeroinitializer }, align 32
@start_wakeup_tracer._entry_ptr.15 = internal global ptr @start_wakeup_tracer._entry.13, section ".printk_index", align 4
@__tracepoint_sched_wakeup = external dso_local global %struct.tracepoint, align 4
@tracer_enabled = internal unnamed_addr global i1 false, section ".data..read_mostly", align 4
@tracing_dl = internal global { i1, [31 x i8] } zeroinitializer, align 32
@wakeup_prio = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@wakeup_lock = internal global { %struct.arch_spinlock_t, [28 x i8] } zeroinitializer, align 32
@wakeup_cpu = internal global { i32, [28 x i8] } zeroinitializer, align 32
@event_wakeup = external dso_local global %struct.trace_event_call, align 4
@__tracepoint_sched_wakeup_new = external dso_local global %struct.tracepoint, align 4
@__tracepoint_sched_switch = external dso_local global %struct.tracepoint, align 4
@event_context_switch = external dso_local global %struct.trace_event_call, align 4
@tracing_thresh = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_sched_migrate_task = external dso_local global %struct.tracepoint, align 4
@function_enabled = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wakeup_rt\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wakeup_dl\00", [22 x i8] zeroinitializer }, align 32
@__llvm_gcov_ctr = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.22 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.23 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.24 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.25 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.26 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.27 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.28 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.29 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.30 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.31 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.32 = internal global [1 x i64] zeroinitializer
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
@__llvm_gcov_ctr.45 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.46 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.47 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.48 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.49 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.50 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.51 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.52 = internal global [16 x i64] zeroinitializer
@__llvm_gcov_ctr.53 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.54 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.55 = internal global [12 x i64] zeroinitializer
@__llvm_gcov_ctr.56 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.57 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.58 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.59 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.60 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.61 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.62 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.63 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.64 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.65 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.66 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.67 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.68 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.69 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.70 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.71 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.72 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.73 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.74 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.75 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.76 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.77 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.78 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.79 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.80 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.81 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.82 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.83 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.84 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.85 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.86 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.87 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.88 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.89 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.90 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.91 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.92 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.93 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.94 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.95 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.96 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.97 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.98 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.99 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.100 = internal global [2 x i64] zeroinitializer
@0 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_sched_wakeup.gcda\00", [58 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [84 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 1903784984, i32 -2077110175 }, %emit_function_args_ty { i32 1, i32 -1778913095, i32 -2077110175 }, %emit_function_args_ty { i32 2, i32 -514573903, i32 -2077110175 }, %emit_function_args_ty { i32 3, i32 1483638464, i32 -2077110175 }, %emit_function_args_ty { i32 4, i32 -450642118, i32 -2077110175 }, %emit_function_args_ty { i32 5, i32 1406267486, i32 -2077110175 }, %emit_function_args_ty { i32 6, i32 1830772179, i32 -2077110175 }, %emit_function_args_ty { i32 7, i32 -1283111336, i32 -2077110175 }, %emit_function_args_ty { i32 8, i32 -941338648, i32 -2077110175 }, %emit_function_args_ty { i32 9, i32 -966738413, i32 -2077110175 }, %emit_function_args_ty { i32 10, i32 473722111, i32 -2077110175 }, %emit_function_args_ty { i32 11, i32 263129896, i32 -2077110175 }, %emit_function_args_ty { i32 12, i32 35068106, i32 -2077110175 }, %emit_function_args_ty { i32 13, i32 -1202204170, i32 -2077110175 }, %emit_function_args_ty { i32 14, i32 1403380823, i32 -2077110175 }, %emit_function_args_ty { i32 15, i32 81157262, i32 -2077110175 }, %emit_function_args_ty { i32 16, i32 -743251458, i32 -2077110175 }, %emit_function_args_ty { i32 17, i32 -1208743970, i32 -2077110175 }, %emit_function_args_ty { i32 18, i32 -1023618272, i32 -2077110175 }, %emit_function_args_ty { i32 19, i32 1333844298, i32 -2077110175 }, %emit_function_args_ty { i32 20, i32 1249662737, i32 -2077110175 }, %emit_function_args_ty { i32 21, i32 -1567486560, i32 -2077110175 }, %emit_function_args_ty { i32 22, i32 288547376, i32 -2077110175 }, %emit_function_args_ty { i32 23, i32 -1082265946, i32 -2077110175 }, %emit_function_args_ty { i32 24, i32 835031753, i32 -2077110175 }, %emit_function_args_ty { i32 25, i32 -1846855200, i32 -2077110175 }, %emit_function_args_ty { i32 26, i32 -1111025999, i32 -2077110175 }, %emit_function_args_ty { i32 27, i32 47165945, i32 -2077110175 }, %emit_function_args_ty { i32 28, i32 -868360281, i32 -2077110175 }, %emit_function_args_ty { i32 29, i32 -1672745738, i32 -2077110175 }, %emit_function_args_ty { i32 30, i32 -693354315, i32 -2077110175 }, %emit_function_args_ty { i32 31, i32 1212846073, i32 -2077110175 }, %emit_function_args_ty { i32 32, i32 1044414937, i32 -2077110175 }, %emit_function_args_ty { i32 33, i32 1311495864, i32 -2077110175 }, %emit_function_args_ty { i32 34, i32 -169566419, i32 -2077110175 }, %emit_function_args_ty { i32 35, i32 -78717555, i32 -2077110175 }, %emit_function_args_ty { i32 36, i32 -420784376, i32 -2077110175 }, %emit_function_args_ty { i32 37, i32 -1974325847, i32 -2077110175 }, %emit_function_args_ty { i32 38, i32 -1280708046, i32 -2077110175 }, %emit_function_args_ty { i32 39, i32 -1419509637, i32 -2077110175 }, %emit_function_args_ty { i32 40, i32 -84284584, i32 -2077110175 }, %emit_function_args_ty { i32 41, i32 -80115669, i32 -2077110175 }, %emit_function_args_ty { i32 42, i32 691247917, i32 -2077110175 }, %emit_function_args_ty { i32 43, i32 2042980911, i32 -2077110175 }, %emit_function_args_ty { i32 44, i32 -1268763043, i32 -2077110175 }, %emit_function_args_ty { i32 45, i32 1141314613, i32 -2077110175 }, %emit_function_args_ty { i32 46, i32 232147323, i32 -2077110175 }, %emit_function_args_ty { i32 47, i32 1127433294, i32 -2077110175 }, %emit_function_args_ty { i32 48, i32 -723365461, i32 -2077110175 }, %emit_function_args_ty { i32 49, i32 -409680664, i32 -2077110175 }, %emit_function_args_ty { i32 50, i32 1190888941, i32 -2077110175 }, %emit_function_args_ty { i32 51, i32 197407251, i32 -2077110175 }, %emit_function_args_ty { i32 52, i32 -448350537, i32 -2077110175 }, %emit_function_args_ty { i32 53, i32 314442000, i32 -2077110175 }, %emit_function_args_ty { i32 54, i32 -932836547, i32 -2077110175 }, %emit_function_args_ty { i32 55, i32 916651515, i32 -2077110175 }, %emit_function_args_ty { i32 56, i32 -1013036024, i32 -2077110175 }, %emit_function_args_ty { i32 57, i32 -1398695576, i32 -2077110175 }, %emit_function_args_ty { i32 58, i32 -58137931, i32 -2077110175 }, %emit_function_args_ty { i32 59, i32 589626469, i32 -2077110175 }, %emit_function_args_ty { i32 60, i32 -777544585, i32 -2077110175 }, %emit_function_args_ty { i32 61, i32 294480687, i32 -2077110175 }, %emit_function_args_ty { i32 62, i32 1845239876, i32 -2077110175 }, %emit_function_args_ty { i32 63, i32 -1493925009, i32 -2077110175 }, %emit_function_args_ty { i32 64, i32 1264794440, i32 -2077110175 }, %emit_function_args_ty { i32 65, i32 781518319, i32 -2077110175 }, %emit_function_args_ty { i32 66, i32 -106526432, i32 -2077110175 }, %emit_function_args_ty { i32 67, i32 2100099411, i32 -2077110175 }, %emit_function_args_ty { i32 68, i32 -986397107, i32 -2077110175 }, %emit_function_args_ty { i32 69, i32 1297802466, i32 -2077110175 }, %emit_function_args_ty { i32 70, i32 -1092202674, i32 -2077110175 }, %emit_function_args_ty { i32 71, i32 -2113064956, i32 -2077110175 }, %emit_function_args_ty { i32 72, i32 -963894156, i32 -2077110175 }, %emit_function_args_ty { i32 73, i32 -1651547464, i32 -2077110175 }, %emit_function_args_ty { i32 74, i32 540040220, i32 -2077110175 }, %emit_function_args_ty { i32 75, i32 -1610559031, i32 -2077110175 }, %emit_function_args_ty { i32 76, i32 -1825893265, i32 -2077110175 }, %emit_function_args_ty { i32 77, i32 -1937240791, i32 -2077110175 }, %emit_function_args_ty { i32 78, i32 1974487998, i32 -2077110175 }, %emit_function_args_ty { i32 79, i32 -1437811352, i32 -2077110175 }, %emit_function_args_ty { i32 80, i32 -392613439, i32 -2077110175 }, %emit_function_args_ty { i32 81, i32 -2077042977, i32 -2077110175 }, %emit_function_args_ty { i32 82, i32 -845896168, i32 -2077110175 }, %emit_function_args_ty { i32 83, i32 -588909428, i32 -2077110175 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [84 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.18 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.19 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.20 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.21 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.22 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.23 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.24 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.25 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.26 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.27 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.28 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.29 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.30 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.31 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.32 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.33 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.34 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.35 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.36 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.37 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.38 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.39 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.40 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.41 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.42 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.43 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.44 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.45 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.46 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.47 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.48 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.49 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.50 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.51 }, %emit_arcs_args_ty { i32 16, ptr @__llvm_gcov_ctr.52 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.53 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.54 }, %emit_arcs_args_ty { i32 12, ptr @__llvm_gcov_ctr.55 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.56 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.57 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.58 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.59 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.60 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.61 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.62 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.63 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.64 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.65 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.66 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.67 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.68 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.69 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.70 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.71 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.72 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.73 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.74 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.75 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.76 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.77 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.78 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.79 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.80 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.81 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.82 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.83 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.84 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.85 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.86 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.87 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.88 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.89 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.90 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.91 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.92 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.93 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.94 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.95 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.96 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.97 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.98 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.99 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.100 }]
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 741, i32 11 }
@___asan_gen_.104 = private unnamed_addr constant [12 x i8] c"wakeup_busy\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [10 x i8] c"wakeup_dl\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [10 x i8] c"wakeup_rt\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [11 x i8] c"save_flags\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 41, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant [13 x i8] c"wakeup_trace\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 22, i32 28 }
@___asan_gen_.113 = private unnamed_addr constant [12 x i8] c"wakeup_task\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 25, i32 28 }
@___asan_gen_.116 = private unnamed_addr constant [19 x i8] c"wakeup_current_cpu\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 27, i32 14 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 605, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 612, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 619, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 626, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 643, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [11 x i8] c"tracing_dl\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [12 x i8] c"wakeup_prio\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 28, i32 19 }
@___asan_gen_.159 = private unnamed_addr constant [12 x i8] c"wakeup_lock\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 33, i32 24 }
@___asan_gen_.162 = private unnamed_addr constant [11 x i8] c"wakeup_cpu\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 26, i32 14 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"function_enabled\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 761, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [37 x i8] c"../kernel/trace/trace_sched_wakeup.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 781, i32 11 }
@___asan_gen_.172 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @__initcall__kmod_trace_sched_wakeup__338_817_init_wakeup_tracer1, ptr @start_wakeup_tracer._entry, ptr @start_wakeup_tracer._entry.10, ptr @start_wakeup_tracer._entry.13, ptr @start_wakeup_tracer._entry.4, ptr @start_wakeup_tracer._entry.7, ptr @start_wakeup_tracer._entry_ptr, ptr @start_wakeup_tracer._entry_ptr.12, ptr @start_wakeup_tracer._entry_ptr.15, ptr @start_wakeup_tracer._entry_ptr.6, ptr @start_wakeup_tracer._entry_ptr.9, ptr @.str, ptr @wakeup_busy, ptr @wakeup_dl, ptr @wakeup_rt, ptr @save_flags, ptr @wakeup_trace, ptr @wakeup_task, ptr @wakeup_current_cpu, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @tracing_dl, ptr @wakeup_prio, ptr @wakeup_lock, ptr @wakeup_cpu, ptr @function_enabled, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@1 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeup_busy to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeup_dl to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeup_rt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_flags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeup_trace to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeup_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeup_current_cpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_wakeup_tracer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_wakeup_tracer._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_wakeup_tracer._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_wakeup_tracer._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_wakeup_tracer._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tracing_dl to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeup_prio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeup_lock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeup_cpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @function_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_wakeup_tracer() #0 section ".init.text" align 64 !dbg !75 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !78
  %call = tail call i32 @register_tracer(ptr noundef nonnull @wakeup_tracer) #15, !dbg !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !80
  %tobool.not = icmp eq i32 %call, 0, !dbg !80
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !80

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !81
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 16, !dbg !81
  %0 = add i64 %gcov_ctr, 1, !dbg !81
  store i64 %0, ptr @__llvm_gcov_ctr, align 16, !dbg !81
  br label %cleanup, !dbg !82

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_tracer(ptr noundef nonnull @wakeup_rt_tracer) #15, !dbg !83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1), !dbg !84
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !84
  br i1 %tobool2.not, label %if.end4, label %if.then3, !dbg !84

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14, !dbg !85
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !85
  %1 = add i64 %gcov_ctr9, 1, !dbg !85
  store i64 %1, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !85
  br label %cleanup, !dbg !86

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_tracer(ptr noundef nonnull @wakeup_dl_tracer) #15, !dbg !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5), !dbg !88
  %tobool6.not = icmp eq i32 %call5, 0, !dbg !88
  br i1 %tobool6.not, label %if.end8, label %if.then7, !dbg !88

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14, !dbg !89
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !89
  %2 = add i64 %gcov_ctr11, 1, !dbg !89
  store i64 %2, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !89
  br label %cleanup, !dbg !90

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14, !dbg !91
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !91
  %3 = add i64 %gcov_ctr10, 1, !dbg !91
  store i64 %3, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !91
  br label %cleanup, !dbg !91

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.then3 ], [ %call5, %if.then7 ], [ 0, %if.end8 ], !dbg !92
  ret i32 %retval.0, !dbg !93
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_tracer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakeup_tracer_init(ptr noundef %tr) #2 align 64 !dbg !94 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !95
  %.b2 = load i1, ptr @wakeup_busy, align 1, !dbg !96
  br i1 %.b2, label %if.then, label %if.end, !dbg !96

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !97
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.18, align 8, !dbg !97
  %0 = add i64 %gcov_ctr, 1, !dbg !97
  store i64 %0, ptr @__llvm_gcov_ctr.18, align 8, !dbg !97
  br label %return, !dbg !97

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !98
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !98
  %1 = add i64 %gcov_ctr1, 1, !dbg !98
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !98
  store i1 false, ptr @wakeup_dl, align 1, !dbg !98
  store i1 false, ptr @wakeup_rt, align 1, !dbg !99
  tail call fastcc void @__wakeup_tracer_init(ptr noundef %tr), !dbg !100
  br label %return, !dbg !101

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %if.end ], !dbg !102
  ret i32 %retval.0, !dbg !103
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wakeup_tracer_reset(ptr noundef %tr) #2 align 64 !dbg !104 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !105
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.19, align 8
  %1 = load i32, ptr @save_flags, align 4, !dbg !106
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.94, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.94, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.95, align 8
  %3 = add i64 %gcov_ctr.i.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.95, align 8
  store i1 false, ptr @tracer_enabled, align 4, !dbg !107
  %.b1.i.i.i = load i1, ptr @function_enabled, align 1, !dbg !112
  br i1 %.b1.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i, !dbg !115

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !116
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.97, align 16, !dbg !116
  %4 = add i64 %gcov_ctr.i.i.i, 1, !dbg !116
  store i64 %4, ptr @__llvm_gcov_ctr.97, align 16, !dbg !116
  br label %stop_wakeup_tracer.exit, !dbg !116

if.else.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !117
  %gcov_ctr4.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 1), align 8, !dbg !117
  %5 = add i64 %gcov_ctr4.i.i.i, 1, !dbg !117
  store i64 %5, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 1), align 8, !dbg !117
  %ops.i.i.i = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 40, !dbg !118
  %6 = ptrtoint ptr %ops.i.i.i to i32, !dbg !118
  call void @__asan_load4_noabort(i32 %6), !dbg !118
  %7 = load ptr, ptr %ops.i.i.i, align 4, !dbg !118
  %call.i.i.i = tail call i32 @unregister_ftrace_function(ptr noundef %7) #15, !dbg !119
  store i1 false, ptr @function_enabled, align 1, !dbg !120
  br label %stop_wakeup_tracer.exit, !dbg !121

stop_wakeup_tracer.exit:                          ; preds = %if.else.i.i.i, %if.then.i.i.i
  %and1 = and i32 %1, 131072, !dbg !122
  %and = and i32 %1, 16384, !dbg !123
  %gcov_ctr.i4.i = load i64, ptr @__llvm_gcov_ctr.60, align 8
  %8 = add i64 %gcov_ctr.i4.i, 1
  store i64 %8, ptr @__llvm_gcov_ctr.60, align 8
  %call.i.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_switch, ptr noundef nonnull @probe_wakeup_sched_switch, ptr noundef null) #15, !dbg !124
  %gcov_ctr.i5.i = load i64, ptr @__llvm_gcov_ctr.61, align 8
  %9 = add i64 %gcov_ctr.i5.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.61, align 8
  %call.i6.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_wakeup_new, ptr noundef nonnull @probe_wakeup, ptr noundef null) #15, !dbg !128
  %gcov_ctr.i7.i = load i64, ptr @__llvm_gcov_ctr.62, align 8
  %10 = add i64 %gcov_ctr.i7.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.62, align 8
  %call.i8.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_wakeup, ptr noundef nonnull @probe_wakeup, ptr noundef null) #15, !dbg !131
  %gcov_ctr.i9.i = load i64, ptr @__llvm_gcov_ctr.96, align 8
  %11 = add i64 %gcov_ctr.i9.i, 1
  store i64 %11, ptr @__llvm_gcov_ctr.96, align 8
  %call.i10.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_migrate_task, ptr noundef nonnull @probe_wakeup_migrate_task, ptr noundef null) #15, !dbg !134
  tail call fastcc void @wakeup_reset(ptr noundef %tr), !dbg !137
  %call = tail call i32 @set_tracer_flag(ptr noundef %tr, i32 noundef 16384, i32 noundef %and) #15, !dbg !138
  %call2 = tail call i32 @set_tracer_flag(ptr noundef %tr, i32 noundef 131072, i32 noundef %and1) #15, !dbg !139
  tail call void @ftrace_reset_array_ops(ptr noundef %tr) #15, !dbg !140
  store i1 false, ptr @wakeup_busy, align 1, !dbg !141
  ret void, !dbg !142
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wakeup_tracer_start(ptr noundef %tr) #2 align 64 !dbg !143 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !144
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.20, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.20, align 8
  tail call fastcc void @wakeup_reset(ptr noundef %tr), !dbg !145
  store i1 true, ptr @tracer_enabled, align 4, !dbg !146
  ret void, !dbg !147
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wakeup_tracer_stop(ptr nocapture noundef readnone %tr) #3 align 64 !dbg !148 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !149
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.21, align 8
  store i1 false, ptr @tracer_enabled, align 4, !dbg !150
  ret void, !dbg !151
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wakeup_trace_open(ptr nocapture noundef readnone %iter) #3 align 64 !dbg !152 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !153
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.22, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.22, align 8
  ret void, !dbg !154
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wakeup_trace_close(ptr nocapture noundef readnone %iter) #3 align 64 !dbg !155 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !156
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.23, align 8
  ret void, !dbg !157
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_selftest_startup_wakeup(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wakeup_print_header(ptr noundef %s) #2 align 64 !dbg !158 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !159
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.24, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.24, align 8
  tail call void @trace_default_header(ptr noundef %s) #15, !dbg !160
  ret void, !dbg !161
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wakeup_print_line(ptr nocapture noundef readnone %iter) #3 align 64 !dbg !162 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !163
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.25, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.25, align 8
  ret i32 2, !dbg !164
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakeup_flag_changed(ptr nocapture noundef readonly %tr, i32 noundef %mask, i32 noundef %set) #2 align 64 !dbg !165 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !166
  %and.i = and i32 %mask, 16777216, !dbg !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !167
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !167
  br i1 %tobool.not.i, label %if.end, label %if.end.i, !dbg !170

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set), !dbg !171
  %tobool1.not.i = icmp eq i32 %set, 0, !dbg !171
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i, !dbg !171

if.then2.i:                                       ; preds = %if.end.i
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 2), align 16, !dbg !172
  %0 = add i64 %gcov_ctr5.i, 1, !dbg !172
  store i64 %0, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 2), align 16, !dbg !172
  %.b1.i.i = load i1, ptr @function_enabled, align 1, !dbg !173
  br i1 %.b1.i.i, label %if.then.i.i, label %lor.lhs.false.i.i, !dbg !176

lor.lhs.false.i.i:                                ; preds = %if.then2.i
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.93, align 16, !dbg !177
  %1 = add i64 %gcov_ctr.i.i, 1, !dbg !177
  store i64 %1, ptr @__llvm_gcov_ctr.93, align 16, !dbg !177
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 3), align 8, !dbg !178
  %2 = add i64 %gcov_ctr11.i.i, 1, !dbg !178
  store i64 %2, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 3), align 8, !dbg !178
  %ops.i.i = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 40, !dbg !179
  %3 = ptrtoint ptr %ops.i.i to i32, !dbg !179
  call void @__asan_load4_noabort(i32 %3), !dbg !179
  %4 = load ptr, ptr %ops.i.i, align 4, !dbg !179
  %call.i.i = tail call i32 @register_ftrace_function(ptr noundef %4) #15, !dbg !180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i), !dbg !181
  %tobool6.not.i.i = icmp eq i32 %call.i.i, 0, !dbg !181
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %lor.lhs.false.i.i.if.then_crit_edge, !dbg !182

lor.lhs.false.i.i.if.then_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !182
  br label %if.then, !dbg !182

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !183
  %gcov_ctr10.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 2), align 16, !dbg !183
  %5 = add i64 %gcov_ctr10.i.i, 1, !dbg !183
  store i64 %5, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 2), align 16, !dbg !183
  br label %if.then, !dbg !183

if.then7.i.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !184
  %gcov_ctr13.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 5), align 8, !dbg !184
  %6 = add i64 %gcov_ctr13.i.i, 1, !dbg !184
  store i64 %6, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 5), align 8, !dbg !184
  store i1 true, ptr @function_enabled, align 1, !dbg !184
  br label %if.then, !dbg !185

if.else.i:                                        ; preds = %if.end.i
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 1), align 8, !dbg !186
  %7 = add i64 %gcov_ctr4.i, 1, !dbg !186
  store i64 %7, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 1), align 8, !dbg !186
  %.b1.i7.i = load i1, ptr @function_enabled, align 1, !dbg !187
  br i1 %.b1.i7.i, label %if.else.i.i, label %if.then.i9.i, !dbg !189

if.then.i9.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !190
  %gcov_ctr.i8.i = load i64, ptr @__llvm_gcov_ctr.97, align 16, !dbg !190
  %8 = add i64 %gcov_ctr.i8.i, 1, !dbg !190
  store i64 %8, ptr @__llvm_gcov_ctr.97, align 16, !dbg !190
  br label %if.then, !dbg !190

if.else.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !191
  %gcov_ctr4.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 1), align 8, !dbg !191
  %9 = add i64 %gcov_ctr4.i.i, 1, !dbg !191
  store i64 %9, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 1), align 8, !dbg !191
  %ops.i10.i = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 40, !dbg !192
  %10 = ptrtoint ptr %ops.i10.i to i32, !dbg !192
  call void @__asan_load4_noabort(i32 %10), !dbg !192
  %11 = load ptr, ptr %ops.i10.i, align 4, !dbg !192
  %call.i11.i = tail call i32 @unregister_ftrace_function(ptr noundef %11) #15, !dbg !193
  store i1 false, ptr @function_enabled, align 1, !dbg !194
  br label %if.then, !dbg !195

if.then:                                          ; preds = %if.else.i.i, %if.then.i9.i, %if.then7.i.i, %if.then.i.i, %lor.lhs.false.i.i.if.then_crit_edge
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.26, align 8, !dbg !196
  %12 = add i64 %gcov_ctr, 1, !dbg !196
  store i64 %12, ptr @__llvm_gcov_ctr.26, align 8, !dbg !196
  br label %cleanup, !dbg !196

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !197
  %current_trace = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 23, !dbg !197
  %13 = ptrtoint ptr %current_trace to i32, !dbg !197
  call void @__asan_load4_noabort(i32 %13), !dbg !197
  %14 = load ptr, ptr %current_trace, align 8, !dbg !197
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.98, align 16, !dbg !198
  %15 = add i64 %gcov_ctr.i, 1, !dbg !198
  store i64 %15, ptr @__llvm_gcov_ctr.98, align 16, !dbg !198
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 1), align 8, !dbg !199
  %16 = add i64 %gcov_ctr2, 1, !dbg !199
  store i64 %16, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 1), align 8, !dbg !199
  %call1 = tail call i32 @trace_keep_overwrite(ptr noundef %14, i32 noundef %mask, i32 noundef %set) #15, !dbg !200
  br label %cleanup, !dbg !201

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1, %if.end ], !dbg !202
  ret i32 %retval.0, !dbg !203
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__wakeup_tracer_init(ptr noundef %tr) unnamed_addr #2 align 64 !dbg !204 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !205
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.27, align 8
  %trace_flags = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 24, !dbg !206
  %1 = ptrtoint ptr %trace_flags to i32, !dbg !206
  call void @__asan_load4_noabort(i32 %1), !dbg !206
  %2 = load i32, ptr %trace_flags, align 4, !dbg !206
  store i32 %2, ptr @save_flags, align 4, !dbg !207
  %call = tail call i32 @set_tracer_flag(ptr noundef %tr, i32 noundef 131072, i32 noundef 1) #15, !dbg !208
  %call1 = tail call i32 @set_tracer_flag(ptr noundef %tr, i32 noundef 16384, i32 noundef 1) #15, !dbg !209
  %max_latency = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 5, !dbg !210
  %3 = ptrtoint ptr %max_latency to i32, !dbg !211
  call void @__asan_store4_noabort(i32 %3), !dbg !211
  store i32 0, ptr %max_latency, align 4, !dbg !211
  store ptr %tr, ptr @wakeup_trace, align 4, !dbg !212
  tail call void @ftrace_init_array_ops(ptr noundef %tr, ptr noundef nonnull @wakeup_tracer_call) #15, !dbg !213
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.51, align 8
  %4 = add i64 %gcov_ctr.i.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.51, align 8
  %call.i.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_sched_wakeup, ptr noundef nonnull @probe_wakeup, ptr noundef null) #15, !dbg !214
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i), !dbg !219
  %tobool.not.i = icmp eq i32 %call.i.i, 0, !dbg !219
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i, !dbg !219

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !220
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.29, align 16, !dbg !220
  %5 = add i64 %gcov_ctr.i, 1, !dbg !220
  store i64 %5, ptr @__llvm_gcov_ctr.29, align 16, !dbg !220
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #16, !dbg !220
  br label %start_wakeup_tracer.exit, !dbg !221

if.end.i:                                         ; preds = %entry
  %gcov_ctr.i57.i = load i64, ptr @__llvm_gcov_ctr.53, align 8
  %6 = add i64 %gcov_ctr.i57.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.53, align 8
  %call.i58.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_sched_wakeup_new, ptr noundef nonnull @probe_wakeup, ptr noundef null) #15, !dbg !222
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i), !dbg !225
  %tobool3.not.i = icmp eq i32 %call.i58.i, 0, !dbg !225
  br i1 %tobool3.not.i, label %if.end10.i, label %do.end7.i, !dbg !225

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !226
  %gcov_ctr47.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 1), align 8, !dbg !226
  %7 = add i64 %gcov_ctr47.i, 1, !dbg !226
  store i64 %7, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 1), align 8, !dbg !226
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #16, !dbg !226
  br label %fail_deprobe.i, !dbg !227

if.end10.i:                                       ; preds = %if.end.i
  %gcov_ctr.i59.i = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %8 = add i64 %gcov_ctr.i59.i, 1
  store i64 %8, ptr @__llvm_gcov_ctr.54, align 8
  %call.i60.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_sched_switch, ptr noundef nonnull @probe_wakeup_sched_switch, ptr noundef null) #15, !dbg !228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i), !dbg !231
  %tobool12.not.i = icmp eq i32 %call.i60.i, 0, !dbg !231
  br i1 %tobool12.not.i, label %if.end19.i, label %do.end16.i, !dbg !231

do.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !232
  %gcov_ctr48.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 2), align 16, !dbg !232
  %9 = add i64 %gcov_ctr48.i, 1, !dbg !232
  store i64 %9, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 2), align 16, !dbg !232
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #16, !dbg !232
  br label %fail_deprobe_wake_new.i, !dbg !233

if.end19.i:                                       ; preds = %if.end10.i
  %gcov_ctr.i61.i = load i64, ptr @__llvm_gcov_ctr.56, align 8
  %10 = add i64 %gcov_ctr.i61.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.56, align 8
  %call.i62.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_sched_migrate_task, ptr noundef nonnull @probe_wakeup_migrate_task, ptr noundef null) #15, !dbg !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.i), !dbg !237
  %tobool21.not.i = icmp eq i32 %call.i62.i, 0, !dbg !237
  br i1 %tobool21.not.i, label %if.end28.i, label %do.end25.i, !dbg !237

do.end25.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !238
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #16, !dbg !238
  %gcov_ctr51.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 5), align 8, !dbg !239
  %11 = add i64 %gcov_ctr51.i, 1, !dbg !239
  store i64 %11, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 5), align 8, !dbg !239
  %gcov_ctr.i63.i = load i64, ptr @__llvm_gcov_ctr.60, align 8
  %12 = add i64 %gcov_ctr.i63.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.60, align 8
  %call.i64.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_switch, ptr noundef nonnull @probe_wakeup_sched_switch, ptr noundef null) #15, !dbg !240
  br label %fail_deprobe_wake_new.i, !dbg !239

if.end28.i:                                       ; preds = %if.end19.i
  tail call fastcc void @wakeup_reset(ptr noundef %tr) #15, !dbg !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !243, !srcloc !244
  %.b1.i.i.i = load i1, ptr @function_enabled, align 1, !dbg !245
  br i1 %.b1.i.i.i, label %if.end28.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i, !dbg !249

if.end28.i.if.then.i.i.i_crit_edge:               ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !249
  br label %if.then.i.i.i, !dbg !249

lor.lhs.false.i.i.i:                              ; preds = %if.end28.i
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.93, align 16, !dbg !250
  %13 = add i64 %gcov_ctr.i.i.i, 1, !dbg !250
  store i64 %13, ptr @__llvm_gcov_ctr.93, align 16, !dbg !250
  %gcov_ctr9.i.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 1), align 8, !dbg !251
  %14 = add i64 %gcov_ctr9.i.i.i, 1, !dbg !251
  store i64 %14, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 1), align 8, !dbg !251
  %15 = ptrtoint ptr %trace_flags to i32, !dbg !252
  call void @__asan_load4_noabort(i32 %15), !dbg !252
  %16 = load i32, ptr %trace_flags, align 4, !dbg !252
  %and.i.i.i = and i32 %16, 16777216, !dbg !253
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i), !dbg !253
  %tobool2.not.i.i.i = icmp eq i32 %and.i.i.i, 0, !dbg !253
  br i1 %tobool2.not.i.i.i, label %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, label %if.else.i.i.i, !dbg !245

lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !245
  br label %if.then.i.i.i, !dbg !245

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, %if.end28.i.if.then.i.i.i_crit_edge
  %gcov_ctr10.i.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 2), align 16, !dbg !254
  %17 = add i64 %gcov_ctr10.i.i.i, 1, !dbg !254
  store i64 %17, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 2), align 16, !dbg !254
  br label %land.lhs.true.i.i, !dbg !254

if.else.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i
  %gcov_ctr11.i.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 3), align 8, !dbg !255
  %18 = add i64 %gcov_ctr11.i.i.i, 1, !dbg !255
  store i64 %18, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 3), align 8, !dbg !255
  %ops.i.i.i = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 40, !dbg !256
  %19 = ptrtoint ptr %ops.i.i.i to i32, !dbg !256
  call void @__asan_load4_noabort(i32 %19), !dbg !256
  %20 = load ptr, ptr %ops.i.i.i, align 4, !dbg !256
  %call.i.i.i = tail call i32 @register_ftrace_function(ptr noundef %20) #15, !dbg !257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i), !dbg !258
  %tobool6.not.i.i.i = icmp eq i32 %call.i.i.i, 0, !dbg !258
  br i1 %tobool6.not.i.i.i, label %if.then7.i.i.i, label %do.end40.i, !dbg !259

if.then7.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !260
  %gcov_ctr13.i.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 5), align 8, !dbg !260
  %21 = add i64 %gcov_ctr13.i.i.i, 1, !dbg !260
  store i64 %21, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 5), align 8, !dbg !260
  store i1 true, ptr @function_enabled, align 1, !dbg !260
  br label %land.lhs.true.i.i, !dbg !261

land.lhs.true.i.i:                                ; preds = %if.then7.i.i.i, %if.then.i.i.i
  %gcov_ctr.i65.i = load i64, ptr @__llvm_gcov_ctr.59, align 16, !dbg !262
  %22 = add i64 %gcov_ctr.i65.i, 1, !dbg !262
  store i64 %22, ptr @__llvm_gcov_ctr.59, align 16, !dbg !262
  %call1.i.i = tail call i32 @tracing_is_enabled() #15, !dbg !262
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i), !dbg !262
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0, !dbg !262
  br i1 %tobool2.not.i.i, label %start_func_tracer.exit.thread73.i, label %start_func_tracer.exit.thread.i, !dbg !263

start_func_tracer.exit.thread73.i:                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !264
  %gcov_ctr4.i75.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 2), align 16, !dbg !264
  %23 = add i64 %gcov_ctr4.i75.i, 1, !dbg !264
  store i64 %23, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 2), align 16, !dbg !264
  store i1 false, ptr @tracer_enabled, align 4, !dbg !265
  br label %if.end43.i, !dbg !266

start_func_tracer.exit.thread.i:                  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !267
  %gcov_ctr3.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 1), align 8, !dbg !267
  %24 = add i64 %gcov_ctr3.i.i, 1, !dbg !267
  store i64 %24, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 1), align 8, !dbg !267
  store i1 true, ptr @tracer_enabled, align 4, !dbg !265
  br label %if.end43.i, !dbg !266

do.end40.i:                                       ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !264
  %gcov_ctr4.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 2), align 16, !dbg !264
  %25 = add i64 %gcov_ctr4.i.i, 1, !dbg !264
  store i64 %25, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 2), align 16, !dbg !264
  store i1 false, ptr @tracer_enabled, align 4, !dbg !265
  %gcov_ctr49.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 3), align 8, !dbg !268
  %26 = add i64 %gcov_ctr49.i, 1, !dbg !268
  store i64 %26, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 3), align 8, !dbg !268
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #16, !dbg !268
  br label %if.end43.i, !dbg !268

if.end43.i:                                       ; preds = %do.end40.i, %start_func_tracer.exit.thread.i, %start_func_tracer.exit.thread73.i
  %gcov_ctr50.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 4), align 16
  %27 = add i64 %gcov_ctr50.i, 1
  store i64 %27, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 4), align 16
  br label %start_wakeup_tracer.exit, !dbg !269

fail_deprobe_wake_new.i:                          ; preds = %do.end25.i, %do.end16.i
  %gcov_ctr.i66.i = load i64, ptr @__llvm_gcov_ctr.61, align 8
  %28 = add i64 %gcov_ctr.i66.i, 1
  store i64 %28, ptr @__llvm_gcov_ctr.61, align 8
  %call.i67.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_wakeup_new, ptr noundef nonnull @probe_wakeup, ptr noundef null) #15, !dbg !270
  br label %fail_deprobe.i, !dbg !272

fail_deprobe.i:                                   ; preds = %fail_deprobe_wake_new.i, %do.end7.i
  %gcov_ctr.i68.i = load i64, ptr @__llvm_gcov_ctr.62, align 8
  %29 = add i64 %gcov_ctr.i68.i, 1
  store i64 %29, ptr @__llvm_gcov_ctr.62, align 8
  %call.i69.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_wakeup, ptr noundef nonnull @probe_wakeup, ptr noundef null) #15, !dbg !273
  br label %start_wakeup_tracer.exit, !dbg !275

start_wakeup_tracer.exit:                         ; preds = %fail_deprobe.i, %if.end43.i, %do.end.i
  store i1 true, ptr @wakeup_busy, align 1, !dbg !276
  ret void, !dbg !277
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_tracer_flag(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_init_array_ops(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wakeup_tracer_call(i32 noundef %ip, i32 noundef %parent_ip, ptr nocapture noundef readnone %op, ptr nocapture noundef readnone %fregs) #2 align 64 !dbg !278 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !279
  %0 = load ptr, ptr @wakeup_trace, align 4, !dbg !280
  %1 = load ptr, ptr @wakeup_task, align 4, !dbg !281
  %tobool.not.i = icmp eq ptr %1, null, !dbg !281
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i, !dbg !281, !prof !284

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !285
  %gcov_ctr.i63 = load i64, ptr @__llvm_gcov_ctr.30, align 16, !dbg !285
  %2 = add i64 %gcov_ctr.i63, 1, !dbg !285
  store i64 %2, ptr @__llvm_gcov_ctr.30, align 16, !dbg !285
  br label %cleanup, !dbg !285

if.end.i:                                         ; preds = %entry
  %call.i = tail call fastcc i32 @tracing_gen_ctx() #15, !dbg !286
  %gcov_ctr.i.i64 = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %3 = add i64 %gcov_ctr.i.i64, 1
  store i64 %3, ptr @__llvm_gcov_ctr.38, align 8
  %gcov_ctr.i.i.i65 = load i64, ptr @__llvm_gcov_ctr.43, align 8, !dbg !287
  %4 = add i64 %gcov_ctr.i.i.i65, 1, !dbg !287
  store i64 %4, ptr @__llvm_gcov_ctr.43, align 8, !dbg !287
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.39, align 8, !dbg !293
  %5 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !293
  store i64 %5, ptr @__llvm_gcov_ctr.39, align 8, !dbg !293
  %6 = tail call i32 @llvm.read_register.i32(metadata !64) #15, !dbg !293
  %and.i.i.i.i = and i32 %6, -16384, !dbg !297
  %7 = inttoptr i32 %and.i.i.i.i to ptr, !dbg !298
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1, !dbg !299
  %8 = ptrtoint ptr %preempt_count.i.i.i to i32, !dbg !300
  call void @__asan_load4_noabort(i32 %8), !dbg !300
  %9 = load volatile i32, ptr %preempt_count.i.i.i, align 4, !dbg !300
  %add.i.i = add i32 %9, 1, !dbg !300
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4, !dbg !300
  tail call void asm sideeffect "", "~{memory}"() #15, !dbg !301, !srcloc !302
  %gcov_ctr.i49.i = load i64, ptr @__llvm_gcov_ctr.39, align 8, !dbg !303
  %10 = add i64 %gcov_ctr.i49.i, 1, !dbg !303
  store i64 %10, ptr @__llvm_gcov_ctr.39, align 8, !dbg !303
  %11 = tail call i32 @llvm.read_register.i32(metadata !64) #15, !dbg !303
  %and.i.i = and i32 %11, -16384, !dbg !305
  %12 = inttoptr i32 %and.i.i to ptr, !dbg !306
  %cpu5.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3, !dbg !307
  %13 = ptrtoint ptr %cpu5.i to i32, !dbg !307
  call void @__asan_load4_noabort(i32 %13), !dbg !307
  %14 = load i32, ptr %cpu5.i, align 4, !dbg !307
  %15 = load i32, ptr @wakeup_current_cpu, align 4, !dbg !308
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %15), !dbg !309
  %cmp.not.i = icmp eq i32 %14, %15, !dbg !309
  br i1 %cmp.not.i, label %do.body8.i, label %if.then6.i, !dbg !310

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !311
  %gcov_ctr29.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 1), align 8, !dbg !311
  %16 = add i64 %gcov_ctr29.i, 1, !dbg !311
  store i64 %16, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 1), align 8, !dbg !311
  br label %do.body25.i, !dbg !311

do.body8.i:                                       ; preds = %if.end.i
  %data11.i = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 2, !dbg !312
  %17 = ptrtoint ptr %data11.i to i32, !dbg !312
  call void @__asan_load4_noabort(i32 %17), !dbg !312
  %18 = load ptr, ptr %data11.i, align 8, !dbg !312
  %19 = ptrtoint ptr %18 to i32, !dbg !312
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14, !dbg !312
  %20 = ptrtoint ptr %arrayidx.i to i32, !dbg !312
  call void @__asan_load4_noabort(i32 %20), !dbg !312
  %21 = load i32, ptr %arrayidx.i, align 4, !dbg !312
  %add.i = add i32 %21, %19, !dbg !312
  %22 = inttoptr i32 %add.i to ptr, !dbg !312
  %gcov_ctr.i35.i = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %23 = add i64 %gcov_ctr.i35.i, 1
  store i64 %23, ptr @__llvm_gcov_ctr.40, align 8
  %gcov_ctr.i.i36.i = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %24 = add i64 %gcov_ctr.i.i36.i, 1
  store i64 %24, ptr @__llvm_gcov_ctr.44, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %22, i32 noundef 4) #15, !dbg !313
  %gcov_ctr.i.i.i37.i = load i64, ptr @__llvm_gcov_ctr.46, align 8
  %25 = add i64 %gcov_ctr.i.i.i37.i, 1
  store i64 %25, ptr @__llvm_gcov_ctr.46, align 8
  %gcov_ctr.i2.i.i = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %26 = add i64 %gcov_ctr.i2.i.i, 1
  store i64 %26, ptr @__llvm_gcov_ctr.45, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !320, !srcloc !326
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.48, align 8
  %27 = add i64 %gcov_ctr.i.i.i.i.i, 1
  store i64 %27, ptr @__llvm_gcov_ctr.48, align 8
  tail call void @llvm.prefetch.p0(ptr %22, i32 1, i32 3, i32 1) #15, !dbg !327
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #15, !dbg !327, !srcloc !331
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %28, 0, !dbg !327
  %gcov_ctr.i.i3.i.i = load i64, ptr @__llvm_gcov_ctr.47, align 8, !dbg !332
  %29 = add i64 %gcov_ctr.i.i3.i.i, 1, !dbg !332
  store i64 %29, ptr @__llvm_gcov_ctr.47, align 8, !dbg !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !332, !srcloc !333
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i), !dbg !334
  %cmp15.not.i = icmp eq i32 %asmresult.i.i.i.i.i, 1, !dbg !334
  br i1 %cmp15.not.i, label %do.body1, label %out.i, !dbg !334, !prof !284

out.i:                                            ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !335
  %gcov_ctr31.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 3), align 8, !dbg !335
  %30 = add i64 %gcov_ctr31.i, 1, !dbg !335
  store i64 %30, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 3), align 8, !dbg !335
  %gcov_ctr.i38.i = load i64, ptr @__llvm_gcov_ctr.35, align 8
  %31 = add i64 %gcov_ctr.i38.i, 1
  store i64 %31, ptr @__llvm_gcov_ctr.35, align 8
  %gcov_ctr.i.i39.i = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %32 = add i64 %gcov_ctr.i.i39.i, 1
  store i64 %32, ptr @__llvm_gcov_ctr.44, align 8
  %call.i.i40.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %22, i32 noundef 4) #15, !dbg !336
  %gcov_ctr.i.i.i41.i = load i64, ptr @__llvm_gcov_ctr.46, align 8
  %33 = add i64 %gcov_ctr.i.i.i41.i, 1
  store i64 %33, ptr @__llvm_gcov_ctr.46, align 8
  %gcov_ctr.i2.i42.i = load i64, ptr @__llvm_gcov_ctr.49, align 8
  %34 = add i64 %gcov_ctr.i2.i42.i, 1
  store i64 %34, ptr @__llvm_gcov_ctr.49, align 8
  %gcov_ctr.i.i3.i43.i = load i64, ptr @__llvm_gcov_ctr.50, align 8
  %35 = add i64 %gcov_ctr.i.i3.i43.i, 1
  store i64 %35, ptr @__llvm_gcov_ctr.50, align 8
  tail call void @llvm.prefetch.p0(ptr %22, i32 1, i32 3, i32 1) #15, !dbg !340
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #15, !dbg !340, !srcloc !345
  br label %do.body25.i, !dbg !346

do.body25.i:                                      ; preds = %out.i, %if.then6.i
  tail call void asm sideeffect "", "~{memory}"() #15, !dbg !347, !srcloc !348
  %gcov_ctr.i44.i = load i64, ptr @__llvm_gcov_ctr.36, align 8
  %37 = add i64 %gcov_ctr.i44.i, 1
  store i64 %37, ptr @__llvm_gcov_ctr.36, align 8
  %gcov_ctr.i.i45.i = load i64, ptr @__llvm_gcov_ctr.43, align 8, !dbg !349
  %38 = add i64 %gcov_ctr.i.i45.i, 1, !dbg !349
  store i64 %38, ptr @__llvm_gcov_ctr.43, align 8, !dbg !349
  %gcov_ctr.i.i.i46.i = load i64, ptr @__llvm_gcov_ctr.39, align 8, !dbg !353
  %39 = add i64 %gcov_ctr.i.i.i46.i, 1, !dbg !353
  store i64 %39, ptr @__llvm_gcov_ctr.39, align 8, !dbg !353
  %40 = tail call i32 @llvm.read_register.i32(metadata !64) #15, !dbg !353
  %and.i.i.i47.i = and i32 %40, -16384, !dbg !355
  %41 = inttoptr i32 %and.i.i.i47.i to ptr, !dbg !356
  %preempt_count.i.i48.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1, !dbg !357
  %42 = ptrtoint ptr %preempt_count.i.i48.i to i32, !dbg !358
  call void @__asan_load4_noabort(i32 %42), !dbg !358
  %43 = load volatile i32, ptr %preempt_count.i.i48.i, align 4, !dbg !358
  %sub.i.i = add i32 %43, -1, !dbg !358
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i48.i, align 4, !dbg !358
  br label %cleanup, !dbg !359

do.body1:                                         ; preds = %do.body8.i
  %gcov_ctr30.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 2), align 16, !dbg !360
  %44 = add i64 %gcov_ctr30.i, 1, !dbg !360
  store i64 %44, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 2), align 16, !dbg !360
  %gcov_ctr.i66 = load i64, ptr @__llvm_gcov_ctr.31, align 8
  %45 = add i64 %gcov_ctr.i66, 1
  store i64 %45, ptr @__llvm_gcov_ctr.31, align 8
  %46 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !dbg !361, !srcloc !365
  %gcov_ctr.i67 = load i64, ptr @__llvm_gcov_ctr.32, align 8
  %47 = add i64 %gcov_ctr.i67, 1
  store i64 %47, ptr @__llvm_gcov_ctr.32, align 8
  %and.i = and i32 %46, 128, !dbg !366
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !369
  %tobool10.not = icmp eq i32 %and.i, 0, !dbg !369
  br i1 %tobool10.not, label %if.then11, label %do.body26.critedge, !dbg !369

if.then11:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14, !dbg !369
  %gcov_ctr52 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 1), align 8, !dbg !369
  %48 = add i64 %gcov_ctr52, 1, !dbg !369
  store i64 %48, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 1), align 8, !dbg !369
  tail call void @trace_hardirqs_off() #15, !dbg !369
  tail call void @trace_function(ptr noundef %0, i32 noundef %ip, i32 noundef %parent_ip, i32 noundef %call.i) #15, !dbg !370
  %gcov_ctr.i68.c = load i64, ptr @__llvm_gcov_ctr.32, align 8
  %49 = add i64 %gcov_ctr.i68.c, 1
  store i64 %49, ptr @__llvm_gcov_ctr.32, align 8
  %gcov_ctr53 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 2), align 16, !dbg !371
  %50 = add i64 %gcov_ctr53, 1, !dbg !371
  store i64 %50, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 2), align 16, !dbg !371
  tail call void @trace_hardirqs_on() #15, !dbg !371
  br label %do.body26, !dbg !371

do.body26.critedge:                               ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14, !dbg !370
  tail call void @trace_function(ptr noundef %0, i32 noundef %ip, i32 noundef %parent_ip, i32 noundef %call.i) #15, !dbg !370
  %gcov_ctr.i68.c80 = load i64, ptr @__llvm_gcov_ctr.32, align 8
  %51 = add i64 %gcov_ctr.i68.c80, 1
  store i64 %51, ptr @__llvm_gcov_ctr.32, align 8
  br label %do.body26, !dbg !371

do.body26:                                        ; preds = %do.body26.critedge, %if.then11
  %gcov_ctr.i70 = load i64, ptr @__llvm_gcov_ctr.33, align 8, !dbg !372
  %52 = add i64 %gcov_ctr.i70, 1, !dbg !372
  store i64 %52, ptr @__llvm_gcov_ctr.33, align 8, !dbg !372
  %gcov_ctr.i.i71 = load i64, ptr @__llvm_gcov_ctr.41, align 8
  %53 = add i64 %gcov_ctr.i.i71, 1
  store i64 %53, ptr @__llvm_gcov_ctr.41, align 8
  %54 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !dbg !376, !srcloc !379
  %gcov_ctr.i2.i72 = load i64, ptr @__llvm_gcov_ctr.32, align 8
  %55 = add i64 %gcov_ctr.i2.i72, 1
  store i64 %55, ptr @__llvm_gcov_ctr.32, align 8
  %and.i.i73 = and i32 %54, 128, !dbg !380
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i73), !dbg !371
  %tobool34.not = icmp eq i32 %and.i.i73, 0, !dbg !371
  br i1 %tobool34.not, label %if.then38, label %do.body26.do.end41_crit_edge, !dbg !371, !prof !382

do.body26.do.end41_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14, !dbg !371
  br label %do.end41, !dbg !371

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14, !dbg !371
  %gcov_ctr54 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 3), align 8, !dbg !371
  %56 = add i64 %gcov_ctr54, 1, !dbg !371
  store i64 %56, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 3), align 8, !dbg !371
  tail call void @warn_bogus_irq_restore() #15, !dbg !371
  br label %do.end41, !dbg !371

do.end41:                                         ; preds = %if.then38, %do.body26.do.end41_crit_edge
  %gcov_ctr.i74 = load i64, ptr @__llvm_gcov_ctr.34, align 8
  %57 = add i64 %gcov_ctr.i74, 1
  store i64 %57, ptr @__llvm_gcov_ctr.34, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %46) #15, !dbg !383, !srcloc !386
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.35, align 8
  %58 = add i64 %gcov_ctr.i, 1
  store i64 %58, ptr @__llvm_gcov_ctr.35, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %59 = add i64 %gcov_ctr.i.i, 1
  store i64 %59, ptr @__llvm_gcov_ctr.44, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %22, i32 noundef 4) #15, !dbg !387
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.46, align 8
  %60 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %60, ptr @__llvm_gcov_ctr.46, align 8
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.49, align 8
  %61 = add i64 %gcov_ctr.i2.i, 1
  store i64 %61, ptr @__llvm_gcov_ctr.49, align 8
  %gcov_ctr.i.i3.i = load i64, ptr @__llvm_gcov_ctr.50, align 8
  %62 = add i64 %gcov_ctr.i.i3.i, 1
  store i64 %62, ptr @__llvm_gcov_ctr.50, align 8
  tail call void @llvm.prefetch.p0(ptr %22, i32 1, i32 3, i32 1) #15, !dbg !390
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #15, !dbg !390, !srcloc !345
  tail call void asm sideeffect "", "~{memory}"() #15, !dbg !393, !srcloc !394
  %gcov_ctr.i60 = load i64, ptr @__llvm_gcov_ctr.36, align 8
  %64 = add i64 %gcov_ctr.i60, 1
  store i64 %64, ptr @__llvm_gcov_ctr.36, align 8
  %gcov_ctr.i.i61 = load i64, ptr @__llvm_gcov_ctr.43, align 8, !dbg !395
  %65 = add i64 %gcov_ctr.i.i61, 1, !dbg !395
  store i64 %65, ptr @__llvm_gcov_ctr.43, align 8, !dbg !395
  %gcov_ctr.i.i.i62 = load i64, ptr @__llvm_gcov_ctr.39, align 8, !dbg !398
  %66 = add i64 %gcov_ctr.i.i.i62, 1, !dbg !398
  store i64 %66, ptr @__llvm_gcov_ctr.39, align 8, !dbg !398
  %67 = tail call i32 @llvm.read_register.i32(metadata !64) #15, !dbg !398
  %and.i.i.i = and i32 %67, -16384, !dbg !400
  %68 = inttoptr i32 %and.i.i.i to ptr, !dbg !401
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1, !dbg !402
  %69 = ptrtoint ptr %preempt_count.i.i to i32, !dbg !403
  call void @__asan_load4_noabort(i32 %69), !dbg !403
  %70 = load volatile i32, ptr %preempt_count.i.i, align 4, !dbg !403
  %sub.i = add i32 %70, -1, !dbg !403
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4, !dbg !403
  br label %cleanup, !dbg !404

cleanup:                                          ; preds = %do.end41, %do.body25.i, %if.then.i
  %.sink = phi ptr [ getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 4), %do.end41 ], [ @__llvm_gcov_ctr.28, %if.then.i ], [ @__llvm_gcov_ctr.28, %do.body25.i ]
  %71 = ptrtoint ptr %.sink to i32
  call void @__asan_load8_noabort(i32 %71)
  %gcov_ctr55 = load i64, ptr %.sink, align 16
  %72 = add i64 %gcov_ctr55, 1
  store i64 %72, ptr %.sink, align 16
  ret void, !dbg !404
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_function(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tracing_gen_ctx() unnamed_addr #4 align 64 !dbg !405 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !407
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.37, align 8, !dbg !408
  %0 = add i64 %gcov_ctr, 1, !dbg !408
  store i64 %0, ptr @__llvm_gcov_ctr.37, align 8, !dbg !408
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.41, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.41, align 8
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !dbg !409, !srcloc !379
  %gcov_ctr.i2 = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %3 = add i64 %gcov_ctr.i2, 1
  store i64 %3, ptr @__llvm_gcov_ctr.42, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.32, align 8
  %4 = add i64 %gcov_ctr.i.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.32, align 8
  %and.i.i = lshr i32 %2, 7, !dbg !411
  %and.i.lobit.i = and i32 %and.i.i, 1, !dbg !411
  %call2.i = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %and.i.lobit.i) #15, !dbg !414
  ret i32 %call2.i, !dbg !415
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_gen_ctx_irq_test(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @probe_wakeup(ptr nocapture noundef readnone %ignore, ptr noundef %p) #2 align 64 !dbg !416 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !417
  %gcov_ctr.i140 = load i64, ptr @__llvm_gcov_ctr.39, align 8, !dbg !418
  %0 = add i64 %gcov_ctr.i140, 1, !dbg !418
  store i64 %0, ptr @__llvm_gcov_ctr.39, align 8, !dbg !418
  %1 = tail call i32 @llvm.read_register.i32(metadata !64) #15, !dbg !418
  %and.i = and i32 %1, -16384, !dbg !420
  %2 = inttoptr i32 %and.i to ptr, !dbg !421
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3, !dbg !422
  %3 = ptrtoint ptr %cpu1 to i32, !dbg !422
  call void @__asan_load4_noabort(i32 %3), !dbg !422
  %4 = load i32, ptr %cpu1, align 4, !dbg !422
  %.b127 = load i1, ptr @tracer_enabled, align 4, !dbg !423
  br i1 %.b127, label %if.end, label %if.then, !dbg !423, !prof !382

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !424
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.52, align 16
  %5 = add i64 %gcov_ctr, 1
  store i64 %5, ptr @__llvm_gcov_ctr.52, align 16
  br label %cleanup, !dbg !425

if.end:                                           ; preds = %entry
  tail call void @tracing_record_cmdline(ptr noundef %p) #15, !dbg !426
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2, !dbg !427
  %6 = ptrtoint ptr %task to i32, !dbg !427
  call void @__asan_load4_noabort(i32 %6), !dbg !427
  %7 = load ptr, ptr %task, align 8, !dbg !427
  tail call void @tracing_record_cmdline(ptr noundef %7) #15, !dbg !428
  %.b129130 = load i1, ptr @tracing_dl, align 1, !dbg !429
  br i1 %.b129130, label %if.end.if.then28_crit_edge, label %lor.lhs.false, !dbg !430

if.end.if.then28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14, !dbg !430
  br label %if.then28, !dbg !430

lor.lhs.false:                                    ; preds = %if.end
  %gcov_ctr93 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 1), align 8, !dbg !431
  %8 = add i64 %gcov_ctr93, 1, !dbg !431
  store i64 %8, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 1), align 8, !dbg !431
  %.b131 = load i1, ptr @wakeup_dl, align 1, !dbg !431
  br i1 %.b131, label %land.lhs.true, label %lor.lhs.false.lor.lhs.false10_crit_edge, !dbg !432

lor.lhs.false.lor.lhs.false10_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14, !dbg !432
  br label %lor.lhs.false10, !dbg !432

land.lhs.true:                                    ; preds = %lor.lhs.false
  %gcov_ctr94 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 2), align 16, !dbg !433
  %9 = add i64 %gcov_ctr94, 1, !dbg !433
  store i64 %9, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 2), align 16, !dbg !433
  %gcov_ctr.i141 = load i64, ptr @__llvm_gcov_ctr.63, align 8
  %10 = add i64 %gcov_ctr.i141, 1
  store i64 %10, ptr @__llvm_gcov_ctr.63, align 8
  %prio.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 13, !dbg !434
  %11 = ptrtoint ptr %prio.i to i32, !dbg !434
  call void @__asan_load4_noabort(i32 %11), !dbg !434
  %12 = load i32, ptr %prio.i, align 8, !dbg !434
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12), !dbg !438
  %cmp.i.i = icmp slt i32 %12, 0, !dbg !438
  %__llvm_gcov_ctr.73..i.i = select i1 %cmp.i.i, ptr @__llvm_gcov_ctr.73, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.73, i32 0, i32 1), !dbg !441, !prof !382
  %13 = ptrtoint ptr %__llvm_gcov_ctr.73..i.i to i32, !dbg !441
  call void @__asan_load8_noabort(i32 %13), !dbg !441
  %gcov_ctr2.i.i = load i64, ptr %__llvm_gcov_ctr.73..i.i, align 8, !dbg !441
  %14 = add i64 %gcov_ctr2.i.i, 1, !dbg !441
  store i64 %14, ptr %__llvm_gcov_ctr.73..i.i, align 8, !dbg !441
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12), !dbg !442
  %tobool9.not = icmp sgt i32 %12, -1, !dbg !442
  br i1 %tobool9.not, label %land.lhs.true.if.then28_crit_edge, label %land.lhs.true.lor.lhs.false10_crit_edge, !dbg !443

land.lhs.true.lor.lhs.false10_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14, !dbg !443
  br label %lor.lhs.false10, !dbg !443

land.lhs.true.if.then28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14, !dbg !443
  br label %if.then28, !dbg !443

lor.lhs.false10:                                  ; preds = %land.lhs.true.lor.lhs.false10_crit_edge, %lor.lhs.false.lor.lhs.false10_crit_edge
  %.b125132 = load i1, ptr @wakeup_rt, align 1, !dbg !444
  br i1 %.b125132, label %land.lhs.true12, label %lor.lhs.false10.lor.lhs.false18_crit_edge, !dbg !445

lor.lhs.false10.lor.lhs.false18_crit_edge:        ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #14, !dbg !445
  br label %lor.lhs.false18, !dbg !445

land.lhs.true12:                                  ; preds = %lor.lhs.false10
  %gcov_ctr95 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 3), align 8, !dbg !446
  %15 = add i64 %gcov_ctr95, 1, !dbg !446
  store i64 %15, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 3), align 8, !dbg !446
  %gcov_ctr.i142 = load i64, ptr @__llvm_gcov_ctr.63, align 8
  %16 = add i64 %gcov_ctr.i142, 1
  store i64 %16, ptr @__llvm_gcov_ctr.63, align 8
  %prio.i143 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 13, !dbg !447
  %17 = ptrtoint ptr %prio.i143 to i32, !dbg !447
  call void @__asan_load4_noabort(i32 %17), !dbg !447
  %18 = load i32, ptr %prio.i143, align 8, !dbg !447
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18), !dbg !449
  %cmp.i.i144 = icmp slt i32 %18, 0, !dbg !449
  %__llvm_gcov_ctr.73..i.i145 = select i1 %cmp.i.i144, ptr @__llvm_gcov_ctr.73, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.73, i32 0, i32 1), !dbg !451, !prof !382
  %19 = ptrtoint ptr %__llvm_gcov_ctr.73..i.i145 to i32, !dbg !451
  call void @__asan_load8_noabort(i32 %19), !dbg !451
  %gcov_ctr2.i.i147 = load i64, ptr %__llvm_gcov_ctr.73..i.i145, align 8, !dbg !451
  %20 = add i64 %gcov_ctr2.i.i147, 1, !dbg !451
  store i64 %20, ptr %__llvm_gcov_ctr.73..i.i145, align 8, !dbg !451
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18), !dbg !452
  %tobool14.not = icmp sgt i32 %18, -1, !dbg !452
  br i1 %tobool14.not, label %land.lhs.true15, label %land.lhs.true12.lor.lhs.false18_crit_edge, !dbg !453

land.lhs.true12.lor.lhs.false18_crit_edge:        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14, !dbg !453
  br label %lor.lhs.false18, !dbg !453

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %gcov_ctr96 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 4), align 16, !dbg !454
  %21 = add i64 %gcov_ctr96, 1, !dbg !454
  store i64 %21, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 4), align 16, !dbg !454
  %gcov_ctr.i148 = load i64, ptr @__llvm_gcov_ctr.64, align 8
  %22 = add i64 %gcov_ctr.i148, 1
  store i64 %22, ptr @__llvm_gcov_ctr.64, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %18), !dbg !455
  %cmp.i.i150 = icmp ult i32 %18, 100, !dbg !455
  %__llvm_gcov_ctr.74..i.i = select i1 %cmp.i.i150, ptr @__llvm_gcov_ctr.74, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 1), !dbg !461, !prof !382
  %23 = ptrtoint ptr %__llvm_gcov_ctr.74..i.i to i32, !dbg !461
  call void @__asan_load8_noabort(i32 %23), !dbg !461
  %gcov_ctr2.i.i151 = load i64, ptr %__llvm_gcov_ctr.74..i.i, align 8, !dbg !461
  %24 = add i64 %gcov_ctr2.i.i151, 1, !dbg !461
  store i64 %24, ptr %__llvm_gcov_ctr.74..i.i, align 8, !dbg !461
  br i1 %cmp.i.i150, label %land.lhs.true15.lor.lhs.false18_crit_edge, label %land.lhs.true15.if.then28_crit_edge, !dbg !462

land.lhs.true15.if.then28_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14, !dbg !462
  br label %if.then28, !dbg !462

land.lhs.true15.lor.lhs.false18_crit_edge:        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14, !dbg !462
  br label %lor.lhs.false18, !dbg !462

lor.lhs.false18:                                  ; preds = %land.lhs.true15.lor.lhs.false18_crit_edge, %land.lhs.true12.lor.lhs.false18_crit_edge, %lor.lhs.false10.lor.lhs.false18_crit_edge
  %gcov_ctr.i152 = load i64, ptr @__llvm_gcov_ctr.63, align 8
  %25 = add i64 %gcov_ctr.i152, 1
  store i64 %25, ptr @__llvm_gcov_ctr.63, align 8
  %prio.i153 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 13, !dbg !463
  %26 = ptrtoint ptr %prio.i153 to i32, !dbg !463
  call void @__asan_load4_noabort(i32 %26), !dbg !463
  %27 = load i32, ptr %prio.i153, align 8, !dbg !463
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27), !dbg !465
  %cmp.i.i154 = icmp slt i32 %27, 0, !dbg !465
  %__llvm_gcov_ctr.73..i.i155 = select i1 %cmp.i.i154, ptr @__llvm_gcov_ctr.73, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.73, i32 0, i32 1), !dbg !467, !prof !382
  %28 = ptrtoint ptr %__llvm_gcov_ctr.73..i.i155 to i32, !dbg !467
  call void @__asan_load8_noabort(i32 %28), !dbg !467
  %gcov_ctr2.i.i157 = load i64, ptr %__llvm_gcov_ctr.73..i.i155, align 8, !dbg !467
  %29 = add i64 %gcov_ctr2.i.i157, 1, !dbg !467
  store i64 %29, ptr %__llvm_gcov_ctr.73..i.i155, align 8, !dbg !467
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27), !dbg !468
  %tobool20.not = icmp sgt i32 %27, -1, !dbg !468
  br i1 %tobool20.not, label %land.lhs.true21, label %lor.lhs.false18.do.body_crit_edge, !dbg !469

lor.lhs.false18.do.body_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #14, !dbg !469
  br label %do.body, !dbg !469

land.lhs.true21:                                  ; preds = %lor.lhs.false18
  %gcov_ctr97 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 5), align 8, !dbg !470
  %30 = add i64 %gcov_ctr97, 1, !dbg !470
  store i64 %30, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 5), align 8, !dbg !470
  %31 = load i32, ptr @wakeup_prio, align 4, !dbg !471
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %31), !dbg !472
  %cmp.not = icmp ult i32 %27, %31, !dbg !472
  br i1 %cmp.not, label %lor.lhs.false22, label %land.lhs.true21.if.then28_crit_edge, !dbg !473

land.lhs.true21.if.then28_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14, !dbg !473
  br label %if.then28, !dbg !473

lor.lhs.false22:                                  ; preds = %land.lhs.true21
  %gcov_ctr98 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 6), align 16, !dbg !474
  %32 = add i64 %gcov_ctr98, 1, !dbg !474
  store i64 %32, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 6), align 16, !dbg !474
  %33 = ptrtoint ptr %task to i32, !dbg !475
  call void @__asan_load4_noabort(i32 %33), !dbg !475
  %34 = load ptr, ptr %task, align 8, !dbg !475
  %prio26 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 13, !dbg !476
  %35 = ptrtoint ptr %prio26 to i32, !dbg !476
  call void @__asan_load4_noabort(i32 %35), !dbg !476
  %36 = load i32, ptr %prio26, align 8, !dbg !476
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %36), !dbg !477
  %cmp27.not = icmp slt i32 %27, %36, !dbg !477
  br i1 %cmp27.not, label %lor.lhs.false22.do.body_crit_edge, label %lor.lhs.false22.if.then28_crit_edge, !dbg !429

lor.lhs.false22.if.then28_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #14, !dbg !429
  br label %if.then28, !dbg !429

lor.lhs.false22.do.body_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #14, !dbg !429
  br label %do.body, !dbg !429

if.then28:                                        ; preds = %lor.lhs.false22.if.then28_crit_edge, %land.lhs.true21.if.then28_crit_edge, %land.lhs.true15.if.then28_crit_edge, %land.lhs.true.if.then28_crit_edge, %if.end.if.then28_crit_edge
  %gcov_ctr99 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 7), align 8
  %37 = add i64 %gcov_ctr99, 1
  store i64 %37, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 7), align 8
  br label %cleanup, !dbg !478

do.body:                                          ; preds = %lor.lhs.false22.do.body_crit_edge, %lor.lhs.false18.do.body_crit_edge
  %38 = load ptr, ptr @wakeup_trace, align 4, !dbg !479
  %data30 = getelementptr inbounds %struct.trace_array, ptr %38, i32 0, i32 2, i32 2, !dbg !479
  %39 = ptrtoint ptr %data30 to i32, !dbg !479
  call void @__asan_load4_noabort(i32 %39), !dbg !479
  %40 = load ptr, ptr %data30, align 8, !dbg !479
  %41 = ptrtoint ptr %40 to i32, !dbg !479
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4, !dbg !479
  %42 = ptrtoint ptr %arrayidx to i32, !dbg !479
  call void @__asan_load4_noabort(i32 %42), !dbg !479
  %43 = load i32, ptr %arrayidx, align 4, !dbg !479
  %add = add i32 %43, %41, !dbg !479
  %44 = inttoptr i32 %add to ptr, !dbg !479
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %45 = add i64 %gcov_ctr.i, 1
  store i64 %45, ptr @__llvm_gcov_ctr.40, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %46 = add i64 %gcov_ctr.i.i, 1
  store i64 %46, ptr @__llvm_gcov_ctr.44, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %44, i32 noundef 4) #15, !dbg !480
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.46, align 8
  %47 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %47, ptr @__llvm_gcov_ctr.46, align 8
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %48 = add i64 %gcov_ctr.i2.i, 1
  store i64 %48, ptr @__llvm_gcov_ctr.45, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !483, !srcloc !326
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.48, align 8
  %49 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %49, ptr @__llvm_gcov_ctr.48, align 8
  tail call void @llvm.prefetch.p0(ptr %44, i32 1, i32 3, i32 1) #15, !dbg !486
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #15, !dbg !486, !srcloc !331
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %50, 0, !dbg !486
  %gcov_ctr.i.i3.i = load i64, ptr @__llvm_gcov_ctr.47, align 8, !dbg !488
  %51 = add i64 %gcov_ctr.i.i3.i, 1, !dbg !488
  store i64 %51, ptr @__llvm_gcov_ctr.47, align 8, !dbg !488
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !488, !srcloc !333
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i), !dbg !489
  %cmp34.not = icmp eq i32 %asmresult.i.i.i.i, 1, !dbg !489
  br i1 %cmp34.not, label %if.end42, label %if.then41, !dbg !489, !prof !284

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14, !dbg !490
  %gcov_ctr100 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 8), align 16, !dbg !490
  %52 = add i64 %gcov_ctr100, 1, !dbg !490
  store i64 %52, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 8), align 16, !dbg !490
  br label %do.body78, !dbg !490

if.end42:                                         ; preds = %do.body
  %call43 = tail call fastcc i32 @tracing_gen_ctx(), !dbg !491
  tail call fastcc void @arch_spin_lock(), !dbg !492
  %.b126 = load i1, ptr @tracer_enabled, align 4, !dbg !493
  br i1 %.b126, label %lor.lhs.false45, label %if.end42.if.then53_crit_edge, !dbg !494

if.end42.if.then53_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14, !dbg !494
  br label %if.then53, !dbg !494

lor.lhs.false45:                                  ; preds = %if.end42
  %gcov_ctr101 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 9), align 8, !dbg !495
  %53 = add i64 %gcov_ctr101, 1, !dbg !495
  store i64 %53, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 9), align 8, !dbg !495
  %.b128133 = load i1, ptr @tracing_dl, align 1, !dbg !495
  br i1 %.b128133, label %lor.lhs.false45.if.then53_crit_edge, label %lor.lhs.false47, !dbg !496

lor.lhs.false45.if.then53_crit_edge:              ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #14, !dbg !496
  br label %if.then53, !dbg !496

lor.lhs.false47:                                  ; preds = %lor.lhs.false45
  %gcov_ctr102 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 10), align 16, !dbg !497
  %54 = add i64 %gcov_ctr102, 1, !dbg !497
  store i64 %54, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 10), align 16, !dbg !497
  %gcov_ctr.i158 = load i64, ptr @__llvm_gcov_ctr.63, align 8
  %55 = add i64 %gcov_ctr.i158, 1
  store i64 %55, ptr @__llvm_gcov_ctr.63, align 8
  %56 = ptrtoint ptr %prio.i153 to i32, !dbg !498
  call void @__asan_load4_noabort(i32 %56), !dbg !498
  %57 = load i32, ptr %prio.i153, align 8, !dbg !498
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57), !dbg !500
  %cmp.i.i160 = icmp slt i32 %57, 0, !dbg !500
  %__llvm_gcov_ctr.73..i.i161 = select i1 %cmp.i.i160, ptr @__llvm_gcov_ctr.73, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.73, i32 0, i32 1), !dbg !502, !prof !382
  %58 = ptrtoint ptr %__llvm_gcov_ctr.73..i.i161 to i32, !dbg !502
  call void @__asan_load8_noabort(i32 %58), !dbg !502
  %gcov_ctr2.i.i163 = load i64, ptr %__llvm_gcov_ctr.73..i.i161, align 8, !dbg !502
  %59 = add i64 %gcov_ctr2.i.i163, 1, !dbg !502
  store i64 %59, ptr %__llvm_gcov_ctr.73..i.i161, align 8, !dbg !502
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57), !dbg !503
  %tobool49.not = icmp sgt i32 %57, -1, !dbg !503
  br i1 %tobool49.not, label %land.lhs.true50, label %lor.lhs.false47.if.end54_crit_edge, !dbg !504

lor.lhs.false47.if.end54_crit_edge:               ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #14, !dbg !504
  br label %if.end54, !dbg !504

land.lhs.true50:                                  ; preds = %lor.lhs.false47
  %gcov_ctr103 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 11), align 8, !dbg !505
  %60 = add i64 %gcov_ctr103, 1, !dbg !505
  store i64 %60, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 11), align 8, !dbg !505
  %61 = ptrtoint ptr %prio.i153 to i32, !dbg !506
  call void @__asan_load4_noabort(i32 %61), !dbg !506
  %62 = load i32, ptr %prio.i153, align 8, !dbg !506
  %63 = load i32, ptr @wakeup_prio, align 4, !dbg !507
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %63), !dbg !508
  %cmp52.not = icmp ult i32 %62, %63, !dbg !508
  br i1 %cmp52.not, label %land.lhs.true50.if.end54_crit_edge, label %land.lhs.true50.if.then53_crit_edge, !dbg !509

land.lhs.true50.if.then53_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14, !dbg !509
  br label %if.then53, !dbg !509

land.lhs.true50.if.end54_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14, !dbg !509
  br label %if.end54, !dbg !509

if.then53:                                        ; preds = %land.lhs.true50.if.then53_crit_edge, %lor.lhs.false45.if.then53_crit_edge, %if.end42.if.then53_crit_edge
  %gcov_ctr104 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 12), align 16, !dbg !510
  %64 = add i64 %gcov_ctr104, 1, !dbg !510
  store i64 %64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 12), align 16, !dbg !510
  br label %out_locked, !dbg !510

if.end54:                                         ; preds = %land.lhs.true50.if.end54_crit_edge, %lor.lhs.false47.if.end54_crit_edge
  tail call fastcc void @__wakeup_reset(), !dbg !511
  %gcov_ctr.i164 = load i64, ptr @__llvm_gcov_ctr.67, align 8
  %65 = add i64 %gcov_ctr.i164, 1
  store i64 %65, ptr @__llvm_gcov_ctr.67, align 8
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 1, !dbg !512
  %66 = ptrtoint ptr %stack.i to i32, !dbg !512
  call void @__asan_load4_noabort(i32 %66), !dbg !512
  %67 = load ptr, ptr %stack.i, align 4, !dbg !512
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 3, !dbg !512
  %68 = ptrtoint ptr %cpu.i to i32, !dbg !512
  call void @__asan_load4_noabort(i32 %68), !dbg !512
  %69 = load volatile i32, ptr %cpu.i, align 4, !dbg !512
  store i32 %69, ptr @wakeup_cpu, align 4, !dbg !516
  store i32 %69, ptr @wakeup_current_cpu, align 4, !dbg !517
  %70 = ptrtoint ptr %prio.i153 to i32, !dbg !518
  call void @__asan_load4_noabort(i32 %70), !dbg !518
  %71 = load i32, ptr %prio.i153, align 8, !dbg !518
  store i32 %71, ptr @wakeup_prio, align 4, !dbg !519
  %gcov_ctr.i165 = load i64, ptr @__llvm_gcov_ctr.63, align 8
  %72 = add i64 %gcov_ctr.i165, 1
  store i64 %72, ptr @__llvm_gcov_ctr.63, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71), !dbg !520
  %cmp.i.i167 = icmp slt i32 %71, 0, !dbg !520
  %__llvm_gcov_ctr.73..i.i168 = select i1 %cmp.i.i167, ptr @__llvm_gcov_ctr.73, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.73, i32 0, i32 1), !dbg !523, !prof !382
  %73 = ptrtoint ptr %__llvm_gcov_ctr.73..i.i168 to i32, !dbg !523
  call void @__asan_load8_noabort(i32 %73), !dbg !523
  %gcov_ctr2.i.i170 = load i64, ptr %__llvm_gcov_ctr.73..i.i168, align 8, !dbg !523
  %74 = add i64 %gcov_ctr2.i.i170, 1, !dbg !523
  store i64 %74, ptr %__llvm_gcov_ctr.73..i.i168, align 8, !dbg !523
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71), !dbg !524
  %tobool58.not = icmp sgt i32 %71, -1, !dbg !524
  br i1 %tobool58.not, label %if.else, label %if.then59, !dbg !524

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14, !dbg !525
  %gcov_ctr105 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 13), align 8, !dbg !525
  %75 = add i64 %gcov_ctr105, 1, !dbg !525
  store i64 %75, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 13), align 8, !dbg !525
  br label %if.end60, !dbg !526

if.else:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14, !dbg !527
  %gcov_ctr106 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 14), align 16, !dbg !527
  %76 = add i64 %gcov_ctr106, 1, !dbg !527
  store i64 %76, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 14), align 16, !dbg !527
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then59
  %77 = xor i1 %tobool58.not, true, !dbg !424
  store i1 %77, ptr @tracing_dl, align 1, !dbg !424
  %call61 = tail call fastcc ptr @get_task_struct(ptr noundef %p), !dbg !528
  store ptr %p, ptr @wakeup_task, align 4, !dbg !529
  %78 = load ptr, ptr @wakeup_trace, align 4, !dbg !530
  %data69 = getelementptr inbounds %struct.trace_array, ptr %78, i32 0, i32 2, i32 2, !dbg !530
  %79 = ptrtoint ptr %data69 to i32, !dbg !530
  call void @__asan_load4_noabort(i32 %79), !dbg !530
  %80 = load ptr, ptr %data69, align 8, !dbg !530
  %81 = ptrtoint ptr %80 to i32, !dbg !530
  %82 = load i32, ptr @wakeup_cpu, align 4, !dbg !530
  %arrayidx71 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %82, !dbg !530
  %83 = ptrtoint ptr %arrayidx71 to i32, !dbg !530
  call void @__asan_load4_noabort(i32 %83), !dbg !530
  %84 = load i32, ptr %arrayidx71, align 4, !dbg !530
  %add72 = add i32 %84, %81, !dbg !530
  %85 = inttoptr i32 %add72 to ptr, !dbg !530
  %call73 = tail call i64 @ftrace_now(i32 noundef %4) #15, !dbg !531
  %preempt_timestamp = getelementptr inbounds %struct.trace_array_cpu, ptr %85, i32 0, i32 11, !dbg !532
  %86 = ptrtoint ptr %preempt_timestamp to i32, !dbg !533
  call void @__asan_store8_noabort(i32 %86), !dbg !533
  store i64 %call73, ptr %preempt_timestamp, align 8, !dbg !533
  %87 = load ptr, ptr @wakeup_trace, align 4, !dbg !534
  %88 = ptrtoint ptr %task to i32, !dbg !535
  call void @__asan_load4_noabort(i32 %88), !dbg !535
  %89 = load ptr, ptr %task, align 8, !dbg !535
  tail call fastcc void @tracing_sched_wakeup_trace(ptr noundef %87, ptr noundef %p, ptr noundef %89, i32 noundef %call43), !dbg !536
  %90 = load ptr, ptr @wakeup_trace, align 4, !dbg !537
  tail call void @__trace_stack(ptr noundef %90, i32 noundef %call43, i32 noundef 0) #15, !dbg !538
  %91 = load ptr, ptr @wakeup_trace, align 4, !dbg !539
  %gcov_ctr.i171 = load i64, ptr @__llvm_gcov_ctr.71, align 8
  %92 = add i64 %gcov_ctr.i171, 2
  store i64 %92, ptr @__llvm_gcov_ctr.71, align 8
  %gcov_ctr.i173 = load i64, ptr @__llvm_gcov_ctr.70, align 8
  %93 = add i64 %gcov_ctr.i173, 1
  store i64 %93, ptr @__llvm_gcov_ctr.70, align 8
  tail call void @trace_function(ptr noundef %91, i32 noundef 0, i32 noundef 0, i32 noundef %call43) #15, !dbg !540
  br label %out_locked, !dbg !543

out_locked:                                       ; preds = %if.end60, %if.then53
  %gcov_ctr.i174 = load i64, ptr @__llvm_gcov_ctr.72, align 8, !dbg !544
  %94 = add i64 %gcov_ctr.i174, 1, !dbg !544
  store i64 %94, ptr @__llvm_gcov_ctr.72, align 8, !dbg !544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !544, !srcloc !548
  %95 = load i16, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @wakeup_lock, i32 0, i32 1), align 2, !dbg !549
  %inc.i = add i16 %95, 1, !dbg !549
  store i16 %inc.i, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @wakeup_lock, i32 0, i32 1), align 2, !dbg !549
  %gcov_ctr.i.i175 = load i64, ptr @__llvm_gcov_ctr.90, align 8, !dbg !550
  %96 = add i64 %gcov_ctr.i.i175, 1, !dbg !550
  store i64 %96, ptr @__llvm_gcov_ctr.90, align 8, !dbg !550
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !dbg !550, !srcloc !553
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !dbg !554, !srcloc !555
  br label %do.body78, !dbg !556

do.body78:                                        ; preds = %out_locked, %if.then41
  %97 = load ptr, ptr @wakeup_trace, align 4, !dbg !557
  %data85 = getelementptr inbounds %struct.trace_array, ptr %97, i32 0, i32 2, i32 2, !dbg !557
  %98 = ptrtoint ptr %data85 to i32, !dbg !557
  call void @__asan_load4_noabort(i32 %98), !dbg !557
  %99 = load ptr, ptr %data85, align 8, !dbg !557
  %100 = ptrtoint ptr %99 to i32, !dbg !557
  %101 = ptrtoint ptr %arrayidx to i32, !dbg !557
  call void @__asan_load4_noabort(i32 %101), !dbg !557
  %102 = load i32, ptr %arrayidx, align 4, !dbg !557
  %add88 = add i32 %102, %100, !dbg !557
  %103 = inttoptr i32 %add88 to ptr, !dbg !557
  %gcov_ctr.i134 = load i64, ptr @__llvm_gcov_ctr.35, align 8
  %104 = add i64 %gcov_ctr.i134, 1
  store i64 %104, ptr @__llvm_gcov_ctr.35, align 8
  %gcov_ctr.i.i135 = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %105 = add i64 %gcov_ctr.i.i135, 1
  store i64 %105, ptr @__llvm_gcov_ctr.44, align 8
  %call.i.i136 = tail call zeroext i1 @__kasan_check_write(ptr noundef %103, i32 noundef 4) #15, !dbg !558
  %gcov_ctr.i.i.i137 = load i64, ptr @__llvm_gcov_ctr.46, align 8
  %106 = add i64 %gcov_ctr.i.i.i137, 1
  store i64 %106, ptr @__llvm_gcov_ctr.46, align 8
  %gcov_ctr.i2.i138 = load i64, ptr @__llvm_gcov_ctr.49, align 8
  %107 = add i64 %gcov_ctr.i2.i138, 1
  store i64 %107, ptr @__llvm_gcov_ctr.49, align 8
  %gcov_ctr.i.i3.i139 = load i64, ptr @__llvm_gcov_ctr.50, align 8
  %108 = add i64 %gcov_ctr.i.i3.i139, 1
  store i64 %108, ptr @__llvm_gcov_ctr.50, align 8
  tail call void @llvm.prefetch.p0(ptr %103, i32 1, i32 3, i32 1) #15, !dbg !561
  %109 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %103, ptr %103, i32 1, ptr elementtype(i32) %103) #15, !dbg !561, !srcloc !345
  br label %cleanup, !dbg !564

cleanup:                                          ; preds = %do.body78, %if.then28, %if.then
  ret void, !dbg !564
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @probe_wakeup_sched_switch(ptr nocapture noundef readnone %ignore, i1 noundef zeroext %preempt, ptr noundef %prev, ptr noundef %next) #2 align 64 !dbg !565 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !566
  tail call void @tracing_record_cmdline(ptr noundef %prev) #15, !dbg !567
  %.b163 = load i1, ptr @tracer_enabled, align 4, !dbg !568
  br i1 %.b163, label %do.end, label %if.then, !dbg !568, !prof !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !569
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.55, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.55, align 16
  br label %cleanup, !dbg !570

do.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !571, !srcloc !572
  %1 = load ptr, ptr @wakeup_task, align 4, !dbg !573
  %cmp.not = icmp eq ptr %1, %next, !dbg !574
  br i1 %cmp.not, label %if.end8, label %if.then7, !dbg !575

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14, !dbg !569
  %gcov_ctr141 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 1), align 8
  %2 = add i64 %gcov_ctr141, 1
  store i64 %2, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 1), align 8
  br label %cleanup, !dbg !576

if.end8:                                          ; preds = %do.end
  %gcov_ctr.i170 = load i64, ptr @__llvm_gcov_ctr.39, align 8, !dbg !577
  %3 = add i64 %gcov_ctr.i170, 1, !dbg !577
  store i64 %3, ptr @__llvm_gcov_ctr.39, align 8, !dbg !577
  %4 = tail call i32 @llvm.read_register.i32(metadata !64) #15, !dbg !577
  %and.i = and i32 %4, -16384, !dbg !579
  %5 = inttoptr i32 %and.i to ptr, !dbg !580
  %cpu9 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3, !dbg !581
  %6 = ptrtoint ptr %cpu9 to i32, !dbg !581
  call void @__asan_load4_noabort(i32 %6), !dbg !581
  %7 = load i32, ptr %cpu9, align 4, !dbg !581
  %8 = load ptr, ptr @wakeup_trace, align 4, !dbg !582
  %data13 = getelementptr inbounds %struct.trace_array, ptr %8, i32 0, i32 2, i32 2, !dbg !582
  %9 = ptrtoint ptr %data13 to i32, !dbg !582
  call void @__asan_load4_noabort(i32 %9), !dbg !582
  %10 = load ptr, ptr %data13, align 8, !dbg !582
  %11 = ptrtoint ptr %10 to i32, !dbg !582
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7, !dbg !582
  %12 = ptrtoint ptr %arrayidx to i32, !dbg !582
  call void @__asan_load4_noabort(i32 %12), !dbg !582
  %13 = load i32, ptr %arrayidx, align 4, !dbg !582
  %add = add i32 %13, %11, !dbg !582
  %14 = inttoptr i32 %add to ptr, !dbg !582
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %15 = add i64 %gcov_ctr.i, 1
  store i64 %15, ptr @__llvm_gcov_ctr.40, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %16 = add i64 %gcov_ctr.i.i, 1
  store i64 %16, ptr @__llvm_gcov_ctr.44, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %14, i32 noundef 4) #15, !dbg !583
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.46, align 8
  %17 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %17, ptr @__llvm_gcov_ctr.46, align 8
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %18 = add i64 %gcov_ctr.i2.i, 1
  store i64 %18, ptr @__llvm_gcov_ctr.45, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !586, !srcloc !326
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.48, align 8
  %19 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %19, ptr @__llvm_gcov_ctr.48, align 8
  tail call void @llvm.prefetch.p0(ptr %14, i32 1, i32 3, i32 1) #15, !dbg !589
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #15, !dbg !589, !srcloc !331
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %20, 0, !dbg !589
  %gcov_ctr.i.i3.i = load i64, ptr @__llvm_gcov_ctr.47, align 8, !dbg !591
  %21 = add i64 %gcov_ctr.i.i3.i, 1, !dbg !591
  store i64 %21, ptr @__llvm_gcov_ctr.47, align 8, !dbg !591
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !591, !srcloc !333
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i), !dbg !592
  %cmp17.not = icmp eq i32 %asmresult.i.i.i.i, 1, !dbg !592
  br i1 %cmp17.not, label %do.body27, label %if.then24, !dbg !592, !prof !382

if.then24:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14, !dbg !593
  %gcov_ctr142 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 2), align 16, !dbg !593
  %22 = add i64 %gcov_ctr142, 1, !dbg !593
  store i64 %22, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 2), align 16, !dbg !593
  br label %do.body122, !dbg !593

do.body27:                                        ; preds = %if.end8
  %gcov_ctr.i171 = load i64, ptr @__llvm_gcov_ctr.31, align 8
  %23 = add i64 %gcov_ctr.i171, 1
  store i64 %23, ptr @__llvm_gcov_ctr.31, align 8
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !dbg !594, !srcloc !365
  %gcov_ctr.i172 = load i64, ptr @__llvm_gcov_ctr.32, align 8
  %25 = add i64 %gcov_ctr.i172, 1
  store i64 %25, ptr @__llvm_gcov_ctr.32, align 8
  %and.i173 = and i32 %24, 128, !dbg !596
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i173), !dbg !598
  %tobool40.not = icmp eq i32 %and.i173, 0, !dbg !598
  br i1 %tobool40.not, label %if.then41, label %do.body27.do.end44_crit_edge, !dbg !598

do.body27.do.end44_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14, !dbg !598
  br label %do.end44, !dbg !598

if.then41:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14, !dbg !598
  %gcov_ctr143 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 3), align 8, !dbg !598
  %26 = add i64 %gcov_ctr143, 1, !dbg !598
  store i64 %26, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 3), align 8, !dbg !598
  tail call void @trace_hardirqs_off() #15, !dbg !598
  br label %do.end44, !dbg !598

do.end44:                                         ; preds = %if.then41, %do.body27.do.end44_crit_edge
  %gcov_ctr.i174 = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %27 = add i64 %gcov_ctr.i174, 1
  store i64 %27, ptr @__llvm_gcov_ctr.42, align 8
  %gcov_ctr.i.i175 = load i64, ptr @__llvm_gcov_ctr.32, align 8
  %28 = add i64 %gcov_ctr.i.i175, 1
  store i64 %28, ptr @__llvm_gcov_ctr.32, align 8
  %and.i.i = lshr i32 %24, 7, !dbg !599
  %and.i.lobit.i = and i32 %and.i.i, 1, !dbg !599
  %call2.i = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %and.i.lobit.i) #15, !dbg !601
  tail call fastcc void @arch_spin_lock(), !dbg !602
  %.b = load i1, ptr @tracer_enabled, align 4, !dbg !603
  br i1 %.b, label %lor.rhs, label %do.end44.if.then55_crit_edge, !dbg !603, !prof !284

do.end44.if.then55_crit_edge:                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #14, !dbg !603
  br label %if.then55, !dbg !603

lor.rhs:                                          ; preds = %do.end44
  %gcov_ctr144 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 4), align 16, !dbg !603
  %29 = add i64 %gcov_ctr144, 1, !dbg !603
  store i64 %29, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 4), align 16, !dbg !603
  %30 = load ptr, ptr @wakeup_task, align 4, !dbg !603
  %cmp47.not = icmp eq ptr %30, %next, !dbg !603
  br i1 %cmp47.not, label %do.body57, label %lor.rhs.if.then55_crit_edge, !dbg !603, !prof !284

lor.rhs.if.then55_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14, !dbg !603
  br label %if.then55, !dbg !603

if.then55:                                        ; preds = %lor.rhs.if.then55_crit_edge, %do.end44.if.then55_crit_edge
  %gcov_ctr145 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 5), align 8, !dbg !604
  %31 = add i64 %gcov_ctr145, 1, !dbg !604
  store i64 %31, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 5), align 8, !dbg !604
  br label %out_unlock, !dbg !604

do.body57:                                        ; preds = %lor.rhs
  %32 = load ptr, ptr @wakeup_trace, align 4, !dbg !605
  %data64 = getelementptr inbounds %struct.trace_array, ptr %32, i32 0, i32 2, i32 2, !dbg !605
  %33 = ptrtoint ptr %data64 to i32, !dbg !605
  call void @__asan_load4_noabort(i32 %33), !dbg !605
  %34 = load ptr, ptr %data64, align 8, !dbg !605
  %35 = ptrtoint ptr %34 to i32, !dbg !605
  %36 = load i32, ptr @wakeup_cpu, align 4, !dbg !605
  %arrayidx66 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36, !dbg !605
  %37 = ptrtoint ptr %arrayidx66 to i32, !dbg !605
  call void @__asan_load4_noabort(i32 %37), !dbg !605
  %38 = load i32, ptr %arrayidx66, align 4, !dbg !605
  %add67 = add i32 %38, %35, !dbg !605
  %39 = inttoptr i32 %add67 to ptr, !dbg !605
  %40 = tail call ptr @llvm.returnaddress(i32 0), !dbg !606
  %41 = ptrtoint ptr %40 to i32, !dbg !606
  %gcov_ctr.i176 = load i64, ptr @__llvm_gcov_ctr.71, align 8
  %42 = add i64 %gcov_ctr.i176, 1
  store i64 %42, ptr @__llvm_gcov_ctr.71, align 8
  %gcov_ctr.i177 = load i64, ptr @__llvm_gcov_ctr.70, align 8
  %43 = add i64 %gcov_ctr.i177, 1
  store i64 %43, ptr @__llvm_gcov_ctr.70, align 8
  tail call void @trace_function(ptr noundef %32, i32 noundef %41, i32 noundef 0, i32 noundef %call2.i) #15, !dbg !607
  %44 = load ptr, ptr @wakeup_trace, align 4, !dbg !609
  tail call fastcc void @tracing_sched_switch_trace(ptr noundef %44, ptr noundef %prev, ptr noundef %next, i32 noundef %call2.i), !dbg !610
  %45 = load ptr, ptr @wakeup_trace, align 4, !dbg !611
  tail call void @__trace_stack(ptr noundef %45, i32 noundef %call2.i, i32 noundef 0) #15, !dbg !612
  %preempt_timestamp = getelementptr inbounds %struct.trace_array_cpu, ptr %39, i32 0, i32 11, !dbg !613
  %46 = ptrtoint ptr %preempt_timestamp to i32, !dbg !613
  call void @__asan_load8_noabort(i32 %46), !dbg !613
  %47 = load i64, ptr %preempt_timestamp, align 8, !dbg !613
  %call69 = tail call i64 @ftrace_now(i32 noundef %7) #15, !dbg !614
  %sub = sub i64 %call69, %47, !dbg !615
  %48 = load ptr, ptr @wakeup_trace, align 4, !dbg !616
  %call70 = tail call fastcc zeroext i1 @report_latency(ptr noundef %48, i64 noundef %sub), !dbg !617
  br i1 %call70, label %if.end72, label %if.then71, !dbg !618

if.then71:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #14, !dbg !619
  %gcov_ctr146 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 6), align 16, !dbg !619
  %49 = add i64 %gcov_ctr146, 1, !dbg !619
  store i64 %49, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 6), align 16, !dbg !619
  br label %out_unlock, !dbg !619

if.end72:                                         ; preds = %do.body57
  %call73 = tail call i32 @is_tracing_stopped() #15, !dbg !620
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73), !dbg !620
  %tobool74.not = icmp eq i32 %call73, 0, !dbg !620
  br i1 %tobool74.not, label %if.then83, label %if.end72.if.end85_crit_edge, !dbg !620, !prof !284

if.end72.if.end85_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14, !dbg !620
  br label %if.end85, !dbg !620

if.then83:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14, !dbg !621
  %gcov_ctr147 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 7), align 8, !dbg !621
  %50 = add i64 %gcov_ctr147, 1, !dbg !621
  store i64 %50, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 7), align 8, !dbg !621
  %conv84 = trunc i64 %sub to i32, !dbg !621
  %51 = load ptr, ptr @wakeup_trace, align 4, !dbg !622
  %max_latency = getelementptr inbounds %struct.trace_array, ptr %51, i32 0, i32 5, !dbg !623
  %52 = ptrtoint ptr %max_latency to i32, !dbg !624
  call void @__asan_store4_noabort(i32 %52), !dbg !624
  store i32 %conv84, ptr %max_latency, align 4, !dbg !624
  %53 = load ptr, ptr @wakeup_task, align 4, !dbg !625
  %54 = load i32, ptr @wakeup_cpu, align 4, !dbg !626
  tail call void @update_max_tr(ptr noundef %51, ptr noundef %53, i32 noundef %54, ptr noundef null) #15, !dbg !627
  br label %if.end85, !dbg !628

if.end85:                                         ; preds = %if.then83, %if.end72.if.end85_crit_edge
  %gcov_ctr148 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 8), align 16, !dbg !620
  %55 = add i64 %gcov_ctr148, 1, !dbg !620
  store i64 %55, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 8), align 16, !dbg !620
  br label %out_unlock, !dbg !620

out_unlock:                                       ; preds = %if.end85, %if.then71, %if.then55
  tail call fastcc void @__wakeup_reset(), !dbg !629
  %gcov_ctr.i178 = load i64, ptr @__llvm_gcov_ctr.72, align 8, !dbg !630
  %56 = add i64 %gcov_ctr.i178, 1, !dbg !630
  store i64 %56, ptr @__llvm_gcov_ctr.72, align 8, !dbg !630
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !630, !srcloc !548
  %57 = load i16, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @wakeup_lock, i32 0, i32 1), align 2, !dbg !632
  %inc.i = add i16 %57, 1, !dbg !632
  store i16 %inc.i, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @wakeup_lock, i32 0, i32 1), align 2, !dbg !632
  %gcov_ctr.i.i179 = load i64, ptr @__llvm_gcov_ctr.90, align 8, !dbg !633
  %58 = add i64 %gcov_ctr.i.i179, 1, !dbg !633
  store i64 %58, ptr @__llvm_gcov_ctr.90, align 8, !dbg !633
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !dbg !633, !srcloc !553
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !dbg !635, !srcloc !555
  %gcov_ctr.i180 = load i64, ptr @__llvm_gcov_ctr.32, align 8
  %59 = add i64 %gcov_ctr.i180, 1
  store i64 %59, ptr @__llvm_gcov_ctr.32, align 8
  br i1 %tobool40.not, label %if.then95, label %out_unlock.do.body97_crit_edge, !dbg !636

out_unlock.do.body97_crit_edge:                   ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #14, !dbg !636
  br label %do.body97, !dbg !636

if.then95:                                        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #14, !dbg !636
  %gcov_ctr149 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 9), align 8, !dbg !636
  %60 = add i64 %gcov_ctr149, 1, !dbg !636
  store i64 %60, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 9), align 8, !dbg !636
  tail call void @trace_hardirqs_on() #15, !dbg !636
  br label %do.body97, !dbg !636

do.body97:                                        ; preds = %if.then95, %out_unlock.do.body97_crit_edge
  %gcov_ctr.i182 = load i64, ptr @__llvm_gcov_ctr.33, align 8, !dbg !637
  %61 = add i64 %gcov_ctr.i182, 1, !dbg !637
  store i64 %61, ptr @__llvm_gcov_ctr.33, align 8, !dbg !637
  %gcov_ctr.i.i183 = load i64, ptr @__llvm_gcov_ctr.41, align 8
  %62 = add i64 %gcov_ctr.i.i183, 1
  store i64 %62, ptr @__llvm_gcov_ctr.41, align 8
  %63 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !dbg !639, !srcloc !379
  %gcov_ctr.i2.i184 = load i64, ptr @__llvm_gcov_ctr.32, align 8
  %64 = add i64 %gcov_ctr.i2.i184, 1
  store i64 %64, ptr @__llvm_gcov_ctr.32, align 8
  %and.i.i185 = and i32 %63, 128, !dbg !641
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i185), !dbg !636
  %tobool105.not = icmp eq i32 %and.i.i185, 0, !dbg !636
  br i1 %tobool105.not, label %if.then114, label %do.body97.do.end117_crit_edge, !dbg !636, !prof !382

do.body97.do.end117_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #14, !dbg !636
  br label %do.end117, !dbg !636

if.then114:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #14, !dbg !636
  %gcov_ctr150 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 10), align 16, !dbg !636
  %65 = add i64 %gcov_ctr150, 1, !dbg !636
  store i64 %65, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 10), align 16, !dbg !636
  tail call void @warn_bogus_irq_restore() #15, !dbg !636
  br label %do.end117, !dbg !636

do.end117:                                        ; preds = %if.then114, %do.body97.do.end117_crit_edge
  %gcov_ctr.i186 = load i64, ptr @__llvm_gcov_ctr.34, align 8
  %66 = add i64 %gcov_ctr.i186, 1
  store i64 %66, ptr @__llvm_gcov_ctr.34, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %24) #15, !dbg !643, !srcloc !386
  br label %do.body122, !dbg !636

do.body122:                                       ; preds = %do.end117, %if.then24
  %67 = load ptr, ptr @wakeup_trace, align 4, !dbg !645
  %data129 = getelementptr inbounds %struct.trace_array, ptr %67, i32 0, i32 2, i32 2, !dbg !645
  %68 = ptrtoint ptr %data129 to i32, !dbg !645
  call void @__asan_load4_noabort(i32 %68), !dbg !645
  %69 = load ptr, ptr %data129, align 8, !dbg !645
  %70 = ptrtoint ptr %69 to i32, !dbg !645
  %71 = ptrtoint ptr %arrayidx to i32, !dbg !645
  call void @__asan_load4_noabort(i32 %71), !dbg !645
  %72 = load i32, ptr %arrayidx, align 4, !dbg !645
  %add132 = add i32 %72, %70, !dbg !645
  %73 = inttoptr i32 %add132 to ptr, !dbg !645
  %gcov_ctr.i164 = load i64, ptr @__llvm_gcov_ctr.35, align 8
  %74 = add i64 %gcov_ctr.i164, 1
  store i64 %74, ptr @__llvm_gcov_ctr.35, align 8
  %gcov_ctr.i.i165 = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %75 = add i64 %gcov_ctr.i.i165, 1
  store i64 %75, ptr @__llvm_gcov_ctr.44, align 8
  %call.i.i166 = tail call zeroext i1 @__kasan_check_write(ptr noundef %73, i32 noundef 4) #15, !dbg !646
  %gcov_ctr.i.i.i167 = load i64, ptr @__llvm_gcov_ctr.46, align 8
  %76 = add i64 %gcov_ctr.i.i.i167, 1
  store i64 %76, ptr @__llvm_gcov_ctr.46, align 8
  %gcov_ctr.i2.i168 = load i64, ptr @__llvm_gcov_ctr.49, align 8
  %77 = add i64 %gcov_ctr.i2.i168, 1
  store i64 %77, ptr @__llvm_gcov_ctr.49, align 8
  %gcov_ctr.i.i3.i169 = load i64, ptr @__llvm_gcov_ctr.50, align 8
  %78 = add i64 %gcov_ctr.i.i3.i169, 1
  store i64 %78, ptr @__llvm_gcov_ctr.50, align 8
  tail call void @llvm.prefetch.p0(ptr %73, i32 1, i32 3, i32 1) #15, !dbg !649
  %79 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %73, ptr %73, i32 1, ptr elementtype(i32) %73) #15, !dbg !649, !srcloc !345
  br label %cleanup, !dbg !652

cleanup:                                          ; preds = %do.body122, %if.then7, %if.then
  ret void, !dbg !652
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @probe_wakeup_migrate_task(ptr nocapture noundef readnone %ignore, ptr nocapture noundef readnone %task, i32 noundef %cpu) #3 align 64 !dbg !653 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !654
  %0 = load ptr, ptr @wakeup_task, align 4, !dbg !655
  %cmp.not = icmp eq ptr %0, %task, !dbg !656
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !657

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !658
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.57, align 8, !dbg !658
  %1 = add i64 %gcov_ctr, 1, !dbg !658
  store i64 %1, ptr @__llvm_gcov_ctr.57, align 8, !dbg !658
  br label %return, !dbg !658

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !659
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 1), align 8, !dbg !659
  %2 = add i64 %gcov_ctr1, 1, !dbg !659
  store i64 %2, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 1), align 8, !dbg !659
  store i32 %cpu, ptr @wakeup_current_cpu, align 4, !dbg !660
  br label %return, !dbg !661

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !661
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wakeup_reset(ptr noundef %tr) unnamed_addr #2 align 64 !dbg !662 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !663
  %array_buffer = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 2, !dbg !664
  tail call void @tracing_reset_online_cpus(ptr noundef %array_buffer) #15, !dbg !665
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.31, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.31, align 8
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !dbg !666, !srcloc !365
  %gcov_ctr.i50 = load i64, ptr @__llvm_gcov_ctr.32, align 8
  %2 = add i64 %gcov_ctr.i50, 1
  store i64 %2, ptr @__llvm_gcov_ctr.32, align 8
  %and.i = and i32 %1, 128, !dbg !668
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !670
  %tobool.not = icmp eq i32 %and.i, 0, !dbg !670
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge, !dbg !670

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !670
  br label %do.end11, !dbg !670

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !670
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.58, align 16, !dbg !670
  %3 = add i64 %gcov_ctr, 1, !dbg !670
  store i64 %3, ptr @__llvm_gcov_ctr.58, align 16, !dbg !670
  tail call void @trace_hardirqs_off() #15, !dbg !670
  br label %do.end11, !dbg !670

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  tail call void @llvm.prefetch.p0(ptr nonnull @wakeup_lock, i32 1, i32 3, i32 1) #15, !dbg !671
  %4 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @wakeup_lock, i32 65536) #15, !dbg !674, !srcloc !675
  %asmresult.i = extractvalue { i32, i32, i32 } %4, 0, !dbg !674
  %lockval.sroa.0.0.extract.shift.i = lshr i32 %asmresult.i, 16, !dbg !674
  %conv31.i = and i32 %asmresult.i, 65535, !dbg !676
  call void @__sanitizer_cov_trace_cmp4(i32 %lockval.sroa.0.0.extract.shift.i, i32 %conv31.i), !dbg !677
  %cmp.not2.i = icmp eq i32 %lockval.sroa.0.0.extract.shift.i, %conv31.i, !dbg !677
  br i1 %cmp.not2.i, label %do.end11.arch_spin_lock.exit_crit_edge, label %do.end11.while.body.i_crit_edge, !dbg !678

do.end11.while.body.i_crit_edge:                  ; preds = %do.end11
  br label %while.body.i, !dbg !678

do.end11.arch_spin_lock.exit_crit_edge:           ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14, !dbg !678
  br label %arch_spin_lock.exit, !dbg !678

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end11.while.body.i_crit_edge
  tail call void asm sideeffect "wfe", "~{memory}"() #15, !dbg !679, !srcloc !680
  %gcov_ctr.i51 = load i64, ptr @__llvm_gcov_ctr.65, align 8, !dbg !681
  %5 = add i64 %gcov_ctr.i51, 1, !dbg !681
  store i64 %5, ptr @__llvm_gcov_ctr.65, align 8, !dbg !681
  %6 = load volatile i16, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @wakeup_lock, i32 0, i32 1), align 2, !dbg !681
  %conv3.i = zext i16 %6 to i32, !dbg !676
  %cmp.not.i = icmp eq i32 %lockval.sroa.0.0.extract.shift.i, %conv3.i, !dbg !677
  br i1 %cmp.not.i, label %while.body.i.arch_spin_lock.exit_crit_edge, label %while.body.i.while.body.i_crit_edge, !dbg !678, !llvm.loop !682

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !678
  br label %while.body.i, !dbg !678

while.body.i.arch_spin_lock.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !678
  br label %arch_spin_lock.exit, !dbg !678

arch_spin_lock.exit:                              ; preds = %while.body.i.arch_spin_lock.exit_crit_edge, %do.end11.arch_spin_lock.exit_crit_edge
  %gcov_ctr14.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 1), align 8, !dbg !684
  %7 = add i64 %gcov_ctr14.i, 1, !dbg !684
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 1), align 8, !dbg !684
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !684, !srcloc !685
  tail call fastcc void @__wakeup_reset(), !dbg !686
  %gcov_ctr.i52 = load i64, ptr @__llvm_gcov_ctr.72, align 8, !dbg !687
  %8 = add i64 %gcov_ctr.i52, 1, !dbg !687
  store i64 %8, ptr @__llvm_gcov_ctr.72, align 8, !dbg !687
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !687, !srcloc !548
  %9 = load i16, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @wakeup_lock, i32 0, i32 1), align 2, !dbg !689
  %inc.i = add i16 %9, 1, !dbg !689
  store i16 %inc.i, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @wakeup_lock, i32 0, i32 1), align 2, !dbg !689
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.90, align 8, !dbg !690
  %10 = add i64 %gcov_ctr.i.i, 1, !dbg !690
  store i64 %10, ptr @__llvm_gcov_ctr.90, align 8, !dbg !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !dbg !690, !srcloc !553
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !dbg !692, !srcloc !555
  %gcov_ctr.i53 = load i64, ptr @__llvm_gcov_ctr.32, align 8
  %11 = add i64 %gcov_ctr.i53, 1
  store i64 %11, ptr @__llvm_gcov_ctr.32, align 8
  br i1 %tobool.not, label %if.then21, label %arch_spin_lock.exit.do.body23_crit_edge, !dbg !693

arch_spin_lock.exit.do.body23_crit_edge:          ; preds = %arch_spin_lock.exit
  call void @__sanitizer_cov_trace_pc() #14, !dbg !693
  br label %do.body23, !dbg !693

if.then21:                                        ; preds = %arch_spin_lock.exit
  call void @__sanitizer_cov_trace_pc() #14, !dbg !693
  %gcov_ctr44 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 1), align 8, !dbg !693
  %12 = add i64 %gcov_ctr44, 1, !dbg !693
  store i64 %12, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 1), align 8, !dbg !693
  tail call void @trace_hardirqs_on() #15, !dbg !693
  br label %do.body23, !dbg !693

do.body23:                                        ; preds = %if.then21, %arch_spin_lock.exit.do.body23_crit_edge
  %gcov_ctr.i55 = load i64, ptr @__llvm_gcov_ctr.33, align 8, !dbg !694
  %13 = add i64 %gcov_ctr.i55, 1, !dbg !694
  store i64 %13, ptr @__llvm_gcov_ctr.33, align 8, !dbg !694
  %gcov_ctr.i.i56 = load i64, ptr @__llvm_gcov_ctr.41, align 8
  %14 = add i64 %gcov_ctr.i.i56, 1
  store i64 %14, ptr @__llvm_gcov_ctr.41, align 8
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !dbg !696, !srcloc !379
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.32, align 8
  %16 = add i64 %gcov_ctr.i2.i, 1
  store i64 %16, ptr @__llvm_gcov_ctr.32, align 8
  %and.i.i = and i32 %15, 128, !dbg !698
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !693
  %tobool32.not = icmp eq i32 %and.i.i, 0, !dbg !693
  br i1 %tobool32.not, label %if.then36, label %do.body23.do.end39_crit_edge, !dbg !693, !prof !382

do.body23.do.end39_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14, !dbg !693
  br label %do.end39, !dbg !693

if.then36:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14, !dbg !693
  %gcov_ctr45 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 2), align 16, !dbg !693
  %17 = add i64 %gcov_ctr45, 1, !dbg !693
  store i64 %17, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 2), align 16, !dbg !693
  tail call void @warn_bogus_irq_restore() #15, !dbg !693
  br label %do.end39, !dbg !693

do.end39:                                         ; preds = %if.then36, %do.body23.do.end39_crit_edge
  %gcov_ctr.i57 = load i64, ptr @__llvm_gcov_ctr.34, align 8
  %18 = add i64 %gcov_ctr.i57, 1
  store i64 %18, ptr @__llvm_gcov_ctr.34, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #15, !dbg !700, !srcloc !386
  %gcov_ctr46 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 3), align 8, !dbg !693
  %19 = add i64 %gcov_ctr46, 1, !dbg !693
  store i64 %19, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 3), align 8, !dbg !693
  ret void, !dbg !702
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracepoint_probe_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_record_cmdline(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arch_spin_lock() unnamed_addr #4 align 64 !dbg !672 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !703
  tail call void @llvm.prefetch.p0(ptr nonnull @wakeup_lock, i32 1, i32 3, i32 1), !dbg !704
  %0 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @wakeup_lock, i32 65536) #15, !dbg !705, !srcloc !675
  %asmresult = extractvalue { i32, i32, i32 } %0, 0, !dbg !705
  %lockval.sroa.0.0.extract.shift = lshr i32 %asmresult, 16, !dbg !705
  %conv31 = and i32 %asmresult, 65535, !dbg !706
  call void @__sanitizer_cov_trace_cmp4(i32 %lockval.sroa.0.0.extract.shift, i32 %conv31), !dbg !707
  %cmp.not2 = icmp eq i32 %lockval.sroa.0.0.extract.shift, %conv31, !dbg !707
  br i1 %cmp.not2, label %entry.do.end11_crit_edge, label %entry.while.body_crit_edge, !dbg !708

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body, !dbg !708

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !708
  br label %do.end11, !dbg !708

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void asm sideeffect "wfe", "~{memory}"() #15, !dbg !709, !srcloc !680
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.65, align 8, !dbg !710
  %1 = add i64 %gcov_ctr, 1, !dbg !710
  store i64 %1, ptr @__llvm_gcov_ctr.65, align 8, !dbg !710
  %2 = load volatile i16, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @wakeup_lock, i32 0, i32 1), align 2, !dbg !710
  %conv3 = zext i16 %2 to i32, !dbg !706
  %cmp.not = icmp eq i32 %lockval.sroa.0.0.extract.shift, %conv3, !dbg !707
  br i1 %cmp.not, label %while.body.do.end11_crit_edge, label %while.body.while.body_crit_edge, !dbg !708, !llvm.loop !711

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14, !dbg !708
  br label %while.body, !dbg !708

while.body.do.end11_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14, !dbg !708
  br label %do.end11, !dbg !708

do.end11:                                         ; preds = %while.body.do.end11_crit_edge, %entry.do.end11_crit_edge
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 1), align 8, !dbg !713
  %3 = add i64 %gcov_ctr14, 1, !dbg !713
  store i64 %3, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 1), align 8, !dbg !713
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !713, !srcloc !685
  ret void, !dbg !714
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__wakeup_reset() unnamed_addr #2 align 64 !dbg !715 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !716
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.66, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.66, align 8
  store i32 -1, ptr @wakeup_cpu, align 4, !dbg !717
  store i32 -1, ptr @wakeup_prio, align 4, !dbg !718
  store i1 false, ptr @tracing_dl, align 1, !dbg !719
  %1 = load ptr, ptr @wakeup_task, align 4, !dbg !720
  %tobool.not = icmp eq ptr %1, null, !dbg !720
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !dbg !720

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !720
  br label %if.end, !dbg !720

if.then:                                          ; preds = %entry
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 1), align 8, !dbg !721
  %2 = add i64 %gcov_ctr1, 1, !dbg !721
  store i64 %2, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 1), align 8, !dbg !721
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.75, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.75, align 8
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 2, !dbg !722
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.76, align 8
  %4 = add i64 %gcov_ctr.i.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.76, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.77, align 8
  %5 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.77, align 8
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.79, align 8
  %6 = add i64 %gcov_ctr.i.i.i.i.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.79, align 8
  %gcov_ctr.i.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %7 = add i64 %gcov_ctr.i.i.i.i.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.44, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15, !dbg !726
  %gcov_ctr.i.i.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.46, align 8
  %8 = add i64 %gcov_ctr.i.i.i.i.i.i.i, 1
  store i64 %8, ptr @__llvm_gcov_ctr.46, align 8
  %gcov_ctr.i1.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.80, align 8, !dbg !737
  %9 = add i64 %gcov_ctr.i1.i.i.i.i.i, 1, !dbg !737
  store i64 %9, ptr @__llvm_gcov_ctr.80, align 8, !dbg !737
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !737, !srcloc !740
  %gcov_ctr.i.i2.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.81, align 8
  %10 = add i64 %gcov_ctr.i.i2.i.i.i.i.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.81, align 8
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15, !dbg !741
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !dbg !741, !srcloc !744
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0, !dbg !741
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i), !dbg !745
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1, !dbg !745
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i, !dbg !746

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i), !dbg !747
  %cmp6.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 0, !dbg !747
  br i1 %cmp6.i.i.i.i, label %if.end5.i.i.i.i.if.then10.i.i.i.i_crit_edge, label %lor.rhs.i.i.i.i, !dbg !747, !prof !382

if.end5.i.i.i.i.if.then10.i.i.i.i_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !747
  br label %if.then10.i.i.i.i, !dbg !747

lor.rhs.i.i.i.i:                                  ; preds = %if.end5.i.i.i.i
  %gcov_ctr13.i.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.78, i32 0, i32 2), align 16, !dbg !747
  %12 = add i64 %gcov_ctr13.i.i.i.i, 1, !dbg !747
  store i64 %12, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.78, i32 0, i32 2), align 16, !dbg !747
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i), !dbg !747
  %cmp7.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0, !dbg !747
  br i1 %cmp7.i.i.i.i, label %lor.rhs.i.i.i.i.if.then10.i.i.i.i_crit_edge, label %lor.rhs.i.i.i.i.refcount_dec_and_test.exit.i_crit_edge, !dbg !747, !prof !382

lor.rhs.i.i.i.i.refcount_dec_and_test.exit.i_crit_edge: ; preds = %lor.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !747
  br label %refcount_dec_and_test.exit.i, !dbg !747

lor.rhs.i.i.i.i.if.then10.i.i.i.i_crit_edge:      ; preds = %lor.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !747
  br label %if.then10.i.i.i.i, !dbg !747

if.then10.i.i.i.i:                                ; preds = %lor.rhs.i.i.i.i.if.then10.i.i.i.i_crit_edge, %if.end5.i.i.i.i.if.then10.i.i.i.i_crit_edge
  %gcov_ctr14.i.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.78, i32 0, i32 3), align 8, !dbg !748
  %13 = add i64 %gcov_ctr14.i.i.i.i, 1, !dbg !748
  store i64 %13, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.78, i32 0, i32 3), align 8, !dbg !748
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15, !dbg !749
  br label %refcount_dec_and_test.exit.i, !dbg !749

refcount_dec_and_test.exit.i:                     ; preds = %if.then10.i.i.i.i, %lor.rhs.i.i.i.i.refcount_dec_and_test.exit.i_crit_edge
  %gcov_ctr15.i.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.78, i32 0, i32 4), align 16, !dbg !750
  %14 = add i64 %gcov_ctr15.i.i.i.i, 1, !dbg !750
  store i64 %14, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.78, i32 0, i32 4), align 16, !dbg !750
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14, !dbg !751
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !dbg !751, !srcloc !752
  %gcov_ctr12.i.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.78, i32 0, i32 1), align 8, !dbg !753
  %15 = add i64 %gcov_ctr12.i.i.i.i, 1, !dbg !753
  store i64 %15, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.78, i32 0, i32 1), align 8, !dbg !753
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.75, i32 0, i32 1), align 8, !dbg !754
  %16 = add i64 %gcov_ctr1.i, 1, !dbg !754
  store i64 %16, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.75, i32 0, i32 1), align 8, !dbg !754
  tail call void @__put_task_struct(ptr noundef nonnull %1) #15, !dbg !755
  br label %if.end, !dbg !755

if.end:                                           ; preds = %if.then.i, %refcount_dec_and_test.exit.i, %entry.if.end_crit_edge
  store ptr null, ptr @wakeup_task, align 4, !dbg !756
  ret void, !dbg !757
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_task_struct(ptr noundef returned %t) unnamed_addr #4 align 64 !dbg !758 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !759
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.68, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.68, align 8
  %usage = getelementptr inbounds %struct.task_struct, ptr %t, i32 0, i32 2, !dbg !760
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.82, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.82, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.83, align 8
  %2 = add i64 %gcov_ctr.i.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.83, align 8
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.85, align 8
  %3 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.85, align 8
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %4 = add i64 %gcov_ctr.i.i.i.i.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.44, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #15, !dbg !761
  %gcov_ctr.i.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.46, align 8
  %5 = add i64 %gcov_ctr.i.i.i.i.i.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.46, align 8
  %gcov_ctr.i1.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.86, align 8
  %6 = add i64 %gcov_ctr.i1.i.i.i.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.86, align 8
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #15, !dbg !771
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #15, !dbg !771, !srcloc !774
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0, !dbg !771
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i), !dbg !775
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0, !dbg !775
  br i1 %tobool1.not.i.i.i, label %if.then5.i.i.i, label %if.else.i.i.i, !dbg !775, !prof !382

if.then5.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !776
  %gcov_ctr16.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.84, i32 0, i32 1), align 8, !dbg !776
  %8 = add i64 %gcov_ctr16.i.i.i, 1, !dbg !776
  store i64 %8, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.84, i32 0, i32 1), align 8, !dbg !776
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef 2) #15, !dbg !777
  br label %refcount_inc.exit, !dbg !777

if.else.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i), !dbg !778
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 0, !dbg !778
  br i1 %cmp.i.i.i, label %if.else.i.i.i.if.then13.i.i.i_crit_edge, label %lor.rhs.i.i.i, !dbg !778, !prof !382

if.else.i.i.i.if.then13.i.i.i_crit_edge:          ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !778
  br label %if.then13.i.i.i, !dbg !778

lor.rhs.i.i.i:                                    ; preds = %if.else.i.i.i
  %gcov_ctr17.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.84, i32 0, i32 2), align 16, !dbg !778
  %9 = add i64 %gcov_ctr17.i.i.i, 1, !dbg !778
  store i64 %9, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.84, i32 0, i32 2), align 16, !dbg !778
  %add.i.i.i = add nuw i32 %asmresult.i.i.i.i.i, 1, !dbg !778
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i.i), !dbg !778
  %cmp6.i.i.i = icmp slt i32 %add.i.i.i, 0, !dbg !778
  br i1 %cmp6.i.i.i, label %lor.rhs.i.i.i.if.then13.i.i.i_crit_edge, label %lor.rhs.i.i.i.if.end14.i.i.i_crit_edge, !dbg !778, !prof !382

lor.rhs.i.i.i.if.end14.i.i.i_crit_edge:           ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !778
  br label %if.end14.i.i.i, !dbg !778

lor.rhs.i.i.i.if.then13.i.i.i_crit_edge:          ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !778
  br label %if.then13.i.i.i, !dbg !778

if.then13.i.i.i:                                  ; preds = %lor.rhs.i.i.i.if.then13.i.i.i_crit_edge, %if.else.i.i.i.if.then13.i.i.i_crit_edge
  %gcov_ctr18.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.84, i32 0, i32 3), align 8, !dbg !779
  %10 = add i64 %gcov_ctr18.i.i.i, 1, !dbg !779
  store i64 %10, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.84, i32 0, i32 3), align 8, !dbg !779
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef 1) #15, !dbg !780
  br label %if.end14.i.i.i, !dbg !780

if.end14.i.i.i:                                   ; preds = %if.then13.i.i.i, %lor.rhs.i.i.i.if.end14.i.i.i_crit_edge
  %gcov_ctr19.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.84, i32 0, i32 4), align 16
  %11 = add i64 %gcov_ctr19.i.i.i, 1
  store i64 %11, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.84, i32 0, i32 4), align 16
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end14.i.i.i, %if.then5.i.i.i
  ret ptr %t, !dbg !781
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ftrace_now(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tracing_sched_wakeup_trace(ptr noundef %tr, ptr noundef %wakee, ptr noundef %curr, i32 noundef %trace_ctx) unnamed_addr #2 align 64 !dbg !782 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !783
  %buffer2 = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 2, i32 1, !dbg !784
  %0 = ptrtoint ptr %buffer2 to i32, !dbg !784
  call void @__asan_load4_noabort(i32 %0), !dbg !784
  %1 = load ptr, ptr %buffer2, align 4, !dbg !784
  %call3 = tail call ptr @trace_buffer_lock_reserve(ptr noundef %1, i32 noundef 3, i32 noundef 24, i32 noundef %trace_ctx) #15, !dbg !785
  %tobool.not = icmp eq ptr %call3, null, !dbg !786
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !dbg !787

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !787
  br label %cleanup, !dbg !787

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %call3) #15, !dbg !788
  %pid = getelementptr inbounds %struct.task_struct, ptr %curr, i32 0, i32 68, !dbg !789
  %2 = ptrtoint ptr %pid to i32, !dbg !789
  call void @__asan_load4_noabort(i32 %2), !dbg !789
  %3 = load i32, ptr %pid, align 8, !dbg !789
  %prev_pid = getelementptr inbounds %struct.ctx_switch_entry, ptr %call4, i32 0, i32 1, !dbg !790
  %4 = ptrtoint ptr %prev_pid to i32, !dbg !791
  call void @__asan_store4_noabort(i32 %4), !dbg !791
  store i32 %3, ptr %prev_pid, align 4, !dbg !791
  %prio = getelementptr inbounds %struct.task_struct, ptr %curr, i32 0, i32 13, !dbg !792
  %5 = ptrtoint ptr %prio to i32, !dbg !792
  call void @__asan_load4_noabort(i32 %5), !dbg !792
  %6 = load i32, ptr %prio, align 8, !dbg !792
  %conv = trunc i32 %6 to i8, !dbg !793
  %prev_prio = getelementptr inbounds %struct.ctx_switch_entry, ptr %call4, i32 0, i32 4, !dbg !794
  %7 = ptrtoint ptr %prev_prio to i32, !dbg !795
  call void @__asan_store1_noabort(i32 %7), !dbg !795
  store i8 %conv, ptr %prev_prio, align 4, !dbg !795
  %8 = ptrtoint ptr %curr to i32, !dbg !796
  call void @__asan_load4_noabort(i32 %8), !dbg !796
  %9 = load volatile i32, ptr %curr, align 128, !dbg !796
  %exit_state.i = getelementptr inbounds %struct.task_struct, ptr %curr, i32 0, i32 57, !dbg !799
  %10 = ptrtoint ptr %exit_state.i to i32, !dbg !799
  call void @__asan_load4_noabort(i32 %10), !dbg !799
  %11 = load i32, ptr %exit_state.i, align 4, !dbg !799
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.87, align 8, !dbg !800
  %12 = add i64 %gcov_ctr.i, 1, !dbg !800
  store i64 %12, ptr @__llvm_gcov_ctr.87, align 8, !dbg !800
  call void @__sanitizer_cov_trace_const_cmp4(i32 1026, i32 %9), !dbg !801
  %cmp.i = icmp eq i32 %9, 1026, !dbg !801
  br i1 %cmp.i, label %if.end.thread.i, label %if.end.i, !dbg !802

if.end.thread.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14, !dbg !803
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.87, i32 0, i32 1), align 8, !dbg !803
  %13 = add i64 %gcov_ctr4.i, 1, !dbg !803
  store i64 %13, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.87, i32 0, i32 1), align 8, !dbg !803
  br label %cond.true.i.i, !dbg !804

if.end.i:                                         ; preds = %if.end
  %or.i = or i32 %11, %9, !dbg !808
  %and.i = and i32 %or.i, 127, !dbg !809
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !804
  %tobool.not.i.i = icmp eq i32 %and.i, 0, !dbg !804
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.end.i.cond.true.i.i_crit_edge, !dbg !804

if.end.i.cond.true.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !804
  br label %cond.true.i.i, !dbg !804

cond.true.i.i:                                    ; preds = %if.end.i.cond.true.i.i_crit_edge, %if.end.thread.i
  %state.09.i = phi i32 [ 128, %if.end.thread.i ], [ %and.i, %if.end.i.cond.true.i.i_crit_edge ]
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.89, align 8, !dbg !810
  %14 = add i64 %gcov_ctr.i.i, 1, !dbg !810
  store i64 %14, ptr @__llvm_gcov_ctr.89, align 8, !dbg !810
  %15 = tail call i32 @llvm.ctlz.i32(i32 %state.09.i, i1 true) #15, !dbg !811, !range !812
  %16 = trunc i32 %15 to i8, !dbg !804
  %phi.cast = sub nuw nsw i8 32, %16, !dbg !804
  br label %task_state_index.exit, !dbg !804

cond.false.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !804
  %gcov_ctr1.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.89, i32 0, i32 1), align 8, !dbg !804
  %17 = add i64 %gcov_ctr1.i.i, 1, !dbg !804
  store i64 %17, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.89, i32 0, i32 1), align 8, !dbg !804
  br label %task_state_index.exit, !dbg !804

task_state_index.exit:                            ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i8 [ %phi.cast, %cond.true.i.i ], [ 0, %cond.false.i.i ]
  %prev_state = getelementptr inbounds %struct.ctx_switch_entry, ptr %call4, i32 0, i32 5, !dbg !813
  %18 = ptrtoint ptr %prev_state to i32, !dbg !814
  call void @__asan_store1_noabort(i32 %18), !dbg !814
  store i8 %cond.i.i, ptr %prev_state, align 1, !dbg !814
  %pid7 = getelementptr inbounds %struct.task_struct, ptr %wakee, i32 0, i32 68, !dbg !815
  %19 = ptrtoint ptr %pid7 to i32, !dbg !815
  call void @__asan_load4_noabort(i32 %19), !dbg !815
  %20 = load i32, ptr %pid7, align 8, !dbg !815
  %next_pid = getelementptr inbounds %struct.ctx_switch_entry, ptr %call4, i32 0, i32 2, !dbg !816
  %21 = ptrtoint ptr %next_pid to i32, !dbg !817
  call void @__asan_store4_noabort(i32 %21), !dbg !817
  store i32 %20, ptr %next_pid, align 4, !dbg !817
  %prio8 = getelementptr inbounds %struct.task_struct, ptr %wakee, i32 0, i32 13, !dbg !818
  %22 = ptrtoint ptr %prio8 to i32, !dbg !818
  call void @__asan_load4_noabort(i32 %22), !dbg !818
  %23 = load i32, ptr %prio8, align 8, !dbg !818
  %conv9 = trunc i32 %23 to i8, !dbg !819
  %next_prio = getelementptr inbounds %struct.ctx_switch_entry, ptr %call4, i32 0, i32 6, !dbg !820
  %24 = ptrtoint ptr %next_prio to i32, !dbg !821
  call void @__asan_store1_noabort(i32 %24), !dbg !821
  store i8 %conv9, ptr %next_prio, align 2, !dbg !821
  %25 = ptrtoint ptr %wakee to i32, !dbg !822
  call void @__asan_load4_noabort(i32 %25), !dbg !822
  %26 = load volatile i32, ptr %wakee, align 128, !dbg !822
  %exit_state.i42 = getelementptr inbounds %struct.task_struct, ptr %wakee, i32 0, i32 57, !dbg !824
  %27 = ptrtoint ptr %exit_state.i42 to i32, !dbg !824
  call void @__asan_load4_noabort(i32 %27), !dbg !824
  %28 = load i32, ptr %exit_state.i42, align 4, !dbg !824
  %29 = add i64 %gcov_ctr.i, 2, !dbg !825
  store i64 %29, ptr @__llvm_gcov_ctr.87, align 8, !dbg !825
  call void @__sanitizer_cov_trace_const_cmp4(i32 1026, i32 %26), !dbg !826
  %cmp.i44 = icmp eq i32 %26, 1026, !dbg !826
  br i1 %cmp.i44, label %if.end.thread.i46, label %if.end.i50, !dbg !827

if.end.thread.i46:                                ; preds = %task_state_index.exit
  call void @__sanitizer_cov_trace_pc() #14, !dbg !828
  %gcov_ctr4.i45 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.87, i32 0, i32 1), align 8, !dbg !828
  %30 = add i64 %gcov_ctr4.i45, 1, !dbg !828
  store i64 %30, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.87, i32 0, i32 1), align 8, !dbg !828
  br label %cond.true.i.i54, !dbg !829

if.end.i50:                                       ; preds = %task_state_index.exit
  %or.i47 = or i32 %28, %26, !dbg !831
  %and.i48 = and i32 %or.i47, 127, !dbg !832
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48), !dbg !829
  %tobool.not.i.i49 = icmp eq i32 %and.i48, 0, !dbg !829
  br i1 %tobool.not.i.i49, label %cond.false.i.i56, label %if.end.i50.cond.true.i.i54_crit_edge, !dbg !829

if.end.i50.cond.true.i.i54_crit_edge:             ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #14, !dbg !829
  br label %cond.true.i.i54, !dbg !829

cond.true.i.i54:                                  ; preds = %if.end.i50.cond.true.i.i54_crit_edge, %if.end.thread.i46
  %state.09.i51 = phi i32 [ 128, %if.end.thread.i46 ], [ %and.i48, %if.end.i50.cond.true.i.i54_crit_edge ]
  %gcov_ctr.i.i52 = load i64, ptr @__llvm_gcov_ctr.89, align 8, !dbg !833
  %31 = add i64 %gcov_ctr.i.i52, 1, !dbg !833
  store i64 %31, ptr @__llvm_gcov_ctr.89, align 8, !dbg !833
  %32 = tail call i32 @llvm.ctlz.i32(i32 %state.09.i51, i1 true) #15, !dbg !834, !range !812
  %33 = trunc i32 %32 to i8, !dbg !829
  %phi.cast61 = sub nuw nsw i8 32, %33, !dbg !829
  br label %task_state_index.exit58, !dbg !829

cond.false.i.i56:                                 ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #14, !dbg !829
  %gcov_ctr1.i.i55 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.89, i32 0, i32 1), align 8, !dbg !829
  %34 = add i64 %gcov_ctr1.i.i55, 1, !dbg !829
  store i64 %34, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.89, i32 0, i32 1), align 8, !dbg !829
  br label %task_state_index.exit58, !dbg !829

task_state_index.exit58:                          ; preds = %cond.false.i.i56, %cond.true.i.i54
  %cond.i.i57 = phi i8 [ %phi.cast61, %cond.true.i.i54 ], [ 0, %cond.false.i.i56 ]
  %next_state = getelementptr inbounds %struct.ctx_switch_entry, ptr %call4, i32 0, i32 7, !dbg !835
  %35 = ptrtoint ptr %next_state to i32, !dbg !836
  call void @__asan_store1_noabort(i32 %35), !dbg !836
  store i8 %cond.i.i57, ptr %next_state, align 1, !dbg !836
  %gcov_ctr.i59 = load i64, ptr @__llvm_gcov_ctr.67, align 8
  %36 = add i64 %gcov_ctr.i59, 1
  store i64 %36, ptr @__llvm_gcov_ctr.67, align 8
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %wakee, i32 0, i32 1, !dbg !837
  %37 = ptrtoint ptr %stack.i to i32, !dbg !837
  call void @__asan_load4_noabort(i32 %37), !dbg !837
  %38 = load ptr, ptr %stack.i, align 4, !dbg !837
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3, !dbg !837
  %39 = ptrtoint ptr %cpu.i to i32, !dbg !837
  call void @__asan_load4_noabort(i32 %39), !dbg !837
  %40 = load volatile i32, ptr %cpu.i, align 4, !dbg !837
  %next_cpu = getelementptr inbounds %struct.ctx_switch_entry, ptr %call4, i32 0, i32 3, !dbg !839
  %41 = ptrtoint ptr %next_cpu to i32, !dbg !840
  call void @__asan_store4_noabort(i32 %41), !dbg !840
  store i32 %40, ptr %next_cpu, align 4, !dbg !840
  %call13 = tail call i32 @call_filter_check_discard(ptr noundef nonnull @event_wakeup, ptr noundef %call4, ptr noundef %1, ptr noundef nonnull %call3) #15, !dbg !841
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13), !dbg !841
  %tobool14.not = icmp eq i32 %call13, 0, !dbg !841
  br i1 %tobool14.not, label %if.then15, label %task_state_index.exit58.cleanup_crit_edge, !dbg !842

task_state_index.exit58.cleanup_crit_edge:        ; preds = %task_state_index.exit58
  call void @__sanitizer_cov_trace_pc() #14, !dbg !842
  br label %cleanup, !dbg !842

if.then15:                                        ; preds = %task_state_index.exit58
  call void @__sanitizer_cov_trace_pc() #14, !dbg !843
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 1), align 8, !dbg !843
  %42 = add i64 %gcov_ctr20, 1, !dbg !843
  store i64 %42, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 1), align 8, !dbg !843
  %gcov_ctr.i60 = load i64, ptr @__llvm_gcov_ctr.88, align 8
  %43 = add i64 %gcov_ctr.i60, 1
  store i64 %43, ptr @__llvm_gcov_ctr.88, align 8
  tail call void @trace_buffer_unlock_commit_regs(ptr noundef %tr, ptr noundef %1, ptr noundef nonnull %call3, i32 noundef %trace_ctx, ptr noundef null) #15, !dbg !844
  br label %cleanup, !dbg !848

cleanup:                                          ; preds = %if.then15, %task_state_index.exit58.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink = phi ptr [ @__llvm_gcov_ctr.69, %entry.cleanup_crit_edge ], [ getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 2), %if.then15 ], [ getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 2), %task_state_index.exit58.cleanup_crit_edge ]
  %44 = ptrtoint ptr %.sink to i32
  call void @__asan_load8_noabort(i32 %44)
  %gcov_ctr21 = load i64, ptr %.sink, align 16
  %45 = add i64 %gcov_ctr21, 1
  store i64 %45, ptr %.sink, align 16
  ret void, !dbg !849
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__trace_stack(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_buffer_lock_reserve(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ring_buffer_event_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_filter_check_discard(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_buffer_unlock_commit_regs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tracing_sched_switch_trace(ptr noundef %tr, ptr noundef %prev, ptr noundef %next, i32 noundef %trace_ctx) unnamed_addr #2 align 64 !dbg !850 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !851
  %buffer1 = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 2, i32 1, !dbg !852
  %0 = ptrtoint ptr %buffer1 to i32, !dbg !852
  call void @__asan_load4_noabort(i32 %0), !dbg !852
  %1 = load ptr, ptr %buffer1, align 4, !dbg !852
  %call3 = tail call ptr @trace_buffer_lock_reserve(ptr noundef %1, i32 noundef 2, i32 noundef 24, i32 noundef %trace_ctx) #15, !dbg !853
  %tobool.not = icmp eq ptr %call3, null, !dbg !854
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !dbg !855

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !855
  br label %cleanup, !dbg !855

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %call3) #15, !dbg !856
  %pid = getelementptr inbounds %struct.task_struct, ptr %prev, i32 0, i32 68, !dbg !857
  %2 = ptrtoint ptr %pid to i32, !dbg !857
  call void @__asan_load4_noabort(i32 %2), !dbg !857
  %3 = load i32, ptr %pid, align 8, !dbg !857
  %prev_pid = getelementptr inbounds %struct.ctx_switch_entry, ptr %call4, i32 0, i32 1, !dbg !858
  %4 = ptrtoint ptr %prev_pid to i32, !dbg !859
  call void @__asan_store4_noabort(i32 %4), !dbg !859
  store i32 %3, ptr %prev_pid, align 4, !dbg !859
  %prio = getelementptr inbounds %struct.task_struct, ptr %prev, i32 0, i32 13, !dbg !860
  %5 = ptrtoint ptr %prio to i32, !dbg !860
  call void @__asan_load4_noabort(i32 %5), !dbg !860
  %6 = load i32, ptr %prio, align 8, !dbg !860
  %conv = trunc i32 %6 to i8, !dbg !861
  %prev_prio = getelementptr inbounds %struct.ctx_switch_entry, ptr %call4, i32 0, i32 4, !dbg !862
  %7 = ptrtoint ptr %prev_prio to i32, !dbg !863
  call void @__asan_store1_noabort(i32 %7), !dbg !863
  store i8 %conv, ptr %prev_prio, align 4, !dbg !863
  %8 = ptrtoint ptr %prev to i32, !dbg !864
  call void @__asan_load4_noabort(i32 %8), !dbg !864
  %9 = load volatile i32, ptr %prev, align 128, !dbg !864
  %exit_state.i = getelementptr inbounds %struct.task_struct, ptr %prev, i32 0, i32 57, !dbg !866
  %10 = ptrtoint ptr %exit_state.i to i32, !dbg !866
  call void @__asan_load4_noabort(i32 %10), !dbg !866
  %11 = load i32, ptr %exit_state.i, align 4, !dbg !866
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.87, align 8, !dbg !867
  %12 = add i64 %gcov_ctr.i, 1, !dbg !867
  store i64 %12, ptr @__llvm_gcov_ctr.87, align 8, !dbg !867
  call void @__sanitizer_cov_trace_const_cmp4(i32 1026, i32 %9), !dbg !868
  %cmp.i = icmp eq i32 %9, 1026, !dbg !868
  br i1 %cmp.i, label %if.end.thread.i, label %if.end.i, !dbg !869

if.end.thread.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14, !dbg !870
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.87, i32 0, i32 1), align 8, !dbg !870
  %13 = add i64 %gcov_ctr4.i, 1, !dbg !870
  store i64 %13, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.87, i32 0, i32 1), align 8, !dbg !870
  br label %cond.true.i.i, !dbg !871

if.end.i:                                         ; preds = %if.end
  %or.i = or i32 %11, %9, !dbg !873
  %and.i = and i32 %or.i, 127, !dbg !874
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !871
  %tobool.not.i.i = icmp eq i32 %and.i, 0, !dbg !871
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.end.i.cond.true.i.i_crit_edge, !dbg !871

if.end.i.cond.true.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !871
  br label %cond.true.i.i, !dbg !871

cond.true.i.i:                                    ; preds = %if.end.i.cond.true.i.i_crit_edge, %if.end.thread.i
  %state.09.i = phi i32 [ 128, %if.end.thread.i ], [ %and.i, %if.end.i.cond.true.i.i_crit_edge ]
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.89, align 8, !dbg !875
  %14 = add i64 %gcov_ctr.i.i, 1, !dbg !875
  store i64 %14, ptr @__llvm_gcov_ctr.89, align 8, !dbg !875
  %15 = tail call i32 @llvm.ctlz.i32(i32 %state.09.i, i1 true) #15, !dbg !876, !range !812
  %16 = trunc i32 %15 to i8, !dbg !871
  %phi.cast = sub nuw nsw i8 32, %16, !dbg !871
  br label %task_state_index.exit, !dbg !871

cond.false.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !871
  %gcov_ctr1.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.89, i32 0, i32 1), align 8, !dbg !871
  %17 = add i64 %gcov_ctr1.i.i, 1, !dbg !871
  store i64 %17, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.89, i32 0, i32 1), align 8, !dbg !871
  br label %task_state_index.exit, !dbg !871

task_state_index.exit:                            ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i8 [ %phi.cast, %cond.true.i.i ], [ 0, %cond.false.i.i ]
  %prev_state = getelementptr inbounds %struct.ctx_switch_entry, ptr %call4, i32 0, i32 5, !dbg !877
  %18 = ptrtoint ptr %prev_state to i32, !dbg !878
  call void @__asan_store1_noabort(i32 %18), !dbg !878
  store i8 %cond.i.i, ptr %prev_state, align 1, !dbg !878
  %pid7 = getelementptr inbounds %struct.task_struct, ptr %next, i32 0, i32 68, !dbg !879
  %19 = ptrtoint ptr %pid7 to i32, !dbg !879
  call void @__asan_load4_noabort(i32 %19), !dbg !879
  %20 = load i32, ptr %pid7, align 8, !dbg !879
  %next_pid = getelementptr inbounds %struct.ctx_switch_entry, ptr %call4, i32 0, i32 2, !dbg !880
  %21 = ptrtoint ptr %next_pid to i32, !dbg !881
  call void @__asan_store4_noabort(i32 %21), !dbg !881
  store i32 %20, ptr %next_pid, align 4, !dbg !881
  %prio8 = getelementptr inbounds %struct.task_struct, ptr %next, i32 0, i32 13, !dbg !882
  %22 = ptrtoint ptr %prio8 to i32, !dbg !882
  call void @__asan_load4_noabort(i32 %22), !dbg !882
  %23 = load i32, ptr %prio8, align 8, !dbg !882
  %conv9 = trunc i32 %23 to i8, !dbg !883
  %next_prio = getelementptr inbounds %struct.ctx_switch_entry, ptr %call4, i32 0, i32 6, !dbg !884
  %24 = ptrtoint ptr %next_prio to i32, !dbg !885
  call void @__asan_store1_noabort(i32 %24), !dbg !885
  store i8 %conv9, ptr %next_prio, align 2, !dbg !885
  %25 = ptrtoint ptr %next to i32, !dbg !886
  call void @__asan_load4_noabort(i32 %25), !dbg !886
  %26 = load volatile i32, ptr %next, align 128, !dbg !886
  %exit_state.i42 = getelementptr inbounds %struct.task_struct, ptr %next, i32 0, i32 57, !dbg !888
  %27 = ptrtoint ptr %exit_state.i42 to i32, !dbg !888
  call void @__asan_load4_noabort(i32 %27), !dbg !888
  %28 = load i32, ptr %exit_state.i42, align 4, !dbg !888
  %29 = add i64 %gcov_ctr.i, 2, !dbg !889
  store i64 %29, ptr @__llvm_gcov_ctr.87, align 8, !dbg !889
  call void @__sanitizer_cov_trace_const_cmp4(i32 1026, i32 %26), !dbg !890
  %cmp.i44 = icmp eq i32 %26, 1026, !dbg !890
  br i1 %cmp.i44, label %if.end.thread.i46, label %if.end.i50, !dbg !891

if.end.thread.i46:                                ; preds = %task_state_index.exit
  call void @__sanitizer_cov_trace_pc() #14, !dbg !892
  %gcov_ctr4.i45 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.87, i32 0, i32 1), align 8, !dbg !892
  %30 = add i64 %gcov_ctr4.i45, 1, !dbg !892
  store i64 %30, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.87, i32 0, i32 1), align 8, !dbg !892
  br label %cond.true.i.i54, !dbg !893

if.end.i50:                                       ; preds = %task_state_index.exit
  %or.i47 = or i32 %28, %26, !dbg !895
  %and.i48 = and i32 %or.i47, 127, !dbg !896
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48), !dbg !893
  %tobool.not.i.i49 = icmp eq i32 %and.i48, 0, !dbg !893
  br i1 %tobool.not.i.i49, label %cond.false.i.i56, label %if.end.i50.cond.true.i.i54_crit_edge, !dbg !893

if.end.i50.cond.true.i.i54_crit_edge:             ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #14, !dbg !893
  br label %cond.true.i.i54, !dbg !893

cond.true.i.i54:                                  ; preds = %if.end.i50.cond.true.i.i54_crit_edge, %if.end.thread.i46
  %state.09.i51 = phi i32 [ 128, %if.end.thread.i46 ], [ %and.i48, %if.end.i50.cond.true.i.i54_crit_edge ]
  %gcov_ctr.i.i52 = load i64, ptr @__llvm_gcov_ctr.89, align 8, !dbg !897
  %31 = add i64 %gcov_ctr.i.i52, 1, !dbg !897
  store i64 %31, ptr @__llvm_gcov_ctr.89, align 8, !dbg !897
  %32 = tail call i32 @llvm.ctlz.i32(i32 %state.09.i51, i1 true) #15, !dbg !898, !range !812
  %33 = trunc i32 %32 to i8, !dbg !893
  %phi.cast61 = sub nuw nsw i8 32, %33, !dbg !893
  br label %task_state_index.exit58, !dbg !893

cond.false.i.i56:                                 ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #14, !dbg !893
  %gcov_ctr1.i.i55 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.89, i32 0, i32 1), align 8, !dbg !893
  %34 = add i64 %gcov_ctr1.i.i55, 1, !dbg !893
  store i64 %34, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.89, i32 0, i32 1), align 8, !dbg !893
  br label %task_state_index.exit58, !dbg !893

task_state_index.exit58:                          ; preds = %cond.false.i.i56, %cond.true.i.i54
  %cond.i.i57 = phi i8 [ %phi.cast61, %cond.true.i.i54 ], [ 0, %cond.false.i.i56 ]
  %next_state = getelementptr inbounds %struct.ctx_switch_entry, ptr %call4, i32 0, i32 7, !dbg !899
  %35 = ptrtoint ptr %next_state to i32, !dbg !900
  call void @__asan_store1_noabort(i32 %35), !dbg !900
  store i8 %cond.i.i57, ptr %next_state, align 1, !dbg !900
  %gcov_ctr.i59 = load i64, ptr @__llvm_gcov_ctr.67, align 8
  %36 = add i64 %gcov_ctr.i59, 1
  store i64 %36, ptr @__llvm_gcov_ctr.67, align 8
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %next, i32 0, i32 1, !dbg !901
  %37 = ptrtoint ptr %stack.i to i32, !dbg !901
  call void @__asan_load4_noabort(i32 %37), !dbg !901
  %38 = load ptr, ptr %stack.i, align 4, !dbg !901
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3, !dbg !901
  %39 = ptrtoint ptr %cpu.i to i32, !dbg !901
  call void @__asan_load4_noabort(i32 %39), !dbg !901
  %40 = load volatile i32, ptr %cpu.i, align 4, !dbg !901
  %next_cpu = getelementptr inbounds %struct.ctx_switch_entry, ptr %call4, i32 0, i32 3, !dbg !903
  %41 = ptrtoint ptr %next_cpu to i32, !dbg !904
  call void @__asan_store4_noabort(i32 %41), !dbg !904
  store i32 %40, ptr %next_cpu, align 4, !dbg !904
  %call13 = tail call i32 @call_filter_check_discard(ptr noundef nonnull @event_context_switch, ptr noundef %call4, ptr noundef %1, ptr noundef nonnull %call3) #15, !dbg !905
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13), !dbg !905
  %tobool14.not = icmp eq i32 %call13, 0, !dbg !905
  br i1 %tobool14.not, label %if.then15, label %task_state_index.exit58.cleanup_crit_edge, !dbg !906

task_state_index.exit58.cleanup_crit_edge:        ; preds = %task_state_index.exit58
  call void @__sanitizer_cov_trace_pc() #14, !dbg !906
  br label %cleanup, !dbg !906

if.then15:                                        ; preds = %task_state_index.exit58
  call void @__sanitizer_cov_trace_pc() #14, !dbg !907
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.91, i32 0, i32 1), align 8, !dbg !907
  %42 = add i64 %gcov_ctr20, 1, !dbg !907
  store i64 %42, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.91, i32 0, i32 1), align 8, !dbg !907
  %gcov_ctr.i60 = load i64, ptr @__llvm_gcov_ctr.88, align 8
  %43 = add i64 %gcov_ctr.i60, 1
  store i64 %43, ptr @__llvm_gcov_ctr.88, align 8
  tail call void @trace_buffer_unlock_commit_regs(ptr noundef %tr, ptr noundef %1, ptr noundef nonnull %call3, i32 noundef %trace_ctx, ptr noundef null) #15, !dbg !908
  br label %cleanup, !dbg !910

cleanup:                                          ; preds = %if.then15, %task_state_index.exit58.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink = phi ptr [ @__llvm_gcov_ctr.91, %entry.cleanup_crit_edge ], [ getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.91, i32 0, i32 2), %if.then15 ], [ getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.91, i32 0, i32 2), %task_state_index.exit58.cleanup_crit_edge ]
  %44 = ptrtoint ptr %.sink to i32
  call void @__asan_load8_noabort(i32 %44)
  %gcov_ctr21 = load i64, ptr %.sink, align 16
  %45 = add i64 %gcov_ctr21, 1
  store i64 %45, ptr %.sink, align 16
  ret void, !dbg !911
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @report_latency(ptr nocapture noundef readonly %tr, i64 noundef %delta) unnamed_addr #3 align 64 !dbg !912 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !913
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tracing_thresh to i32)), !dbg !914
  %0 = load i32, ptr @tracing_thresh, align 4, !dbg !914
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0), !dbg !914
  %tobool.not = icmp eq i32 %0, 0, !dbg !914
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !914

if.then:                                          ; preds = %entry
  %conv = zext i32 %0 to i64, !dbg !915
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %delta), !dbg !916
  %cmp = icmp ugt i64 %conv, %delta, !dbg !916
  br i1 %cmp, label %if.then2, label %if.end, !dbg !917

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14, !dbg !918
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.92, align 16, !dbg !918
  %1 = add i64 %gcov_ctr, 1, !dbg !918
  store i64 %1, ptr @__llvm_gcov_ctr.92, align 16, !dbg !918
  br label %return, !dbg !918

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14, !dbg !919
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.92, i32 0, i32 1), align 8, !dbg !919
  %2 = add i64 %gcov_ctr9, 1, !dbg !919
  store i64 %2, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.92, i32 0, i32 1), align 8, !dbg !919
  br label %return, !dbg !919

if.else:                                          ; preds = %entry
  %max_latency = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 5, !dbg !920
  %3 = ptrtoint ptr %max_latency to i32, !dbg !920
  call void @__asan_load4_noabort(i32 %3), !dbg !920
  %4 = load i32, ptr %max_latency, align 4, !dbg !920
  %conv3 = zext i32 %4 to i64, !dbg !921
  call void @__sanitizer_cov_trace_cmp8(i64 %conv3, i64 %delta), !dbg !922
  %cmp4.not = icmp ult i64 %conv3, %delta, !dbg !922
  br i1 %cmp4.not, label %if.end7, label %if.then6, !dbg !923

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14, !dbg !924
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.92, i32 0, i32 2), align 16, !dbg !924
  %5 = add i64 %gcov_ctr10, 1, !dbg !924
  store i64 %5, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.92, i32 0, i32 2), align 16, !dbg !924
  br label %return, !dbg !924

if.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14, !dbg !925
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.92, i32 0, i32 3), align 8
  %6 = add i64 %gcov_ctr11, 1
  store i64 %6, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.92, i32 0, i32 3), align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.end, %if.then2
  %retval.0 = phi i1 [ false, %if.then2 ], [ false, %if.then6 ], [ true, %if.end7 ], [ true, %if.end ], !dbg !925
  ret i1 %retval.0, !dbg !926
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_tracing_stopped() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_max_tr(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_reset_online_cpus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_is_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_ftrace_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracepoint_probe_unregister(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_reset_array_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_ftrace_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_default_header(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_keep_overwrite(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakeup_rt_tracer_init(ptr noundef %tr) #2 align 64 !dbg !927 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !928
  %.b2 = load i1, ptr @wakeup_busy, align 1, !dbg !929
  br i1 %.b2, label %if.then, label %if.end, !dbg !929

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !930
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.99, align 8, !dbg !930
  %0 = add i64 %gcov_ctr, 1, !dbg !930
  store i64 %0, ptr @__llvm_gcov_ctr.99, align 8, !dbg !930
  br label %return, !dbg !930

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !931
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.99, i32 0, i32 1), align 8, !dbg !931
  %1 = add i64 %gcov_ctr1, 1, !dbg !931
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.99, i32 0, i32 1), align 8, !dbg !931
  store i1 false, ptr @wakeup_dl, align 1, !dbg !931
  store i1 true, ptr @wakeup_rt, align 1, !dbg !932
  tail call fastcc void @__wakeup_tracer_init(ptr noundef %tr), !dbg !933
  br label %return, !dbg !934

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %if.end ], !dbg !935
  ret i32 %retval.0, !dbg !936
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakeup_dl_tracer_init(ptr noundef %tr) #2 align 64 !dbg !937 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !938
  %.b2 = load i1, ptr @wakeup_busy, align 1, !dbg !939
  br i1 %.b2, label %if.then, label %if.end, !dbg !939

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !940
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.100, align 8, !dbg !940
  %0 = add i64 %gcov_ctr, 1, !dbg !940
  store i64 %0, ptr @__llvm_gcov_ctr.100, align 8, !dbg !940
  br label %return, !dbg !940

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !941
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.100, i32 0, i32 1), align 8, !dbg !941
  %1 = add i64 %gcov_ctr1, 1, !dbg !941
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.100, i32 0, i32 1), align 8, !dbg !941
  store i1 true, ptr @wakeup_dl, align 1, !dbg !941
  store i1 false, ptr @wakeup_rt, align 1, !dbg !942
  tail call fastcc void @__wakeup_tracer_init(ptr noundef %tr), !dbg !943
  br label %return, !dbg !944

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %if.end ], !dbg !945
  ret i32 %retval.0, !dbg !946
}

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #10 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 -2077110175) #15
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #14
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
define internal void @__llvm_gcov_reset() unnamed_addr #11 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.18, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.19, align 8
  store i64 0, ptr @__llvm_gcov_ctr.20, align 8
  store i64 0, ptr @__llvm_gcov_ctr.21, align 8
  store i64 0, ptr @__llvm_gcov_ctr.22, align 8
  store i64 0, ptr @__llvm_gcov_ctr.23, align 8
  store i64 0, ptr @__llvm_gcov_ctr.24, align 8
  store i64 0, ptr @__llvm_gcov_ctr.25, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.26, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.27, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.28, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.29, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.30, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.31, align 8
  store i64 0, ptr @__llvm_gcov_ctr.32, align 8
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
  store i64 0, ptr @__llvm_gcov_ctr.45, align 8
  store i64 0, ptr @__llvm_gcov_ctr.46, align 8
  store i64 0, ptr @__llvm_gcov_ctr.47, align 8
  store i64 0, ptr @__llvm_gcov_ctr.48, align 8
  store i64 0, ptr @__llvm_gcov_ctr.49, align 8
  store i64 0, ptr @__llvm_gcov_ctr.50, align 8
  store i64 0, ptr @__llvm_gcov_ctr.51, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @__llvm_gcov_ctr.52, i8 0, i64 128, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.53, align 8
  store i64 0, ptr @__llvm_gcov_ctr.54, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) @__llvm_gcov_ctr.55, i8 0, i64 96, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.56, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.57, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.58, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.59, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.60, align 8
  store i64 0, ptr @__llvm_gcov_ctr.61, align 8
  store i64 0, ptr @__llvm_gcov_ctr.62, align 8
  store i64 0, ptr @__llvm_gcov_ctr.63, align 8
  store i64 0, ptr @__llvm_gcov_ctr.64, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.65, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.66, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.67, align 8
  store i64 0, ptr @__llvm_gcov_ctr.68, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.69, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.70, align 8
  store i64 0, ptr @__llvm_gcov_ctr.71, align 8
  store i64 0, ptr @__llvm_gcov_ctr.72, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.73, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.74, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.75, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.76, align 8
  store i64 0, ptr @__llvm_gcov_ctr.77, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.78, i8 0, i64 40, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.79, align 8
  store i64 0, ptr @__llvm_gcov_ctr.80, align 8
  store i64 0, ptr @__llvm_gcov_ctr.81, align 8
  store i64 0, ptr @__llvm_gcov_ctr.82, align 8
  store i64 0, ptr @__llvm_gcov_ctr.83, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.84, i8 0, i64 40, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.85, align 8
  store i64 0, ptr @__llvm_gcov_ctr.86, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.87, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.88, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.89, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.90, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.91, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.92, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.93, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.94, align 8
  store i64 0, ptr @__llvm_gcov_ctr.95, align 8
  store i64 0, ptr @__llvm_gcov_ctr.96, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.97, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.98, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.99, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.100, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #10 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #15
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { noinline nounwind uwtable(sync) }
attributes #11 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nounwind uwtable(sync) }
attributes #14 = { nomerge }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.gcov = !{!73}
!llvm.ident = !{!74}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_sched_wakeup.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @__initcall__kmod_trace_sched_wakeup__338_817_init_wakeup_tracer1, !3, !"__initcall__kmod_trace_sched_wakeup__338_817_init_wakeup_tracer1", i1 false, i1 false}
!3 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 817, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 741, i32 11}
!6 = !{ptr @wakeup_tracer, !7, !"wakeup_tracer", i1 false, i1 false}
!7 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 739, i32 22}
!8 = distinct !{null, !9, !"wakeup_busy", i1 false, i1 false}
!9 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 664, i32 13}
!10 = distinct !{null, !11, !"wakeup_dl", i1 false, i1 false}
!11 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 30, i32 15}
!12 = distinct !{null, !13, !"wakeup_rt", i1 false, i1 false}
!13 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 29, i32 15}
!14 = !{ptr @save_flags, !15, !"save_flags", i1 false, i1 false}
!15 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 41, i32 12}
!16 = !{ptr @wakeup_trace, !17, !"wakeup_trace", i1 false, i1 false}
!17 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 22, i32 28}
!18 = !{ptr @wakeup_task, !19, !"wakeup_task", i1 false, i1 false}
!19 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 25, i32 28}
!20 = !{ptr @wakeup_current_cpu, !21, !"wakeup_current_cpu", i1 false, i1 false}
!21 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 27, i32 14}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 605, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @start_wakeup_tracer._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @start_wakeup_tracer._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 612, i32 3}
!30 = !{ptr @start_wakeup_tracer._entry.4, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @start_wakeup_tracer._entry_ptr.6, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 619, i32 3}
!34 = !{ptr @start_wakeup_tracer._entry.7, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @start_wakeup_tracer._entry_ptr.9, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 626, i32 3}
!38 = !{ptr @start_wakeup_tracer._entry.10, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @start_wakeup_tracer._entry_ptr.12, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 643, i32 3}
!42 = !{ptr @start_wakeup_tracer._entry.13, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @start_wakeup_tracer._entry_ptr.15, !41, !"_entry_ptr", i1 false, i1 false}
!44 = distinct !{null, !45, !"tracer_enabled", i1 false, i1 false}
!45 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 23, i32 26}
!46 = distinct !{null, !47, !"tracing_dl", i1 false, i1 false}
!47 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 31, i32 15}
!48 = !{ptr @wakeup_prio, !49, !"wakeup_prio", i1 false, i1 false}
!49 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 28, i32 19}
!50 = !{ptr @wakeup_lock, !51, !"wakeup_lock", i1 false, i1 false}
!51 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 33, i32 24}
!52 = !{ptr @wakeup_cpu, !53, !"wakeup_cpu", i1 false, i1 false}
!53 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 26, i32 14}
!54 = distinct !{null, !55, !"function_enabled", i1 false, i1 false}
!55 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 51, i32 13}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 761, i32 11}
!58 = !{ptr @wakeup_rt_tracer, !59, !"wakeup_rt_tracer", i1 false, i1 false}
!59 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 759, i32 22}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 781, i32 11}
!62 = !{ptr @wakeup_dl_tracer, !63, !"wakeup_dl_tracer", i1 false, i1 false}
!63 = !{!"../kernel/trace/trace_sched_wakeup.c", i32 779, i32 22}
!64 = !{!"sp"}
!65 = !{i32 2, !"Debug Info Version", i32 3}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_sched_wakeup.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_sched_wakeup.gcda", !0}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = distinct !DISubprogram(name: "init_wakeup_tracer", scope: !1, file: !1, line: 799, type: !76, scopeLine: 800, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!76 = !DISubroutineType(types: !77)
!77 = !{}
!78 = !DILocation(line: 800, scope: !75)
!79 = !DILocation(line: 803, column: 8, scope: !75)
!80 = !DILocation(line: 804, column: 6, scope: !75)
!81 = !DILocation(line: 805, column: 10, scope: !75)
!82 = !DILocation(line: 805, column: 3, scope: !75)
!83 = !DILocation(line: 807, column: 8, scope: !75)
!84 = !DILocation(line: 808, column: 6, scope: !75)
!85 = !DILocation(line: 809, column: 10, scope: !75)
!86 = !DILocation(line: 809, column: 3, scope: !75)
!87 = !DILocation(line: 811, column: 8, scope: !75)
!88 = !DILocation(line: 812, column: 6, scope: !75)
!89 = !DILocation(line: 813, column: 10, scope: !75)
!90 = !DILocation(line: 813, column: 3, scope: !75)
!91 = !DILocation(line: 815, column: 2, scope: !75)
!92 = !DILocation(line: 0, scope: !75)
!93 = !DILocation(line: 816, column: 1, scope: !75)
!94 = distinct !DISubprogram(name: "wakeup_tracer_init", scope: !1, file: !1, line: 683, type: !76, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!95 = !DILocation(line: 684, scope: !94)
!96 = !DILocation(line: 685, column: 6, scope: !94)
!97 = !DILocation(line: 686, column: 3, scope: !94)
!98 = !DILocation(line: 688, column: 12, scope: !94)
!99 = !DILocation(line: 689, column: 12, scope: !94)
!100 = !DILocation(line: 690, column: 9, scope: !94)
!101 = !DILocation(line: 690, column: 2, scope: !94)
!102 = !DILocation(line: 0, scope: !94)
!103 = !DILocation(line: 691, column: 1, scope: !94)
!104 = distinct !DISubprogram(name: "wakeup_tracer_reset", scope: !1, file: !1, line: 713, type: !76, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!105 = !DILocation(line: 714, scope: !104)
!106 = !DILocation(line: 715, column: 17, scope: !104)
!107 = !DILocation(line: 342, column: 17, scope: !108, inlinedAt: !109)
!108 = distinct !DISubprogram(name: "stop_func_tracer", scope: !1, file: !1, line: 340, type: !76, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!109 = distinct !DILocation(line: 657, column: 2, scope: !110, inlinedAt: !111)
!110 = distinct !DISubprogram(name: "stop_wakeup_tracer", scope: !1, file: !1, line: 654, type: !76, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!111 = distinct !DILocation(line: 718, column: 2, scope: !104)
!112 = !DILocation(line: 251, column: 7, scope: !113, inlinedAt: !114)
!113 = distinct !DISubprogram(name: "unregister_wakeup_function", scope: !1, file: !1, line: 249, type: !76, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!114 = distinct !DILocation(line: 344, column: 2, scope: !108, inlinedAt: !109)
!115 = !DILocation(line: 251, column: 6, scope: !113, inlinedAt: !114)
!116 = !DILocation(line: 252, column: 3, scope: !113, inlinedAt: !114)
!117 = !DILocation(line: 257, column: 30, scope: !113, inlinedAt: !114)
!118 = !DILocation(line: 257, column: 34, scope: !113, inlinedAt: !114)
!119 = !DILocation(line: 257, column: 3, scope: !113, inlinedAt: !114)
!120 = !DILocation(line: 259, column: 19, scope: !113, inlinedAt: !114)
!121 = !DILocation(line: 260, column: 1, scope: !113, inlinedAt: !114)
!122 = !DILocation(line: 716, column: 34, scope: !104)
!123 = !DILocation(line: 715, column: 28, scope: !104)
!124 = !DILocation(line: 220, column: 1, scope: !125, inlinedAt: !127)
!125 = distinct !DISubprogram(name: "unregister_trace_sched_switch", scope: !126, file: !126, line: 220, type: !76, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!126 = !DIFile(filename: "../include/trace/events/sched.h", directory: "/llk/linux-5.17/build_arm_allyes")
!127 = distinct !DILocation(line: 658, column: 2, scope: !110, inlinedAt: !111)
!128 = !DILocation(line: 185, column: 1, scope: !129, inlinedAt: !130)
!129 = distinct !DISubprogram(name: "unregister_trace_sched_wakeup_new", scope: !126, file: !126, line: 185, type: !76, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!130 = distinct !DILocation(line: 659, column: 2, scope: !110, inlinedAt: !111)
!131 = !DILocation(line: 178, column: 1, scope: !132, inlinedAt: !133)
!132 = distinct !DISubprogram(name: "unregister_trace_sched_wakeup", scope: !126, file: !126, line: 178, type: !76, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!133 = distinct !DILocation(line: 660, column: 2, scope: !110, inlinedAt: !111)
!134 = !DILocation(line: 271, column: 1, scope: !135, inlinedAt: !136)
!135 = distinct !DISubprogram(name: "unregister_trace_sched_migrate_task", scope: !126, file: !126, line: 271, type: !76, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!136 = distinct !DILocation(line: 661, column: 2, scope: !110, inlinedAt: !111)
!137 = !DILocation(line: 720, column: 2, scope: !104)
!138 = !DILocation(line: 722, column: 2, scope: !104)
!139 = !DILocation(line: 723, column: 2, scope: !104)
!140 = !DILocation(line: 724, column: 2, scope: !104)
!141 = !DILocation(line: 725, column: 14, scope: !104)
!142 = !DILocation(line: 726, column: 1, scope: !104)
!143 = distinct !DISubprogram(name: "wakeup_tracer_start", scope: !1, file: !1, line: 728, type: !76, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!144 = !DILocation(line: 729, scope: !143)
!145 = !DILocation(line: 730, column: 2, scope: !143)
!146 = !DILocation(line: 731, column: 17, scope: !143)
!147 = !DILocation(line: 732, column: 1, scope: !143)
!148 = distinct !DISubprogram(name: "wakeup_tracer_stop", scope: !1, file: !1, line: 734, type: !76, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!149 = !DILocation(line: 735, scope: !148)
!150 = !DILocation(line: 736, column: 17, scope: !148)
!151 = !DILocation(line: 737, column: 1, scope: !148)
!152 = distinct !DISubprogram(name: "wakeup_trace_open", scope: !1, file: !1, line: 291, type: !76, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!153 = !DILocation(line: 291, scope: !152)
!154 = !DILocation(line: 291, column: 62, scope: !152)
!155 = distinct !DISubprogram(name: "wakeup_trace_close", scope: !1, file: !1, line: 292, type: !76, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!156 = !DILocation(line: 292, scope: !155)
!157 = !DILocation(line: 292, column: 63, scope: !155)
!158 = distinct !DISubprogram(name: "wakeup_print_header", scope: !1, file: !1, line: 294, type: !76, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!159 = !DILocation(line: 295, scope: !158)
!160 = !DILocation(line: 296, column: 2, scope: !158)
!161 = !DILocation(line: 297, column: 1, scope: !158)
!162 = distinct !DISubprogram(name: "wakeup_print_line", scope: !1, file: !1, line: 286, type: !76, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!163 = !DILocation(line: 287, scope: !162)
!164 = !DILocation(line: 288, column: 2, scope: !162)
!165 = distinct !DISubprogram(name: "wakeup_flag_changed", scope: !1, file: !1, line: 311, type: !76, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!166 = !DILocation(line: 312, scope: !165)
!167 = !DILocation(line: 264, column: 13, scope: !168, inlinedAt: !169)
!168 = distinct !DISubprogram(name: "wakeup_function_set", scope: !1, file: !1, line: 262, type: !76, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!169 = distinct !DILocation(line: 315, column: 6, scope: !165)
!170 = !DILocation(line: 264, column: 6, scope: !168, inlinedAt: !169)
!171 = !DILocation(line: 267, column: 6, scope: !168, inlinedAt: !169)
!172 = !DILocation(line: 268, column: 28, scope: !168, inlinedAt: !169)
!173 = !DILocation(line: 235, column: 6, scope: !174, inlinedAt: !175)
!174 = distinct !DISubprogram(name: "register_wakeup_function", scope: !1, file: !1, line: 230, type: !76, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!175 = distinct !DILocation(line: 268, column: 3, scope: !168, inlinedAt: !169)
!176 = !DILocation(line: 235, column: 23, scope: !174, inlinedAt: !175)
!177 = !DILocation(line: 235, column: 28, scope: !174, inlinedAt: !175)
!178 = !DILocation(line: 241, column: 34, scope: !174, inlinedAt: !175)
!179 = !DILocation(line: 241, column: 38, scope: !174, inlinedAt: !175)
!180 = !DILocation(line: 241, column: 9, scope: !174, inlinedAt: !175)
!181 = !DILocation(line: 243, column: 7, scope: !174, inlinedAt: !175)
!182 = !DILocation(line: 243, column: 6, scope: !174, inlinedAt: !175)
!183 = !DILocation(line: 236, column: 3, scope: !174, inlinedAt: !175)
!184 = !DILocation(line: 244, column: 20, scope: !174, inlinedAt: !175)
!185 = !DILocation(line: 244, column: 3, scope: !174, inlinedAt: !175)
!186 = !DILocation(line: 270, column: 30, scope: !168, inlinedAt: !169)
!187 = !DILocation(line: 251, column: 7, scope: !113, inlinedAt: !188)
!188 = distinct !DILocation(line: 270, column: 3, scope: !168, inlinedAt: !169)
!189 = !DILocation(line: 251, column: 6, scope: !113, inlinedAt: !188)
!190 = !DILocation(line: 252, column: 3, scope: !113, inlinedAt: !188)
!191 = !DILocation(line: 257, column: 30, scope: !113, inlinedAt: !188)
!192 = !DILocation(line: 257, column: 34, scope: !113, inlinedAt: !188)
!193 = !DILocation(line: 257, column: 3, scope: !113, inlinedAt: !188)
!194 = !DILocation(line: 259, column: 19, scope: !113, inlinedAt: !188)
!195 = !DILocation(line: 260, column: 1, scope: !113, inlinedAt: !188)
!196 = !DILocation(line: 316, column: 3, scope: !165)
!197 = !DILocation(line: 313, column: 30, scope: !165)
!198 = !DILocation(line: 265, column: 3, scope: !168, inlinedAt: !169)
!199 = !DILocation(line: 323, column: 30, scope: !165)
!200 = !DILocation(line: 323, column: 9, scope: !165)
!201 = !DILocation(line: 323, column: 2, scope: !165)
!202 = !DILocation(line: 0, scope: !165)
!203 = !DILocation(line: 324, column: 1, scope: !165)
!204 = distinct !DISubprogram(name: "__wakeup_tracer_init", scope: !1, file: !1, line: 666, type: !76, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!205 = !DILocation(line: 667, scope: !204)
!206 = !DILocation(line: 668, column: 19, scope: !204)
!207 = !DILocation(line: 668, column: 13, scope: !204)
!208 = !DILocation(line: 671, column: 2, scope: !204)
!209 = !DILocation(line: 672, column: 2, scope: !204)
!210 = !DILocation(line: 674, column: 6, scope: !204)
!211 = !DILocation(line: 674, column: 18, scope: !204)
!212 = !DILocation(line: 675, column: 15, scope: !204)
!213 = !DILocation(line: 676, column: 2, scope: !204)
!214 = !DILocation(line: 178, column: 1, scope: !215, inlinedAt: !216)
!215 = distinct !DISubprogram(name: "register_trace_sched_wakeup", scope: !126, file: !126, line: 178, type: !76, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!216 = distinct !DILocation(line: 603, column: 8, scope: !217, inlinedAt: !218)
!217 = distinct !DISubprogram(name: "start_wakeup_tracer", scope: !1, file: !1, line: 599, type: !76, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!218 = distinct !DILocation(line: 677, column: 2, scope: !204)
!219 = !DILocation(line: 604, column: 6, scope: !217, inlinedAt: !218)
!220 = !DILocation(line: 605, column: 3, scope: !217, inlinedAt: !218)
!221 = !DILocation(line: 607, column: 3, scope: !217, inlinedAt: !218)
!222 = !DILocation(line: 185, column: 1, scope: !223, inlinedAt: !224)
!223 = distinct !DISubprogram(name: "register_trace_sched_wakeup_new", scope: !126, file: !126, line: 185, type: !76, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!224 = distinct !DILocation(line: 610, column: 8, scope: !217, inlinedAt: !218)
!225 = !DILocation(line: 611, column: 6, scope: !217, inlinedAt: !218)
!226 = !DILocation(line: 612, column: 3, scope: !217, inlinedAt: !218)
!227 = !DILocation(line: 614, column: 3, scope: !217, inlinedAt: !218)
!228 = !DILocation(line: 220, column: 1, scope: !229, inlinedAt: !230)
!229 = distinct !DISubprogram(name: "register_trace_sched_switch", scope: !126, file: !126, line: 220, type: !76, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!230 = distinct !DILocation(line: 617, column: 8, scope: !217, inlinedAt: !218)
!231 = !DILocation(line: 618, column: 6, scope: !217, inlinedAt: !218)
!232 = !DILocation(line: 619, column: 3, scope: !217, inlinedAt: !218)
!233 = !DILocation(line: 621, column: 3, scope: !217, inlinedAt: !218)
!234 = !DILocation(line: 271, column: 1, scope: !235, inlinedAt: !236)
!235 = distinct !DISubprogram(name: "register_trace_sched_migrate_task", scope: !126, file: !126, line: 271, type: !76, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!236 = distinct !DILocation(line: 624, column: 8, scope: !217, inlinedAt: !218)
!237 = !DILocation(line: 625, column: 6, scope: !217, inlinedAt: !218)
!238 = !DILocation(line: 626, column: 3, scope: !217, inlinedAt: !218)
!239 = !DILocation(line: 647, column: 2, scope: !217, inlinedAt: !218)
!240 = !DILocation(line: 220, column: 1, scope: !125, inlinedAt: !241)
!241 = distinct !DILocation(line: 647, column: 2, scope: !217, inlinedAt: !218)
!242 = !DILocation(line: 631, column: 2, scope: !217, inlinedAt: !218)
!243 = !DILocation(line: 640, column: 2, scope: !217, inlinedAt: !218)
!244 = !{i64 2156023400}
!245 = !DILocation(line: 235, column: 6, scope: !174, inlinedAt: !246)
!246 = distinct !DILocation(line: 330, column: 8, scope: !247, inlinedAt: !248)
!247 = distinct !DISubprogram(name: "start_func_tracer", scope: !1, file: !1, line: 326, type: !76, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!248 = distinct !DILocation(line: 642, column: 6, scope: !217, inlinedAt: !218)
!249 = !DILocation(line: 235, column: 23, scope: !174, inlinedAt: !246)
!250 = !DILocation(line: 235, column: 28, scope: !174, inlinedAt: !246)
!251 = !DILocation(line: 235, column: 37, scope: !174, inlinedAt: !246)
!252 = !DILocation(line: 235, column: 41, scope: !174, inlinedAt: !246)
!253 = !DILocation(line: 235, column: 53, scope: !174, inlinedAt: !246)
!254 = !DILocation(line: 236, column: 3, scope: !174, inlinedAt: !246)
!255 = !DILocation(line: 241, column: 34, scope: !174, inlinedAt: !246)
!256 = !DILocation(line: 241, column: 38, scope: !174, inlinedAt: !246)
!257 = !DILocation(line: 241, column: 9, scope: !174, inlinedAt: !246)
!258 = !DILocation(line: 243, column: 7, scope: !174, inlinedAt: !246)
!259 = !DILocation(line: 243, column: 6, scope: !174, inlinedAt: !246)
!260 = !DILocation(line: 244, column: 20, scope: !174, inlinedAt: !246)
!261 = !DILocation(line: 244, column: 3, scope: !174, inlinedAt: !246)
!262 = !DILocation(line: 332, column: 14, scope: !247, inlinedAt: !248)
!263 = !DILocation(line: 332, column: 6, scope: !247, inlinedAt: !248)
!264 = !DILocation(line: 335, column: 18, scope: !247, inlinedAt: !248)
!265 = !DILocation(line: 0, scope: !247, inlinedAt: !248)
!266 = !DILocation(line: 642, column: 6, scope: !217, inlinedAt: !218)
!267 = !DILocation(line: 333, column: 18, scope: !247, inlinedAt: !248)
!268 = !DILocation(line: 643, column: 3, scope: !217, inlinedAt: !218)
!269 = !DILocation(line: 645, column: 2, scope: !217, inlinedAt: !218)
!270 = !DILocation(line: 185, column: 1, scope: !129, inlinedAt: !271)
!271 = distinct !DILocation(line: 649, column: 2, scope: !217, inlinedAt: !218)
!272 = !DILocation(line: 649, column: 2, scope: !217, inlinedAt: !218)
!273 = !DILocation(line: 178, column: 1, scope: !132, inlinedAt: !274)
!274 = distinct !DILocation(line: 651, column: 2, scope: !217, inlinedAt: !218)
!275 = !DILocation(line: 652, column: 1, scope: !217, inlinedAt: !218)
!276 = !DILocation(line: 679, column: 14, scope: !204)
!277 = !DILocation(line: 680, column: 2, scope: !204)
!278 = distinct !DISubprogram(name: "wakeup_tracer_call", scope: !1, file: !1, line: 211, type: !76, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!279 = !DILocation(line: 213, scope: !278)
!280 = !DILocation(line: 214, column: 27, scope: !278)
!281 = !DILocation(line: 75, column: 6, scope: !282, inlinedAt: !283)
!282 = distinct !DISubprogram(name: "func_prolog_preempt_disable", scope: !1, file: !1, line: 68, type: !76, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!283 = distinct !DILocation(line: 219, column: 7, scope: !278)
!284 = !{!"branch_weights", i32 2000, i32 1}
!285 = !DILocation(line: 76, column: 3, scope: !282, inlinedAt: !283)
!286 = !DILocation(line: 78, column: 15, scope: !282, inlinedAt: !283)
!287 = !DILocation(line: 16, column: 10, scope: !288, inlinedAt: !290)
!288 = distinct !DISubprogram(name: "preempt_count_ptr", scope: !289, file: !289, line: 14, type: !76, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!289 = !DIFile(filename: "../include/asm-generic/preempt.h", directory: "/llk/linux-5.17/build_arm_allyes")
!290 = distinct !DILocation(line: 54, column: 3, scope: !291, inlinedAt: !292)
!291 = distinct !DISubprogram(name: "__preempt_count_add", scope: !289, file: !289, line: 52, type: !76, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!292 = distinct !DILocation(line: 79, column: 2, scope: !282, inlinedAt: !283)
!293 = !DILocation(line: 104, column: 4, scope: !294, inlinedAt: !296)
!294 = distinct !DISubprogram(name: "current_thread_info", scope: !295, file: !295, line: 101, type: !76, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!295 = !DIFile(filename: "../arch/arm/include/asm/thread_info.h", directory: "/llk/linux-5.17/build_arm_allyes")
!296 = distinct !DILocation(line: 16, column: 10, scope: !288, inlinedAt: !290)
!297 = !DILocation(line: 104, column: 26, scope: !294, inlinedAt: !296)
!298 = !DILocation(line: 103, column: 9, scope: !294, inlinedAt: !296)
!299 = !DILocation(line: 16, column: 33, scope: !288, inlinedAt: !290)
!300 = !DILocation(line: 54, column: 23, scope: !291, inlinedAt: !292)
!301 = !DILocation(line: 79, column: 2, scope: !282, inlinedAt: !283)
!302 = !{i64 2156003535}
!303 = !DILocation(line: 104, column: 4, scope: !294, inlinedAt: !304)
!304 = distinct !DILocation(line: 81, column: 8, scope: !282, inlinedAt: !283)
!305 = !DILocation(line: 104, column: 26, scope: !294, inlinedAt: !304)
!306 = !DILocation(line: 103, column: 9, scope: !294, inlinedAt: !304)
!307 = !DILocation(line: 81, column: 8, scope: !282, inlinedAt: !283)
!308 = !DILocation(line: 82, column: 13, scope: !282, inlinedAt: !283)
!309 = !DILocation(line: 82, column: 10, scope: !282, inlinedAt: !283)
!310 = !DILocation(line: 82, column: 6, scope: !282, inlinedAt: !283)
!311 = !DILocation(line: 83, column: 3, scope: !282, inlinedAt: !283)
!312 = !DILocation(line: 85, column: 10, scope: !282, inlinedAt: !283)
!313 = !DILocation(line: 101, column: 2, scope: !314, inlinedAt: !316)
!314 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !315, file: !315, line: 99, type: !76, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!315 = !DIFile(filename: "../include/linux/instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!316 = distinct !DILocation(line: 198, column: 2, scope: !317, inlinedAt: !319)
!317 = distinct !DISubprogram(name: "atomic_inc_return", scope: !318, file: !318, line: 195, type: !76, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!318 = !DIFile(filename: "../include/linux/atomic/atomic-instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!319 = distinct !DILocation(line: 86, column: 13, scope: !282, inlinedAt: !283)
!320 = !DILocation(line: 200, column: 2, scope: !321, inlinedAt: !323)
!321 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !322, file: !322, line: 197, type: !76, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!322 = !DIFile(filename: "../include/linux/atomic/atomic-arch-fallback.h", directory: "/llk/linux-5.17/build_arm_allyes")
!323 = distinct !DILocation(line: 356, column: 9, scope: !324, inlinedAt: !325)
!324 = distinct !DISubprogram(name: "arch_atomic_inc_return", scope: !322, file: !322, line: 354, type: !76, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!325 = distinct !DILocation(line: 199, column: 9, scope: !317, inlinedAt: !319)
!326 = !{i64 2148443648}
!327 = !DILocation(line: 223, column: 1, scope: !328, inlinedAt: !330)
!328 = distinct !DISubprogram(name: "arch_atomic_add_return_relaxed", scope: !329, file: !329, line: 223, type: !76, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!329 = !DIFile(filename: "../arch/arm/include/asm/atomic.h", directory: "/llk/linux-5.17/build_arm_allyes")
!330 = distinct !DILocation(line: 201, column: 8, scope: !321, inlinedAt: !323)
!331 = !{i64 2148358933, i64 2148358965, i64 2148358994, i64 2148359028, i64 2148359059, i64 2148359082}
!332 = !DILocation(line: 202, column: 2, scope: !321, inlinedAt: !323)
!333 = !{i64 2148443877}
!334 = !DILocation(line: 87, column: 6, scope: !282, inlinedAt: !283)
!335 = !DILocation(line: 93, column: 16, scope: !282, inlinedAt: !283)
!336 = !DILocation(line: 101, column: 2, scope: !314, inlinedAt: !337)
!337 = distinct !DILocation(line: 257, column: 2, scope: !338, inlinedAt: !339)
!338 = distinct !DISubprogram(name: "atomic_dec", scope: !318, file: !318, line: 255, type: !76, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!339 = distinct !DILocation(line: 93, column: 2, scope: !282, inlinedAt: !283)
!340 = !DILocation(line: 224, column: 1, scope: !341, inlinedAt: !342)
!341 = distinct !DISubprogram(name: "arch_atomic_sub", scope: !329, file: !329, line: 224, type: !76, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!342 = distinct !DILocation(line: 511, column: 2, scope: !343, inlinedAt: !344)
!343 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !322, file: !322, line: 509, type: !76, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!344 = distinct !DILocation(line: 258, column: 2, scope: !338, inlinedAt: !339)
!345 = !{i64 2148360678, i64 2148360704, i64 2148360733, i64 2148360767, i64 2148360798, i64 2148360821}
!346 = !DILocation(line: 93, column: 2, scope: !282, inlinedAt: !283)
!347 = !DILocation(line: 96, column: 2, scope: !282, inlinedAt: !283)
!348 = !{i64 2156004508}
!349 = !DILocation(line: 16, column: 10, scope: !288, inlinedAt: !350)
!350 = distinct !DILocation(line: 59, column: 3, scope: !351, inlinedAt: !352)
!351 = distinct !DISubprogram(name: "__preempt_count_sub", scope: !289, file: !289, line: 57, type: !76, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!352 = distinct !DILocation(line: 96, column: 2, scope: !282, inlinedAt: !283)
!353 = !DILocation(line: 104, column: 4, scope: !294, inlinedAt: !354)
!354 = distinct !DILocation(line: 16, column: 10, scope: !288, inlinedAt: !350)
!355 = !DILocation(line: 104, column: 26, scope: !294, inlinedAt: !354)
!356 = !DILocation(line: 103, column: 9, scope: !294, inlinedAt: !354)
!357 = !DILocation(line: 16, column: 33, scope: !288, inlinedAt: !350)
!358 = !DILocation(line: 59, column: 23, scope: !351, inlinedAt: !352)
!359 = !DILocation(line: 97, column: 2, scope: !282, inlinedAt: !283)
!360 = !DILocation(line: 90, column: 2, scope: !282, inlinedAt: !283)
!361 = !DILocation(line: 29, column: 2, scope: !362, inlinedAt: !364)
!362 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !363, file: !363, line: 25, type: !76, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!363 = !DIFile(filename: "../arch/arm/include/asm/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!364 = distinct !DILocation(line: 222, column: 2, scope: !278)
!365 = !{i64 761913, i64 761974}
!366 = !DILocation(line: 181, column: 15, scope: !367, inlinedAt: !368)
!367 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !363, file: !363, line: 179, type: !76, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!368 = distinct !DILocation(line: 222, column: 2, scope: !278)
!369 = !DILocation(line: 222, column: 2, scope: !278)
!370 = !DILocation(line: 223, column: 2, scope: !278)
!371 = !DILocation(line: 224, column: 2, scope: !278)
!372 = !DILocation(line: 63, column: 34, scope: !373, inlinedAt: !375)
!373 = distinct !DISubprogram(name: "arch_irqs_disabled", scope: !374, file: !374, line: 61, type: !76, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!374 = !DIFile(filename: "../include/asm-generic/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!375 = distinct !DILocation(line: 224, column: 2, scope: !278)
!376 = !DILocation(line: 159, column: 2, scope: !377, inlinedAt: !378)
!377 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !363, file: !363, line: 156, type: !76, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!378 = distinct !DILocation(line: 63, column: 34, scope: !373, inlinedAt: !375)
!379 = !{i64 764645}
!380 = !DILocation(line: 181, column: 15, scope: !367, inlinedAt: !381)
!381 = distinct !DILocation(line: 63, column: 9, scope: !373, inlinedAt: !375)
!382 = !{!"branch_weights", i32 1, i32 2000}
!383 = !DILocation(line: 171, column: 2, scope: !384, inlinedAt: !385)
!384 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !363, file: !363, line: 169, type: !76, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!385 = distinct !DILocation(line: 224, column: 2, scope: !278)
!386 = !{i64 764930}
!387 = !DILocation(line: 101, column: 2, scope: !314, inlinedAt: !388)
!388 = distinct !DILocation(line: 257, column: 2, scope: !338, inlinedAt: !389)
!389 = distinct !DILocation(line: 226, column: 2, scope: !278)
!390 = !DILocation(line: 224, column: 1, scope: !341, inlinedAt: !391)
!391 = distinct !DILocation(line: 511, column: 2, scope: !343, inlinedAt: !392)
!392 = distinct !DILocation(line: 258, column: 2, scope: !338, inlinedAt: !389)
!393 = !DILocation(line: 227, column: 2, scope: !278)
!394 = !{i64 2156006031}
!395 = !DILocation(line: 16, column: 10, scope: !288, inlinedAt: !396)
!396 = distinct !DILocation(line: 59, column: 3, scope: !351, inlinedAt: !397)
!397 = distinct !DILocation(line: 227, column: 2, scope: !278)
!398 = !DILocation(line: 104, column: 4, scope: !294, inlinedAt: !399)
!399 = distinct !DILocation(line: 16, column: 10, scope: !288, inlinedAt: !396)
!400 = !DILocation(line: 104, column: 26, scope: !294, inlinedAt: !399)
!401 = !DILocation(line: 103, column: 9, scope: !294, inlinedAt: !399)
!402 = !DILocation(line: 16, column: 33, scope: !288, inlinedAt: !396)
!403 = !DILocation(line: 59, column: 23, scope: !351, inlinedAt: !397)
!404 = !DILocation(line: 228, column: 1, scope: !278)
!405 = distinct !DISubprogram(name: "tracing_gen_ctx", scope: !406, file: !406, line: 185, type: !76, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!406 = !DIFile(filename: "../include/linux/trace_events.h", directory: "/llk/linux-5.17/build_arm_allyes")
!407 = !DILocation(line: 186, scope: !405)
!408 = !DILocation(line: 189, column: 2, scope: !405)
!409 = !DILocation(line: 159, column: 2, scope: !377, inlinedAt: !410)
!410 = distinct !DILocation(line: 189, column: 2, scope: !405)
!411 = !DILocation(line: 181, column: 28, scope: !412, inlinedAt: !413)
!412 = distinct !DISubprogram(name: "tracing_gen_ctx_flags", scope: !406, file: !406, line: 179, type: !76, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!413 = distinct !DILocation(line: 190, column: 9, scope: !405)
!414 = !DILocation(line: 183, column: 9, scope: !412, inlinedAt: !413)
!415 = !DILocation(line: 190, column: 2, scope: !405)
!416 = distinct !DISubprogram(name: "probe_wakeup", scope: !1, file: !1, line: 523, type: !76, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!417 = !DILocation(line: 524, scope: !416)
!418 = !DILocation(line: 104, column: 4, scope: !294, inlinedAt: !419)
!419 = distinct !DILocation(line: 526, column: 12, scope: !416)
!420 = !DILocation(line: 104, column: 26, scope: !294, inlinedAt: !419)
!421 = !DILocation(line: 103, column: 9, scope: !294, inlinedAt: !419)
!422 = !DILocation(line: 526, column: 12, scope: !416)
!423 = !DILocation(line: 530, column: 6, scope: !416)
!424 = !DILocation(line: 0, scope: !416)
!425 = !DILocation(line: 531, column: 3, scope: !416)
!426 = !DILocation(line: 533, column: 2, scope: !416)
!427 = !DILocation(line: 534, column: 25, scope: !416)
!428 = !DILocation(line: 534, column: 2, scope: !416)
!429 = !DILocation(line: 544, column: 6, scope: !416)
!430 = !DILocation(line: 544, column: 17, scope: !416)
!431 = !DILocation(line: 544, column: 21, scope: !416)
!432 = !DILocation(line: 544, column: 31, scope: !416)
!433 = !DILocation(line: 544, column: 43, scope: !416)
!434 = !DILocation(line: 20, column: 20, scope: !435, inlinedAt: !437)
!435 = distinct !DISubprogram(name: "dl_task", scope: !436, file: !436, line: 18, type: !76, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!436 = !DIFile(filename: "../include/linux/sched/deadline.h", directory: "/llk/linux-5.17/build_arm_allyes")
!437 = distinct !DILocation(line: 544, column: 35, scope: !416)
!438 = !DILocation(line: 13, column: 6, scope: !439, inlinedAt: !440)
!439 = distinct !DISubprogram(name: "dl_prio", scope: !436, file: !436, line: 11, type: !76, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!440 = distinct !DILocation(line: 20, column: 9, scope: !435, inlinedAt: !437)
!441 = !DILocation(line: 0, scope: !439, inlinedAt: !440)
!442 = !DILocation(line: 544, column: 35, scope: !416)
!443 = !DILocation(line: 544, column: 47, scope: !416)
!444 = !DILocation(line: 545, column: 7, scope: !416)
!445 = !DILocation(line: 545, column: 17, scope: !416)
!446 = !DILocation(line: 545, column: 29, scope: !416)
!447 = !DILocation(line: 20, column: 20, scope: !435, inlinedAt: !448)
!448 = distinct !DILocation(line: 545, column: 21, scope: !416)
!449 = !DILocation(line: 13, column: 6, scope: !439, inlinedAt: !450)
!450 = distinct !DILocation(line: 20, column: 9, scope: !435, inlinedAt: !448)
!451 = !DILocation(line: 0, scope: !439, inlinedAt: !450)
!452 = !DILocation(line: 545, column: 21, scope: !416)
!453 = !DILocation(line: 545, column: 32, scope: !416)
!454 = !DILocation(line: 545, column: 44, scope: !416)
!455 = !DILocation(line: 11, column: 6, scope: !456, inlinedAt: !458)
!456 = distinct !DISubprogram(name: "rt_prio", scope: !457, file: !457, line: 9, type: !76, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!457 = !DIFile(filename: "../include/linux/sched/rt.h", directory: "/llk/linux-5.17/build_arm_allyes")
!458 = distinct !DILocation(line: 18, column: 9, scope: !459, inlinedAt: !460)
!459 = distinct !DISubprogram(name: "rt_task", scope: !457, file: !457, line: 16, type: !76, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!460 = distinct !DILocation(line: 545, column: 36, scope: !416)
!461 = !DILocation(line: 0, scope: !456, inlinedAt: !458)
!462 = !DILocation(line: 545, column: 48, scope: !416)
!463 = !DILocation(line: 20, column: 20, scope: !435, inlinedAt: !464)
!464 = distinct !DILocation(line: 546, column: 8, scope: !416)
!465 = !DILocation(line: 13, column: 6, scope: !439, inlinedAt: !466)
!466 = distinct !DILocation(line: 20, column: 9, scope: !435, inlinedAt: !464)
!467 = !DILocation(line: 0, scope: !439, inlinedAt: !466)
!468 = !DILocation(line: 546, column: 8, scope: !416)
!469 = !DILocation(line: 546, column: 19, scope: !416)
!470 = !DILocation(line: 546, column: 23, scope: !416)
!471 = !DILocation(line: 546, column: 34, scope: !416)
!472 = !DILocation(line: 546, column: 31, scope: !416)
!473 = !DILocation(line: 546, column: 46, scope: !416)
!474 = !DILocation(line: 546, column: 49, scope: !416)
!475 = !DILocation(line: 546, column: 60, scope: !416)
!476 = !DILocation(line: 546, column: 69, scope: !416)
!477 = !DILocation(line: 546, column: 57, scope: !416)
!478 = !DILocation(line: 547, column: 3, scope: !416)
!479 = !DILocation(line: 549, column: 32, scope: !416)
!480 = !DILocation(line: 101, column: 2, scope: !314, inlinedAt: !481)
!481 = distinct !DILocation(line: 198, column: 2, scope: !317, inlinedAt: !482)
!482 = distinct !DILocation(line: 549, column: 13, scope: !416)
!483 = !DILocation(line: 200, column: 2, scope: !321, inlinedAt: !484)
!484 = distinct !DILocation(line: 356, column: 9, scope: !324, inlinedAt: !485)
!485 = distinct !DILocation(line: 199, column: 9, scope: !317, inlinedAt: !482)
!486 = !DILocation(line: 223, column: 1, scope: !328, inlinedAt: !487)
!487 = distinct !DILocation(line: 201, column: 8, scope: !321, inlinedAt: !484)
!488 = !DILocation(line: 202, column: 2, scope: !321, inlinedAt: !484)
!489 = !DILocation(line: 550, column: 6, scope: !416)
!490 = !DILocation(line: 551, column: 3, scope: !416)
!491 = !DILocation(line: 553, column: 14, scope: !416)
!492 = !DILocation(line: 556, column: 2, scope: !416)
!493 = !DILocation(line: 559, column: 7, scope: !416)
!494 = !DILocation(line: 559, column: 22, scope: !416)
!495 = !DILocation(line: 559, column: 25, scope: !416)
!496 = !DILocation(line: 559, column: 36, scope: !416)
!497 = !DILocation(line: 560, column: 16, scope: !416)
!498 = !DILocation(line: 20, column: 20, scope: !435, inlinedAt: !499)
!499 = distinct !DILocation(line: 560, column: 8, scope: !416)
!500 = !DILocation(line: 13, column: 6, scope: !439, inlinedAt: !501)
!501 = distinct !DILocation(line: 20, column: 9, scope: !435, inlinedAt: !499)
!502 = !DILocation(line: 0, scope: !439, inlinedAt: !501)
!503 = !DILocation(line: 560, column: 8, scope: !416)
!504 = !DILocation(line: 560, column: 19, scope: !416)
!505 = !DILocation(line: 560, column: 22, scope: !416)
!506 = !DILocation(line: 560, column: 25, scope: !416)
!507 = !DILocation(line: 560, column: 33, scope: !416)
!508 = !DILocation(line: 560, column: 30, scope: !416)
!509 = !DILocation(line: 559, column: 6, scope: !416)
!510 = !DILocation(line: 561, column: 3, scope: !416)
!511 = !DILocation(line: 564, column: 2, scope: !416)
!512 = !DILocation(line: 2137, column: 9, scope: !513, inlinedAt: !515)
!513 = distinct !DISubprogram(name: "task_cpu", scope: !514, file: !514, line: 2135, type: !76, scopeLine: 2136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!514 = !DIFile(filename: "../include/linux/sched.h", directory: "/llk/linux-5.17/build_arm_allyes")
!515 = distinct !DILocation(line: 566, column: 15, scope: !416)
!516 = !DILocation(line: 566, column: 13, scope: !416)
!517 = !DILocation(line: 567, column: 21, scope: !416)
!518 = !DILocation(line: 568, column: 19, scope: !416)
!519 = !DILocation(line: 568, column: 14, scope: !416)
!520 = !DILocation(line: 13, column: 6, scope: !439, inlinedAt: !521)
!521 = distinct !DILocation(line: 20, column: 9, scope: !435, inlinedAt: !522)
!522 = distinct !DILocation(line: 574, column: 6, scope: !416)
!523 = !DILocation(line: 0, scope: !439, inlinedAt: !521)
!524 = !DILocation(line: 574, column: 6, scope: !416)
!525 = !DILocation(line: 575, column: 14, scope: !416)
!526 = !DILocation(line: 575, column: 3, scope: !416)
!527 = !DILocation(line: 577, column: 14, scope: !416)
!528 = !DILocation(line: 579, column: 16, scope: !416)
!529 = !DILocation(line: 579, column: 14, scope: !416)
!530 = !DILocation(line: 581, column: 9, scope: !416)
!531 = !DILocation(line: 582, column: 28, scope: !416)
!532 = !DILocation(line: 582, column: 8, scope: !416)
!533 = !DILocation(line: 582, column: 26, scope: !416)
!534 = !DILocation(line: 583, column: 29, scope: !416)
!535 = !DILocation(line: 583, column: 46, scope: !416)
!536 = !DILocation(line: 583, column: 2, scope: !416)
!537 = !DILocation(line: 584, column: 16, scope: !416)
!538 = !DILocation(line: 584, column: 2, scope: !416)
!539 = !DILocation(line: 591, column: 19, scope: !416)
!540 = !DILocation(line: 308, column: 3, scope: !541, inlinedAt: !542)
!541 = distinct !DISubprogram(name: "__trace_function", scope: !1, file: !1, line: 301, type: !76, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!542 = distinct !DILocation(line: 591, column: 2, scope: !416)
!543 = !DILocation(line: 591, column: 2, scope: !416)
!544 = !DILocation(line: 109, column: 2, scope: !545, inlinedAt: !547)
!545 = distinct !DISubprogram(name: "arch_spin_unlock", scope: !546, file: !546, line: 107, type: !76, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!546 = !DIFile(filename: "../arch/arm/include/asm/spinlock.h", directory: "/llk/linux-5.17/build_arm_allyes")
!547 = distinct !DILocation(line: 594, column: 2, scope: !416)
!548 = !{i64 2149248764}
!549 = !DILocation(line: 110, column: 21, scope: !545, inlinedAt: !547)
!550 = !DILocation(line: 44, column: 2, scope: !551, inlinedAt: !552)
!551 = distinct !DISubprogram(name: "dsb_sev", scope: !546, file: !546, line: 41, type: !76, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!552 = distinct !DILocation(line: 111, column: 2, scope: !545, inlinedAt: !547)
!553 = !{i64 2149244438}
!554 = !DILocation(line: 45, column: 2, scope: !551, inlinedAt: !552)
!555 = !{i64 2149244537, i64 2149244564, i64 2149244611, i64 2149244633, i64 2149244661, i64 2149244681}
!556 = !DILocation(line: 594, column: 2, scope: !416)
!557 = !DILocation(line: 596, column: 14, scope: !416)
!558 = !DILocation(line: 101, column: 2, scope: !314, inlinedAt: !559)
!559 = distinct !DILocation(line: 257, column: 2, scope: !338, inlinedAt: !560)
!560 = distinct !DILocation(line: 596, column: 2, scope: !416)
!561 = !DILocation(line: 224, column: 1, scope: !341, inlinedAt: !562)
!562 = distinct !DILocation(line: 511, column: 2, scope: !343, inlinedAt: !563)
!563 = distinct !DILocation(line: 258, column: 2, scope: !338, inlinedAt: !560)
!564 = !DILocation(line: 597, column: 1, scope: !416)
!565 = distinct !DISubprogram(name: "probe_wakeup_sched_switch", scope: !1, file: !1, line: 428, type: !76, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!566 = !DILocation(line: 430, scope: !565)
!567 = !DILocation(line: 438, column: 2, scope: !565)
!568 = !DILocation(line: 440, column: 6, scope: !565)
!569 = !DILocation(line: 0, scope: !565)
!570 = !DILocation(line: 441, column: 3, scope: !565)
!571 = !DILocation(line: 450, column: 2, scope: !565)
!572 = !{i64 2156006305}
!573 = !DILocation(line: 452, column: 14, scope: !565)
!574 = !DILocation(line: 452, column: 11, scope: !565)
!575 = !DILocation(line: 452, column: 6, scope: !565)
!576 = !DILocation(line: 453, column: 3, scope: !565)
!577 = !DILocation(line: 104, column: 4, scope: !294, inlinedAt: !578)
!578 = distinct !DILocation(line: 456, column: 8, scope: !565)
!579 = !DILocation(line: 104, column: 26, scope: !294, inlinedAt: !578)
!580 = !DILocation(line: 103, column: 9, scope: !294, inlinedAt: !578)
!581 = !DILocation(line: 456, column: 8, scope: !565)
!582 = !DILocation(line: 457, column: 32, scope: !565)
!583 = !DILocation(line: 101, column: 2, scope: !314, inlinedAt: !584)
!584 = distinct !DILocation(line: 198, column: 2, scope: !317, inlinedAt: !585)
!585 = distinct !DILocation(line: 457, column: 13, scope: !565)
!586 = !DILocation(line: 200, column: 2, scope: !321, inlinedAt: !587)
!587 = distinct !DILocation(line: 356, column: 9, scope: !324, inlinedAt: !588)
!588 = distinct !DILocation(line: 199, column: 9, scope: !317, inlinedAt: !585)
!589 = !DILocation(line: 223, column: 1, scope: !328, inlinedAt: !590)
!590 = distinct !DILocation(line: 201, column: 8, scope: !321, inlinedAt: !587)
!591 = !DILocation(line: 202, column: 2, scope: !321, inlinedAt: !587)
!592 = !DILocation(line: 458, column: 6, scope: !565)
!593 = !DILocation(line: 459, column: 3, scope: !565)
!594 = !DILocation(line: 29, column: 2, scope: !362, inlinedAt: !595)
!595 = distinct !DILocation(line: 461, column: 2, scope: !565)
!596 = !DILocation(line: 181, column: 15, scope: !367, inlinedAt: !597)
!597 = distinct !DILocation(line: 461, column: 2, scope: !565)
!598 = !DILocation(line: 461, column: 2, scope: !565)
!599 = !DILocation(line: 181, column: 28, scope: !412, inlinedAt: !600)
!600 = distinct !DILocation(line: 462, column: 14, scope: !565)
!601 = !DILocation(line: 183, column: 9, scope: !412, inlinedAt: !600)
!602 = !DILocation(line: 464, column: 2, scope: !565)
!603 = !DILocation(line: 467, column: 6, scope: !565)
!604 = !DILocation(line: 468, column: 3, scope: !565)
!605 = !DILocation(line: 471, column: 9, scope: !565)
!606 = !DILocation(line: 473, column: 33, scope: !565)
!607 = !DILocation(line: 308, column: 3, scope: !541, inlinedAt: !608)
!608 = distinct !DILocation(line: 473, column: 2, scope: !565)
!609 = !DILocation(line: 474, column: 29, scope: !565)
!610 = !DILocation(line: 474, column: 2, scope: !565)
!611 = !DILocation(line: 475, column: 16, scope: !565)
!612 = !DILocation(line: 475, column: 2, scope: !565)
!613 = !DILocation(line: 477, column: 13, scope: !565)
!614 = !DILocation(line: 478, column: 7, scope: !565)
!615 = !DILocation(line: 479, column: 12, scope: !565)
!616 = !DILocation(line: 481, column: 22, scope: !565)
!617 = !DILocation(line: 481, column: 7, scope: !565)
!618 = !DILocation(line: 481, column: 6, scope: !565)
!619 = !DILocation(line: 482, column: 3, scope: !565)
!620 = !DILocation(line: 484, column: 6, scope: !565)
!621 = !DILocation(line: 485, column: 31, scope: !565)
!622 = !DILocation(line: 485, column: 3, scope: !565)
!623 = !DILocation(line: 485, column: 17, scope: !565)
!624 = !DILocation(line: 485, column: 29, scope: !565)
!625 = !DILocation(line: 486, column: 31, scope: !565)
!626 = !DILocation(line: 486, column: 44, scope: !565)
!627 = !DILocation(line: 486, column: 3, scope: !565)
!628 = !DILocation(line: 487, column: 2, scope: !565)
!629 = !DILocation(line: 490, column: 2, scope: !565)
!630 = !DILocation(line: 109, column: 2, scope: !545, inlinedAt: !631)
!631 = distinct !DILocation(line: 491, column: 2, scope: !565)
!632 = !DILocation(line: 110, column: 21, scope: !545, inlinedAt: !631)
!633 = !DILocation(line: 44, column: 2, scope: !551, inlinedAt: !634)
!634 = distinct !DILocation(line: 111, column: 2, scope: !545, inlinedAt: !631)
!635 = !DILocation(line: 45, column: 2, scope: !551, inlinedAt: !634)
!636 = !DILocation(line: 492, column: 2, scope: !565)
!637 = !DILocation(line: 63, column: 34, scope: !373, inlinedAt: !638)
!638 = distinct !DILocation(line: 492, column: 2, scope: !565)
!639 = !DILocation(line: 159, column: 2, scope: !377, inlinedAt: !640)
!640 = distinct !DILocation(line: 63, column: 34, scope: !373, inlinedAt: !638)
!641 = !DILocation(line: 181, column: 15, scope: !367, inlinedAt: !642)
!642 = distinct !DILocation(line: 63, column: 9, scope: !373, inlinedAt: !638)
!643 = !DILocation(line: 171, column: 2, scope: !384, inlinedAt: !644)
!644 = distinct !DILocation(line: 492, column: 2, scope: !565)
!645 = !DILocation(line: 494, column: 14, scope: !565)
!646 = !DILocation(line: 101, column: 2, scope: !314, inlinedAt: !647)
!647 = distinct !DILocation(line: 257, column: 2, scope: !338, inlinedAt: !648)
!648 = distinct !DILocation(line: 494, column: 2, scope: !565)
!649 = !DILocation(line: 224, column: 1, scope: !341, inlinedAt: !650)
!650 = distinct !DILocation(line: 511, column: 2, scope: !343, inlinedAt: !651)
!651 = distinct !DILocation(line: 258, column: 2, scope: !338, inlinedAt: !648)
!652 = !DILocation(line: 495, column: 1, scope: !565)
!653 = distinct !DISubprogram(name: "probe_wakeup_migrate_task", scope: !1, file: !1, line: 363, type: !76, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!654 = !DILocation(line: 364, scope: !653)
!655 = !DILocation(line: 365, column: 14, scope: !653)
!656 = !DILocation(line: 365, column: 11, scope: !653)
!657 = !DILocation(line: 365, column: 6, scope: !653)
!658 = !DILocation(line: 366, column: 3, scope: !653)
!659 = !DILocation(line: 368, column: 23, scope: !653)
!660 = !DILocation(line: 368, column: 21, scope: !653)
!661 = !DILocation(line: 369, column: 1, scope: !653)
!662 = distinct !DISubprogram(name: "wakeup_reset", scope: !1, file: !1, line: 509, type: !76, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!663 = !DILocation(line: 510, scope: !662)
!664 = !DILocation(line: 513, column: 33, scope: !662)
!665 = !DILocation(line: 513, column: 2, scope: !662)
!666 = !DILocation(line: 29, column: 2, scope: !362, inlinedAt: !667)
!667 = distinct !DILocation(line: 515, column: 2, scope: !662)
!668 = !DILocation(line: 181, column: 15, scope: !367, inlinedAt: !669)
!669 = distinct !DILocation(line: 515, column: 2, scope: !662)
!670 = !DILocation(line: 515, column: 2, scope: !662)
!671 = !DILocation(line: 62, column: 2, scope: !672, inlinedAt: !673)
!672 = distinct !DISubprogram(name: "arch_spin_lock", scope: !546, file: !546, line: 56, type: !76, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!673 = distinct !DILocation(line: 516, column: 2, scope: !662)
!674 = !DILocation(line: 63, column: 2, scope: !672, inlinedAt: !673)
!675 = !{i64 1756567, i64 1756590, i64 1756610, i64 1756634, i64 1756650}
!676 = !DILocation(line: 73, column: 33, scope: !672, inlinedAt: !673)
!677 = !DILocation(line: 73, column: 30, scope: !672, inlinedAt: !673)
!678 = !DILocation(line: 73, column: 2, scope: !672, inlinedAt: !673)
!679 = !DILocation(line: 74, column: 3, scope: !672, inlinedAt: !673)
!680 = !{i64 2149244966}
!681 = !DILocation(line: 75, column: 27, scope: !672, inlinedAt: !673)
!682 = distinct !{!682, !678, !683}
!683 = !DILocation(line: 76, column: 2, scope: !672, inlinedAt: !673)
!684 = !DILocation(line: 78, column: 2, scope: !672, inlinedAt: !673)
!685 = !{i64 2149248082}
!686 = !DILocation(line: 517, column: 2, scope: !662)
!687 = !DILocation(line: 109, column: 2, scope: !545, inlinedAt: !688)
!688 = distinct !DILocation(line: 518, column: 2, scope: !662)
!689 = !DILocation(line: 110, column: 21, scope: !545, inlinedAt: !688)
!690 = !DILocation(line: 44, column: 2, scope: !551, inlinedAt: !691)
!691 = distinct !DILocation(line: 111, column: 2, scope: !545, inlinedAt: !688)
!692 = !DILocation(line: 45, column: 2, scope: !551, inlinedAt: !691)
!693 = !DILocation(line: 519, column: 2, scope: !662)
!694 = !DILocation(line: 63, column: 34, scope: !373, inlinedAt: !695)
!695 = distinct !DILocation(line: 519, column: 2, scope: !662)
!696 = !DILocation(line: 159, column: 2, scope: !377, inlinedAt: !697)
!697 = distinct !DILocation(line: 63, column: 34, scope: !373, inlinedAt: !695)
!698 = !DILocation(line: 181, column: 15, scope: !367, inlinedAt: !699)
!699 = distinct !DILocation(line: 63, column: 9, scope: !373, inlinedAt: !695)
!700 = !DILocation(line: 171, column: 2, scope: !384, inlinedAt: !701)
!701 = distinct !DILocation(line: 519, column: 2, scope: !662)
!702 = !DILocation(line: 520, column: 1, scope: !662)
!703 = !DILocation(line: 57, scope: !672)
!704 = !DILocation(line: 62, column: 2, scope: !672)
!705 = !DILocation(line: 63, column: 2, scope: !672)
!706 = !DILocation(line: 73, column: 33, scope: !672)
!707 = !DILocation(line: 73, column: 30, scope: !672)
!708 = !DILocation(line: 73, column: 2, scope: !672)
!709 = !DILocation(line: 74, column: 3, scope: !672)
!710 = !DILocation(line: 75, column: 27, scope: !672)
!711 = distinct !{!711, !708, !712}
!712 = !DILocation(line: 76, column: 2, scope: !672)
!713 = !DILocation(line: 78, column: 2, scope: !672)
!714 = !DILocation(line: 79, column: 1, scope: !672)
!715 = distinct !DISubprogram(name: "__wakeup_reset", scope: !1, file: !1, line: 497, type: !76, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!716 = !DILocation(line: 498, scope: !715)
!717 = !DILocation(line: 499, column: 13, scope: !715)
!718 = !DILocation(line: 500, column: 14, scope: !715)
!719 = !DILocation(line: 501, column: 13, scope: !715)
!720 = !DILocation(line: 503, column: 6, scope: !715)
!721 = !DILocation(line: 504, column: 19, scope: !715)
!722 = !DILocation(line: 114, column: 32, scope: !723, inlinedAt: !725)
!723 = distinct !DISubprogram(name: "put_task_struct", scope: !724, file: !724, line: 112, type: !76, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!724 = !DIFile(filename: "../include/linux/sched/task.h", directory: "/llk/linux-5.17/build_arm_allyes")
!725 = distinct !DILocation(line: 504, column: 3, scope: !715)
!726 = !DILocation(line: 101, column: 2, scope: !314, inlinedAt: !727)
!727 = distinct !DILocation(line: 176, column: 2, scope: !728, inlinedAt: !729)
!728 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !318, file: !318, line: 173, type: !76, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!729 = distinct !DILocation(line: 272, column: 12, scope: !730, inlinedAt: !732)
!730 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !731, file: !731, line: 270, type: !76, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!731 = !DIFile(filename: "../include/linux/refcount.h", directory: "/llk/linux-5.17/build_arm_allyes")
!732 = distinct !DILocation(line: 315, column: 9, scope: !733, inlinedAt: !734)
!733 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !731, file: !731, line: 313, type: !76, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!734 = distinct !DILocation(line: 333, column: 9, scope: !735, inlinedAt: !736)
!735 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !731, file: !731, line: 331, type: !76, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!736 = distinct !DILocation(line: 114, column: 6, scope: !723, inlinedAt: !725)
!737 = !DILocation(line: 315, column: 2, scope: !738, inlinedAt: !739)
!738 = distinct !DISubprogram(name: "arch_atomic_fetch_sub_release", scope: !322, file: !322, line: 313, type: !76, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!739 = distinct !DILocation(line: 177, column: 9, scope: !728, inlinedAt: !729)
!740 = !{i64 2148447768}
!741 = !DILocation(line: 224, column: 1, scope: !742, inlinedAt: !743)
!742 = distinct !DISubprogram(name: "arch_atomic_fetch_sub_relaxed", scope: !329, file: !329, line: 224, type: !76, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!743 = distinct !DILocation(line: 316, column: 9, scope: !738, inlinedAt: !739)
!744 = !{i64 2148362208, i64 2148362240, i64 2148362269, i64 2148362303, i64 2148362334, i64 2148362357}
!745 = !DILocation(line: 277, column: 10, scope: !730, inlinedAt: !732)
!746 = !DILocation(line: 277, column: 6, scope: !730, inlinedAt: !732)
!747 = !DILocation(line: 282, column: 6, scope: !730, inlinedAt: !732)
!748 = !DILocation(line: 283, column: 26, scope: !730, inlinedAt: !732)
!749 = !DILocation(line: 283, column: 3, scope: !730, inlinedAt: !732)
!750 = !DILocation(line: 285, column: 2, scope: !730, inlinedAt: !732)
!751 = !DILocation(line: 278, column: 3, scope: !730, inlinedAt: !732)
!752 = !{i64 2149323882}
!753 = !DILocation(line: 279, column: 3, scope: !730, inlinedAt: !732)
!754 = !DILocation(line: 115, column: 21, scope: !723, inlinedAt: !725)
!755 = !DILocation(line: 115, column: 3, scope: !723, inlinedAt: !725)
!756 = !DILocation(line: 506, column: 14, scope: !715)
!757 = !DILocation(line: 507, column: 1, scope: !715)
!758 = distinct !DISubprogram(name: "get_task_struct", scope: !724, file: !724, line: 104, type: !76, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!759 = !DILocation(line: 105, scope: !758)
!760 = !DILocation(line: 106, column: 19, scope: !758)
!761 = !DILocation(line: 101, column: 2, scope: !314, inlinedAt: !762)
!762 = distinct !DILocation(line: 116, column: 2, scope: !763, inlinedAt: !764)
!763 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !318, file: !318, line: 114, type: !76, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!764 = distinct !DILocation(line: 193, column: 12, scope: !765, inlinedAt: !766)
!765 = distinct !DISubprogram(name: "__refcount_add", scope: !731, file: !731, line: 191, type: !76, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!766 = distinct !DILocation(line: 250, column: 2, scope: !767, inlinedAt: !768)
!767 = distinct !DISubprogram(name: "__refcount_inc", scope: !731, file: !731, line: 248, type: !76, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!768 = distinct !DILocation(line: 267, column: 2, scope: !769, inlinedAt: !770)
!769 = distinct !DISubprogram(name: "refcount_inc", scope: !731, file: !731, line: 265, type: !76, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!770 = distinct !DILocation(line: 106, column: 2, scope: !758)
!771 = !DILocation(line: 223, column: 1, scope: !772, inlinedAt: !773)
!772 = distinct !DISubprogram(name: "arch_atomic_fetch_add_relaxed", scope: !329, file: !329, line: 223, type: !76, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!773 = distinct !DILocation(line: 117, column: 9, scope: !763, inlinedAt: !764)
!774 = !{i64 2148359743, i64 2148359775, i64 2148359804, i64 2148359838, i64 2148359869, i64 2148359892}
!775 = !DILocation(line: 198, column: 6, scope: !765, inlinedAt: !766)
!776 = !DILocation(line: 199, column: 26, scope: !765, inlinedAt: !766)
!777 = !DILocation(line: 199, column: 3, scope: !765, inlinedAt: !766)
!778 = !DILocation(line: 200, column: 11, scope: !765, inlinedAt: !766)
!779 = !DILocation(line: 201, column: 26, scope: !765, inlinedAt: !766)
!780 = !DILocation(line: 201, column: 3, scope: !765, inlinedAt: !766)
!781 = !DILocation(line: 107, column: 2, scope: !758)
!782 = distinct !DISubprogram(name: "tracing_sched_wakeup_trace", scope: !1, file: !1, line: 400, type: !76, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!783 = !DILocation(line: 404, scope: !782)
!784 = !DILocation(line: 408, column: 49, scope: !782)
!785 = !DILocation(line: 410, column: 10, scope: !782)
!786 = !DILocation(line: 412, column: 7, scope: !782)
!787 = !DILocation(line: 412, column: 6, scope: !782)
!788 = !DILocation(line: 414, column: 10, scope: !782)
!789 = !DILocation(line: 415, column: 28, scope: !782)
!790 = !DILocation(line: 415, column: 9, scope: !782)
!791 = !DILocation(line: 415, column: 20, scope: !782)
!792 = !DILocation(line: 416, column: 28, scope: !782)
!793 = !DILocation(line: 416, column: 22, scope: !782)
!794 = !DILocation(line: 416, column: 9, scope: !782)
!795 = !DILocation(line: 416, column: 20, scope: !782)
!796 = !DILocation(line: 1625, column: 27, scope: !797, inlinedAt: !798)
!797 = distinct !DISubprogram(name: "task_state_index", scope: !514, file: !514, line: 1623, type: !76, scopeLine: 1624, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!798 = distinct !DILocation(line: 417, column: 23, scope: !782)
!799 = !DILocation(line: 1626, column: 41, scope: !797, inlinedAt: !798)
!800 = !DILocation(line: 1628, column: 2, scope: !797, inlinedAt: !798)
!801 = !DILocation(line: 1630, column: 16, scope: !797, inlinedAt: !798)
!802 = !DILocation(line: 1630, column: 6, scope: !797, inlinedAt: !798)
!803 = !DILocation(line: 1631, column: 9, scope: !797, inlinedAt: !798)
!804 = !DILocation(line: 14, column: 9, scope: !805, inlinedAt: !807)
!805 = distinct !DISubprogram(name: "fls", scope: !806, file: !806, line: 12, type: !76, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!806 = !DIFile(filename: "../include/asm-generic/bitops/builtin-fls.h", directory: "/llk/linux-5.17/build_arm_allyes")
!807 = distinct !DILocation(line: 1633, column: 9, scope: !797, inlinedAt: !798)
!808 = !DILocation(line: 1626, column: 34, scope: !797, inlinedAt: !798)
!809 = !DILocation(line: 1626, column: 53, scope: !797, inlinedAt: !798)
!810 = !DILocation(line: 14, column: 43, scope: !805, inlinedAt: !807)
!811 = !DILocation(line: 14, column: 29, scope: !805, inlinedAt: !807)
!812 = !{i32 0, i32 33}
!813 = !DILocation(line: 417, column: 9, scope: !782)
!814 = !DILocation(line: 417, column: 21, scope: !782)
!815 = !DILocation(line: 418, column: 29, scope: !782)
!816 = !DILocation(line: 418, column: 9, scope: !782)
!817 = !DILocation(line: 418, column: 20, scope: !782)
!818 = !DILocation(line: 419, column: 29, scope: !782)
!819 = !DILocation(line: 419, column: 22, scope: !782)
!820 = !DILocation(line: 419, column: 9, scope: !782)
!821 = !DILocation(line: 419, column: 20, scope: !782)
!822 = !DILocation(line: 1625, column: 27, scope: !797, inlinedAt: !823)
!823 = distinct !DILocation(line: 420, column: 23, scope: !782)
!824 = !DILocation(line: 1626, column: 41, scope: !797, inlinedAt: !823)
!825 = !DILocation(line: 1628, column: 2, scope: !797, inlinedAt: !823)
!826 = !DILocation(line: 1630, column: 16, scope: !797, inlinedAt: !823)
!827 = !DILocation(line: 1630, column: 6, scope: !797, inlinedAt: !823)
!828 = !DILocation(line: 1631, column: 9, scope: !797, inlinedAt: !823)
!829 = !DILocation(line: 14, column: 9, scope: !805, inlinedAt: !830)
!830 = distinct !DILocation(line: 1633, column: 9, scope: !797, inlinedAt: !823)
!831 = !DILocation(line: 1626, column: 34, scope: !797, inlinedAt: !823)
!832 = !DILocation(line: 1626, column: 53, scope: !797, inlinedAt: !823)
!833 = !DILocation(line: 14, column: 43, scope: !805, inlinedAt: !830)
!834 = !DILocation(line: 14, column: 29, scope: !805, inlinedAt: !830)
!835 = !DILocation(line: 420, column: 9, scope: !782)
!836 = !DILocation(line: 420, column: 21, scope: !782)
!837 = !DILocation(line: 2137, column: 9, scope: !513, inlinedAt: !838)
!838 = distinct !DILocation(line: 421, column: 22, scope: !782)
!839 = !DILocation(line: 421, column: 9, scope: !782)
!840 = !DILocation(line: 421, column: 20, scope: !782)
!841 = !DILocation(line: 423, column: 7, scope: !782)
!842 = !DILocation(line: 423, column: 6, scope: !782)
!843 = !DILocation(line: 424, column: 30, scope: !782)
!844 = !DILocation(line: 1326, column: 2, scope: !845, inlinedAt: !847)
!845 = distinct !DISubprogram(name: "trace_buffer_unlock_commit", scope: !846, file: !846, line: 1321, type: !76, scopeLine: 1325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!846 = !DIFile(filename: "../kernel/trace/trace.h", directory: "/llk/linux-5.17/build_arm_allyes")
!847 = distinct !DILocation(line: 424, column: 3, scope: !782)
!848 = !DILocation(line: 424, column: 3, scope: !782)
!849 = !DILocation(line: 425, column: 1, scope: !782)
!850 = distinct !DISubprogram(name: "tracing_sched_switch_trace", scope: !1, file: !1, line: 372, type: !76, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!851 = !DILocation(line: 376, scope: !850)
!852 = !DILocation(line: 378, column: 49, scope: !850)
!853 = !DILocation(line: 382, column: 10, scope: !850)
!854 = !DILocation(line: 384, column: 7, scope: !850)
!855 = !DILocation(line: 384, column: 6, scope: !850)
!856 = !DILocation(line: 386, column: 10, scope: !850)
!857 = !DILocation(line: 387, column: 28, scope: !850)
!858 = !DILocation(line: 387, column: 9, scope: !850)
!859 = !DILocation(line: 387, column: 20, scope: !850)
!860 = !DILocation(line: 388, column: 28, scope: !850)
!861 = !DILocation(line: 388, column: 22, scope: !850)
!862 = !DILocation(line: 388, column: 9, scope: !850)
!863 = !DILocation(line: 388, column: 20, scope: !850)
!864 = !DILocation(line: 1625, column: 27, scope: !797, inlinedAt: !865)
!865 = distinct !DILocation(line: 389, column: 23, scope: !850)
!866 = !DILocation(line: 1626, column: 41, scope: !797, inlinedAt: !865)
!867 = !DILocation(line: 1628, column: 2, scope: !797, inlinedAt: !865)
!868 = !DILocation(line: 1630, column: 16, scope: !797, inlinedAt: !865)
!869 = !DILocation(line: 1630, column: 6, scope: !797, inlinedAt: !865)
!870 = !DILocation(line: 1631, column: 9, scope: !797, inlinedAt: !865)
!871 = !DILocation(line: 14, column: 9, scope: !805, inlinedAt: !872)
!872 = distinct !DILocation(line: 1633, column: 9, scope: !797, inlinedAt: !865)
!873 = !DILocation(line: 1626, column: 34, scope: !797, inlinedAt: !865)
!874 = !DILocation(line: 1626, column: 53, scope: !797, inlinedAt: !865)
!875 = !DILocation(line: 14, column: 43, scope: !805, inlinedAt: !872)
!876 = !DILocation(line: 14, column: 29, scope: !805, inlinedAt: !872)
!877 = !DILocation(line: 389, column: 9, scope: !850)
!878 = !DILocation(line: 389, column: 21, scope: !850)
!879 = !DILocation(line: 390, column: 28, scope: !850)
!880 = !DILocation(line: 390, column: 9, scope: !850)
!881 = !DILocation(line: 390, column: 20, scope: !850)
!882 = !DILocation(line: 391, column: 28, scope: !850)
!883 = !DILocation(line: 391, column: 22, scope: !850)
!884 = !DILocation(line: 391, column: 9, scope: !850)
!885 = !DILocation(line: 391, column: 20, scope: !850)
!886 = !DILocation(line: 1625, column: 27, scope: !797, inlinedAt: !887)
!887 = distinct !DILocation(line: 392, column: 23, scope: !850)
!888 = !DILocation(line: 1626, column: 41, scope: !797, inlinedAt: !887)
!889 = !DILocation(line: 1628, column: 2, scope: !797, inlinedAt: !887)
!890 = !DILocation(line: 1630, column: 16, scope: !797, inlinedAt: !887)
!891 = !DILocation(line: 1630, column: 6, scope: !797, inlinedAt: !887)
!892 = !DILocation(line: 1631, column: 9, scope: !797, inlinedAt: !887)
!893 = !DILocation(line: 14, column: 9, scope: !805, inlinedAt: !894)
!894 = distinct !DILocation(line: 1633, column: 9, scope: !797, inlinedAt: !887)
!895 = !DILocation(line: 1626, column: 34, scope: !797, inlinedAt: !887)
!896 = !DILocation(line: 1626, column: 53, scope: !797, inlinedAt: !887)
!897 = !DILocation(line: 14, column: 43, scope: !805, inlinedAt: !894)
!898 = !DILocation(line: 14, column: 29, scope: !805, inlinedAt: !894)
!899 = !DILocation(line: 392, column: 9, scope: !850)
!900 = !DILocation(line: 392, column: 21, scope: !850)
!901 = !DILocation(line: 2137, column: 9, scope: !513, inlinedAt: !902)
!902 = distinct !DILocation(line: 393, column: 20, scope: !850)
!903 = !DILocation(line: 393, column: 9, scope: !850)
!904 = !DILocation(line: 393, column: 18, scope: !850)
!905 = !DILocation(line: 395, column: 7, scope: !850)
!906 = !DILocation(line: 395, column: 6, scope: !850)
!907 = !DILocation(line: 396, column: 30, scope: !850)
!908 = !DILocation(line: 1326, column: 2, scope: !845, inlinedAt: !909)
!909 = distinct !DILocation(line: 396, column: 3, scope: !850)
!910 = !DILocation(line: 396, column: 3, scope: !850)
!911 = !DILocation(line: 397, column: 1, scope: !850)
!912 = distinct !DISubprogram(name: "report_latency", scope: !1, file: !1, line: 350, type: !76, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!913 = !DILocation(line: 351, scope: !912)
!914 = !DILocation(line: 352, column: 6, scope: !912)
!915 = !DILocation(line: 353, column: 15, scope: !912)
!916 = !DILocation(line: 353, column: 13, scope: !912)
!917 = !DILocation(line: 353, column: 7, scope: !912)
!918 = !DILocation(line: 354, column: 4, scope: !912)
!919 = !DILocation(line: 355, column: 2, scope: !912)
!920 = !DILocation(line: 356, column: 20, scope: !912)
!921 = !DILocation(line: 356, column: 16, scope: !912)
!922 = !DILocation(line: 356, column: 13, scope: !912)
!923 = !DILocation(line: 356, column: 7, scope: !912)
!924 = !DILocation(line: 357, column: 4, scope: !912)
!925 = !DILocation(line: 0, scope: !912)
!926 = !DILocation(line: 360, column: 1, scope: !912)
!927 = distinct !DISubprogram(name: "wakeup_rt_tracer_init", scope: !1, file: !1, line: 693, type: !76, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!928 = !DILocation(line: 694, scope: !927)
!929 = !DILocation(line: 695, column: 6, scope: !927)
!930 = !DILocation(line: 696, column: 3, scope: !927)
!931 = !DILocation(line: 698, column: 12, scope: !927)
!932 = !DILocation(line: 699, column: 12, scope: !927)
!933 = !DILocation(line: 700, column: 9, scope: !927)
!934 = !DILocation(line: 700, column: 2, scope: !927)
!935 = !DILocation(line: 0, scope: !927)
!936 = !DILocation(line: 701, column: 1, scope: !927)
!937 = distinct !DISubprogram(name: "wakeup_dl_tracer_init", scope: !1, file: !1, line: 703, type: !76, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!938 = !DILocation(line: 704, scope: !937)
!939 = !DILocation(line: 705, column: 6, scope: !937)
!940 = !DILocation(line: 706, column: 3, scope: !937)
!941 = !DILocation(line: 708, column: 12, scope: !937)
!942 = !DILocation(line: 709, column: 12, scope: !937)
!943 = !DILocation(line: 710, column: 9, scope: !937)
!944 = !DILocation(line: 710, column: 2, scope: !937)
!945 = !DILocation(line: 0, scope: !937)
!946 = !DILocation(line: 711, column: 1, scope: !937)
