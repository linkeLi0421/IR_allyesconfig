; ModuleID = '/llk/IR_all_yes/mm/damon/core.c_pt.bc'
source_filename = "../mm/damon/core.c"
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
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_damon_aggregated = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.damon_addr_range = type { i32, i32 }
%struct.damon_region = type { %struct.damon_addr_range, i32, i32, %struct.list_head, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.damon_target = type { i32, i32, %struct.list_head, %struct.list_head }
%struct.damos = type { i32, i32, i32, i32, i32, i32, i32, %struct.damos_quota, %struct.damos_watermarks, %struct.damos_stat, %struct.list_head }
%struct.damos_quota = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, [100 x i32], i32 }
%struct.damos_watermarks = type { i32, i32, i32, i32, i32, i8 }
%struct.damos_stat = type { i32, i32, i32, i32, i32 }
%struct.damon_ctx = type { i32, i32, i32, %struct.timespec64, %struct.timespec64, ptr, %struct.mutex, %struct.damon_primitive, %struct.damon_callback, i32, i32, %struct.list_head, %struct.list_head }
%struct.timespec64 = type { i64, i32 }
%struct.damon_primitive = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.damon_callback = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }
%struct.kunit_binary_ptr_assert = type { %struct.kunit_assert, ptr, ptr, ptr, ptr, ptr }

@__tpstrtab_damon_aggregated = internal constant [17 x i8] c"damon_aggregated\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_damon_aggregated = dso_local global %struct.static_call_key { ptr @__traceiter_damon_aggregated }, align 4
@__tracepoint_damon_aggregated = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_damon_aggregated, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_damon_aggregated, ptr null, ptr @__traceiter_damon_aggregated, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_damon_aggregated = internal constant ptr @__tracepoint_damon_aggregated, section "__tracepoints_ptrs", align 4
@str__damon__trace_system_name = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"damon\00", [26 x i8] zeroinitializer }, align 32
@trace_event_fields_damon_aggregated = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.0 { %struct.anon { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.0 { %struct.anon { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.0 { %struct.anon { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_damon_aggregated = internal global %struct.trace_event_class { ptr @str__damon__trace_system_name, ptr @trace_event_raw_event_damon_aggregated, ptr @perf_trace_damon_aggregated, ptr @trace_event_reg, ptr @trace_event_fields_damon_aggregated, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_damon_aggregated, i64 24), ptr getelementptr (i8, ptr @event_class_damon_aggregated, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_damon_aggregated = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_damon_aggregated, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_damon_aggregated = internal global { [128 x i8], [32 x i8] } { [128 x i8] c"\22target_id=%lu nr_regions=%u %lu-%lu: %u %u\22, REC->target_id, REC->nr_regions, REC->start, REC->end, REC->nr_accesses, REC->age\00", [32 x i8] zeroinitializer }, align 32
@event_damon_aggregated = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_damon_aggregated, %union.anon.1 { ptr @__tracepoint_damon_aggregated }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_damon_aggregated }, ptr @print_fmt_damon_aggregated, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_damon_aggregated = internal global ptr @event_damon_aggregated, section "_ftrace_events", align 4
@__bpf_trace_tp_map_damon_aggregated = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_damon_aggregated, ptr @__bpf_trace_damon_aggregated, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@damon_new_ctx.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ctx->kdamond_lock\00", [45 x i8] zeroinitializer }, align 32
@damon_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @damon_lock, i64 52), ptr getelementptr (i8, ptr @damon_lock, i64 52) }, ptr @damon_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@nr_running_ctxs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_array263 = internal global [2 x ptr] [ptr @damon_test_suite, ptr null], align 4
@__UNIQUE_ID_suites264 = internal global ptr @__UNIQUE_ID_array263, section ".kunit_test_suites", align 4
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"target_id\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nr_regions\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"end\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nr_accesses\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"age\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"target_id=%lu nr_regions=%u %lu-%lu: %u %u\0A\00", [52 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"damon_lock.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"damon_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kdamond.%d\00", [21 x i8] zeroinitializer }, align 32
@kdamond_fn.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, i8 0, i8 -4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kdamond_fn\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mm/damon/core.c\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kdamond (%d) starts\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"damon: kdamond (%d) starts\0A\00", [36 x i8] zeroinitializer }, align 32
@kdamond_fn.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.18, i8 1, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kdamond (%d) finishes\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"damon: kdamond (%d) finishes\0A\00", [34 x i8] zeroinitializer }, align 32
@damos_wmark_wait_us.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.20, ptr @.str.15, ptr @.str.21, i8 0, i8 -19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"damos_wmark_wait_us\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"deactivate a scheme (%d) for %s wmark\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"damon: deactivate a scheme (%d) for %s wmark\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@damos_wmark_wait_us.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.20, ptr @.str.15, ptr @.str.25, i8 0, i8 -16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"activate a scheme (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"damon: activate a scheme (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/damon.h\00", [35 x i8] zeroinitializer }, align 32
@trace_damon_aggregated.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@kdamond_split_regions.last_nr_regions = internal global { i32, [28 x i8] } zeroinitializer, align 32
@damon_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"damon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @damon_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@damon_test_cases = internal global { [8 x %struct.kunit_case], [32 x i8] } { [8 x %struct.kunit_case] [%struct.kunit_case { ptr @damon_test_target, ptr @.str.30, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @damon_test_regions, ptr @.str.31, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @damon_test_aggregate, ptr @.str.32, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @damon_test_split_at, ptr @.str.33, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @damon_test_merge_two, ptr @.str.34, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @damon_test_merge_regions_of, ptr @.str.35, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @damon_test_split_regions_of, ptr @.str.36, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"damon_test_target\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"damon_test_regions\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"damon_test_aggregate\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"damon_test_split_at\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"damon_test_merge_two\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"damon_test_merge_regions_of\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"damon_test_split_regions_of\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mm/damon/core-test.h\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"42ul\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"t->id\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0u\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nr_damon_targets(c)\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1u\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1ul\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"r->ar.start\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2ul\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"r->ar.end\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"r->nr_accesses\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"damon_nr_regions(t)\00", [44 x i8] zeroinitializer }, align 32
@__const.damon_test_aggregate.target_ids = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 3], align 4
@__const.damon_test_aggregate.saddr = private unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 10, i32 20, i32 30], [3 x i32] [i32 5, i32 42, i32 49], [3 x i32] [i32 13, i32 33, i32 55]], align 4
@__const.damon_test_aggregate.eaddr = private unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 15, i32 27, i32 40], [3 x i32] [i32 31, i32 45, i32 55], [3 x i32] [i32 23, i32 44, i32 66]], align 4
@__const.damon_test_aggregate.accesses = private unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 42, i32 95, i32 84], [3 x i32] [i32 10, i32 20, i32 30], [3 x i32] [i32 0, i32 1, i32 2]], align 4
@.str.50 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"3\00", [30 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ir\00", [29 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"it\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0ul\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"25ul\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"100ul\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"300ul\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"16u\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"r\00", [30 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"r3\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"i\00", [30 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@__const.damon_test_merge_regions_of.sa = private unnamed_addr constant [8 x i32] [i32 0, i32 100, i32 114, i32 122, i32 130, i32 156, i32 170, i32 184], align 4
@__const.damon_test_merge_regions_of.ea = private unnamed_addr constant [8 x i32] [i32 100, i32 112, i32 122, i32 130, i32 156, i32 170, i32 184, i32 230], align 4
@__const.damon_test_merge_regions_of.nrs = private unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 10, i32 10, i32 20, i32 30, i32 1, i32 2], align 4
@__const.damon_test_merge_regions_of.saddrs = private unnamed_addr constant [5 x i32] [i32 0, i32 114, i32 130, i32 156, i32 170], align 4
@__const.damon_test_merge_regions_of.eaddrs = private unnamed_addr constant [5 x i32] [i32 112, i32 130, i32 156, i32 170, i32 230], align 4
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"5u\00", [29 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"saddrs[i]\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eaddrs[i]\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"<=\00", [29 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2u\00", [29 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"4u\00", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.68 = private unnamed_addr constant [30 x i8] c"str__damon__trace_system_name\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 36, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant [36 x i8] c"trace_event_fields_damon_aggregated\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_damon_aggregated\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [27 x i8] c"print_fmt_damon_aggregated\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [23 x i8] c"event_damon_aggregated\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 212, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [11 x i8] c"damon_lock\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"nr_running_ctxs\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 26, i32 12 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 25, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 387, i32 18 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1009, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1063, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 948, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 962, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [32 x i8] c"../include/trace/events/damon.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 12, i32 1 }
@___asan_gen_.180 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 108, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [16 x i8] c"last_nr_regions\00", align 1
@___asan_gen_.183 = private constant [19 x i8] c"../mm/damon/core.c\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 862, i32 22 }
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"damon_test_suite\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 245, i32 27 }
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"damon_test_cases\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 234, i32 26 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 235, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 236, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 237, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 238, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 239, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 240, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 241, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 56, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 57, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 60, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 23, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 24, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 25, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 28, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 110, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 114, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 129, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 130, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 134, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 156, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 157, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 161, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 164, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 203, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 206, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 207, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 222, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [24 x i8] c"../mm/damon/core-test.h\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 229, i32 2 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_suites264, ptr @__bpf_trace_tp_map_damon_aggregated, ptr @__event_damon_aggregated, ptr @__tracepoint_damon_aggregated, ptr @__tracepoint_ptr_damon_aggregated, ptr @event_class_damon_aggregated, ptr @event_damon_aggregated, ptr @str__damon__trace_system_name, ptr @trace_event_fields_damon_aggregated, ptr @trace_event_type_funcs_damon_aggregated, ptr @print_fmt_damon_aggregated, ptr @damon_new_ctx.__key, ptr @.str, ptr @damon_lock, ptr @nr_running_ctxs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @kdamond_split_regions.last_nr_regions, ptr @damon_test_suite, ptr @damon_test_cases, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__damon__trace_system_name to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_damon_aggregated to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_damon_aggregated to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_damon_aggregated to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_damon_aggregated to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @damon_new_ctx.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @damon_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_running_ctxs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdamond_split_regions.last_nr_regions to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @damon_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @damon_test_cases to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_damon_aggregated(ptr nocapture readnone %__data, ptr noundef %t, i32 noundef %target_id, ptr noundef %r, i32 noundef %nr_regions) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_damon_aggregated, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %t, i32 noundef %target_id, ptr noundef %r, i32 noundef %nr_regions) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_damon_aggregated(ptr noundef %__data, ptr nocapture noundef readnone %t, i32 noundef %target_id, ptr nocapture noundef readonly %r, i32 noundef %nr_regions) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #12
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !148

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !149

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #12
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %target_id6 = getelementptr inbounds %struct.trace_event_raw_damon_aggregated, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %target_id6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %target_id, ptr %target_id6, align 4
  %nr_regions7 = getelementptr inbounds %struct.trace_event_raw_damon_aggregated, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %nr_regions7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %nr_regions, ptr %nr_regions7, align 4
  %5 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %r, align 4
  %start8 = getelementptr inbounds %struct.trace_event_raw_damon_aggregated, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %start8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %start8, align 4
  %end = getelementptr inbounds %struct.damon_addr_range, ptr %r, i32 0, i32 1
  %8 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end, align 4
  %end10 = getelementptr inbounds %struct.trace_event_raw_damon_aggregated, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %end10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %end10, align 4
  %nr_accesses = getelementptr inbounds %struct.damon_region, ptr %r, i32 0, i32 2
  %11 = ptrtoint ptr %nr_accesses to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_accesses, align 4
  %nr_accesses11 = getelementptr inbounds %struct.trace_event_raw_damon_aggregated, ptr %call3, i32 0, i32 5
  %13 = ptrtoint ptr %nr_accesses11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %nr_accesses11, align 4
  %age = getelementptr inbounds %struct.damon_region, ptr %r, i32 0, i32 4
  %14 = ptrtoint ptr %age to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %age, align 4
  %age12 = getelementptr inbounds %struct.trace_event_raw_damon_aggregated, ptr %call3, i32 0, i32 6
  %16 = ptrtoint ptr %age12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %age12, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_damon_aggregated(ptr noundef %__data, ptr nocapture noundef readnone %t, i32 noundef %target_id, ptr nocapture noundef readonly %r, i32 noundef %nr_regions) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !150
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !150
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !138) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #12
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !138) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %target_id17 = getelementptr inbounds %struct.trace_event_raw_damon_aggregated, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %target_id17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %target_id, ptr %target_id17, align 4
  %nr_regions18 = getelementptr inbounds %struct.trace_event_raw_damon_aggregated, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %nr_regions18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %nr_regions, ptr %nr_regions18, align 4
  %29 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %r, align 4
  %start19 = getelementptr inbounds %struct.trace_event_raw_damon_aggregated, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %start19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %start19, align 4
  %end = getelementptr inbounds %struct.damon_addr_range, ptr %r, i32 0, i32 1
  %32 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %end, align 4
  %end21 = getelementptr inbounds %struct.trace_event_raw_damon_aggregated, ptr %call13, i32 0, i32 4
  %34 = ptrtoint ptr %end21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %end21, align 4
  %nr_accesses = getelementptr inbounds %struct.damon_region, ptr %r, i32 0, i32 2
  %35 = ptrtoint ptr %nr_accesses to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_accesses, align 4
  %nr_accesses22 = getelementptr inbounds %struct.trace_event_raw_damon_aggregated, ptr %call13, i32 0, i32 5
  %37 = ptrtoint ptr %nr_accesses22 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %nr_accesses22, align 4
  %age = getelementptr inbounds %struct.damon_region, ptr %r, i32 0, i32 4
  %38 = ptrtoint ptr %age to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %age, align 4
  %age23 = getelementptr inbounds %struct.trace_event_raw_damon_aggregated, ptr %call13, i32 0, i32 6
  %40 = ptrtoint ptr %age23 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %age23, align 4
  %41 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rctx, align 4
  %43 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %42, ptr noundef %__data, i64 noundef 1, ptr noundef %44, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_damon_aggregated(ptr noundef %__data, ptr noundef %t, i32 noundef %target_id, ptr noundef %r, i32 noundef %nr_regions) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %t to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %target_id to i64
  %1 = ptrtoint ptr %r to i32
  %conv8 = zext i32 %1 to i64
  %conv12 = zext i32 %nr_regions to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @damon_new_region(i32 noundef %start, i32 noundef %end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 32) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %start, ptr %call7.i, align 8
  %end3 = getelementptr inbounds %struct.damon_addr_range, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %end3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %end, ptr %end3, align 4
  %nr_accesses = getelementptr inbounds %struct.damon_region, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %nr_accesses to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %nr_accesses, align 4
  %list = getelementptr inbounds %struct.damon_region, ptr %call7.i, i32 0, i32 3
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.damon_region, ptr %call7.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %age = getelementptr inbounds %struct.damon_region, ptr %call7.i, i32 0, i32 4
  %6 = ptrtoint ptr %age to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %age, align 8
  %last_nr_accesses = getelementptr inbounds %struct.damon_region, ptr %call7.i, i32 0, i32 5
  %7 = ptrtoint ptr %last_nr_accesses to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %last_nr_accesses, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @damon_add_region(ptr noundef %r, ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.damon_region, ptr %r, i32 0, i32 3
  %regions_list = getelementptr inbounds %struct.damon_target, ptr %t, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.damon_target, ptr %t, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %1, ptr noundef %regions_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 4
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %regions_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.damon_region, ptr %r, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %nr_regions = getelementptr inbounds %struct.damon_target, ptr %t, i32 0, i32 1
  %6 = ptrtoint ptr %nr_regions to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_regions, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %nr_regions, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @damon_destroy_region(ptr noundef %r, ptr nocapture noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %list.i = getelementptr inbounds %struct.damon_region, ptr %r, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.damon_del_region.exit_crit_edge

entry.damon_del_region.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_del_region.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.damon_region, ptr %r, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i.i, align 4
  %2 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %damon_del_region.exit

damon_del_region.exit:                            ; preds = %if.end.i.i.i, %entry.damon_del_region.exit_crit_edge
  %6 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.damon_region, ptr %r, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %nr_regions.i = getelementptr inbounds %struct.damon_target, ptr %t, i32 0, i32 1
  %8 = ptrtoint ptr %nr_regions.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_regions.i, align 4
  %dec.i = add i32 %9, -1
  store i32 %dec.i, ptr %nr_regions.i, align 4
  tail call void @kfree(ptr noundef %r) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @damon_new_scheme(i32 noundef %min_sz_region, i32 noundef %max_sz_region, i32 noundef %min_nr_accesses, i32 noundef %max_nr_accesses, i32 noundef %min_age_region, i32 noundef %max_age_region, i32 noundef %action, ptr nocapture noundef readonly %quota, ptr nocapture noundef readonly %wmarks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 536) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %min_sz_region, ptr %call7.i, align 8
  %max_sz_region2 = getelementptr inbounds %struct.damos, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %max_sz_region2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %max_sz_region, ptr %max_sz_region2, align 4
  %min_nr_accesses3 = getelementptr inbounds %struct.damos, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %min_nr_accesses3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %min_nr_accesses, ptr %min_nr_accesses3, align 8
  %max_nr_accesses4 = getelementptr inbounds %struct.damos, ptr %call7.i, i32 0, i32 3
  %4 = ptrtoint ptr %max_nr_accesses4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %max_nr_accesses, ptr %max_nr_accesses4, align 4
  %min_age_region5 = getelementptr inbounds %struct.damos, ptr %call7.i, i32 0, i32 4
  %5 = ptrtoint ptr %min_age_region5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %min_age_region, ptr %min_age_region5, align 8
  %max_age_region6 = getelementptr inbounds %struct.damos, ptr %call7.i, i32 0, i32 5
  %6 = ptrtoint ptr %max_age_region6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %max_age_region, ptr %max_age_region6, align 4
  %action7 = getelementptr inbounds %struct.damos, ptr %call7.i, i32 0, i32 6
  %7 = ptrtoint ptr %action7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %action, ptr %action7, align 8
  %stat = getelementptr inbounds %struct.damos, ptr %call7.i, i32 0, i32 9
  %8 = call ptr @memset(ptr %stat, i32 0, i32 20)
  %list = getelementptr inbounds %struct.damos, ptr %call7.i, i32 0, i32 10
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.damos, ptr %call7.i, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %prev.i, align 4
  %11 = ptrtoint ptr %quota to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %quota, align 4
  %quota8 = getelementptr inbounds %struct.damos, ptr %call7.i, i32 0, i32 7
  %13 = ptrtoint ptr %quota8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %quota8, align 4
  %sz = getelementptr inbounds %struct.damos_quota, ptr %quota, i32 0, i32 1
  %14 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sz, align 4
  %sz11 = getelementptr inbounds %struct.damos, ptr %call7.i, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %sz11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %sz11, align 8
  %reset_interval = getelementptr inbounds %struct.damos_quota, ptr %quota, i32 0, i32 2
  %17 = ptrtoint ptr %reset_interval to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reset_interval, align 4
  %reset_interval13 = getelementptr inbounds %struct.damos, ptr %call7.i, i32 0, i32 7, i32 2
  %19 = ptrtoint ptr %reset_interval13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %reset_interval13, align 4
  %weight_sz = getelementptr inbounds %struct.damos_quota, ptr %quota, i32 0, i32 3
  %20 = ptrtoint ptr %weight_sz to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %weight_sz, align 4
  %weight_sz15 = getelementptr inbounds %struct.damos, ptr %call7.i, i32 0, i32 7, i32 3
  %22 = ptrtoint ptr %weight_sz15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %weight_sz15, align 8
  %weight_nr_accesses = getelementptr inbounds %struct.damos_quota, ptr %quota, i32 0, i32 4
  %23 = ptrtoint ptr %weight_nr_accesses to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %weight_nr_accesses, align 4
  %weight_nr_accesses17 = getelementptr inbounds %struct.damos, ptr %call7.i, i32 0, i32 7, i32 4
  %25 = ptrtoint ptr %weight_nr_accesses17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %weight_nr_accesses17, align 4
  %weight_age = getelementptr inbounds %struct.damos_quota, ptr %quota, i32 0, i32 5
  %26 = ptrtoint ptr %weight_age to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %weight_age, align 4
  %weight_age19 = getelementptr inbounds %struct.damos, ptr %call7.i, i32 0, i32 7, i32 5
  %28 = ptrtoint ptr %weight_age19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %weight_age19, align 8
  %total_charged_sz = getelementptr inbounds %struct.damos, ptr %call7.i, i32 0, i32 7, i32 6
  %29 = call ptr @memset(ptr %total_charged_sz, i32 0, i32 28)
  %30 = ptrtoint ptr %wmarks to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wmarks, align 4
  %wmarks27 = getelementptr inbounds %struct.damos, ptr %call7.i, i32 0, i32 8
  %32 = ptrtoint ptr %wmarks27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %wmarks27, align 4
  %interval = getelementptr inbounds %struct.damos_watermarks, ptr %wmarks, i32 0, i32 1
  %33 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %interval, align 4
  %interval30 = getelementptr inbounds %struct.damos, ptr %call7.i, i32 0, i32 8, i32 1
  %35 = ptrtoint ptr %interval30 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %interval30, align 8
  %high = getelementptr inbounds %struct.damos_watermarks, ptr %wmarks, i32 0, i32 2
  %36 = ptrtoint ptr %high to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %high, align 4
  %high32 = getelementptr inbounds %struct.damos, ptr %call7.i, i32 0, i32 8, i32 2
  %38 = ptrtoint ptr %high32 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %high32, align 4
  %mid = getelementptr inbounds %struct.damos_watermarks, ptr %wmarks, i32 0, i32 3
  %39 = ptrtoint ptr %mid to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mid, align 4
  %mid34 = getelementptr inbounds %struct.damos, ptr %call7.i, i32 0, i32 8, i32 3
  %41 = ptrtoint ptr %mid34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %mid34, align 8
  %low = getelementptr inbounds %struct.damos_watermarks, ptr %wmarks, i32 0, i32 4
  %42 = ptrtoint ptr %low to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %low, align 4
  %low36 = getelementptr inbounds %struct.damos, ptr %call7.i, i32 0, i32 8, i32 4
  %44 = ptrtoint ptr %low36 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %low36, align 4
  %activated = getelementptr inbounds %struct.damos, ptr %call7.i, i32 0, i32 8, i32 5
  %45 = ptrtoint ptr %activated to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %activated, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @damon_add_scheme(ptr noundef %ctx, ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.damos, ptr %s, i32 0, i32 10
  %schemes = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %1, ptr noundef %schemes) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 4
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %schemes, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.damos, ptr %s, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @damon_destroy_scheme(ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %list.i = getelementptr inbounds %struct.damos, ptr %s, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.damon_del_scheme.exit_crit_edge

entry.damon_del_scheme.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_del_scheme.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.damos, ptr %s, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i.i, align 4
  %2 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %damon_del_scheme.exit

damon_del_scheme.exit:                            ; preds = %if.end.i.i.i, %entry.damon_del_scheme.exit_crit_edge
  %6 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.damos, ptr %s, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %s) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @damon_new_target(i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 24) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %id, ptr %call7.i, align 8
  %nr_regions = getelementptr inbounds %struct.damon_target, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %nr_regions to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %nr_regions, align 4
  %regions_list = getelementptr inbounds %struct.damon_target, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %regions_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %regions_list, ptr %regions_list, align 8
  %prev.i = getelementptr inbounds %struct.damon_target, ptr %call7.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %regions_list, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @damon_add_target(ptr noundef %ctx, ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.damon_target, ptr %t, i32 0, i32 3
  %adaptive_targets = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %1, ptr noundef %adaptive_targets) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 4
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %adaptive_targets, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.damon_target, ptr %t, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @damon_targets_empty(ptr noundef %ctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %adaptive_targets = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 11
  %0 = ptrtoint ptr %adaptive_targets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %adaptive_targets, align 4
  %cmp.i = icmp eq ptr %1, %adaptive_targets
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @damon_free_target(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regions_list = getelementptr inbounds %struct.damon_target, ptr %t, i32 0, i32 2
  %0 = ptrtoint ptr %regions_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regions_list, align 4
  %cmp.not19 = icmp eq ptr %1, %regions_list
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in20 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %r.0 = getelementptr i8, ptr %.pn.in20, i32 -16
  %2 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in20, align 4
  tail call void @kfree(ptr noundef %r.0) #12
  %cmp.not = icmp eq ptr %.pn, %regions_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %t) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @damon_destroy_target(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %list.i = getelementptr inbounds %struct.damon_target, ptr %t, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.damon_del_target.exit_crit_edge

entry.damon_del_target.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_del_target.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.damon_target, ptr %t, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i.i, align 4
  %2 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %damon_del_target.exit

damon_del_target.exit:                            ; preds = %if.end.i.i.i, %entry.damon_del_target.exit_crit_edge
  %6 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.damon_target, ptr %t, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %regions_list.i = getelementptr inbounds %struct.damon_target, ptr %t, i32 0, i32 2
  %8 = ptrtoint ptr %regions_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regions_list.i, align 4
  %cmp.not19.i = icmp eq ptr %9, %regions_list.i
  br i1 %cmp.not19.i, label %damon_del_target.exit.damon_free_target.exit_crit_edge, label %damon_del_target.exit.for.body.i_crit_edge

damon_del_target.exit.for.body.i_crit_edge:       ; preds = %damon_del_target.exit
  br label %for.body.i

damon_del_target.exit.damon_free_target.exit_crit_edge: ; preds = %damon_del_target.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_free_target.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %damon_del_target.exit.for.body.i_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %9, %damon_del_target.exit.for.body.i_crit_edge ]
  %r.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -16
  %10 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 4
  tail call void @kfree(ptr noundef %r.0.i) #12
  %cmp.not.i = icmp eq ptr %.pn.i, %regions_list.i
  br i1 %cmp.not.i, label %for.body.i.damon_free_target.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.damon_free_target.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_free_target.exit

damon_free_target.exit:                           ; preds = %for.body.i.damon_free_target.exit_crit_edge, %damon_del_target.exit.damon_free_target.exit_crit_edge
  tail call void @kfree(ptr noundef %t) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @damon_nr_regions(ptr nocapture noundef readonly %t) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_regions = getelementptr inbounds %struct.damon_target, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %nr_regions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_regions, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @damon_new_ctx() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 224) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 5000, ptr %call7.i.i, align 8
  %aggr_interval = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %aggr_interval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 100000, ptr %aggr_interval, align 4
  %primitive_update_interval = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %primitive_update_interval to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 60000000, ptr %primitive_update_interval, align 8
  %last_aggregation = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i, i32 0, i32 3
  tail call void @ktime_get_coarse_ts64(ptr noundef %last_aggregation) #12
  %last_primitive_update = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i, i32 0, i32 4
  %4 = call ptr @memcpy(ptr %last_primitive_update, ptr %last_aggregation, i32 16)
  %kdamond_lock = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %kdamond_lock, ptr noundef nonnull @.str, ptr noundef nonnull @damon_new_ctx.__key) #12
  %min_nr_regions = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i, i32 0, i32 9
  %5 = ptrtoint ptr %min_nr_regions to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %min_nr_regions, align 8
  %max_nr_regions = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %max_nr_regions to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1000, ptr %max_nr_regions, align 4
  %adaptive_targets = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i, i32 0, i32 11
  %7 = ptrtoint ptr %adaptive_targets to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %adaptive_targets, ptr %adaptive_targets, align 8
  %prev.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %adaptive_targets, ptr %prev.i, align 4
  %schemes = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i, i32 0, i32 12
  %9 = ptrtoint ptr %schemes to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %schemes, ptr %schemes, align 8
  %prev.i14 = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %prev.i14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %schemes, ptr %prev.i14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_coarse_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @damon_destroy_ctx(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cleanup.i = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %cleanup.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cleanup.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %1(ptr noundef %ctx) #12
  br label %damon_destroy_targets.exit

if.end.i:                                         ; preds = %entry
  %adaptive_targets.i = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 11
  %2 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adaptive_targets.i, align 8
  %cmp.not24.i = icmp eq ptr %3, %adaptive_targets.i
  br i1 %cmp.not24.i, label %if.end.i.damon_destroy_targets.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.damon_destroy_targets.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_destroy_targets.exit

for.body.i:                                       ; preds = %damon_destroy_target.exit.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn.in25.i = phi ptr [ %.pn.i, %damon_destroy_target.exit.i.for.body.i_crit_edge ], [ %3, %if.end.i.for.body.i_crit_edge ]
  %t.0.i = getelementptr i8, ptr %.pn.in25.i, i32 -16
  %4 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in25.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %for.body.i.damon_del_target.exit.i.i_crit_edge

for.body.i.damon_del_target.exit.i.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_del_target.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i.i = getelementptr i8, ptr %.pn.in25.i, i32 4
  %5 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %7 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in25.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %damon_del_target.exit.i.i

damon_del_target.exit.i.i:                        ; preds = %if.end.i.i.i.i.i, %for.body.i.damon_del_target.exit.i.i_crit_edge
  %11 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25.i, align 4
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in25.i, i32 4
  %12 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  %regions_list.i.i.i = getelementptr i8, ptr %.pn.in25.i, i32 -8
  %13 = ptrtoint ptr %regions_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regions_list.i.i.i, align 4
  %cmp.not19.i.i.i = icmp eq ptr %14, %regions_list.i.i.i
  br i1 %cmp.not19.i.i.i, label %damon_del_target.exit.i.i.damon_destroy_target.exit.i_crit_edge, label %damon_del_target.exit.i.i.for.body.i.i.i_crit_edge

damon_del_target.exit.i.i.for.body.i.i.i_crit_edge: ; preds = %damon_del_target.exit.i.i
  br label %for.body.i.i.i

damon_del_target.exit.i.i.damon_destroy_target.exit.i_crit_edge: ; preds = %damon_del_target.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_destroy_target.exit.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %damon_del_target.exit.i.i.for.body.i.i.i_crit_edge
  %.pn.in20.i.i.i = phi ptr [ %.pn.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %14, %damon_del_target.exit.i.i.for.body.i.i.i_crit_edge ]
  %r.0.i.i.i = getelementptr i8, ptr %.pn.in20.i.i.i, i32 -16
  %15 = ptrtoint ptr %.pn.in20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i.i.i = load ptr, ptr %.pn.in20.i.i.i, align 4
  tail call void @kfree(ptr noundef %r.0.i.i.i) #12
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %regions_list.i.i.i
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.damon_destroy_target.exit.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.body.i.i.i.damon_destroy_target.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_destroy_target.exit.i

damon_destroy_target.exit.i:                      ; preds = %for.body.i.i.i.damon_destroy_target.exit.i_crit_edge, %damon_del_target.exit.i.i.damon_destroy_target.exit.i_crit_edge
  tail call void @kfree(ptr noundef %t.0.i) #12
  %cmp.not.i = icmp eq ptr %.pn.i, %adaptive_targets.i
  br i1 %cmp.not.i, label %damon_destroy_target.exit.i.damon_destroy_targets.exit_crit_edge, label %damon_destroy_target.exit.i.for.body.i_crit_edge

damon_destroy_target.exit.i.for.body.i_crit_edge: ; preds = %damon_destroy_target.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

damon_destroy_target.exit.i.damon_destroy_targets.exit_crit_edge: ; preds = %damon_destroy_target.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_destroy_targets.exit

damon_destroy_targets.exit:                       ; preds = %damon_destroy_target.exit.i.damon_destroy_targets.exit_crit_edge, %if.end.i.damon_destroy_targets.exit_crit_edge, %if.then.i
  %schemes = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 12
  %16 = ptrtoint ptr %schemes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %schemes, align 8
  %cmp.not20 = icmp eq ptr %17, %schemes
  br i1 %cmp.not20, label %damon_destroy_targets.exit.for.end_crit_edge, label %damon_destroy_targets.exit.for.body_crit_edge

damon_destroy_targets.exit.for.body_crit_edge:    ; preds = %damon_destroy_targets.exit
  br label %for.body

damon_destroy_targets.exit.for.end_crit_edge:     ; preds = %damon_destroy_targets.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %damon_destroy_scheme.exit.for.body_crit_edge, %damon_destroy_targets.exit.for.body_crit_edge
  %.pn.in21 = phi ptr [ %.pn, %damon_destroy_scheme.exit.for.body_crit_edge ], [ %17, %damon_destroy_targets.exit.for.body_crit_edge ]
  %s.0 = getelementptr i8, ptr %.pn.in21, i32 -528
  %18 = ptrtoint ptr %.pn.in21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn.in21, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in21) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.damon_destroy_scheme.exit_crit_edge

for.body.damon_destroy_scheme.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_destroy_scheme.exit

if.end.i.i.i.i:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i19 = getelementptr i8, ptr %.pn.in21, i32 4
  %19 = ptrtoint ptr %prev.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i.i19, align 4
  %21 = ptrtoint ptr %.pn.in21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.pn.in21, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %damon_destroy_scheme.exit

damon_destroy_scheme.exit:                        ; preds = %if.end.i.i.i.i, %for.body.damon_destroy_scheme.exit_crit_edge
  %25 = ptrtoint ptr %.pn.in21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in21, align 4
  %prev.i.i.i = getelementptr i8, ptr %.pn.in21, i32 4
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %s.0) #12
  %cmp.not = icmp eq ptr %.pn, %schemes
  br i1 %cmp.not, label %damon_destroy_scheme.exit.for.end_crit_edge, label %damon_destroy_scheme.exit.for.body_crit_edge

damon_destroy_scheme.exit.for.body_crit_edge:     ; preds = %damon_destroy_scheme.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

damon_destroy_scheme.exit.for.end_crit_edge:      ; preds = %damon_destroy_scheme.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %damon_destroy_scheme.exit.for.end_crit_edge, %damon_destroy_targets.exit.for.end_crit_edge
  tail call void @kfree(ptr noundef %ctx) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @damon_set_targets(ptr noundef %ctx, ptr nocapture noundef readonly %ids, i32 noundef %nr_ids) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cleanup.i = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %cleanup.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cleanup.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %1(ptr noundef %ctx) #12
  br label %damon_destroy_targets.exit

if.end.i:                                         ; preds = %entry
  %adaptive_targets.i = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 11
  %2 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adaptive_targets.i, align 8
  %cmp.not24.i = icmp eq ptr %3, %adaptive_targets.i
  br i1 %cmp.not24.i, label %if.end.i.damon_destroy_targets.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.damon_destroy_targets.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_destroy_targets.exit

for.body.i:                                       ; preds = %damon_destroy_target.exit.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn.in25.i = phi ptr [ %.pn.i, %damon_destroy_target.exit.i.for.body.i_crit_edge ], [ %3, %if.end.i.for.body.i_crit_edge ]
  %t.0.i = getelementptr i8, ptr %.pn.in25.i, i32 -16
  %4 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in25.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %for.body.i.damon_del_target.exit.i.i_crit_edge

for.body.i.damon_del_target.exit.i.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_del_target.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i.i = getelementptr i8, ptr %.pn.in25.i, i32 4
  %5 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %7 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in25.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %damon_del_target.exit.i.i

damon_del_target.exit.i.i:                        ; preds = %if.end.i.i.i.i.i, %for.body.i.damon_del_target.exit.i.i_crit_edge
  %11 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25.i, align 4
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in25.i, i32 4
  %12 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  %regions_list.i.i.i = getelementptr i8, ptr %.pn.in25.i, i32 -8
  %13 = ptrtoint ptr %regions_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regions_list.i.i.i, align 4
  %cmp.not19.i.i.i = icmp eq ptr %14, %regions_list.i.i.i
  br i1 %cmp.not19.i.i.i, label %damon_del_target.exit.i.i.damon_destroy_target.exit.i_crit_edge, label %damon_del_target.exit.i.i.for.body.i.i.i_crit_edge

damon_del_target.exit.i.i.for.body.i.i.i_crit_edge: ; preds = %damon_del_target.exit.i.i
  br label %for.body.i.i.i

damon_del_target.exit.i.i.damon_destroy_target.exit.i_crit_edge: ; preds = %damon_del_target.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_destroy_target.exit.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %damon_del_target.exit.i.i.for.body.i.i.i_crit_edge
  %.pn.in20.i.i.i = phi ptr [ %.pn.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %14, %damon_del_target.exit.i.i.for.body.i.i.i_crit_edge ]
  %r.0.i.i.i = getelementptr i8, ptr %.pn.in20.i.i.i, i32 -16
  %15 = ptrtoint ptr %.pn.in20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i.i.i = load ptr, ptr %.pn.in20.i.i.i, align 4
  tail call void @kfree(ptr noundef %r.0.i.i.i) #12
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %regions_list.i.i.i
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.damon_destroy_target.exit.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.body.i.i.i.damon_destroy_target.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_destroy_target.exit.i

damon_destroy_target.exit.i:                      ; preds = %for.body.i.i.i.damon_destroy_target.exit.i_crit_edge, %damon_del_target.exit.i.i.damon_destroy_target.exit.i_crit_edge
  tail call void @kfree(ptr noundef %t.0.i) #12
  %cmp.not.i = icmp eq ptr %.pn.i, %adaptive_targets.i
  br i1 %cmp.not.i, label %damon_destroy_target.exit.i.damon_destroy_targets.exit_crit_edge, label %damon_destroy_target.exit.i.for.body.i_crit_edge

damon_destroy_target.exit.i.for.body.i_crit_edge: ; preds = %damon_destroy_target.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

damon_destroy_target.exit.i.damon_destroy_targets.exit_crit_edge: ; preds = %damon_destroy_target.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_destroy_targets.exit

damon_destroy_targets.exit:                       ; preds = %damon_destroy_target.exit.i.damon_destroy_targets.exit_crit_edge, %if.end.i.damon_destroy_targets.exit_crit_edge, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_ids)
  %cmp38 = icmp sgt i32 %nr_ids, 0
  br i1 %cmp38, label %for.body.lr.ph, label %damon_destroy_targets.exit.cleanup_crit_edge

damon_destroy_targets.exit.cleanup_crit_edge:     ; preds = %damon_destroy_targets.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %damon_destroy_targets.exit
  %adaptive_targets.i35 = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 11
  %prev.i.i36 = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 11, i32 1
  br label %for.body

for.body:                                         ; preds = %damon_add_target.exit.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %damon_add_target.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %ids, i32 %i.039
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 24) #15
  %tobool.not.i31 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i31, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %19 = ptrtoint ptr %adaptive_targets.i35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adaptive_targets.i35, align 8
  %cmp9.not40 = icmp eq ptr %20, %adaptive_targets.i35
  br i1 %cmp9.not40, label %if.then.cleanup_crit_edge, label %if.then.for.body10_crit_edge

if.then.for.body10_crit_edge:                     ; preds = %if.then
  br label %for.body10

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body10:                                       ; preds = %damon_destroy_target.exit.for.body10_crit_edge, %if.then.for.body10_crit_edge
  %.pn.in41 = phi ptr [ %.pn, %damon_destroy_target.exit.for.body10_crit_edge ], [ %20, %if.then.for.body10_crit_edge ]
  %t.0 = getelementptr i8, ptr %.pn.in41, i32 -16
  %21 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn.in41, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in41) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body10.damon_del_target.exit.i_crit_edge

for.body10.damon_del_target.exit.i_crit_edge:     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_del_target.exit.i

if.end.i.i.i.i:                                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i34 = getelementptr i8, ptr %.pn.in41, i32 4
  %22 = ptrtoint ptr %prev.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i.i34, align 4
  %24 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %.pn.in41, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %damon_del_target.exit.i

damon_del_target.exit.i:                          ; preds = %if.end.i.i.i.i, %for.body10.damon_del_target.exit.i_crit_edge
  %28 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in41, align 4
  %prev.i.i.i = getelementptr i8, ptr %.pn.in41, i32 4
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %regions_list.i.i = getelementptr i8, ptr %.pn.in41, i32 -8
  %30 = ptrtoint ptr %regions_list.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regions_list.i.i, align 4
  %cmp.not19.i.i = icmp eq ptr %31, %regions_list.i.i
  br i1 %cmp.not19.i.i, label %damon_del_target.exit.i.damon_destroy_target.exit_crit_edge, label %damon_del_target.exit.i.for.body.i.i_crit_edge

damon_del_target.exit.i.for.body.i.i_crit_edge:   ; preds = %damon_del_target.exit.i
  br label %for.body.i.i

damon_del_target.exit.i.damon_destroy_target.exit_crit_edge: ; preds = %damon_del_target.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_destroy_target.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %damon_del_target.exit.i.for.body.i.i_crit_edge
  %.pn.in20.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %31, %damon_del_target.exit.i.for.body.i.i_crit_edge ]
  %r.0.i.i = getelementptr i8, ptr %.pn.in20.i.i, i32 -16
  %32 = ptrtoint ptr %.pn.in20.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.i.i = load ptr, ptr %.pn.in20.i.i, align 4
  tail call void @kfree(ptr noundef %r.0.i.i) #12
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %regions_list.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.damon_destroy_target.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.damon_destroy_target.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_destroy_target.exit

damon_destroy_target.exit:                        ; preds = %for.body.i.i.damon_destroy_target.exit_crit_edge, %damon_del_target.exit.i.damon_destroy_target.exit_crit_edge
  tail call void @kfree(ptr noundef %t.0) #12
  %cmp9.not = icmp eq ptr %.pn, %adaptive_targets.i35
  br i1 %cmp9.not, label %damon_destroy_target.exit.cleanup_crit_edge, label %damon_destroy_target.exit.for.body10_crit_edge

damon_destroy_target.exit.for.body10_crit_edge:   ; preds = %damon_destroy_target.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body10

damon_destroy_target.exit.cleanup_crit_edge:      ; preds = %damon_destroy_target.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %17, ptr %call7.i.i, align 8
  %nr_regions.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %nr_regions.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %nr_regions.i, align 4
  %regions_list.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %regions_list.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %regions_list.i, ptr %regions_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %regions_list.i, ptr %prev.i.i, align 4
  %list.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %prev.i.i36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i36, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %38, ptr noundef %adaptive_targets.i35) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.damon_add_target.exit_crit_edge

if.end.damon_add_target.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_add_target.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %prev.i.i36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %list.i, ptr %prev.i.i36, align 4
  %40 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %adaptive_targets.i35, ptr %list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %list.i, ptr %38, align 4
  br label %damon_add_target.exit

damon_add_target.exit:                            ; preds = %if.end.i.i.i, %if.end.damon_add_target.exit_crit_edge
  %inc = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, %nr_ids
  br i1 %exitcond.not, label %damon_add_target.exit.cleanup_crit_edge, label %damon_add_target.exit.for.body_crit_edge

damon_add_target.exit.for.body_crit_edge:         ; preds = %damon_add_target.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

damon_add_target.exit.cleanup_crit_edge:          ; preds = %damon_add_target.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %damon_add_target.exit.cleanup_crit_edge, %damon_destroy_target.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge, %damon_destroy_targets.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ 0, %damon_destroy_targets.exit.cleanup_crit_edge ], [ -12, %damon_destroy_target.exit.cleanup_crit_edge ], [ 0, %damon_add_target.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @damon_set_attrs(ptr nocapture noundef writeonly %ctx, i32 noundef %sample_int, i32 noundef %aggr_int, i32 noundef %primitive_upd_int, i32 noundef %min_nr_reg, i32 noundef %max_nr_reg) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %min_nr_reg)
  %cmp = icmp ult i32 %min_nr_reg, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %min_nr_reg, i32 %max_nr_reg)
  %cmp1 = icmp ugt i32 %min_nr_reg, %max_nr_reg
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end3

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %sample_int, ptr %ctx, align 8
  %aggr_interval = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 1
  %1 = ptrtoint ptr %aggr_interval to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %aggr_int, ptr %aggr_interval, align 4
  %primitive_update_interval = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %primitive_update_interval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %primitive_upd_int, ptr %primitive_update_interval, align 8
  %min_nr_regions = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 9
  %3 = ptrtoint ptr %min_nr_regions to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %min_nr_reg, ptr %min_nr_regions, align 8
  %max_nr_regions = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 10
  %4 = ptrtoint ptr %max_nr_regions to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %max_nr_reg, ptr %max_nr_regions, align 4
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @damon_set_schemes(ptr noundef %ctx, ptr nocapture noundef readonly %schemes, i32 noundef %nr_schemes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %schemes1 = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 12
  %0 = ptrtoint ptr %schemes1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %schemes1, align 8
  %cmp.not27 = icmp eq ptr %1, %schemes1
  br i1 %cmp.not27, label %entry.for.cond14.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond14.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %damon_destroy_scheme.exit.for.cond14.preheader_crit_edge, %entry.for.cond14.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_schemes)
  %cmp1530 = icmp sgt i32 %nr_schemes, 0
  br i1 %cmp1530, label %for.body16.lr.ph, label %for.cond14.preheader.for.end18_crit_edge

for.cond14.preheader.for.end18_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end18

for.body16.lr.ph:                                 ; preds = %for.cond14.preheader
  %prev.i.i = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 12, i32 1
  br label %for.body16

for.body:                                         ; preds = %damon_destroy_scheme.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in28 = phi ptr [ %.pn, %damon_destroy_scheme.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %s.0 = getelementptr i8, ptr %.pn.in28, i32 -528
  %2 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in28, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in28) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.damon_destroy_scheme.exit_crit_edge

for.body.damon_destroy_scheme.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_destroy_scheme.exit

if.end.i.i.i.i:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in28, i32 4
  %3 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i.i, align 4
  %5 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in28, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %damon_destroy_scheme.exit

damon_destroy_scheme.exit:                        ; preds = %if.end.i.i.i.i, %for.body.damon_destroy_scheme.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in28, align 4
  %prev.i.i.i = getelementptr i8, ptr %.pn.in28, i32 4
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %s.0) #12
  %cmp.not = icmp eq ptr %.pn, %schemes1
  br i1 %cmp.not, label %damon_destroy_scheme.exit.for.cond14.preheader_crit_edge, label %damon_destroy_scheme.exit.for.body_crit_edge

damon_destroy_scheme.exit.for.body_crit_edge:     ; preds = %damon_destroy_scheme.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

damon_destroy_scheme.exit.for.cond14.preheader_crit_edge: ; preds = %damon_destroy_scheme.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond14.preheader

for.body16:                                       ; preds = %damon_add_scheme.exit.for.body16_crit_edge, %for.body16.lr.ph
  %i.031 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc, %damon_add_scheme.exit.for.body16_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %schemes, i32 %i.031
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %list.i = getelementptr inbounds %struct.damos, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %14, ptr noundef %schemes1) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body16.damon_add_scheme.exit_crit_edge

for.body16.damon_add_scheme.exit_crit_edge:       ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_add_scheme.exit

if.end.i.i.i:                                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list.i, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %schemes1, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.damos, ptr %12, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list.i, ptr %14, align 4
  br label %damon_add_scheme.exit

damon_add_scheme.exit:                            ; preds = %if.end.i.i.i, %for.body16.damon_add_scheme.exit_crit_edge
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %nr_schemes
  br i1 %exitcond.not, label %damon_add_scheme.exit.for.end18_crit_edge, label %damon_add_scheme.exit.for.body16_crit_edge

damon_add_scheme.exit.for.body16_crit_edge:       ; preds = %damon_add_scheme.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16

damon_add_scheme.exit.for.end18_crit_edge:        ; preds = %damon_add_scheme.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end18

for.end18:                                        ; preds = %damon_add_scheme.exit.for.end18_crit_edge, %for.cond14.preheader.for.end18_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @damon_nr_running_ctxs() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @damon_lock, i32 noundef 0) #12
  %0 = load i32, ptr @nr_running_ctxs, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @damon_lock) #12
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @damon_start(ptr nocapture noundef readonly %ctxs, i32 noundef %nr_ctxs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @damon_lock, i32 noundef 0) #12
  %0 = load i32, ptr @nr_running_ctxs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_ctxs)
  %cmp17 = icmp sgt i32 %nr_ctxs, 0
  br i1 %cmp17, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %__damon_start.exit.thread11.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.018 = phi i32 [ %inc4, %__damon_start.exit.thread11.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %ctxs, i32 %i.018
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %kdamond_lock.i = getelementptr inbounds %struct.damon_ctx, ptr %2, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %kdamond_lock.i, i32 noundef 0) #12
  %kdamond.i = getelementptr inbounds %struct.damon_ctx, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %kdamond.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %kdamond.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then.i, label %for.body.for.end.sink.split_crit_edge

for.body.for.end.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.sink.split

if.then.i:                                        ; preds = %for.body
  %5 = load i32, ptr @nr_running_ctxs, align 4
  %call.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @kdamond_fn, ptr noundef %2, i32 noundef -1, ptr noundef nonnull @.str.12, i32 noundef %5) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %__damon_start.exit, label %__damon_start.exit.thread11

__damon_start.exit.thread11:                      ; preds = %if.then.i
  %call3.i = tail call i32 @wake_up_process(ptr noundef %call.i) #12
  %6 = ptrtoint ptr %kdamond.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %kdamond.i, align 8
  tail call void @mutex_unlock(ptr noundef %kdamond_lock.i) #12
  %7 = load i32, ptr @nr_running_ctxs, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr @nr_running_ctxs, align 4
  %inc4 = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc4, %nr_ctxs
  br i1 %exitcond.not, label %__damon_start.exit.thread11.cleanup_crit_edge, label %__damon_start.exit.thread11.for.body_crit_edge

__damon_start.exit.thread11.for.body_crit_edge:   ; preds = %__damon_start.exit.thread11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

__damon_start.exit.thread11.cleanup_crit_edge:    ; preds = %__damon_start.exit.thread11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

__damon_start.exit:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %call.i to i32
  %9 = ptrtoint ptr %kdamond.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %kdamond.i, align 8
  br label %for.end.sink.split

for.end.sink.split:                               ; preds = %__damon_start.exit, %for.body.for.end.sink.split_crit_edge
  %err.1.ph = phi i32 [ %8, %__damon_start.exit ], [ -16, %for.body.for.end.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %kdamond_lock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end.sink.split, %__damon_start.exit.thread11.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %err.1.ph, %for.end.sink.split ], [ 0, %__damon_start.exit.thread11.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @damon_lock) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @damon_stop(ptr nocapture noundef readonly %ctxs, i32 noundef %nr_ctxs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_ctxs)
  %cmp8 = icmp sgt i32 %nr_ctxs, 0
  br i1 %cmp8, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %ctxs, i32 %i.09
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %kdamond_lock.i = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %kdamond_lock.i, i32 noundef 0) #12
  %kdamond.i = getelementptr inbounds %struct.damon_ctx, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %kdamond.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kdamond.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %__damon_stop.exit, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #12, !srcloc !151
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !149

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_task_struct.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !148

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_task_struct.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_task_struct.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %get_task_struct.exit.i

get_task_struct.exit.i:                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_task_struct.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %kdamond_lock.i) #12
  %call2.i = tail call i32 @kthread_stop(ptr noundef nonnull %3) #12
  %call.i.i.i.i.i.i11.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !152
  tail call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #12, !srcloc !153
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %get_task_struct.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i12.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i12.i, label %if.end5.i.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i.i, !prof !148

if.end5.i.i.i.i.i.for.inc_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef 3) #12
  br label %for.inc

if.then.i.i:                                      ; preds = %get_task_struct.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !154
  tail call void @__put_task_struct(ptr noundef nonnull %3) #12
  br label %for.inc

__damon_stop.exit:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %kdamond_lock.i) #12
  br label %cleanup

for.inc:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %nr_ctxs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %__damon_stop.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %__damon_stop.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_damon_aggregated(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %target_id = getelementptr inbounds %struct.trace_event_raw_damon_aggregated, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %target_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target_id, align 4
  %nr_regions = getelementptr inbounds %struct.trace_event_raw_damon_aggregated, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %nr_regions to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_regions, align 4
  %start = getelementptr inbounds %struct.trace_event_raw_damon_aggregated, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start, align 4
  %end = getelementptr inbounds %struct.trace_event_raw_damon_aggregated, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end, align 4
  %nr_accesses = getelementptr inbounds %struct.trace_event_raw_damon_aggregated, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %nr_accesses to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_accesses, align 4
  %age = getelementptr inbounds %struct.trace_event_raw_damon_aggregated, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %age to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %age, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.9, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
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
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdamond_fn(ptr noundef %data) #0 align 64 {
entry:
  %now.i.i307 = alloca %struct.timespec64, align 8
  %begin.i.i = alloca %struct.timespec64, align 8
  %end4.i.i = alloca %struct.timespec64, align 8
  %now.i.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kdamond_fn.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kdamond_fn, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !155

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !138) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kdamond_fn.__UNIQUE_ID_ddebug260, ptr noundef nonnull @.str.17, i32 noundef %5) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %primitive = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 7
  %6 = ptrtoint ptr %primitive to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %primitive, align 8
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %do.end.if.end8_crit_edge, label %if.then5

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %7(ptr noundef %data) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %do.end.if.end8_crit_edge
  %before_start = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %before_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %before_start, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.end8.if.end15_crit_edge, label %land.lhs.true

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = tail call i32 %9(ptr noundef %data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp ne i32 %call12, 0
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true, %if.end8.if.end15_crit_edge
  %done.0.off0 = phi i1 [ false, %if.end8.if.end15_crit_edge ], [ %tobool13.not, %land.lhs.true ]
  %adaptive_targets.i = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 11
  %10 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn46.i = load ptr, ptr %adaptive_targets.i, align 4
  %cmp.not47.i = icmp eq ptr %.pn46.i, %adaptive_targets.i
  br i1 %cmp.not47.i, label %if.end15.for.end24.i_crit_edge, label %if.end15.for.body.i_crit_edge

if.end15.for.body.i_crit_edge:                    ; preds = %if.end15
  br label %for.body.i

if.end15.for.end24.i_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end24.i

for.cond.loopexit.i:                              ; preds = %for.body11.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %sz.1.lcssa.i = phi i32 [ %sz.048.i, %for.body.i.for.cond.loopexit.i_crit_edge ], [ %add.i, %for.body11.i.for.cond.loopexit.i_crit_edge ]
  %11 = ptrtoint ptr %.pn49.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn49.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %adaptive_targets.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.for.end24.i_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond.loopexit.i.for.end24.i_crit_edge:        ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end24.i

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %if.end15.for.body.i_crit_edge
  %.pn49.i = phi ptr [ %.pn.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %.pn46.i, %if.end15.for.body.i_crit_edge ]
  %sz.048.i = phi i32 [ %sz.1.lcssa.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ 0, %if.end15.for.body.i_crit_edge ]
  %regions_list.i = getelementptr i8, ptr %.pn49.i, i32 -8
  %12 = ptrtoint ptr %regions_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn4142.i = load ptr, ptr %regions_list.i, align 4
  %cmp9.not43.i = icmp eq ptr %.pn4142.i, %regions_list.i
  br i1 %cmp9.not43.i, label %for.body.i.for.cond.loopexit.i_crit_edge, label %for.body.i.for.body11.i_crit_edge

for.body.i.for.body11.i_crit_edge:                ; preds = %for.body.i
  br label %for.body11.i

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit.i

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %for.body.i.for.body11.i_crit_edge
  %.pn4145.i = phi ptr [ %.pn41.i, %for.body11.i.for.body11.i_crit_edge ], [ %.pn4142.i, %for.body.i.for.body11.i_crit_edge ]
  %sz.144.i = phi i32 [ %add.i, %for.body11.i.for.body11.i_crit_edge ], [ %sz.048.i, %for.body.i.for.body11.i_crit_edge ]
  %r.0.i = getelementptr i8, ptr %.pn4145.i, i32 -16
  %end.i = getelementptr i8, ptr %.pn4145.i, i32 -12
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i, align 4
  %15 = ptrtoint ptr %r.0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %r.0.i, align 4
  %sub.i = add i32 %14, %sz.144.i
  %add.i = sub i32 %sub.i, %16
  %17 = ptrtoint ptr %.pn4145.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn41.i = load ptr, ptr %.pn4145.i, align 4
  %cmp9.not.i = icmp eq ptr %.pn41.i, %regions_list.i
  br i1 %cmp9.not.i, label %for.body11.i.for.cond.loopexit.i_crit_edge, label %for.body11.i.for.body11.i_crit_edge

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.i

for.body11.i.for.cond.loopexit.i_crit_edge:       ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit.i

for.end24.i:                                      ; preds = %for.cond.loopexit.i.for.end24.i_crit_edge, %if.end15.for.end24.i_crit_edge
  %sz.0.lcssa.i = phi i32 [ 0, %if.end15.for.end24.i_crit_edge ], [ %sz.1.lcssa.i, %for.cond.loopexit.i.for.end24.i_crit_edge ]
  %min_nr_regions.i = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 9
  %18 = ptrtoint ptr %min_nr_regions.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %min_nr_regions.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %for.end24.i.damon_region_sz_limit.exit_crit_edge, label %if.then.i

for.end24.i.damon_region_sz_limit.exit_crit_edge: ; preds = %for.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_region_sz_limit.exit

if.then.i:                                        ; preds = %for.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %div.i = udiv i32 %sz.0.lcssa.i, %19
  br label %damon_region_sz_limit.exit

damon_region_sz_limit.exit:                       ; preds = %if.then.i, %for.end24.i.damon_region_sz_limit.exit_crit_edge
  %sz.2.i = phi i32 [ %div.i, %if.then.i ], [ %sz.0.lcssa.i, %for.end24.i.damon_region_sz_limit.exit_crit_edge ]
  %call.i389 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call.i389, label %damon_region_sz_limit.exit.while.end_crit_edge, label %if.end.i.lr.ph

damon_region_sz_limit.exit.while.end_crit_edge:   ; preds = %damon_region_sz_limit.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end.i.lr.ph:                                   ; preds = %damon_region_sz_limit.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz.2.i)
  %cmp26.i = icmp eq i32 %sz.2.i, 0
  %spec.store.select.i = select i1 %cmp26.i, i32 1, i32 %sz.2.i
  %target_valid.i = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 7, i32 7
  %schemes.i = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 12
  %prepare_access_checks = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 7, i32 2
  %after_sampling = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 8, i32 2
  %check_accesses = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 7, i32 3
  %last_aggregation.i = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 3
  %aggr_interval.i = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 1
  %tv_nsec.i.i.i = getelementptr inbounds %struct.timespec64, ptr %now.i.i, i32 0, i32 1
  %tv_nsec.i8.i.i = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 3, i32 1
  %after_aggregation = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 8, i32 3
  %get_scheme_score.i = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 7, i32 5
  %apply_scheme.i.i = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 7, i32 6
  %tv_nsec.i.i.i274 = getelementptr inbounds %struct.timespec64, ptr %end4.i.i, i32 0, i32 1
  %tv_nsec.i244.i.i = getelementptr inbounds %struct.timespec64, ptr %begin.i.i, i32 0, i32 1
  %max_nr_regions.i = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 10
  %reset_aggregated = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 7, i32 4
  %last_primitive_update.i = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 4
  %primitive_update_interval.i = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 2
  %tv_nsec.i.i.i312 = getelementptr inbounds %struct.timespec64, ptr %now.i.i307, i32 0, i32 1
  %tv_nsec.i8.i.i322 = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 4, i32 1
  %update = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 7, i32 1
  br label %if.end.i

if.end.i:                                         ; preds = %while.cond.backedge.if.end.i_crit_edge, %if.end.i.lr.ph
  %max_nr_accesses.0394 = phi i32 [ 0, %if.end.i.lr.ph ], [ %max_nr_accesses.0.be, %while.cond.backedge.if.end.i_crit_edge ]
  %sz_limit.0391 = phi i32 [ %spec.store.select.i, %if.end.i.lr.ph ], [ %sz_limit.0.be, %while.cond.backedge.if.end.i_crit_edge ]
  %done.1.off0390 = phi i1 [ %done.0.off0, %if.end.i.lr.ph ], [ %done.1.off0.be, %while.cond.backedge.if.end.i_crit_edge ]
  %20 = ptrtoint ptr %target_valid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %target_valid.i, align 4
  %tobool.not.i223 = icmp eq ptr %21, null
  br i1 %tobool.not.i223, label %if.end.i.kdamond_need_stop.exit_crit_edge, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  br label %for.cond.i

if.end.i.kdamond_need_stop.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kdamond_need_stop.exit

for.cond.i:                                       ; preds = %for.body.i227.for.cond.i_crit_edge, %if.end.i.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i225, %for.body.i227.for.cond.i_crit_edge ], [ %adaptive_targets.i, %if.end.i.for.cond.i_crit_edge ]
  %22 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i225 = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i226 = icmp eq ptr %.pn.i225, %adaptive_targets.i
  br i1 %cmp.not.i226, label %for.cond.i.while.end_crit_edge, label %for.body.i227

for.cond.i.while.end_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

for.body.i227:                                    ; preds = %for.cond.i
  %t.0.i = getelementptr i8, ptr %.pn.i225, i32 -16
  %23 = ptrtoint ptr %target_valid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %target_valid.i, align 4
  %call6.i = call zeroext i1 %24(ptr noundef %t.0.i) #12
  br i1 %call6.i, label %for.body.i227.kdamond_need_stop.exit_crit_edge, label %for.body.i227.for.cond.i_crit_edge

for.body.i227.for.cond.i_crit_edge:               ; preds = %for.body.i227
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.body.i227.kdamond_need_stop.exit_crit_edge:   ; preds = %for.body.i227
  call void @__sanitizer_cov_trace_pc() #14
  br label %kdamond_need_stop.exit

kdamond_need_stop.exit:                           ; preds = %for.body.i227.kdamond_need_stop.exit_crit_edge, %if.end.i.kdamond_need_stop.exit_crit_edge
  br i1 %done.1.off0390, label %kdamond_need_stop.exit.while.end_crit_edge, label %while.body

kdamond_need_stop.exit.while.end_crit_edge:       ; preds = %kdamond_need_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %kdamond_need_stop.exit
  %call.i30.i = call zeroext i1 @kthread_should_stop() #12
  br i1 %call.i30.i, label %while.body.while.cond.backedge_crit_edge, label %while.body.if.end.i.i_crit_edge

while.body.if.end.i.i_crit_edge:                  ; preds = %while.body
  br label %if.end.i.i

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.end.i.i:                                       ; preds = %kdamond_usleep.exit.i.if.end.i.i_crit_edge, %while.body.if.end.i.i_crit_edge
  %min_wait_time.031.i = phi i32 [ %min_wait_time.1.lcssa.i, %kdamond_usleep.exit.i.if.end.i.i_crit_edge ], [ 0, %while.body.if.end.i.i_crit_edge ]
  %25 = ptrtoint ptr %target_valid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %target_valid.i, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.end.i.i.while.body.i_crit_edge, label %if.end.i.i.for.cond.i.i_crit_edge

if.end.i.i.for.cond.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.cond.i.i

if.end.i.i.while.body.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i.i.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %adaptive_targets.i, %if.end.i.i.for.cond.i.i_crit_edge ]
  %27 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %adaptive_targets.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.while.cond.backedge_crit_edge, label %for.body.i.i

for.cond.i.i.while.cond.backedge_crit_edge:       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

for.body.i.i:                                     ; preds = %for.cond.i.i
  %t.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -16
  %28 = ptrtoint ptr %target_valid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %target_valid.i, align 4
  %call6.i.i = call zeroext i1 %29(ptr noundef %t.0.i.i) #12
  br i1 %call6.i.i, label %for.body.i.i.while.body.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

for.body.i.i.while.body.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i:                                     ; preds = %for.body.i.i.while.body.i_crit_edge, %if.end.i.i.while.body.i_crit_edge
  %30 = ptrtoint ptr %schemes.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn26.i = load ptr, ptr %schemes.i, align 4
  %cmp.not27.i = icmp eq ptr %.pn26.i, %schemes.i
  br i1 %cmp.not27.i, label %while.body.i.for.end.i_crit_edge, label %while.body.i.for.body.i232_crit_edge

while.body.i.for.body.i232_crit_edge:             ; preds = %while.body.i
  br label %for.body.i232

while.body.i.for.end.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i232:                                    ; preds = %for.body.i232.for.body.i232_crit_edge, %while.body.i.for.body.i232_crit_edge
  %.pn29.i = phi ptr [ %.pn.i230, %for.body.i232.for.body.i232_crit_edge ], [ %.pn26.i, %while.body.i.for.body.i232_crit_edge ]
  %min_wait_time.128.i = phi i32 [ %min_wait_time.2.i, %for.body.i232.for.body.i232_crit_edge ], [ %min_wait_time.031.i, %while.body.i.for.body.i232_crit_edge ]
  %s.0.i = getelementptr i8, ptr %.pn29.i, i32 -528
  %call3.i = call fastcc i32 @damos_wmark_wait_us(ptr noundef %s.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_wait_time.128.i)
  %tobool.not.i229 = icmp eq i32 %min_wait_time.128.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %min_wait_time.128.i)
  %cmp4.i = icmp ult i32 %call3.i, %min_wait_time.128.i
  %or.cond.i = select i1 %tobool.not.i229, i1 true, i1 %cmp4.i
  %min_wait_time.2.i = select i1 %or.cond.i, i32 %call3.i, i32 %min_wait_time.128.i
  %31 = ptrtoint ptr %.pn29.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn.i230 = load ptr, ptr %.pn29.i, align 4
  %cmp.not.i231 = icmp eq ptr %.pn.i230, %schemes.i
  br i1 %cmp.not.i231, label %for.body.i232.for.end.i_crit_edge, label %for.body.i232.for.body.i232_crit_edge

for.body.i232.for.body.i232_crit_edge:            ; preds = %for.body.i232
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i232

for.body.i232.for.end.i_crit_edge:                ; preds = %for.body.i232
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i232.for.end.i_crit_edge, %while.body.i.for.end.i_crit_edge
  %min_wait_time.1.lcssa.i = phi i32 [ %min_wait_time.031.i, %while.body.i.for.end.i_crit_edge ], [ %min_wait_time.2.i, %for.body.i232.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_wait_time.1.lcssa.i)
  %tobool10.not.i = icmp eq i32 %min_wait_time.1.lcssa.i, 0
  br i1 %tobool10.not.i, label %if.end24, label %if.end12.i

if.end12.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %min_wait_time.1.lcssa.i)
  %cmp.i.i = icmp ugt i32 %min_wait_time.1.lcssa.i, 20000
  br i1 %cmp.i.i, label %if.else.i.i.i, label %if.else.i.i

if.else.i.i.i:                                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i.i.i = call i32 @__usecs_to_jiffies(i32 noundef %min_wait_time.1.lcssa.i) #12
  %call1.i.i = call i32 @schedule_timeout_idle(i32 noundef %call3.i.i.i) #12
  br label %kdamond_usleep.exit.i

if.else.i.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.i.i = add nuw nsw i32 %min_wait_time.1.lcssa.i, 1
  call void @usleep_range_state(i32 noundef %min_wait_time.1.lcssa.i, i32 noundef %add.i.i, i32 noundef 1026) #12
  br label %kdamond_usleep.exit.i

kdamond_usleep.exit.i:                            ; preds = %if.else.i.i, %if.else.i.i.i
  %call.i.i = call zeroext i1 @kthread_should_stop() #12
  br i1 %call.i.i, label %kdamond_usleep.exit.i.while.cond.backedge_crit_edge, label %kdamond_usleep.exit.i.if.end.i.i_crit_edge

kdamond_usleep.exit.i.if.end.i.i_crit_edge:       ; preds = %kdamond_usleep.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

kdamond_usleep.exit.i.while.cond.backedge_crit_edge: ; preds = %kdamond_usleep.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.end24:                                         ; preds = %for.end.i
  %32 = ptrtoint ptr %prepare_access_checks to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prepare_access_checks, align 8
  %tobool26.not = icmp eq ptr %33, null
  br i1 %tobool26.not, label %if.end24.if.end30_crit_edge, label %if.then27

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  call void %33(ptr noundef %data) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end24.if.end30_crit_edge
  %34 = ptrtoint ptr %after_sampling to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %after_sampling, align 4
  %tobool32.not = icmp eq ptr %35, null
  br i1 %tobool32.not, label %if.end30.if.end39_crit_edge, label %land.lhs.true33

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

land.lhs.true33:                                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %call36 = call i32 %35(ptr noundef %data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp ne i32 %call36, 0
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true33, %if.end30.if.end39_crit_edge
  %done.2.off0 = phi i1 [ false, %if.end30.if.end39_crit_edge ], [ %tobool37.not, %land.lhs.true33 ]
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %37)
  %cmp.i = icmp ugt i32 %37, 20000
  br i1 %cmp.i, label %if.else.i.i239, label %if.else.i

if.else.i.i239:                                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i.i = call i32 @__usecs_to_jiffies(i32 noundef %37) #12
  %call1.i = call i32 @schedule_timeout_idle(i32 noundef %call3.i.i) #12
  br label %kdamond_usleep.exit

if.else.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %add.i240 = add nuw nsw i32 %37, 1
  call void @usleep_range_state(i32 noundef %37, i32 noundef %add.i240, i32 noundef 1026) #12
  br label %kdamond_usleep.exit

kdamond_usleep.exit:                              ; preds = %if.else.i, %if.else.i.i239
  %38 = ptrtoint ptr %check_accesses to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %check_accesses, align 4
  %tobool41.not = icmp eq ptr %39, null
  br i1 %tobool41.not, label %kdamond_usleep.exit.if.end46_crit_edge, label %if.then42

kdamond_usleep.exit.if.end46_crit_edge:           ; preds = %kdamond_usleep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then42:                                        ; preds = %kdamond_usleep.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call45 = call i32 %39(ptr noundef %data) #12
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %kdamond_usleep.exit.if.end46_crit_edge
  %max_nr_accesses.1 = phi i32 [ %call45, %if.then42 ], [ %max_nr_accesses.0394, %kdamond_usleep.exit.if.end46_crit_edge ]
  %40 = ptrtoint ptr %aggr_interval.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %aggr_interval.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now.i.i) #12
  %42 = call ptr @memset(ptr %now.i.i, i32 255, i32 16)
  call void @ktime_get_coarse_ts64(ptr noundef nonnull %now.i.i) #12
  %43 = ptrtoint ptr %now.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %now.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %44)
  %cmp.i.i.i242 = icmp sgt i64 %44, 9223372035
  br i1 %cmp.i.i.i242, label %if.end46.timespec64_to_ns.exit.i.i_crit_edge, label %if.end.i.i.i243

if.end46.timespec64_to_ns.exit.i.i_crit_edge:     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %timespec64_to_ns.exit.i.i

if.end.i.i.i243:                                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %44)
  %cmp2.i.i.i = icmp slt i64 %44, -9223372035
  br i1 %cmp2.i.i.i, label %if.end.i.i.i243.timespec64_to_ns.exit.i.i_crit_edge, label %if.end4.i.i.i

if.end.i.i.i243.timespec64_to_ns.exit.i.i_crit_edge: ; preds = %if.end.i.i.i243
  call void @__sanitizer_cov_trace_pc() #14
  br label %timespec64_to_ns.exit.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i243
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i.i.i = mul nsw i64 %44, 1000000000
  %45 = ptrtoint ptr %tv_nsec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tv_nsec.i.i.i, align 8
  %conv.i.i.i = sext i32 %46 to i64
  %add.i.i.i = add i64 %mul.i.i.i, %conv.i.i.i
  br label %timespec64_to_ns.exit.i.i

timespec64_to_ns.exit.i.i:                        ; preds = %if.end4.i.i.i, %if.end.i.i.i243.timespec64_to_ns.exit.i.i_crit_edge, %if.end46.timespec64_to_ns.exit.i.i_crit_edge
  %retval.0.i.i.i244 = phi i64 [ %add.i.i.i, %if.end4.i.i.i ], [ 9223372036854775807, %if.end46.timespec64_to_ns.exit.i.i_crit_edge ], [ -9223372036854775808, %if.end.i.i.i243.timespec64_to_ns.exit.i.i_crit_edge ]
  %47 = ptrtoint ptr %last_aggregation.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %last_aggregation.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %48)
  %cmp.i4.i.i = icmp sgt i64 %48, 9223372035
  br i1 %cmp.i4.i.i, label %timespec64_to_ns.exit.i.i.timespec64_to_ns.exit13.i.i_crit_edge, label %if.end.i6.i.i

timespec64_to_ns.exit.i.i.timespec64_to_ns.exit13.i.i_crit_edge: ; preds = %timespec64_to_ns.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %timespec64_to_ns.exit13.i.i

if.end.i6.i.i:                                    ; preds = %timespec64_to_ns.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %48)
  %cmp2.i5.i.i = icmp slt i64 %48, -9223372035
  br i1 %cmp2.i5.i.i, label %if.end.i6.i.i.timespec64_to_ns.exit13.i.i_crit_edge, label %if.end4.i11.i.i

if.end.i6.i.i.timespec64_to_ns.exit13.i.i_crit_edge: ; preds = %if.end.i6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %timespec64_to_ns.exit13.i.i

if.end4.i11.i.i:                                  ; preds = %if.end.i6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i7.i.i = mul nsw i64 %48, 1000000000
  %49 = ptrtoint ptr %tv_nsec.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tv_nsec.i8.i.i, align 8
  %conv.i9.i.i = sext i32 %50 to i64
  %add.i10.i.i = add i64 %mul.i7.i.i, %conv.i9.i.i
  br label %timespec64_to_ns.exit13.i.i

timespec64_to_ns.exit13.i.i:                      ; preds = %if.end4.i11.i.i, %if.end.i6.i.i.timespec64_to_ns.exit13.i.i_crit_edge, %timespec64_to_ns.exit.i.i.timespec64_to_ns.exit13.i.i_crit_edge
  %retval.0.i12.i.i = phi i64 [ %add.i10.i.i, %if.end4.i11.i.i ], [ 9223372036854775807, %timespec64_to_ns.exit.i.i.timespec64_to_ns.exit13.i.i_crit_edge ], [ -9223372036854775808, %if.end.i6.i.i.timespec64_to_ns.exit13.i.i_crit_edge ]
  %sub.i.i = sub i64 %retval.0.i.i.i244, %retval.0.i12.i.i
  %mul.i.i = mul i32 %41, 1000
  %conv.i.i = zext i32 %mul.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i, i64 %conv.i.i)
  %cmp.i.i245 = icmp slt i64 %sub.i.i, %conv.i.i
  br i1 %cmp.i.i245, label %kdamond_aggregate_interval_passed.exit, label %if.then48

kdamond_aggregate_interval_passed.exit:           ; preds = %timespec64_to_ns.exit13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now.i.i) #12
  br label %if.end64

if.then48:                                        ; preds = %timespec64_to_ns.exit13.i.i
  %51 = call ptr @memcpy(ptr %last_aggregation.i, ptr %now.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now.i.i) #12
  %div = udiv i32 %max_nr_accesses.1, 10
  %52 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn10.i = load ptr, ptr %adaptive_targets.i, align 4
  %cmp.not11.i = icmp eq ptr %.pn10.i, %adaptive_targets.i
  br i1 %cmp.not11.i, label %if.then48.kdamond_merge_regions.exit_crit_edge, label %if.then48.for.body.i251_crit_edge

if.then48.for.body.i251_crit_edge:                ; preds = %if.then48
  br label %for.body.i251

if.then48.kdamond_merge_regions.exit_crit_edge:   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %kdamond_merge_regions.exit

for.body.i251:                                    ; preds = %for.body.i251.for.body.i251_crit_edge, %if.then48.for.body.i251_crit_edge
  %.pn12.i = phi ptr [ %.pn.i249, %for.body.i251.for.body.i251_crit_edge ], [ %.pn10.i, %if.then48.for.body.i251_crit_edge ]
  %t.0.i248 = getelementptr i8, ptr %.pn12.i, i32 -16
  call fastcc void @damon_merge_regions_of(ptr noundef %t.0.i248, i32 noundef %div, i32 noundef %sz_limit.0391) #12
  %53 = ptrtoint ptr %.pn12.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn.i249 = load ptr, ptr %.pn12.i, align 4
  %cmp.not.i250 = icmp eq ptr %.pn.i249, %adaptive_targets.i
  br i1 %cmp.not.i250, label %for.body.i251.kdamond_merge_regions.exit_crit_edge, label %for.body.i251.for.body.i251_crit_edge

for.body.i251.for.body.i251_crit_edge:            ; preds = %for.body.i251
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i251

for.body.i251.kdamond_merge_regions.exit_crit_edge: ; preds = %for.body.i251
  call void @__sanitizer_cov_trace_pc() #14
  br label %kdamond_merge_regions.exit

kdamond_merge_regions.exit:                       ; preds = %for.body.i251.kdamond_merge_regions.exit_crit_edge, %if.then48.kdamond_merge_regions.exit_crit_edge
  %54 = ptrtoint ptr %after_aggregation to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %after_aggregation, align 4
  %tobool50.not = icmp eq ptr %55, null
  br i1 %tobool50.not, label %kdamond_merge_regions.exit.if.end57_crit_edge, label %land.lhs.true51

kdamond_merge_regions.exit.if.end57_crit_edge:    ; preds = %kdamond_merge_regions.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

land.lhs.true51:                                  ; preds = %kdamond_merge_regions.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call54 = call i32 %55(ptr noundef %data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp ne i32 %call54, 0
  %spec.select219 = select i1 %tobool55.not, i1 true, i1 %done.2.off0
  br label %if.end57

if.end57:                                         ; preds = %land.lhs.true51, %kdamond_merge_regions.exit.if.end57_crit_edge
  %done.3.off0 = phi i1 [ %done.2.off0, %kdamond_merge_regions.exit.if.end57_crit_edge ], [ %spec.select219, %land.lhs.true51 ]
  %56 = ptrtoint ptr %schemes.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn218.i = load ptr, ptr %schemes.i, align 4
  %cmp.not220.i = icmp eq ptr %.pn218.i, %schemes.i
  br i1 %cmp.not220.i, label %if.end57.for.end88.i_crit_edge, label %if.end57.for.body.i256_crit_edge

if.end57.for.body.i256_crit_edge:                 ; preds = %if.end57
  br label %for.body.i256

if.end57.for.end88.i_crit_edge:                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end88.i

for.body.i256:                                    ; preds = %cleanup.i.for.body.i256_crit_edge, %if.end57.for.body.i256_crit_edge
  %.pn221.i = phi ptr [ %.pn.i272, %cleanup.i.for.body.i256_crit_edge ], [ %.pn218.i, %if.end57.for.body.i256_crit_edge ]
  %s.0222.i = getelementptr i8, ptr %.pn221.i, i32 -528
  %quota2.i = getelementptr i8, ptr %.pn221.i, i32 -500
  %activated.i = getelementptr i8, ptr %.pn221.i, i32 -24
  %57 = ptrtoint ptr %activated.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %activated.i, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i255 = icmp eq i8 %58, 0
  br i1 %tobool.not.i255, label %for.body.i256.cleanup.i_crit_edge, label %if.end.i257

for.body.i256.cleanup.i_crit_edge:                ; preds = %for.body.i256
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end.i257:                                      ; preds = %for.body.i256
  %59 = ptrtoint ptr %quota2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %quota2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool3.not.i = icmp eq i32 %60, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.end.i257.if.end6.i_crit_edge

if.end.i257.if.end6.i_crit_edge:                  ; preds = %if.end.i257
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i257
  %sz.i = getelementptr i8, ptr %.pn221.i, i32 -496
  %61 = ptrtoint ptr %sz.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool4.not.i = icmp eq i32 %62, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.cleanup.i_crit_edge, label %land.lhs.true.i.if.end6.i_crit_edge

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end6.i:                                        ; preds = %land.lhs.true.i.if.end6.i_crit_edge, %if.end.i257.if.end6.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %charged_from.i = getelementptr i8, ptr %.pn221.i, i32 -460
  %64 = ptrtoint ptr %charged_from.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %charged_from.i, align 4
  %reset_interval.i = getelementptr i8, ptr %.pn221.i, i32 -492
  %66 = ptrtoint ptr %reset_interval.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %reset_interval.i, align 4
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %67) #12
  %68 = add i32 %65, %call2.i.i
  %sub.i265 = sub i32 %63, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i265)
  %cmp7.i = icmp sgt i32 %sub.i265, -1
  br i1 %cmp7.i, label %if.then8.i, label %if.end6.i.if.end19.i_crit_edge

if.end6.i.if.end19.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then8.i:                                       ; preds = %if.end6.i
  %esz.i = getelementptr i8, ptr %.pn221.i, i32 -468
  %69 = ptrtoint ptr %esz.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %esz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool9.not.i = icmp eq i32 %70, 0
  br i1 %tobool9.not.i, label %if.then8.i.if.end14.i_crit_edge, label %land.lhs.true10.i

if.then8.i.if.end14.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

land.lhs.true10.i:                                ; preds = %if.then8.i
  %charged_sz.i = getelementptr i8, ptr %.pn221.i, i32 -464
  %71 = ptrtoint ptr %charged_sz.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %charged_sz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %70)
  %cmp12.not.i = icmp ult i32 %72, %70
  br i1 %cmp12.not.i, label %land.lhs.true10.i.if.end14.i_crit_edge, label %if.then13.i

land.lhs.true10.i.if.end14.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.then13.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #14
  %qt_exceeds.i = getelementptr i8, ptr %.pn221.i, i32 -4
  %73 = ptrtoint ptr %qt_exceeds.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %qt_exceeds.i, align 4
  %inc.i = add i32 %74, 1
  store i32 %inc.i, ptr %qt_exceeds.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %land.lhs.true10.i.if.end14.i_crit_edge, %if.then8.i.if.end14.i_crit_edge
  %charged_sz15.i = getelementptr i8, ptr %.pn221.i, i32 -464
  %75 = ptrtoint ptr %charged_sz15.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %charged_sz15.i, align 4
  %total_charged_sz.i = getelementptr i8, ptr %.pn221.i, i32 -476
  %77 = ptrtoint ptr %total_charged_sz.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %total_charged_sz.i, align 4
  %add16.i = add i32 %78, %76
  store i32 %add16.i, ptr %total_charged_sz.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %79 = load volatile i32, ptr @jiffies, align 128
  %80 = ptrtoint ptr %charged_from.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %charged_from.i, align 4
  store i32 0, ptr %charged_sz15.i, align 4
  %81 = ptrtoint ptr %quota2.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %quota2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i.i266 = icmp eq i32 %82, 0
  br i1 %tobool.not.i.i266, label %if.then.i192.i, label %if.end.i193.i

if.then.i192.i:                                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %sz.i.i = getelementptr i8, ptr %.pn221.i, i32 -496
  %83 = ptrtoint ptr %sz.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sz.i.i, align 4
  br label %damos_set_effective_quota.exit.i

if.end.i193.i:                                    ; preds = %if.end14.i
  %total_charged_ns.i.i = getelementptr i8, ptr %.pn221.i, i32 -472
  %85 = ptrtoint ptr %total_charged_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %total_charged_ns.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool2.not.i.i = icmp eq i32 %86, 0
  br i1 %tobool2.not.i.i, label %if.end.i193.i.if.end5.i.i_crit_edge, label %if.then3.i.i

if.end.i193.i.if.end5.i.i_crit_edge:              ; preds = %if.end.i193.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i193.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i.i267 = mul i32 %add16.i, 1000000
  %div.i.i = udiv i32 %mul.i.i267, %86
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.end.i193.i.if.end5.i.i_crit_edge
  %throughput.0.i.i = phi i32 [ %div.i.i, %if.then3.i.i ], [ 4194304, %if.end.i193.i.if.end5.i.i_crit_edge ]
  %mul7.i.i = mul i32 %throughput.0.i.i, %82
  %sz8.i.i = getelementptr i8, ptr %.pn221.i, i32 -496
  %87 = ptrtoint ptr %sz8.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sz8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool9.not.i.i = icmp ne i32 %88, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %mul7.i.i)
  %cmp.i194.i = icmp ult i32 %88, %mul7.i.i
  %or.cond.i.i = select i1 %tobool9.not.i.i, i1 %cmp.i194.i, i1 false
  %esz.0.i.i = select i1 %or.cond.i.i, i32 %88, i32 %mul7.i.i
  br label %damos_set_effective_quota.exit.i

damos_set_effective_quota.exit.i:                 ; preds = %if.end5.i.i, %if.then.i192.i
  %esz.0.sink.i.i = phi i32 [ %esz.0.i.i, %if.end5.i.i ], [ %84, %if.then.i192.i ]
  %89 = ptrtoint ptr %esz.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %esz.0.sink.i.i, ptr %esz.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %damos_set_effective_quota.exit.i, %if.end6.i.if.end19.i_crit_edge
  %90 = ptrtoint ptr %get_scheme_score.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %get_scheme_score.i, align 4
  %tobool20.not.i = icmp eq ptr %91, null
  br i1 %tobool20.not.i, label %if.end19.i.cleanup.i_crit_edge, label %if.end22.i

if.end19.i.cleanup.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end22.i:                                       ; preds = %if.end19.i
  %histogram.i = getelementptr i8, ptr %.pn221.i, i32 -448
  %92 = call ptr @memset(ptr %histogram.i, i32 0, i32 400)
  %93 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pn189211.i = load ptr, ptr %adaptive_targets.i, align 4
  %cmp30.not213.i = icmp eq ptr %.pn189211.i, %adaptive_targets.i
  br i1 %cmp30.not213.i, label %if.end22.i.for.cond68.preheader.i_crit_edge, label %for.body32.lr.ph.i

if.end22.i.for.cond68.preheader.i_crit_edge:      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond68.preheader.i

for.body32.lr.ph.i:                               ; preds = %if.end22.i
  %max_sz_region.i.i = getelementptr i8, ptr %.pn221.i, i32 -524
  %min_nr_accesses.i.i = getelementptr i8, ptr %.pn221.i, i32 -520
  %max_nr_accesses.i.i = getelementptr i8, ptr %.pn221.i, i32 -516
  %min_age_region.i.i = getelementptr i8, ptr %.pn221.i, i32 -512
  %max_age_region.i.i = getelementptr i8, ptr %.pn221.i, i32 -508
  br label %for.body32.i

for.cond27.loopexit.i:                            ; preds = %for.inc.i.for.cond27.loopexit.i_crit_edge, %for.body32.i.for.cond27.loopexit.i_crit_edge
  %max_score.1.lcssa.i = phi i32 [ %max_score.0214.i, %for.body32.i.for.cond27.loopexit.i_crit_edge ], [ %max_score.2.i, %for.inc.i.for.cond27.loopexit.i_crit_edge ]
  %94 = ptrtoint ptr %.pn189215.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pn189.i = load ptr, ptr %.pn189215.i, align 4
  %cmp30.not.i = icmp eq ptr %.pn189.i, %adaptive_targets.i
  br i1 %cmp30.not.i, label %for.cond27.loopexit.i.for.cond68.preheader.i_crit_edge, label %for.cond27.loopexit.i.for.body32.i_crit_edge

for.cond27.loopexit.i.for.body32.i_crit_edge:     ; preds = %for.cond27.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body32.i

for.cond27.loopexit.i.for.cond68.preheader.i_crit_edge: ; preds = %for.cond27.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond68.preheader.i

for.cond68.preheader.i:                           ; preds = %for.cond27.loopexit.i.for.cond68.preheader.i_crit_edge, %if.end22.i.for.cond68.preheader.i_crit_edge
  %max_score.0.lcssa.i = phi i32 [ 0, %if.end22.i.for.cond68.preheader.i_crit_edge ], [ %max_score.1.lcssa.i, %for.cond27.loopexit.i.for.cond68.preheader.i_crit_edge ]
  %esz72.i = getelementptr i8, ptr %.pn221.i, i32 -468
  %95 = ptrtoint ptr %esz72.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %esz72.i, align 4
  br label %for.cond68.i

for.body32.i:                                     ; preds = %for.cond27.loopexit.i.for.body32.i_crit_edge, %for.body32.lr.ph.i
  %.pn189215.i = phi ptr [ %.pn189211.i, %for.body32.lr.ph.i ], [ %.pn189.i, %for.cond27.loopexit.i.for.body32.i_crit_edge ]
  %max_score.0214.i = phi i32 [ 0, %for.body32.lr.ph.i ], [ %max_score.1.lcssa.i, %for.cond27.loopexit.i.for.body32.i_crit_edge ]
  %t.0216.i = getelementptr i8, ptr %.pn189215.i, i32 -16
  %regions_list.i268 = getelementptr i8, ptr %.pn189215.i, i32 -8
  %97 = ptrtoint ptr %regions_list.i268 to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pn190205.i = load ptr, ptr %regions_list.i268, align 4
  %cmp40.not207.i = icmp eq ptr %.pn190205.i, %regions_list.i268
  br i1 %cmp40.not207.i, label %for.body32.i.for.cond27.loopexit.i_crit_edge, label %for.body32.i.for.body42.i_crit_edge

for.body32.i.for.body42.i_crit_edge:              ; preds = %for.body32.i
  br label %for.body42.i

for.body32.i.for.cond27.loopexit.i_crit_edge:     ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond27.loopexit.i

for.body42.i:                                     ; preds = %for.inc.i.for.body42.i_crit_edge, %for.body32.i.for.body42.i_crit_edge
  %.pn190209.i = phi ptr [ %.pn190.i, %for.inc.i.for.body42.i_crit_edge ], [ %.pn190205.i, %for.body32.i.for.body42.i_crit_edge ]
  %max_score.1208.i = phi i32 [ %max_score.2.i, %for.inc.i.for.body42.i_crit_edge ], [ %max_score.0214.i, %for.body32.i.for.body42.i_crit_edge ]
  %r.0210.i = getelementptr i8, ptr %.pn190209.i, i32 -16
  %end.i.i = getelementptr i8, ptr %.pn190209.i, i32 -12
  %98 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %end.i.i, align 4
  %100 = ptrtoint ptr %r.0210.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %r.0210.i, align 4
  %sub.i.i269 = sub i32 %99, %101
  %102 = ptrtoint ptr %s.0222.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %s.0222.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %sub.i.i269)
  %cmp.not.i.i270 = icmp ugt i32 %103, %sub.i.i269
  br i1 %cmp.not.i.i270, label %for.body42.i.for.inc.i_crit_edge, label %land.lhs.true.i.i

for.body42.i.for.inc.i_crit_edge:                 ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %for.body42.i
  %104 = ptrtoint ptr %max_sz_region.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %max_sz_region.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i269, i32 %105)
  %cmp2.not.i.i = icmp ugt i32 %sub.i.i269, %105
  br i1 %cmp2.not.i.i, label %land.lhs.true.i.i.for.inc.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %106 = ptrtoint ptr %min_nr_accesses.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %min_nr_accesses.i.i, align 4
  %nr_accesses.i.i = getelementptr i8, ptr %.pn190209.i, i32 -4
  %108 = ptrtoint ptr %nr_accesses.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %nr_accesses.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %109)
  %cmp4.not.i.i = icmp ugt i32 %107, %109
  br i1 %cmp4.not.i.i, label %land.lhs.true3.i.i.for.inc.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true3.i.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i.i
  %110 = ptrtoint ptr %max_nr_accesses.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %max_nr_accesses.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %111)
  %cmp7.not.i.i = icmp ugt i32 %109, %111
  br i1 %cmp7.not.i.i, label %land.lhs.true5.i.i.for.inc.i_crit_edge, label %land.lhs.true8.i.i

land.lhs.true5.i.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true8.i.i:                               ; preds = %land.lhs.true5.i.i
  %112 = ptrtoint ptr %min_age_region.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %min_age_region.i.i, align 4
  %age.i.i = getelementptr i8, ptr %.pn190209.i, i32 8
  %114 = ptrtoint ptr %age.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %age.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %115)
  %cmp9.not.i.i = icmp ugt i32 %113, %115
  br i1 %cmp9.not.i.i, label %land.lhs.true8.i.i.for.inc.i_crit_edge, label %__damos_valid_target.exit.i

land.lhs.true8.i.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

__damos_valid_target.exit.i:                      ; preds = %land.lhs.true8.i.i
  %116 = ptrtoint ptr %max_age_region.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %max_age_region.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %117)
  %cmp11.i.not.i = icmp ugt i32 %115, %117
  br i1 %cmp11.i.not.i, label %__damos_valid_target.exit.i.for.inc.i_crit_edge, label %if.end45.i

__damos_valid_target.exit.i.for.inc.i_crit_edge:  ; preds = %__damos_valid_target.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end45.i:                                       ; preds = %__damos_valid_target.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %118 = ptrtoint ptr %get_scheme_score.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %get_scheme_score.i, align 4
  %call48.i = call i32 %119(ptr noundef %data, ptr noundef %t.0216.i, ptr noundef %r.0210.i, ptr noundef %s.0222.i) #12
  %120 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %end.i.i, align 4
  %122 = ptrtoint ptr %r.0210.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %r.0210.i, align 4
  %sub50.i = sub i32 %121, %123
  %arrayidx.i = getelementptr [100 x i32], ptr %histogram.i, i32 0, i32 %call48.i
  %124 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx.i, align 4
  %add52.i = add i32 %sub50.i, %125
  store i32 %add52.i, ptr %arrayidx.i, align 4
  %126 = call i32 @llvm.umax.i32(i32 %call48.i, i32 %max_score.1208.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end45.i, %__damos_valid_target.exit.i.for.inc.i_crit_edge, %land.lhs.true8.i.i.for.inc.i_crit_edge, %land.lhs.true5.i.i.for.inc.i_crit_edge, %land.lhs.true3.i.i.for.inc.i_crit_edge, %land.lhs.true.i.i.for.inc.i_crit_edge, %for.body42.i.for.inc.i_crit_edge
  %max_score.2.i = phi i32 [ %max_score.1208.i, %__damos_valid_target.exit.i.for.inc.i_crit_edge ], [ %126, %if.end45.i ], [ %max_score.1208.i, %land.lhs.true8.i.i.for.inc.i_crit_edge ], [ %max_score.1208.i, %land.lhs.true5.i.i.for.inc.i_crit_edge ], [ %max_score.1208.i, %land.lhs.true3.i.i.for.inc.i_crit_edge ], [ %max_score.1208.i, %land.lhs.true.i.i.for.inc.i_crit_edge ], [ %max_score.1208.i, %for.body42.i.for.inc.i_crit_edge ]
  %127 = ptrtoint ptr %.pn190209.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %.pn190.i = load ptr, ptr %.pn190209.i, align 4
  %cmp40.not.i = icmp eq ptr %.pn190.i, %regions_list.i268
  br i1 %cmp40.not.i, label %for.inc.i.for.cond27.loopexit.i_crit_edge, label %for.inc.i.for.body42.i_crit_edge

for.inc.i.for.body42.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body42.i

for.inc.i.for.cond27.loopexit.i_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond27.loopexit.i

for.cond68.i:                                     ; preds = %for.cond68.i.for.cond68.i_crit_edge, %for.cond68.preheader.i
  %score.0.i = phi i32 [ %dec.i, %for.cond68.i.for.cond68.i_crit_edge ], [ %max_score.0.lcssa.i, %for.cond68.preheader.i ]
  %cumulated_sz.0.i = phi i32 [ %add71.i, %for.cond68.i.for.cond68.i_crit_edge ], [ 0, %for.cond68.preheader.i ]
  %arrayidx70.i = getelementptr [100 x i32], ptr %histogram.i, i32 0, i32 %score.0.i
  %128 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx70.i, align 4
  %add71.i = add i32 %129, %cumulated_sz.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add71.i, i32 %96)
  %cmp73.not.i = icmp uge i32 %add71.i, %96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %score.0.i)
  %tobool74.not.i = icmp eq i32 %score.0.i, 0
  %or.cond.i271 = select i1 %cmp73.not.i, i1 true, i1 %tobool74.not.i
  %dec.i = add i32 %score.0.i, -1
  br i1 %or.cond.i271, label %for.end78.i, label %for.cond68.i.for.cond68.i_crit_edge

for.cond68.i.for.cond68.i_crit_edge:              ; preds = %for.cond68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond68.i

for.end78.i:                                      ; preds = %for.cond68.i
  call void @__sanitizer_cov_trace_pc() #14
  %min_score.i = getelementptr i8, ptr %.pn221.i, i32 -48
  %130 = ptrtoint ptr %min_score.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %score.0.i, ptr %min_score.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.end78.i, %if.end19.i.cleanup.i_crit_edge, %land.lhs.true.i.cleanup.i_crit_edge, %for.body.i256.cleanup.i_crit_edge
  %131 = ptrtoint ptr %.pn221.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %.pn.i272 = load ptr, ptr %.pn221.i, align 4
  %cmp.not.i273 = icmp eq ptr %.pn.i272, %schemes.i
  br i1 %cmp.not.i273, label %cleanup.i.for.end88.i_crit_edge, label %cleanup.i.for.body.i256_crit_edge

cleanup.i.for.body.i256_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i256

cleanup.i.for.end88.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end88.i

for.end88.i:                                      ; preds = %cleanup.i.for.end88.i_crit_edge, %if.end57.for.end88.i_crit_edge
  %132 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %.pn187225.i = load ptr, ptr %adaptive_targets.i, align 4
  %cmp97.not227.i = icmp eq ptr %.pn187225.i, %adaptive_targets.i
  br i1 %cmp97.not227.i, label %for.end88.i.kdamond_apply_schemes.exit_crit_edge, label %for.end88.i.for.body99.i_crit_edge

for.end88.i.for.body99.i_crit_edge:               ; preds = %for.end88.i
  br label %for.body99.i

for.end88.i.kdamond_apply_schemes.exit_crit_edge: ; preds = %for.end88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kdamond_apply_schemes.exit

for.cond94.loopexit.i:                            ; preds = %damon_do_apply_schemes.exit.i.for.cond94.loopexit.i_crit_edge, %for.body99.i.for.cond94.loopexit.i_crit_edge
  %133 = ptrtoint ptr %.pn187228.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %.pn187.i = load ptr, ptr %.pn187228.i, align 4
  %cmp97.not.i = icmp eq ptr %.pn187.i, %adaptive_targets.i
  br i1 %cmp97.not.i, label %for.cond94.loopexit.i.kdamond_apply_schemes.exit_crit_edge, label %for.cond94.loopexit.i.for.body99.i_crit_edge

for.cond94.loopexit.i.for.body99.i_crit_edge:     ; preds = %for.cond94.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body99.i

for.cond94.loopexit.i.kdamond_apply_schemes.exit_crit_edge: ; preds = %for.cond94.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kdamond_apply_schemes.exit

for.body99.i:                                     ; preds = %for.cond94.loopexit.i.for.body99.i_crit_edge, %for.end88.i.for.body99.i_crit_edge
  %.pn187228.i = phi ptr [ %.pn187.i, %for.cond94.loopexit.i.for.body99.i_crit_edge ], [ %.pn187225.i, %for.end88.i.for.body99.i_crit_edge ]
  %t.1229.i = getelementptr i8, ptr %.pn187228.i, i32 -16
  %regions_list101.i = getelementptr i8, ptr %.pn187228.i, i32 -8
  %134 = ptrtoint ptr %regions_list101.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regions_list101.i, align 4
  %cmp113.not223.i = icmp eq ptr %135, %regions_list101.i
  br i1 %cmp113.not223.i, label %for.body99.i.for.cond94.loopexit.i_crit_edge, label %for.body115.lr.ph.i

for.body99.i.for.cond94.loopexit.i_crit_edge:     ; preds = %for.body99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond94.loopexit.i

for.body115.lr.ph.i:                              ; preds = %for.body99.i
  %prev.i.i.i = getelementptr i8, ptr %.pn187228.i, i32 -4
  %nr_regions.i.i.i.i = getelementptr i8, ptr %.pn187228.i, i32 -12
  br label %for.body115.i

for.body115.i:                                    ; preds = %damon_do_apply_schemes.exit.i.for.body115.i_crit_edge, %for.body115.lr.ph.i
  %.pn188.in224.i = phi ptr [ %135, %for.body115.lr.ph.i ], [ %.pn188.i, %damon_do_apply_schemes.exit.i.for.body115.i_crit_edge ]
  %136 = ptrtoint ptr %.pn188.in224.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %.pn188.i = load ptr, ptr %.pn188.in224.i, align 4
  %137 = ptrtoint ptr %schemes.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %.pn254.i.i = load ptr, ptr %schemes.i, align 4
  %cmp.not256.i.i = icmp eq ptr %.pn254.i.i, %schemes.i
  br i1 %cmp.not256.i.i, label %for.body115.i.damon_do_apply_schemes.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.body115.i.damon_do_apply_schemes.exit.i_crit_edge: ; preds = %for.body115.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_do_apply_schemes.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.body115.i
  %r.1.i = getelementptr i8, ptr %.pn188.in224.i, i32 -16
  br label %for.body.i.i275

for.body.i.i275:                                  ; preds = %cleanup.i.i.for.body.i.i275_crit_edge, %for.body.lr.ph.i.i
  %.pn259.i.i = phi ptr [ %.pn254.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i283, %cleanup.i.i.for.body.i.i275_crit_edge ]
  %r.addr.0257.i.i = phi ptr [ %r.1.i, %for.body.lr.ph.i.i ], [ %r.addr.3.i.i, %cleanup.i.i.for.body.i.i275_crit_edge ]
  %s.0260.i.i = getelementptr i8, ptr %.pn259.i.i, i32 -528
  %end.i195.i = getelementptr inbounds %struct.damon_addr_range, ptr %r.addr.0257.i.i, i32 0, i32 1
  %138 = ptrtoint ptr %end.i195.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %end.i195.i, align 4
  %140 = ptrtoint ptr %r.addr.0257.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %r.addr.0257.i.i, align 4
  %sub.i196.i = sub i32 %139, %141
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %begin.i.i) #12
  %142 = call ptr @memset(ptr %begin.i.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %end4.i.i) #12
  %143 = call ptr @memset(ptr %end4.i.i, i32 255, i32 16)
  %activated.i.i = getelementptr i8, ptr %.pn259.i.i, i32 -24
  %144 = ptrtoint ptr %activated.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %activated.i.i, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool.not.i197.i = icmp eq i8 %145, 0
  br i1 %tobool.not.i197.i, label %for.body.i.i275.cleanup.i.i_crit_edge, label %if.end.i198.i

for.body.i.i275.cleanup.i.i_crit_edge:            ; preds = %for.body.i.i275
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

if.end.i198.i:                                    ; preds = %for.body.i.i275
  %esz.i.i = getelementptr i8, ptr %.pn259.i.i, i32 -468
  %146 = ptrtoint ptr %esz.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %esz.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool5.not.i.i = icmp eq i32 %147, 0
  br i1 %tobool5.not.i.i, label %if.end.i198.i.if.end9.i.i_crit_edge, label %land.lhs.true.i200.i

if.end.i198.i.if.end9.i.i_crit_edge:              ; preds = %if.end.i198.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i

land.lhs.true.i200.i:                             ; preds = %if.end.i198.i
  %charged_sz.i.i = getelementptr i8, ptr %.pn259.i.i, i32 -464
  %148 = ptrtoint ptr %charged_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %charged_sz.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %147)
  %cmp7.not.i199.i = icmp ult i32 %149, %147
  br i1 %cmp7.not.i199.i, label %land.lhs.true.i200.i.if.end9.i.i_crit_edge, label %land.lhs.true.i200.i.cleanup.i.i_crit_edge

land.lhs.true.i200.i.cleanup.i.i_crit_edge:       ; preds = %land.lhs.true.i200.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

land.lhs.true.i200.i.if.end9.i.i_crit_edge:       ; preds = %land.lhs.true.i200.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %land.lhs.true.i200.i.if.end9.i.i_crit_edge, %if.end.i198.i.if.end9.i.i_crit_edge
  %charge_target_from.i.i = getelementptr i8, ptr %.pn259.i.i, i32 -456
  %150 = ptrtoint ptr %charge_target_from.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %charge_target_from.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %151, null
  br i1 %tobool10.not.i.i, label %if.end9.i.i.if.end62.i.i_crit_edge, label %if.then11.i.i

if.end9.i.i.if.end62.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62.i.i

if.then11.i.i:                                    ; preds = %if.end9.i.i
  %cmp13.not.i.i = icmp eq ptr %151, %t.1229.i
  br i1 %cmp13.not.i.i, label %if.end15.i.i, label %if.then11.i.i.cleanup.i.i_crit_edge

if.then11.i.i.cleanup.i.i_crit_edge:              ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

if.end15.i.i:                                     ; preds = %if.then11.i.i
  %152 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %prev.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %153, i32 -16
  %cmp16.i.i = icmp eq ptr %r.addr.0257.i.i, %add.ptr.i.i.i
  br i1 %cmp16.i.i, label %if.then17.i.i, label %if.end19.i.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %154 = ptrtoint ptr %charge_target_from.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %charge_target_from.i.i, align 4
  %charge_addr_from.i.i = getelementptr i8, ptr %.pn259.i.i, i32 -452
  %155 = ptrtoint ptr %charge_addr_from.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %charge_addr_from.i.i, align 4
  br label %cleanup.i.i

if.end19.i.i:                                     ; preds = %if.end15.i.i
  %charge_addr_from20.i.i = getelementptr i8, ptr %.pn259.i.i, i32 -452
  %156 = ptrtoint ptr %charge_addr_from20.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %charge_addr_from20.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool21.not.i.i = icmp eq i32 %157, 0
  br i1 %tobool21.not.i.i, label %if.end19.i.i.if.end59.i.i_crit_edge, label %land.lhs.true22.i.i

if.end19.i.i.if.end59.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.i.i

land.lhs.true22.i.i:                              ; preds = %if.end19.i.i
  %158 = ptrtoint ptr %end.i195.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %end.i195.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %157)
  %cmp26.not.i.i = icmp ugt i32 %159, %157
  br i1 %cmp26.not.i.i, label %land.lhs.true31.i.i, label %land.lhs.true22.i.i.cleanup.i.i_crit_edge

land.lhs.true22.i.i.cleanup.i.i_crit_edge:        ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

land.lhs.true31.i.i:                              ; preds = %land.lhs.true22.i.i
  %160 = ptrtoint ptr %r.addr.0257.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %r.addr.0257.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %161)
  %cmp35.i.i = icmp ugt i32 %157, %161
  br i1 %cmp35.i.i, label %if.then36.i.i, label %land.lhs.true31.i.i.if.end59.i.i_crit_edge

land.lhs.true31.i.i.if.end59.i.i_crit_edge:       ; preds = %land.lhs.true31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.i.i

if.then36.i.i:                                    ; preds = %land.lhs.true31.i.i
  %sub40.i.i = sub i32 %157, %161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub40.i.i)
  %tobool42.not.i.i = icmp eq i32 %sub40.i.i, 0
  br i1 %tobool42.not.i.i, label %if.then43.i.i, label %if.then36.i.i.if.end52.i.i_crit_edge

if.then36.i.i.if.end52.i.i_crit_edge:             ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i.i

if.then43.i.i:                                    ; preds = %if.then36.i.i
  %sub48.i.i = sub i32 %159, %161
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub48.i.i)
  %cmp49.i.i = icmp ult i32 %sub48.i.i, 2
  br i1 %cmp49.i.i, label %if.then43.i.i.cleanup.i.i_crit_edge, label %if.then43.i.i.if.end52.i.i_crit_edge

if.then43.i.i.if.end52.i.i_crit_edge:             ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i.i

if.then43.i.i.cleanup.i.i_crit_edge:              ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

if.end52.i.i:                                     ; preds = %if.then43.i.i.if.end52.i.i_crit_edge, %if.then36.i.i.if.end52.i.i_crit_edge
  %sz.0.i.i = phi i32 [ %sub40.i.i, %if.then36.i.i.if.end52.i.i_crit_edge ], [ 1, %if.then43.i.i.if.end52.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %162 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %162, i32 noundef 3264, i32 noundef 32) #15
  %tobool.not.i.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end52.i.i.damon_split_region_at.exit.i.i_crit_edge, label %if.end.i.i.i277

if.end52.i.i.damon_split_region_at.exit.i.i_crit_edge: ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_split_region_at.exit.i.i

if.end.i.i.i277:                                  ; preds = %if.end52.i.i
  %add.i.i.i276 = add i32 %sz.0.i.i, %161
  %163 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %add.i.i.i276, ptr %call7.i.i.i.i.i, align 8
  %end3.i.i.i.i = getelementptr inbounds %struct.damon_addr_range, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %164 = ptrtoint ptr %end3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %159, ptr %end3.i.i.i.i, align 4
  %nr_accesses.i.i.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %165 = ptrtoint ptr %nr_accesses.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %nr_accesses.i.i.i.i, align 4
  %list.i.i.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %166 = ptrtoint ptr %list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store volatile ptr %list.i.i.i.i, ptr %list.i.i.i.i, align 8
  %prev.i.i.i.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.i.i.i, i32 0, i32 3, i32 1
  %167 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %list.i.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %age.i.i.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.i.i.i, i32 0, i32 4
  %last_nr_accesses.i.i.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.i.i.i, i32 0, i32 5
  %168 = ptrtoint ptr %end.i195.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %add.i.i.i276, ptr %end.i195.i, align 4
  %age.i.i.i = getelementptr inbounds %struct.damon_region, ptr %r.addr.0257.i.i, i32 0, i32 4
  %169 = ptrtoint ptr %age.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %age.i.i.i, align 4
  %171 = ptrtoint ptr %age.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %age.i.i.i.i, align 8
  %last_nr_accesses.i.i.i = getelementptr inbounds %struct.damon_region, ptr %r.addr.0257.i.i, i32 0, i32 5
  %172 = ptrtoint ptr %last_nr_accesses.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %last_nr_accesses.i.i.i, align 4
  %174 = ptrtoint ptr %last_nr_accesses.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %last_nr_accesses.i.i.i.i, align 4
  %list.i1.i.i.i = getelementptr inbounds %struct.damon_region, ptr %r.addr.0257.i.i, i32 0, i32 3
  %175 = ptrtoint ptr %list.i1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %list.i1.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i.i.i, ptr noundef %list.i1.i.i.i, ptr noundef %176) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.i277.damon_insert_region.exit.i.i.i_crit_edge

if.end.i.i.i277.damon_insert_region.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i277
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_insert_region.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i277
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i.i.i = getelementptr i8, ptr %176, i32 4
  %177 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %list.i.i.i.i, ptr %prev1.i.i.i.i.i, align 4
  %178 = ptrtoint ptr %list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %176, ptr %list.i.i.i.i, align 8
  %179 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %list.i1.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %180 = ptrtoint ptr %list.i1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store volatile ptr %list.i.i.i.i, ptr %list.i1.i.i.i, align 4
  br label %damon_insert_region.exit.i.i.i

damon_insert_region.exit.i.i.i:                   ; preds = %if.end.i.i.i.i.i, %if.end.i.i.i277.damon_insert_region.exit.i.i.i_crit_edge
  %181 = ptrtoint ptr %nr_regions.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %nr_regions.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %182, 1
  store i32 %inc.i.i.i.i, ptr %nr_regions.i.i.i.i, align 4
  br label %damon_split_region_at.exit.i.i

damon_split_region_at.exit.i.i:                   ; preds = %damon_insert_region.exit.i.i.i, %if.end52.i.i.damon_split_region_at.exit.i.i_crit_edge
  %list.i.i.i = getelementptr inbounds %struct.damon_region, ptr %r.addr.0257.i.i, i32 0, i32 3
  %183 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %list.i.i.i, align 4
  %add.ptr.i211.i.i = getelementptr i8, ptr %184, i32 -16
  %end55.i.i = getelementptr i8, ptr %184, i32 -12
  %185 = ptrtoint ptr %end55.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %end55.i.i, align 4
  %187 = ptrtoint ptr %add.ptr.i211.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %add.ptr.i211.i.i, align 4
  %sub58.i.i = sub i32 %186, %188
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %damon_split_region_at.exit.i.i, %land.lhs.true31.i.i.if.end59.i.i_crit_edge, %if.end19.i.i.if.end59.i.i_crit_edge
  %sz.1.i.i = phi i32 [ %sub58.i.i, %damon_split_region_at.exit.i.i ], [ %sub.i196.i, %land.lhs.true31.i.i.if.end59.i.i_crit_edge ], [ %sub.i196.i, %if.end19.i.i.if.end59.i.i_crit_edge ]
  %r.addr.1.i.i = phi ptr [ %add.ptr.i211.i.i, %damon_split_region_at.exit.i.i ], [ %r.addr.0257.i.i, %land.lhs.true31.i.i.if.end59.i.i_crit_edge ], [ %r.addr.0257.i.i, %if.end19.i.i.if.end59.i.i_crit_edge ]
  %189 = ptrtoint ptr %charge_target_from.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr null, ptr %charge_target_from.i.i, align 4
  %190 = ptrtoint ptr %charge_addr_from20.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %charge_addr_from20.i.i, align 4
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %if.end59.i.i, %if.end9.i.i.if.end62.i.i_crit_edge
  %sz.2.i.i = phi i32 [ %sz.1.i.i, %if.end59.i.i ], [ %sub.i196.i, %if.end9.i.i.if.end62.i.i_crit_edge ]
  %r.addr.2.i.i = phi ptr [ %r.addr.1.i.i, %if.end59.i.i ], [ %r.addr.0257.i.i, %if.end9.i.i.if.end62.i.i_crit_edge ]
  %end.i.i.i.i = getelementptr inbounds %struct.damon_addr_range, ptr %r.addr.2.i.i, i32 0, i32 1
  %191 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %end.i.i.i.i, align 4
  %193 = ptrtoint ptr %r.addr.2.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %r.addr.2.i.i, align 4
  %sub.i.i.i.i278 = sub i32 %192, %194
  %195 = ptrtoint ptr %s.0260.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %s.0260.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %196, i32 %sub.i.i.i.i278)
  %cmp.not.i.i.i.i = icmp ugt i32 %196, %sub.i.i.i.i278
  br i1 %cmp.not.i.i.i.i, label %if.end62.i.i.cleanup.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end62.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end62.i.i
  %max_sz_region.i.i.i.i = getelementptr i8, ptr %.pn259.i.i, i32 -524
  %197 = ptrtoint ptr %max_sz_region.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %max_sz_region.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i278, i32 %198)
  %cmp2.not.i.i.i.i = icmp ugt i32 %sub.i.i.i.i278, %198
  br i1 %cmp2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.cleanup.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.cleanup.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %min_nr_accesses.i.i.i.i = getelementptr i8, ptr %.pn259.i.i, i32 -520
  %199 = ptrtoint ptr %min_nr_accesses.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %min_nr_accesses.i.i.i.i, align 4
  %nr_accesses.i.i212.i.i = getelementptr inbounds %struct.damon_region, ptr %r.addr.2.i.i, i32 0, i32 2
  %201 = ptrtoint ptr %nr_accesses.i.i212.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %nr_accesses.i.i212.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %200, i32 %202)
  %cmp4.not.i.i.i.i = icmp ugt i32 %200, %202
  br i1 %cmp4.not.i.i.i.i, label %land.lhs.true3.i.i.i.i.cleanup.i.i_crit_edge, label %land.lhs.true5.i.i.i.i

land.lhs.true3.i.i.i.i.cleanup.i.i_crit_edge:     ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

land.lhs.true5.i.i.i.i:                           ; preds = %land.lhs.true3.i.i.i.i
  %max_nr_accesses.i.i.i.i = getelementptr i8, ptr %.pn259.i.i, i32 -516
  %203 = ptrtoint ptr %max_nr_accesses.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %max_nr_accesses.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %202, i32 %204)
  %cmp7.not.i.i.i.i = icmp ugt i32 %202, %204
  br i1 %cmp7.not.i.i.i.i, label %land.lhs.true5.i.i.i.i.cleanup.i.i_crit_edge, label %land.lhs.true8.i.i.i.i

land.lhs.true5.i.i.i.i.cleanup.i.i_crit_edge:     ; preds = %land.lhs.true5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

land.lhs.true8.i.i.i.i:                           ; preds = %land.lhs.true5.i.i.i.i
  %min_age_region.i.i.i.i = getelementptr i8, ptr %.pn259.i.i, i32 -512
  %205 = ptrtoint ptr %min_age_region.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %min_age_region.i.i.i.i, align 4
  %age.i.i213.i.i = getelementptr inbounds %struct.damon_region, ptr %r.addr.2.i.i, i32 0, i32 4
  %207 = ptrtoint ptr %age.i.i213.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %age.i.i213.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %206, i32 %208)
  %cmp9.not.i.i.i.i = icmp ugt i32 %206, %208
  br i1 %cmp9.not.i.i.i.i, label %land.lhs.true8.i.i.i.i.cleanup.i.i_crit_edge, label %__damos_valid_target.exit.i.i.i

land.lhs.true8.i.i.i.i.cleanup.i.i_crit_edge:     ; preds = %land.lhs.true8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

__damos_valid_target.exit.i.i.i:                  ; preds = %land.lhs.true8.i.i.i.i
  %max_age_region.i.i.i.i = getelementptr i8, ptr %.pn259.i.i, i32 -508
  %209 = ptrtoint ptr %max_age_region.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %max_age_region.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %208, i32 %210)
  %cmp11.i.not.i.i.i = icmp ugt i32 %208, %210
  br i1 %cmp11.i.not.i.i.i, label %__damos_valid_target.exit.i.i.i.cleanup.i.i_crit_edge, label %lor.lhs.false.i.i.i

__damos_valid_target.exit.i.i.i.cleanup.i.i_crit_edge: ; preds = %__damos_valid_target.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

lor.lhs.false.i.i.i:                              ; preds = %__damos_valid_target.exit.i.i.i
  %211 = ptrtoint ptr %esz.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %esz.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool1.not.i.i.i = icmp eq i32 %212, 0
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.if.end65.i.i_crit_edge, label %lor.lhs.false2.i.i.i

lor.lhs.false.i.i.i.if.end65.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.i.i

lor.lhs.false2.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %213 = ptrtoint ptr %get_scheme_score.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %get_scheme_score.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %214, null
  br i1 %tobool3.not.i.i.i, label %lor.lhs.false2.i.i.i.if.end65.i.i_crit_edge, label %damos_valid_target.exit.i.i

lor.lhs.false2.i.i.i.if.end65.i.i_crit_edge:      ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.i.i

damos_valid_target.exit.i.i:                      ; preds = %lor.lhs.false2.i.i.i
  %call7.i.i.i = call i32 %214(ptr noundef %data, ptr noundef %t.1229.i, ptr noundef %r.addr.2.i.i, ptr noundef %s.0260.i.i) #12
  %min_score.i.i.i = getelementptr i8, ptr %.pn259.i.i, i32 -48
  %215 = ptrtoint ptr %min_score.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %min_score.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i.i.i, i32 %216)
  %cmp.i.not.i.i = icmp ult i32 %call7.i.i.i, %216
  br i1 %cmp.i.not.i.i, label %damos_valid_target.exit.i.i.cleanup.i.i_crit_edge, label %damos_valid_target.exit.i.i.if.end65.i.i_crit_edge

damos_valid_target.exit.i.i.if.end65.i.i_crit_edge: ; preds = %damos_valid_target.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.i.i

damos_valid_target.exit.i.i.cleanup.i.i_crit_edge: ; preds = %damos_valid_target.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

if.end65.i.i:                                     ; preds = %damos_valid_target.exit.i.i.if.end65.i.i_crit_edge, %lor.lhs.false2.i.i.i.if.end65.i.i_crit_edge, %lor.lhs.false.i.i.i.if.end65.i.i_crit_edge
  %217 = ptrtoint ptr %apply_scheme.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %apply_scheme.i.i, align 8
  %tobool66.not.i.i = icmp eq ptr %218, null
  br i1 %tobool66.not.i.i, label %if.end65.i.i.if.end110.i.i_crit_edge, label %if.then67.i.i

if.end65.i.i.if.end110.i.i_crit_edge:             ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110.i.i

if.then67.i.i:                                    ; preds = %if.end65.i.i
  %219 = ptrtoint ptr %esz.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %esz.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool69.not.i.i = icmp eq i32 %220, 0
  br i1 %tobool69.not.i.i, label %if.then67.i.i.if.end85.i.i_crit_edge, label %land.lhs.true70.i.i

if.then67.i.i.if.end85.i.i_crit_edge:             ; preds = %if.then67.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85.i.i

land.lhs.true70.i.i:                              ; preds = %if.then67.i.i
  %charged_sz71.i.i = getelementptr i8, ptr %.pn259.i.i, i32 -464
  %221 = ptrtoint ptr %charged_sz71.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %charged_sz71.i.i, align 4
  %add72.i.i = add i32 %222, %sz.2.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add72.i.i, i32 %220)
  %cmp74.i.i = icmp ugt i32 %add72.i.i, %220
  br i1 %cmp74.i.i, label %if.then75.i.i, label %land.lhs.true70.i.i.if.end85.i.i_crit_edge

land.lhs.true70.i.i.if.end85.i.i_crit_edge:       ; preds = %land.lhs.true70.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85.i.i

if.then75.i.i:                                    ; preds = %land.lhs.true70.i.i
  %sub78.i.i = sub i32 %220, %222
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub78.i.i)
  %tobool82.not.i.i = icmp eq i32 %sub78.i.i, 0
  br i1 %tobool82.not.i.i, label %if.then75.i.i.update_stat.i.i_crit_edge, label %if.end84.i.i

if.then75.i.i.update_stat.i.i_crit_edge:          ; preds = %if.then75.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %update_stat.i.i

if.end84.i.i:                                     ; preds = %if.then75.i.i
  %223 = ptrtoint ptr %r.addr.2.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %r.addr.2.i.i, align 4
  %225 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %end.i.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %227 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i216.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %227, i32 noundef 3264, i32 noundef 32) #15
  %tobool.not.i.i217.i.i = icmp eq ptr %call7.i.i.i216.i.i, null
  br i1 %tobool.not.i.i217.i.i, label %if.end84.i.i.if.end85.i.i_crit_edge, label %if.end.i229.i.i

if.end84.i.i.if.end85.i.i_crit_edge:              ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85.i.i

if.end.i229.i.i:                                  ; preds = %if.end84.i.i
  %add.i218.i.i = add i32 %224, %sub78.i.i
  %228 = ptrtoint ptr %call7.i.i.i216.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %add.i218.i.i, ptr %call7.i.i.i216.i.i, align 8
  %end3.i.i219.i.i = getelementptr inbounds %struct.damon_addr_range, ptr %call7.i.i.i216.i.i, i32 0, i32 1
  %229 = ptrtoint ptr %end3.i.i219.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %226, ptr %end3.i.i219.i.i, align 4
  %nr_accesses.i.i220.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.i216.i.i, i32 0, i32 2
  %230 = ptrtoint ptr %nr_accesses.i.i220.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 0, ptr %nr_accesses.i.i220.i.i, align 4
  %list.i.i221.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.i216.i.i, i32 0, i32 3
  %231 = ptrtoint ptr %list.i.i221.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store volatile ptr %list.i.i221.i.i, ptr %list.i.i221.i.i, align 8
  %prev.i.i.i222.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.i216.i.i, i32 0, i32 3, i32 1
  %232 = ptrtoint ptr %prev.i.i.i222.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %list.i.i221.i.i, ptr %prev.i.i.i222.i.i, align 4
  %age.i.i223.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.i216.i.i, i32 0, i32 4
  %last_nr_accesses.i.i224.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.i216.i.i, i32 0, i32 5
  %233 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %add.i218.i.i, ptr %end.i.i.i.i, align 4
  %234 = ptrtoint ptr %age.i.i213.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %age.i.i213.i.i, align 4
  %236 = ptrtoint ptr %age.i.i223.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %age.i.i223.i.i, align 8
  %last_nr_accesses.i226.i.i = getelementptr inbounds %struct.damon_region, ptr %r.addr.2.i.i, i32 0, i32 5
  %237 = ptrtoint ptr %last_nr_accesses.i226.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %last_nr_accesses.i226.i.i, align 4
  %239 = ptrtoint ptr %last_nr_accesses.i.i224.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %238, ptr %last_nr_accesses.i.i224.i.i, align 4
  %list.i1.i227.i.i = getelementptr inbounds %struct.damon_region, ptr %r.addr.2.i.i, i32 0, i32 3
  %240 = ptrtoint ptr %list.i1.i227.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %list.i1.i227.i.i, align 4
  %call.i.i.i228.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i221.i.i, ptr noundef %list.i1.i227.i.i, ptr noundef %241) #12
  br i1 %call.i.i.i228.i.i, label %if.end.i.i.i231.i.i, label %if.end.i229.i.i.damon_insert_region.exit.i234.i.i_crit_edge

if.end.i229.i.i.damon_insert_region.exit.i234.i.i_crit_edge: ; preds = %if.end.i229.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_insert_region.exit.i234.i.i

if.end.i.i.i231.i.i:                              ; preds = %if.end.i229.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i230.i.i = getelementptr i8, ptr %241, i32 4
  %242 = ptrtoint ptr %prev1.i.i.i230.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %list.i.i221.i.i, ptr %prev1.i.i.i230.i.i, align 4
  %243 = ptrtoint ptr %list.i.i221.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %241, ptr %list.i.i221.i.i, align 8
  %244 = ptrtoint ptr %prev.i.i.i222.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %list.i1.i227.i.i, ptr %prev.i.i.i222.i.i, align 4
  %245 = ptrtoint ptr %list.i1.i227.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store volatile ptr %list.i.i221.i.i, ptr %list.i1.i227.i.i, align 4
  br label %damon_insert_region.exit.i234.i.i

damon_insert_region.exit.i234.i.i:                ; preds = %if.end.i.i.i231.i.i, %if.end.i229.i.i.damon_insert_region.exit.i234.i.i_crit_edge
  %246 = ptrtoint ptr %nr_regions.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %nr_regions.i.i.i.i, align 4
  %inc.i.i233.i.i = add i32 %247, 1
  store i32 %inc.i.i233.i.i, ptr %nr_regions.i.i.i.i, align 4
  br label %if.end85.i.i

if.end85.i.i:                                     ; preds = %damon_insert_region.exit.i234.i.i, %if.end84.i.i.if.end85.i.i_crit_edge, %land.lhs.true70.i.i.if.end85.i.i_crit_edge, %if.then67.i.i.if.end85.i.i_crit_edge
  %sz.3.i.i = phi i32 [ %sz.2.i.i, %land.lhs.true70.i.i.if.end85.i.i_crit_edge ], [ %sz.2.i.i, %if.then67.i.i.if.end85.i.i_crit_edge ], [ %sub78.i.i, %if.end84.i.i.if.end85.i.i_crit_edge ], [ %sub78.i.i, %damon_insert_region.exit.i234.i.i ]
  call void @ktime_get_coarse_ts64(ptr noundef nonnull %begin.i.i) #12
  %248 = ptrtoint ptr %apply_scheme.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %apply_scheme.i.i, align 8
  %call88.i.i = call i32 %249(ptr noundef %data, ptr noundef %t.1229.i, ptr noundef %r.addr.2.i.i, ptr noundef %s.0260.i.i) #12
  call void @ktime_get_coarse_ts64(ptr noundef nonnull %end4.i.i) #12
  %250 = ptrtoint ptr %end4.i.i to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %end4.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %251)
  %cmp.i236.i.i = icmp sgt i64 %251, 9223372035
  br i1 %cmp.i236.i.i, label %if.end85.i.i.timespec64_to_ns.exit.i.i282_crit_edge, label %if.end.i237.i.i

if.end85.i.i.timespec64_to_ns.exit.i.i282_crit_edge: ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %timespec64_to_ns.exit.i.i282

if.end.i237.i.i:                                  ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %251)
  %cmp2.i.i.i279 = icmp slt i64 %251, -9223372035
  br i1 %cmp2.i.i.i279, label %if.end.i237.i.i.timespec64_to_ns.exit.i.i282_crit_edge, label %if.end4.i.i.i281

if.end.i237.i.i.timespec64_to_ns.exit.i.i282_crit_edge: ; preds = %if.end.i237.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %timespec64_to_ns.exit.i.i282

if.end4.i.i.i281:                                 ; preds = %if.end.i237.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i.i.i280 = mul nsw i64 %251, 1000000000
  %252 = ptrtoint ptr %tv_nsec.i.i.i274 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %tv_nsec.i.i.i274, align 8
  %conv.i262.i.i = zext i32 %253 to i64
  %add.i238.i.i = add i64 %mul.i.i.i280, %conv.i262.i.i
  br label %timespec64_to_ns.exit.i.i282

timespec64_to_ns.exit.i.i282:                     ; preds = %if.end4.i.i.i281, %if.end.i237.i.i.timespec64_to_ns.exit.i.i282_crit_edge, %if.end85.i.i.timespec64_to_ns.exit.i.i282_crit_edge
  %retval.0.i239.i.i = phi i64 [ %add.i238.i.i, %if.end4.i.i.i281 ], [ 9223372036854775807, %if.end85.i.i.timespec64_to_ns.exit.i.i282_crit_edge ], [ -9223372036854775808, %if.end.i237.i.i.timespec64_to_ns.exit.i.i282_crit_edge ]
  %254 = ptrtoint ptr %begin.i.i to i32
  call void @__asan_load8_noabort(i32 %254)
  %255 = load i64, ptr %begin.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %255)
  %cmp.i240.i.i = icmp sgt i64 %255, 9223372035
  br i1 %cmp.i240.i.i, label %timespec64_to_ns.exit.i.i282.timespec64_to_ns.exit249.i.i_crit_edge, label %if.end.i242.i.i

timespec64_to_ns.exit.i.i282.timespec64_to_ns.exit249.i.i_crit_edge: ; preds = %timespec64_to_ns.exit.i.i282
  call void @__sanitizer_cov_trace_pc() #14
  br label %timespec64_to_ns.exit249.i.i

if.end.i242.i.i:                                  ; preds = %timespec64_to_ns.exit.i.i282
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %255)
  %cmp2.i241.i.i = icmp slt i64 %255, -9223372035
  br i1 %cmp2.i241.i.i, label %if.end.i242.i.i.timespec64_to_ns.exit249.i.i_crit_edge, label %if.end4.i247.i.i

if.end.i242.i.i.timespec64_to_ns.exit249.i.i_crit_edge: ; preds = %if.end.i242.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %timespec64_to_ns.exit249.i.i

if.end4.i247.i.i:                                 ; preds = %if.end.i242.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i243.i.i = mul nsw i64 %255, 1000000000
  %256 = ptrtoint ptr %tv_nsec.i244.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %tv_nsec.i244.i.i, align 8
  %conv.i245263.i.i = zext i32 %257 to i64
  %add.i246.i.i = add i64 %mul.i243.i.i, %conv.i245263.i.i
  br label %timespec64_to_ns.exit249.i.i

timespec64_to_ns.exit249.i.i:                     ; preds = %if.end4.i247.i.i, %if.end.i242.i.i.timespec64_to_ns.exit249.i.i_crit_edge, %timespec64_to_ns.exit.i.i282.timespec64_to_ns.exit249.i.i_crit_edge
  %retval.0.i248.i.i = phi i64 [ %add.i246.i.i, %if.end4.i247.i.i ], [ 9223372036854775807, %timespec64_to_ns.exit.i.i282.timespec64_to_ns.exit249.i.i_crit_edge ], [ -9223372036854775808, %if.end.i242.i.i.timespec64_to_ns.exit249.i.i_crit_edge ]
  %sub91.i.i = sub i64 %retval.0.i239.i.i, %retval.0.i248.i.i
  %total_charged_ns.i201.i = getelementptr i8, ptr %.pn259.i.i, i32 -472
  %258 = ptrtoint ptr %total_charged_ns.i201.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %total_charged_ns.i201.i, align 4
  %260 = trunc i64 %sub91.i.i to i32
  %conv93.i.i = add i32 %259, %260
  store i32 %conv93.i.i, ptr %total_charged_ns.i201.i, align 4
  %charged_sz94.i.i = getelementptr i8, ptr %.pn259.i.i, i32 -464
  %261 = ptrtoint ptr %charged_sz94.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %charged_sz94.i.i, align 4
  %add95.i.i = add i32 %262, %sz.3.i.i
  store i32 %add95.i.i, ptr %charged_sz94.i.i, align 4
  %263 = ptrtoint ptr %esz.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %esz.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %tobool97.not.i.i = icmp eq i32 %264, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add95.i.i, i32 %264)
  %cmp101.not.i.i = icmp ult i32 %add95.i.i, %264
  %or.cond.i202.i = select i1 %tobool97.not.i.i, i1 true, i1 %cmp101.not.i.i
  br i1 %or.cond.i202.i, label %timespec64_to_ns.exit249.i.i.if.end110.i.i_crit_edge, label %if.then103.i.i

timespec64_to_ns.exit249.i.i.if.end110.i.i_crit_edge: ; preds = %timespec64_to_ns.exit249.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110.i.i

if.then103.i.i:                                   ; preds = %timespec64_to_ns.exit249.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %265 = ptrtoint ptr %charge_target_from.i.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %t.1229.i, ptr %charge_target_from.i.i, align 4
  %266 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %end.i.i.i.i, align 4
  %add107.i.i = add i32 %267, 1
  %charge_addr_from108.i.i = getelementptr i8, ptr %.pn259.i.i, i32 -452
  %268 = ptrtoint ptr %charge_addr_from108.i.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %add107.i.i, ptr %charge_addr_from108.i.i, align 4
  br label %if.end110.i.i

if.end110.i.i:                                    ; preds = %if.then103.i.i, %timespec64_to_ns.exit249.i.i.if.end110.i.i_crit_edge, %if.end65.i.i.if.end110.i.i_crit_edge
  %sz.4.i.i = phi i32 [ %sz.3.i.i, %if.then103.i.i ], [ %sz.3.i.i, %timespec64_to_ns.exit249.i.i.if.end110.i.i_crit_edge ], [ %sz.2.i.i, %if.end65.i.i.if.end110.i.i_crit_edge ]
  %sz_applied.0.i.i = phi i32 [ %call88.i.i, %if.then103.i.i ], [ %call88.i.i, %timespec64_to_ns.exit249.i.i.if.end110.i.i_crit_edge ], [ 0, %if.end65.i.i.if.end110.i.i_crit_edge ]
  %action.i.i = getelementptr i8, ptr %.pn259.i.i, i32 -504
  %269 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %action.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %270)
  %cmp111.not.i.i = icmp eq i32 %270, 5
  br i1 %cmp111.not.i.i, label %if.end110.i.i.update_stat.i.i_crit_edge, label %if.then113.i.i

if.end110.i.i.update_stat.i.i_crit_edge:          ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %update_stat.i.i

if.then113.i.i:                                   ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %271 = ptrtoint ptr %age.i.i213.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 0, ptr %age.i.i213.i.i, align 4
  br label %update_stat.i.i

update_stat.i.i:                                  ; preds = %if.then113.i.i, %if.end110.i.i.update_stat.i.i_crit_edge, %if.then75.i.i.update_stat.i.i_crit_edge
  %sz.5.i.i = phi i32 [ %sz.4.i.i, %if.then113.i.i ], [ %sz.4.i.i, %if.end110.i.i.update_stat.i.i_crit_edge ], [ 0, %if.then75.i.i.update_stat.i.i_crit_edge ]
  %sz_applied.1.i.i = phi i32 [ %sz_applied.0.i.i, %if.then113.i.i ], [ %sz_applied.0.i.i, %if.end110.i.i.update_stat.i.i_crit_edge ], [ 0, %if.then75.i.i.update_stat.i.i_crit_edge ]
  %stat.i.i = getelementptr i8, ptr %.pn259.i.i, i32 -20
  %272 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %stat.i.i, align 4
  %inc.i.i = add i32 %273, 1
  store i32 %inc.i.i, ptr %stat.i.i, align 4
  %sz_tried.i.i = getelementptr i8, ptr %.pn259.i.i, i32 -16
  %274 = ptrtoint ptr %sz_tried.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %sz_tried.i.i, align 4
  %add116.i.i = add i32 %275, %sz.5.i.i
  store i32 %add116.i.i, ptr %sz_tried.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz_applied.1.i.i)
  %tobool117.not.i.i = icmp eq i32 %sz_applied.1.i.i, 0
  br i1 %tobool117.not.i.i, label %update_stat.i.i.if.end121.i.i_crit_edge, label %if.then118.i.i

update_stat.i.i.if.end121.i.i_crit_edge:          ; preds = %update_stat.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121.i.i

if.then118.i.i:                                   ; preds = %update_stat.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %nr_applied.i.i = getelementptr i8, ptr %.pn259.i.i, i32 -12
  %276 = ptrtoint ptr %nr_applied.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %nr_applied.i.i, align 4
  %inc120.i.i = add i32 %277, 1
  store i32 %inc120.i.i, ptr %nr_applied.i.i, align 4
  br label %if.end121.i.i

if.end121.i.i:                                    ; preds = %if.then118.i.i, %update_stat.i.i.if.end121.i.i_crit_edge
  %sz_applied123.i.i = getelementptr i8, ptr %.pn259.i.i, i32 -8
  %278 = ptrtoint ptr %sz_applied123.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %sz_applied123.i.i, align 4
  %add124.i.i = add i32 %279, %sz_applied.1.i.i
  store i32 %add124.i.i, ptr %sz_applied123.i.i, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end121.i.i, %damos_valid_target.exit.i.i.cleanup.i.i_crit_edge, %__damos_valid_target.exit.i.i.i.cleanup.i.i_crit_edge, %land.lhs.true8.i.i.i.i.cleanup.i.i_crit_edge, %land.lhs.true5.i.i.i.i.cleanup.i.i_crit_edge, %land.lhs.true3.i.i.i.i.cleanup.i.i_crit_edge, %land.lhs.true.i.i.i.i.cleanup.i.i_crit_edge, %if.end62.i.i.cleanup.i.i_crit_edge, %if.then43.i.i.cleanup.i.i_crit_edge, %land.lhs.true22.i.i.cleanup.i.i_crit_edge, %if.then17.i.i, %if.then11.i.i.cleanup.i.i_crit_edge, %land.lhs.true.i200.i.cleanup.i.i_crit_edge, %for.body.i.i275.cleanup.i.i_crit_edge
  %r.addr.3.i.i = phi ptr [ %r.addr.0257.i.i, %if.then17.i.i ], [ %r.addr.2.i.i, %if.end121.i.i ], [ %r.addr.0257.i.i, %for.body.i.i275.cleanup.i.i_crit_edge ], [ %r.addr.0257.i.i, %land.lhs.true.i200.i.cleanup.i.i_crit_edge ], [ %r.addr.0257.i.i, %if.then11.i.i.cleanup.i.i_crit_edge ], [ %r.addr.0257.i.i, %land.lhs.true22.i.i.cleanup.i.i_crit_edge ], [ %r.addr.0257.i.i, %if.then43.i.i.cleanup.i.i_crit_edge ], [ %r.addr.2.i.i, %damos_valid_target.exit.i.i.cleanup.i.i_crit_edge ], [ %r.addr.2.i.i, %__damos_valid_target.exit.i.i.i.cleanup.i.i_crit_edge ], [ %r.addr.2.i.i, %land.lhs.true8.i.i.i.i.cleanup.i.i_crit_edge ], [ %r.addr.2.i.i, %land.lhs.true5.i.i.i.i.cleanup.i.i_crit_edge ], [ %r.addr.2.i.i, %land.lhs.true3.i.i.i.i.cleanup.i.i_crit_edge ], [ %r.addr.2.i.i, %land.lhs.true.i.i.i.i.cleanup.i.i_crit_edge ], [ %r.addr.2.i.i, %if.end62.i.i.cleanup.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %end4.i.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %begin.i.i) #12
  %280 = ptrtoint ptr %.pn259.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %.pn.i.i283 = load ptr, ptr %.pn259.i.i, align 4
  %cmp.not.i203.i = icmp eq ptr %.pn.i.i283, %schemes.i
  br i1 %cmp.not.i203.i, label %cleanup.i.i.damon_do_apply_schemes.exit.i_crit_edge, label %cleanup.i.i.for.body.i.i275_crit_edge

cleanup.i.i.for.body.i.i275_crit_edge:            ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i275

cleanup.i.i.damon_do_apply_schemes.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_do_apply_schemes.exit.i

damon_do_apply_schemes.exit.i:                    ; preds = %cleanup.i.i.damon_do_apply_schemes.exit.i_crit_edge, %for.body115.i.damon_do_apply_schemes.exit.i_crit_edge
  %cmp113.not.i = icmp eq ptr %.pn188.i, %regions_list101.i
  br i1 %cmp113.not.i, label %damon_do_apply_schemes.exit.i.for.cond94.loopexit.i_crit_edge, label %damon_do_apply_schemes.exit.i.for.body115.i_crit_edge

damon_do_apply_schemes.exit.i.for.body115.i_crit_edge: ; preds = %damon_do_apply_schemes.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body115.i

damon_do_apply_schemes.exit.i.for.cond94.loopexit.i_crit_edge: ; preds = %damon_do_apply_schemes.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond94.loopexit.i

kdamond_apply_schemes.exit:                       ; preds = %for.cond94.loopexit.i.kdamond_apply_schemes.exit_crit_edge, %for.end88.i.kdamond_apply_schemes.exit_crit_edge
  %281 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %.pn41.i285 = load ptr, ptr %adaptive_targets.i, align 4
  %cmp.not43.i = icmp eq ptr %.pn41.i285, %adaptive_targets.i
  br i1 %cmp.not43.i, label %kdamond_apply_schemes.exit.kdamond_reset_aggregated.exit_crit_edge, label %kdamond_apply_schemes.exit.for.body.i287_crit_edge

kdamond_apply_schemes.exit.for.body.i287_crit_edge: ; preds = %kdamond_apply_schemes.exit
  br label %for.body.i287

kdamond_apply_schemes.exit.kdamond_reset_aggregated.exit_crit_edge: ; preds = %kdamond_apply_schemes.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %kdamond_reset_aggregated.exit

for.body.i287:                                    ; preds = %for.end.i294.for.body.i287_crit_edge, %kdamond_apply_schemes.exit.for.body.i287_crit_edge
  %.pn45.i = phi ptr [ %.pn.i292, %for.end.i294.for.body.i287_crit_edge ], [ %.pn41.i285, %kdamond_apply_schemes.exit.for.body.i287_crit_edge ]
  %ti.044.i = phi i32 [ %inc.i291, %for.end.i294.for.body.i287_crit_edge ], [ 0, %kdamond_apply_schemes.exit.for.body.i287_crit_edge ]
  %t.046.i = getelementptr i8, ptr %.pn45.i, i32 -16
  %regions_list.i286 = getelementptr i8, ptr %.pn45.i, i32 -8
  %282 = ptrtoint ptr %regions_list.i286 to i32
  call void @__asan_load4_noabort(i32 %282)
  %.pn3738.i = load ptr, ptr %regions_list.i286, align 4
  %cmp9.not39.i = icmp eq ptr %.pn3738.i, %regions_list.i286
  br i1 %cmp9.not39.i, label %for.body.i287.for.end.i294_crit_edge, label %for.body11.lr.ph.i

for.body.i287.for.end.i294_crit_edge:             ; preds = %for.body.i287
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i294

for.body11.lr.ph.i:                               ; preds = %for.body.i287
  %nr_regions.i.i = getelementptr i8, ptr %.pn45.i, i32 -12
  br label %for.body11.i290

for.body11.i290:                                  ; preds = %for.body11.i290.for.body11.i290_crit_edge, %for.body11.lr.ph.i
  %.pn3740.i = phi ptr [ %.pn3738.i, %for.body11.lr.ph.i ], [ %.pn37.i, %for.body11.i290.for.body11.i290_crit_edge ]
  %r.0.i288 = getelementptr i8, ptr %.pn3740.i, i32 -16
  %283 = ptrtoint ptr %nr_regions.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %nr_regions.i.i, align 4
  call fastcc void @trace_damon_aggregated(ptr noundef %t.046.i, i32 noundef %ti.044.i, ptr noundef %r.0.i288, i32 noundef %284) #12
  %nr_accesses.i = getelementptr i8, ptr %.pn3740.i, i32 -4
  %285 = ptrtoint ptr %nr_accesses.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %nr_accesses.i, align 4
  %last_nr_accesses.i = getelementptr i8, ptr %.pn3740.i, i32 12
  %287 = ptrtoint ptr %last_nr_accesses.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %286, ptr %last_nr_accesses.i, align 4
  store i32 0, ptr %nr_accesses.i, align 4
  %288 = ptrtoint ptr %.pn3740.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %.pn37.i = load ptr, ptr %.pn3740.i, align 4
  %cmp9.not.i289 = icmp eq ptr %.pn37.i, %regions_list.i286
  br i1 %cmp9.not.i289, label %for.body11.i290.for.end.i294_crit_edge, label %for.body11.i290.for.body11.i290_crit_edge

for.body11.i290.for.body11.i290_crit_edge:        ; preds = %for.body11.i290
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.i290

for.body11.i290.for.end.i294_crit_edge:           ; preds = %for.body11.i290
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i294

for.end.i294:                                     ; preds = %for.body11.i290.for.end.i294_crit_edge, %for.body.i287.for.end.i294_crit_edge
  %inc.i291 = add i32 %ti.044.i, 1
  %289 = ptrtoint ptr %.pn45.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %.pn.i292 = load ptr, ptr %.pn45.i, align 4
  %cmp.not.i293 = icmp eq ptr %.pn.i292, %adaptive_targets.i
  br i1 %cmp.not.i293, label %for.end.i294.kdamond_reset_aggregated.exit_crit_edge, label %for.end.i294.for.body.i287_crit_edge

for.end.i294.for.body.i287_crit_edge:             ; preds = %for.end.i294
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i287

for.end.i294.kdamond_reset_aggregated.exit_crit_edge: ; preds = %for.end.i294
  call void @__sanitizer_cov_trace_pc() #14
  br label %kdamond_reset_aggregated.exit

kdamond_reset_aggregated.exit:                    ; preds = %for.end.i294.kdamond_reset_aggregated.exit_crit_edge, %kdamond_apply_schemes.exit.kdamond_reset_aggregated.exit_crit_edge
  %290 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %.pn51.i = load ptr, ptr %adaptive_targets.i, align 4
  %cmp.not52.i = icmp eq ptr %.pn51.i, %adaptive_targets.i
  br i1 %cmp.not52.i, label %kdamond_reset_aggregated.exit.for.end31.i_crit_edge, label %kdamond_reset_aggregated.exit.for.body.i301_crit_edge

kdamond_reset_aggregated.exit.for.body.i301_crit_edge: ; preds = %kdamond_reset_aggregated.exit
  br label %for.body.i301

kdamond_reset_aggregated.exit.for.end31.i_crit_edge: ; preds = %kdamond_reset_aggregated.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end31.i

for.body.i301:                                    ; preds = %for.body.i301.for.body.i301_crit_edge, %kdamond_reset_aggregated.exit.for.body.i301_crit_edge
  %.pn54.i = phi ptr [ %.pn.i299, %for.body.i301.for.body.i301_crit_edge ], [ %.pn51.i, %kdamond_reset_aggregated.exit.for.body.i301_crit_edge ]
  %nr_regions.053.i = phi i32 [ %add.i298, %for.body.i301.for.body.i301_crit_edge ], [ 0, %kdamond_reset_aggregated.exit.for.body.i301_crit_edge ]
  %nr_regions.i.i297 = getelementptr i8, ptr %.pn54.i, i32 -12
  %291 = ptrtoint ptr %nr_regions.i.i297 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %nr_regions.i.i297, align 4
  %add.i298 = add i32 %292, %nr_regions.053.i
  %293 = ptrtoint ptr %.pn54.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %.pn.i299 = load ptr, ptr %.pn54.i, align 4
  %cmp.not.i300 = icmp eq ptr %.pn.i299, %adaptive_targets.i
  br i1 %cmp.not.i300, label %for.end.i303, label %for.body.i301.for.body.i301_crit_edge

for.body.i301.for.body.i301_crit_edge:            ; preds = %for.body.i301
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i301

for.end.i303:                                     ; preds = %for.body.i301
  %294 = ptrtoint ptr %max_nr_regions.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %max_nr_regions.i, align 4
  %div49.i = lshr i32 %295, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i298, i32 %div49.i)
  %cmp7.i302 = icmp ugt i32 %add.i298, %div49.i
  br i1 %cmp7.i302, label %for.end.i303.kdamond_split_regions.exit_crit_edge, label %for.body24.i.preheader

for.end.i303.kdamond_split_regions.exit_crit_edge: ; preds = %for.end.i303
  call void @__sanitizer_cov_trace_pc() #14
  br label %kdamond_split_regions.exit

for.body24.i.preheader:                           ; preds = %for.end.i303
  %296 = load i32, ptr @kdamond_split_regions.last_nr_regions, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %296, i32 %add.i298)
  %cmp8.i = icmp eq i32 %296, %add.i298
  %div10.i = udiv i32 %295, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i298, i32 %div10.i)
  %cmp11.i = icmp ult i32 %add.i298, %div10.i
  %or.cond.i304 = select i1 %cmp8.i, i1 %cmp11.i, i1 false
  %nr_subregions.0.i = select i1 %or.cond.i304, i32 3, i32 2
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.body24.i.for.body24.i_crit_edge, %for.body24.i.preheader
  %.pn5057.i = phi ptr [ %.pn50.i, %for.body24.i.for.body24.i_crit_edge ], [ %.pn51.i, %for.body24.i.preheader ]
  %t.1.i = getelementptr i8, ptr %.pn5057.i, i32 -16
  call fastcc void @damon_split_regions_of(ptr noundef %t.1.i, i32 noundef %nr_subregions.0.i) #12
  %297 = ptrtoint ptr %.pn5057.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %.pn50.i = load ptr, ptr %.pn5057.i, align 4
  %cmp22.not.i = icmp eq ptr %.pn50.i, %adaptive_targets.i
  br i1 %cmp22.not.i, label %for.body24.i.for.end31.i_crit_edge, label %for.body24.i.for.body24.i_crit_edge

for.body24.i.for.body24.i_crit_edge:              ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body24.i

for.body24.i.for.end31.i_crit_edge:               ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end31.i

for.end31.i:                                      ; preds = %for.body24.i.for.end31.i_crit_edge, %kdamond_reset_aggregated.exit.for.end31.i_crit_edge
  %nr_regions.0.lcssa62.i381 = phi i32 [ 0, %kdamond_reset_aggregated.exit.for.end31.i_crit_edge ], [ %add.i298, %for.body24.i.for.end31.i_crit_edge ]
  store i32 %nr_regions.0.lcssa62.i381, ptr @kdamond_split_regions.last_nr_regions, align 4
  br label %kdamond_split_regions.exit

kdamond_split_regions.exit:                       ; preds = %for.end31.i, %for.end.i303.kdamond_split_regions.exit_crit_edge
  %298 = ptrtoint ptr %reset_aggregated to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %reset_aggregated, align 8
  %tobool59.not = icmp eq ptr %299, null
  br i1 %tobool59.not, label %kdamond_split_regions.exit.if.end64_crit_edge, label %if.then60

kdamond_split_regions.exit.if.end64_crit_edge:    ; preds = %kdamond_split_regions.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then60:                                        ; preds = %kdamond_split_regions.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void %299(ptr noundef %data) #12
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %kdamond_split_regions.exit.if.end64_crit_edge, %kdamond_aggregate_interval_passed.exit
  %done.4.off0 = phi i1 [ %done.3.off0, %if.then60 ], [ %done.3.off0, %kdamond_split_regions.exit.if.end64_crit_edge ], [ %done.2.off0, %kdamond_aggregate_interval_passed.exit ]
  %300 = ptrtoint ptr %primitive_update_interval.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %primitive_update_interval.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now.i.i307) #12
  %302 = call ptr @memset(ptr %now.i.i307, i32 255, i32 16)
  call void @ktime_get_coarse_ts64(ptr noundef nonnull %now.i.i307) #12
  %303 = ptrtoint ptr %now.i.i307 to i32
  call void @__asan_load8_noabort(i32 %303)
  %304 = load i64, ptr %now.i.i307, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %304)
  %cmp.i.i.i308 = icmp sgt i64 %304, 9223372035
  br i1 %cmp.i.i.i308, label %if.end64.timespec64_to_ns.exit.i.i318_crit_edge, label %if.end.i.i.i310

if.end64.timespec64_to_ns.exit.i.i318_crit_edge:  ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %timespec64_to_ns.exit.i.i318

if.end.i.i.i310:                                  ; preds = %if.end64
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %304)
  %cmp2.i.i.i309 = icmp slt i64 %304, -9223372035
  br i1 %cmp2.i.i.i309, label %if.end.i.i.i310.timespec64_to_ns.exit.i.i318_crit_edge, label %if.end4.i.i.i315

if.end.i.i.i310.timespec64_to_ns.exit.i.i318_crit_edge: ; preds = %if.end.i.i.i310
  call void @__sanitizer_cov_trace_pc() #14
  br label %timespec64_to_ns.exit.i.i318

if.end4.i.i.i315:                                 ; preds = %if.end.i.i.i310
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i.i.i311 = mul nsw i64 %304, 1000000000
  %305 = ptrtoint ptr %tv_nsec.i.i.i312 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %tv_nsec.i.i.i312, align 8
  %conv.i.i.i313 = sext i32 %306 to i64
  %add.i.i.i314 = add i64 %mul.i.i.i311, %conv.i.i.i313
  br label %timespec64_to_ns.exit.i.i318

timespec64_to_ns.exit.i.i318:                     ; preds = %if.end4.i.i.i315, %if.end.i.i.i310.timespec64_to_ns.exit.i.i318_crit_edge, %if.end64.timespec64_to_ns.exit.i.i318_crit_edge
  %retval.0.i.i.i316 = phi i64 [ %add.i.i.i314, %if.end4.i.i.i315 ], [ 9223372036854775807, %if.end64.timespec64_to_ns.exit.i.i318_crit_edge ], [ -9223372036854775808, %if.end.i.i.i310.timespec64_to_ns.exit.i.i318_crit_edge ]
  %307 = ptrtoint ptr %last_primitive_update.i to i32
  call void @__asan_load8_noabort(i32 %307)
  %308 = load i64, ptr %last_primitive_update.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %308)
  %cmp.i4.i.i317 = icmp sgt i64 %308, 9223372035
  br i1 %cmp.i4.i.i317, label %timespec64_to_ns.exit.i.i318.timespec64_to_ns.exit13.i.i331_crit_edge, label %if.end.i6.i.i320

timespec64_to_ns.exit.i.i318.timespec64_to_ns.exit13.i.i331_crit_edge: ; preds = %timespec64_to_ns.exit.i.i318
  call void @__sanitizer_cov_trace_pc() #14
  br label %timespec64_to_ns.exit13.i.i331

if.end.i6.i.i320:                                 ; preds = %timespec64_to_ns.exit.i.i318
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %308)
  %cmp2.i5.i.i319 = icmp slt i64 %308, -9223372035
  br i1 %cmp2.i5.i.i319, label %if.end.i6.i.i320.timespec64_to_ns.exit13.i.i331_crit_edge, label %if.end4.i11.i.i325

if.end.i6.i.i320.timespec64_to_ns.exit13.i.i331_crit_edge: ; preds = %if.end.i6.i.i320
  call void @__sanitizer_cov_trace_pc() #14
  br label %timespec64_to_ns.exit13.i.i331

if.end4.i11.i.i325:                               ; preds = %if.end.i6.i.i320
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i7.i.i321 = mul nsw i64 %308, 1000000000
  %309 = ptrtoint ptr %tv_nsec.i8.i.i322 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %tv_nsec.i8.i.i322, align 8
  %conv.i9.i.i323 = sext i32 %310 to i64
  %add.i10.i.i324 = add i64 %mul.i7.i.i321, %conv.i9.i.i323
  br label %timespec64_to_ns.exit13.i.i331

timespec64_to_ns.exit13.i.i331:                   ; preds = %if.end4.i11.i.i325, %if.end.i6.i.i320.timespec64_to_ns.exit13.i.i331_crit_edge, %timespec64_to_ns.exit.i.i318.timespec64_to_ns.exit13.i.i331_crit_edge
  %retval.0.i12.i.i326 = phi i64 [ %add.i10.i.i324, %if.end4.i11.i.i325 ], [ 9223372036854775807, %timespec64_to_ns.exit.i.i318.timespec64_to_ns.exit13.i.i331_crit_edge ], [ -9223372036854775808, %if.end.i6.i.i320.timespec64_to_ns.exit13.i.i331_crit_edge ]
  %sub.i.i327 = sub i64 %retval.0.i.i.i316, %retval.0.i12.i.i326
  %mul.i.i328 = mul i32 %301, 1000
  %conv.i.i329 = zext i32 %mul.i.i328 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i327, i64 %conv.i.i329)
  %cmp.i.i330 = icmp slt i64 %sub.i.i327, %conv.i.i329
  br i1 %cmp.i.i330, label %kdamond_need_update_primitive.exit, label %if.then66

kdamond_need_update_primitive.exit:               ; preds = %timespec64_to_ns.exit13.i.i331
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now.i.i307) #12
  br label %while.cond.backedge

if.then66:                                        ; preds = %timespec64_to_ns.exit13.i.i331
  %311 = call ptr @memcpy(ptr %last_primitive_update.i, ptr %now.i.i307, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now.i.i307) #12
  %312 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %update, align 4
  %tobool68.not = icmp eq ptr %313, null
  br i1 %tobool68.not, label %if.then66.if.end72_crit_edge, label %if.then69

if.then66.if.end72_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then69:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  call void %313(ptr noundef %data) #12
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.then66.if.end72_crit_edge
  %314 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %.pn46.i334 = load ptr, ptr %adaptive_targets.i, align 4
  %cmp.not47.i335 = icmp eq ptr %.pn46.i334, %adaptive_targets.i
  br i1 %cmp.not47.i335, label %if.end72.for.end24.i358_crit_edge, label %if.end72.for.body.i345_crit_edge

if.end72.for.body.i345_crit_edge:                 ; preds = %if.end72
  br label %for.body.i345

if.end72.for.end24.i358_crit_edge:                ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end24.i358

for.cond.loopexit.i339:                           ; preds = %for.body11.i354.for.cond.loopexit.i339_crit_edge, %for.body.i345.for.cond.loopexit.i339_crit_edge
  %sz.1.lcssa.i336 = phi i32 [ %sz.048.i341, %for.body.i345.for.cond.loopexit.i339_crit_edge ], [ %add.i351, %for.body11.i354.for.cond.loopexit.i339_crit_edge ]
  %315 = ptrtoint ptr %.pn49.i340 to i32
  call void @__asan_load4_noabort(i32 %315)
  %.pn.i337 = load ptr, ptr %.pn49.i340, align 4
  %cmp.not.i338 = icmp eq ptr %.pn.i337, %adaptive_targets.i
  br i1 %cmp.not.i338, label %for.cond.loopexit.i339.for.end24.i358_crit_edge, label %for.cond.loopexit.i339.for.body.i345_crit_edge

for.cond.loopexit.i339.for.body.i345_crit_edge:   ; preds = %for.cond.loopexit.i339
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i345

for.cond.loopexit.i339.for.end24.i358_crit_edge:  ; preds = %for.cond.loopexit.i339
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end24.i358

for.body.i345:                                    ; preds = %for.cond.loopexit.i339.for.body.i345_crit_edge, %if.end72.for.body.i345_crit_edge
  %.pn49.i340 = phi ptr [ %.pn.i337, %for.cond.loopexit.i339.for.body.i345_crit_edge ], [ %.pn46.i334, %if.end72.for.body.i345_crit_edge ]
  %sz.048.i341 = phi i32 [ %sz.1.lcssa.i336, %for.cond.loopexit.i339.for.body.i345_crit_edge ], [ 0, %if.end72.for.body.i345_crit_edge ]
  %regions_list.i342 = getelementptr i8, ptr %.pn49.i340, i32 -8
  %316 = ptrtoint ptr %regions_list.i342 to i32
  call void @__asan_load4_noabort(i32 %316)
  %.pn4142.i343 = load ptr, ptr %regions_list.i342, align 4
  %cmp9.not43.i344 = icmp eq ptr %.pn4142.i343, %regions_list.i342
  br i1 %cmp9.not43.i344, label %for.body.i345.for.cond.loopexit.i339_crit_edge, label %for.body.i345.for.body11.i354_crit_edge

for.body.i345.for.body11.i354_crit_edge:          ; preds = %for.body.i345
  br label %for.body11.i354

for.body.i345.for.cond.loopexit.i339_crit_edge:   ; preds = %for.body.i345
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit.i339

for.body11.i354:                                  ; preds = %for.body11.i354.for.body11.i354_crit_edge, %for.body.i345.for.body11.i354_crit_edge
  %.pn4145.i346 = phi ptr [ %.pn41.i352, %for.body11.i354.for.body11.i354_crit_edge ], [ %.pn4142.i343, %for.body.i345.for.body11.i354_crit_edge ]
  %sz.144.i347 = phi i32 [ %add.i351, %for.body11.i354.for.body11.i354_crit_edge ], [ %sz.048.i341, %for.body.i345.for.body11.i354_crit_edge ]
  %r.0.i348 = getelementptr i8, ptr %.pn4145.i346, i32 -16
  %end.i349 = getelementptr i8, ptr %.pn4145.i346, i32 -12
  %317 = ptrtoint ptr %end.i349 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %end.i349, align 4
  %319 = ptrtoint ptr %r.0.i348 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %r.0.i348, align 4
  %sub.i350 = add i32 %318, %sz.144.i347
  %add.i351 = sub i32 %sub.i350, %320
  %321 = ptrtoint ptr %.pn4145.i346 to i32
  call void @__asan_load4_noabort(i32 %321)
  %.pn41.i352 = load ptr, ptr %.pn4145.i346, align 4
  %cmp9.not.i353 = icmp eq ptr %.pn41.i352, %regions_list.i342
  br i1 %cmp9.not.i353, label %for.body11.i354.for.cond.loopexit.i339_crit_edge, label %for.body11.i354.for.body11.i354_crit_edge

for.body11.i354.for.body11.i354_crit_edge:        ; preds = %for.body11.i354
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.i354

for.body11.i354.for.cond.loopexit.i339_crit_edge: ; preds = %for.body11.i354
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit.i339

for.end24.i358:                                   ; preds = %for.cond.loopexit.i339.for.end24.i358_crit_edge, %if.end72.for.end24.i358_crit_edge
  %sz.0.lcssa.i355 = phi i32 [ 0, %if.end72.for.end24.i358_crit_edge ], [ %sz.1.lcssa.i336, %for.cond.loopexit.i339.for.end24.i358_crit_edge ]
  %322 = ptrtoint ptr %min_nr_regions.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %min_nr_regions.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %323)
  %tobool.not.i357 = icmp eq i32 %323, 0
  br i1 %tobool.not.i357, label %for.end24.i358.damon_region_sz_limit.exit365_crit_edge, label %if.then.i360

for.end24.i358.damon_region_sz_limit.exit365_crit_edge: ; preds = %for.end24.i358
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_region_sz_limit.exit365

if.then.i360:                                     ; preds = %for.end24.i358
  call void @__sanitizer_cov_trace_pc() #14
  %div.i359 = udiv i32 %sz.0.lcssa.i355, %323
  br label %damon_region_sz_limit.exit365

damon_region_sz_limit.exit365:                    ; preds = %if.then.i360, %for.end24.i358.damon_region_sz_limit.exit365_crit_edge
  %sz.2.i361 = phi i32 [ %div.i359, %if.then.i360 ], [ %sz.0.lcssa.i355, %for.end24.i358.damon_region_sz_limit.exit365_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz.2.i361)
  %cmp26.i362 = icmp eq i32 %sz.2.i361, 0
  %spec.store.select.i363 = select i1 %cmp26.i362, i32 1, i32 %sz.2.i361
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %damon_region_sz_limit.exit365, %kdamond_need_update_primitive.exit, %kdamond_usleep.exit.i.while.cond.backedge_crit_edge, %for.cond.i.i.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %done.1.off0.be = phi i1 [ false, %while.body.while.cond.backedge_crit_edge ], [ %done.4.off0, %kdamond_need_update_primitive.exit ], [ %done.4.off0, %damon_region_sz_limit.exit365 ], [ false, %for.cond.i.i.while.cond.backedge_crit_edge ], [ false, %kdamond_usleep.exit.i.while.cond.backedge_crit_edge ]
  %sz_limit.0.be = phi i32 [ %sz_limit.0391, %while.body.while.cond.backedge_crit_edge ], [ %sz_limit.0391, %kdamond_need_update_primitive.exit ], [ %spec.store.select.i363, %damon_region_sz_limit.exit365 ], [ %sz_limit.0391, %for.cond.i.i.while.cond.backedge_crit_edge ], [ %sz_limit.0391, %kdamond_usleep.exit.i.while.cond.backedge_crit_edge ]
  %max_nr_accesses.0.be = phi i32 [ %max_nr_accesses.0394, %while.body.while.cond.backedge_crit_edge ], [ %max_nr_accesses.1, %kdamond_need_update_primitive.exit ], [ %max_nr_accesses.1, %damon_region_sz_limit.exit365 ], [ %max_nr_accesses.0394, %for.cond.i.i.while.cond.backedge_crit_edge ], [ %max_nr_accesses.0394, %kdamond_usleep.exit.i.while.cond.backedge_crit_edge ]
  %call.i = call zeroext i1 @kthread_should_stop() #12
  br i1 %call.i, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.if.end.i_crit_edge

while.cond.backedge.if.end.i_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %kdamond_need_stop.exit.while.end_crit_edge, %for.cond.i.while.end_crit_edge, %damon_region_sz_limit.exit.while.end_crit_edge
  %324 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %.pn398 = load ptr, ptr %adaptive_targets.i, align 4
  %cmp.not399 = icmp eq ptr %.pn398, %adaptive_targets.i
  br i1 %cmp.not399, label %while.end.for.end107_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  br label %for.body

while.end.for.end107_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end107

for.cond.loopexit:                                ; preds = %damon_destroy_region.exit.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %325 = ptrtoint ptr %.pn400 to i32
  call void @__asan_load4_noabort(i32 %325)
  %.pn = load ptr, ptr %.pn400, align 4
  %cmp.not = icmp eq ptr %.pn, %adaptive_targets.i
  br i1 %cmp.not, label %for.cond.loopexit.for.end107_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.loopexit.for.end107_crit_edge:           ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end107

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %while.end.for.body_crit_edge
  %.pn400 = phi ptr [ %.pn, %for.cond.loopexit.for.body_crit_edge ], [ %.pn398, %while.end.for.body_crit_edge ]
  %regions_list = getelementptr i8, ptr %.pn400, i32 -8
  %326 = ptrtoint ptr %regions_list to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %regions_list, align 4
  %cmp92.not395 = icmp eq ptr %327, %regions_list
  br i1 %cmp92.not395, label %for.body.for.cond.loopexit_crit_edge, label %for.body95.lr.ph

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit

for.body95.lr.ph:                                 ; preds = %for.body
  %nr_regions.i.i368 = getelementptr i8, ptr %.pn400, i32 -12
  br label %for.body95

for.body95:                                       ; preds = %damon_destroy_region.exit.for.body95_crit_edge, %for.body95.lr.ph
  %.pn216.in396 = phi ptr [ %327, %for.body95.lr.ph ], [ %.pn216, %damon_destroy_region.exit.for.body95_crit_edge ]
  %r.0 = getelementptr i8, ptr %.pn216.in396, i32 -16
  %328 = ptrtoint ptr %.pn216.in396 to i32
  call void @__asan_load4_noabort(i32 %328)
  %.pn216 = load ptr, ptr %.pn216.in396, align 4
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn216.in396) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body95.damon_destroy_region.exit_crit_edge

for.body95.damon_destroy_region.exit_crit_edge:   ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_destroy_region.exit

if.end.i.i.i.i:                                   ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr i8, ptr %.pn216.in396, i32 4
  %329 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %prev.i.i.i.i, align 4
  %331 = ptrtoint ptr %.pn216.in396 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %.pn216.in396, align 4
  %prev1.i.i.i.i.i366 = getelementptr inbounds %struct.list_head, ptr %332, i32 0, i32 1
  %333 = ptrtoint ptr %prev1.i.i.i.i.i366 to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %330, ptr %prev1.i.i.i.i.i366, align 4
  %334 = ptrtoint ptr %330 to i32
  call void @__asan_store4_noabort(i32 %334)
  store volatile ptr %332, ptr %330, align 4
  br label %damon_destroy_region.exit

damon_destroy_region.exit:                        ; preds = %if.end.i.i.i.i, %for.body95.damon_destroy_region.exit_crit_edge
  %335 = ptrtoint ptr %.pn216.in396 to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn216.in396, align 4
  %prev.i.i.i367 = getelementptr i8, ptr %.pn216.in396, i32 4
  %336 = ptrtoint ptr %prev.i.i.i367 to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i367, align 4
  %337 = ptrtoint ptr %nr_regions.i.i368 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %nr_regions.i.i368, align 4
  %dec.i.i = add i32 %338, -1
  store i32 %dec.i.i, ptr %nr_regions.i.i368, align 4
  call void @kfree(ptr noundef %r.0) #12
  %cmp92.not = icmp eq ptr %.pn216, %regions_list
  br i1 %cmp92.not, label %damon_destroy_region.exit.for.cond.loopexit_crit_edge, label %damon_destroy_region.exit.for.body95_crit_edge

damon_destroy_region.exit.for.body95_crit_edge:   ; preds = %damon_destroy_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body95

damon_destroy_region.exit.for.cond.loopexit_crit_edge: ; preds = %damon_destroy_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit

for.end107:                                       ; preds = %for.cond.loopexit.for.end107_crit_edge, %while.end.for.end107_crit_edge
  %before_terminate = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 8, i32 4
  %339 = ptrtoint ptr %before_terminate to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %before_terminate, align 4
  %tobool109.not = icmp eq ptr %340, null
  br i1 %tobool109.not, label %for.end107.if.end113_crit_edge, label %if.then110

for.end107.if.end113_crit_edge:                   ; preds = %for.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113

if.then110:                                       ; preds = %for.end107
  call void @__sanitizer_cov_trace_pc() #14
  call void %340(ptr noundef %data) #12
  br label %if.end113

if.end113:                                        ; preds = %if.then110, %for.end107.if.end113_crit_edge
  %cleanup = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 7, i32 8
  %341 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %cleanup, align 8
  %tobool115.not = icmp eq ptr %342, null
  br i1 %tobool115.not, label %if.end113.do.body120_crit_edge, label %if.then116

if.end113.do.body120_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body120

if.then116:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  call void %342(ptr noundef %data) #12
  br label %do.body120

do.body120:                                       ; preds = %if.then116, %if.end113.do.body120_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kdamond_fn.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kdamond_fn, %if.then132)) #12
          to label %do.end138 [label %if.then132], !srcloc !155

if.then132:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #14
  %343 = call i32 @llvm.read_register.i32(metadata !138) #12
  %and.i369 = and i32 %343, -16384
  %344 = inttoptr i32 %and.i369 to ptr
  %task134 = getelementptr inbounds %struct.thread_info, ptr %344, i32 0, i32 2
  %345 = ptrtoint ptr %task134 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %task134, align 8
  %pid135 = getelementptr inbounds %struct.task_struct, ptr %346, i32 0, i32 68
  %347 = ptrtoint ptr %pid135 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %pid135, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kdamond_fn.__UNIQUE_ID_ddebug261, ptr noundef nonnull @.str.19, i32 noundef %348) #12
  br label %do.end138

do.end138:                                        ; preds = %if.then132, %do.body120
  %kdamond_lock = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %kdamond_lock, i32 noundef 0) #12
  %kdamond = getelementptr inbounds %struct.damon_ctx, ptr %data, i32 0, i32 5
  %349 = ptrtoint ptr %kdamond to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr null, ptr %kdamond, align 8
  call void @mutex_unlock(ptr noundef %kdamond_lock) #12
  call void @mutex_lock_nested(ptr noundef nonnull @damon_lock, i32 noundef 0) #12
  %350 = load i32, ptr @nr_running_ctxs, align 4
  %dec = add i32 %350, -1
  store i32 %dec, ptr @nr_running_ctxs, align 4
  call void @mutex_unlock(ptr noundef nonnull @damon_lock) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @damos_wmark_wait_us(ptr nocapture noundef %scheme) unnamed_addr #0 align 64 {
entry:
  %i.i = alloca %struct.sysinfo, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wmarks = getelementptr inbounds %struct.damos, ptr %scheme, i32 0, i32 8
  %0 = ptrtoint ptr %wmarks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wmarks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %i.i) #12
  %2 = call ptr @memset(ptr %i.i, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond.i = icmp eq i32 %1, 1
  br i1 %cond.i, label %sw.bb.i, label %if.end.damos_wmark_metric_value.exit_crit_edge

if.end.damos_wmark_metric_value.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %damos_wmark_metric_value.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @si_meminfo(ptr noundef nonnull %i.i) #12
  %freeram.i = getelementptr inbounds %struct.sysinfo, ptr %i.i, i32 0, i32 3
  %3 = ptrtoint ptr %freeram.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %freeram.i, align 4
  %mul.i = mul i32 %4, 1000
  %totalram.i = getelementptr inbounds %struct.sysinfo, ptr %i.i, i32 0, i32 2
  %5 = ptrtoint ptr %totalram.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %totalram.i, align 4
  %div.i = udiv i32 %mul.i, %6
  br label %damos_wmark_metric_value.exit

damos_wmark_metric_value.exit:                    ; preds = %sw.bb.i, %if.end.damos_wmark_metric_value.exit_crit_edge
  %retval.0.i85 = phi i32 [ %div.i, %sw.bb.i ], [ -22, %if.end.damos_wmark_metric_value.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %i.i) #12
  %high = getelementptr inbounds %struct.damos, ptr %scheme, i32 0, i32 8, i32 2
  %7 = ptrtoint ptr %high to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %high, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i85, i32 %8)
  %cmp5 = icmp ugt i32 %retval.0.i85, %8
  br i1 %cmp5, label %damos_wmark_metric_value.exit.if.then8_crit_edge, label %lor.lhs.false

damos_wmark_metric_value.exit.if.then8_crit_edge: ; preds = %damos_wmark_metric_value.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

lor.lhs.false:                                    ; preds = %damos_wmark_metric_value.exit
  %low = getelementptr inbounds %struct.damos, ptr %scheme, i32 0, i32 8, i32 4
  %9 = ptrtoint ptr %low to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %low, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %retval.0.i85)
  %cmp7 = icmp ugt i32 %10, %retval.0.i85
  br i1 %cmp7, label %lor.lhs.false.if.then8_crit_edge, label %land.lhs.true

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %damos_wmark_metric_value.exit.if.then8_crit_edge
  %activated = getelementptr inbounds %struct.damos, ptr %scheme, i32 0, i32 8, i32 5
  %11 = ptrtoint ptr %activated to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %activated, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.then8.if.end20_crit_edge, label %do.body

if.then8.if.end20_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

do.body:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @damos_wmark_wait_us.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@damos_wmark_wait_us, %if.then15)) #12
          to label %if.end20 [label %if.then15], !srcloc !155

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %action = getelementptr inbounds %struct.damos, ptr %scheme, i32 0, i32 6
  %13 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %action, align 4
  %15 = ptrtoint ptr %high to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %high, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i85, i32 %16)
  %cmp18 = icmp ugt i32 %retval.0.i85, %16
  %cond = select i1 %cmp18, ptr @.str.23, ptr @.str.24
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @damos_wmark_wait_us.__UNIQUE_ID_ddebug258, ptr noundef nonnull @.str.22, i32 noundef %14, ptr noundef nonnull %cond) #12
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %do.body, %if.then8.if.end20_crit_edge
  %17 = ptrtoint ptr %activated to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %activated, align 4
  %interval = getelementptr inbounds %struct.damos, ptr %scheme, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %interval, align 4
  br label %cleanup

land.lhs.true:                                    ; preds = %lor.lhs.false
  %mid = getelementptr inbounds %struct.damos, ptr %scheme, i32 0, i32 8, i32 3
  %20 = ptrtoint ptr %mid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i85, i32 %21)
  %cmp29.not = icmp ult i32 %retval.0.i85, %21
  br i1 %cmp29.not, label %land.lhs.true.if.end37_crit_edge, label %land.lhs.true30

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

land.lhs.true30:                                  ; preds = %land.lhs.true
  %activated32 = getelementptr inbounds %struct.damos, ptr %scheme, i32 0, i32 8, i32 5
  %22 = ptrtoint ptr %activated32 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %activated32, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool33.not = icmp eq i8 %23, 0
  br i1 %tobool33.not, label %if.then34, label %land.lhs.true30.if.end37_crit_edge

land.lhs.true30.if.end37_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then34:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  %interval36 = getelementptr inbounds %struct.damos, ptr %scheme, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %interval36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %interval36, align 4
  br label %cleanup

if.end37:                                         ; preds = %land.lhs.true30.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge
  %activated39 = getelementptr inbounds %struct.damos, ptr %scheme, i32 0, i32 8, i32 5
  %26 = ptrtoint ptr %activated39 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %activated39, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool40.not = icmp eq i8 %27, 0
  br i1 %tobool40.not, label %do.body42, label %if.end37.if.end59_crit_edge

if.end37.if.end59_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

do.body42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @damos_wmark_wait_us.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@damos_wmark_wait_us, %if.then54)) #12
          to label %if.end59 [label %if.then54], !srcloc !155

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  %action55 = getelementptr inbounds %struct.damos, ptr %scheme, i32 0, i32 6
  %28 = ptrtoint ptr %action55 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %action55, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @damos_wmark_wait_us.__UNIQUE_ID_ddebug259, ptr noundef nonnull @.str.26, i32 noundef %29) #12
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %do.body42, %if.end37.if.end59_crit_edge
  %30 = ptrtoint ptr %activated39 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %activated39, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.then34, %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.end20 ], [ 0, %if.end59 ], [ %25, %if.then34 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_idle(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @damon_merge_regions_of(ptr noundef %t, i32 noundef %thres, i32 noundef %sz_limit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regions_list = getelementptr inbounds %struct.damon_target, ptr %t, i32 0, i32 2
  %0 = ptrtoint ptr %regions_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regions_list, align 4
  %cmp.not66 = icmp eq ptr %1, %regions_list
  br i1 %cmp.not66, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %nr_regions.i.i.i = getelementptr inbounds %struct.damon_target, ptr %t, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %prev.069 = phi ptr [ null, %for.body.lr.ph ], [ %prev.1, %for.inc.for.body_crit_edge ]
  %.pn.in67 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn71, %for.inc.for.body_crit_edge ]
  %r.070 = getelementptr i8, ptr %.pn.in67, i32 -16
  %2 = ptrtoint ptr %.pn.in67 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn71 = load ptr, ptr %.pn.in67, align 4
  %nr_accesses = getelementptr i8, ptr %.pn.in67, i32 -4
  %3 = ptrtoint ptr %nr_accesses to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_accesses, align 4
  %last_nr_accesses = getelementptr i8, ptr %.pn.in67, i32 12
  %5 = ptrtoint ptr %last_nr_accesses to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last_nr_accesses, align 4
  %sub = sub i32 %4, %6
  %7 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %thres)
  %cmp11 = icmp ugt i32 %7, %thres
  %age = getelementptr i8, ptr %.pn.in67, i32 8
  br i1 %cmp11, label %for.body.if.end_crit_edge, label %if.else

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %age to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %age, align 4
  %inc = add i32 %9, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.if.end_crit_edge
  %inc.sink = phi i32 [ %inc, %if.else ], [ 0, %for.body.if.end_crit_edge ]
  %10 = ptrtoint ptr %age to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc.sink, ptr %age, align 4
  %tobool.not = icmp eq ptr %prev.069, null
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %land.lhs.true

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %end = getelementptr inbounds %struct.damon_addr_range, ptr %prev.069, i32 0, i32 1
  %11 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end, align 4
  %13 = ptrtoint ptr %r.070 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %r.070, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp14 = icmp eq i32 %12, %14
  br i1 %cmp14, label %land.lhs.true15, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true15:                                  ; preds = %land.lhs.true
  %nr_accesses17 = getelementptr inbounds %struct.damon_region, ptr %prev.069, i32 0, i32 2
  %15 = ptrtoint ptr %nr_accesses17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_accesses17, align 4
  %17 = ptrtoint ptr %nr_accesses to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_accesses, align 4
  %sub19 = sub i32 %16, %18
  %19 = tail call i32 @llvm.abs.i32(i32 %sub19, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %thres)
  %cmp27.not = icmp ugt i32 %19, %thres
  br i1 %cmp27.not, label %land.lhs.true15.for.inc_crit_edge, label %land.lhs.true28

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true28:                                  ; preds = %land.lhs.true15
  %20 = ptrtoint ptr %prev.069 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prev.069, align 4
  %sub.i = sub i32 %12, %21
  %end.i62 = getelementptr i8, ptr %.pn.in67, i32 -12
  %22 = ptrtoint ptr %end.i62 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %end.i62, align 4
  %sub.i63 = sub i32 %23, %12
  %add = add i32 %sub.i63, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sz_limit)
  %cmp30.not = icmp ugt i32 %add, %sz_limit
  br i1 %cmp30.not, label %land.lhs.true28.for.inc_crit_edge, label %if.then31

land.lhs.true28.for.inc_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then31:                                        ; preds = %land.lhs.true28
  %mul.i = mul i32 %sub.i, %16
  %24 = ptrtoint ptr %nr_accesses to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_accesses, align 4
  %mul3.i = mul i32 %25, %sub.i63
  %add.i = add i32 %mul3.i, %mul.i
  %div.i = udiv i32 %add.i, %add
  %26 = ptrtoint ptr %nr_accesses17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div.i, ptr %nr_accesses17, align 4
  %age.i = getelementptr inbounds %struct.damon_region, ptr %prev.069, i32 0, i32 4
  %27 = ptrtoint ptr %age.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %age.i, align 4
  %mul6.i = mul i32 %28, %sub.i
  %age7.i = getelementptr i8, ptr %.pn.in67, i32 8
  %29 = ptrtoint ptr %age7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %age7.i, align 4
  %mul8.i = mul i32 %30, %sub.i63
  %add9.i = add i32 %mul8.i, %mul6.i
  %div11.i = udiv i32 %add9.i, %add
  store i32 %div11.i, ptr %age.i, align 4
  %31 = ptrtoint ptr %end.i62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %end.i62, align 4
  %33 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %end, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in67) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then31.damon_merge_two_regions.exit_crit_edge

if.then31.damon_merge_two_regions.exit_crit_edge: ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_merge_two_regions.exit

if.end.i.i.i.i.i:                                 ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i.i = getelementptr i8, ptr %.pn.in67, i32 4
  %34 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %36 = ptrtoint ptr %.pn.in67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %.pn.in67, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %damon_merge_two_regions.exit

damon_merge_two_regions.exit:                     ; preds = %if.end.i.i.i.i.i, %if.then31.damon_merge_two_regions.exit_crit_edge
  %40 = ptrtoint ptr %.pn.in67 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in67, align 4
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in67, i32 4
  %41 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  %42 = ptrtoint ptr %nr_regions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr_regions.i.i.i, align 4
  %dec.i.i.i = add i32 %43, -1
  store i32 %dec.i.i.i, ptr %nr_regions.i.i.i, align 4
  tail call void @kfree(ptr noundef %r.070) #12
  br label %for.inc

for.inc:                                          ; preds = %damon_merge_two_regions.exit, %land.lhs.true28.for.inc_crit_edge, %land.lhs.true15.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %prev.1 = phi ptr [ %prev.069, %damon_merge_two_regions.exit ], [ %r.070, %land.lhs.true28.for.inc_crit_edge ], [ %r.070, %land.lhs.true15.for.inc_crit_edge ], [ %r.070, %land.lhs.true.for.inc_crit_edge ], [ %r.070, %if.end.for.inc_crit_edge ]
  %cmp.not = icmp eq ptr %.pn71, %regions_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_damon_aggregated(ptr noundef %t, i32 noundef %target_id, ptr noundef %r, i32 noundef %nr_regions) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_damon_aggregated, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_damon_aggregated, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !155

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !138) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !148

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !138) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !157
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_damon_aggregated, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %t, i32 noundef %target_id, ptr noundef %r, i32 noundef %nr_regions) #12
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !158
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !158
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !138) #12
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !138) #12
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !148

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !138) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !159
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_damon_aggregated, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_damon_aggregated.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_damon_aggregated.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 41, ptr noundef nonnull @.str.28) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !160
  %38 = tail call i32 @llvm.read_register.i32(metadata !138) #12
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @damon_split_regions_of(ptr noundef %t, i32 noundef %nr_subs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regions_list = getelementptr inbounds %struct.damon_target, ptr %t, i32 0, i32 2
  %0 = ptrtoint ptr %regions_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regions_list, align 4
  %cmp.not11 = icmp eq ptr %1, %regions_list
  br i1 %cmp.not11, label %entry.for.end23_crit_edge, label %for.body.lr.ph

entry.for.end23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end23

for.body.lr.ph:                                   ; preds = %entry
  %sub10 = add i32 %nr_subs, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10)
  %cmp114 = icmp sgt i32 %sub10, 0
  %nr_regions.i.i = getelementptr inbounds %struct.damon_target, ptr %t, i32 0, i32 1
  br label %for.body

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %cmp.not = icmp eq ptr %.pn14, %regions_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end23_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.loopexit.for.end23_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end23

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in12 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn14, %for.cond.loopexit.for.body_crit_edge ]
  %r.013 = getelementptr i8, ptr %.pn.in12, i32 -16
  %2 = ptrtoint ptr %.pn.in12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn14 = load ptr, ptr %.pn.in12, align 4
  %end = getelementptr i8, ptr %.pn.in12, i32 -12
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end, align 4
  %5 = ptrtoint ptr %r.013 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %r.013, align 4
  %sub = sub i32 %4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp125 = icmp ugt i32 %sub, 2
  %or.cond6 = select i1 %cmp114, i1 %cmp125, i1 false
  br i1 %or.cond6, label %for.body13.lr.ph, label %for.body.for.cond.loopexit_crit_edge

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit

for.body13.lr.ph:                                 ; preds = %for.body
  %age.i = getelementptr i8, ptr %.pn.in12, i32 8
  %last_nr_accesses.i = getelementptr i8, ptr %.pn.in12, i32 12
  br label %for.body13

for.body13:                                       ; preds = %for.inc.for.body13_crit_edge, %for.body13.lr.ph
  %sz_region.08 = phi i32 [ %sub, %for.body13.lr.ph ], [ %sz_region.1, %for.inc.for.body13_crit_edge ]
  %i.07 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc, %for.inc.for.body13_crit_edge ]
  %call.i.i = tail call i32 @prandom_u32() #12
  %conv.i.i = zext i32 %call.i.i to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i, 9
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %add.i = add nuw nsw i32 %conv2.i.i, 1
  %mul = mul i32 %add.i, %sz_region.08
  %div = udiv i32 %mul, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %mul)
  %7 = icmp ugt i32 %mul, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %sz_region.08)
  %cmp16.not = icmp ult i32 %div, %sz_region.08
  %or.cond2 = and i1 %7, %cmp16.not
  br i1 %or.cond2, label %if.end, label %for.body13.for.inc_crit_edge

for.body13.for.inc_crit_edge:                     ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body13
  %8 = ptrtoint ptr %r.013 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %r.013, align 4
  %10 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 32) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.for.inc_crit_edge, label %if.end.i

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i:                                         ; preds = %if.end
  %add.i3 = add i32 %9, %div
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add.i3, ptr %call7.i.i.i, align 8
  %end3.i.i = getelementptr inbounds %struct.damon_addr_range, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %end3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %end3.i.i, align 4
  %nr_accesses.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %nr_accesses.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %nr_accesses.i.i, align 4
  %list.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %list.i.i, ptr %list.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %age.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.i, i32 0, i32 4
  %last_nr_accesses.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i3, ptr %end, align 4
  %19 = ptrtoint ptr %age.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %age.i, align 4
  %21 = ptrtoint ptr %age.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %age.i.i, align 8
  %22 = ptrtoint ptr %last_nr_accesses.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %last_nr_accesses.i, align 4
  %24 = ptrtoint ptr %last_nr_accesses.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %last_nr_accesses.i.i, align 4
  %25 = ptrtoint ptr %.pn.in12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %.pn.in12, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %.pn.in12, ptr noundef %26) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.damon_insert_region.exit.i_crit_edge

if.end.i.damon_insert_region.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_insert_region.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %list.i.i, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %list.i.i, align 8
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %.pn.in12, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %.pn.in12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %list.i.i, ptr %.pn.in12, align 4
  br label %damon_insert_region.exit.i

damon_insert_region.exit.i:                       ; preds = %if.end.i.i.i, %if.end.i.damon_insert_region.exit.i_crit_edge
  %31 = ptrtoint ptr %nr_regions.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_regions.i.i, align 4
  %inc.i.i = add i32 %32, 1
  store i32 %inc.i.i, ptr %nr_regions.i.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %damon_insert_region.exit.i, %if.end.for.inc_crit_edge, %for.body13.for.inc_crit_edge
  %sz_region.1 = phi i32 [ %sz_region.08, %for.body13.for.inc_crit_edge ], [ %div, %if.end.for.inc_crit_edge ], [ %div, %damon_insert_region.exit.i ]
  %inc = add nuw nsw i32 %i.07, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %sub10)
  %cmp11 = icmp slt i32 %inc, %sub10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sz_region.1)
  %cmp12 = icmp ugt i32 %sz_region.1, 2
  %or.cond = select i1 %cmp11, i1 %cmp12, i1 false
  br i1 %or.cond, label %for.inc.for.body13_crit_edge, label %for.inc.for.cond.loopexit_crit_edge

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit

for.inc.for.body13_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body13

for.end23:                                        ; preds = %for.cond.loopexit.for.end23_crit_edge, %entry.for.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @damon_test_target(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion14 = alloca %struct.kunit_binary_assert, align 8
  %__assertion43 = alloca %struct.kunit_binary_assert, align 8
  %__assertion72 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 224) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.damon_new_ctx.exit_crit_edge, label %if.end.i

entry.damon_new_ctx.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_new_ctx.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 5000, ptr %call7.i.i.i, align 8
  %aggr_interval.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %aggr_interval.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 100000, ptr %aggr_interval.i, align 4
  %primitive_update_interval.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %primitive_update_interval.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 60000000, ptr %primitive_update_interval.i, align 8
  %last_aggregation.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @ktime_get_coarse_ts64(ptr noundef %last_aggregation.i) #12
  %last_primitive_update.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 4
  %4 = call ptr @memcpy(ptr %last_primitive_update.i, ptr %last_aggregation.i, i32 16)
  %kdamond_lock.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %kdamond_lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @damon_new_ctx.__key) #12
  %min_nr_regions.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 9
  %5 = ptrtoint ptr %min_nr_regions.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %min_nr_regions.i, align 8
  %max_nr_regions.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %max_nr_regions.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1000, ptr %max_nr_regions.i, align 4
  %adaptive_targets.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 11
  %7 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %adaptive_targets.i, ptr %adaptive_targets.i, align 8
  %prev.i.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %adaptive_targets.i, ptr %prev.i.i, align 4
  %schemes.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 12
  %9 = ptrtoint ptr %schemes.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %schemes.i, ptr %schemes.i, align 8
  %prev.i14.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %prev.i14.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %schemes.i, ptr %prev.i14.i, align 4
  br label %damon_new_ctx.exit

damon_new_ctx.exit:                               ; preds = %if.end.i, %entry.damon_new_ctx.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 24) #15
  %tobool.not.i117 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i117, label %damon_new_ctx.exit.damon_new_target.exit_crit_edge, label %if.end.i119

damon_new_ctx.exit.damon_new_target.exit_crit_edge: ; preds = %damon_new_ctx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_new_target.exit

if.end.i119:                                      ; preds = %damon_new_ctx.exit
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 42, ptr %call7.i.i, align 8
  %nr_regions.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %nr_regions.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %nr_regions.i, align 4
  %regions_list.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %regions_list.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %regions_list.i, ptr %regions_list.i, align 8
  %prev.i.i118 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %prev.i.i118 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %regions_list.i, ptr %prev.i.i118, align 4
  br label %damon_new_target.exit

damon_new_target.exit:                            ; preds = %if.end.i119, %damon_new_ctx.exit.damon_new_target.exit_crit_edge
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call7.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #12
  %18 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %19 = call ptr @memset(ptr %18, i32 255, i32 24)
  %20 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %21 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %22 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 56, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %23 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.37, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %24 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %26 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %27 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.38, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %28 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.39, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %29 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 42, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %30 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.40, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv4 = zext i32 %17 to i64
  %31 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv4, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %17)
  %cmp = icmp eq i32 %17, 42
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #12
  %adaptive_targets.i120 = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %damon_new_target.exit
  %nr_targets.0.i = phi i32 [ 0, %damon_new_target.exit ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %.pn.in.i = phi ptr [ %adaptive_targets.i120, %damon_new_target.exit ], [ %.pn.i, %for.cond.i.for.cond.i_crit_edge ]
  %32 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %adaptive_targets.i120
  %inc.i = add i32 %nr_targets.0.i, 1
  br i1 %cmp.not.i, label %nr_damon_targets.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

nr_damon_targets.exit:                            ; preds = %for.cond.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion14) #12
  %33 = getelementptr inbounds i8, ptr %__assertion14, i32 32
  %34 = call ptr @memset(ptr %33, i32 255, i32 24)
  %35 = ptrtoint ptr %__assertion14 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %test, ptr %__assertion14, align 8
  %type17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 1
  %36 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %type17, align 4
  %line18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 2
  %37 = ptrtoint ptr %line18 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 57, ptr %line18, align 8
  %file19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 3
  %38 = ptrtoint ptr %file19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.37, ptr %file19, align 4
  %message20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4
  %39 = ptrtoint ptr %message20 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %message20, align 8
  %va22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %va22 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %va22, align 4
  %format23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 5
  %41 = ptrtoint ptr %format23 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @kunit_binary_assert_format, ptr %format23, align 8
  %operation24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 1
  %42 = ptrtoint ptr %operation24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.38, ptr %operation24, align 4
  %left_text25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 2
  %43 = ptrtoint ptr %left_text25 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.41, ptr %left_text25, align 8
  %left_value26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 3
  %44 = ptrtoint ptr %left_value26 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 0, ptr %left_value26, align 8
  %right_text28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 4
  %45 = ptrtoint ptr %right_text28 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.42, ptr %right_text28, align 8
  %right_value29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 5
  %conv30 = zext i32 %nr_targets.0.i to i64
  %46 = ptrtoint ptr %right_value29 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv30, ptr %right_value29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_targets.0.i)
  %cmp32 = icmp eq i32 %nr_targets.0.i, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion14, i1 noundef zeroext %cmp32, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion14) #12
  %list.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 3
  %prev.i.i122 = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %47 = ptrtoint ptr %prev.i.i122 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i122, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %48, ptr noundef %adaptive_targets.i120) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %nr_damon_targets.exit.for.cond.i129.preheader_crit_edge

nr_damon_targets.exit.for.cond.i129.preheader_crit_edge: ; preds = %nr_damon_targets.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i129.preheader

if.end.i.i.i:                                     ; preds = %nr_damon_targets.exit
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %prev.i.i122 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %list.i, ptr %prev.i.i122, align 4
  %50 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %adaptive_targets.i120, ptr %list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 3, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %list.i, ptr %48, align 4
  br label %for.cond.i129.preheader

for.cond.i129.preheader:                          ; preds = %if.end.i.i.i, %nr_damon_targets.exit.for.cond.i129.preheader_crit_edge
  br label %for.cond.i129

for.cond.i129:                                    ; preds = %for.cond.i129.for.cond.i129_crit_edge, %for.cond.i129.preheader
  %nr_targets.0.i124 = phi i32 [ %inc.i128, %for.cond.i129.for.cond.i129_crit_edge ], [ 0, %for.cond.i129.preheader ]
  %.pn.in.i125 = phi ptr [ %.pn.i126, %for.cond.i129.for.cond.i129_crit_edge ], [ %adaptive_targets.i120, %for.cond.i129.preheader ]
  %53 = ptrtoint ptr %.pn.in.i125 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn.i126 = load ptr, ptr %.pn.in.i125, align 4
  %cmp.not.i127 = icmp eq ptr %.pn.i126, %adaptive_targets.i120
  %inc.i128 = add i32 %nr_targets.0.i124, 1
  br i1 %cmp.not.i127, label %nr_damon_targets.exit130, label %for.cond.i129.for.cond.i129_crit_edge

for.cond.i129.for.cond.i129_crit_edge:            ; preds = %for.cond.i129
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i129

nr_damon_targets.exit130:                         ; preds = %for.cond.i129
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion43) #12
  %54 = getelementptr inbounds i8, ptr %__assertion43, i32 32
  %55 = call ptr @memset(ptr %54, i32 255, i32 24)
  %56 = ptrtoint ptr %__assertion43 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %test, ptr %__assertion43, align 8
  %type46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 1
  %57 = ptrtoint ptr %type46 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %type46, align 4
  %line47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 2
  %58 = ptrtoint ptr %line47 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 60, ptr %line47, align 8
  %file48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 3
  %59 = ptrtoint ptr %file48 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.37, ptr %file48, align 4
  %message49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 4
  %60 = ptrtoint ptr %message49 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %message49, align 8
  %va51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 4, i32 1
  %61 = ptrtoint ptr %va51 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %va51, align 4
  %format52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 5
  %62 = ptrtoint ptr %format52 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @kunit_binary_assert_format, ptr %format52, align 8
  %operation53 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 1
  %63 = ptrtoint ptr %operation53 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.38, ptr %operation53, align 4
  %left_text54 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 2
  %64 = ptrtoint ptr %left_text54 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.43, ptr %left_text54, align 8
  %left_value55 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 3
  %65 = ptrtoint ptr %left_value55 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 1, ptr %left_value55, align 8
  %right_text57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 4
  %66 = ptrtoint ptr %right_text57 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.42, ptr %right_text57, align 8
  %right_value58 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 5
  %conv59 = zext i32 %nr_targets.0.i124 to i64
  %67 = ptrtoint ptr %right_value58 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv59, ptr %right_value58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_targets.0.i124)
  %cmp61 = icmp eq i32 %nr_targets.0.i124, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion43, i1 noundef zeroext %cmp61, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion43) #12
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %nr_damon_targets.exit130.damon_del_target.exit.i_crit_edge

nr_damon_targets.exit130.damon_del_target.exit.i_crit_edge: ; preds = %nr_damon_targets.exit130
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_del_target.exit.i

if.end.i.i.i.i:                                   ; preds = %nr_damon_targets.exit130
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 3, i32 1
  %68 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i.i.i, align 4
  %70 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %list.i, align 8
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev1.i.i.i.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %71, ptr %69, align 4
  br label %damon_del_target.exit.i

damon_del_target.exit.i:                          ; preds = %if.end.i.i.i.i, %nr_damon_targets.exit130.damon_del_target.exit.i_crit_edge
  %74 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 3, i32 1
  %75 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %regions_list.i.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 2
  %76 = ptrtoint ptr %regions_list.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regions_list.i.i, align 8
  %cmp.not19.i.i = icmp eq ptr %77, %regions_list.i.i
  br i1 %cmp.not19.i.i, label %damon_del_target.exit.i.damon_destroy_target.exit_crit_edge, label %damon_del_target.exit.i.for.body.i.i_crit_edge

damon_del_target.exit.i.for.body.i.i_crit_edge:   ; preds = %damon_del_target.exit.i
  br label %for.body.i.i

damon_del_target.exit.i.damon_destroy_target.exit_crit_edge: ; preds = %damon_del_target.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_destroy_target.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %damon_del_target.exit.i.for.body.i.i_crit_edge
  %.pn.in20.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %77, %damon_del_target.exit.i.for.body.i.i_crit_edge ]
  %r.0.i.i = getelementptr i8, ptr %.pn.in20.i.i, i32 -16
  %78 = ptrtoint ptr %.pn.in20.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pn.i.i = load ptr, ptr %.pn.in20.i.i, align 4
  call void @kfree(ptr noundef %r.0.i.i) #12
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %regions_list.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.damon_destroy_target.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.damon_destroy_target.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_destroy_target.exit

damon_destroy_target.exit:                        ; preds = %for.body.i.i.damon_destroy_target.exit_crit_edge, %damon_del_target.exit.i.damon_destroy_target.exit_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #12
  br label %for.cond.i137

for.cond.i137:                                    ; preds = %for.cond.i137.for.cond.i137_crit_edge, %damon_destroy_target.exit
  %nr_targets.0.i132 = phi i32 [ 0, %damon_destroy_target.exit ], [ %inc.i136, %for.cond.i137.for.cond.i137_crit_edge ]
  %.pn.in.i133 = phi ptr [ %adaptive_targets.i120, %damon_destroy_target.exit ], [ %.pn.i134, %for.cond.i137.for.cond.i137_crit_edge ]
  %79 = ptrtoint ptr %.pn.in.i133 to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pn.i134 = load ptr, ptr %.pn.in.i133, align 4
  %cmp.not.i135 = icmp eq ptr %.pn.i134, %adaptive_targets.i120
  %inc.i136 = add i32 %nr_targets.0.i132, 1
  br i1 %cmp.not.i135, label %nr_damon_targets.exit138, label %for.cond.i137.for.cond.i137_crit_edge

for.cond.i137.for.cond.i137_crit_edge:            ; preds = %for.cond.i137
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i137

nr_damon_targets.exit138:                         ; preds = %for.cond.i137
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion72) #12
  %80 = getelementptr inbounds i8, ptr %__assertion72, i32 32
  %81 = call ptr @memset(ptr %80, i32 255, i32 24)
  %82 = ptrtoint ptr %__assertion72 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %test, ptr %__assertion72, align 8
  %type75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 1
  %83 = ptrtoint ptr %type75 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %type75, align 4
  %line76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 2
  %84 = ptrtoint ptr %line76 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 63, ptr %line76, align 8
  %file77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 3
  %85 = ptrtoint ptr %file77 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.37, ptr %file77, align 4
  %message78 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 4
  %86 = ptrtoint ptr %message78 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %message78, align 8
  %va80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 4, i32 1
  %87 = ptrtoint ptr %va80 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %va80, align 4
  %format81 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion72, i32 0, i32 5
  %88 = ptrtoint ptr %format81 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @kunit_binary_assert_format, ptr %format81, align 8
  %operation82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion72, i32 0, i32 1
  %89 = ptrtoint ptr %operation82 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.38, ptr %operation82, align 4
  %left_text83 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion72, i32 0, i32 2
  %90 = ptrtoint ptr %left_text83 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.41, ptr %left_text83, align 8
  %left_value84 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion72, i32 0, i32 3
  %91 = ptrtoint ptr %left_value84 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 0, ptr %left_value84, align 8
  %right_text86 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion72, i32 0, i32 4
  %92 = ptrtoint ptr %right_text86 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @.str.42, ptr %right_text86, align 8
  %right_value87 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion72, i32 0, i32 5
  %conv88 = zext i32 %nr_targets.0.i132 to i64
  %93 = ptrtoint ptr %right_value87 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %conv88, ptr %right_value87, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_targets.0.i132)
  %cmp90 = icmp eq i32 %nr_targets.0.i132, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion72, i1 noundef zeroext %cmp90, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion72) #12
  call void @damon_destroy_ctx(ptr noundef %call7.i.i.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @damon_test_regions(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion13 = alloca %struct.kunit_binary_assert, align 8
  %__assertion41 = alloca %struct.kunit_binary_assert, align 8
  %__assertion71 = alloca %struct.kunit_binary_assert, align 8
  %__assertion100 = alloca %struct.kunit_binary_assert, align 8
  %__assertion129 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 32) #15
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.damon_new_region.exit_crit_edge, label %if.end.i

entry.damon_new_region.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_new_region.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %call7.i.i, align 8
  %end3.i = getelementptr inbounds %struct.damon_addr_range, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %end3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %end3.i, align 4
  %nr_accesses.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %nr_accesses.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %nr_accesses.i, align 4
  %list.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list.i, ptr %list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list.i, ptr %prev.i.i, align 4
  %age.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %age.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %age.i, align 8
  %last_nr_accesses.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %last_nr_accesses.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %last_nr_accesses.i, align 4
  br label %damon_new_region.exit

damon_new_region.exit:                            ; preds = %if.end.i, %entry.damon_new_region.exit_crit_edge
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call7.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #12
  %10 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %11 = call ptr @memset(ptr %10, i32 255, i32 24)
  %12 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %14 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 23, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %15 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.37, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %16 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %18 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %19 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.38, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %20 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.44, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %21 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %22 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.45, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv3 = zext i32 %9 to i64
  %23 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv3, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #12
  %end = getelementptr inbounds %struct.damon_addr_range, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %end, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion13) #12
  %26 = getelementptr inbounds i8, ptr %__assertion13, i32 32
  %27 = call ptr @memset(ptr %26, i32 255, i32 24)
  %28 = ptrtoint ptr %__assertion13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %test, ptr %__assertion13, align 8
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 1
  %29 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 2
  %30 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 24, ptr %line17, align 8
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 3
  %31 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.37, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4
  %32 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %message19, align 8
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 5
  %34 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @kunit_binary_assert_format, ptr %format22, align 8
  %operation23 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 1
  %35 = ptrtoint ptr %operation23 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.38, ptr %operation23, align 4
  %left_text24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 2
  %36 = ptrtoint ptr %left_text24 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.46, ptr %left_text24, align 8
  %left_value25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 3
  %37 = ptrtoint ptr %left_value25 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 2, ptr %left_value25, align 8
  %right_text27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 4
  %38 = ptrtoint ptr %right_text27 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.47, ptr %right_text27, align 8
  %right_value28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 5
  %conv29 = zext i32 %25 to i64
  %39 = ptrtoint ptr %right_value28 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv29, ptr %right_value28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp31 = icmp eq i32 %25, 2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13, i1 noundef zeroext %cmp31, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion13) #12
  %nr_accesses = getelementptr inbounds %struct.damon_region, ptr %call7.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %nr_accesses to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_accesses, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion41) #12
  %42 = getelementptr inbounds i8, ptr %__assertion41, i32 32
  %43 = call ptr @memset(ptr %42, i32 255, i32 24)
  %44 = ptrtoint ptr %__assertion41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %test, ptr %__assertion41, align 8
  %type44 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 1
  %45 = ptrtoint ptr %type44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %type44, align 4
  %line45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 2
  %46 = ptrtoint ptr %line45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 25, ptr %line45, align 8
  %file46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 3
  %47 = ptrtoint ptr %file46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.37, ptr %file46, align 4
  %message47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 4
  %48 = ptrtoint ptr %message47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %message47, align 8
  %va49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %va49 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %va49, align 4
  %format50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 5
  %50 = ptrtoint ptr %format50 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @kunit_binary_assert_format, ptr %format50, align 8
  %operation51 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion41, i32 0, i32 1
  %51 = ptrtoint ptr %operation51 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.38, ptr %operation51, align 4
  %left_text52 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion41, i32 0, i32 2
  %52 = ptrtoint ptr %left_text52 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.41, ptr %left_text52, align 8
  %left_value53 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion41, i32 0, i32 3
  %53 = ptrtoint ptr %left_value53 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 0, ptr %left_value53, align 8
  %right_text55 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion41, i32 0, i32 4
  %54 = ptrtoint ptr %right_text55 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.48, ptr %right_text55, align 8
  %right_value56 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion41, i32 0, i32 5
  %conv57 = zext i32 %41 to i64
  %55 = ptrtoint ptr %right_value56 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv57, ptr %right_value56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp59 = icmp eq i32 %41, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion41, i1 noundef zeroext %cmp59, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion41) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i185 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3264, i32 noundef 24) #15
  %tobool.not.i186 = icmp eq ptr %call7.i.i185, null
  br i1 %tobool.not.i186, label %damon_new_region.exit.damon_new_target.exit_crit_edge, label %if.end.i188

damon_new_region.exit.damon_new_target.exit_crit_edge: ; preds = %damon_new_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_new_target.exit

if.end.i188:                                      ; preds = %damon_new_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %call7.i.i185 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 42, ptr %call7.i.i185, align 8
  %nr_regions.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i185, i32 0, i32 1
  %58 = ptrtoint ptr %nr_regions.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %nr_regions.i, align 4
  %regions_list.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i185, i32 0, i32 2
  %59 = ptrtoint ptr %regions_list.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %regions_list.i, ptr %regions_list.i, align 8
  %prev.i.i187 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i185, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %prev.i.i187 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %regions_list.i, ptr %prev.i.i187, align 4
  br label %damon_new_target.exit

damon_new_target.exit:                            ; preds = %if.end.i188, %damon_new_region.exit.damon_new_target.exit_crit_edge
  %nr_regions.i189 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i185, i32 0, i32 1
  %61 = ptrtoint ptr %nr_regions.i189 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr_regions.i189, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion71) #12
  %63 = getelementptr inbounds i8, ptr %__assertion71, i32 32
  %64 = call ptr @memset(ptr %63, i32 255, i32 24)
  %65 = ptrtoint ptr %__assertion71 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %test, ptr %__assertion71, align 8
  %type74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 1
  %66 = ptrtoint ptr %type74 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %type74, align 4
  %line75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 2
  %67 = ptrtoint ptr %line75 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 28, ptr %line75, align 8
  %file76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 3
  %68 = ptrtoint ptr %file76 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.37, ptr %file76, align 4
  %message77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4
  %69 = ptrtoint ptr %message77 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %message77, align 8
  %va79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %va79 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %va79, align 4
  %format80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 5
  %71 = ptrtoint ptr %format80 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @kunit_binary_assert_format, ptr %format80, align 8
  %operation81 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 1
  %72 = ptrtoint ptr %operation81 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.38, ptr %operation81, align 4
  %left_text82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 2
  %73 = ptrtoint ptr %left_text82 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.41, ptr %left_text82, align 8
  %left_value83 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 3
  %74 = ptrtoint ptr %left_value83 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 0, ptr %left_value83, align 8
  %right_text85 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 4
  %75 = ptrtoint ptr %right_text85 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.49, ptr %right_text85, align 8
  %right_value86 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 5
  %conv87 = zext i32 %62 to i64
  %76 = ptrtoint ptr %right_value86 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv87, ptr %right_value86, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp89 = icmp eq i32 %62, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion71, i1 noundef zeroext %cmp89, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion71) #12
  %list.i190 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i, i32 0, i32 3
  %regions_list.i191 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i185, i32 0, i32 2
  %prev.i.i192 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i185, i32 0, i32 2, i32 1
  %77 = ptrtoint ptr %prev.i.i192 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i192, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i190, ptr noundef %78, ptr noundef %regions_list.i191) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %damon_new_target.exit.damon_add_region.exit_crit_edge

damon_new_target.exit.damon_add_region.exit_crit_edge: ; preds = %damon_new_target.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_add_region.exit

if.end.i.i.i:                                     ; preds = %damon_new_target.exit
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %prev.i.i192 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %list.i190, ptr %prev.i.i192, align 4
  %80 = ptrtoint ptr %list.i190 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %regions_list.i191, ptr %list.i190, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i, i32 0, i32 3, i32 1
  %81 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev3.i.i.i, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %list.i190, ptr %78, align 4
  br label %damon_add_region.exit

damon_add_region.exit:                            ; preds = %if.end.i.i.i, %damon_new_target.exit.damon_add_region.exit_crit_edge
  %83 = ptrtoint ptr %nr_regions.i189 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nr_regions.i189, align 4
  %inc.i = add i32 %84, 1
  store i32 %inc.i, ptr %nr_regions.i189, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion100) #12
  %85 = getelementptr inbounds i8, ptr %__assertion100, i32 32
  %86 = call ptr @memset(ptr %85, i32 255, i32 24)
  %87 = ptrtoint ptr %__assertion100 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %test, ptr %__assertion100, align 8
  %type103 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 1
  %88 = ptrtoint ptr %type103 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %type103, align 4
  %line104 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 2
  %89 = ptrtoint ptr %line104 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 31, ptr %line104, align 8
  %file105 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 3
  %90 = ptrtoint ptr %file105 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.37, ptr %file105, align 4
  %message106 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 4
  %91 = ptrtoint ptr %message106 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %message106, align 8
  %va108 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 4, i32 1
  %92 = ptrtoint ptr %va108 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %va108, align 4
  %format109 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 5
  %93 = ptrtoint ptr %format109 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @kunit_binary_assert_format, ptr %format109, align 8
  %operation110 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 1
  %94 = ptrtoint ptr %operation110 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @.str.38, ptr %operation110, align 4
  %left_text111 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 2
  %95 = ptrtoint ptr %left_text111 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @.str.43, ptr %left_text111, align 8
  %left_value112 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 3
  %96 = ptrtoint ptr %left_value112 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 1, ptr %left_value112, align 8
  %right_text114 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 4
  %97 = ptrtoint ptr %right_text114 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @.str.49, ptr %right_text114, align 8
  %right_value115 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 5
  %conv116 = zext i32 %inc.i to i64
  %98 = ptrtoint ptr %right_value115 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %conv116, ptr %right_value115, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp118 = icmp eq i32 %84, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion100, i1 noundef zeroext %cmp118, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion100) #12
  %call.i.i.i196 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i190) #12
  br i1 %call.i.i.i196, label %if.end.i.i.i197, label %damon_add_region.exit.damon_del_region.exit_crit_edge

damon_add_region.exit.damon_del_region.exit_crit_edge: ; preds = %damon_add_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_del_region.exit

if.end.i.i.i197:                                  ; preds = %damon_add_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i, i32 0, i32 3, i32 1
  %99 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prev.i.i.i, align 4
  %101 = ptrtoint ptr %list.i190 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %list.i190, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %prev1.i.i.i.i, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %102, ptr %100, align 4
  br label %damon_del_region.exit

damon_del_region.exit:                            ; preds = %if.end.i.i.i197, %damon_add_region.exit.damon_del_region.exit_crit_edge
  %105 = ptrtoint ptr %list.i190 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i190, align 8
  %prev.i.i198 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i, i32 0, i32 3, i32 1
  %106 = ptrtoint ptr %prev.i.i198 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i198, align 4
  %107 = ptrtoint ptr %nr_regions.i189 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %nr_regions.i189, align 4
  %dec.i = add i32 %108, -1
  store i32 %dec.i, ptr %nr_regions.i189, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion129) #12
  %109 = getelementptr inbounds i8, ptr %__assertion129, i32 32
  %110 = call ptr @memset(ptr %109, i32 255, i32 24)
  %111 = ptrtoint ptr %__assertion129 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %test, ptr %__assertion129, align 8
  %type132 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 1
  %112 = ptrtoint ptr %type132 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %type132, align 4
  %line133 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 2
  %113 = ptrtoint ptr %line133 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 34, ptr %line133, align 8
  %file134 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 3
  %114 = ptrtoint ptr %file134 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @.str.37, ptr %file134, align 4
  %message135 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 4
  %115 = ptrtoint ptr %message135 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %message135, align 8
  %va137 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 4, i32 1
  %116 = ptrtoint ptr %va137 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %va137, align 4
  %format138 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 5
  %117 = ptrtoint ptr %format138 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @kunit_binary_assert_format, ptr %format138, align 8
  %operation139 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 1
  %118 = ptrtoint ptr %operation139 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @.str.38, ptr %operation139, align 4
  %left_text140 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 2
  %119 = ptrtoint ptr %left_text140 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @.str.41, ptr %left_text140, align 8
  %left_value141 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 3
  %120 = ptrtoint ptr %left_value141 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 0, ptr %left_value141, align 8
  %right_text143 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 4
  %121 = ptrtoint ptr %right_text143 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @.str.49, ptr %right_text143, align 8
  %right_value144 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 5
  %conv145 = zext i32 %dec.i to i64
  %122 = ptrtoint ptr %right_value144 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %conv145, ptr %right_value144, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp147 = icmp eq i32 %dec.i, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion129, i1 noundef zeroext %cmp147, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion129) #12
  %123 = ptrtoint ptr %regions_list.i191 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regions_list.i191, align 8
  %cmp.not19.i = icmp eq ptr %124, %regions_list.i191
  br i1 %cmp.not19.i, label %damon_del_region.exit.damon_free_target.exit_crit_edge, label %damon_del_region.exit.for.body.i_crit_edge

damon_del_region.exit.for.body.i_crit_edge:       ; preds = %damon_del_region.exit
  br label %for.body.i

damon_del_region.exit.damon_free_target.exit_crit_edge: ; preds = %damon_del_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_free_target.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %damon_del_region.exit.for.body.i_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %124, %damon_del_region.exit.for.body.i_crit_edge ]
  %r.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -16
  %125 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 4
  call void @kfree(ptr noundef %r.0.i) #12
  %cmp.not.i = icmp eq ptr %.pn.i, %regions_list.i191
  br i1 %cmp.not.i, label %for.body.i.damon_free_target.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.damon_free_target.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_free_target.exit

damon_free_target.exit:                           ; preds = %for.body.i.damon_free_target.exit_crit_edge, %damon_del_region.exit.damon_free_target.exit_crit_edge
  call void @kfree(ptr noundef %call7.i.i185) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @damon_test_aggregate(ptr noundef %test) #0 align 64 {
entry:
  %target_ids = alloca [3 x i32], align 4
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion62 = alloca %struct.kunit_binary_assert, align 8
  %__assertion98 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 224) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.damon_new_ctx.exit_crit_edge, label %if.end.i

entry.damon_new_ctx.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_new_ctx.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 5000, ptr %call7.i.i.i, align 8
  %aggr_interval.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %aggr_interval.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 100000, ptr %aggr_interval.i, align 4
  %primitive_update_interval.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %primitive_update_interval.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 60000000, ptr %primitive_update_interval.i, align 8
  %last_aggregation.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @ktime_get_coarse_ts64(ptr noundef %last_aggregation.i) #12
  %last_primitive_update.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 4
  %4 = call ptr @memcpy(ptr %last_primitive_update.i, ptr %last_aggregation.i, i32 16)
  %kdamond_lock.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %kdamond_lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @damon_new_ctx.__key) #12
  %min_nr_regions.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 9
  %5 = ptrtoint ptr %min_nr_regions.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %min_nr_regions.i, align 8
  %max_nr_regions.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %max_nr_regions.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1000, ptr %max_nr_regions.i, align 4
  %adaptive_targets.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 11
  %7 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %adaptive_targets.i, ptr %adaptive_targets.i, align 8
  %prev.i.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %adaptive_targets.i, ptr %prev.i.i, align 4
  %schemes.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 12
  %9 = ptrtoint ptr %schemes.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %schemes.i, ptr %schemes.i, align 8
  %prev.i14.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %prev.i14.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %schemes.i, ptr %prev.i14.i, align 4
  br label %damon_new_ctx.exit

damon_new_ctx.exit:                               ; preds = %if.end.i, %entry.damon_new_ctx.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %target_ids) #12
  %11 = call ptr @memcpy(ptr %target_ids, ptr @__const.damon_test_aggregate.target_ids, i32 12)
  %call1 = call i32 @damon_set_targets(ptr noundef %call7.i.i.i, ptr noundef nonnull %target_ids, i32 noundef 3)
  %adaptive_targets = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 11
  %12 = ptrtoint ptr %adaptive_targets to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn173 = load ptr, ptr %adaptive_targets, align 8
  %cmp.not174 = icmp eq ptr %.pn173, %adaptive_targets
  br i1 %cmp.not174, label %damon_new_ctx.exit.for.end19_crit_edge, label %damon_new_ctx.exit.for.cond3.preheader_crit_edge

damon_new_ctx.exit.for.cond3.preheader_crit_edge: ; preds = %damon_new_ctx.exit
  br label %for.cond3.preheader

damon_new_ctx.exit.for.end19_crit_edge:           ; preds = %damon_new_ctx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end19

for.cond3.preheader:                              ; preds = %damon_add_region.exit.2.for.cond3.preheader_crit_edge, %damon_new_ctx.exit.for.cond3.preheader_crit_edge
  %.pn176 = phi ptr [ %.pn, %damon_add_region.exit.2.for.cond3.preheader_crit_edge ], [ %.pn173, %damon_new_ctx.exit.for.cond3.preheader_crit_edge ]
  %it.0175 = phi i32 [ %inc12, %damon_add_region.exit.2.for.cond3.preheader_crit_edge ], [ 0, %damon_new_ctx.exit.for.cond3.preheader_crit_edge ]
  %regions_list.i = getelementptr i8, ptr %.pn176, i32 -8
  %prev.i.i166 = getelementptr i8, ptr %.pn176, i32 -4
  %nr_regions.i = getelementptr i8, ptr %.pn176, i32 -12
  %arrayidx6 = getelementptr [3 x [3 x i32]], ptr @__const.damon_test_aggregate.saddr, i32 0, i32 %it.0175, i32 0
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr [3 x [3 x i32]], ptr @__const.damon_test_aggregate.eaddr, i32 0, i32 %it.0175, i32 0
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx8, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 32) #15
  %tobool.not.i162 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i162, label %for.cond3.preheader.damon_new_region.exit_crit_edge, label %if.end.i164

for.cond3.preheader.damon_new_region.exit_crit_edge: ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_new_region.exit

if.end.i164:                                      ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %14, ptr %call7.i.i, align 8
  %end3.i = getelementptr inbounds %struct.damon_addr_range, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %end3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %end3.i, align 4
  %list.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list.i, ptr %list.i, align 8
  %prev.i.i163 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %prev.i.i163 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list.i, ptr %prev.i.i163, align 4
  %age.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %age.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %age.i, align 8
  %last_nr_accesses.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %last_nr_accesses.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %last_nr_accesses.i, align 4
  br label %damon_new_region.exit

damon_new_region.exit:                            ; preds = %if.end.i164, %for.cond3.preheader.damon_new_region.exit_crit_edge
  %arrayidx11 = getelementptr [3 x [3 x i32]], ptr @__const.damon_test_aggregate.accesses, i32 0, i32 %it.0175, i32 0
  %24 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx11, align 4
  %nr_accesses = getelementptr inbounds %struct.damon_region, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %nr_accesses to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %nr_accesses, align 4
  %list.i165 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %prev.i.i166 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i166, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i165, ptr noundef %28, ptr noundef %regions_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %damon_new_region.exit.damon_add_region.exit_crit_edge

damon_new_region.exit.damon_add_region.exit_crit_edge: ; preds = %damon_new_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_add_region.exit

if.end.i.i.i:                                     ; preds = %damon_new_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %prev.i.i166 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list.i165, ptr %prev.i.i166, align 4
  %30 = ptrtoint ptr %list.i165 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %regions_list.i, ptr %list.i165, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %list.i165, ptr %28, align 4
  br label %damon_add_region.exit

damon_add_region.exit:                            ; preds = %if.end.i.i.i, %damon_new_region.exit.damon_add_region.exit_crit_edge
  %33 = ptrtoint ptr %nr_regions.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_regions.i, align 4
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr %nr_regions.i, align 4
  %arrayidx6.1 = getelementptr [3 x [3 x i32]], ptr @__const.damon_test_aggregate.saddr, i32 0, i32 %it.0175, i32 1
  %35 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx6.1, align 4
  %arrayidx8.1 = getelementptr [3 x [3 x i32]], ptr @__const.damon_test_aggregate.eaddr, i32 0, i32 %it.0175, i32 1
  %37 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx8.1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3264, i32 noundef 32) #15
  %tobool.not.i162.1 = icmp eq ptr %call7.i.i.1, null
  br i1 %tobool.not.i162.1, label %damon_add_region.exit.damon_new_region.exit.1_crit_edge, label %if.end.i164.1

damon_add_region.exit.damon_new_region.exit.1_crit_edge: ; preds = %damon_add_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_new_region.exit.1

if.end.i164.1:                                    ; preds = %damon_add_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %call7.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %36, ptr %call7.i.i.1, align 8
  %end3.i.1 = getelementptr inbounds %struct.damon_addr_range, ptr %call7.i.i.1, i32 0, i32 1
  %41 = ptrtoint ptr %end3.i.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %38, ptr %end3.i.1, align 4
  %list.i.1 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.1, i32 0, i32 3
  %42 = ptrtoint ptr %list.i.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %list.i.1, ptr %list.i.1, align 8
  %prev.i.i163.1 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.1, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %prev.i.i163.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %list.i.1, ptr %prev.i.i163.1, align 4
  %age.i.1 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.1, i32 0, i32 4
  %44 = ptrtoint ptr %age.i.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %age.i.1, align 8
  %last_nr_accesses.i.1 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.1, i32 0, i32 5
  %45 = ptrtoint ptr %last_nr_accesses.i.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %last_nr_accesses.i.1, align 4
  br label %damon_new_region.exit.1

damon_new_region.exit.1:                          ; preds = %if.end.i164.1, %damon_add_region.exit.damon_new_region.exit.1_crit_edge
  %arrayidx11.1 = getelementptr [3 x [3 x i32]], ptr @__const.damon_test_aggregate.accesses, i32 0, i32 %it.0175, i32 1
  %46 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx11.1, align 4
  %nr_accesses.1 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.1, i32 0, i32 2
  %48 = ptrtoint ptr %nr_accesses.1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %nr_accesses.1, align 4
  %list.i165.1 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.1, i32 0, i32 3
  %49 = ptrtoint ptr %prev.i.i166 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i166, align 4
  %call.i.i.i.1 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i165.1, ptr noundef %50, ptr noundef %regions_list.i) #12
  br i1 %call.i.i.i.1, label %if.end.i.i.i.1, label %damon_new_region.exit.1.damon_add_region.exit.1_crit_edge

damon_new_region.exit.1.damon_add_region.exit.1_crit_edge: ; preds = %damon_new_region.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_add_region.exit.1

if.end.i.i.i.1:                                   ; preds = %damon_new_region.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %prev.i.i166 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %list.i165.1, ptr %prev.i.i166, align 4
  %52 = ptrtoint ptr %list.i165.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %regions_list.i, ptr %list.i165.1, align 8
  %prev3.i.i.i.1 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.1, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %prev3.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i.i.1, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %list.i165.1, ptr %50, align 4
  br label %damon_add_region.exit.1

damon_add_region.exit.1:                          ; preds = %if.end.i.i.i.1, %damon_new_region.exit.1.damon_add_region.exit.1_crit_edge
  %55 = ptrtoint ptr %nr_regions.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr_regions.i, align 4
  %inc.i.1 = add i32 %56, 1
  store i32 %inc.i.1, ptr %nr_regions.i, align 4
  %arrayidx6.2 = getelementptr [3 x [3 x i32]], ptr @__const.damon_test_aggregate.saddr, i32 0, i32 %it.0175, i32 2
  %57 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx6.2, align 4
  %arrayidx8.2 = getelementptr [3 x [3 x i32]], ptr @__const.damon_test_aggregate.eaddr, i32 0, i32 %it.0175, i32 2
  %59 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx8.2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %61 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3264, i32 noundef 32) #15
  %tobool.not.i162.2 = icmp eq ptr %call7.i.i.2, null
  br i1 %tobool.not.i162.2, label %damon_add_region.exit.1.damon_new_region.exit.2_crit_edge, label %if.end.i164.2

damon_add_region.exit.1.damon_new_region.exit.2_crit_edge: ; preds = %damon_add_region.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_new_region.exit.2

if.end.i164.2:                                    ; preds = %damon_add_region.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %call7.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %58, ptr %call7.i.i.2, align 8
  %end3.i.2 = getelementptr inbounds %struct.damon_addr_range, ptr %call7.i.i.2, i32 0, i32 1
  %63 = ptrtoint ptr %end3.i.2 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %60, ptr %end3.i.2, align 4
  %list.i.2 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.2, i32 0, i32 3
  %64 = ptrtoint ptr %list.i.2 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %list.i.2, ptr %list.i.2, align 8
  %prev.i.i163.2 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.2, i32 0, i32 3, i32 1
  %65 = ptrtoint ptr %prev.i.i163.2 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %list.i.2, ptr %prev.i.i163.2, align 4
  %age.i.2 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.2, i32 0, i32 4
  %66 = ptrtoint ptr %age.i.2 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %age.i.2, align 8
  %last_nr_accesses.i.2 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.2, i32 0, i32 5
  %67 = ptrtoint ptr %last_nr_accesses.i.2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %last_nr_accesses.i.2, align 4
  br label %damon_new_region.exit.2

damon_new_region.exit.2:                          ; preds = %if.end.i164.2, %damon_add_region.exit.1.damon_new_region.exit.2_crit_edge
  %arrayidx11.2 = getelementptr [3 x [3 x i32]], ptr @__const.damon_test_aggregate.accesses, i32 0, i32 %it.0175, i32 2
  %68 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx11.2, align 4
  %nr_accesses.2 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.2, i32 0, i32 2
  %70 = ptrtoint ptr %nr_accesses.2 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %nr_accesses.2, align 4
  %list.i165.2 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.2, i32 0, i32 3
  %71 = ptrtoint ptr %prev.i.i166 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i166, align 4
  %call.i.i.i.2 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i165.2, ptr noundef %72, ptr noundef %regions_list.i) #12
  br i1 %call.i.i.i.2, label %if.end.i.i.i.2, label %damon_new_region.exit.2.damon_add_region.exit.2_crit_edge

damon_new_region.exit.2.damon_add_region.exit.2_crit_edge: ; preds = %damon_new_region.exit.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_add_region.exit.2

if.end.i.i.i.2:                                   ; preds = %damon_new_region.exit.2
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %prev.i.i166 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %list.i165.2, ptr %prev.i.i166, align 4
  %74 = ptrtoint ptr %list.i165.2 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %regions_list.i, ptr %list.i165.2, align 8
  %prev3.i.i.i.2 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.2, i32 0, i32 3, i32 1
  %75 = ptrtoint ptr %prev3.i.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev3.i.i.i.2, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %list.i165.2, ptr %72, align 4
  br label %damon_add_region.exit.2

damon_add_region.exit.2:                          ; preds = %if.end.i.i.i.2, %damon_new_region.exit.2.damon_add_region.exit.2_crit_edge
  %77 = ptrtoint ptr %nr_regions.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nr_regions.i, align 4
  %inc.i.2 = add i32 %78, 1
  store i32 %inc.i.2, ptr %nr_regions.i, align 4
  %inc12 = add i32 %it.0175, 1
  %79 = ptrtoint ptr %.pn176 to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pn = load ptr, ptr %.pn176, align 4
  %cmp.not = icmp eq ptr %.pn, %adaptive_targets
  br i1 %cmp.not, label %damon_add_region.exit.2.for.end19_crit_edge, label %damon_add_region.exit.2.for.cond3.preheader_crit_edge

damon_add_region.exit.2.for.cond3.preheader_crit_edge: ; preds = %damon_add_region.exit.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond3.preheader

damon_add_region.exit.2.for.end19_crit_edge:      ; preds = %damon_add_region.exit.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end19

for.end19:                                        ; preds = %damon_add_region.exit.2.for.end19_crit_edge, %damon_new_ctx.exit.for.end19_crit_edge
  %80 = ptrtoint ptr %adaptive_targets to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pn41.i = load ptr, ptr %adaptive_targets, align 8
  %cmp.not43.i = icmp eq ptr %.pn41.i, %adaptive_targets
  br i1 %cmp.not43.i, label %for.end19.kdamond_reset_aggregated.exit_crit_edge, label %for.end19.for.body.i_crit_edge

for.end19.for.body.i_crit_edge:                   ; preds = %for.end19
  br label %for.body.i

for.end19.kdamond_reset_aggregated.exit_crit_edge: ; preds = %for.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %kdamond_reset_aggregated.exit

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.end19.for.body.i_crit_edge
  %.pn45.i = phi ptr [ %.pn.i, %for.end.i.for.body.i_crit_edge ], [ %.pn41.i, %for.end19.for.body.i_crit_edge ]
  %ti.044.i = phi i32 [ %inc.i171, %for.end.i.for.body.i_crit_edge ], [ 0, %for.end19.for.body.i_crit_edge ]
  %t.046.i = getelementptr i8, ptr %.pn45.i, i32 -16
  %regions_list.i168 = getelementptr i8, ptr %.pn45.i, i32 -8
  %81 = ptrtoint ptr %regions_list.i168 to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pn3738.i = load ptr, ptr %regions_list.i168, align 4
  %cmp9.not39.i = icmp eq ptr %.pn3738.i, %regions_list.i168
  br i1 %cmp9.not39.i, label %for.body.i.for.end.i_crit_edge, label %for.body11.lr.ph.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body11.lr.ph.i:                               ; preds = %for.body.i
  %nr_regions.i.i = getelementptr i8, ptr %.pn45.i, i32 -12
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %for.body11.lr.ph.i
  %.pn3740.i = phi ptr [ %.pn3738.i, %for.body11.lr.ph.i ], [ %.pn37.i, %for.body11.i.for.body11.i_crit_edge ]
  %r.0.i = getelementptr i8, ptr %.pn3740.i, i32 -16
  %82 = ptrtoint ptr %nr_regions.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nr_regions.i.i, align 4
  tail call fastcc void @trace_damon_aggregated(ptr noundef %t.046.i, i32 noundef %ti.044.i, ptr noundef %r.0.i, i32 noundef %83) #12
  %nr_accesses.i169 = getelementptr i8, ptr %.pn3740.i, i32 -4
  %84 = ptrtoint ptr %nr_accesses.i169 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nr_accesses.i169, align 4
  %last_nr_accesses.i170 = getelementptr i8, ptr %.pn3740.i, i32 12
  %86 = ptrtoint ptr %last_nr_accesses.i170 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %last_nr_accesses.i170, align 4
  store i32 0, ptr %nr_accesses.i169, align 4
  %87 = ptrtoint ptr %.pn3740.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pn37.i = load ptr, ptr %.pn3740.i, align 4
  %cmp9.not.i = icmp eq ptr %.pn37.i, %regions_list.i168
  br i1 %cmp9.not.i, label %for.body11.i.for.end.i_crit_edge, label %for.body11.i.for.body11.i_crit_edge

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.i

for.body11.i.for.end.i_crit_edge:                 ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body11.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %inc.i171 = add i32 %ti.044.i, 1
  %88 = ptrtoint ptr %.pn45.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn.i = load ptr, ptr %.pn45.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %adaptive_targets
  br i1 %cmp.not.i, label %for.end.i.kdamond_reset_aggregated.exit_crit_edge, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i.kdamond_reset_aggregated.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kdamond_reset_aggregated.exit

kdamond_reset_aggregated.exit:                    ; preds = %for.end.i.kdamond_reset_aggregated.exit_crit_edge, %for.end19.kdamond_reset_aggregated.exit_crit_edge
  %89 = ptrtoint ptr %adaptive_targets to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pn160181 = load ptr, ptr %adaptive_targets, align 8
  %cmp28.not182 = icmp eq ptr %.pn160181, %adaptive_targets
  br i1 %cmp28.not182, label %kdamond_reset_aggregated.exit.do.body94_crit_edge, label %for.body30.lr.ph

kdamond_reset_aggregated.exit.do.body94_crit_edge: ; preds = %kdamond_reset_aggregated.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body94

for.body30.lr.ph:                                 ; preds = %kdamond_reset_aggregated.exit
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
  %type65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 1
  %line66 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 2
  %file67 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 3
  %message68 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 4
  %va70 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 4, i32 1
  %format71 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 5
  %operation72 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion62, i32 0, i32 1
  %left_text73 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion62, i32 0, i32 2
  %left_value74 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion62, i32 0, i32 3
  %right_text76 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion62, i32 0, i32 4
  %right_value77 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion62, i32 0, i32 5
  %90 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %91 = getelementptr inbounds i8, ptr %__assertion62, i32 32
  br label %for.body30

for.body30:                                       ; preds = %do.body58.for.body30_crit_edge, %for.body30.lr.ph
  %.pn160184 = phi ptr [ %.pn160181, %for.body30.lr.ph ], [ %.pn160, %do.body58.for.body30_crit_edge ]
  %it.1183 = phi i32 [ 0, %for.body30.lr.ph ], [ %inc86, %do.body58.for.body30_crit_edge ]
  %regions_list = getelementptr i8, ptr %.pn160184, i32 -8
  %92 = ptrtoint ptr %regions_list to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pn161177 = load ptr, ptr %regions_list, align 4
  %cmp38.not178 = icmp eq ptr %.pn161177, %regions_list
  br i1 %cmp38.not178, label %for.body30.do.body58_crit_edge, label %for.body30.do.body_crit_edge

for.body30.do.body_crit_edge:                     ; preds = %for.body30
  br label %do.body

for.body30.do.body58_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body58

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.body30.do.body_crit_edge
  %.pn161180 = phi ptr [ %.pn161, %do.body.do.body_crit_edge ], [ %.pn161177, %for.body30.do.body_crit_edge ]
  %ir.1179 = phi i32 [ %inc50, %do.body.do.body_crit_edge ], [ 0, %for.body30.do.body_crit_edge ]
  %nr_accesses41 = getelementptr i8, ptr %.pn161180, i32 -4
  %93 = ptrtoint ptr %nr_accesses41 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %nr_accesses41, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #12
  %95 = call ptr @memset(ptr %90, i32 255, i32 24)
  %96 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %test, ptr %__assertion, align 8
  %97 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %type, align 4
  %98 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 106, ptr %line, align 8
  %99 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @.str.37, ptr %file, align 4
  %100 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %message, align 8
  %101 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %va, align 4
  %102 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %103 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @.str.38, ptr %operation, align 4
  %104 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @.str.41, ptr %left_text, align 8
  %105 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 0, ptr %left_value, align 8
  %106 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @.str.48, ptr %right_text, align 8
  %conv44 = zext i32 %94 to i64
  %107 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %conv44, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp46 = icmp eq i32 %94, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp46, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #12
  %inc50 = add i32 %ir.1179, 1
  %108 = ptrtoint ptr %.pn161180 to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pn161 = load ptr, ptr %.pn161180, align 4
  %cmp38.not = icmp eq ptr %.pn161, %regions_list
  br i1 %cmp38.not, label %do.body.do.body58_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body.do.body58_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body58

do.body58:                                        ; preds = %do.body.do.body58_crit_edge, %for.body30.do.body58_crit_edge
  %ir.1.lcssa = phi i32 [ 0, %for.body30.do.body58_crit_edge ], [ %inc50, %do.body.do.body58_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion62) #12
  %109 = call ptr @memset(ptr %91, i32 255, i32 24)
  %110 = ptrtoint ptr %__assertion62 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %test, ptr %__assertion62, align 8
  %111 = ptrtoint ptr %type65 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %type65, align 4
  %112 = ptrtoint ptr %line66 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 110, ptr %line66, align 8
  %113 = ptrtoint ptr %file67 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @.str.37, ptr %file67, align 4
  %114 = ptrtoint ptr %message68 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %message68, align 8
  %115 = ptrtoint ptr %va70 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %va70, align 4
  %116 = ptrtoint ptr %format71 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @kunit_binary_assert_format, ptr %format71, align 8
  %117 = ptrtoint ptr %operation72 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @.str.38, ptr %operation72, align 4
  %118 = ptrtoint ptr %left_text73 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @.str.50, ptr %left_text73, align 8
  %119 = ptrtoint ptr %left_value74 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 3, ptr %left_value74, align 8
  %120 = ptrtoint ptr %right_text76 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @.str.51, ptr %right_text76, align 8
  %conv78 = sext i32 %ir.1.lcssa to i64
  %121 = ptrtoint ptr %right_value77 to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %conv78, ptr %right_value77, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ir.1.lcssa)
  %cmp80 = icmp eq i32 %ir.1.lcssa, 3
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion62, i1 noundef zeroext %cmp80, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion62) #12
  %inc86 = add i32 %it.1183, 1
  %122 = ptrtoint ptr %.pn160184 to i32
  call void @__asan_load4_noabort(i32 %122)
  %.pn160 = load ptr, ptr %.pn160184, align 4
  %cmp28.not = icmp eq ptr %.pn160, %adaptive_targets
  br i1 %cmp28.not, label %do.body58.do.body94_crit_edge, label %do.body58.for.body30_crit_edge

do.body58.for.body30_crit_edge:                   ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body30

do.body58.do.body94_crit_edge:                    ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body94

do.body94:                                        ; preds = %do.body58.do.body94_crit_edge, %kdamond_reset_aggregated.exit.do.body94_crit_edge
  %it.1.lcssa = phi i32 [ 0, %kdamond_reset_aggregated.exit.do.body94_crit_edge ], [ %inc86, %do.body58.do.body94_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion98) #12
  %123 = getelementptr inbounds i8, ptr %__assertion98, i32 32
  %124 = call ptr @memset(ptr %123, i32 255, i32 24)
  %125 = ptrtoint ptr %__assertion98 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %test, ptr %__assertion98, align 8
  %type101 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 1
  %126 = ptrtoint ptr %type101 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %type101, align 4
  %line102 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 2
  %127 = ptrtoint ptr %line102 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 114, ptr %line102, align 8
  %file103 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 3
  %128 = ptrtoint ptr %file103 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @.str.37, ptr %file103, align 4
  %message104 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 4
  %129 = ptrtoint ptr %message104 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %message104, align 8
  %va106 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 4, i32 1
  %130 = ptrtoint ptr %va106 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %va106, align 4
  %format107 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 5
  %131 = ptrtoint ptr %format107 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @kunit_binary_assert_format, ptr %format107, align 8
  %operation108 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion98, i32 0, i32 1
  %132 = ptrtoint ptr %operation108 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @.str.38, ptr %operation108, align 4
  %left_text109 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion98, i32 0, i32 2
  %133 = ptrtoint ptr %left_text109 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @.str.50, ptr %left_text109, align 8
  %left_value110 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion98, i32 0, i32 3
  %134 = ptrtoint ptr %left_value110 to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 3, ptr %left_value110, align 8
  %right_text112 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion98, i32 0, i32 4
  %135 = ptrtoint ptr %right_text112 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @.str.52, ptr %right_text112, align 8
  %right_value113 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion98, i32 0, i32 5
  %conv114 = sext i32 %it.1.lcssa to i64
  %136 = ptrtoint ptr %right_value113 to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %conv114, ptr %right_value113, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %it.1.lcssa)
  %cmp116 = icmp eq i32 %it.1.lcssa, 3
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion98, i1 noundef zeroext %cmp116, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion98) #12
  call void @damon_destroy_ctx(ptr noundef %call7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %target_ids) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @damon_test_split_at(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion15 = alloca %struct.kunit_binary_assert, align 8
  %__assertion46 = alloca %struct.kunit_binary_assert, align 8
  %__assertion76 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 224) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.damon_new_ctx.exit_crit_edge, label %if.end.i

entry.damon_new_ctx.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_new_ctx.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 5000, ptr %call7.i.i.i, align 8
  %aggr_interval.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %aggr_interval.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 100000, ptr %aggr_interval.i, align 4
  %primitive_update_interval.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %primitive_update_interval.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 60000000, ptr %primitive_update_interval.i, align 8
  %last_aggregation.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @ktime_get_coarse_ts64(ptr noundef %last_aggregation.i) #12
  %last_primitive_update.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 4
  %4 = call ptr @memcpy(ptr %last_primitive_update.i, ptr %last_aggregation.i, i32 16)
  %kdamond_lock.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %kdamond_lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @damon_new_ctx.__key) #12
  %min_nr_regions.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 9
  %5 = ptrtoint ptr %min_nr_regions.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %min_nr_regions.i, align 8
  %max_nr_regions.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %max_nr_regions.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1000, ptr %max_nr_regions.i, align 4
  %adaptive_targets.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 11
  %7 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %adaptive_targets.i, ptr %adaptive_targets.i, align 8
  %prev.i.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %adaptive_targets.i, ptr %prev.i.i, align 4
  %schemes.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 12
  %9 = ptrtoint ptr %schemes.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %schemes.i, ptr %schemes.i, align 8
  %prev.i14.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %prev.i14.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %schemes.i, ptr %prev.i14.i, align 4
  br label %damon_new_ctx.exit

damon_new_ctx.exit:                               ; preds = %if.end.i, %entry.damon_new_ctx.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 24) #15
  %tobool.not.i124 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i124, label %damon_new_ctx.exit.damon_new_target.exit_crit_edge, label %if.end.i126

damon_new_ctx.exit.damon_new_target.exit_crit_edge: ; preds = %damon_new_ctx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_new_target.exit

if.end.i126:                                      ; preds = %damon_new_ctx.exit
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 42, ptr %call7.i.i, align 8
  %nr_regions.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %nr_regions.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %nr_regions.i, align 4
  %regions_list.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %regions_list.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %regions_list.i, ptr %regions_list.i, align 8
  %prev.i.i125 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %prev.i.i125 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %regions_list.i, ptr %prev.i.i125, align 4
  br label %damon_new_target.exit

damon_new_target.exit:                            ; preds = %if.end.i126, %damon_new_ctx.exit.damon_new_target.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i127 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 32) #15
  %tobool.not.i128 = icmp eq ptr %call7.i.i127, null
  br i1 %tobool.not.i128, label %damon_new_target.exit.damon_new_region.exit_crit_edge, label %if.end.i130

damon_new_target.exit.damon_new_region.exit_crit_edge: ; preds = %damon_new_target.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_new_region.exit

if.end.i130:                                      ; preds = %damon_new_target.exit
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %call7.i.i127 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %call7.i.i127, align 8
  %end3.i = getelementptr inbounds %struct.damon_addr_range, ptr %call7.i.i127, i32 0, i32 1
  %18 = ptrtoint ptr %end3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 100, ptr %end3.i, align 4
  %nr_accesses.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i127, i32 0, i32 2
  %19 = ptrtoint ptr %nr_accesses.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %nr_accesses.i, align 4
  %list.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i127, i32 0, i32 3
  %20 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list.i, ptr %list.i, align 8
  %prev.i.i129 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i127, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %prev.i.i129 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list.i, ptr %prev.i.i129, align 4
  %age.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i127, i32 0, i32 4
  %22 = ptrtoint ptr %age.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %age.i, align 8
  %last_nr_accesses.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i127, i32 0, i32 5
  %23 = ptrtoint ptr %last_nr_accesses.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %last_nr_accesses.i, align 4
  br label %damon_new_region.exit

damon_new_region.exit:                            ; preds = %if.end.i130, %damon_new_target.exit.damon_new_region.exit_crit_edge
  %list.i131 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i127, i32 0, i32 3
  %regions_list.i132 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 2
  %prev.i.i133 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %prev.i.i133 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i133, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i131, ptr noundef %25, ptr noundef %regions_list.i132) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %damon_new_region.exit.damon_add_region.exit_crit_edge

damon_new_region.exit.damon_add_region.exit_crit_edge: ; preds = %damon_new_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_add_region.exit

if.end.i.i.i:                                     ; preds = %damon_new_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %prev.i.i133 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list.i131, ptr %prev.i.i133, align 4
  %27 = ptrtoint ptr %list.i131 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %regions_list.i132, ptr %list.i131, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i127, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %list.i131, ptr %25, align 4
  br label %damon_add_region.exit

damon_add_region.exit:                            ; preds = %if.end.i.i.i, %damon_new_region.exit.damon_add_region.exit_crit_edge
  %nr_regions.i134 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %nr_regions.i134 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_regions.i134, align 4
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %nr_regions.i134, align 4
  %32 = ptrtoint ptr %call7.i.i127 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call7.i.i127, align 8
  %end.i = getelementptr inbounds %struct.damon_addr_range, ptr %call7.i.i127, i32 0, i32 1
  %34 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %end.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i135 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3264, i32 noundef 32) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i135, null
  br i1 %tobool.not.i.i, label %damon_add_region.exit.damon_split_region_at.exit_crit_edge, label %if.end.i139

damon_add_region.exit.damon_split_region_at.exit_crit_edge: ; preds = %damon_add_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_split_region_at.exit

if.end.i139:                                      ; preds = %damon_add_region.exit
  %add.i = add i32 %33, 25
  %37 = ptrtoint ptr %call7.i.i.i135 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add.i, ptr %call7.i.i.i135, align 8
  %end3.i.i = getelementptr inbounds %struct.damon_addr_range, ptr %call7.i.i.i135, i32 0, i32 1
  %38 = ptrtoint ptr %end3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %35, ptr %end3.i.i, align 4
  %nr_accesses.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.i135, i32 0, i32 2
  %39 = ptrtoint ptr %nr_accesses.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %nr_accesses.i.i, align 4
  %list.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.i135, i32 0, i32 3
  %40 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %list.i.i, ptr %list.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.i135, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %age.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.i135, i32 0, i32 4
  %last_nr_accesses.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i.i135, i32 0, i32 5
  %42 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add.i, ptr %end.i, align 4
  %age.i136 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i127, i32 0, i32 4
  %43 = ptrtoint ptr %age.i136 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %age.i136, align 8
  %45 = ptrtoint ptr %age.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %age.i.i, align 8
  %last_nr_accesses.i137 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i127, i32 0, i32 5
  %46 = ptrtoint ptr %last_nr_accesses.i137 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %last_nr_accesses.i137, align 4
  %48 = ptrtoint ptr %last_nr_accesses.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %last_nr_accesses.i.i, align 4
  %49 = ptrtoint ptr %list.i131 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %list.i131, align 8
  %call.i.i.i138 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %list.i131, ptr noundef %50) #12
  br i1 %call.i.i.i138, label %if.end.i.i.i140, label %if.end.i139.damon_insert_region.exit.i_crit_edge

if.end.i139.damon_insert_region.exit.i_crit_edge: ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_insert_region.exit.i

if.end.i.i.i140:                                  ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr i8, ptr %50, i32 4
  %51 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %list.i.i, ptr %prev1.i.i.i, align 4
  %52 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %50, ptr %list.i.i, align 8
  %53 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %list.i131, ptr %prev.i.i.i, align 4
  %54 = ptrtoint ptr %list.i131 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %list.i.i, ptr %list.i131, align 8
  br label %damon_insert_region.exit.i

damon_insert_region.exit.i:                       ; preds = %if.end.i.i.i140, %if.end.i139.damon_insert_region.exit.i_crit_edge
  %55 = ptrtoint ptr %nr_regions.i134 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr_regions.i134, align 4
  %inc.i.i = add i32 %56, 1
  store i32 %inc.i.i, ptr %nr_regions.i134, align 4
  br label %damon_split_region_at.exit

damon_split_region_at.exit:                       ; preds = %damon_insert_region.exit.i, %damon_add_region.exit.damon_split_region_at.exit_crit_edge
  %57 = ptrtoint ptr %call7.i.i127 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %call7.i.i127, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #12
  %59 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %60 = call ptr @memset(ptr %59, i32 255, i32 24)
  %61 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %62 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %63 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 129, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %64 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.37, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %65 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %66 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %67 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %68 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.38, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %69 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.45, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = zext i32 %58 to i64
  %70 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %71 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.53, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %72 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 0, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp = icmp eq i32 %58, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #12
  %73 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %end.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion15) #12
  %75 = getelementptr inbounds i8, ptr %__assertion15, i32 32
  %76 = call ptr @memset(ptr %75, i32 255, i32 24)
  %77 = ptrtoint ptr %__assertion15 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %test, ptr %__assertion15, align 8
  %type18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 1
  %78 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %type18, align 4
  %line19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 2
  %79 = ptrtoint ptr %line19 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 130, ptr %line19, align 8
  %file20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 3
  %80 = ptrtoint ptr %file20 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.37, ptr %file20, align 4
  %message21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4
  %81 = ptrtoint ptr %message21 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %message21, align 8
  %va23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4, i32 1
  %82 = ptrtoint ptr %va23 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %va23, align 4
  %format24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 5
  %83 = ptrtoint ptr %format24 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @kunit_binary_assert_format, ptr %format24, align 8
  %operation25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 1
  %84 = ptrtoint ptr %operation25 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @.str.38, ptr %operation25, align 4
  %left_text26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 2
  %85 = ptrtoint ptr %left_text26 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.47, ptr %left_text26, align 8
  %left_value27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 3
  %conv28 = zext i32 %74 to i64
  %86 = ptrtoint ptr %left_value27 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %conv28, ptr %left_value27, align 8
  %right_text29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 4
  %87 = ptrtoint ptr %right_text29 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.54, ptr %right_text29, align 8
  %right_value30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 5
  %88 = ptrtoint ptr %right_value30 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 25, ptr %right_value30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %74)
  %cmp33 = icmp eq i32 %74, 25
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion15, i1 noundef zeroext %cmp33, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion15) #12
  %89 = ptrtoint ptr %list.i131 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %list.i131, align 8
  %add.ptr.i = getelementptr i8, ptr %90, i32 -16
  %91 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion46) #12
  %93 = getelementptr inbounds i8, ptr %__assertion46, i32 32
  %94 = call ptr @memset(ptr %93, i32 255, i32 24)
  %95 = ptrtoint ptr %__assertion46 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %test, ptr %__assertion46, align 8
  %type49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 1
  %96 = ptrtoint ptr %type49 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %type49, align 4
  %line50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 2
  %97 = ptrtoint ptr %line50 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 133, ptr %line50, align 8
  %file51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 3
  %98 = ptrtoint ptr %file51 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @.str.37, ptr %file51, align 4
  %message52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 4
  %99 = ptrtoint ptr %message52 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %message52, align 8
  %va54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 4, i32 1
  %100 = ptrtoint ptr %va54 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %va54, align 4
  %format55 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 5
  %101 = ptrtoint ptr %format55 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @kunit_binary_assert_format, ptr %format55, align 8
  %operation56 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion46, i32 0, i32 1
  %102 = ptrtoint ptr %operation56 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @.str.38, ptr %operation56, align 4
  %left_text57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion46, i32 0, i32 2
  %103 = ptrtoint ptr %left_text57 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @.str.45, ptr %left_text57, align 8
  %left_value58 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion46, i32 0, i32 3
  %conv59 = zext i32 %92 to i64
  %104 = ptrtoint ptr %left_value58 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %conv59, ptr %left_value58, align 8
  %right_text60 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion46, i32 0, i32 4
  %105 = ptrtoint ptr %right_text60 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @.str.54, ptr %right_text60, align 8
  %right_value61 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion46, i32 0, i32 5
  %106 = ptrtoint ptr %right_value61 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 25, ptr %right_value61, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %92)
  %cmp64 = icmp eq i32 %92, 25
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion46, i1 noundef zeroext %cmp64, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion46) #12
  %end73 = getelementptr i8, ptr %90, i32 -12
  %107 = ptrtoint ptr %end73 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %end73, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion76) #12
  %109 = getelementptr inbounds i8, ptr %__assertion76, i32 32
  %110 = call ptr @memset(ptr %109, i32 255, i32 24)
  %111 = ptrtoint ptr %__assertion76 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %test, ptr %__assertion76, align 8
  %type79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 1
  %112 = ptrtoint ptr %type79 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %type79, align 4
  %line80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 2
  %113 = ptrtoint ptr %line80 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 134, ptr %line80, align 8
  %file81 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 3
  %114 = ptrtoint ptr %file81 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @.str.37, ptr %file81, align 4
  %message82 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 4
  %115 = ptrtoint ptr %message82 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %message82, align 8
  %va84 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 4, i32 1
  %116 = ptrtoint ptr %va84 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %va84, align 4
  %format85 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 5
  %117 = ptrtoint ptr %format85 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @kunit_binary_assert_format, ptr %format85, align 8
  %operation86 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion76, i32 0, i32 1
  %118 = ptrtoint ptr %operation86 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @.str.38, ptr %operation86, align 4
  %left_text87 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion76, i32 0, i32 2
  %119 = ptrtoint ptr %left_text87 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @.str.47, ptr %left_text87, align 8
  %left_value88 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion76, i32 0, i32 3
  %conv89 = zext i32 %108 to i64
  %120 = ptrtoint ptr %left_value88 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %conv89, ptr %left_value88, align 8
  %right_text90 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion76, i32 0, i32 4
  %121 = ptrtoint ptr %right_text90 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @.str.55, ptr %right_text90, align 8
  %right_value91 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion76, i32 0, i32 5
  %122 = ptrtoint ptr %right_value91 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 100, ptr %right_value91, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %108)
  %cmp94 = icmp eq i32 %108, 100
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion76, i1 noundef zeroext %cmp94, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion76) #12
  %123 = ptrtoint ptr %regions_list.i132 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regions_list.i132, align 8
  %cmp.not19.i = icmp eq ptr %124, %regions_list.i132
  br i1 %cmp.not19.i, label %damon_split_region_at.exit.damon_free_target.exit_crit_edge, label %damon_split_region_at.exit.for.body.i_crit_edge

damon_split_region_at.exit.for.body.i_crit_edge:  ; preds = %damon_split_region_at.exit
  br label %for.body.i

damon_split_region_at.exit.damon_free_target.exit_crit_edge: ; preds = %damon_split_region_at.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_free_target.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %damon_split_region_at.exit.for.body.i_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %124, %damon_split_region_at.exit.for.body.i_crit_edge ]
  %r.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -16
  %125 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 4
  call void @kfree(ptr noundef %r.0.i) #12
  %cmp.not.i = icmp eq ptr %.pn.i, %regions_list.i132
  br i1 %cmp.not.i, label %for.body.i.damon_free_target.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.damon_free_target.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_free_target.exit

damon_free_target.exit:                           ; preds = %for.body.i.damon_free_target.exit_crit_edge, %damon_split_region_at.exit.damon_free_target.exit_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #12
  call void @damon_destroy_ctx(ptr noundef %call7.i.i.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @damon_test_merge_two(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion16 = alloca %struct.kunit_binary_assert, align 8
  %__assertion45 = alloca %struct.kunit_binary_assert, align 8
  %__assertion76 = alloca %struct.kunit_binary_ptr_assert, align 4
  %__assertion107 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 24) #15
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.damon_new_target.exit_crit_edge, label %if.end.i

entry.damon_new_target.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_new_target.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 42, ptr %call7.i.i, align 8
  %nr_regions.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %nr_regions.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %nr_regions.i, align 4
  %regions_list.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %regions_list.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %regions_list.i, ptr %regions_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %regions_list.i, ptr %prev.i.i, align 4
  br label %damon_new_target.exit

damon_new_target.exit:                            ; preds = %if.end.i, %entry.damon_new_target.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i166 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 32) #15
  %tobool.not.i167 = icmp eq ptr %call7.i.i166, null
  br i1 %tobool.not.i167, label %damon_new_target.exit.damon_new_region.exit_crit_edge, label %if.end.i169

damon_new_target.exit.damon_new_region.exit_crit_edge: ; preds = %damon_new_target.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_new_region.exit

if.end.i169:                                      ; preds = %damon_new_target.exit
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %call7.i.i166 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %call7.i.i166, align 8
  %end3.i = getelementptr inbounds %struct.damon_addr_range, ptr %call7.i.i166, i32 0, i32 1
  %7 = ptrtoint ptr %end3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 100, ptr %end3.i, align 4
  %nr_accesses.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i166, i32 0, i32 2
  %8 = ptrtoint ptr %nr_accesses.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %nr_accesses.i, align 4
  %list.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i166, i32 0, i32 3
  %9 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list.i, ptr %list.i, align 8
  %prev.i.i168 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i166, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i.i168 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list.i, ptr %prev.i.i168, align 4
  %age.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i166, i32 0, i32 4
  %11 = ptrtoint ptr %age.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %age.i, align 8
  %last_nr_accesses.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i166, i32 0, i32 5
  %12 = ptrtoint ptr %last_nr_accesses.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %last_nr_accesses.i, align 4
  br label %damon_new_region.exit

damon_new_region.exit:                            ; preds = %if.end.i169, %damon_new_target.exit.damon_new_region.exit_crit_edge
  %nr_accesses = getelementptr inbounds %struct.damon_region, ptr %call7.i.i166, i32 0, i32 2
  %13 = ptrtoint ptr %nr_accesses to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 10, ptr %nr_accesses, align 4
  %list.i170 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i166, i32 0, i32 3
  %regions_list.i171 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 2
  %prev.i.i172 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i.i172 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i172, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i170, ptr noundef %15, ptr noundef %regions_list.i171) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %damon_new_region.exit.damon_add_region.exit_crit_edge

damon_new_region.exit.damon_add_region.exit_crit_edge: ; preds = %damon_new_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_add_region.exit

if.end.i.i.i:                                     ; preds = %damon_new_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %prev.i.i172 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list.i170, ptr %prev.i.i172, align 4
  %17 = ptrtoint ptr %list.i170 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %regions_list.i171, ptr %list.i170, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i166, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list.i170, ptr %15, align 4
  br label %damon_add_region.exit

damon_add_region.exit:                            ; preds = %if.end.i.i.i, %damon_new_region.exit.damon_add_region.exit_crit_edge
  %nr_regions.i173 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %nr_regions.i173 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_regions.i173, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %nr_regions.i173, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i174 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 32) #15
  %tobool.not.i175 = icmp eq ptr %call7.i.i174, null
  br i1 %tobool.not.i175, label %damon_add_region.exit.damon_new_region.exit183_crit_edge, label %if.end.i182

damon_add_region.exit.damon_new_region.exit183_crit_edge: ; preds = %damon_add_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_new_region.exit183

if.end.i182:                                      ; preds = %damon_add_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %call7.i.i174 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 100, ptr %call7.i.i174, align 8
  %end3.i176 = getelementptr inbounds %struct.damon_addr_range, ptr %call7.i.i174, i32 0, i32 1
  %24 = ptrtoint ptr %end3.i176 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 300, ptr %end3.i176, align 4
  %nr_accesses.i177 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i174, i32 0, i32 2
  %25 = ptrtoint ptr %nr_accesses.i177 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %nr_accesses.i177, align 4
  %list.i178 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i174, i32 0, i32 3
  %26 = ptrtoint ptr %list.i178 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %list.i178, ptr %list.i178, align 8
  %prev.i.i179 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i174, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %prev.i.i179 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %list.i178, ptr %prev.i.i179, align 4
  %age.i180 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i174, i32 0, i32 4
  %28 = ptrtoint ptr %age.i180 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %age.i180, align 8
  %last_nr_accesses.i181 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i174, i32 0, i32 5
  %29 = ptrtoint ptr %last_nr_accesses.i181 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %last_nr_accesses.i181, align 4
  br label %damon_new_region.exit183

damon_new_region.exit183:                         ; preds = %if.end.i182, %damon_add_region.exit.damon_new_region.exit183_crit_edge
  %nr_accesses3 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i174, i32 0, i32 2
  %30 = ptrtoint ptr %nr_accesses3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 20, ptr %nr_accesses3, align 4
  %list.i184 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i174, i32 0, i32 3
  %31 = ptrtoint ptr %prev.i.i172 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i172, align 4
  %call.i.i.i187 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i184, ptr noundef %32, ptr noundef %regions_list.i171) #12
  br i1 %call.i.i.i187, label %if.end.i.i.i189, label %damon_new_region.exit183.damon_add_region.exit192_crit_edge

damon_new_region.exit183.damon_add_region.exit192_crit_edge: ; preds = %damon_new_region.exit183
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_add_region.exit192

if.end.i.i.i189:                                  ; preds = %damon_new_region.exit183
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %prev.i.i172 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %list.i184, ptr %prev.i.i172, align 4
  %34 = ptrtoint ptr %list.i184 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %regions_list.i171, ptr %list.i184, align 8
  %prev3.i.i.i188 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i174, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i188 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i188, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %list.i184, ptr %32, align 4
  br label %damon_add_region.exit192

damon_add_region.exit192:                         ; preds = %if.end.i.i.i189, %damon_new_region.exit183.damon_add_region.exit192_crit_edge
  %37 = ptrtoint ptr %nr_regions.i173 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr_regions.i173, align 4
  %inc.i191 = add i32 %38, 1
  store i32 %inc.i191, ptr %nr_regions.i173, align 4
  %end.i.i = getelementptr inbounds %struct.damon_addr_range, ptr %call7.i.i166, i32 0, i32 1
  %39 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %end.i.i, align 4
  %41 = ptrtoint ptr %call7.i.i166 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call7.i.i166, align 8
  %sub.i.i = sub i32 %40, %42
  %end.i30.i = getelementptr inbounds %struct.damon_addr_range, ptr %call7.i.i174, i32 0, i32 1
  %43 = ptrtoint ptr %end.i30.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %end.i30.i, align 4
  %45 = ptrtoint ptr %call7.i.i174 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call7.i.i174, align 8
  %sub.i31.i = sub i32 %44, %46
  %47 = ptrtoint ptr %nr_accesses to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr_accesses, align 4
  %mul.i = mul i32 %48, %sub.i.i
  %49 = ptrtoint ptr %nr_accesses3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nr_accesses3, align 4
  %mul3.i = mul i32 %50, %sub.i31.i
  %add.i = add i32 %mul3.i, %mul.i
  %add4.i = add i32 %sub.i31.i, %sub.i.i
  %div.i = udiv i32 %add.i, %add4.i
  store i32 %div.i, ptr %nr_accesses, align 4
  %age.i194 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i166, i32 0, i32 4
  %51 = ptrtoint ptr %age.i194 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %age.i194, align 8
  %mul6.i = mul i32 %52, %sub.i.i
  %age7.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i174, i32 0, i32 4
  %53 = ptrtoint ptr %age7.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %age7.i, align 8
  %mul8.i = mul i32 %54, %sub.i31.i
  %add9.i = add i32 %mul8.i, %mul6.i
  %div11.i = udiv i32 %add9.i, %add4.i
  store i32 %div11.i, ptr %age.i194, align 8
  store i32 %44, ptr %end.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i184) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %damon_add_region.exit192.damon_merge_two_regions.exit_crit_edge

damon_add_region.exit192.damon_merge_two_regions.exit_crit_edge: ; preds = %damon_add_region.exit192
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_merge_two_regions.exit

if.end.i.i.i.i.i:                                 ; preds = %damon_add_region.exit192
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i174, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %57 = ptrtoint ptr %list.i184 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %list.i184, align 8
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev1.i.i.i.i.i.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %58, ptr %56, align 4
  br label %damon_merge_two_regions.exit

damon_merge_two_regions.exit:                     ; preds = %if.end.i.i.i.i.i, %damon_add_region.exit192.damon_merge_two_regions.exit_crit_edge
  %61 = ptrtoint ptr %list.i184 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i184, align 8
  %prev.i.i.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i174, i32 0, i32 3, i32 1
  %62 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  %63 = ptrtoint ptr %nr_regions.i173 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr_regions.i173, align 4
  %dec.i.i.i = add i32 %64, -1
  store i32 %dec.i.i.i, ptr %nr_regions.i173, align 4
  tail call void @kfree(ptr noundef %call7.i.i174) #12
  %65 = ptrtoint ptr %call7.i.i166 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %call7.i.i166, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #12
  %67 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %68 = call ptr @memset(ptr %67, i32 255, i32 24)
  %69 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %70 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %71 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 155, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %72 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.37, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %73 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %74 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %75 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %76 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.38, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %77 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.45, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = zext i32 %66 to i64
  %78 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %79 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.53, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %80 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 0, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp = icmp eq i32 %66, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #12
  %81 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %end.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion16) #12
  %83 = getelementptr inbounds i8, ptr %__assertion16, i32 32
  %84 = call ptr @memset(ptr %83, i32 255, i32 24)
  %85 = ptrtoint ptr %__assertion16 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %test, ptr %__assertion16, align 8
  %type19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 1
  %86 = ptrtoint ptr %type19 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %type19, align 4
  %line20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 2
  %87 = ptrtoint ptr %line20 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 156, ptr %line20, align 8
  %file21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 3
  %88 = ptrtoint ptr %file21 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.37, ptr %file21, align 4
  %message22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 4
  %89 = ptrtoint ptr %message22 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %message22, align 8
  %va24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 4, i32 1
  %90 = ptrtoint ptr %va24 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %va24, align 4
  %format25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 5
  %91 = ptrtoint ptr %format25 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @kunit_binary_assert_format, ptr %format25, align 8
  %operation26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 1
  %92 = ptrtoint ptr %operation26 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @.str.38, ptr %operation26, align 4
  %left_text27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 2
  %93 = ptrtoint ptr %left_text27 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @.str.47, ptr %left_text27, align 8
  %left_value28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 3
  %conv29 = zext i32 %82 to i64
  %94 = ptrtoint ptr %left_value28 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %conv29, ptr %left_value28, align 8
  %right_text30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 4
  %95 = ptrtoint ptr %right_text30 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @.str.56, ptr %right_text30, align 8
  %right_value31 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 5
  %96 = ptrtoint ptr %right_value31 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 300, ptr %right_value31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %82)
  %cmp34 = icmp eq i32 %82, 300
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion16, i1 noundef zeroext %cmp34, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion16) #12
  %97 = ptrtoint ptr %nr_accesses to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nr_accesses, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion45) #12
  %99 = getelementptr inbounds i8, ptr %__assertion45, i32 32
  %100 = call ptr @memset(ptr %99, i32 255, i32 24)
  %101 = ptrtoint ptr %__assertion45 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %test, ptr %__assertion45, align 8
  %type48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 1
  %102 = ptrtoint ptr %type48 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %type48, align 4
  %line49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 2
  %103 = ptrtoint ptr %line49 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 157, ptr %line49, align 8
  %file50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 3
  %104 = ptrtoint ptr %file50 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @.str.37, ptr %file50, align 4
  %message51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4
  %105 = ptrtoint ptr %message51 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %message51, align 8
  %va53 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4, i32 1
  %106 = ptrtoint ptr %va53 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %va53, align 4
  %format54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 5
  %107 = ptrtoint ptr %format54 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @kunit_binary_assert_format, ptr %format54, align 8
  %operation55 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion45, i32 0, i32 1
  %108 = ptrtoint ptr %operation55 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.38, ptr %operation55, align 4
  %left_text56 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion45, i32 0, i32 2
  %109 = ptrtoint ptr %left_text56 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @.str.48, ptr %left_text56, align 8
  %left_value57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion45, i32 0, i32 3
  %conv58 = zext i32 %98 to i64
  %110 = ptrtoint ptr %left_value57 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %conv58, ptr %left_value57, align 8
  %right_text59 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion45, i32 0, i32 4
  %111 = ptrtoint ptr %right_text59 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @.str.57, ptr %right_text59, align 8
  %right_value60 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion45, i32 0, i32 5
  %112 = ptrtoint ptr %right_value60 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 16, ptr %right_value60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %98)
  %cmp63 = icmp eq i32 %98, 16
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion45, i1 noundef zeroext %cmp63, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion45) #12
  %113 = ptrtoint ptr %regions_list.i171 to i32
  call void @__asan_load4_noabort(i32 %113)
  %.pn196 = load ptr, ptr %regions_list.i171, align 8
  %cmp70.not197 = icmp eq ptr %.pn196, %regions_list.i171
  br i1 %cmp70.not197, label %damon_merge_two_regions.exit.do.body103_crit_edge, label %do.body72.lr.ph

damon_merge_two_regions.exit.do.body103_crit_edge: ; preds = %damon_merge_two_regions.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body103

do.body72.lr.ph:                                  ; preds = %damon_merge_two_regions.exit
  %type79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 1
  %line80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 2
  %file81 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 3
  %message82 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 4
  %va84 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 4, i32 1
  %format85 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 5
  %operation86 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion76, i32 0, i32 1
  %left_text87 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion76, i32 0, i32 2
  %left_value88 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion76, i32 0, i32 3
  %right_text89 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion76, i32 0, i32 4
  %right_value90 = getelementptr inbounds %struct.kunit_binary_ptr_assert, ptr %__assertion76, i32 0, i32 5
  br label %do.body72

do.body72:                                        ; preds = %do.body72.do.body72_crit_edge, %do.body72.lr.ph
  %.pn199 = phi ptr [ %.pn196, %do.body72.lr.ph ], [ %.pn, %do.body72.do.body72_crit_edge ]
  %i.0198 = phi i32 [ 0, %do.body72.lr.ph ], [ %inc, %do.body72.do.body72_crit_edge ]
  %r3.0 = getelementptr i8, ptr %.pn199, i32 -16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion76) #12
  %114 = ptrtoint ptr %__assertion76 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %test, ptr %__assertion76, align 4
  %115 = ptrtoint ptr %type79 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %type79, align 4
  %116 = ptrtoint ptr %line80 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 161, ptr %line80, align 4
  %117 = ptrtoint ptr %file81 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @.str.37, ptr %file81, align 4
  %118 = ptrtoint ptr %message82 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %message82, align 4
  %119 = ptrtoint ptr %va84 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %va84, align 4
  %120 = ptrtoint ptr %format85 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @kunit_binary_ptr_assert_format, ptr %format85, align 4
  %121 = ptrtoint ptr %operation86 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @.str.38, ptr %operation86, align 4
  %122 = ptrtoint ptr %left_text87 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @.str.58, ptr %left_text87, align 4
  %123 = ptrtoint ptr %left_value88 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call7.i.i166, ptr %left_value88, align 4
  %124 = ptrtoint ptr %right_text89 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @.str.59, ptr %right_text89, align 4
  %125 = ptrtoint ptr %right_value90 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %r3.0, ptr %right_value90, align 4
  %cmp92 = icmp eq ptr %call7.i.i166, %r3.0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion76, i1 noundef zeroext %cmp92, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion76) #12
  %inc = add i32 %i.0198, 1
  %126 = ptrtoint ptr %.pn199 to i32
  call void @__asan_load4_noabort(i32 %126)
  %.pn = load ptr, ptr %.pn199, align 4
  %cmp70.not = icmp eq ptr %.pn, %regions_list.i171
  br i1 %cmp70.not, label %do.body72.do.body103_crit_edge, label %do.body72.do.body72_crit_edge

do.body72.do.body72_crit_edge:                    ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body72

do.body72.do.body103_crit_edge:                   ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body103

do.body103:                                       ; preds = %do.body72.do.body103_crit_edge, %damon_merge_two_regions.exit.do.body103_crit_edge
  %i.0.lcssa = phi i32 [ 0, %damon_merge_two_regions.exit.do.body103_crit_edge ], [ %inc, %do.body72.do.body103_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion107) #12
  %127 = getelementptr inbounds i8, ptr %__assertion107, i32 32
  %128 = call ptr @memset(ptr %127, i32 255, i32 24)
  %129 = ptrtoint ptr %__assertion107 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %test, ptr %__assertion107, align 8
  %type110 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107, i32 0, i32 1
  %130 = ptrtoint ptr %type110 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1, ptr %type110, align 4
  %line111 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107, i32 0, i32 2
  %131 = ptrtoint ptr %line111 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 164, ptr %line111, align 8
  %file112 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107, i32 0, i32 3
  %132 = ptrtoint ptr %file112 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @.str.37, ptr %file112, align 4
  %message113 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107, i32 0, i32 4
  %133 = ptrtoint ptr %message113 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %message113, align 8
  %va115 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107, i32 0, i32 4, i32 1
  %134 = ptrtoint ptr %va115 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %va115, align 4
  %format116 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107, i32 0, i32 5
  %135 = ptrtoint ptr %format116 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @kunit_binary_assert_format, ptr %format116, align 8
  %operation117 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion107, i32 0, i32 1
  %136 = ptrtoint ptr %operation117 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @.str.38, ptr %operation117, align 4
  %left_text118 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion107, i32 0, i32 2
  %137 = ptrtoint ptr %left_text118 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @.str.60, ptr %left_text118, align 8
  %left_value119 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion107, i32 0, i32 3
  %conv120 = sext i32 %i.0.lcssa to i64
  %138 = ptrtoint ptr %left_value119 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %conv120, ptr %left_value119, align 8
  %right_text121 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion107, i32 0, i32 4
  %139 = ptrtoint ptr %right_text121 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @.str.61, ptr %right_text121, align 8
  %right_value122 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion107, i32 0, i32 5
  %140 = ptrtoint ptr %right_value122 to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 1, ptr %right_value122, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0.lcssa)
  %cmp125 = icmp eq i32 %i.0.lcssa, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion107, i1 noundef zeroext %cmp125, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion107) #12
  %141 = ptrtoint ptr %regions_list.i171 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regions_list.i171, align 8
  %cmp.not19.i = icmp eq ptr %142, %regions_list.i171
  br i1 %cmp.not19.i, label %do.body103.damon_free_target.exit_crit_edge, label %do.body103.for.body.i_crit_edge

do.body103.for.body.i_crit_edge:                  ; preds = %do.body103
  br label %for.body.i

do.body103.damon_free_target.exit_crit_edge:      ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_free_target.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body103.for.body.i_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %142, %do.body103.for.body.i_crit_edge ]
  %r.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -16
  %143 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 4
  call void @kfree(ptr noundef %r.0.i) #12
  %cmp.not.i = icmp eq ptr %.pn.i, %regions_list.i171
  br i1 %cmp.not.i, label %for.body.i.damon_free_target.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.damon_free_target.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_free_target.exit

damon_free_target.exit:                           ; preds = %for.body.i.damon_free_target.exit_crit_edge, %do.body103.damon_free_target.exit_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @damon_test_merge_regions_of(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion23 = alloca %struct.kunit_binary_assert, align 8
  %__assertion53 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 24) #15
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.damon_new_target.exit_crit_edge, label %if.end.i

entry.damon_new_target.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_new_target.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 42, ptr %call7.i.i, align 8
  %nr_regions.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %nr_regions.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %nr_regions.i, align 4
  %regions_list.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %regions_list.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %regions_list.i, ptr %regions_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %regions_list.i, ptr %prev.i.i, align 4
  br label %damon_new_target.exit

damon_new_target.exit:                            ; preds = %if.end.i, %entry.damon_new_target.exit_crit_edge
  %regions_list.i112 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 2
  %prev.i.i113 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 2, i32 1
  %nr_regions.i114 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %damon_add_region.exit.for.body_crit_edge, %damon_new_target.exit
  %i.0123 = phi i32 [ 0, %damon_new_target.exit ], [ %inc, %damon_add_region.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i32], ptr @__const.damon_test_merge_regions_of.sa, i32 0, i32 %i.0123
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [8 x i32], ptr @__const.damon_test_merge_regions_of.ea, i32 0, i32 %i.0123
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i107 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 32) #15
  %tobool.not.i108 = icmp eq ptr %call7.i.i107, null
  br i1 %tobool.not.i108, label %for.body.damon_new_region.exit_crit_edge, label %if.end.i110

for.body.damon_new_region.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_new_region.exit

if.end.i110:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %call7.i.i107 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %6, ptr %call7.i.i107, align 8
  %end3.i = getelementptr inbounds %struct.damon_addr_range, ptr %call7.i.i107, i32 0, i32 1
  %11 = ptrtoint ptr %end3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %end3.i, align 4
  %list.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i107, i32 0, i32 3
  %12 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list.i, ptr %list.i, align 8
  %prev.i.i109 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i107, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i.i109 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list.i, ptr %prev.i.i109, align 4
  %age.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i107, i32 0, i32 4
  %14 = ptrtoint ptr %age.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %age.i, align 8
  %last_nr_accesses.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i107, i32 0, i32 5
  %15 = ptrtoint ptr %last_nr_accesses.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %last_nr_accesses.i, align 4
  br label %damon_new_region.exit

damon_new_region.exit:                            ; preds = %if.end.i110, %for.body.damon_new_region.exit_crit_edge
  %arrayidx3 = getelementptr [8 x i32], ptr @__const.damon_test_merge_regions_of.nrs, i32 0, i32 %i.0123
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx3, align 4
  %nr_accesses = getelementptr inbounds %struct.damon_region, ptr %call7.i.i107, i32 0, i32 2
  %18 = ptrtoint ptr %nr_accesses to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %nr_accesses, align 4
  %list.i111 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i107, i32 0, i32 3
  %19 = ptrtoint ptr %prev.i.i113 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i113, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i111, ptr noundef %20, ptr noundef %regions_list.i112) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %damon_new_region.exit.damon_add_region.exit_crit_edge

damon_new_region.exit.damon_add_region.exit_crit_edge: ; preds = %damon_new_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_add_region.exit

if.end.i.i.i:                                     ; preds = %damon_new_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %prev.i.i113 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list.i111, ptr %prev.i.i113, align 4
  %22 = ptrtoint ptr %list.i111 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %regions_list.i112, ptr %list.i111, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i107, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %list.i111, ptr %20, align 4
  br label %damon_add_region.exit

damon_add_region.exit:                            ; preds = %if.end.i.i.i, %damon_new_region.exit.damon_add_region.exit_crit_edge
  %25 = ptrtoint ptr %nr_regions.i114 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_regions.i114, align 4
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr %nr_regions.i114, align 4
  %inc = add nuw nsw i32 %i.0123, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %damon_add_region.exit.for.body_crit_edge

damon_add_region.exit.for.body_crit_edge:         ; preds = %damon_add_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %damon_add_region.exit
  tail call fastcc void @damon_merge_regions_of(ptr noundef %call7.i.i, i32 noundef 9, i32 noundef 9999)
  %27 = ptrtoint ptr %nr_regions.i114 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_regions.i114, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #12
  %29 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %30 = call ptr @memset(ptr %29, i32 255, i32 24)
  %31 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %32 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %33 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 203, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %34 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.37, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %35 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %37 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %38 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.38, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %39 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.49, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = zext i32 %28 to i64
  %40 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %41 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.62, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %42 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 5, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %28)
  %cmp9 = icmp eq i32 %28, 5
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp9, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #12
  %type26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion23, i32 0, i32 1
  %line27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion23, i32 0, i32 2
  %file28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion23, i32 0, i32 3
  %message29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion23, i32 0, i32 4
  %va31 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion23, i32 0, i32 4, i32 1
  %format32 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion23, i32 0, i32 5
  %operation33 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion23, i32 0, i32 1
  %left_text34 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion23, i32 0, i32 2
  %left_value35 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion23, i32 0, i32 3
  %right_text37 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion23, i32 0, i32 4
  %right_value38 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion23, i32 0, i32 5
  %type56 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion53, i32 0, i32 1
  %line57 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion53, i32 0, i32 2
  %file58 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion53, i32 0, i32 3
  %message59 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion53, i32 0, i32 4
  %va61 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion53, i32 0, i32 4, i32 1
  %format62 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion53, i32 0, i32 5
  %operation63 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion53, i32 0, i32 1
  %left_text64 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion53, i32 0, i32 2
  %left_value65 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion53, i32 0, i32 3
  %right_text67 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion53, i32 0, i32 4
  %right_value68 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion53, i32 0, i32 5
  %43 = getelementptr inbounds i8, ptr %__assertion23, i32 32
  %44 = getelementptr inbounds i8, ptr %__assertion53, i32 32
  br label %for.body16

for.body16:                                       ; preds = %__nth_region_of.exit.for.body16_crit_edge, %for.end
  %i.1124 = phi i32 [ 0, %for.end ], [ %inc78, %__nth_region_of.exit.for.body16_crit_edge ]
  %45 = ptrtoint ptr %regions_list.i112 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn14.i = load ptr, ptr %regions_list.i112, align 8
  %cmp.not15.i = icmp eq ptr %.pn14.i, %regions_list.i112
  br i1 %cmp.not15.i, label %for.body16.__nth_region_of.exit_crit_edge, label %for.body.i

for.body16.__nth_region_of.exit_crit_edge:        ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #14
  br label %__nth_region_of.exit

for.cond.i:                                       ; preds = %for.body.i
  %46 = ptrtoint ptr %.pn14.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn.i = load ptr, ptr %.pn14.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %regions_list.i112
  br i1 %cmp.not.i, label %for.cond.i.__nth_region_of.exit_crit_edge, label %for.body.i.1

for.cond.i.__nth_region_of.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__nth_region_of.exit

for.body.i.1:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1124)
  %cmp2.i.1 = icmp eq i32 %i.1124, 1
  br i1 %cmp2.i.1, label %for.body.i.1.cleanup.split.loop.exit12.i_crit_edge, label %for.cond.i.1

for.body.i.1.cleanup.split.loop.exit12.i_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.split.loop.exit12.i

for.cond.i.1:                                     ; preds = %for.body.i.1
  %47 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn.i.1 = load ptr, ptr %.pn.i, align 4
  %cmp.not.i.1 = icmp eq ptr %.pn.i.1, %regions_list.i112
  br i1 %cmp.not.i.1, label %for.cond.i.1.__nth_region_of.exit_crit_edge, label %for.body.i.2

for.cond.i.1.__nth_region_of.exit_crit_edge:      ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %__nth_region_of.exit

for.body.i.2:                                     ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.1124)
  %cmp2.i.2 = icmp eq i32 %i.1124, 2
  br i1 %cmp2.i.2, label %for.body.i.2.cleanup.split.loop.exit12.i_crit_edge, label %for.cond.i.2

for.body.i.2.cleanup.split.loop.exit12.i_crit_edge: ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.split.loop.exit12.i

for.cond.i.2:                                     ; preds = %for.body.i.2
  %48 = ptrtoint ptr %.pn.i.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn.i.2 = load ptr, ptr %.pn.i.1, align 4
  %cmp.not.i.2 = icmp eq ptr %.pn.i.2, %regions_list.i112
  br i1 %cmp.not.i.2, label %for.cond.i.2.__nth_region_of.exit_crit_edge, label %for.body.i.3

for.cond.i.2.__nth_region_of.exit_crit_edge:      ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %__nth_region_of.exit

for.body.i.3:                                     ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.1124)
  %cmp2.i.3 = icmp eq i32 %i.1124, 3
  br i1 %cmp2.i.3, label %for.body.i.3.cleanup.split.loop.exit12.i_crit_edge, label %for.cond.i.3

for.body.i.3.cleanup.split.loop.exit12.i_crit_edge: ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.split.loop.exit12.i

for.cond.i.3:                                     ; preds = %for.body.i.3
  %49 = ptrtoint ptr %.pn.i.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn.i.3 = load ptr, ptr %.pn.i.2, align 4
  %cmp.not.i.3 = icmp ne ptr %.pn.i.3, %regions_list.i112
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.1124)
  %cmp2.i.4 = icmp eq i32 %i.1124, 4
  %or.cond = select i1 %cmp.not.i.3, i1 %cmp2.i.4, i1 false
  br i1 %or.cond, label %for.cond.i.3.cleanup.split.loop.exit12.i_crit_edge, label %for.cond.i.3.__nth_region_of.exit_crit_edge

for.cond.i.3.__nth_region_of.exit_crit_edge:      ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %__nth_region_of.exit

for.cond.i.3.cleanup.split.loop.exit12.i_crit_edge: ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.split.loop.exit12.i

for.body.i:                                       ; preds = %for.body16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1124)
  %cmp2.i = icmp eq i32 %i.1124, 0
  br i1 %cmp2.i, label %for.body.i.cleanup.split.loop.exit12.i_crit_edge, label %for.cond.i

for.body.i.cleanup.split.loop.exit12.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.split.loop.exit12.i

cleanup.split.loop.exit12.i:                      ; preds = %for.body.i.cleanup.split.loop.exit12.i_crit_edge, %for.cond.i.3.cleanup.split.loop.exit12.i_crit_edge, %for.body.i.3.cleanup.split.loop.exit12.i_crit_edge, %for.body.i.2.cleanup.split.loop.exit12.i_crit_edge, %for.body.i.1.cleanup.split.loop.exit12.i_crit_edge
  %.pn17.i.lcssa = phi ptr [ %.pn14.i, %for.body.i.cleanup.split.loop.exit12.i_crit_edge ], [ %.pn.i, %for.body.i.1.cleanup.split.loop.exit12.i_crit_edge ], [ %.pn.i.1, %for.body.i.2.cleanup.split.loop.exit12.i_crit_edge ], [ %.pn.i.2, %for.body.i.3.cleanup.split.loop.exit12.i_crit_edge ], [ %.pn.i.3, %for.cond.i.3.cleanup.split.loop.exit12.i_crit_edge ]
  %r.0.le.i = getelementptr i8, ptr %.pn17.i.lcssa, i32 -16
  br label %__nth_region_of.exit

__nth_region_of.exit:                             ; preds = %cleanup.split.loop.exit12.i, %for.cond.i.3.__nth_region_of.exit_crit_edge, %for.cond.i.2.__nth_region_of.exit_crit_edge, %for.cond.i.1.__nth_region_of.exit_crit_edge, %for.cond.i.__nth_region_of.exit_crit_edge, %for.body16.__nth_region_of.exit_crit_edge
  %retval.0.i = phi ptr [ %r.0.le.i, %cleanup.split.loop.exit12.i ], [ null, %for.body16.__nth_region_of.exit_crit_edge ], [ null, %for.cond.i.3.__nth_region_of.exit_crit_edge ], [ null, %for.cond.i.2.__nth_region_of.exit_crit_edge ], [ null, %for.cond.i.1.__nth_region_of.exit_crit_edge ], [ null, %for.cond.i.__nth_region_of.exit_crit_edge ]
  %50 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %retval.0.i, align 4
  %arrayidx21 = getelementptr [5 x i32], ptr @__const.damon_test_merge_regions_of.saddrs, i32 0, i32 %i.1124
  %52 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx21, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion23) #12
  %54 = call ptr @memset(ptr %43, i32 255, i32 24)
  %55 = ptrtoint ptr %__assertion23 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %test, ptr %__assertion23, align 8
  %56 = ptrtoint ptr %type26 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %type26, align 4
  %57 = ptrtoint ptr %line27 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 206, ptr %line27, align 8
  %58 = ptrtoint ptr %file28 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.37, ptr %file28, align 4
  %59 = ptrtoint ptr %message29 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %message29, align 8
  %60 = ptrtoint ptr %va31 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %va31, align 4
  %61 = ptrtoint ptr %format32 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @kunit_binary_assert_format, ptr %format32, align 8
  %62 = ptrtoint ptr %operation33 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.38, ptr %operation33, align 4
  %63 = ptrtoint ptr %left_text34 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.45, ptr %left_text34, align 8
  %conv36 = zext i32 %51 to i64
  %64 = ptrtoint ptr %left_value35 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv36, ptr %left_value35, align 8
  %65 = ptrtoint ptr %right_text37 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.63, ptr %right_text37, align 8
  %conv39 = zext i32 %53 to i64
  %66 = ptrtoint ptr %right_value38 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv39, ptr %right_value38, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp41 = icmp eq i32 %51, %53
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion23, i1 noundef zeroext %cmp41, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion23) #12
  %end = getelementptr inbounds %struct.damon_addr_range, ptr %retval.0.i, i32 0, i32 1
  %67 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %end, align 4
  %arrayidx51 = getelementptr [5 x i32], ptr @__const.damon_test_merge_regions_of.eaddrs, i32 0, i32 %i.1124
  %69 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx51, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion53) #12
  %71 = call ptr @memset(ptr %44, i32 255, i32 24)
  %72 = ptrtoint ptr %__assertion53 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %test, ptr %__assertion53, align 8
  %73 = ptrtoint ptr %type56 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %type56, align 4
  %74 = ptrtoint ptr %line57 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 207, ptr %line57, align 8
  %75 = ptrtoint ptr %file58 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.37, ptr %file58, align 4
  %76 = ptrtoint ptr %message59 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %message59, align 8
  %77 = ptrtoint ptr %va61 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %va61, align 4
  %78 = ptrtoint ptr %format62 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @kunit_binary_assert_format, ptr %format62, align 8
  %79 = ptrtoint ptr %operation63 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.38, ptr %operation63, align 4
  %80 = ptrtoint ptr %left_text64 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.47, ptr %left_text64, align 8
  %conv66 = zext i32 %68 to i64
  %81 = ptrtoint ptr %left_value65 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %conv66, ptr %left_value65, align 8
  %82 = ptrtoint ptr %right_text67 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.64, ptr %right_text67, align 8
  %conv69 = zext i32 %70 to i64
  %83 = ptrtoint ptr %right_value68 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %conv69, ptr %right_value68, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp71 = icmp eq i32 %68, %70
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion53, i1 noundef zeroext %cmp71, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion53) #12
  %inc78 = add nuw nsw i32 %i.1124, 1
  %exitcond127.not = icmp eq i32 %inc78, 5
  br i1 %exitcond127.not, label %for.end79, label %__nth_region_of.exit.for.body16_crit_edge

__nth_region_of.exit.for.body16_crit_edge:        ; preds = %__nth_region_of.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16

for.end79:                                        ; preds = %__nth_region_of.exit
  %84 = ptrtoint ptr %regions_list.i112 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regions_list.i112, align 8
  %cmp.not19.i = icmp eq ptr %85, %regions_list.i112
  br i1 %cmp.not19.i, label %for.end79.damon_free_target.exit_crit_edge, label %for.end79.for.body.i121_crit_edge

for.end79.for.body.i121_crit_edge:                ; preds = %for.end79
  br label %for.body.i121

for.end79.damon_free_target.exit_crit_edge:       ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_free_target.exit

for.body.i121:                                    ; preds = %for.body.i121.for.body.i121_crit_edge, %for.end79.for.body.i121_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i119, %for.body.i121.for.body.i121_crit_edge ], [ %85, %for.end79.for.body.i121_crit_edge ]
  %r.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -16
  %86 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pn.i119 = load ptr, ptr %.pn.in20.i, align 4
  call void @kfree(ptr noundef %r.0.i) #12
  %cmp.not.i120 = icmp eq ptr %.pn.i119, %regions_list.i112
  br i1 %cmp.not.i120, label %for.body.i121.damon_free_target.exit_crit_edge, label %for.body.i121.for.body.i121_crit_edge

for.body.i121.for.body.i121_crit_edge:            ; preds = %for.body.i121
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i121

for.body.i121.damon_free_target.exit_crit_edge:   ; preds = %for.body.i121
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_free_target.exit

damon_free_target.exit:                           ; preds = %for.body.i121.damon_free_target.exit_crit_edge, %for.end79.damon_free_target.exit_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @damon_test_split_regions_of(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion18 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 224) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.damon_new_ctx.exit_crit_edge, label %if.end.i

entry.damon_new_ctx.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_new_ctx.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 5000, ptr %call7.i.i.i, align 8
  %aggr_interval.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %aggr_interval.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 100000, ptr %aggr_interval.i, align 4
  %primitive_update_interval.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %primitive_update_interval.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 60000000, ptr %primitive_update_interval.i, align 8
  %last_aggregation.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @ktime_get_coarse_ts64(ptr noundef %last_aggregation.i) #12
  %last_primitive_update.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 4
  %4 = call ptr @memcpy(ptr %last_primitive_update.i, ptr %last_aggregation.i, i32 16)
  %kdamond_lock.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %kdamond_lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @damon_new_ctx.__key) #12
  %min_nr_regions.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 9
  %5 = ptrtoint ptr %min_nr_regions.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %min_nr_regions.i, align 8
  %max_nr_regions.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %max_nr_regions.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1000, ptr %max_nr_regions.i, align 4
  %adaptive_targets.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 11
  %7 = ptrtoint ptr %adaptive_targets.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %adaptive_targets.i, ptr %adaptive_targets.i, align 8
  %prev.i.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %adaptive_targets.i, ptr %prev.i.i, align 4
  %schemes.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 12
  %9 = ptrtoint ptr %schemes.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %schemes.i, ptr %schemes.i, align 8
  %prev.i14.i = getelementptr inbounds %struct.damon_ctx, ptr %call7.i.i.i, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %prev.i14.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %schemes.i, ptr %prev.i14.i, align 4
  br label %damon_new_ctx.exit

damon_new_ctx.exit:                               ; preds = %if.end.i, %entry.damon_new_ctx.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 24) #15
  %tobool.not.i59 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i59, label %damon_new_ctx.exit.damon_new_target.exit_crit_edge, label %if.end.i61

damon_new_ctx.exit.damon_new_target.exit_crit_edge: ; preds = %damon_new_ctx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_new_target.exit

if.end.i61:                                       ; preds = %damon_new_ctx.exit
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 42, ptr %call7.i.i, align 8
  %nr_regions.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %nr_regions.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %nr_regions.i, align 4
  %regions_list.i = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %regions_list.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %regions_list.i, ptr %regions_list.i, align 8
  %prev.i.i60 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %prev.i.i60 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %regions_list.i, ptr %prev.i.i60, align 4
  br label %damon_new_target.exit

damon_new_target.exit:                            ; preds = %if.end.i61, %damon_new_ctx.exit.damon_new_target.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i62 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 32) #15
  %tobool.not.i63 = icmp eq ptr %call7.i.i62, null
  br i1 %tobool.not.i63, label %damon_new_target.exit.damon_new_region.exit_crit_edge, label %if.end.i65

damon_new_target.exit.damon_new_region.exit_crit_edge: ; preds = %damon_new_target.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_new_region.exit

if.end.i65:                                       ; preds = %damon_new_target.exit
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %call7.i.i62 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %call7.i.i62, align 8
  %end3.i = getelementptr inbounds %struct.damon_addr_range, ptr %call7.i.i62, i32 0, i32 1
  %18 = ptrtoint ptr %end3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 22, ptr %end3.i, align 4
  %nr_accesses.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i62, i32 0, i32 2
  %19 = ptrtoint ptr %nr_accesses.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %nr_accesses.i, align 4
  %list.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i62, i32 0, i32 3
  %20 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list.i, ptr %list.i, align 8
  %prev.i.i64 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i62, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %prev.i.i64 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list.i, ptr %prev.i.i64, align 4
  %age.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i62, i32 0, i32 4
  %22 = ptrtoint ptr %age.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %age.i, align 8
  %last_nr_accesses.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i62, i32 0, i32 5
  %23 = ptrtoint ptr %last_nr_accesses.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %last_nr_accesses.i, align 4
  br label %damon_new_region.exit

damon_new_region.exit:                            ; preds = %if.end.i65, %damon_new_target.exit.damon_new_region.exit_crit_edge
  %list.i66 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i62, i32 0, i32 3
  %regions_list.i67 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 2
  %prev.i.i68 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %prev.i.i68 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i68, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i66, ptr noundef %25, ptr noundef %regions_list.i67) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %damon_new_region.exit.damon_add_region.exit_crit_edge

damon_new_region.exit.damon_add_region.exit_crit_edge: ; preds = %damon_new_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_add_region.exit

if.end.i.i.i:                                     ; preds = %damon_new_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %prev.i.i68 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list.i66, ptr %prev.i.i68, align 4
  %27 = ptrtoint ptr %list.i66 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %regions_list.i67, ptr %list.i66, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.damon_region, ptr %call7.i.i62, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %list.i66, ptr %25, align 4
  br label %damon_add_region.exit

damon_add_region.exit:                            ; preds = %if.end.i.i.i, %damon_new_region.exit.damon_add_region.exit_crit_edge
  %nr_regions.i69 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %nr_regions.i69 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_regions.i69, align 4
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %nr_regions.i69, align 4
  tail call fastcc void @damon_split_regions_of(ptr noundef %call7.i.i, i32 noundef 2)
  %32 = ptrtoint ptr %nr_regions.i69 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_regions.i69, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #12
  %34 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %35 = call ptr @memset(ptr %34, i32 255, i32 24)
  %36 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %37 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %38 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 222, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %39 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.37, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %40 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %42 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %43 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.65, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %44 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.49, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = zext i32 %33 to i64
  %45 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %46 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.66, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %47 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 2, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp = icmp ult i32 %33, 3
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #12
  %48 = ptrtoint ptr %regions_list.i67 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regions_list.i67, align 8
  %cmp.not19.i = icmp eq ptr %49, %regions_list.i67
  br i1 %cmp.not19.i, label %damon_add_region.exit.damon_free_target.exit_crit_edge, label %damon_add_region.exit.for.body.i_crit_edge

damon_add_region.exit.for.body.i_crit_edge:       ; preds = %damon_add_region.exit
  br label %for.body.i

damon_add_region.exit.damon_free_target.exit_crit_edge: ; preds = %damon_add_region.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_free_target.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %damon_add_region.exit.for.body.i_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %49, %damon_add_region.exit.for.body.i_crit_edge ]
  %r.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -16
  %50 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 4
  call void @kfree(ptr noundef %r.0.i) #12
  %cmp.not.i = icmp eq ptr %.pn.i, %regions_list.i67
  br i1 %cmp.not.i, label %for.body.i.damon_free_target.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.damon_free_target.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_free_target.exit

damon_free_target.exit:                           ; preds = %for.body.i.damon_free_target.exit_crit_edge, %damon_add_region.exit.damon_free_target.exit_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i72 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3264, i32 noundef 24) #15
  %tobool.not.i73 = icmp eq ptr %call7.i.i72, null
  br i1 %tobool.not.i73, label %damon_free_target.exit.damon_new_target.exit78_crit_edge, label %if.end.i77

damon_free_target.exit.damon_new_target.exit78_crit_edge: ; preds = %damon_free_target.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_new_target.exit78

if.end.i77:                                       ; preds = %damon_free_target.exit
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %call7.i.i72 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 42, ptr %call7.i.i72, align 8
  %nr_regions.i74 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i72, i32 0, i32 1
  %53 = ptrtoint ptr %nr_regions.i74 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %nr_regions.i74, align 4
  %regions_list.i75 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i72, i32 0, i32 2
  %54 = ptrtoint ptr %regions_list.i75 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %regions_list.i75, ptr %regions_list.i75, align 8
  %prev.i.i76 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i72, i32 0, i32 2, i32 1
  %55 = ptrtoint ptr %prev.i.i76 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %regions_list.i75, ptr %prev.i.i76, align 4
  br label %damon_new_target.exit78

damon_new_target.exit78:                          ; preds = %if.end.i77, %damon_free_target.exit.damon_new_target.exit78_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i79 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3264, i32 noundef 32) #15
  %tobool.not.i80 = icmp eq ptr %call7.i.i79, null
  br i1 %tobool.not.i80, label %damon_new_target.exit78.damon_new_region.exit88_crit_edge, label %if.end.i87

damon_new_target.exit78.damon_new_region.exit88_crit_edge: ; preds = %damon_new_target.exit78
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_new_region.exit88

if.end.i87:                                       ; preds = %damon_new_target.exit78
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %call7.i.i79 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %call7.i.i79, align 8
  %end3.i81 = getelementptr inbounds %struct.damon_addr_range, ptr %call7.i.i79, i32 0, i32 1
  %58 = ptrtoint ptr %end3.i81 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 220, ptr %end3.i81, align 4
  %nr_accesses.i82 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i79, i32 0, i32 2
  %59 = ptrtoint ptr %nr_accesses.i82 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %nr_accesses.i82, align 4
  %list.i83 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i79, i32 0, i32 3
  %60 = ptrtoint ptr %list.i83 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %list.i83, ptr %list.i83, align 8
  %prev.i.i84 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i79, i32 0, i32 3, i32 1
  %61 = ptrtoint ptr %prev.i.i84 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %list.i83, ptr %prev.i.i84, align 4
  %age.i85 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i79, i32 0, i32 4
  %62 = ptrtoint ptr %age.i85 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %age.i85, align 8
  %last_nr_accesses.i86 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i79, i32 0, i32 5
  %63 = ptrtoint ptr %last_nr_accesses.i86 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %last_nr_accesses.i86, align 4
  br label %damon_new_region.exit88

damon_new_region.exit88:                          ; preds = %if.end.i87, %damon_new_target.exit78.damon_new_region.exit88_crit_edge
  %list.i89 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i79, i32 0, i32 3
  %regions_list.i90 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i72, i32 0, i32 2
  %prev.i.i91 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i72, i32 0, i32 2, i32 1
  %64 = ptrtoint ptr %prev.i.i91 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i91, align 4
  %call.i.i.i92 = call zeroext i1 @__list_add_valid(ptr noundef %list.i89, ptr noundef %65, ptr noundef %regions_list.i90) #12
  br i1 %call.i.i.i92, label %if.end.i.i.i94, label %damon_new_region.exit88.damon_add_region.exit97_crit_edge

damon_new_region.exit88.damon_add_region.exit97_crit_edge: ; preds = %damon_new_region.exit88
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_add_region.exit97

if.end.i.i.i94:                                   ; preds = %damon_new_region.exit88
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %prev.i.i91 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %list.i89, ptr %prev.i.i91, align 4
  %67 = ptrtoint ptr %list.i89 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %regions_list.i90, ptr %list.i89, align 8
  %prev3.i.i.i93 = getelementptr inbounds %struct.damon_region, ptr %call7.i.i79, i32 0, i32 3, i32 1
  %68 = ptrtoint ptr %prev3.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i.i93, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %list.i89, ptr %65, align 4
  br label %damon_add_region.exit97

damon_add_region.exit97:                          ; preds = %if.end.i.i.i94, %damon_new_region.exit88.damon_add_region.exit97_crit_edge
  %nr_regions.i95 = getelementptr inbounds %struct.damon_target, ptr %call7.i.i72, i32 0, i32 1
  %70 = ptrtoint ptr %nr_regions.i95 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nr_regions.i95, align 4
  %inc.i96 = add i32 %71, 1
  store i32 %inc.i96, ptr %nr_regions.i95, align 4
  call fastcc void @damon_split_regions_of(ptr noundef %call7.i.i72, i32 noundef 4)
  %72 = ptrtoint ptr %nr_regions.i95 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nr_regions.i95, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion18) #12
  %74 = getelementptr inbounds i8, ptr %__assertion18, i32 32
  %75 = call ptr @memset(ptr %74, i32 255, i32 24)
  %76 = ptrtoint ptr %__assertion18 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %test, ptr %__assertion18, align 8
  %type21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 1
  %77 = ptrtoint ptr %type21 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %type21, align 4
  %line22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 2
  %78 = ptrtoint ptr %line22 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 229, ptr %line22, align 8
  %file23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 3
  %79 = ptrtoint ptr %file23 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.37, ptr %file23, align 4
  %message24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 4
  %80 = ptrtoint ptr %message24 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %message24, align 8
  %va26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 4, i32 1
  %81 = ptrtoint ptr %va26 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %va26, align 4
  %format27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion18, i32 0, i32 5
  %82 = ptrtoint ptr %format27 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @kunit_binary_assert_format, ptr %format27, align 8
  %operation28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion18, i32 0, i32 1
  %83 = ptrtoint ptr %operation28 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @.str.65, ptr %operation28, align 4
  %left_text29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion18, i32 0, i32 2
  %84 = ptrtoint ptr %left_text29 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @.str.49, ptr %left_text29, align 8
  %left_value30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion18, i32 0, i32 3
  %conv31 = zext i32 %73 to i64
  %85 = ptrtoint ptr %left_value30 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %conv31, ptr %left_value30, align 8
  %right_text32 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion18, i32 0, i32 4
  %86 = ptrtoint ptr %right_text32 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.67, ptr %right_text32, align 8
  %right_value33 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion18, i32 0, i32 5
  %87 = ptrtoint ptr %right_value33 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 4, ptr %right_value33, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %73)
  %cmp36 = icmp ult i32 %73, 5
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion18, i1 noundef zeroext %cmp36, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion18) #12
  %88 = ptrtoint ptr %regions_list.i90 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regions_list.i90, align 8
  %cmp.not19.i100 = icmp eq ptr %89, %regions_list.i90
  br i1 %cmp.not19.i100, label %damon_add_region.exit97.damon_free_target.exit106_crit_edge, label %damon_add_region.exit97.for.body.i105_crit_edge

damon_add_region.exit97.for.body.i105_crit_edge:  ; preds = %damon_add_region.exit97
  br label %for.body.i105

damon_add_region.exit97.damon_free_target.exit106_crit_edge: ; preds = %damon_add_region.exit97
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_free_target.exit106

for.body.i105:                                    ; preds = %for.body.i105.for.body.i105_crit_edge, %damon_add_region.exit97.for.body.i105_crit_edge
  %.pn.in20.i101 = phi ptr [ %.pn.i103, %for.body.i105.for.body.i105_crit_edge ], [ %89, %damon_add_region.exit97.for.body.i105_crit_edge ]
  %r.0.i102 = getelementptr i8, ptr %.pn.in20.i101, i32 -16
  %90 = ptrtoint ptr %.pn.in20.i101 to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pn.i103 = load ptr, ptr %.pn.in20.i101, align 4
  call void @kfree(ptr noundef %r.0.i102) #12
  %cmp.not.i104 = icmp eq ptr %.pn.i103, %regions_list.i90
  br i1 %cmp.not.i104, label %for.body.i105.damon_free_target.exit106_crit_edge, label %for.body.i105.for.body.i105_crit_edge

for.body.i105.for.body.i105_crit_edge:            ; preds = %for.body.i105
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i105

for.body.i105.damon_free_target.exit106_crit_edge: ; preds = %for.body.i105
  call void @__sanitizer_cov_trace_pc() #14
  br label %damon_free_target.exit106

damon_free_target.exit106:                        ; preds = %for.body.i105.damon_free_target.exit106_crit_edge, %damon_add_region.exit97.damon_free_target.exit106_crit_edge
  call void @kfree(ptr noundef %call7.i.i72) #12
  call void @damon_destroy_ctx(ptr noundef %call7.i.i.i)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_ptr_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !53, !54, !56, !57, !58, !59, !60, !61, !62, !64, !65, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !90, !91, !93, !94, !96, !98, !99, !101, !102, !104, !106, !108, !109, !111, !113, !115, !117, !119, !121, !123, !124, !126, !127, !129, !131, !133, !135, !136}
!llvm.named.register.sp = !{!138}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @__tracepoint_damon_aggregated, !1, !"__tracepoint_damon_aggregated", i1 false, i1 false}
!1 = !{!"../include/trace/events/damon.h", i32 12, i32 1}
!2 = !{ptr @__tracepoint_ptr_damon_aggregated, !1, !"__tracepoint_ptr_damon_aggregated", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_damon_aggregated, !1, !"__SCK__tp_func_damon_aggregated", i1 false, i1 false}
!4 = !{ptr @event_class_damon_aggregated, !1, !"event_class_damon_aggregated", i1 false, i1 false}
!5 = !{ptr @event_damon_aggregated, !1, !"event_damon_aggregated", i1 false, i1 false}
!6 = !{ptr @__event_damon_aggregated, !1, !"__event_damon_aggregated", i1 false, i1 false}
!7 = !{ptr @__bpf_trace_tp_map_damon_aggregated, !1, !"__bpf_trace_tp_map_damon_aggregated", i1 false, i1 false}
!8 = !{ptr @damon_new_ctx.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../mm/damon/core.c", i32 212, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_suites264, !12, !"__UNIQUE_ID_suites264", i1 false, i1 false}
!12 = !{!"../mm/damon/core-test.h", i32 249, i32 1}
!13 = !{ptr @nr_running_ctxs, !14, !"nr_running_ctxs", i1 false, i1 false}
!14 = !{!"../mm/damon/core.c", i32 26, i32 12}
!15 = !{ptr @__tpstrtab_damon_aggregated, !1, !"__tpstrtab_damon_aggregated", i1 false, i1 false}
!16 = !{ptr @str__damon__trace_system_name, !17, !"str__damon__trace_system_name", i1 false, i1 false}
!17 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!18 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @trace_event_fields_damon_aggregated, !1, !"trace_event_fields_damon_aggregated", i1 false, i1 false}
!27 = !{ptr @trace_event_type_funcs_damon_aggregated, !1, !"trace_event_type_funcs_damon_aggregated", i1 false, i1 false}
!28 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @print_fmt_damon_aggregated, !1, !"print_fmt_damon_aggregated", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../mm/damon/core.c", i32 25, i32 8}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @damon_lock, !31, !"damon_lock", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../mm/damon/core.c", i32 387, i32 18}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../mm/damon/core.c", i32 1009, i32 2}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @kdamond_fn.__UNIQUE_ID_ddebug260, !37, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!42 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../mm/damon/core.c", i32 1063, i32 2}
!45 = !{ptr @kdamond_fn.__UNIQUE_ID_ddebug261, !44, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!46 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../mm/damon/core.c", i32 948, i32 4}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @damos_wmark_wait_us.__UNIQUE_ID_ddebug258, !48, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!51 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../mm/damon/core.c", i32 962, i32 3}
!56 = !{ptr @damos_wmark_wait_us.__UNIQUE_ID_ddebug259, !55, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!57 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!59 = !{ptr @.str.27, !1, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!61 = !{ptr @.str.28, !1, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @kdamond_split_regions.last_nr_regions, !66, !"last_nr_regions", i1 false, i1 false}
!66 = !{!"../mm/damon/core.c", i32 862, i32 22}
!67 = !{ptr @__UNIQUE_ID_array263, !12, !"__UNIQUE_ID_array263", i1 false, i1 false}
!68 = !{ptr @damon_test_suite, !69, !"damon_test_suite", i1 false, i1 false}
!69 = !{!"../mm/damon/core-test.h", i32 245, i32 27}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../mm/damon/core-test.h", i32 235, i32 2}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../mm/damon/core-test.h", i32 236, i32 2}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../mm/damon/core-test.h", i32 237, i32 2}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../mm/damon/core-test.h", i32 238, i32 2}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../mm/damon/core-test.h", i32 239, i32 2}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../mm/damon/core-test.h", i32 240, i32 2}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../mm/damon/core-test.h", i32 241, i32 2}
!84 = !{ptr @damon_test_cases, !85, !"damon_test_cases", i1 false, i1 false}
!85 = !{!"../mm/damon/core-test.h", i32 234, i32 26}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../mm/damon/core-test.h", i32 56, i32 2}
!88 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../mm/damon/core-test.h", i32 57, i32 2}
!93 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../mm/damon/core-test.h", i32 60, i32 2}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../mm/damon/core-test.h", i32 23, i32 2}
!98 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../mm/damon/core-test.h", i32 24, i32 2}
!101 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../mm/damon/core-test.h", i32 25, i32 2}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../mm/damon/core-test.h", i32 28, i32 2}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../mm/damon/core-test.h", i32 110, i32 3}
!108 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../mm/damon/core-test.h", i32 114, i32 2}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../mm/damon/core-test.h", i32 129, i32 2}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../mm/damon/core-test.h", i32 130, i32 2}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../mm/damon/core-test.h", i32 134, i32 2}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../mm/damon/core-test.h", i32 156, i32 2}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../mm/damon/core-test.h", i32 157, i32 2}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../mm/damon/core-test.h", i32 161, i32 3}
!123 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../mm/damon/core-test.h", i32 164, i32 2}
!126 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../mm/damon/core-test.h", i32 203, i32 2}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../mm/damon/core-test.h", i32 206, i32 3}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../mm/damon/core-test.h", i32 207, i32 3}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../mm/damon/core-test.h", i32 222, i32 2}
!135 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../mm/damon/core-test.h", i32 229, i32 2}
!138 = !{!"sp"}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{!"branch_weights", i32 2000, i32 1}
!149 = !{!"branch_weights", i32 1, i32 2000}
!150 = !{!"auto-init"}
!151 = !{i64 2148397951, i64 2148397983, i64 2148398012, i64 2148398046, i64 2148398077, i64 2148398100}
!152 = !{i64 2148485952}
!153 = !{i64 2148400416, i64 2148400448, i64 2148400477, i64 2148400511, i64 2148400542, i64 2148400565}
!154 = !{i64 2149657012}
!155 = !{i64 2148209814, i64 2148209819, i64 2148209832, i64 2148209876, i64 2148209910, i64 2148209931}
!156 = !{i8 0, i8 2}
!157 = !{i64 2153874677}
!158 = !{i64 2153874926}
!159 = !{i64 2149361382}
!160 = !{i64 2149362418}
