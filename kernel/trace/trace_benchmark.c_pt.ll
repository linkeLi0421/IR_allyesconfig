; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_benchmark.c_pt.bc'
source_filename = "../kernel/trace/trace_benchmark.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.1, %struct.trace_event, ptr, ptr, %union.anon.4, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.1 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.4 = type { ptr }
%union.anon.99 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_benchmark_event = type { %struct.trace_entry, [128 x i8], [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%struct.llist_node = type { ptr }
%union.anon.34 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.36 }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_benchmark_event = internal constant [16 x i8] c"benchmark_event\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_benchmark_event = dso_local global %struct.static_call_key { ptr @__traceiter_benchmark_event }, align 4
@__tracepoint_benchmark_event = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_benchmark_event, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_benchmark_event, ptr null, ptr @__traceiter_benchmark_event, ptr @trace_benchmark_reg, ptr @trace_benchmark_unreg, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_benchmark_event = internal constant ptr @__tracepoint_benchmark_event, section "__tracepoints_ptrs", align 4
@str__benchmark__trace_system_name = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"benchmark\00", [22 x i8] zeroinitializer }, align 32
@trace_event_fields_benchmark_event = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.8, %union.anon.0 { %struct.anon { ptr @.str.9, i32 128, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_benchmark_event = internal global %struct.trace_event_class { ptr @str__benchmark__trace_system_name, ptr @trace_event_raw_event_benchmark_event, ptr @perf_trace_benchmark_event, ptr @trace_event_reg, ptr @trace_event_fields_benchmark_event, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_benchmark_event, i64 24), ptr getelementptr (i8, ptr @event_class_benchmark_event, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_benchmark_event = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_benchmark_event, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_benchmark_event = internal global { [15 x i8], [17 x i8] } { [15 x i8] c"\22%s\22, REC->str\00", [17 x i8] zeroinitializer }, align 32
@event_benchmark_event = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_benchmark_event, %union.anon.1 { ptr @__tracepoint_benchmark_event }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_benchmark_event }, ptr @print_fmt_benchmark_event, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_benchmark_event = internal global ptr @event_benchmark_event, section "_ftrace_events", align 4
@__bpf_trace_tp_map_benchmark_event = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_benchmark_event, ptr @__bpf_trace_benchmark_event, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@ok_to_run = internal global { i1, [31 x i8] } zeroinitializer, align 32
@trace_benchmark_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014trace benchmark cannot be started via kernel command line\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"trace_benchmark_reg\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"kernel/trace/trace_benchmark.c\00", [33 x i8] zeroinitializer }, align 32
@trace_benchmark_reg._entry_ptr = internal global ptr @trace_benchmark_reg._entry, section ".printk_index", align 4
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"event_benchmark\00", [16 x i8] zeroinitializer }, align 32
@bm_event_thread = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@trace_benchmark_reg._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014trace benchmark failed to create kernel thread\0A\00", [46 x i8] zeroinitializer }, align 32
@trace_benchmark_reg._entry_ptr.6 = internal global ptr @trace_benchmark_reg._entry.4, section ".printk_index", align 4
@bm_str = internal global { [128 x i8], [32 x i8] } { [128 x i8] c"START\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"START\00", [26 x i8] zeroinitializer }, align 32
@bm_total = internal global { i64, [24 x i8] } zeroinitializer, align 32
@bm_totalsq = internal global { i64, [24 x i8] } zeroinitializer, align 32
@bm_last = internal global { i64, [24 x i8] } zeroinitializer, align 32
@bm_max = internal global { i64, [24 x i8] } zeroinitializer, align 32
@bm_min = internal global { i64, [24 x i8] } zeroinitializer, align 32
@bm_cnt = internal global { i64, [24 x i8] } zeroinitializer, align 32
@bm_first = internal global { i64, [24 x i8] } zeroinitializer, align 32
@bm_std = internal global { i32, [28 x i8] } zeroinitializer, align 32
@bm_avg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@bm_stddev = internal global { i64, [24 x i8] } zeroinitializer, align 32
@__initcall__kmod_trace_benchmark__264_229_ok_to_run_trace_benchmarkearly = internal global ptr @ok_to_run_trace_benchmark, section ".initcallearly.init", align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"char[128]\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"str\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"first=%llu [COLD CACHED]\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"last=%llu first=%llu max=%llu min=%llu ** avg=%u std=%d std^2=%lld\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"last=%llu first=%llu max=%llu min=%llu avg=%u std=%d std^2=%lld\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"kernel/trace/trace_benchmark.h\00", [33 x i8] zeroinitializer }, align 32
@trace_benchmark_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__llvm_gcov_ctr = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.17 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.22 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.23 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.24 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.25 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.26 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.27 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.28 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.29 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.30 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.31 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.32 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.33 = internal global [95 x i64] zeroinitializer
@__llvm_gcov_ctr.34 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.35 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.36 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.37 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.38 = internal global [12 x i64] zeroinitializer
@__llvm_gcov_ctr.39 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.40 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.41 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.42 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.43 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.44 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.45 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.46 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.47 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.48 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.49 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.50 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.51 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.52 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.53 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.54 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.55 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.56 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.57 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.58 = internal global [2 x i64] zeroinitializer
@0 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_benchmark.gcda\00", [61 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [43 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 594628314, i32 -1865857084 }, %emit_function_args_ty { i32 1, i32 -1412703016, i32 -1865857084 }, %emit_function_args_ty { i32 2, i32 -742349293, i32 -1865857084 }, %emit_function_args_ty { i32 3, i32 1412967180, i32 -1865857084 }, %emit_function_args_ty { i32 4, i32 -1452562761, i32 -1865857084 }, %emit_function_args_ty { i32 5, i32 850248533, i32 -1865857084 }, %emit_function_args_ty { i32 6, i32 -170899350, i32 -1865857084 }, %emit_function_args_ty { i32 7, i32 -10115036, i32 -1865857084 }, %emit_function_args_ty { i32 8, i32 1781672997, i32 -1865857084 }, %emit_function_args_ty { i32 9, i32 -1552346119, i32 -1865857084 }, %emit_function_args_ty { i32 10, i32 858041679, i32 -1865857084 }, %emit_function_args_ty { i32 11, i32 1563171741, i32 -1865857084 }, %emit_function_args_ty { i32 12, i32 -1060294878, i32 -1865857084 }, %emit_function_args_ty { i32 13, i32 288547376, i32 -1865857084 }, %emit_function_args_ty { i32 14, i32 1710487500, i32 -1865857084 }, %emit_function_args_ty { i32 15, i32 -584910999, i32 -1865857084 }, %emit_function_args_ty { i32 16, i32 -31780534, i32 -1865857084 }, %emit_function_args_ty { i32 17, i32 1009520920, i32 -1865857084 }, %emit_function_args_ty { i32 18, i32 -1777657395, i32 -1865857084 }, %emit_function_args_ty { i32 19, i32 -1680174668, i32 -1865857084 }, %emit_function_args_ty { i32 20, i32 -743251458, i32 -1865857084 }, %emit_function_args_ty { i32 21, i32 -1326915047, i32 -1865857084 }, %emit_function_args_ty { i32 22, i32 1508355388, i32 -1865857084 }, %emit_function_args_ty { i32 23, i32 -272555249, i32 -1865857084 }, %emit_function_args_ty { i32 24, i32 -1016141526, i32 -1865857084 }, %emit_function_args_ty { i32 25, i32 1624494247, i32 -1865857084 }, %emit_function_args_ty { i32 26, i32 -1639498784, i32 -1865857084 }, %emit_function_args_ty { i32 27, i32 746673099, i32 -1865857084 }, %emit_function_args_ty { i32 28, i32 1122552177, i32 -1865857084 }, %emit_function_args_ty { i32 29, i32 -570621114, i32 -1865857084 }, %emit_function_args_ty { i32 30, i32 81157262, i32 -1865857084 }, %emit_function_args_ty { i32 31, i32 835031753, i32 -1865857084 }, %emit_function_args_ty { i32 32, i32 -1156383717, i32 -1865857084 }, %emit_function_args_ty { i32 33, i32 -1567486560, i32 -1865857084 }, %emit_function_args_ty { i32 34, i32 1333844298, i32 -1865857084 }, %emit_function_args_ty { i32 35, i32 -1501263062, i32 -1865857084 }, %emit_function_args_ty { i32 36, i32 -1057468278, i32 -1865857084 }, %emit_function_args_ty { i32 37, i32 -2043375099, i32 -1865857084 }, %emit_function_args_ty { i32 38, i32 491662117, i32 -1865857084 }, %emit_function_args_ty { i32 39, i32 -601403593, i32 -1865857084 }, %emit_function_args_ty { i32 40, i32 -1247584631, i32 -1865857084 }, %emit_function_args_ty { i32 41, i32 -1111025999, i32 -1865857084 }, %emit_function_args_ty { i32 42, i32 -963894156, i32 -1865857084 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [43 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.17 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.18 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.19 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.20 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.21 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.22 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.23 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.24 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.25 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.26 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.27 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.28 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.29 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.30 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.31 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.32 }, %emit_arcs_args_ty { i32 95, ptr @__llvm_gcov_ctr.33 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.34 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.35 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.36 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.37 }, %emit_arcs_args_ty { i32 12, ptr @__llvm_gcov_ctr.38 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.39 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.40 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.41 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.42 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.43 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.44 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.45 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.46 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.47 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.48 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.49 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.50 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.51 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.52 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.53 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.54 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.55 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.56 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.57 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.58 }]
@___asan_gen_.59 = private unnamed_addr constant [34 x i8] c"str__benchmark__trace_system_name\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 36, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [35 x i8] c"trace_event_fields_benchmark_event\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_benchmark_event\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [26 x i8] c"print_fmt_benchmark_event\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [22 x i8] c"event_benchmark_event\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [10 x i8] c"ok_to_run\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 181, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 185, i32 20 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"bm_event_thread\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 10, i32 28 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 188, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"bm_str\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 12, i32 13 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 208, i32 17 }
@___asan_gen_.105 = private unnamed_addr constant [9 x i8] c"bm_total\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 14, i32 12 }
@___asan_gen_.108 = private unnamed_addr constant [11 x i8] c"bm_totalsq\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 15, i32 12 }
@___asan_gen_.111 = private unnamed_addr constant [8 x i8] c"bm_last\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 16, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"bm_max\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 17, i32 12 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"bm_min\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 18, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"bm_cnt\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 20, i32 12 }
@___asan_gen_.123 = private unnamed_addr constant [9 x i8] c"bm_first\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 19, i32 12 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"bm_std\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 23, i32 21 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"bm_avg\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 22, i32 21 }
@___asan_gen_.132 = private unnamed_addr constant [10 x i8] c"bm_stddev\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 21, i32 12 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 69, i32 6 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 87, i32 7 }
@___asan_gen_.151 = private constant [34 x i8] c"../kernel/trace/trace_benchmark.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 139, i32 5 }
@___asan_gen_.157 = private unnamed_addr constant [36 x i8] c"../kernel/trace/./trace_benchmark.h\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 15, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 108, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [43 x ptr] [ptr @__bpf_trace_tp_map_benchmark_event, ptr @__event_benchmark_event, ptr @__initcall__kmod_trace_benchmark__264_229_ok_to_run_trace_benchmarkearly, ptr @__tracepoint_benchmark_event, ptr @__tracepoint_ptr_benchmark_event, ptr @event_benchmark_event, ptr @event_class_benchmark_event, ptr @trace_benchmark_reg._entry, ptr @trace_benchmark_reg._entry.4, ptr @trace_benchmark_reg._entry_ptr, ptr @trace_benchmark_reg._entry_ptr.6, ptr @str__benchmark__trace_system_name, ptr @trace_event_fields_benchmark_event, ptr @trace_event_type_funcs_benchmark_event, ptr @print_fmt_benchmark_event, ptr @ok_to_run, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @bm_event_thread, ptr @.str.5, ptr @bm_str, ptr @.str.7, ptr @bm_total, ptr @bm_totalsq, ptr @bm_last, ptr @bm_max, ptr @bm_min, ptr @bm_cnt, ptr @bm_first, ptr @bm_std, ptr @bm_avg, ptr @bm_stddev, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@1 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__benchmark__trace_system_name to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_benchmark_event to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_benchmark_event to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_benchmark_event to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_benchmark_event to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ok_to_run to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_benchmark_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_event_thread to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_benchmark_reg._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_str to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_total to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_totalsq to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_last to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_max to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_min to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_cnt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_first to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_std to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_avg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_stddev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_benchmark_event(ptr nocapture readnone %__data, ptr noundef %str) #0 align 64 !dbg !85 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !89
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 16, !dbg !90
  %0 = add i64 %gcov_ctr, 1, !dbg !90
  store i64 %0, ptr @__llvm_gcov_ctr, align 16, !dbg !90
  %1 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_benchmark_event, i32 0, i32 7), align 4, !dbg !90
  %tobool.not = icmp eq ptr %1, null, !dbg !90
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge, !dbg !90

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2, !dbg !90

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !90
  br label %if.end, !dbg !90

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %1, %entry.do.body2_crit_edge ], !dbg !90
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !90
  %2 = add i64 %gcov_ctr11, 1, !dbg !90
  store i64 %2, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !90
  %3 = ptrtoint ptr %it_func_ptr.0 to i32, !dbg !90
  call void @__asan_load4_noabort(i32 %3), !dbg !90
  %4 = load volatile ptr, ptr %it_func_ptr.0, align 4, !dbg !90
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1, !dbg !90
  %5 = ptrtoint ptr %data to i32, !dbg !90
  call void @__asan_load4_noabort(i32 %5), !dbg !90
  %6 = load ptr, ptr %data, align 4, !dbg !90
  tail call void %4(ptr noundef %6, ptr noundef %str) #13, !dbg !90
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1, !dbg !90
  %7 = ptrtoint ptr %incdec.ptr to i32, !dbg !90
  call void @__asan_load4_noabort(i32 %7), !dbg !90
  %8 = load ptr, ptr %incdec.ptr, align 4, !dbg !90
  %tobool9.not = icmp eq ptr %8, null, !dbg !90
  br i1 %tobool9.not, label %do.end10, label %do.body2.do.body2_crit_edge, !dbg !90, !llvm.loop !91

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12, !dbg !90
  br label %do.body2, !dbg !90

do.end10:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12, !dbg !90
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !90
  %9 = add i64 %gcov_ctr12, 1, !dbg !90
  store i64 %9, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !90
  br label %if.end, !dbg !90

if.end:                                           ; preds = %do.end10, %entry.if.end_crit_edge
  ret i32 0, !dbg !90
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trace_benchmark_reg() #0 align 64 !dbg !92 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !93
  %.b20 = load i1, ptr @ok_to_run, align 1, !dbg !94
  br i1 %.b20, label %if.end, label %do.end, !dbg !95

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !96
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.17, align 16, !dbg !96
  %0 = add i64 %gcov_ctr, 1, !dbg !96
  store i64 %0, ptr @__llvm_gcov_ctr.17, align 16, !dbg !96
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14, !dbg !96
  br label %return, !dbg !97

if.end:                                           ; preds = %entry
  %call1 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @benchmark_event_kthread, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.3) #13, !dbg !98
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.23, align 8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr), !dbg !99
  br i1 %cmp.i, label %if.then8, label %if.end14, !dbg !98

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12, !dbg !103
  store ptr %call1, ptr @bm_event_thread, align 4, !dbg !103
  %gcov_ctr.i2124 = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %2 = add i64 %gcov_ctr.i2124, 1
  store i64 %2, ptr @__llvm_gcov_ctr.23, align 8
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 2), align 16, !dbg !104
  %3 = add i64 %gcov_ctr16, 1, !dbg !104
  store i64 %3, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 2), align 16, !dbg !104
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14, !dbg !104
  %4 = load ptr, ptr @bm_event_thread, align 4, !dbg !105
  %gcov_ctr.i23 = load i64, ptr @__llvm_gcov_ctr.24, align 8
  %5 = add i64 %gcov_ctr.i23, 1
  store i64 %5, ptr @__llvm_gcov_ctr.24, align 8
  %6 = ptrtoint ptr %4 to i32, !dbg !106
  br label %return, !dbg !109

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12, !dbg !98
  %gcov_ctr15 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 1), align 8, !dbg !98
  %7 = add i64 %gcov_ctr15, 1, !dbg !98
  store i64 %7, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 1), align 8, !dbg !98
  %call4 = tail call i32 @wake_up_process(ptr noundef %call1) #13, !dbg !98
  store ptr %call1, ptr @bm_event_thread, align 4, !dbg !103
  %gcov_ctr.i21 = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %8 = add i64 %gcov_ctr.i21, 1
  store i64 %8, ptr @__llvm_gcov_ctr.23, align 8
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 3), align 8, !dbg !110
  %9 = add i64 %gcov_ctr17, 1, !dbg !110
  store i64 %9, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 3), align 8, !dbg !110
  br label %return, !dbg !110

return:                                           ; preds = %if.end14, %if.then8, %do.end
  %retval.0 = phi i32 [ %6, %if.then8 ], [ 0, %if.end14 ], [ -16, %do.end ], !dbg !111
  ret i32 %retval.0, !dbg !112
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trace_benchmark_unreg() #0 align 64 !dbg !113 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !114
  %0 = load ptr, ptr @bm_event_thread, align 4, !dbg !115
  %tobool.not = icmp eq ptr %0, null, !dbg !115
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !116

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !117
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.18, align 8, !dbg !117
  %1 = add i64 %gcov_ctr, 1, !dbg !117
  store i64 %1, ptr @__llvm_gcov_ctr.18, align 8, !dbg !117
  br label %return, !dbg !117

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !118
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !118
  %2 = add i64 %gcov_ctr2, 1, !dbg !118
  store i64 %2, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !118
  %call = tail call i32 @kthread_stop(ptr noundef nonnull %0) #13, !dbg !119
  store ptr null, ptr @bm_event_thread, align 4, !dbg !120
  %3 = call ptr @memcpy(ptr @bm_str, ptr @.str.7, i32 6), !dbg !121
  store i64 0, ptr @bm_total, align 8, !dbg !122
  store i64 0, ptr @bm_totalsq, align 8, !dbg !123
  store i64 0, ptr @bm_last, align 8, !dbg !124
  store i64 0, ptr @bm_max, align 8, !dbg !125
  store i64 0, ptr @bm_min, align 8, !dbg !126
  store i64 0, ptr @bm_cnt, align 8, !dbg !127
  store i64 0, ptr @bm_first, align 8, !dbg !128
  store i32 0, ptr @bm_std, align 4, !dbg !129
  store i32 0, ptr @bm_avg, align 4, !dbg !130
  store i64 0, ptr @bm_stddev, align 8, !dbg !131
  br label %return, !dbg !132

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !132
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_benchmark_event(ptr noundef %__data, ptr nocapture noundef readonly %str) #0 align 64 !dbg !133 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12, !dbg !134
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #13, !dbg !135
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7, !dbg !136
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24), !dbg !135
  %1 = ptrtoint ptr %flags.i to i32, !dbg !136
  call void @__asan_load4_noabort(i32 %1), !dbg !136
  %2 = load i32, ptr %flags.i, align 4, !dbg !136
  %and.i = and i32 %2, 704, !dbg !140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !140
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !140
  br i1 %tobool.not.i, label %entry.if.end.sink.split_crit_edge, label %if.end.i, !dbg !140, !prof !141

entry.if.end.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !140
  br label %if.end.sink.split, !dbg !140

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256, !dbg !142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i), !dbg !142
  %tobool5.not.i = icmp eq i32 %and4.i, 0, !dbg !142
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end.sink.split_crit_edge, !dbg !142, !prof !143

if.end.i.if.end.sink.split_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !142
  br label %if.end.sink.split, !dbg !142

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %gcov_ctr14.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 1), align 8, !dbg !144
  %3 = add i64 %gcov_ctr14.i, 1, !dbg !144
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 1), align 8, !dbg !144
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #13, !dbg !145
  br i1 %call.i, label %if.then, label %trace_trigger_soft_disabled.exit.if.end_crit_edge, !dbg !135

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12, !dbg !135
  br label %if.end, !dbg !135

if.then:                                          ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12, !dbg !146
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.19, align 16
  %4 = add i64 %gcov_ctr, 1
  store i64 %4, ptr @__llvm_gcov_ctr.19, align 16
  br label %cleanup, !dbg !135

if.end.sink.split:                                ; preds = %if.end.i.if.end.sink.split_crit_edge, %entry.if.end.sink.split_crit_edge
  %.sink = phi ptr [ @__llvm_gcov_ctr.26, %entry.if.end.sink.split_crit_edge ], [ getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 2), %if.end.i.if.end.sink.split_crit_edge ]
  %5 = ptrtoint ptr %.sink to i32, !dbg !147
  call void @__asan_load8_noabort(i32 %5), !dbg !147
  %gcov_ctr15.i = load i64, ptr %.sink, align 16, !dbg !147
  %6 = add i64 %gcov_ctr15.i, 1, !dbg !147
  store i64 %6, ptr %.sink, align 16, !dbg !147
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %trace_trigger_soft_disabled.exit.if.end_crit_edge
  %gcov_ctr.i17 = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %7 = add i64 %gcov_ctr.i17, 1
  store i64 %7, ptr @__llvm_gcov_ctr.27, align 8
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 136) #13, !dbg !135
  %tobool.not = icmp eq ptr %call3, null, !dbg !135
  br i1 %tobool.not, label %if.then4, label %if.end5, !dbg !135

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12, !dbg !146
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 1), align 8
  %8 = add i64 %gcov_ctr11, 1
  store i64 %8, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 1), align 8
  br label %cleanup, !dbg !135

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12, !dbg !135
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 2), align 16, !dbg !135
  %9 = add i64 %gcov_ctr12, 1, !dbg !135
  store i64 %9, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 2), align 16, !dbg !135
  %str6 = getelementptr inbounds %struct.trace_event_raw_benchmark_event, ptr %call3, i32 0, i32 1, !dbg !135
  %10 = call ptr @memcpy(ptr %str6, ptr %str, i32 128), !dbg !135
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #13, !dbg !135
  br label %cleanup, !dbg !135

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #13, !dbg !135
  ret void, !dbg !135
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_benchmark_event(ptr noundef %__data, ptr nocapture noundef readonly %str) #0 align 64 !dbg !148 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12, !dbg !149
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #13, !dbg !150
  %0 = ptrtoint ptr %__regs to i32, !dbg !150
  call void @__asan_store4_noabort(i32 %0), !dbg !150
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !dbg !150, !annotation !151
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #13, !dbg !150
  %1 = ptrtoint ptr %rctx to i32, !dbg !150
  call void @__asan_store4_noabort(i32 %1), !dbg !150
  store i32 -1, ptr %rctx, align 4, !dbg !150, !annotation !151
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.27, align 8
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10, !dbg !150
  %3 = ptrtoint ptr %perf_events to i32, !dbg !150
  call void @__asan_load4_noabort(i32 %3), !dbg !150
  %4 = load ptr, ptr %perf_events, align 4, !dbg !150
  %5 = ptrtoint ptr %4 to i32, !dbg !150
  %gcov_ctr.i43 = load i64, ptr @__llvm_gcov_ctr.29, align 8, !dbg !152
  %6 = add i64 %gcov_ctr.i43, 1, !dbg !152
  store i64 %6, ptr @__llvm_gcov_ctr.29, align 8, !dbg !152
  %7 = tail call i32 @llvm.read_register.i32(metadata !74) #13, !dbg !152
  %and.i = and i32 %7, -16384, !dbg !156
  %8 = inttoptr i32 %and.i to ptr, !dbg !157
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3, !dbg !150
  %9 = ptrtoint ptr %cpu to i32, !dbg !150
  call void @__asan_load4_noabort(i32 %9), !dbg !150
  %10 = load i32, ptr %cpu, align 4, !dbg !150
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10, !dbg !150
  %11 = ptrtoint ptr %arrayidx to i32, !dbg !150
  call void @__asan_load4_noabort(i32 %11), !dbg !150
  %12 = load i32, ptr %arrayidx, align 4, !dbg !150
  %add = add i32 %12, %5, !dbg !150
  %13 = inttoptr i32 %add to ptr, !dbg !150
  %gcov_ctr.i44 = load i64, ptr @__llvm_gcov_ctr.30, align 8
  %14 = add i64 %gcov_ctr.i44, 1
  store i64 %14, ptr @__llvm_gcov_ctr.30, align 8
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11, !dbg !158
  %15 = ptrtoint ptr %prog_array.i to i32, !dbg !158
  call void @__asan_load4_noabort(i32 %15), !dbg !158
  %16 = load volatile ptr, ptr %prog_array.i, align 4, !dbg !158
  %tobool.i.not = icmp eq ptr %16, null, !dbg !161
  br i1 %tobool.i.not, label %land.lhs.true, label %entry.if.end_crit_edge, !dbg !150

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !150
  br label %if.end, !dbg !150

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.20, align 16, !dbg !150
  %17 = add i64 %gcov_ctr, 1, !dbg !150
  store i64 %17, ptr @__llvm_gcov_ctr.20, align 16, !dbg !150
  %gcov_ctr27 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 1), align 8, !dbg !150
  %18 = add i64 %gcov_ctr27, 1, !dbg !150
  store i64 %18, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 1), align 8, !dbg !150
  %gcov_ctr28 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 2), align 16, !dbg !150
  %19 = add i64 %gcov_ctr28, 1, !dbg !150
  store i64 %19, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 2), align 16, !dbg !150
  %gcov_ctr.i45 = load i64, ptr @__llvm_gcov_ctr.31, align 8
  %20 = add i64 %gcov_ctr.i45, 1
  store i64 %20, ptr @__llvm_gcov_ctr.31, align 8
  %21 = ptrtoint ptr %13 to i32, !dbg !162
  call void @__asan_load4_noabort(i32 %21), !dbg !162
  %22 = load volatile ptr, ptr %13, align 4, !dbg !162
  %tobool.not.i.not = icmp eq ptr %22, null, !dbg !166
  br i1 %tobool.not.i.not, label %if.then, label %land.lhs.true.if.end_crit_edge, !dbg !150

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12, !dbg !150
  br label %if.end, !dbg !150

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12, !dbg !167
  %gcov_ctr29 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 3), align 8
  %23 = add i64 %gcov_ctr29, 1
  store i64 %23, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 3), align 8
  br label %cleanup, !dbg !150

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 140, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #13, !dbg !150
  %tobool14.not = icmp eq ptr %call13, null, !dbg !150
  br i1 %tobool14.not, label %if.then15, label %if.end16, !dbg !150

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12, !dbg !167
  %gcov_ctr30 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 4), align 16
  %24 = add i64 %gcov_ctr30, 1
  store i64 %24, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 4), align 16
  br label %cleanup, !dbg !150

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12, !dbg !150
  %gcov_ctr31 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 5), align 8, !dbg !150
  %25 = add i64 %gcov_ctr31, 1, !dbg !150
  store i64 %25, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 5), align 8, !dbg !150
  %26 = ptrtoint ptr %__regs to i32, !dbg !150
  call void @__asan_load4_noabort(i32 %26), !dbg !150
  %27 = load ptr, ptr %__regs, align 4, !dbg !150
  %gcov_ctr.i46 = load i64, ptr @__llvm_gcov_ctr.32, align 8
  %28 = add i64 %gcov_ctr.i46, 1
  store i64 %28, ptr @__llvm_gcov_ctr.32, align 8
  %29 = call ptr @llvm.returnaddress(i32 0) #13, !dbg !168
  %30 = ptrtoint ptr %29 to i32, !dbg !168
  %arrayidx.i = getelementptr [18 x i32], ptr %27, i32 0, i32 15, !dbg !168
  %31 = ptrtoint ptr %arrayidx.i to i32, !dbg !168
  call void @__asan_store4_noabort(i32 %31), !dbg !168
  store i32 %30, ptr %arrayidx.i, align 4, !dbg !168
  %32 = call ptr @llvm.frameaddress.p0(i32 0) #13, !dbg !168
  %33 = ptrtoint ptr %32 to i32, !dbg !168
  %arrayidx2.i = getelementptr [18 x i32], ptr %27, i32 0, i32 11, !dbg !168
  %34 = ptrtoint ptr %arrayidx2.i to i32, !dbg !168
  call void @__asan_store4_noabort(i32 %34), !dbg !168
  store i32 %33, ptr %arrayidx2.i, align 4, !dbg !168
  %35 = call i32 @llvm.read_register.i32(metadata !74) #13, !dbg !168
  %arrayidx4.i = getelementptr [18 x i32], ptr %27, i32 0, i32 13, !dbg !168
  %36 = ptrtoint ptr %arrayidx4.i to i32, !dbg !168
  call void @__asan_store4_noabort(i32 %36), !dbg !168
  store i32 %35, ptr %arrayidx4.i, align 4, !dbg !168
  %arrayidx6.i = getelementptr [18 x i32], ptr %27, i32 0, i32 16, !dbg !168
  %37 = ptrtoint ptr %arrayidx6.i to i32, !dbg !168
  call void @__asan_store4_noabort(i32 %37), !dbg !168
  store i32 19, ptr %arrayidx6.i, align 4, !dbg !168
  %str17 = getelementptr inbounds %struct.trace_event_raw_benchmark_event, ptr %call13, i32 0, i32 1, !dbg !150
  %38 = call ptr @memcpy(ptr %str17, ptr %str, i32 128), !dbg !150
  %39 = ptrtoint ptr %rctx to i32, !dbg !150
  call void @__asan_load4_noabort(i32 %39), !dbg !150
  %40 = load i32, ptr %rctx, align 4, !dbg !150
  %41 = ptrtoint ptr %__regs to i32, !dbg !150
  call void @__asan_load4_noabort(i32 %41), !dbg !150
  %42 = load ptr, ptr %__regs, align 4, !dbg !150
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 140, i32 noundef %40, ptr noundef %__data, i64 noundef 1, ptr noundef %42, ptr noundef %13, ptr noundef null) #13, !dbg !150
  br label %cleanup, !dbg !150

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #13, !dbg !150
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #13, !dbg !150
  ret void, !dbg !150
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_benchmark_event(ptr noundef %__data, ptr noundef %str) #0 align 64 !dbg !172 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !173
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.21, align 8
  %1 = ptrtoint ptr %str to i32, !dbg !174
  %conv = zext i32 %1 to i64, !dbg !174
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #13, !dbg !174
  ret void, !dbg !174
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @benchmark_event_kthread(ptr nocapture noundef readnone %arg) #0 align 64 !dbg !175 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !176
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.22, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.22, align 16
  tail call void @msleep(i32 noundef 100) #13, !dbg !177
  %call71 = tail call zeroext i1 @kthread_should_stop() #13, !dbg !178
  br i1 %call71, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge, !dbg !179

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body, !dbg !179

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !179
  br label %while.end, !dbg !179

while.body:                                       ; preds = %do.end62.while.body_crit_edge, %entry.while.body_crit_edge
  tail call fastcc void @trace_do_benchmark(), !dbg !180
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.29, align 8, !dbg !181
  %1 = add i64 %gcov_ctr.i, 1, !dbg !181
  store i64 %1, ptr @__llvm_gcov_ctr.29, align 8, !dbg !181
  %2 = tail call i32 @llvm.read_register.i32(metadata !74) #13, !dbg !181
  %and.i = and i32 %2, -16384, !dbg !183
  %3 = inttoptr i32 %and.i to ptr, !dbg !184
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2, !dbg !185
  %4 = ptrtoint ptr %task to i32, !dbg !185
  call void @__asan_load4_noabort(i32 %4), !dbg !185
  %5 = load ptr, ptr %task, align 8, !dbg !185
  %rcu_tasks_holdout = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 40, !dbg !185
  %6 = ptrtoint ptr %rcu_tasks_holdout to i32, !dbg !185
  call void @__asan_load1_noabort(i32 %6), !dbg !185
  %7 = load volatile i8, ptr %rcu_tasks_holdout, align 4, !dbg !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7), !dbg !185
  %tobool.not = icmp eq i8 %7, 0, !dbg !185
  br i1 %tobool.not, label %while.body.do.end17_crit_edge, label %do.body8, !dbg !185

while.body.do.end17_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12, !dbg !185
  br label %do.end17, !dbg !185

do.body8:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12, !dbg !185
  %8 = ptrtoint ptr %rcu_tasks_holdout to i32, !dbg !185
  call void @__asan_store1_noabort(i32 %8), !dbg !185
  store volatile i8 0, ptr %rcu_tasks_holdout, align 4, !dbg !185
  %gcov_ctr66 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 1), align 8, !dbg !185
  %9 = add i64 %gcov_ctr66, 1, !dbg !185
  store i64 %9, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 1), align 8, !dbg !185
  br label %do.end17, !dbg !185

do.end17:                                         ; preds = %do.body8, %while.body.do.end17_crit_edge
  %10 = ptrtoint ptr %task to i32, !dbg !185
  call void @__asan_load4_noabort(i32 %10), !dbg !185
  %11 = load ptr, ptr %task, align 8, !dbg !185
  %trc_reader_checked = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 47, !dbg !185
  %12 = ptrtoint ptr %trc_reader_checked to i32, !dbg !185
  call void @__asan_load1_noabort(i32 %12), !dbg !185
  %13 = load volatile i8, ptr %trc_reader_checked, align 64, !dbg !185, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13), !dbg !185
  %tobool21.not = icmp eq i8 %13, 0, !dbg !185
  br i1 %tobool21.not, label %do.body26, label %do.end17.do.end62_crit_edge, !dbg !185, !prof !143

do.end17.do.end62_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #12, !dbg !185
  br label %do.end62, !dbg !185

do.body26:                                        ; preds = %do.end17
  %gcov_ctr67 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 2), align 16, !dbg !185
  %14 = add i64 %gcov_ctr67, 1, !dbg !185
  store i64 %14, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 2), align 16, !dbg !185
  %15 = ptrtoint ptr %task to i32, !dbg !185
  call void @__asan_load4_noabort(i32 %15), !dbg !185
  %16 = load ptr, ptr %task, align 8, !dbg !185
  %trc_reader_nesting = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 44, !dbg !185
  %17 = ptrtoint ptr %trc_reader_nesting to i32, !dbg !185
  call void @__asan_load4_noabort(i32 %17), !dbg !185
  %18 = load volatile i32, ptr %trc_reader_nesting, align 4, !dbg !185
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18), !dbg !185
  %tobool31.not = icmp eq i32 %18, 0, !dbg !185
  br i1 %tobool31.not, label %do.end44, label %do.body26.do.end62_crit_edge, !dbg !185, !prof !141

do.body26.do.end62_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12, !dbg !185
  br label %do.end62, !dbg !185

do.end44:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12, !dbg !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !dbg !185, !srcloc !187
  %19 = ptrtoint ptr %task to i32, !dbg !185
  call void @__asan_load4_noabort(i32 %19), !dbg !185
  %20 = load ptr, ptr %task, align 8, !dbg !185
  %trc_reader_checked51 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 47, !dbg !185
  %21 = ptrtoint ptr %trc_reader_checked51 to i32, !dbg !185
  call void @__asan_store1_noabort(i32 %21), !dbg !185
  store volatile i8 1, ptr %trc_reader_checked51, align 64, !dbg !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !dbg !185, !srcloc !188
  %gcov_ctr68 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 3), align 8, !dbg !185
  %22 = add i64 %gcov_ctr68, 1, !dbg !185
  store i64 %22, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 3), align 8, !dbg !185
  br label %do.end62, !dbg !185

do.end62:                                         ; preds = %do.end44, %do.body26.do.end62_crit_edge, %do.end17.do.end62_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 168, i32 noundef 0) #13, !dbg !185
  %gcov_ctr.i70 = load i64, ptr @__llvm_gcov_ctr.34, align 8, !dbg !189
  %23 = add i64 %gcov_ctr.i70, 1, !dbg !189
  store i64 %23, ptr @__llvm_gcov_ctr.34, align 8, !dbg !189
  %call.i = tail call i32 @__cond_resched() #13, !dbg !189
  %gcov_ctr69 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 4), align 16, !dbg !179
  %24 = add i64 %gcov_ctr69, 1, !dbg !179
  store i64 %24, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 4), align 16, !dbg !179
  %call = tail call zeroext i1 @kthread_should_stop() #13, !dbg !178
  br i1 %call, label %do.end62.while.end_crit_edge, label %do.end62.while.body_crit_edge, !dbg !179, !llvm.loop !193

do.end62.while.body_crit_edge:                    ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #12, !dbg !179
  br label %while.body, !dbg !179

do.end62.while.end_crit_edge:                     ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #12, !dbg !179
  br label %while.end, !dbg !179

while.end:                                        ; preds = %do.end62.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0, !dbg !195
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ok_to_run_trace_benchmark() #4 section ".init.text" align 64 !dbg !196 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !197
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.25, align 8, !dbg !198
  %0 = add i64 %gcov_ctr, 1, !dbg !198
  store i64 %0, ptr @__llvm_gcov_ctr.25, align 8, !dbg !198
  store i1 true, ptr @ok_to_run, align 1, !dbg !198
  ret i32 0, !dbg !199
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_benchmark_event(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 !dbg !200 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !201
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16, !dbg !202
  %0 = ptrtoint ptr %ent to i32, !dbg !202
  call void @__asan_load4_noabort(i32 %0), !dbg !202
  %1 = load ptr, ptr %ent, align 8, !dbg !202
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #13, !dbg !202
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call), !dbg !202
  %cmp.not = icmp eq i32 %call, 1, !dbg !202
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !202
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.28, align 8, !dbg !202
  %2 = add i64 %gcov_ctr, 1, !dbg !202
  store i64 %2, ptr @__llvm_gcov_ctr.28, align 8, !dbg !202
  br label %cleanup, !dbg !202

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !202
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15, !dbg !202
  %gcov_ctr5 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 1), align 8, !dbg !202
  %3 = add i64 %gcov_ctr5, 1, !dbg !202
  store i64 %3, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 1), align 8, !dbg !202
  %str = getelementptr inbounds %struct.trace_event_raw_benchmark_event, ptr %1, i32 0, i32 1, !dbg !202
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.10, ptr noundef %str) #13, !dbg !202
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #13, !dbg !202
  br label %cleanup, !dbg !202

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end ], !dbg !202
  ret i32 %retval.0, !dbg !202
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_do_benchmark() unnamed_addr #0 align 64 !dbg !203 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !204
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !205
  %0 = add i64 %gcov_ctr.i, 1, !dbg !205
  store i64 %0, ptr @__llvm_gcov_ctr.35, align 8, !dbg !205
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %1 = add i64 %gcov_ctr.i.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.44, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_benchmark_event, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_do_benchmark, %lor.lhs.false)) #13
          to label %trace_benchmark_event_enabled.exit [label %lor.lhs.false], !dbg !208, !srcloc !215

trace_benchmark_event_enabled.exit:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !216
  %gcov_ctr1.i.i.i = load i64, ptr @__llvm_gcov_ctr.45, align 8, !dbg !216
  %2 = add i64 %gcov_ctr1.i.i.i, 1, !dbg !216
  store i64 %2, ptr @__llvm_gcov_ctr.45, align 8, !dbg !216
  br label %if.then, !dbg !217

lor.lhs.false:                                    ; preds = %entry
  %gcov_ctr1.i.i.i1741 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !216
  %3 = add i64 %gcov_ctr1.i.i.i1741, 1, !dbg !216
  store i64 %3, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !216
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.33, align 16, !dbg !218
  %4 = add i64 %gcov_ctr, 1, !dbg !218
  store i64 %4, ptr @__llvm_gcov_ctr.33, align 16, !dbg !218
  %call1 = tail call i32 @tracing_is_on() #13, !dbg !218
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1), !dbg !218
  %tobool.not = icmp eq i32 %call1, 0, !dbg !218
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %do.body, !dbg !219

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12, !dbg !219
  br label %if.then, !dbg !219

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %trace_benchmark_event_enabled.exit
  %gcov_ctr1139 = load i64, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 1), align 8
  %5 = add i64 %gcov_ctr1139, 1
  store i64 %5, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 1), align 8
  br label %cleanup, !dbg !220

do.body:                                          ; preds = %lor.lhs.false
  %gcov_ctr.i1640 = load i64, ptr @__llvm_gcov_ctr.36, align 8, !dbg !221
  %6 = add i64 %gcov_ctr.i1640, 1, !dbg !221
  store i64 %6, ptr @__llvm_gcov_ctr.36, align 8, !dbg !221
  %gcov_ctr.i.i1641 = load i64, ptr @__llvm_gcov_ctr.47, align 8
  %7 = add i64 %gcov_ctr.i.i1641, 1
  store i64 %7, ptr @__llvm_gcov_ctr.47, align 8
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !dbg !225, !srcloc !229
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.46, align 8
  %9 = add i64 %gcov_ctr.i2.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.46, align 8
  %and.i.i = and i32 %8, 128, !dbg !230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !233
  %tobool3.not = icmp eq i32 %and.i.i, 0, !dbg !233
  %gcov_ctr.i1642 = load i64, ptr @__llvm_gcov_ctr.37, align 8, !dbg !234
  %10 = add i64 %gcov_ctr.i1642, 1, !dbg !234
  store i64 %10, ptr @__llvm_gcov_ctr.37, align 8, !dbg !234
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #13, !dbg !234, !srcloc !237
  br i1 %tobool3.not, label %if.then5, label %do.body.if.end6_crit_edge, !dbg !233

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12, !dbg !233
  br label %if.end6, !dbg !233

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12, !dbg !233
  %gcov_ctr1140 = load i64, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 2), align 16, !dbg !233
  %11 = add i64 %gcov_ctr1140, 1, !dbg !233
  store i64 %11, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 2), align 16, !dbg !233
  tail call void @trace_hardirqs_off() #13, !dbg !233
  br label %if.end6, !dbg !233

if.end6:                                          ; preds = %if.then5, %do.body.if.end6_crit_edge
  %call7 = tail call i64 @trace_clock_local() #13, !dbg !238
  tail call fastcc void @trace_benchmark_event(), !dbg !239
  %call8 = tail call i64 @trace_clock_local() #13, !dbg !240
  tail call void @trace_hardirqs_on() #13, !dbg !241
  %gcov_ctr.i1643 = load i64, ptr @__llvm_gcov_ctr.39, align 8, !dbg !242
  %12 = add i64 %gcov_ctr.i1643, 1, !dbg !242
  store i64 %12, ptr @__llvm_gcov_ctr.39, align 8, !dbg !242
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !dbg !242, !srcloc !245
  %13 = load i64, ptr @bm_cnt, align 8, !dbg !246
  %inc = add i64 %13, 1, !dbg !246
  store i64 %inc, ptr @bm_cnt, align 8, !dbg !246
  %sub = sub i64 %call8, %call7, !dbg !247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13), !dbg !248
  %cmp = icmp eq i64 %13, 0, !dbg !248
  br i1 %cmp, label %if.then12, label %if.end14, !dbg !249

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12, !dbg !250
  %gcov_ctr1141 = load i64, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 3), align 8, !dbg !250
  %14 = add i64 %gcov_ctr1141, 1, !dbg !250
  store i64 %14, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 3), align 8, !dbg !250
  store i64 %sub, ptr @bm_first, align 8, !dbg !251
  %call13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull @bm_str, i32 noundef 128, ptr noundef nonnull @.str.11, i64 noundef %sub) #13, !dbg !252
  br label %cleanup, !dbg !253

if.end14:                                         ; preds = %if.end6
  store i64 %sub, ptr @bm_last, align 8, !dbg !254
  %15 = load i64, ptr @bm_max, align 8, !dbg !255
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %15), !dbg !256
  %cmp15 = icmp ugt i64 %sub, %15, !dbg !256
  br i1 %cmp15, label %if.then16, label %if.end14.if.end17_crit_edge, !dbg !257

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12, !dbg !257
  br label %if.end17, !dbg !257

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12, !dbg !258
  %gcov_ctr1142 = load i64, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 4), align 16, !dbg !258
  %16 = add i64 %gcov_ctr1142, 1, !dbg !258
  store i64 %16, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 4), align 16, !dbg !258
  store i64 %sub, ptr @bm_max, align 8, !dbg !259
  br label %if.end17, !dbg !260

if.end17:                                         ; preds = %if.then16, %if.end14.if.end17_crit_edge
  %17 = load i64, ptr @bm_min, align 8, !dbg !261
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17), !dbg !261
  %tobool18.not = icmp eq i64 %17, 0, !dbg !261
  br i1 %tobool18.not, label %if.end17.if.then21_crit_edge, label %lor.lhs.false19, !dbg !262

if.end17.if.then21_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12, !dbg !262
  br label %if.then21, !dbg !262

lor.lhs.false19:                                  ; preds = %if.end17
  %gcov_ctr1143 = load i64, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 5), align 8, !dbg !263
  %18 = add i64 %gcov_ctr1143, 1, !dbg !263
  store i64 %18, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 5), align 8, !dbg !263
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %17), !dbg !264
  %cmp20 = icmp ult i64 %sub, %17, !dbg !264
  br i1 %cmp20, label %lor.lhs.false19.if.then21_crit_edge, label %lor.lhs.false19.if.end22_crit_edge, !dbg !265

lor.lhs.false19.if.end22_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #12, !dbg !265
  br label %if.end22, !dbg !265

lor.lhs.false19.if.then21_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #12, !dbg !265
  br label %if.then21, !dbg !265

if.then21:                                        ; preds = %lor.lhs.false19.if.then21_crit_edge, %if.end17.if.then21_crit_edge
  %gcov_ctr1144 = load i64, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 6), align 16, !dbg !266
  %19 = add i64 %gcov_ctr1144, 1, !dbg !266
  store i64 %19, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 6), align 16, !dbg !266
  store i64 %sub, ptr @bm_min, align 8, !dbg !267
  br label %if.end22, !dbg !268

if.end22:                                         ; preds = %if.then21, %lor.lhs.false19.if.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %inc), !dbg !269
  %cmp23 = icmp ugt i64 %inc, 4294967295, !dbg !269
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !270

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12, !dbg !271
  %gcov_ctr1145 = load i64, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 7), align 8, !dbg !271
  %20 = add i64 %gcov_ctr1145, 1, !dbg !271
  store i64 %20, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 7), align 8, !dbg !271
  %21 = load i64, ptr @bm_first, align 8, !dbg !272
  %22 = load i64, ptr @bm_max, align 8, !dbg !273
  %23 = load i64, ptr @bm_min, align 8, !dbg !274
  %24 = load i32, ptr @bm_avg, align 4, !dbg !275
  %25 = load i32, ptr @bm_std, align 4, !dbg !276
  %26 = load i64, ptr @bm_stddev, align 8, !dbg !277
  %call25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull @bm_str, i32 noundef 128, ptr noundef nonnull @.str.12, i64 noundef %sub, i64 noundef %21, i64 noundef %22, i64 noundef %23, i32 noundef %24, i32 noundef %25, i64 noundef %26) #13, !dbg !278
  br label %cleanup, !dbg !279

if.end26:                                         ; preds = %if.end22
  %27 = load i64, ptr @bm_total, align 8, !dbg !280
  %add = add i64 %27, %sub, !dbg !280
  store i64 %add, ptr @bm_total, align 8, !dbg !280
  %mul = mul i64 %sub, %sub, !dbg !281
  %28 = load i64, ptr @bm_totalsq, align 8, !dbg !282
  %add27 = add i64 %28, %mul, !dbg !282
  store i64 %add27, ptr @bm_totalsq, align 8, !dbg !282
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %inc), !dbg !283
  %cmp28 = icmp ugt i64 %inc, 1, !dbg !283
  br i1 %cmp28, label %if.then29, label %if.end26.if.end446_crit_edge, !dbg !284

if.end26.if.end446_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12, !dbg !284
  br label %if.end446, !dbg !284

if.then29:                                        ; preds = %if.end26
  %mul30 = mul i64 %add27, %inc, !dbg !285
  %mul31 = mul i64 %add, %add, !dbg !286
  %sub32 = sub i64 %mul30, %mul31, !dbg !287
  %conv = trunc i64 %inc to i32, !dbg !288
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub32), !dbg !288
  %cmp206 = icmp ult i64 %sub32, 4294967296, !dbg !288
  br i1 %cmp206, label %if.then210, label %if.else216, !dbg !288, !prof !141

if.then210:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12, !dbg !288
  %conv211 = trunc i64 %sub32 to i32, !dbg !288
  %div214 = udiv i32 %conv211, %conv, !dbg !288
  %conv215 = zext i32 %div214 to i64, !dbg !288
  br label %if.end220, !dbg !288

if.else216:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12, !dbg !288
  %gcov_ctr1161 = load i64, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 23), align 8, !dbg !288
  %29 = add i64 %gcov_ctr1161, 1, !dbg !288
  store i64 %29, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 23), align 8, !dbg !288
  %gcov_ctr.i1650 = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %30 = add i64 %gcov_ctr.i1650, 1
  store i64 %30, ptr @__llvm_gcov_ctr.43, align 8
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv, i64 %sub32) #15, !dbg !289, !srcloc !293
  %asmresult1.i = extractvalue { i64, i64 } %31, 1, !dbg !289
  br label %if.end220

if.end220:                                        ; preds = %if.else216, %if.then210
  %stddev.0 = phi i64 [ %conv215, %if.then210 ], [ %asmresult1.i, %if.else216 ], !dbg !294
  %32 = load i64, ptr @bm_cnt, align 8, !dbg !295
  %conv223 = trunc i64 %32 to i32, !dbg !295
  %sub224 = add i32 %conv223, -1, !dbg !295
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %stddev.0), !dbg !295
  %cmp425 = icmp ult i64 %stddev.0, 4294967296, !dbg !295
  br i1 %cmp425, label %if.then433, label %if.else439, !dbg !295, !prof !141

if.then433:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #12, !dbg !295
  %gcov_ctr1177 = load i64, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 39), align 8, !dbg !295
  %33 = add i64 %gcov_ctr1177, 1, !dbg !295
  store i64 %33, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 39), align 8, !dbg !295
  %conv434 = trunc i64 %stddev.0 to i32, !dbg !295
  %div437 = udiv i32 %conv434, %sub224, !dbg !295
  %conv438 = zext i32 %div437 to i64, !dbg !295
  br label %if.end446, !dbg !295

if.else439:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #12, !dbg !295
  %gcov_ctr1178 = load i64, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 40), align 16, !dbg !295
  %34 = add i64 %gcov_ctr1178, 1, !dbg !295
  store i64 %34, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 40), align 16, !dbg !295
  %gcov_ctr.i1663 = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %35 = add i64 %gcov_ctr.i1663, 1
  store i64 %35, ptr @__llvm_gcov_ctr.43, align 8
  %36 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub224, i64 %stddev.0) #15, !dbg !296, !srcloc !293
  %asmresult1.i1664 = extractvalue { i64, i64 } %36, 1, !dbg !296
  br label %if.end446

if.end446:                                        ; preds = %if.else439, %if.then433, %if.end26.if.end446_crit_edge
  %stddev.1 = phi i64 [ %conv438, %if.then433 ], [ %asmresult1.i1664, %if.else439 ], [ 0, %if.end26.if.end446_crit_edge ], !dbg !294
  %37 = load i64, ptr @bm_total, align 8, !dbg !298
  %38 = load i64, ptr @bm_cnt, align 8, !dbg !299
  %conv448 = trunc i64 %38 to i32, !dbg !299
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %37), !dbg !299
  %cmp649 = icmp ult i64 %37, 4294967296, !dbg !299
  br i1 %cmp649, label %if.then657, label %if.else663, !dbg !299, !prof !141

if.then657:                                       ; preds = %if.end446
  call void @__sanitizer_cov_trace_pc() #12, !dbg !299
  %gcov_ctr1194 = load i64, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 56), align 16, !dbg !299
  %39 = add i64 %gcov_ctr1194, 1, !dbg !299
  store i64 %39, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 56), align 16, !dbg !299
  %conv658 = trunc i64 %37 to i32, !dbg !299
  %div661 = udiv i32 %conv658, %conv448, !dbg !299
  %conv662 = zext i32 %div661 to i64, !dbg !299
  br label %if.end667, !dbg !299

if.else663:                                       ; preds = %if.end446
  call void @__sanitizer_cov_trace_pc() #12, !dbg !299
  %gcov_ctr1195 = load i64, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 57), align 8, !dbg !299
  %40 = add i64 %gcov_ctr1195, 1, !dbg !299
  store i64 %40, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 57), align 8, !dbg !299
  %gcov_ctr.i1677 = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %41 = add i64 %gcov_ctr.i1677, 1
  store i64 %41, ptr @__llvm_gcov_ctr.43, align 8
  %42 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv448, i64 %37) #15, !dbg !300, !srcloc !293
  %asmresult1.i1678 = extractvalue { i64, i64 } %42, 1, !dbg !300
  br label %if.end667

if.end667:                                        ; preds = %if.else663, %if.then657
  %delta.0 = phi i64 [ %conv662, %if.then657 ], [ %asmresult1.i1678, %if.else663 ], !dbg !294
  %conv669 = trunc i64 %delta.0 to i32, !dbg !302
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %stddev.1), !dbg !303
  %cmp670.not = icmp eq i64 %stddev.1, 0, !dbg !303
  br i1 %cmp670.not, label %if.end667.if.end1130_crit_edge, label %if.then672, !dbg !304

if.end667.if.end1130_crit_edge:                   ; preds = %if.end667
  call void @__sanitizer_cov_trace_pc() #12, !dbg !304
  br label %if.end1130, !dbg !304

if.then672:                                       ; preds = %if.end667
  %conv673 = and i64 %delta.0, 4294967295, !dbg !305
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %stddev.1)
  %cmp880 = icmp ult i64 %stddev.1, 4294967296
  %conv889 = trunc i64 %stddev.1 to i32
  br label %do.body674, !dbg !306

do.body674:                                       ; preds = %land.rhs.do.body674_crit_edge, %if.then672
  %seed.0 = phi i64 [ %conv673, %if.then672 ], [ %shr926, %land.rhs.do.body674_crit_edge ], !dbg !294
  %i.0 = phi i32 [ 0, %if.then672 ], [ %inc1123, %land.rhs.do.body674_crit_edge ], !dbg !294
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %seed.0), !dbg !307
  %tobool675.not = icmp eq i64 %seed.0, 0, !dbg !307
  br i1 %tobool675.not, label %if.then676, label %if.end677, !dbg !308

if.then676:                                       ; preds = %do.body674
  call void @__sanitizer_cov_trace_pc() #12, !dbg !309
  %gcov_ctr1196 = load i64, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 58), align 16, !dbg !309
  %43 = add i64 %gcov_ctr1196, 1, !dbg !309
  store i64 %43, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 58), align 16, !dbg !309
  br label %do.end1128, !dbg !309

if.end677:                                        ; preds = %do.body674
  %conv679 = trunc i64 %seed.0 to i32, !dbg !310
  br i1 %cmp880, label %if.then888, label %if.else894, !dbg !310, !prof !141

if.then888:                                       ; preds = %if.end677
  call void @__sanitizer_cov_trace_pc() #12, !dbg !310
  %div892 = udiv i32 %conv889, %conv679, !dbg !310
  %conv893 = zext i32 %div892 to i64, !dbg !310
  br label %if.end1120, !dbg !310

if.else894:                                       ; preds = %if.end677
  call void @__sanitizer_cov_trace_pc() #12, !dbg !310
  %gcov_ctr1212 = load i64, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 74), align 16, !dbg !310
  %44 = add i64 %gcov_ctr1212, 1, !dbg !310
  store i64 %44, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 74), align 16, !dbg !310
  %gcov_ctr.i1692 = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %45 = add i64 %gcov_ctr.i1692, 1
  store i64 %45, ptr @__llvm_gcov_ctr.43, align 8
  %46 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv679, i64 %stddev.1) #15, !dbg !311, !srcloc !293
  %asmresult1.i1693 = extractvalue { i64, i64 } %46, 1, !dbg !311
  br label %if.end1120

if.end1120:                                       ; preds = %if.else894, %if.then888
  %seed.1 = phi i64 [ %conv893, %if.then888 ], [ %asmresult1.i1693, %if.else894 ], !dbg !294
  %add900 = add i64 %seed.1, %seed.0, !dbg !313
  %gcov_ctr1213 = load i64, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 75), align 8, !dbg !314
  %47 = add i64 %gcov_ctr1213, 1, !dbg !314
  store i64 %47, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 75), align 8, !dbg !314
  %gcov_ctr.i1694 = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %48 = add i64 %gcov_ctr.i1694, 1
  store i64 %48, ptr @__llvm_gcov_ctr.40, align 8
  %gcov_ctr2.i1695 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !315
  %49 = add i64 %gcov_ctr2.i1695, 1, !dbg !315
  store i64 %49, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !315
  %gcov_ctr1215 = load i64, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 77), align 8, !dbg !314
  %50 = add i64 %gcov_ctr1215, 1, !dbg !314
  store i64 %50, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 77), align 8, !dbg !314
  %shr926 = lshr i64 %add900, 1, !dbg !314
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.0), !dbg !319
  %exitcond.not = icmp eq i32 %i.0, 10, !dbg !319
  br i1 %exitcond.not, label %do.end1128.loopexit.split.loop.exit1777, label %land.rhs, !dbg !320

land.rhs:                                         ; preds = %if.end1120
  %inc1123 = add nuw nsw i32 %i.0, 1, !dbg !321
  %gcov_ctr1230 = load i64, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 92), align 16, !dbg !322
  %51 = add i64 %gcov_ctr1230, 1, !dbg !322
  store i64 %51, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 92), align 16, !dbg !322
  %cmp1126.not = icmp eq i64 %seed.0, %shr926, !dbg !323
  br i1 %cmp1126.not, label %do.end1128.loopexit, label %land.rhs.do.body674_crit_edge, !dbg !324, !llvm.loop !325

land.rhs.do.body674_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12, !dbg !324
  br label %do.body674, !dbg !324

do.end1128.loopexit.split.loop.exit1777:          ; preds = %if.end1120
  call void @__sanitizer_cov_trace_pc() #12, !dbg !320
  %extract.t1776.le = trunc i64 %shr926 to i32, !dbg !320
  br label %do.end1128, !dbg !327

do.end1128.loopexit:                              ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12, !dbg !310
  %conv679.le = trunc i64 %seed.0 to i32, !dbg !310
  br label %do.end1128, !dbg !327

do.end1128:                                       ; preds = %do.end1128.loopexit, %do.end1128.loopexit.split.loop.exit1777, %if.then676
  %seed.2.off0 = phi i32 [ %conv889, %if.then676 ], [ %extract.t1776.le, %do.end1128.loopexit.split.loop.exit1777 ], [ %conv679.le, %do.end1128.loopexit ]
  %gcov_ctr1231 = load i64, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 93), align 8, !dbg !327
  %52 = add i64 %gcov_ctr1231, 1, !dbg !327
  store i64 %52, ptr getelementptr inbounds ([95 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 93), align 8, !dbg !327
  br label %if.end1130, !dbg !328

if.end1130:                                       ; preds = %do.end1128, %if.end667.if.end1130_crit_edge
  %std.0 = phi i32 [ %seed.2.off0, %do.end1128 ], [ 0, %if.end667.if.end1130_crit_edge ], !dbg !294
  %53 = load i64, ptr @bm_last, align 8, !dbg !329
  %54 = load i64, ptr @bm_first, align 8, !dbg !330
  %55 = load i64, ptr @bm_max, align 8, !dbg !331
  %56 = load i64, ptr @bm_min, align 8, !dbg !332
  %call1131 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull @bm_str, i32 noundef 128, ptr noundef nonnull @.str.13, i64 noundef %53, i64 noundef %54, i64 noundef %55, i64 noundef %56, i32 noundef %conv669, i32 noundef %std.0, i64 noundef %stddev.1) #13, !dbg !333
  store i32 %std.0, ptr @bm_std, align 4, !dbg !334
  store i32 %conv669, ptr @bm_avg, align 4, !dbg !335
  store i64 %stddev.1, ptr @bm_stddev, align 8, !dbg !336
  br label %cleanup, !dbg !337

cleanup:                                          ; preds = %if.end1130, %if.then24, %if.then12, %if.then
  ret void, !dbg !337
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_is_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @trace_clock_local() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_benchmark_event() unnamed_addr #7 align 64 !dbg !338 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !339
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.38, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.38, align 16
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.44, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_benchmark_event, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_benchmark_event, %do.body)) #13
          to label %if.end48 [label %do.body], !dbg !340, !srcloc !215

do.body:                                          ; preds = %entry
  %gcov_ctr1.i.i45 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !343
  %2 = add i64 %gcov_ctr1.i.i45, 1, !dbg !343
  store i64 %2, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !343
  %gcov_ctr.i8 = load i64, ptr @__llvm_gcov_ctr.29, align 8, !dbg !344
  %3 = add i64 %gcov_ctr.i8, 1, !dbg !344
  store i64 %3, ptr @__llvm_gcov_ctr.29, align 8, !dbg !344
  %4 = tail call i32 @llvm.read_register.i32(metadata !74) #13, !dbg !344
  %and.i = and i32 %4, -16384, !dbg !346
  %5 = inttoptr i32 %and.i to ptr, !dbg !347
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3, !dbg !348
  %6 = ptrtoint ptr %cpu to i32, !dbg !348
  call void @__asan_load4_noabort(i32 %6), !dbg !348
  %7 = load i32, ptr %cpu, align 4, !dbg !348
  %gcov_ctr.i9 = load i64, ptr @__llvm_gcov_ctr.48, align 8
  %8 = add i64 %gcov_ctr.i9, 1
  store i64 %8, ptr @__llvm_gcov_ctr.48, align 8
  %gcov_ctr.i.i10 = load i64, ptr @__llvm_gcov_ctr.53, align 8
  %9 = add i64 %gcov_ctr.i.i10, 1
  store i64 %9, ptr @__llvm_gcov_ctr.53, align 8
  %gcov_ctr.i1.i.i = load i64, ptr @__llvm_gcov_ctr.55, align 8
  %10 = add i64 %gcov_ctr.i1.i.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.55, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !349
  %11 = load i32, ptr @nr_cpu_ids, align 4, !dbg !349
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.56, align 16
  %12 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.56, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7), !dbg !357
  %cmp.not.i.i.i.i = icmp ugt i32 %11, %7, !dbg !357
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i, !dbg !357

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12, !dbg !357
  br label %cpu_online.exit, !dbg !357

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %gcov_ctr35.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.56, i32 0, i32 1), align 8, !dbg !357
  %13 = add i64 %gcov_ctr35.i.i.i.i, 1, !dbg !357
  store i64 %13, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.56, i32 0, i32 1), align 8, !dbg !357
  %.b40.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !357
  br i1 %.b40.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !dbg !357, !prof !141

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !357
  br label %cpu_online.exit, !dbg !357

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !357
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !357
  %gcov_ctr36.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.56, i32 0, i32 2), align 16, !dbg !357
  %14 = add i64 %gcov_ctr36.i.i.i.i, 1, !dbg !357
  store i64 %14, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.56, i32 0, i32 2), align 16, !dbg !357
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #13, !dbg !357
  %gcov_ctr37.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.56, i32 0, i32 3), align 8, !dbg !357
  %15 = add i64 %gcov_ctr37.i.i.i.i, 1, !dbg !357
  store i64 %15, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.56, i32 0, i32 3), align 8, !dbg !357
  br label %cpu_online.exit, !dbg !357

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %gcov_ctr.i.i.i11 = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %16 = add i64 %gcov_ctr.i.i.i11, 1
  store i64 %16, ptr @__llvm_gcov_ctr.54, align 8
  %div1.i.i.i = lshr i32 %7, 5, !dbg !360
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i, !dbg !364
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32, !dbg !364
  call void @__asan_load4_noabort(i32 %17), !dbg !364
  %18 = load volatile i32, ptr %arrayidx.i.i.i, align 4, !dbg !364
  %and.i.i.i12 = and i32 %7, 31, !dbg !365
  %19 = shl nuw i32 1, %and.i.i.i12, !dbg !366
  %20 = and i32 %18, %19, !dbg !366
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20), !dbg !366
  %tobool.i.not = icmp eq i32 %20, 0, !dbg !366
  br i1 %tobool.i.not, label %cleanup.thread, label %if.end31, !dbg !348

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12, !dbg !367
  %gcov_ctr70 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 1), align 8
  %21 = add i64 %gcov_ctr70, 1
  store i64 %21, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 1), align 8
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %gcov_ctr.i2 = load i64, ptr @__llvm_gcov_ctr.49, align 8
  %22 = add i64 %gcov_ctr.i2, 1
  store i64 %22, ptr @__llvm_gcov_ctr.49, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.57, align 8, !dbg !368
  %23 = add i64 %gcov_ctr.i.i, 1, !dbg !368
  store i64 %23, ptr @__llvm_gcov_ctr.57, align 8, !dbg !368
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.29, align 8, !dbg !374
  %24 = add i64 %gcov_ctr.i.i.i, 1, !dbg !374
  store i64 %24, ptr @__llvm_gcov_ctr.29, align 8, !dbg !374
  %25 = tail call i32 @llvm.read_register.i32(metadata !74) #13, !dbg !374
  %and.i.i.i = and i32 %25, -16384, !dbg !376
  %26 = inttoptr i32 %and.i.i.i to ptr, !dbg !377
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1, !dbg !378
  %27 = ptrtoint ptr %preempt_count.i.i to i32, !dbg !379
  call void @__asan_load4_noabort(i32 %27), !dbg !379
  %28 = load volatile i32, ptr %preempt_count.i.i, align 4, !dbg !379
  %add.i = add i32 %28, 1, !dbg !379
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4, !dbg !379
  tail call void asm sideeffect "", "~{memory}"() #13, !dbg !348, !srcloc !380
  %gcov_ctr.i13 = load i64, ptr @__llvm_gcov_ctr, align 16, !dbg !381
  %29 = add i64 %gcov_ctr.i13, 1, !dbg !381
  store i64 %29, ptr @__llvm_gcov_ctr, align 16, !dbg !381
  %30 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_benchmark_event, i32 0, i32 7), align 4, !dbg !381
  %tobool.not.i = icmp eq ptr %30, null, !dbg !381
  br i1 %tobool.not.i, label %if.end31.do.end47_crit_edge, label %if.end31.do.body2.i_crit_edge, !dbg !381

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i, !dbg !381

if.end31.do.end47_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12, !dbg !381
  br label %do.end47, !dbg !381

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %30, %if.end31.do.body2.i_crit_edge ], !dbg !381
  %gcov_ctr11.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !381
  %31 = add i64 %gcov_ctr11.i, 1, !dbg !381
  store i64 %31, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !381
  %32 = ptrtoint ptr %it_func_ptr.0.i to i32, !dbg !381
  call void @__asan_load4_noabort(i32 %32), !dbg !381
  %33 = load volatile ptr, ptr %it_func_ptr.0.i, align 4, !dbg !381
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1, !dbg !381
  %34 = ptrtoint ptr %data.i to i32, !dbg !381
  call void @__asan_load4_noabort(i32 %34), !dbg !381
  %35 = load ptr, ptr %data.i, align 4, !dbg !381
  tail call void %33(ptr noundef %35, ptr noundef nonnull @bm_str) #13, !dbg !381
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1, !dbg !381
  %36 = ptrtoint ptr %incdec.ptr.i to i32, !dbg !381
  call void @__asan_load4_noabort(i32 %36), !dbg !381
  %37 = load ptr, ptr %incdec.ptr.i, align 4, !dbg !381
  %tobool9.not.i = icmp eq ptr %37, null, !dbg !381
  br i1 %tobool9.not.i, label %do.end10.i, label %do.body2.i.do.body2.i_crit_edge, !dbg !381, !llvm.loop !383

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !381
  br label %do.body2.i, !dbg !381

do.end10.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !381
  %gcov_ctr12.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !381
  %38 = add i64 %gcov_ctr12.i, 1, !dbg !381
  store i64 %38, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !381
  br label %do.end47, !dbg !381

do.end47:                                         ; preds = %do.end10.i, %if.end31.do.end47_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !dbg !348, !srcloc !384
  %gcov_ctr.i3 = load i64, ptr @__llvm_gcov_ctr.50, align 8
  %39 = add i64 %gcov_ctr.i3, 1
  store i64 %39, ptr @__llvm_gcov_ctr.50, align 8
  %gcov_ctr.i.i4 = load i64, ptr @__llvm_gcov_ctr.57, align 8, !dbg !385
  %40 = add i64 %gcov_ctr.i.i4, 1, !dbg !385
  store i64 %40, ptr @__llvm_gcov_ctr.57, align 8, !dbg !385
  %gcov_ctr.i.i.i5 = load i64, ptr @__llvm_gcov_ctr.29, align 8, !dbg !389
  %41 = add i64 %gcov_ctr.i.i.i5, 1, !dbg !389
  store i64 %41, ptr @__llvm_gcov_ctr.29, align 8, !dbg !389
  %42 = tail call i32 @llvm.read_register.i32(metadata !74) #13, !dbg !389
  %and.i.i.i6 = and i32 %42, -16384, !dbg !391
  %43 = inttoptr i32 %and.i.i.i6 to ptr, !dbg !392
  %preempt_count.i.i7 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1, !dbg !393
  %44 = ptrtoint ptr %preempt_count.i.i7 to i32, !dbg !394
  call void @__asan_load4_noabort(i32 %44), !dbg !394
  %45 = load volatile i32, ptr %preempt_count.i.i7, align 4, !dbg !394
  %sub.i = add i32 %45, -1, !dbg !394
  store volatile i32 %sub.i, ptr %preempt_count.i.i7, align 4, !dbg !394
  %gcov_ctr74 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 5), align 8, !dbg !348
  %46 = add i64 %gcov_ctr74, 1, !dbg !348
  store i64 %46, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 5), align 8, !dbg !348
  br label %if.end48, !dbg !348

if.end48:                                         ; preds = %do.end47, %entry
  %__llvm_gcov_ctr.45.sink46 = phi ptr [ getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 7), %do.end47 ], [ @__llvm_gcov_ctr.45, %entry ]
  %47 = ptrtoint ptr %__llvm_gcov_ctr.45.sink46 to i32, !dbg !367
  call void @__asan_load8_noabort(i32 %47), !dbg !367
  %gcov_ctr1.i.i = load i64, ptr %__llvm_gcov_ctr.45.sink46, align 8, !dbg !367
  %48 = add i64 %gcov_ctr1.i.i, 1, !dbg !367
  store i64 %48, ptr %__llvm_gcov_ctr.45.sink46, align 8, !dbg !367
  %gcov_ctr.i14 = load i64, ptr @__llvm_gcov_ctr.29, align 8, !dbg !395
  %49 = add i64 %gcov_ctr.i14, 1, !dbg !395
  store i64 %49, ptr @__llvm_gcov_ctr.29, align 8, !dbg !395
  %50 = tail call i32 @llvm.read_register.i32(metadata !74) #13, !dbg !395
  %and.i15 = and i32 %50, -16384, !dbg !397
  %51 = inttoptr i32 %and.i15 to ptr, !dbg !398
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3, !dbg !348
  %52 = ptrtoint ptr %cpu50 to i32, !dbg !348
  call void @__asan_load4_noabort(i32 %52), !dbg !348
  %53 = load i32, ptr %cpu50, align 4, !dbg !348
  %gcov_ctr.i16 = load i64, ptr @__llvm_gcov_ctr.48, align 8
  %54 = add i64 %gcov_ctr.i16, 1
  store i64 %54, ptr @__llvm_gcov_ctr.48, align 8
  %gcov_ctr.i.i17 = load i64, ptr @__llvm_gcov_ctr.53, align 8
  %55 = add i64 %gcov_ctr.i.i17, 1
  store i64 %55, ptr @__llvm_gcov_ctr.53, align 8
  %gcov_ctr.i1.i.i18 = load i64, ptr @__llvm_gcov_ctr.55, align 8
  %56 = add i64 %gcov_ctr.i1.i.i18, 1
  store i64 %56, ptr @__llvm_gcov_ctr.55, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !399
  %57 = load i32, ptr @nr_cpu_ids, align 4, !dbg !399
  %gcov_ctr.i.i.i.i19 = load i64, ptr @__llvm_gcov_ctr.56, align 16
  %58 = add i64 %gcov_ctr.i.i.i.i19, 1
  store i64 %58, ptr @__llvm_gcov_ctr.56, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %53), !dbg !403
  %cmp.not.i.i.i.i20 = icmp ugt i32 %57, %53, !dbg !403
  br i1 %cmp.not.i.i.i.i20, label %if.end48.cpu_online.exit32_crit_edge, label %land.rhs.i.i.i.i23, !dbg !403

if.end48.cpu_online.exit32_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12, !dbg !403
  br label %cpu_online.exit32, !dbg !403

land.rhs.i.i.i.i23:                               ; preds = %if.end48
  %gcov_ctr35.i.i.i.i21 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.56, i32 0, i32 1), align 8, !dbg !403
  %59 = add i64 %gcov_ctr35.i.i.i.i21, 1, !dbg !403
  store i64 %59, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.56, i32 0, i32 1), align 8, !dbg !403
  %.b40.i.i.i.i22 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !403
  br i1 %.b40.i.i.i.i22, label %land.rhs.i.i.i.i23.cpu_online.exit32_crit_edge, label %if.then.i.i.i.i26, !dbg !403, !prof !141

land.rhs.i.i.i.i23.cpu_online.exit32_crit_edge:   ; preds = %land.rhs.i.i.i.i23
  call void @__sanitizer_cov_trace_pc() #12, !dbg !403
  br label %cpu_online.exit32, !dbg !403

if.then.i.i.i.i26:                                ; preds = %land.rhs.i.i.i.i23
  call void @__sanitizer_cov_trace_pc() #12, !dbg !403
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !403
  %gcov_ctr36.i.i.i.i24 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.56, i32 0, i32 2), align 16, !dbg !403
  %60 = add i64 %gcov_ctr36.i.i.i.i24, 1, !dbg !403
  store i64 %60, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.56, i32 0, i32 2), align 16, !dbg !403
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #13, !dbg !403
  %gcov_ctr37.i.i.i.i25 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.56, i32 0, i32 3), align 8, !dbg !403
  %61 = add i64 %gcov_ctr37.i.i.i.i25, 1, !dbg !403
  store i64 %61, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.56, i32 0, i32 3), align 8, !dbg !403
  br label %cpu_online.exit32, !dbg !403

cpu_online.exit32:                                ; preds = %if.then.i.i.i.i26, %land.rhs.i.i.i.i23.cpu_online.exit32_crit_edge, %if.end48.cpu_online.exit32_crit_edge
  %gcov_ctr.i.i.i27 = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %62 = add i64 %gcov_ctr.i.i.i27, 1
  store i64 %62, ptr @__llvm_gcov_ctr.54, align 8
  %div1.i.i.i28 = lshr i32 %53, 5, !dbg !405
  %arrayidx.i.i.i29 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i28, !dbg !407
  %63 = ptrtoint ptr %arrayidx.i.i.i29 to i32, !dbg !407
  call void @__asan_load4_noabort(i32 %63), !dbg !407
  %64 = load volatile i32, ptr %arrayidx.i.i.i29, align 4, !dbg !407
  %and.i.i.i30 = and i32 %53, 31, !dbg !408
  %65 = shl nuw i32 1, %and.i.i.i30, !dbg !409
  %66 = and i32 %64, %65, !dbg !409
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66), !dbg !409
  %tobool.i31.not = icmp eq i32 %66, 0, !dbg !409
  br i1 %tobool.i31.not, label %cpu_online.exit32.if.end69_crit_edge, label %if.then52, !dbg !348

cpu_online.exit32.if.end69_crit_edge:             ; preds = %cpu_online.exit32
  call void @__sanitizer_cov_trace_pc() #12, !dbg !348
  br label %if.end69, !dbg !348

if.then52:                                        ; preds = %cpu_online.exit32
  %gcov_ctr.i33 = load i64, ptr @__llvm_gcov_ctr.51, align 8, !dbg !410
  %67 = add i64 %gcov_ctr.i33, 1, !dbg !410
  store i64 %67, ptr @__llvm_gcov_ctr.51, align 8, !dbg !410
  %gcov_ctr.i.i34 = load i64, ptr @__llvm_gcov_ctr.49, align 8
  %68 = add i64 %gcov_ctr.i.i34, 1
  store i64 %68, ptr @__llvm_gcov_ctr.49, align 8
  %gcov_ctr.i.i.i35 = load i64, ptr @__llvm_gcov_ctr.57, align 8, !dbg !414
  %69 = add i64 %gcov_ctr.i.i.i35, 1, !dbg !414
  store i64 %69, ptr @__llvm_gcov_ctr.57, align 8, !dbg !414
  %gcov_ctr.i.i.i.i36 = load i64, ptr @__llvm_gcov_ctr.29, align 8, !dbg !417
  %70 = add i64 %gcov_ctr.i.i.i.i36, 1, !dbg !417
  store i64 %70, ptr @__llvm_gcov_ctr.29, align 8, !dbg !417
  %71 = tail call i32 @llvm.read_register.i32(metadata !74) #13, !dbg !417
  %and.i.i.i.i = and i32 %71, -16384, !dbg !419
  %72 = inttoptr i32 %and.i.i.i.i to ptr, !dbg !420
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1, !dbg !421
  %73 = ptrtoint ptr %preempt_count.i.i.i to i32, !dbg !422
  call void @__asan_load4_noabort(i32 %73), !dbg !422
  %74 = load volatile i32, ptr %preempt_count.i.i.i, align 4, !dbg !422
  %add.i.i = add i32 %74, 1, !dbg !422
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4, !dbg !422
  tail call void asm sideeffect "", "~{memory}"() #13, !dbg !410, !srcloc !423
  %75 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_benchmark_event, i32 0, i32 7), align 4, !dbg !348
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13, !dbg !348
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58), !dbg !348
  %tobool59.not = icmp eq i32 %call58, 0, !dbg !348
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge, !dbg !348

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12, !dbg !348
  br label %do.end67, !dbg !348

land.lhs.true:                                    ; preds = %if.then52
  %gcov_ctr77 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 8), align 16, !dbg !348
  %76 = add i64 %gcov_ctr77, 1, !dbg !348
  store i64 %76, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 8), align 16, !dbg !348
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13, !dbg !348
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60), !dbg !348
  %tobool61.not = icmp eq i32 %call60, 0, !dbg !348
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62, !dbg !348

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12, !dbg !348
  br label %do.end67, !dbg !348

land.lhs.true62:                                  ; preds = %land.lhs.true
  %gcov_ctr78 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 9), align 8, !dbg !348
  %77 = add i64 %gcov_ctr78, 1, !dbg !348
  store i64 %77, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 9), align 8, !dbg !348
  %.b1 = load i1, ptr @trace_benchmark_event.__warned, align 1, !dbg !348
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64, !dbg !348

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12, !dbg !348
  br label %do.end67, !dbg !348

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12, !dbg !348
  %gcov_ctr79 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 10), align 16, !dbg !348
  %78 = add i64 %gcov_ctr79, 1, !dbg !348
  store i64 %78, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 10), align 16, !dbg !348
  store i1 true, ptr @trace_benchmark_event.__warned, align 1, !dbg !348
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 32, ptr noundef nonnull @.str.15) #13, !dbg !348
  br label %do.end67, !dbg !348

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  %gcov_ctr80 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 11), align 8, !dbg !348
  %79 = add i64 %gcov_ctr80, 1, !dbg !348
  store i64 %79, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 11), align 8, !dbg !348
  %gcov_ctr.i37 = load i64, ptr @__llvm_gcov_ctr.52, align 8, !dbg !424
  %80 = add i64 %gcov_ctr.i37, 1, !dbg !424
  store i64 %80, ptr @__llvm_gcov_ctr.52, align 8, !dbg !424
  tail call void asm sideeffect "", "~{memory}"() #13, !dbg !424, !srcloc !427
  %gcov_ctr.i.i38 = load i64, ptr @__llvm_gcov_ctr.50, align 8
  %81 = add i64 %gcov_ctr.i.i38, 1
  store i64 %81, ptr @__llvm_gcov_ctr.50, align 8
  %gcov_ctr.i.i.i39 = load i64, ptr @__llvm_gcov_ctr.57, align 8, !dbg !428
  %82 = add i64 %gcov_ctr.i.i.i39, 1, !dbg !428
  store i64 %82, ptr @__llvm_gcov_ctr.57, align 8, !dbg !428
  %gcov_ctr.i.i.i.i40 = load i64, ptr @__llvm_gcov_ctr.29, align 8, !dbg !431
  %83 = add i64 %gcov_ctr.i.i.i.i40, 1, !dbg !431
  store i64 %83, ptr @__llvm_gcov_ctr.29, align 8, !dbg !431
  %84 = tail call i32 @llvm.read_register.i32(metadata !74) #13, !dbg !431
  %and.i.i.i.i41 = and i32 %84, -16384, !dbg !433
  %85 = inttoptr i32 %and.i.i.i.i41 to ptr, !dbg !434
  %preempt_count.i.i.i42 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 1, !dbg !435
  %86 = ptrtoint ptr %preempt_count.i.i.i42 to i32, !dbg !436
  call void @__asan_load4_noabort(i32 %86), !dbg !436
  %87 = load volatile i32, ptr %preempt_count.i.i.i42, align 4, !dbg !436
  %sub.i.i = add i32 %87, -1, !dbg !436
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i42, align 4, !dbg !436
  br label %if.end69, !dbg !348

if.end69:                                         ; preds = %do.end67, %cpu_online.exit32.if.end69_crit_edge, %cleanup.thread
  ret void, !dbg !348
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #8 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 -1865857084) #13
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #13
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #13
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 43
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #12
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llvm_gcda_summary_info() #13
  tail call void @llvm_gcda_end_file() #13
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #9 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.17, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.18, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.19, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.20, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.21, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.22, i8 0, i64 40, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.23, align 8
  store i64 0, ptr @__llvm_gcov_ctr.24, align 8
  store i64 0, ptr @__llvm_gcov_ctr.25, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.26, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.27, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.28, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.29, align 8
  store i64 0, ptr @__llvm_gcov_ctr.30, align 8
  store i64 0, ptr @__llvm_gcov_ctr.31, align 8
  store i64 0, ptr @__llvm_gcov_ctr.32, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(760) @__llvm_gcov_ctr.33, i8 0, i64 760, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.34, align 8
  store i64 0, ptr @__llvm_gcov_ctr.35, align 8
  store i64 0, ptr @__llvm_gcov_ctr.36, align 8
  store i64 0, ptr @__llvm_gcov_ctr.37, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) @__llvm_gcov_ctr.38, i8 0, i64 96, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.39, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.40, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.41, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.42, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.43, align 8
  store i64 0, ptr @__llvm_gcov_ctr.44, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.45, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.46, align 8
  store i64 0, ptr @__llvm_gcov_ctr.47, align 8
  store i64 0, ptr @__llvm_gcov_ctr.48, align 8
  store i64 0, ptr @__llvm_gcov_ctr.49, align 8
  store i64 0, ptr @__llvm_gcov_ctr.50, align 8
  store i64 0, ptr @__llvm_gcov_ctr.51, align 8
  store i64 0, ptr @__llvm_gcov_ctr.52, align 8
  store i64 0, ptr @__llvm_gcov_ctr.53, align 8
  store i64 0, ptr @__llvm_gcov_ctr.54, align 8
  store i64 0, ptr @__llvm_gcov_ctr.55, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.56, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.57, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.58, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #8 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #13
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { noinline nounwind uwtable(sync) }
attributes #9 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind uwtable(sync) }
attributes #12 = { nomerge }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !53, !54, !55, !56, !57, !58, !59, !61, !63, !65, !66, !67, !68, !69, !71, !72}
!llvm.named.register.sp = !{!74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.gcov = !{!83}
!llvm.ident = !{!84}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_benchmark.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @__tracepoint_benchmark_event, !3, !"__tracepoint_benchmark_event", i1 false, i1 false}
!3 = !{!"../kernel/trace/./trace_benchmark.h", i32 15, i32 1}
!4 = !{ptr @__tracepoint_ptr_benchmark_event, !3, !"__tracepoint_ptr_benchmark_event", i1 false, i1 false}
!5 = !{ptr @__SCK__tp_func_benchmark_event, !3, !"__SCK__tp_func_benchmark_event", i1 false, i1 false}
!6 = !{ptr @event_class_benchmark_event, !3, !"event_class_benchmark_event", i1 false, i1 false}
!7 = !{ptr @event_benchmark_event, !3, !"event_benchmark_event", i1 false, i1 false}
!8 = !{ptr @__event_benchmark_event, !3, !"__event_benchmark_event", i1 false, i1 false}
!9 = !{ptr @__bpf_trace_tp_map_benchmark_event, !3, !"__bpf_trace_tp_map_benchmark_event", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/trace/trace_benchmark.c", i32 181, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @trace_benchmark_reg._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @trace_benchmark_reg._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/trace/trace_benchmark.c", i32 185, i32 20}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/trace/trace_benchmark.c", i32 188, i32 3}
!20 = !{ptr @trace_benchmark_reg._entry.4, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @trace_benchmark_reg._entry_ptr.6, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/trace/trace_benchmark.c", i32 208, i32 17}
!24 = !{ptr @__initcall__kmod_trace_benchmark__264_229_ok_to_run_trace_benchmarkearly, !25, !"__initcall__kmod_trace_benchmark__264_229_ok_to_run_trace_benchmarkearly", i1 false, i1 false}
!25 = !{!"../kernel/trace/trace_benchmark.c", i32 229, i32 1}
!26 = !{ptr @bm_event_thread, !27, !"bm_event_thread", i1 false, i1 false}
!27 = !{!"../kernel/trace/trace_benchmark.c", i32 10, i32 28}
!28 = !{ptr @bm_total, !29, !"bm_total", i1 false, i1 false}
!29 = !{!"../kernel/trace/trace_benchmark.c", i32 14, i32 12}
!30 = !{ptr @bm_totalsq, !31, !"bm_totalsq", i1 false, i1 false}
!31 = !{!"../kernel/trace/trace_benchmark.c", i32 15, i32 12}
!32 = !{ptr @bm_last, !33, !"bm_last", i1 false, i1 false}
!33 = !{!"../kernel/trace/trace_benchmark.c", i32 16, i32 12}
!34 = !{ptr @bm_max, !35, !"bm_max", i1 false, i1 false}
!35 = !{!"../kernel/trace/trace_benchmark.c", i32 17, i32 12}
!36 = !{ptr @bm_min, !37, !"bm_min", i1 false, i1 false}
!37 = !{!"../kernel/trace/trace_benchmark.c", i32 18, i32 12}
!38 = !{ptr @bm_first, !39, !"bm_first", i1 false, i1 false}
!39 = !{!"../kernel/trace/trace_benchmark.c", i32 19, i32 12}
!40 = !{ptr @bm_cnt, !41, !"bm_cnt", i1 false, i1 false}
!41 = !{!"../kernel/trace/trace_benchmark.c", i32 20, i32 12}
!42 = !{ptr @bm_stddev, !43, !"bm_stddev", i1 false, i1 false}
!43 = !{!"../kernel/trace/trace_benchmark.c", i32 21, i32 12}
!44 = !{ptr @bm_avg, !45, !"bm_avg", i1 false, i1 false}
!45 = !{!"../kernel/trace/trace_benchmark.c", i32 22, i32 21}
!46 = !{ptr @bm_std, !47, !"bm_std", i1 false, i1 false}
!47 = !{!"../kernel/trace/trace_benchmark.c", i32 23, i32 21}
!48 = distinct !{null, !49, !"ok_to_run", i1 false, i1 false}
!49 = !{!"../kernel/trace/trace_benchmark.c", i32 25, i32 13}
!50 = !{ptr @__tpstrtab_benchmark_event, !3, !"__tpstrtab_benchmark_event", i1 false, i1 false}
!51 = !{ptr @str__benchmark__trace_system_name, !52, !"str__benchmark__trace_system_name", i1 false, i1 false}
!52 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!53 = !{ptr @.str.8, !3, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.9, !3, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @trace_event_fields_benchmark_event, !3, !"trace_event_fields_benchmark_event", i1 false, i1 false}
!56 = !{ptr @trace_event_type_funcs_benchmark_event, !3, !"trace_event_type_funcs_benchmark_event", i1 false, i1 false}
!57 = !{ptr @.str.10, !3, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @print_fmt_benchmark_event, !3, !"print_fmt_benchmark_event", i1 false, i1 false}
!59 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../kernel/trace/trace_benchmark.c", i32 69, i32 6}
!61 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../kernel/trace/trace_benchmark.c", i32 87, i32 7}
!63 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../kernel/trace/trace_benchmark.c", i32 139, i32 5}
!65 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!66 = !{ptr @.str.14, !3, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!68 = !{ptr @.str.15, !3, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!71 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @bm_str, !73, !"bm_str", i1 false, i1 false}
!73 = !{!"../kernel/trace/trace_benchmark.c", i32 12, i32 13}
!74 = !{!"sp"}
!75 = !{i32 2, !"Debug Info Version", i32 3}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_benchmark.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_benchmark.gcda", !0}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = distinct !DISubprogram(name: "__traceiter_benchmark_event", scope: !86, file: !86, line: 15, type: !87, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!86 = !DIFile(filename: "../kernel/trace/./trace_benchmark.h", directory: "/llk/linux-5.17/build_arm_allyes")
!87 = !DISubroutineType(types: !88)
!88 = !{}
!89 = !DILocation(line: 15, scope: !85)
!90 = !DILocation(line: 15, column: 1, scope: !85)
!91 = distinct !{!91, !90, !90}
!92 = distinct !DISubprogram(name: "trace_benchmark_reg", scope: !1, file: !1, line: 178, type: !87, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!93 = !DILocation(line: 179, scope: !92)
!94 = !DILocation(line: 180, column: 7, scope: !92)
!95 = !DILocation(line: 180, column: 6, scope: !92)
!96 = !DILocation(line: 181, column: 3, scope: !92)
!97 = !DILocation(line: 182, column: 3, scope: !92)
!98 = !DILocation(line: 185, column: 20, scope: !92)
!99 = !DILocation(line: 36, column: 9, scope: !100, inlinedAt: !102)
!100 = distinct !DISubprogram(name: "IS_ERR", scope: !101, file: !101, line: 34, type: !87, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!101 = !DIFile(filename: "../include/linux/err.h", directory: "/llk/linux-5.17/build_arm_allyes")
!102 = distinct !DILocation(line: 185, column: 20, scope: !92)
!103 = !DILocation(line: 185, column: 18, scope: !92)
!104 = !DILocation(line: 188, column: 3, scope: !92)
!105 = !DILocation(line: 189, column: 18, scope: !92)
!106 = !DILocation(line: 31, column: 9, scope: !107, inlinedAt: !108)
!107 = distinct !DISubprogram(name: "PTR_ERR", scope: !101, file: !101, line: 29, type: !87, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!108 = distinct !DILocation(line: 189, column: 10, scope: !92)
!109 = !DILocation(line: 189, column: 3, scope: !92)
!110 = !DILocation(line: 192, column: 2, scope: !92)
!111 = !DILocation(line: 0, scope: !92)
!112 = !DILocation(line: 193, column: 1, scope: !92)
!113 = distinct !DISubprogram(name: "trace_benchmark_unreg", scope: !1, file: !1, line: 200, type: !87, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!114 = !DILocation(line: 201, scope: !113)
!115 = !DILocation(line: 202, column: 7, scope: !113)
!116 = !DILocation(line: 202, column: 6, scope: !113)
!117 = !DILocation(line: 203, column: 3, scope: !113)
!118 = !DILocation(line: 205, column: 15, scope: !113)
!119 = !DILocation(line: 205, column: 2, scope: !113)
!120 = !DILocation(line: 206, column: 18, scope: !113)
!121 = !DILocation(line: 208, column: 2, scope: !113)
!122 = !DILocation(line: 209, column: 11, scope: !113)
!123 = !DILocation(line: 210, column: 13, scope: !113)
!124 = !DILocation(line: 211, column: 10, scope: !113)
!125 = !DILocation(line: 212, column: 9, scope: !113)
!126 = !DILocation(line: 213, column: 9, scope: !113)
!127 = !DILocation(line: 214, column: 9, scope: !113)
!128 = !DILocation(line: 216, column: 11, scope: !113)
!129 = !DILocation(line: 217, column: 9, scope: !113)
!130 = !DILocation(line: 218, column: 9, scope: !113)
!131 = !DILocation(line: 219, column: 12, scope: !113)
!132 = !DILocation(line: 220, column: 1, scope: !113)
!133 = distinct !DISubprogram(name: "trace_event_raw_event_benchmark_event", scope: !86, file: !86, line: 15, type: !87, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!134 = !DILocation(line: 15, scope: !133)
!135 = !DILocation(line: 15, column: 1, scope: !133)
!136 = !DILocation(line: 716, column: 31, scope: !137, inlinedAt: !139)
!137 = distinct !DISubprogram(name: "trace_trigger_soft_disabled", scope: !138, file: !138, line: 714, type: !87, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!138 = !DIFile(filename: "../include/linux/trace_events.h", directory: "/llk/linux-5.17/build_arm_allyes")
!139 = distinct !DILocation(line: 15, column: 1, scope: !133)
!140 = !DILocation(line: 718, column: 6, scope: !137, inlinedAt: !139)
!141 = !{!"branch_weights", i32 2000, i32 1}
!142 = !DILocation(line: 723, column: 6, scope: !137, inlinedAt: !139)
!143 = !{!"branch_weights", i32 1, i32 2000}
!144 = !DILocation(line: 726, column: 39, scope: !137, inlinedAt: !139)
!145 = !DILocation(line: 726, column: 9, scope: !137, inlinedAt: !139)
!146 = !DILocation(line: 0, scope: !133)
!147 = !DILocation(line: 0, scope: !137, inlinedAt: !139)
!148 = distinct !DISubprogram(name: "perf_trace_benchmark_event", scope: !86, file: !86, line: 15, type: !87, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!149 = !DILocation(line: 15, scope: !148)
!150 = !DILocation(line: 15, column: 1, scope: !148)
!151 = !{!"auto-init"}
!152 = !DILocation(line: 104, column: 4, scope: !153, inlinedAt: !155)
!153 = distinct !DISubprogram(name: "current_thread_info", scope: !154, file: !154, line: 101, type: !87, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!154 = !DIFile(filename: "../arch/arm/include/asm/thread_info.h", directory: "/llk/linux-5.17/build_arm_allyes")
!155 = distinct !DILocation(line: 15, column: 1, scope: !148)
!156 = !DILocation(line: 104, column: 26, scope: !153, inlinedAt: !155)
!157 = !DILocation(line: 103, column: 9, scope: !153, inlinedAt: !155)
!158 = !DILocation(line: 436, column: 11, scope: !159, inlinedAt: !160)
!159 = distinct !DISubprogram(name: "bpf_prog_array_valid", scope: !138, file: !138, line: 417, type: !87, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!160 = distinct !DILocation(line: 15, column: 1, scope: !148)
!161 = !DILocation(line: 436, column: 10, scope: !159, inlinedAt: !160)
!162 = !DILocation(line: 840, column: 10, scope: !163, inlinedAt: !165)
!163 = distinct !DISubprogram(name: "hlist_empty", scope: !164, file: !164, line: 838, type: !87, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!164 = !DIFile(filename: "../include/linux/list.h", directory: "/llk/linux-5.17/build_arm_allyes")
!165 = distinct !DILocation(line: 15, column: 1, scope: !148)
!166 = !DILocation(line: 840, column: 9, scope: !163, inlinedAt: !165)
!167 = !DILocation(line: 0, scope: !148)
!168 = !DILocation(line: 1171, column: 2, scope: !169, inlinedAt: !171)
!169 = distinct !DISubprogram(name: "perf_fetch_caller_regs", scope: !170, file: !170, line: 1169, type: !87, scopeLine: 1170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!170 = !DIFile(filename: "../include/linux/perf_event.h", directory: "/llk/linux-5.17/build_arm_allyes")
!171 = distinct !DILocation(line: 15, column: 1, scope: !148)
!172 = distinct !DISubprogram(name: "__bpf_trace_benchmark_event", scope: !86, file: !86, line: 15, type: !87, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!173 = !DILocation(line: 15, scope: !172)
!174 = !DILocation(line: 15, column: 1, scope: !172)
!175 = distinct !DISubprogram(name: "benchmark_event_kthread", scope: !1, file: !1, line: 147, type: !87, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!176 = !DILocation(line: 148, scope: !175)
!177 = !DILocation(line: 150, column: 2, scope: !175)
!178 = !DILocation(line: 152, column: 10, scope: !175)
!179 = !DILocation(line: 152, column: 2, scope: !175)
!180 = !DILocation(line: 154, column: 3, scope: !175)
!181 = !DILocation(line: 104, column: 4, scope: !153, inlinedAt: !182)
!182 = distinct !DILocation(line: 168, column: 3, scope: !175)
!183 = !DILocation(line: 104, column: 26, scope: !153, inlinedAt: !182)
!184 = !DILocation(line: 103, column: 9, scope: !153, inlinedAt: !182)
!185 = !DILocation(line: 168, column: 3, scope: !175)
!186 = !{i8 0, i8 2}
!187 = !{i64 2155183466}
!188 = !{i64 2155186912}
!189 = !DILocation(line: 2031, column: 9, scope: !190, inlinedAt: !192)
!190 = distinct !DISubprogram(name: "_cond_resched", scope: !191, file: !191, line: 2029, type: !87, scopeLine: 2030, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!191 = !DIFile(filename: "../include/linux/sched.h", directory: "/llk/linux-5.17/build_arm_allyes")
!192 = distinct !DILocation(line: 168, column: 3, scope: !175)
!193 = distinct !{!193, !179, !194}
!194 = !DILocation(line: 169, column: 2, scope: !175)
!195 = !DILocation(line: 171, column: 2, scope: !175)
!196 = distinct !DISubprogram(name: "ok_to_run_trace_benchmark", scope: !1, file: !1, line: 222, type: !87, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!197 = !DILocation(line: 223, scope: !196)
!198 = !DILocation(line: 224, column: 12, scope: !196)
!199 = !DILocation(line: 226, column: 2, scope: !196)
!200 = distinct !DISubprogram(name: "trace_raw_output_benchmark_event", scope: !86, file: !86, line: 15, type: !87, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!201 = !DILocation(line: 15, scope: !200)
!202 = !DILocation(line: 15, column: 1, scope: !200)
!203 = distinct !DISubprogram(name: "trace_do_benchmark", scope: !1, file: !1, line: 37, type: !87, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!204 = !DILocation(line: 38, scope: !203)
!205 = !DILocation(line: 15, column: 1, scope: !206, inlinedAt: !207)
!206 = distinct !DISubprogram(name: "trace_benchmark_event_enabled", scope: !86, file: !86, line: 15, type: !87, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!207 = distinct !DILocation(line: 49, column: 7, scope: !203)
!208 = !DILocation(line: 14, column: 2, scope: !209, inlinedAt: !211)
!209 = distinct !DISubprogram(name: "arch_static_branch", scope: !210, file: !210, line: 12, type: !87, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!210 = !DIFile(filename: "../arch/arm/include/asm/jump_label.h", directory: "/llk/linux-5.17/build_arm_allyes")
!211 = distinct !DILocation(line: 212, column: 9, scope: !212, inlinedAt: !214)
!212 = distinct !DISubprogram(name: "static_key_false", scope: !213, file: !213, line: 210, type: !87, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!213 = !DIFile(filename: "../include/linux/jump_label.h", directory: "/llk/linux-5.17/build_arm_allyes")
!214 = distinct !DILocation(line: 15, column: 1, scope: !206, inlinedAt: !207)
!215 = !{i64 2148760081, i64 2148760086, i64 2148760099, i64 2148760143, i64 2148760177, i64 2148760198}
!216 = !DILocation(line: 0, scope: !209, inlinedAt: !211)
!217 = !DILocation(line: 49, column: 39, scope: !203)
!218 = !DILocation(line: 49, column: 43, scope: !203)
!219 = !DILocation(line: 49, column: 6, scope: !203)
!220 = !DILocation(line: 50, column: 3, scope: !203)
!221 = !DILocation(line: 63, column: 34, scope: !222, inlinedAt: !224)
!222 = distinct !DISubprogram(name: "arch_irqs_disabled", scope: !223, file: !223, line: 61, type: !87, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!223 = !DIFile(filename: "../include/asm-generic/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!224 = distinct !DILocation(line: 52, column: 2, scope: !203)
!225 = !DILocation(line: 159, column: 2, scope: !226, inlinedAt: !228)
!226 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !227, file: !227, line: 156, type: !87, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!227 = !DIFile(filename: "../arch/arm/include/asm/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!228 = distinct !DILocation(line: 63, column: 34, scope: !222, inlinedAt: !224)
!229 = !{i64 587629}
!230 = !DILocation(line: 181, column: 15, scope: !231, inlinedAt: !232)
!231 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !227, file: !227, line: 179, type: !87, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!232 = distinct !DILocation(line: 63, column: 9, scope: !222, inlinedAt: !224)
!233 = !DILocation(line: 52, column: 2, scope: !203)
!234 = !DILocation(line: 49, column: 2, scope: !235, inlinedAt: !236)
!235 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !227, file: !227, line: 47, type: !87, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!236 = distinct !DILocation(line: 52, column: 2, scope: !203)
!237 = !{i64 585332}
!238 = !DILocation(line: 53, column: 10, scope: !203)
!239 = !DILocation(line: 54, column: 2, scope: !203)
!240 = !DILocation(line: 55, column: 9, scope: !203)
!241 = !DILocation(line: 56, column: 2, scope: !203)
!242 = !DILocation(line: 39, column: 2, scope: !243, inlinedAt: !244)
!243 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !227, file: !227, line: 37, type: !87, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!244 = distinct !DILocation(line: 56, column: 2, scope: !203)
!245 = !{i64 585142}
!246 = !DILocation(line: 58, column: 8, scope: !203)
!247 = !DILocation(line: 60, column: 15, scope: !203)
!248 = !DILocation(line: 66, column: 13, scope: !203)
!249 = !DILocation(line: 66, column: 6, scope: !203)
!250 = !DILocation(line: 67, column: 14, scope: !203)
!251 = !DILocation(line: 67, column: 12, scope: !203)
!252 = !DILocation(line: 68, column: 3, scope: !203)
!253 = !DILocation(line: 70, column: 3, scope: !203)
!254 = !DILocation(line: 73, column: 10, scope: !203)
!255 = !DILocation(line: 75, column: 14, scope: !203)
!256 = !DILocation(line: 75, column: 12, scope: !203)
!257 = !DILocation(line: 75, column: 6, scope: !203)
!258 = !DILocation(line: 76, column: 12, scope: !203)
!259 = !DILocation(line: 76, column: 10, scope: !203)
!260 = !DILocation(line: 76, column: 3, scope: !203)
!261 = !DILocation(line: 77, column: 7, scope: !203)
!262 = !DILocation(line: 77, column: 14, scope: !203)
!263 = !DILocation(line: 77, column: 17, scope: !203)
!264 = !DILocation(line: 77, column: 23, scope: !203)
!265 = !DILocation(line: 77, column: 6, scope: !203)
!266 = !DILocation(line: 78, column: 12, scope: !203)
!267 = !DILocation(line: 78, column: 10, scope: !203)
!268 = !DILocation(line: 78, column: 3, scope: !203)
!269 = !DILocation(line: 85, column: 13, scope: !203)
!270 = !DILocation(line: 85, column: 6, scope: !203)
!271 = !DILocation(line: 88, column: 6, scope: !203)
!272 = !DILocation(line: 88, column: 15, scope: !203)
!273 = !DILocation(line: 88, column: 25, scope: !203)
!274 = !DILocation(line: 88, column: 33, scope: !203)
!275 = !DILocation(line: 88, column: 41, scope: !203)
!276 = !DILocation(line: 88, column: 49, scope: !203)
!277 = !DILocation(line: 88, column: 57, scope: !203)
!278 = !DILocation(line: 86, column: 3, scope: !203)
!279 = !DILocation(line: 89, column: 3, scope: !203)
!280 = !DILocation(line: 92, column: 11, scope: !203)
!281 = !DILocation(line: 93, column: 22, scope: !203)
!282 = !DILocation(line: 93, column: 13, scope: !203)
!283 = !DILocation(line: 96, column: 13, scope: !203)
!284 = !DILocation(line: 96, column: 6, scope: !203)
!285 = !DILocation(line: 101, column: 24, scope: !203)
!286 = !DILocation(line: 101, column: 48, scope: !203)
!287 = !DILocation(line: 101, column: 37, scope: !203)
!288 = !DILocation(line: 102, column: 3, scope: !203)
!289 = !DILocation(line: 30, column: 2, scope: !290, inlinedAt: !292)
!290 = distinct !DISubprogram(name: "__div64_32", scope: !291, file: !291, line: 24, type: !87, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!291 = !DIFile(filename: "../arch/arm/include/asm/div64.h", directory: "/llk/linux-5.17/build_arm_allyes")
!292 = distinct !DILocation(line: 102, column: 3, scope: !203)
!293 = !{i64 2147985754, i64 2147986034, i64 2147986368, i64 2147986702}
!294 = !DILocation(line: 0, scope: !203)
!295 = !DILocation(line: 103, column: 3, scope: !203)
!296 = !DILocation(line: 30, column: 2, scope: !290, inlinedAt: !297)
!297 = distinct !DILocation(line: 103, column: 3, scope: !203)
!298 = !DILocation(line: 107, column: 10, scope: !203)
!299 = !DILocation(line: 108, column: 2, scope: !203)
!300 = !DILocation(line: 30, column: 2, scope: !290, inlinedAt: !301)
!301 = distinct !DILocation(line: 108, column: 2, scope: !203)
!302 = !DILocation(line: 109, column: 8, scope: !203)
!303 = !DILocation(line: 111, column: 13, scope: !203)
!304 = !DILocation(line: 111, column: 6, scope: !203)
!305 = !DILocation(line: 124, column: 10, scope: !203)
!306 = !DILocation(line: 125, column: 3, scope: !203)
!307 = !DILocation(line: 128, column: 9, scope: !203)
!308 = !DILocation(line: 128, column: 8, scope: !203)
!309 = !DILocation(line: 129, column: 5, scope: !203)
!310 = !DILocation(line: 130, column: 4, scope: !203)
!311 = !DILocation(line: 30, column: 2, scope: !290, inlinedAt: !312)
!312 = distinct !DILocation(line: 130, column: 4, scope: !203)
!313 = !DILocation(line: 131, column: 9, scope: !203)
!314 = !DILocation(line: 132, column: 4, scope: !203)
!315 = !DILocation(line: 47, column: 22, scope: !316, inlinedAt: !318)
!316 = distinct !DISubprogram(name: "is_power_of_2", scope: !317, file: !317, line: 45, type: !87, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!317 = !DIFile(filename: "../include/linux/log2.h", directory: "/llk/linux-5.17/build_arm_allyes")
!318 = distinct !DILocation(line: 132, column: 4, scope: !203)
!319 = !DILocation(line: 133, column: 16, scope: !203)
!320 = !DILocation(line: 133, column: 21, scope: !203)
!321 = !DILocation(line: 133, column: 13, scope: !203)
!322 = !DILocation(line: 133, column: 24, scope: !203)
!323 = !DILocation(line: 133, column: 34, scope: !203)
!324 = !DILocation(line: 133, column: 3, scope: !203)
!325 = distinct !{!325, !306, !326}
!326 = !DILocation(line: 133, column: 41, scope: !203)
!327 = !DILocation(line: 135, column: 9, scope: !203)
!328 = !DILocation(line: 136, column: 2, scope: !203)
!329 = !DILocation(line: 140, column: 5, scope: !203)
!330 = !DILocation(line: 140, column: 14, scope: !203)
!331 = !DILocation(line: 140, column: 24, scope: !203)
!332 = !DILocation(line: 140, column: 32, scope: !203)
!333 = !DILocation(line: 138, column: 2, scope: !203)
!334 = !DILocation(line: 142, column: 9, scope: !203)
!335 = !DILocation(line: 143, column: 9, scope: !203)
!336 = !DILocation(line: 144, column: 12, scope: !203)
!337 = !DILocation(line: 145, column: 1, scope: !203)
!338 = distinct !DISubprogram(name: "trace_benchmark_event", scope: !86, file: !86, line: 15, type: !87, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!339 = !DILocation(line: 15, scope: !338)
!340 = !DILocation(line: 14, column: 2, scope: !209, inlinedAt: !341)
!341 = distinct !DILocation(line: 212, column: 9, scope: !212, inlinedAt: !342)
!342 = distinct !DILocation(line: 15, column: 1, scope: !338)
!343 = !DILocation(line: 0, scope: !209, inlinedAt: !341)
!344 = !DILocation(line: 104, column: 4, scope: !153, inlinedAt: !345)
!345 = distinct !DILocation(line: 15, column: 1, scope: !338)
!346 = !DILocation(line: 104, column: 26, scope: !153, inlinedAt: !345)
!347 = !DILocation(line: 103, column: 9, scope: !153, inlinedAt: !345)
!348 = !DILocation(line: 15, column: 1, scope: !338)
!349 = !DILocation(line: 115, column: 25, scope: !350, inlinedAt: !352)
!350 = distinct !DISubprogram(name: "cpumask_check", scope: !351, file: !351, line: 113, type: !87, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!351 = !DIFile(filename: "../include/linux/cpumask.h", directory: "/llk/linux-5.17/build_arm_allyes")
!352 = distinct !DILocation(line: 379, column: 18, scope: !353, inlinedAt: !354)
!353 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !351, file: !351, line: 377, type: !87, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!354 = distinct !DILocation(line: 921, column: 9, scope: !355, inlinedAt: !356)
!355 = distinct !DISubprogram(name: "cpu_online", scope: !351, file: !351, line: 919, type: !87, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!356 = distinct !DILocation(line: 15, column: 1, scope: !338)
!357 = !DILocation(line: 108, column: 2, scope: !358, inlinedAt: !359)
!358 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !351, file: !351, line: 105, type: !87, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!359 = distinct !DILocation(line: 115, column: 2, scope: !350, inlinedAt: !352)
!360 = !DILocation(line: 118, column: 21, scope: !361, inlinedAt: !363)
!361 = distinct !DISubprogram(name: "arch_test_bit", scope: !362, file: !362, line: 116, type: !87, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!362 = !DIFile(filename: "../include/asm-generic/bitops/non-atomic.h", directory: "/llk/linux-5.17/build_arm_allyes")
!363 = distinct !DILocation(line: 379, column: 9, scope: !353, inlinedAt: !354)
!364 = !DILocation(line: 118, column: 16, scope: !361, inlinedAt: !363)
!365 = !DILocation(line: 118, column: 42, scope: !361, inlinedAt: !363)
!366 = !DILocation(line: 921, column: 9, scope: !355, inlinedAt: !356)
!367 = !DILocation(line: 0, scope: !338)
!368 = !DILocation(line: 16, column: 10, scope: !369, inlinedAt: !371)
!369 = distinct !DISubprogram(name: "preempt_count_ptr", scope: !370, file: !370, line: 14, type: !87, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!370 = !DIFile(filename: "../include/asm-generic/preempt.h", directory: "/llk/linux-5.17/build_arm_allyes")
!371 = distinct !DILocation(line: 54, column: 3, scope: !372, inlinedAt: !373)
!372 = distinct !DISubprogram(name: "__preempt_count_add", scope: !370, file: !370, line: 52, type: !87, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!373 = distinct !DILocation(line: 15, column: 1, scope: !338)
!374 = !DILocation(line: 104, column: 4, scope: !153, inlinedAt: !375)
!375 = distinct !DILocation(line: 16, column: 10, scope: !369, inlinedAt: !371)
!376 = !DILocation(line: 104, column: 26, scope: !153, inlinedAt: !375)
!377 = !DILocation(line: 103, column: 9, scope: !153, inlinedAt: !375)
!378 = !DILocation(line: 16, column: 33, scope: !369, inlinedAt: !371)
!379 = !DILocation(line: 54, column: 23, scope: !372, inlinedAt: !373)
!380 = !{i64 2152341427}
!381 = !DILocation(line: 15, column: 1, scope: !85, inlinedAt: !382)
!382 = distinct !DILocation(line: 15, column: 1, scope: !338)
!383 = distinct !{!383, !381, !381}
!384 = !{i64 2152341626}
!385 = !DILocation(line: 16, column: 10, scope: !369, inlinedAt: !386)
!386 = distinct !DILocation(line: 59, column: 3, scope: !387, inlinedAt: !388)
!387 = distinct !DISubprogram(name: "__preempt_count_sub", scope: !370, file: !370, line: 57, type: !87, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!388 = distinct !DILocation(line: 15, column: 1, scope: !338)
!389 = !DILocation(line: 104, column: 4, scope: !153, inlinedAt: !390)
!390 = distinct !DILocation(line: 16, column: 10, scope: !369, inlinedAt: !386)
!391 = !DILocation(line: 104, column: 26, scope: !153, inlinedAt: !390)
!392 = !DILocation(line: 103, column: 9, scope: !153, inlinedAt: !390)
!393 = !DILocation(line: 16, column: 33, scope: !369, inlinedAt: !386)
!394 = !DILocation(line: 59, column: 23, scope: !387, inlinedAt: !388)
!395 = !DILocation(line: 104, column: 4, scope: !153, inlinedAt: !396)
!396 = distinct !DILocation(line: 15, column: 1, scope: !338)
!397 = !DILocation(line: 104, column: 26, scope: !153, inlinedAt: !396)
!398 = !DILocation(line: 103, column: 9, scope: !153, inlinedAt: !396)
!399 = !DILocation(line: 115, column: 25, scope: !350, inlinedAt: !400)
!400 = distinct !DILocation(line: 379, column: 18, scope: !353, inlinedAt: !401)
!401 = distinct !DILocation(line: 921, column: 9, scope: !355, inlinedAt: !402)
!402 = distinct !DILocation(line: 15, column: 1, scope: !338)
!403 = !DILocation(line: 108, column: 2, scope: !358, inlinedAt: !404)
!404 = distinct !DILocation(line: 115, column: 2, scope: !350, inlinedAt: !400)
!405 = !DILocation(line: 118, column: 21, scope: !361, inlinedAt: !406)
!406 = distinct !DILocation(line: 379, column: 9, scope: !353, inlinedAt: !401)
!407 = !DILocation(line: 118, column: 16, scope: !361, inlinedAt: !406)
!408 = !DILocation(line: 118, column: 42, scope: !361, inlinedAt: !406)
!409 = !DILocation(line: 921, column: 9, scope: !355, inlinedAt: !402)
!410 = !DILocation(line: 794, column: 2, scope: !411, inlinedAt: !413)
!411 = distinct !DISubprogram(name: "rcu_read_lock_sched_notrace", scope: !412, file: !412, line: 792, type: !87, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!412 = !DIFile(filename: "../include/linux/rcupdate.h", directory: "/llk/linux-5.17/build_arm_allyes")
!413 = distinct !DILocation(line: 15, column: 1, scope: !338)
!414 = !DILocation(line: 16, column: 10, scope: !369, inlinedAt: !415)
!415 = distinct !DILocation(line: 54, column: 3, scope: !372, inlinedAt: !416)
!416 = distinct !DILocation(line: 794, column: 2, scope: !411, inlinedAt: !413)
!417 = !DILocation(line: 104, column: 4, scope: !153, inlinedAt: !418)
!418 = distinct !DILocation(line: 16, column: 10, scope: !369, inlinedAt: !415)
!419 = !DILocation(line: 104, column: 26, scope: !153, inlinedAt: !418)
!420 = !DILocation(line: 103, column: 9, scope: !153, inlinedAt: !418)
!421 = !DILocation(line: 16, column: 33, scope: !369, inlinedAt: !415)
!422 = !DILocation(line: 54, column: 23, scope: !372, inlinedAt: !416)
!423 = !{i64 2149261237}
!424 = !DILocation(line: 816, column: 2, scope: !425, inlinedAt: !426)
!425 = distinct !DISubprogram(name: "rcu_read_unlock_sched_notrace", scope: !412, file: !412, line: 813, type: !87, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!426 = distinct !DILocation(line: 15, column: 1, scope: !338)
!427 = !{i64 2149262273}
!428 = !DILocation(line: 16, column: 10, scope: !369, inlinedAt: !429)
!429 = distinct !DILocation(line: 59, column: 3, scope: !387, inlinedAt: !430)
!430 = distinct !DILocation(line: 816, column: 2, scope: !425, inlinedAt: !426)
!431 = !DILocation(line: 104, column: 4, scope: !153, inlinedAt: !432)
!432 = distinct !DILocation(line: 16, column: 10, scope: !369, inlinedAt: !429)
!433 = !DILocation(line: 104, column: 26, scope: !153, inlinedAt: !432)
!434 = !DILocation(line: 103, column: 9, scope: !153, inlinedAt: !432)
!435 = !DILocation(line: 16, column: 33, scope: !369, inlinedAt: !429)
!436 = !DILocation(line: 59, column: 23, scope: !387, inlinedAt: !430)
