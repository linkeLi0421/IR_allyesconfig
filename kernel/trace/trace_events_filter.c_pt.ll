; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_events_filter.c_pt.bc'
source_filename = "../kernel/trace/trace_events_filter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+filter_match_preds\22, \22a\22\09"
module asm "\09.weak\09__crc_filter_match_preds\09\09\09\09"
module asm "\09.long\09__crc_filter_match_preds\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filter_match_preds:\09\09\09\09\09"
module asm "\09.asciz \09\22filter_match_preds\22\09\09\09\09\09"
module asm "__kstrtabns_filter_match_preds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.static_call_key = type { ptr }
%struct.trace_event_fields = type { ptr, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.0, %struct.trace_event, ptr, ptr, %union.anon.98, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.0 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.98 = type { ptr }
%union.anon.99 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.test_filter_data_t = type { ptr, %struct.trace_event_raw_ftrace_test_filter, i32, ptr }
%struct.trace_event_raw_ftrace_test_filter = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.prog_entry = type { i32, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.event_filter = type { ptr, ptr }
%struct.event_subsystem = type { %struct.list_head, ptr, ptr, i32 }
%struct.trace_subsystem_dir = type { %struct.list_head, ptr, ptr, ptr, i32, i32 }
%struct.trace_array = type { %struct.list_head, ptr, %struct.array_buffer, %struct.array_buffer, i8, i32, ptr, %struct.work_struct, %struct.irq_work, ptr, ptr, %struct.arch_spinlock_t, i32, i32, i32, [452 x ptr], [452 x ptr], i32, i32, i32, i8, i32, i32, ptr, i32, [32 x i8], i32, %struct.raw_spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.list_head, ptr, ptr }
%struct.array_buffer = type { ptr, ptr, ptr, i64, i32 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%struct.llist_node = type { ptr }
%union.anon.34 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.filter_parse_error = type { i32, i32 }
%struct.filter_list = type { %struct.list_head, ptr }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, %struct.ftrace_ops, ptr, ptr, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.57, i64, i64, i64, %union.anon.58, i32, %union.anon.59, %union.anon.60, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.57 = type { i64 }
%union.anon.58 = type { i32 }
%union.anon.59 = type { i64 }
%union.anon.60 = type { i64 }
%struct.hw_perf_event = type { %union.anon.61, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.68, i64, i64, i64, i64 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i64, %struct.local64_t }
%struct.atomic64_t = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ftrace_ops = type { ptr, ptr, i32, ptr, ptr, %struct.ftrace_ops_hash, ptr, %struct.ftrace_ops_hash, i32, i32, %struct.list_head }
%struct.ftrace_ops_hash = type { ptr, ptr, %struct.mutex }
%struct.filter_pred = type { ptr, i64, %struct.regex, ptr, ptr, i32, i32, i32 }
%struct.regex = type { [256 x i8], i32, i32, ptr }
%struct.ftrace_event_field = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.79, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.79 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"[?\\\00", [28 x i8] zeroinitializer }, align 32
@__kstrtab_filter_match_preds = external dso_local constant [0 x i8], align 1
@__kstrtabns_filter_match_preds = external dso_local constant [0 x i8], align 1
@__ksymtab_filter_match_preds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filter_match_preds to i32), ptr @__kstrtab_filter_match_preds, ptr @__kstrtabns_filter_match_preds }, section "___ksymtab_gpl+filter_match_preds", align 4
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none\0A\00", [26 x i8] zeroinitializer }, align 32
@event_mutex = external dso_local global %struct.mutex, align 4
@.str.3 = internal constant { [193 x i8], [63 x i8] } { [193 x i8] c"### global filter ###\0A# Use this to set filters for multiple events.\0A# Only events with the given fields will be affected.\0A# If no events are modified, an error message will be displayed here\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"__data_loc\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"char\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"__rel_loc\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"char *\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@__tpstrtab_ftrace_test_filter = internal constant [19 x i8] c"ftrace_test_filter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ftrace_test_filter = dso_local global %struct.static_call_key { ptr @__traceiter_ftrace_test_filter }, align 4
@__tracepoint_ftrace_test_filter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ftrace_test_filter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ftrace_test_filter, ptr null, ptr @__traceiter_ftrace_test_filter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ftrace_test_filter = internal constant ptr @__tracepoint_ftrace_test_filter, section "__tracepoints_ptrs", align 4
@str__test__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"test\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_ftrace_test_filter = internal global { [9 x %struct.trace_event_fields], [40 x i8] } { [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.46, %union.anon { %struct.anon { ptr @.str.47, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon { %struct.anon { ptr @.str.48, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon { %struct.anon { ptr @.str.49, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon { %struct.anon { ptr @.str.50, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon { %struct.anon { ptr @.str.51, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon { %struct.anon { ptr @.str.52, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon { %struct.anon { ptr @.str.53, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon { %struct.anon { ptr @.str.54, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_ftrace_test_filter = internal global %struct.trace_event_class { ptr @str__test__trace_system_name, ptr @trace_event_raw_event_ftrace_test_filter, ptr @perf_trace_ftrace_test_filter, ptr @trace_event_reg, ptr @trace_event_fields_ftrace_test_filter, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ftrace_test_filter, i64 24), ptr getelementptr (i8, ptr @event_class_ftrace_test_filter, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ftrace_test_filter = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_ftrace_test_filter, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_ftrace_test_filter = internal global { [113 x i8], [47 x i8] } { [113 x i8] c"\22a %d, b %d, c %d, d %d, e %d, f %d, g %d, h %d\22, REC->a, REC->b, REC->c, REC->d, REC->e, REC->f, REC->g, REC->h\00", [47 x i8] zeroinitializer }, align 32
@event_ftrace_test_filter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ftrace_test_filter, %union.anon.0 { ptr @__tracepoint_ftrace_test_filter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ftrace_test_filter }, ptr @print_fmt_ftrace_test_filter, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ftrace_test_filter = internal global ptr @event_ftrace_test_filter, section "_ftrace_events", align 4
@__bpf_trace_tp_map_ftrace_test_filter = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_ftrace_test_filter, ptr @__bpf_trace_ftrace_test_filter, i32 8, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__initcall__kmod_trace_events_filter__278_2373_ftrace_test_event_filter7 = internal global ptr @ftrace_test_event_filter, section ".initcall7.init", align 4
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"kernel/trace/trace_events_filter.c\00", [61 x i8] zeroinitializer }, align 32
@create_filter_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c".ustring\00", [23 x i8] zeroinitializer }, align 32
@ops = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr null], [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ip\00", [29 x i8] zeroinitializer }, align 32
@ustring_per_cpu = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"~\00", [30 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"!=\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"<=\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"<\00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c">=\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c">\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"&\00", [30 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@select_comparison_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@select_comparison_fn.__already_done.21 = internal unnamed_addr global i1 false, section ".data.once", align 1
@pred_funcs_s64 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @filter_pred_LE_s64, ptr @filter_pred_LT_s64, ptr @filter_pred_GE_s64, ptr @filter_pred_GT_s64, ptr @filter_pred_BAND_s64], [44 x i8] zeroinitializer }, align 32
@pred_funcs_u64 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @filter_pred_LE_u64, ptr @filter_pred_LT_u64, ptr @filter_pred_GE_u64, ptr @filter_pred_GT_u64, ptr @filter_pred_BAND_u64], [44 x i8] zeroinitializer }, align 32
@pred_funcs_s32 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @filter_pred_LE_s32, ptr @filter_pred_LT_s32, ptr @filter_pred_GE_s32, ptr @filter_pred_GT_s32, ptr @filter_pred_BAND_s32], [44 x i8] zeroinitializer }, align 32
@pred_funcs_u32 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @filter_pred_LE_u32, ptr @filter_pred_LT_u32, ptr @filter_pred_GE_u32, ptr @filter_pred_GT_u32, ptr @filter_pred_BAND_u32], [44 x i8] zeroinitializer }, align 32
@pred_funcs_s16 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @filter_pred_LE_s16, ptr @filter_pred_LT_s16, ptr @filter_pred_GE_s16, ptr @filter_pred_GT_s16, ptr @filter_pred_BAND_s16], [44 x i8] zeroinitializer }, align 32
@pred_funcs_u16 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @filter_pred_LE_u16, ptr @filter_pred_LT_u16, ptr @filter_pred_GE_u16, ptr @filter_pred_GT_u16, ptr @filter_pred_BAND_u16], [44 x i8] zeroinitializer }, align 32
@pred_funcs_s8 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @filter_pred_LE_s8, ptr @filter_pred_LT_s8, ptr @filter_pred_GE_s8, ptr @filter_pred_GT_s8, ptr @filter_pred_BAND_s8], [44 x i8] zeroinitializer }, align 32
@pred_funcs_u8 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @filter_pred_LE_u8, ptr @filter_pred_LT_u8, ptr @filter_pred_GE_u8, ptr @filter_pred_GT_u8, ptr @filter_pred_BAND_u8], [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0A%*s\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"^\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\0Aparse_error: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@err_text = internal global { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"event filter parse error\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0AError: (%d)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"No error\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid operator\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Too many '('\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Too few '('\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Missing matching quote\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Operand too long\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Expecting string field\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Expecting numeric field\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Illegal operation for field type\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Field not found\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Illegal integer value\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Couldn't find or set field in one of a subsystem's events\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Too many terms in predicate expression\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Meaningless filter expression\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Only 'ip' field is supported for function trace\00", [48 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid value (did you forget quotes)?\00", [57 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Error\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"No filter found\00", [16 x i8] zeroinitializer }, align 32
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@ftrace_function_set_filter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"a\00", [30 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"b\00", [30 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"c\00", [30 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"d\00", [30 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"e\00", [30 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"f\00", [30 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"g\00", [30 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"h\00", [30 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"a %d, b %d, c %d, d %d, e %d, f %d, g %d, h %d\0A\00", [48 x i8] zeroinitializer }, align 32
@ftrace_test_event_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.10, i32 2317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016Testing ftrace filter: \00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ftrace_test_event_filter\00", [39 x i8] zeroinitializer }, align 32
@ftrace_test_event_filter._entry_ptr = internal global ptr @ftrace_test_event_filter._entry, section ".printk_index", align 4
@test_filter_data = internal global { [25 x %struct.test_filter_data_t], [332 x i8] } { [25 x %struct.test_filter_data_t] [%struct.test_filter_data_t { ptr @.str.70, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, [0 x i8] zeroinitializer }, i32 1, ptr @.str.71 }, %struct.test_filter_data_t { ptr @.str.70, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, [0 x i8] zeroinitializer }, i32 0, ptr @.str.72 }, %struct.test_filter_data_t { ptr @.str.70, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, [0 x i8] zeroinitializer }, i32 0, ptr @.str.71 }, %struct.test_filter_data_t { ptr @.str.73, %struct.trace_event_raw_ftrace_test_filter zeroinitializer, i32 0, ptr @.str.71 }, %struct.test_filter_data_t { ptr @.str.73, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, [0 x i8] zeroinitializer }, i32 1, ptr @.str.71 }, %struct.test_filter_data_t { ptr @.str.73, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [0 x i8] zeroinitializer }, i32 1, ptr @.str.72 }, %struct.test_filter_data_t { ptr @.str.74, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, [0 x i8] zeroinitializer }, i32 0, ptr @.str.75 }, %struct.test_filter_data_t { ptr @.str.74, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, [0 x i8] zeroinitializer }, i32 1, ptr @.str.71 }, %struct.test_filter_data_t { ptr @.str.74, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 1, i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 1, [0 x i8] zeroinitializer }, i32 1, ptr @.str.76 }, %struct.test_filter_data_t { ptr @.str.74, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 1, i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, [0 x i8] zeroinitializer }, i32 0, ptr @.str.76 }, %struct.test_filter_data_t { ptr @.str.77, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, [0 x i8] zeroinitializer }, i32 1, ptr @.str.78 }, %struct.test_filter_data_t { ptr @.str.77, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, [0 x i8] zeroinitializer }, i32 1, ptr @.str.71 }, %struct.test_filter_data_t { ptr @.str.77, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, [0 x i8] zeroinitializer }, i32 0, ptr @.str.71 }, %struct.test_filter_data_t { ptr @.str.79, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, [0 x i8] zeroinitializer }, i32 1, ptr @.str.80 }, %struct.test_filter_data_t { ptr @.str.79, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, [0 x i8] zeroinitializer }, i32 0, ptr @.str.71 }, %struct.test_filter_data_t { ptr @.str.79, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, [0 x i8] zeroinitializer }, i32 1, ptr @.str.71 }, %struct.test_filter_data_t { ptr @.str.81, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, [0 x i8] zeroinitializer }, i32 1, ptr @.str.82 }, %struct.test_filter_data_t { ptr @.str.81, %struct.trace_event_raw_ftrace_test_filter zeroinitializer, i32 0, ptr @.str.71 }, %struct.test_filter_data_t { ptr @.str.81, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, [0 x i8] zeroinitializer }, i32 1, ptr @.str.54 }, %struct.test_filter_data_t { ptr @.str.83, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, [0 x i8] zeroinitializer }, i32 1, ptr @.str.84 }, %struct.test_filter_data_t { ptr @.str.83, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, [0 x i8] zeroinitializer }, i32 0, ptr @.str.71 }, %struct.test_filter_data_t { ptr @.str.83, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, [0 x i8] zeroinitializer }, i32 0, ptr @.str.71 }, %struct.test_filter_data_t { ptr @.str.85, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, [0 x i8] zeroinitializer }, i32 1, ptr @.str.86 }, %struct.test_filter_data_t { ptr @.str.85, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, [0 x i8] zeroinitializer }, i32 1, ptr @.str.71 }, %struct.test_filter_data_t { ptr @.str.85, %struct.trace_event_raw_ftrace_test_filter { %struct.trace_entry zeroinitializer, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, [0 x i8] zeroinitializer }, i32 1, ptr @.str.86 }], [332 x i8] zeroinitializer }, align 32
@ftrace_test_event_filter._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.10, i32 2329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016Failed to get filter for '%s', err %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ftrace_test_event_filter._entry_ptr.60 = internal global ptr @ftrace_test_event_filter._entry.58, section ".printk_index", align 4
@test_pred_visited = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ftrace_test_event_filter._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.10, i32 2355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016Failed, unwanted pred visited for filter %s\0A\00", [49 x i8] zeroinitializer }, align 32
@ftrace_test_event_filter._entry_ptr.63 = internal global ptr @ftrace_test_event_filter._entry.61, section ".printk_index", align 4
@ftrace_test_event_filter._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.57, ptr @.str.10, i32 2362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016Failed to match filter '%s', expected %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ftrace_test_event_filter._entry_ptr.66 = internal global ptr @ftrace_test_event_filter._entry.64, section ".printk_index", align 4
@ftrace_test_event_filter._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.57, ptr @.str.10, i32 2368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01cOK\0A\00", [26 x i8] zeroinitializer }, align 32
@ftrace_test_event_filter._entry_ptr.69 = internal global ptr @ftrace_test_event_filter._entry.67, section ".printk_index", align 4
@.str.70 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"a == 1 && b == 1 && c == 1 && d == 1 && e == 1 && f == 1 && g == 1 && h == 1\00", [51 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bcdefgh\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"a == 1 || b == 1 || c == 1 || d == 1 || e == 1 || f == 1 || g == 1 || h == 1\00", [51 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"(a == 1 || b == 1) && (c == 1 || d == 1) && (e == 1 || f == 1) && (g == 1 || h == 1)\00", [43 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dfh\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bd\00", [29 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"(a == 1 && b == 1) || (c == 1 && d == 1) || (e == 1 && f == 1) || (g == 1 && h == 1)\00", [43 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"efgh\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"(a == 1 && b == 1) && (c == 1 && d == 1) && (e == 1 && f == 1) || (g == 1 && h == 1)\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"gh\00", [29 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"((a == 1 || b == 1) || (c == 1 || d == 1) || (e == 1 || f == 1)) && (g == 1 || h == 1)\00", [41 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bcdef\00", [26 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"((((((((a == 1) && (b == 1)) || (c == 1)) && (d == 1)) || (e == 1)) && (f == 1)) || (g == 1)) && (h == 1))\00", [53 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ceg\00", [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"((((((((a == 1) || (b == 1)) && (c == 1)) || (d == 1)) && (e == 1)) || (f == 1)) && (g == 1)) || (h == 1))\00", [53 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bdfh\00", [27 x i8] zeroinitializer }, align 32
@update_pred_fn.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@update_pred_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@update_pred_fn.__already_done.87 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.88 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"all leafs should have field defined %d\00", [57 x i8] zeroinitializer }, align 32
@test_pred_visited_fn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.10, i32 2285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016\0Apred visited %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"test_pred_visited_fn\00", [43 x i8] zeroinitializer }, align 32
@test_pred_visited_fn._entry_ptr = internal global ptr @test_pred_visited_fn._entry, section ".printk_index", align 4
@__llvm_gcov_ctr = internal global [10 x i64] zeroinitializer
@__llvm_gcov_ctr.91 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.92 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.93 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.94 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.95 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.96 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.97 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.98 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.99 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.100 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.101 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.102 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.103 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.104 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.105 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.106 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.107 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.108 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.109 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.110 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.111 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.112 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.113 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.114 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.115 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.116 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.117 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.118 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.119 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.120 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.121 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.122 = internal global [12 x i64] zeroinitializer
@__llvm_gcov_ctr.123 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.124 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.125 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.126 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.127 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.128 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.129 = internal global [27 x i64] zeroinitializer
@__llvm_gcov_ctr.130 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.131 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.132 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.133 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.134 = internal global [22 x i64] zeroinitializer
@__llvm_gcov_ctr.135 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.136 = internal global [35 x i64] zeroinitializer
@__llvm_gcov_ctr.137 = internal global [57 x i64] zeroinitializer
@__llvm_gcov_ctr.138 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.139 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.140 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.141 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.142 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.143 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.144 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.145 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.146 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.147 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.148 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.149 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.150 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.151 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.152 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.153 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.154 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.155 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.156 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.157 = internal global [22 x i64] zeroinitializer
@__llvm_gcov_ctr.158 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.159 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.160 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.161 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.162 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.163 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.164 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.165 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.166 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.167 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.168 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.169 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.170 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.171 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.172 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.173 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.174 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.175 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.176 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.177 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.178 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.179 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.180 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.181 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.182 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.183 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.184 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.185 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.186 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.187 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.188 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.189 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.190 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.191 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.192 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.193 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.194 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.195 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.196 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.197 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.198 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.199 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.200 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.201 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.202 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.203 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.204 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.205 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.206 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.207 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.208 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.209 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.210 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.211 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.212 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.213 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.214 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.215 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.216 = internal global [12 x i64] zeroinitializer
@__llvm_gcov_ctr.217 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.218 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.219 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.220 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.221 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.222 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.223 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.224 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.225 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.226 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.227 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.228 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.229 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.230 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.231 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.232 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.233 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.234 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.235 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.236 = internal global [15 x i64] zeroinitializer
@__llvm_gcov_ctr.237 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.238 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.239 = internal global [1 x i64] zeroinitializer
@0 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_events_filter.gcda\00", [57 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [150 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 -1703630478, i32 1756011473 }, %emit_function_args_ty { i32 1, i32 -923041819, i32 1756011473 }, %emit_function_args_ty { i32 2, i32 2107273905, i32 1756011473 }, %emit_function_args_ty { i32 3, i32 -595329995, i32 1756011473 }, %emit_function_args_ty { i32 4, i32 1647566450, i32 1756011473 }, %emit_function_args_ty { i32 5, i32 994394417, i32 1756011473 }, %emit_function_args_ty { i32 6, i32 -1025119540, i32 1756011473 }, %emit_function_args_ty { i32 7, i32 1605834723, i32 1756011473 }, %emit_function_args_ty { i32 8, i32 1698097069, i32 1756011473 }, %emit_function_args_ty { i32 9, i32 -1810453421, i32 1756011473 }, %emit_function_args_ty { i32 10, i32 -1428794422, i32 1756011473 }, %emit_function_args_ty { i32 11, i32 1539530987, i32 1756011473 }, %emit_function_args_ty { i32 12, i32 -336318023, i32 1756011473 }, %emit_function_args_ty { i32 13, i32 376771811, i32 1756011473 }, %emit_function_args_ty { i32 14, i32 549662290, i32 1756011473 }, %emit_function_args_ty { i32 15, i32 1867579396, i32 1756011473 }, %emit_function_args_ty { i32 16, i32 -1290163930, i32 1756011473 }, %emit_function_args_ty { i32 17, i32 -255081475, i32 1756011473 }, %emit_function_args_ty { i32 18, i32 403993184, i32 1756011473 }, %emit_function_args_ty { i32 19, i32 1805694528, i32 1756011473 }, %emit_function_args_ty { i32 20, i32 -1001266671, i32 1756011473 }, %emit_function_args_ty { i32 21, i32 1063044387, i32 1756011473 }, %emit_function_args_ty { i32 22, i32 281786393, i32 1756011473 }, %emit_function_args_ty { i32 23, i32 -209539021, i32 1756011473 }, %emit_function_args_ty { i32 24, i32 1153031294, i32 1756011473 }, %emit_function_args_ty { i32 25, i32 1407514073, i32 1756011473 }, %emit_function_args_ty { i32 26, i32 839834918, i32 1756011473 }, %emit_function_args_ty { i32 27, i32 1892271883, i32 1756011473 }, %emit_function_args_ty { i32 28, i32 1727896607, i32 1756011473 }, %emit_function_args_ty { i32 29, i32 621981591, i32 1756011473 }, %emit_function_args_ty { i32 30, i32 -2001984866, i32 1756011473 }, %emit_function_args_ty { i32 31, i32 370517120, i32 1756011473 }, %emit_function_args_ty { i32 32, i32 559900849, i32 1756011473 }, %emit_function_args_ty { i32 33, i32 -2007589208, i32 1756011473 }, %emit_function_args_ty { i32 34, i32 -1928021409, i32 1756011473 }, %emit_function_args_ty { i32 35, i32 -1448186036, i32 1756011473 }, %emit_function_args_ty { i32 36, i32 436087400, i32 1756011473 }, %emit_function_args_ty { i32 37, i32 -400554785, i32 1756011473 }, %emit_function_args_ty { i32 38, i32 -1782918348, i32 1756011473 }, %emit_function_args_ty { i32 39, i32 795548855, i32 1756011473 }, %emit_function_args_ty { i32 40, i32 727036892, i32 1756011473 }, %emit_function_args_ty { i32 41, i32 1841983822, i32 1756011473 }, %emit_function_args_ty { i32 42, i32 1624494247, i32 1756011473 }, %emit_function_args_ty { i32 43, i32 -963894156, i32 1756011473 }, %emit_function_args_ty { i32 44, i32 -1862967051, i32 1756011473 }, %emit_function_args_ty { i32 45, i32 941734740, i32 1756011473 }, %emit_function_args_ty { i32 46, i32 -2078130028, i32 1756011473 }, %emit_function_args_ty { i32 47, i32 -1770771635, i32 1756011473 }, %emit_function_args_ty { i32 48, i32 -10115036, i32 1756011473 }, %emit_function_args_ty { i32 49, i32 1781672997, i32 1756011473 }, %emit_function_args_ty { i32 50, i32 -2128255985, i32 1756011473 }, %emit_function_args_ty { i32 51, i32 -1159899074, i32 1756011473 }, %emit_function_args_ty { i32 52, i32 1366964667, i32 1756011473 }, %emit_function_args_ty { i32 53, i32 2079168653, i32 1756011473 }, %emit_function_args_ty { i32 54, i32 1402721497, i32 1756011473 }, %emit_function_args_ty { i32 55, i32 1473378369, i32 1756011473 }, %emit_function_args_ty { i32 56, i32 651191103, i32 1756011473 }, %emit_function_args_ty { i32 57, i32 556089647, i32 1756011473 }, %emit_function_args_ty { i32 58, i32 2036790104, i32 1756011473 }, %emit_function_args_ty { i32 59, i32 1670274777, i32 1756011473 }, %emit_function_args_ty { i32 60, i32 1070531195, i32 1756011473 }, %emit_function_args_ty { i32 61, i32 1370260818, i32 1756011473 }, %emit_function_args_ty { i32 62, i32 966895513, i32 1756011473 }, %emit_function_args_ty { i32 63, i32 1596217133, i32 1756011473 }, %emit_function_args_ty { i32 64, i32 344826177, i32 1756011473 }, %emit_function_args_ty { i32 65, i32 -2052107371, i32 1756011473 }, %emit_function_args_ty { i32 66, i32 -1800499877, i32 1756011473 }, %emit_function_args_ty { i32 67, i32 38667304, i32 1756011473 }, %emit_function_args_ty { i32 68, i32 1898181911, i32 1756011473 }, %emit_function_args_ty { i32 69, i32 -553657043, i32 1756011473 }, %emit_function_args_ty { i32 70, i32 -2146555951, i32 1756011473 }, %emit_function_args_ty { i32 71, i32 1355288419, i32 1756011473 }, %emit_function_args_ty { i32 72, i32 -151514408, i32 1756011473 }, %emit_function_args_ty { i32 73, i32 288547376, i32 1756011473 }, %emit_function_args_ty { i32 74, i32 -1933021642, i32 1756011473 }, %emit_function_args_ty { i32 75, i32 2064557190, i32 1756011473 }, %emit_function_args_ty { i32 76, i32 1955175916, i32 1756011473 }, %emit_function_args_ty { i32 77, i32 -1030067610, i32 1756011473 }, %emit_function_args_ty { i32 78, i32 -2099287797, i32 1756011473 }, %emit_function_args_ty { i32 79, i32 -1147180823, i32 1756011473 }, %emit_function_args_ty { i32 80, i32 -1188252453, i32 1756011473 }, %emit_function_args_ty { i32 81, i32 -1020825761, i32 1756011473 }, %emit_function_args_ty { i32 82, i32 1624249540, i32 1756011473 }, %emit_function_args_ty { i32 83, i32 1011034078, i32 1756011473 }, %emit_function_args_ty { i32 84, i32 -372177701, i32 1756011473 }, %emit_function_args_ty { i32 85, i32 -1555049369, i32 1756011473 }, %emit_function_args_ty { i32 86, i32 -386668245, i32 1756011473 }, %emit_function_args_ty { i32 87, i32 -1411922032, i32 1756011473 }, %emit_function_args_ty { i32 88, i32 -686762679, i32 1756011473 }, %emit_function_args_ty { i32 89, i32 -603334219, i32 1756011473 }, %emit_function_args_ty { i32 90, i32 1295973933, i32 1756011473 }, %emit_function_args_ty { i32 91, i32 686850235, i32 1756011473 }, %emit_function_args_ty { i32 92, i32 566846888, i32 1756011473 }, %emit_function_args_ty { i32 93, i32 -2061931005, i32 1756011473 }, %emit_function_args_ty { i32 94, i32 1101657333, i32 1756011473 }, %emit_function_args_ty { i32 95, i32 -254951013, i32 1756011473 }, %emit_function_args_ty { i32 96, i32 -549425949, i32 1756011473 }, %emit_function_args_ty { i32 97, i32 -1942781042, i32 1756011473 }, %emit_function_args_ty { i32 98, i32 -1579173005, i32 1756011473 }, %emit_function_args_ty { i32 99, i32 -1651824097, i32 1756011473 }, %emit_function_args_ty { i32 100, i32 -249711192, i32 1756011473 }, %emit_function_args_ty { i32 101, i32 1256997180, i32 1756011473 }, %emit_function_args_ty { i32 102, i32 543836068, i32 1756011473 }, %emit_function_args_ty { i32 103, i32 -1649771234, i32 1756011473 }, %emit_function_args_ty { i32 104, i32 492031193, i32 1756011473 }, %emit_function_args_ty { i32 105, i32 -206902442, i32 1756011473 }, %emit_function_args_ty { i32 106, i32 -775817428, i32 1756011473 }, %emit_function_args_ty { i32 107, i32 -594602263, i32 1756011473 }, %emit_function_args_ty { i32 108, i32 1696571810, i32 1756011473 }, %emit_function_args_ty { i32 109, i32 36899801, i32 1756011473 }, %emit_function_args_ty { i32 110, i32 1828852263, i32 1756011473 }, %emit_function_args_ty { i32 111, i32 1000318622, i32 1756011473 }, %emit_function_args_ty { i32 112, i32 821427667, i32 1756011473 }, %emit_function_args_ty { i32 113, i32 -1134719888, i32 1756011473 }, %emit_function_args_ty { i32 114, i32 -1051725377, i32 1756011473 }, %emit_function_args_ty { i32 115, i32 -1444137938, i32 1756011473 }, %emit_function_args_ty { i32 116, i32 1901712709, i32 1756011473 }, %emit_function_args_ty { i32 117, i32 -207702318, i32 1756011473 }, %emit_function_args_ty { i32 118, i32 1544134771, i32 1756011473 }, %emit_function_args_ty { i32 119, i32 216900956, i32 1756011473 }, %emit_function_args_ty { i32 120, i32 -996940463, i32 1756011473 }, %emit_function_args_ty { i32 121, i32 -1041795849, i32 1756011473 }, %emit_function_args_ty { i32 122, i32 -176284414, i32 1756011473 }, %emit_function_args_ty { i32 123, i32 1248901211, i32 1756011473 }, %emit_function_args_ty { i32 124, i32 1442958583, i32 1756011473 }, %emit_function_args_ty { i32 125, i32 2125845305, i32 1756011473 }, %emit_function_args_ty { i32 126, i32 -1873711664, i32 1756011473 }, %emit_function_args_ty { i32 127, i32 -481620889, i32 1756011473 }, %emit_function_args_ty { i32 128, i32 975909662, i32 1756011473 }, %emit_function_args_ty { i32 129, i32 1112388048, i32 1756011473 }, %emit_function_args_ty { i32 130, i32 -1342645549, i32 1756011473 }, %emit_function_args_ty { i32 131, i32 -1696498604, i32 1756011473 }, %emit_function_args_ty { i32 132, i32 -1520414420, i32 1756011473 }, %emit_function_args_ty { i32 133, i32 -853989880, i32 1756011473 }, %emit_function_args_ty { i32 134, i32 -537409667, i32 1756011473 }, %emit_function_args_ty { i32 135, i32 -1203252796, i32 1756011473 }, %emit_function_args_ty { i32 136, i32 226386837, i32 1756011473 }, %emit_function_args_ty { i32 137, i32 1053396661, i32 1756011473 }, %emit_function_args_ty { i32 138, i32 1375009235, i32 1756011473 }, %emit_function_args_ty { i32 139, i32 858041679, i32 1756011473 }, %emit_function_args_ty { i32 140, i32 -1576388139, i32 1756011473 }, %emit_function_args_ty { i32 141, i32 1422826877, i32 1756011473 }, %emit_function_args_ty { i32 142, i32 1710487500, i32 1756011473 }, %emit_function_args_ty { i32 143, i32 -584910999, i32 1756011473 }, %emit_function_args_ty { i32 144, i32 -31780534, i32 1756011473 }, %emit_function_args_ty { i32 145, i32 -1567486560, i32 1756011473 }, %emit_function_args_ty { i32 146, i32 1323567536, i32 1756011473 }, %emit_function_args_ty { i32 147, i32 1333844298, i32 1756011473 }, %emit_function_args_ty { i32 148, i32 -1111025999, i32 1756011473 }, %emit_function_args_ty { i32 149, i32 -1507493791, i32 1756011473 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [150 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 10, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.91 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.92 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.93 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.94 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.95 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.96 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.97 }, %emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr.98 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.99 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.100 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.101 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.102 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.103 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.104 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.105 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.106 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.107 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.108 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.109 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.110 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.111 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.112 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.113 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.114 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.115 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.116 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.117 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.118 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.119 }, %emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr.120 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.121 }, %emit_arcs_args_ty { i32 12, ptr @__llvm_gcov_ctr.122 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.123 }, %emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr.124 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.125 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.126 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.127 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.128 }, %emit_arcs_args_ty { i32 27, ptr @__llvm_gcov_ctr.129 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.130 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.131 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.132 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.133 }, %emit_arcs_args_ty { i32 22, ptr @__llvm_gcov_ctr.134 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.135 }, %emit_arcs_args_ty { i32 35, ptr @__llvm_gcov_ctr.136 }, %emit_arcs_args_ty { i32 57, ptr @__llvm_gcov_ctr.137 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.138 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.139 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.140 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.141 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.142 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.143 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.144 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.145 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.146 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.147 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.148 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.149 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.150 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.151 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.152 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.153 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.154 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.155 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.156 }, %emit_arcs_args_ty { i32 22, ptr @__llvm_gcov_ctr.157 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.158 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.159 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.160 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.161 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.162 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.163 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.164 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.165 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.166 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.167 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.168 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.169 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.170 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.171 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.172 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.173 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.174 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.175 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.176 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.177 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.178 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.179 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.180 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.181 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.182 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.183 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.184 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.185 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.186 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.187 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.188 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.189 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.190 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.191 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.192 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.193 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.194 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.195 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.196 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.197 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.198 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.199 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.200 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.201 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.202 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.203 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.204 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.205 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.206 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.207 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.208 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.209 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.210 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.211 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.212 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.213 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.214 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.215 }, %emit_arcs_args_ty { i32 12, ptr @__llvm_gcov_ctr.216 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.217 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.218 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.219 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.220 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.221 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.222 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.223 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.224 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.225 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.226 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.227 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.228 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.229 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.230 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.231 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.232 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.233 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.234 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.235 }, %emit_arcs_args_ty { i32 15, ptr @__llvm_gcov_ctr.236 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.237 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.238 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.239 }]
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 34, i64 38, i64 39, i64 40, i64 41, i64 124]
@__sancov_gen_cov_switch_values.240 = internal global [6 x i64] [i64 4, i64 8, i64 34, i64 39, i64 40, i64 41]
@__sancov_gen_cov_switch_values.241 = internal global [4 x i64] [i64 2, i64 8, i64 33, i64 40]
@__sancov_gen_cov_switch_values.242 = internal global [4 x i64] [i64 2, i64 8, i64 61, i64 126]
@__sancov_gen_cov_switch_values.243 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.244 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 6]
@__sancov_gen_cov_switch_values.245 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 38, i64 41, i64 124]
@__sancov_gen_cov_switch_values.246 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 124]
@__sancov_gen_cov_switch_values.247 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.248 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.249 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 946, i32 21 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1081, i32 23 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1083, i32 21 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1096, i32 21 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1177, i32 19 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1177, i32 49 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1180, i32 19 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1186, i32 19 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1186, i32 50 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1903, i32 39 }
@___asan_gen_.280 = private unnamed_addr constant [29 x i8] c"str__test__trace_system_name\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 36, i32 1 }
@___asan_gen_.283 = private unnamed_addr constant [38 x i8] c"trace_event_fields_ftrace_test_filter\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_ftrace_test_filter\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [29 x i8] c"print_fmt_ftrace_test_filter\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [25 x i8] c"event_ftrace_test_filter\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1842, i32 6 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1294, i32 37 }
@___asan_gen_.301 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 44, i32 21 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1337, i32 27 }
@___asan_gen_.307 = private unnamed_addr constant [16 x i8] c"ustring_per_cpu\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 665, i32 40 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 44, i32 31 }
@___asan_gen_.334 = private unnamed_addr constant [15 x i8] c"pred_funcs_s64\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 644, i32 1 }
@___asan_gen_.337 = private unnamed_addr constant [15 x i8] c"pred_funcs_u64\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 645, i32 1 }
@___asan_gen_.340 = private unnamed_addr constant [15 x i8] c"pred_funcs_s32\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 646, i32 1 }
@___asan_gen_.343 = private unnamed_addr constant [15 x i8] c"pred_funcs_u32\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 647, i32 1 }
@___asan_gen_.346 = private unnamed_addr constant [15 x i8] c"pred_funcs_s16\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 648, i32 1 }
@___asan_gen_.349 = private unnamed_addr constant [15 x i8] c"pred_funcs_u16\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 649, i32 1 }
@___asan_gen_.352 = private unnamed_addr constant [14 x i8] c"pred_funcs_s8\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 650, i32 1 }
@___asan_gen_.355 = private unnamed_addr constant [14 x i8] c"pred_funcs_u8\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 651, i32 1 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1050, i32 23 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1050, i32 37 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1051, i32 23 }
@___asan_gen_.367 = private unnamed_addr constant [9 x i8] c"err_text\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 81, i32 20 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1052, i32 23 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 1056, i32 23 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 81, i32 35 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 2128, i32 28 }
@___asan_gen_.461 = private unnamed_addr constant [45 x i8] c"../kernel/trace/./trace_events_filter_test.h\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 10, i32 1 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 2317, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant [17 x i8] c"test_filter_data\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 2220, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 2327, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant [18 x i8] c"test_pred_visited\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 2353, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 2360, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 2368, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 2223, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 2224, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 2229, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 2235, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 2237, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 2242, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 2248, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 2254, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 2260, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 2266, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 2302, i32 4 }
@___asan_gen_.554 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.560 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.561 = private constant [38 x i8] c"../kernel/trace/trace_events_filter.c\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 2285, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [118 x ptr] [ptr @__bpf_trace_tp_map_ftrace_test_filter, ptr @__event_ftrace_test_filter, ptr @__initcall__kmod_trace_events_filter__278_2373_ftrace_test_event_filter7, ptr @__ksymtab_filter_match_preds, ptr @__tracepoint_ftrace_test_filter, ptr @__tracepoint_ptr_ftrace_test_filter, ptr @event_class_ftrace_test_filter, ptr @event_ftrace_test_filter, ptr @ftrace_test_event_filter._entry, ptr @ftrace_test_event_filter._entry.58, ptr @ftrace_test_event_filter._entry.61, ptr @ftrace_test_event_filter._entry.64, ptr @ftrace_test_event_filter._entry.67, ptr @ftrace_test_event_filter._entry_ptr, ptr @ftrace_test_event_filter._entry_ptr.60, ptr @ftrace_test_event_filter._entry_ptr.63, ptr @ftrace_test_event_filter._entry_ptr.66, ptr @ftrace_test_event_filter._entry_ptr.69, ptr @test_pred_visited_fn._entry, ptr @test_pred_visited_fn._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @str__test__trace_system_name, ptr @trace_event_fields_ftrace_test_filter, ptr @trace_event_type_funcs_ftrace_test_filter, ptr @print_fmt_ftrace_test_filter, ptr @.str.10, ptr @.str.11, ptr @ops, ptr @.str.12, ptr @ustring_per_cpu, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pred_funcs_s64, ptr @pred_funcs_u64, ptr @pred_funcs_s32, ptr @pred_funcs_u32, ptr @pred_funcs_s16, ptr @pred_funcs_u16, ptr @pred_funcs_s8, ptr @pred_funcs_u8, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @err_text, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @test_filter_data, ptr @.str.59, ptr @test_pred_visited, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90], section "llvm.metadata"
@1 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 193, i32 256, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__test__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_ftrace_test_filter to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_ftrace_test_filter to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_ftrace_test_filter to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ftrace_test_filter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ustring_per_cpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pred_funcs_s64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pred_funcs_u64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pred_funcs_s32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pred_funcs_u32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pred_funcs_s16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pred_funcs_u16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pred_funcs_s8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pred_funcs_u8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @err_text to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_test_event_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_filter_data to i32), i32 1300, i32 1632, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_test_event_filter._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_pred_visited to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_test_event_filter._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_test_event_filter._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_test_event_filter._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_pred_visited_fn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @filter_parse_regex(ptr noundef %buff, i32 noundef %len, ptr nocapture noundef writeonly %search, ptr nocapture noundef writeonly %not) local_unnamed_addr #0 align 64 !dbg !200 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !203
  %0 = ptrtoint ptr %buff to i32, !dbg !204
  call void @__asan_load1_noabort(i32 %0), !dbg !204
  %1 = load i8, ptr %buff, align 1, !dbg !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %1), !dbg !205
  %cmp = icmp eq i8 %1, 33, !dbg !205
  br i1 %cmp, label %if.then, label %if.else, !dbg !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !206
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 16, !dbg !206
  %2 = add i64 %gcov_ctr, 1, !dbg !206
  store i64 %2, ptr @__llvm_gcov_ctr, align 16, !dbg !206
  %3 = ptrtoint ptr %not to i32, !dbg !207
  call void @__asan_store4_noabort(i32 %3), !dbg !207
  store i32 1, ptr %not, align 4, !dbg !207
  %incdec.ptr = getelementptr i8, ptr %buff, i32 1, !dbg !208
  %dec = add i32 %len, -1, !dbg !209
  br label %if.end, !dbg !210

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !211
  %gcov_ctr42 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !211
  %4 = add i64 %gcov_ctr42, 1, !dbg !211
  store i64 %4, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !211
  %5 = ptrtoint ptr %not to i32, !dbg !212
  call void @__asan_store4_noabort(i32 %5), !dbg !212
  store i32 0, ptr %not, align 4, !dbg !212
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %len.addr.0 = phi i32 [ %dec, %if.then ], [ %len, %if.else ]
  %buff.addr.0 = phi ptr [ %incdec.ptr, %if.then ], [ %buff, %if.else ]
  %6 = ptrtoint ptr %search to i32, !dbg !213
  call void @__asan_store4_noabort(i32 %6), !dbg !213
  store ptr %buff.addr.0, ptr %search, align 4, !dbg !213
  %7 = ptrtoint ptr %buff.addr.0 to i32, !dbg !214
  call void @__asan_load1_noabort(i32 %7), !dbg !214
  %8 = load i8, ptr %buff.addr.0, align 1, !dbg !214
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.91, align 8
  %9 = add i64 %gcov_ctr.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.91, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %8), !dbg !215
  %cmp.i = icmp ugt i8 %8, 47, !dbg !215
  br i1 %cmp.i, label %land.rhs.i, label %if.end.for.cond.preheader_crit_edge, !dbg !219

if.end.for.cond.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22, !dbg !219
  br label %for.cond.preheader, !dbg !219

land.rhs.i:                                       ; preds = %if.end
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.91, i32 0, i32 1), align 8, !dbg !220
  %10 = add i64 %gcov_ctr2.i, 1, !dbg !220
  store i64 %10, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.91, i32 0, i32 1), align 8, !dbg !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %8), !dbg !221
  %cmp1.i = icmp ugt i8 %8, 57, !dbg !221
  br i1 %cmp1.i, label %land.rhs.i.for.cond.preheader_crit_edge, label %land.rhs.i.cleanup_crit_edge, !dbg !222

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !222
  br label %cleanup, !dbg !222

land.rhs.i.for.cond.preheader_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !222
  br label %for.cond.preheader, !dbg !222

for.cond.preheader:                               ; preds = %land.rhs.i.for.cond.preheader_crit_edge, %if.end.for.cond.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0), !dbg !223
  %cmp675 = icmp sgt i32 %len.addr.0, 0, !dbg !223
  br i1 %cmp675, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge, !dbg !224

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22, !dbg !224
  br label %for.end, !dbg !224

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body, !dbg !224

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.077 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %type.076 = phi i32 [ %type.2, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx8 = getelementptr i8, ptr %buff.addr.0, i32 %i.077, !dbg !225
  %11 = ptrtoint ptr %arrayidx8 to i32, !dbg !225
  call void @__asan_load1_noabort(i32 %11), !dbg !225
  %12 = load i8, ptr %arrayidx8, align 1, !dbg !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %12), !dbg !226
  %cmp10 = icmp eq i8 %12, 42, !dbg !226
  br i1 %cmp10, label %if.then12, label %if.else27, !dbg !225

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.077), !dbg !227
  %tobool13.not = icmp eq i32 %i.077, 0, !dbg !227
  br i1 %tobool13.not, label %if.then12.for.inc_crit_edge, label %if.else15, !dbg !228

if.then12.for.inc_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #22, !dbg !228
  br label %for.inc, !dbg !228

if.else15:                                        ; preds = %if.then12
  %arrayidx8.le = getelementptr i8, ptr %buff.addr.0, i32 %i.077, !dbg !225
  %sub = add nsw i32 %len.addr.0, -1, !dbg !229
  call void @__sanitizer_cov_trace_cmp4(i32 %i.077, i32 %sub), !dbg !230
  %cmp16 = icmp eq i32 %i.077, %sub, !dbg !230
  br i1 %cmp16, label %if.then18, label %if.else25, !dbg !231

if.then18:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type.076), !dbg !232
  %cmp19 = icmp eq i32 %type.076, 3, !dbg !232
  br i1 %cmp19, label %if.then21, label %if.else22, !dbg !233

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #22, !dbg !234
  %gcov_ctr43 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !234
  %13 = add i64 %gcov_ctr43, 1, !dbg !234
  store i64 %13, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !234
  br label %if.end23, !dbg !235

if.else22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #22, !dbg !236
  %gcov_ctr44 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !236
  %14 = add i64 %gcov_ctr44, 1, !dbg !236
  store i64 %14, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !236
  br label %if.end23

if.end23:                                         ; preds = %if.else22, %if.then21
  %type.1 = phi i32 [ 2, %if.then21 ], [ 1, %if.else22 ], !dbg !237
  %15 = ptrtoint ptr %arrayidx8.le to i32, !dbg !238
  call void @__asan_store1_noabort(i32 %15), !dbg !238
  store i8 0, ptr %arrayidx8.le, align 1, !dbg !238
  br label %for.end, !dbg !239

if.else25:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #22, !dbg !240
  %gcov_ctr45 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 4), align 16, !dbg !240
  %16 = add i64 %gcov_ctr45, 1, !dbg !240
  store i64 %16, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 4), align 16, !dbg !240
  br label %cleanup, !dbg !240

if.else27:                                        ; preds = %for.body
  %conv9 = zext i8 %12 to i32, !dbg !225
  %memchr = tail call ptr @memchr(ptr noundef nonnull @.str, i32 %conv9, i32 4) #23, !dbg !241
  %tobool31.not = icmp eq ptr %memchr, null, !dbg !241
  br i1 %tobool31.not, label %if.else27.for.inc_crit_edge, label %if.then32, !dbg !241

if.else27.for.inc_crit_edge:                      ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #22, !dbg !241
  br label %for.inc, !dbg !241

if.then32:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #22, !dbg !242
  %gcov_ctr47 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 6), align 16, !dbg !242
  %17 = add i64 %gcov_ctr47, 1, !dbg !242
  store i64 %17, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 6), align 16, !dbg !242
  br label %cleanup, !dbg !242

for.inc:                                          ; preds = %if.else27.for.inc_crit_edge, %if.then12.for.inc_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 5), %if.then12.for.inc_crit_edge ], [ getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 7), %if.else27.for.inc_crit_edge ]
  %type.2 = phi i32 [ 3, %if.then12.for.inc_crit_edge ], [ %type.076, %if.else27.for.inc_crit_edge ], !dbg !237
  %18 = ptrtoint ptr %.sink to i32
  call void @__asan_load8_noabort(i32 %18)
  %gcov_ctr46 = load i64, ptr %.sink, align 8
  %19 = add i64 %gcov_ctr46, 1
  store i64 %19, ptr %.sink, align 8
  %inc = add nuw nsw i32 %i.077, 1, !dbg !243
  %exitcond.not = icmp eq i32 %inc, %len.addr.0, !dbg !223
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge, !dbg !224, !llvm.loop !244

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22, !dbg !224
  br label %for.body, !dbg !224

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22, !dbg !224
  br label %for.end, !dbg !224

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end23, %for.cond.preheader.for.end_crit_edge
  %type.3 = phi i32 [ %type.1, %if.end23 ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ %type.2, %for.inc.for.end_crit_edge ], !dbg !237
  %20 = ptrtoint ptr %buff.addr.0 to i32, !dbg !246
  call void @__asan_load1_noabort(i32 %20), !dbg !246
  %21 = load i8, ptr %buff.addr.0, align 1, !dbg !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %21), !dbg !247
  %cmp37 = icmp eq i8 %21, 42, !dbg !247
  br i1 %cmp37, label %if.then39, label %for.end.if.end40_crit_edge, !dbg !246

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22, !dbg !246
  br label %if.end40, !dbg !246

if.then39:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22, !dbg !248
  %gcov_ctr49 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 8), align 16, !dbg !248
  %22 = add i64 %gcov_ctr49, 1, !dbg !248
  store i64 %22, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 8), align 16, !dbg !248
  %add.ptr = getelementptr i8, ptr %buff.addr.0, i32 1, !dbg !249
  %23 = ptrtoint ptr %search to i32, !dbg !250
  call void @__asan_store4_noabort(i32 %23), !dbg !250
  store ptr %add.ptr, ptr %search, align 4, !dbg !250
  br label %if.end40, !dbg !251

if.end40:                                         ; preds = %if.then39, %for.end.if.end40_crit_edge
  %gcov_ctr50 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 9), align 8, !dbg !252
  %24 = add i64 %gcov_ctr50, 1, !dbg !252
  store i64 %24, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 9), align 8, !dbg !252
  br label %cleanup, !dbg !253

cleanup:                                          ; preds = %if.end40, %if.then32, %if.else25, %land.rhs.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %type.3, %if.end40 ], [ 4, %if.else25 ], [ 4, %if.then32 ], [ 5, %land.rhs.i.cleanup_crit_edge ], !dbg !237
  ret i32 %retval.0, !dbg !254
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @filter_match_preds(ptr noundef %filter, ptr noundef %rec) #3 align 64 !dbg !255 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !256
  %tobool.not = icmp eq ptr %filter, null, !dbg !257
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !259
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.92, align 16, !dbg !259
  %0 = add i64 %gcov_ctr, 1, !dbg !259
  store i64 %0, ptr @__llvm_gcov_ctr.92, align 16, !dbg !259
  br label %cleanup, !dbg !259

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %filter to i32, !dbg !260
  call void @__asan_load4_noabort(i32 %1), !dbg !260
  %2 = load volatile ptr, ptr %filter, align 4, !dbg !260
  %tobool3.not = icmp eq ptr %2, null, !dbg !261
  br i1 %tobool3.not, label %if.then4, label %for.cond.preheader, !dbg !262

for.cond.preheader:                               ; preds = %if.end
  %pred33 = getelementptr %struct.prog_entry, ptr %2, i32 0, i32 2, !dbg !263
  %3 = ptrtoint ptr %pred33 to i32, !dbg !263
  call void @__asan_load4_noabort(i32 %3), !dbg !263
  %4 = load ptr, ptr %pred33, align 4, !dbg !263
  %tobool6.not34 = icmp eq ptr %4, null, !dbg !264
  br i1 %tobool6.not34, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge, !dbg !264

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body, !dbg !264

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22, !dbg !264
  br label %for.end, !dbg !264

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22, !dbg !265
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.92, i32 0, i32 1), align 8, !dbg !265
  %5 = add i64 %gcov_ctr17, 1, !dbg !265
  store i64 %5, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.92, i32 0, i32 1), align 8, !dbg !265
  br label %cleanup, !dbg !265

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %pred37 = phi ptr [ %pred, %if.end13.for.body_crit_edge ], [ %pred33, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx36 = phi ptr [ %arrayidx, %if.end13.for.body_crit_edge ], [ %2, %for.cond.preheader.for.body_crit_edge ]
  %i.035 = phi i32 [ %inc, %if.end13.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.92, i32 0, i32 2), align 16, !dbg !266
  %6 = add i64 %gcov_ctr18, 1, !dbg !266
  store i64 %6, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.92, i32 0, i32 2), align 16, !dbg !266
  %7 = ptrtoint ptr %pred37 to i32, !dbg !267
  call void @__asan_load4_noabort(i32 %7), !dbg !267
  %8 = load ptr, ptr %pred37, align 4, !dbg !267
  %9 = ptrtoint ptr %8 to i32, !dbg !268
  call void @__asan_load4_noabort(i32 %9), !dbg !268
  %10 = load ptr, ptr %8, align 8, !dbg !268
  %call = tail call i32 %10(ptr noundef %8, ptr noundef %rec) #24, !dbg !269
  %when_to_branch = getelementptr %struct.prog_entry, ptr %2, i32 %i.035, i32 1, !dbg !270
  %11 = ptrtoint ptr %when_to_branch to i32, !dbg !270
  call void @__asan_load4_noabort(i32 %11), !dbg !270
  %12 = load i32, ptr %when_to_branch, align 4, !dbg !270
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %12), !dbg !271
  %cmp = icmp eq i32 %call, %12, !dbg !271
  br i1 %cmp, label %if.then11, label %for.body.if.end13_crit_edge, !dbg !272

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22, !dbg !272
  br label %if.end13, !dbg !272

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22, !dbg !273
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.92, i32 0, i32 3), align 8, !dbg !273
  %13 = add i64 %gcov_ctr19, 1, !dbg !273
  store i64 %13, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.92, i32 0, i32 3), align 8, !dbg !273
  %14 = ptrtoint ptr %arrayidx36 to i32, !dbg !274
  call void @__asan_load4_noabort(i32 %14), !dbg !274
  %15 = load i32, ptr %arrayidx36, align 4, !dbg !274
  br label %if.end13, !dbg !275

if.end13:                                         ; preds = %if.then11, %for.body.if.end13_crit_edge
  %i.1 = phi i32 [ %15, %if.then11 ], [ %i.035, %for.body.if.end13_crit_edge ], !dbg !276
  %inc = add i32 %i.1, 1, !dbg !277
  %arrayidx = getelementptr %struct.prog_entry, ptr %2, i32 %inc, !dbg !278
  %pred = getelementptr %struct.prog_entry, ptr %2, i32 %inc, i32 2, !dbg !263
  %16 = ptrtoint ptr %pred to i32, !dbg !263
  call void @__asan_load4_noabort(i32 %16), !dbg !263
  %17 = load ptr, ptr %pred, align 4, !dbg !263
  %tobool6.not = icmp eq ptr %17, null, !dbg !264
  br i1 %tobool6.not, label %if.end13.for.end_crit_edge, label %if.end13.for.body_crit_edge, !dbg !264, !llvm.loop !279

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22, !dbg !264
  br label %for.body, !dbg !264

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22, !dbg !264
  br label %for.end, !dbg !264

for.end:                                          ; preds = %if.end13.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %arrayidx.lcssa = phi ptr [ %2, %for.cond.preheader.for.end_crit_edge ], [ %arrayidx, %if.end13.for.end_crit_edge ], !dbg !278
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.92, i32 0, i32 4), align 16, !dbg !281
  %18 = add i64 %gcov_ctr20, 1, !dbg !281
  store i64 %18, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.92, i32 0, i32 4), align 16, !dbg !281
  %19 = ptrtoint ptr %arrayidx.lcssa to i32, !dbg !282
  call void @__asan_load4_noabort(i32 %19), !dbg !282
  %20 = load i32, ptr %arrayidx.lcssa, align 4, !dbg !282
  br label %cleanup, !dbg !283

cleanup:                                          ; preds = %for.end, %if.then4, %if.then
  %retval.0 = phi i32 [ %20, %for.end ], [ 1, %if.then4 ], [ 1, %if.then ], !dbg !276
  ret i32 %retval.0, !dbg !284
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @print_event_filter(ptr nocapture noundef readonly %file, ptr noundef %s) local_unnamed_addr #3 align 64 !dbg !285 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !286
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.94, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.94, align 8
  %filter.i = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 2, !dbg !287
  %1 = ptrtoint ptr %filter.i to i32, !dbg !287
  call void @__asan_load4_noabort(i32 %1), !dbg !287
  %2 = load ptr, ptr %filter.i, align 4, !dbg !287
  %tobool.not = icmp eq ptr %2, null, !dbg !290
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true, !dbg !291

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !291
  br label %if.else, !dbg !291

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.93, align 16, !dbg !292
  %3 = add i64 %gcov_ctr, 1, !dbg !292
  store i64 %3, ptr @__llvm_gcov_ctr.93, align 16, !dbg !292
  %filter_string = getelementptr inbounds %struct.event_filter, ptr %2, i32 0, i32 1, !dbg !293
  %4 = ptrtoint ptr %filter_string to i32, !dbg !293
  call void @__asan_load4_noabort(i32 %4), !dbg !293
  %5 = load ptr, ptr %filter_string, align 4, !dbg !293
  %tobool1.not = icmp eq ptr %5, null, !dbg !292
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %if.then, !dbg !290

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22, !dbg !290
  br label %if.else, !dbg !290

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22, !dbg !294
  %gcov_ctr3 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 1), align 8, !dbg !294
  %6 = add i64 %gcov_ctr3, 1, !dbg !294
  store i64 %6, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 1), align 8, !dbg !294
  %7 = ptrtoint ptr %filter_string to i32, !dbg !295
  call void @__asan_load4_noabort(i32 %7), !dbg !295
  %8 = load ptr, ptr %filter_string, align 4, !dbg !295
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.1, ptr noundef %8) #24, !dbg !296
  br label %if.end, !dbg !296

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %gcov_ctr4 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 2), align 16, !dbg !297
  %9 = add i64 %gcov_ctr4, 1, !dbg !297
  store i64 %9, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 2), align 16, !dbg !297
  tail call void @trace_seq_puts(ptr noundef %s, ptr noundef nonnull @.str.2) #24, !dbg !298
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !299
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @print_subsystem_event_filter(ptr nocapture noundef readonly %system, ptr noundef %s) local_unnamed_addr #3 align 64 !dbg !300 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !301
  tail call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #24, !dbg !302
  %filter1 = getelementptr inbounds %struct.event_subsystem, ptr %system, i32 0, i32 2, !dbg !303
  %0 = ptrtoint ptr %filter1 to i32, !dbg !303
  call void @__asan_load4_noabort(i32 %0), !dbg !303
  %1 = load ptr, ptr %filter1, align 4, !dbg !303
  %tobool.not = icmp eq ptr %1, null, !dbg !304
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true, !dbg !305

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !305
  br label %if.else, !dbg !305

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.95, align 16, !dbg !306
  %2 = add i64 %gcov_ctr, 1, !dbg !306
  store i64 %2, ptr @__llvm_gcov_ctr.95, align 16, !dbg !306
  %filter_string = getelementptr inbounds %struct.event_filter, ptr %1, i32 0, i32 1, !dbg !307
  %3 = ptrtoint ptr %filter_string to i32, !dbg !307
  call void @__asan_load4_noabort(i32 %3), !dbg !307
  %4 = load ptr, ptr %filter_string, align 4, !dbg !307
  %tobool2.not = icmp eq ptr %4, null, !dbg !306
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %if.then, !dbg !304

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22, !dbg !304
  br label %if.else, !dbg !304

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22, !dbg !308
  %gcov_ctr4 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.95, i32 0, i32 1), align 8, !dbg !308
  %5 = add i64 %gcov_ctr4, 1, !dbg !308
  store i64 %5, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.95, i32 0, i32 1), align 8, !dbg !308
  %6 = ptrtoint ptr %filter_string to i32, !dbg !309
  call void @__asan_load4_noabort(i32 %6), !dbg !309
  %7 = load ptr, ptr %filter_string, align 4, !dbg !309
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.1, ptr noundef %7) #24, !dbg !310
  br label %if.end, !dbg !310

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %gcov_ctr5 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.95, i32 0, i32 2), align 16, !dbg !311
  %8 = add i64 %gcov_ctr5, 1, !dbg !311
  store i64 %8, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.95, i32 0, i32 2), align 16, !dbg !311
  tail call void @trace_seq_puts(ptr noundef %s, ptr noundef nonnull @.str.3) #24, !dbg !312
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #24, !dbg !313
  ret void, !dbg !314
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_event_filter(ptr noundef %filter) local_unnamed_addr #3 align 64 !dbg !315 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !316
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.96, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.96, align 8
  tail call fastcc void @__free_filter(ptr noundef %filter), !dbg !317
  ret void, !dbg !318
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__free_filter(ptr noundef %filter) unnamed_addr #3 align 64 !dbg !319 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !320
  %tobool.not = icmp eq ptr %filter, null, !dbg !321
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !322

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !323
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.97, align 8, !dbg !323
  %0 = add i64 %gcov_ctr, 1, !dbg !323
  store i64 %0, ptr @__llvm_gcov_ctr.97, align 8, !dbg !323
  br label %return, !dbg !323

if.end:                                           ; preds = %entry
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 1), align 8, !dbg !324
  %1 = add i64 %gcov_ctr1, 1, !dbg !324
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 1), align 8, !dbg !324
  %2 = ptrtoint ptr %filter to i32, !dbg !325
  call void @__asan_load4_noabort(i32 %2), !dbg !325
  %3 = load volatile ptr, ptr %filter, align 4, !dbg !325
  %tobool.not.i = icmp eq ptr %3, null, !dbg !328
  br i1 %tobool.not.i, label %if.then.i, label %for.cond.preheader.i, !dbg !329

for.cond.preheader.i:                             ; preds = %if.end
  %pred16.i = getelementptr %struct.prog_entry, ptr %3, i32 0, i32 2, !dbg !330
  %4 = ptrtoint ptr %pred16.i to i32, !dbg !330
  call void @__asan_load4_noabort(i32 %4), !dbg !330
  %5 = load ptr, ptr %pred16.i, align 4, !dbg !330
  %tobool3.not17.i = icmp eq ptr %5, null, !dbg !331
  br i1 %tobool3.not17.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge, !dbg !331

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i, !dbg !331

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !331
  br label %for.end.i, !dbg !331

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22, !dbg !332
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.121, align 16
  %6 = add i64 %gcov_ctr.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.121, align 16
  br label %free_prog.exit, !dbg !333

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %7 = phi ptr [ %10, %for.body.i.for.body.i_crit_edge ], [ %5, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.018.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %7) #24, !dbg !334
  %gcov_ctr7.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.121, i32 0, i32 1), align 8, !dbg !335
  %8 = add i64 %gcov_ctr7.i, 1, !dbg !335
  store i64 %8, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.121, i32 0, i32 1), align 8, !dbg !335
  %inc.i = add i32 %i.018.i, 1, !dbg !335
  %pred.i = getelementptr %struct.prog_entry, ptr %3, i32 %inc.i, i32 2, !dbg !330
  %9 = ptrtoint ptr %pred.i to i32, !dbg !330
  call void @__asan_load4_noabort(i32 %9), !dbg !330
  %10 = load ptr, ptr %pred.i, align 4, !dbg !330
  %tobool3.not.i = icmp eq ptr %10, null, !dbg !331
  br i1 %tobool3.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge, !dbg !331, !llvm.loop !336

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !331
  br label %for.body.i, !dbg !331

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !331
  br label %for.end.i, !dbg !331

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %gcov_ctr8.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.121, i32 0, i32 2), align 16, !dbg !338
  %11 = add i64 %gcov_ctr8.i, 1, !dbg !338
  store i64 %11, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.121, i32 0, i32 2), align 16, !dbg !338
  tail call void @kfree(ptr noundef nonnull %3) #24, !dbg !339
  br label %free_prog.exit, !dbg !340

free_prog.exit:                                   ; preds = %for.end.i, %if.then.i
  %filter_string = getelementptr inbounds %struct.event_filter, ptr %filter, i32 0, i32 1, !dbg !341
  %12 = ptrtoint ptr %filter_string to i32, !dbg !341
  call void @__asan_load4_noabort(i32 %12), !dbg !341
  %13 = load ptr, ptr %filter_string, align 4, !dbg !341
  tail call void @kfree(ptr noundef %13) #24, !dbg !342
  tail call void @kfree(ptr noundef nonnull %filter) #24, !dbg !343
  br label %return, !dbg !344

return:                                           ; preds = %free_prog.exit, %if.then
  ret void, !dbg !344
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @filter_assign_type(ptr noundef readonly %type) local_unnamed_addr #5 align 64 !dbg !345 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !346
  %call = tail call ptr @strstr(ptr noundef %type, ptr noundef nonnull @.str.4), !dbg !347
  %tobool.not = icmp eq ptr %call, null, !dbg !347
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true, !dbg !348

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !348
  br label %if.end, !dbg !348

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.98, align 16, !dbg !349
  %0 = add i64 %gcov_ctr, 1, !dbg !349
  store i64 %0, ptr @__llvm_gcov_ctr.98, align 16, !dbg !349
  %call1 = tail call ptr @strstr(ptr noundef %type, ptr noundef nonnull @.str.5), !dbg !350
  %tobool2.not = icmp eq ptr %call1, null, !dbg !350
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then, !dbg !347

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22, !dbg !347
  br label %if.end, !dbg !347

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22, !dbg !351
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 1), align 8, !dbg !351
  %1 = add i64 %gcov_ctr22, 1, !dbg !351
  store i64 %1, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 1), align 8, !dbg !351
  br label %return, !dbg !351

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call ptr @strstr(ptr noundef %type, ptr noundef nonnull @.str.6), !dbg !352
  %tobool4.not = icmp eq ptr %call3, null, !dbg !352
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %land.lhs.true5, !dbg !353

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22, !dbg !353
  br label %if.end9, !dbg !353

land.lhs.true5:                                   ; preds = %if.end
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 2), align 16, !dbg !354
  %2 = add i64 %gcov_ctr23, 1, !dbg !354
  store i64 %2, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 2), align 16, !dbg !354
  %call6 = tail call ptr @strstr(ptr noundef %type, ptr noundef nonnull @.str.5), !dbg !355
  %tobool7.not = icmp eq ptr %call6, null, !dbg !355
  br i1 %tobool7.not, label %land.lhs.true5.if.end9_crit_edge, label %if.then8, !dbg !352

land.lhs.true5.if.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #22, !dbg !352
  br label %if.end9, !dbg !352

if.then8:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #22, !dbg !356
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 3), align 8, !dbg !356
  %3 = add i64 %gcov_ctr24, 1, !dbg !356
  store i64 %3, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 3), align 8, !dbg !356
  br label %return, !dbg !356

if.end9:                                          ; preds = %land.lhs.true5.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %call10 = tail call ptr @strchr(ptr noundef %type, i32 noundef 91), !dbg !357
  %tobool11.not = icmp eq ptr %call10, null, !dbg !357
  br i1 %tobool11.not, label %if.end9.if.end16_crit_edge, label %land.lhs.true12, !dbg !358

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22, !dbg !358
  br label %if.end16, !dbg !358

land.lhs.true12:                                  ; preds = %if.end9
  %gcov_ctr25 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 4), align 16, !dbg !359
  %4 = add i64 %gcov_ctr25, 1, !dbg !359
  store i64 %4, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 4), align 16, !dbg !359
  %call13 = tail call ptr @strstr(ptr noundef %type, ptr noundef nonnull @.str.5), !dbg !360
  %tobool14.not = icmp eq ptr %call13, null, !dbg !360
  br i1 %tobool14.not, label %land.lhs.true12.if.end16_crit_edge, label %if.then15, !dbg !357

land.lhs.true12.if.end16_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #22, !dbg !357
  br label %if.end16, !dbg !357

if.then15:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #22, !dbg !361
  %gcov_ctr26 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 5), align 8, !dbg !361
  %5 = add i64 %gcov_ctr26, 1, !dbg !361
  store i64 %5, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 5), align 8, !dbg !361
  br label %return, !dbg !361

if.end16:                                         ; preds = %land.lhs.true12.if.end16_crit_edge, %if.end9.if.end16_crit_edge
  %call17 = tail call i32 @strcmp(ptr noundef %type, ptr noundef nonnull dereferenceable(7) @.str.7) #23, !dbg !362
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17), !dbg !363
  %cmp = icmp eq i32 %call17, 0, !dbg !363
  br i1 %cmp, label %if.end16.if.then20_crit_edge, label %lor.lhs.false, !dbg !364

if.end16.if.then20_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #22, !dbg !364
  br label %if.then20, !dbg !364

lor.lhs.false:                                    ; preds = %if.end16
  %gcov_ctr27 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 6), align 16, !dbg !365
  %6 = add i64 %gcov_ctr27, 1, !dbg !365
  store i64 %6, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 6), align 16, !dbg !365
  %call18 = tail call i32 @strcmp(ptr noundef %type, ptr noundef nonnull dereferenceable(13) @.str.8) #23, !dbg !366
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18), !dbg !367
  %cmp19 = icmp eq i32 %call18, 0, !dbg !367
  br i1 %cmp19, label %lor.lhs.false.if.then20_crit_edge, label %if.end21, !dbg !362

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22, !dbg !362
  br label %if.then20, !dbg !362

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.end16.if.then20_crit_edge
  %gcov_ctr28 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 7), align 8, !dbg !368
  %7 = add i64 %gcov_ctr28, 1, !dbg !368
  store i64 %7, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 7), align 8, !dbg !368
  br label %return, !dbg !368

if.end21:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22, !dbg !369
  %gcov_ctr29 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 8), align 16, !dbg !369
  %8 = add i64 %gcov_ctr29, 1, !dbg !369
  store i64 %8, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 8), align 16, !dbg !369
  br label %return, !dbg !369

return:                                           ; preds = %if.end21, %if.then20, %if.then15, %if.then8, %if.then
  %retval.0 = phi i32 [ 2, %if.then ], [ 3, %if.then8 ], [ 1, %if.then15 ], [ 4, %if.then20 ], [ 0, %if.end21 ], !dbg !370
  ret i32 %retval.0, !dbg !371
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @create_event_filter(ptr noundef %tr, ptr noundef %call, ptr noundef %filter_str, i1 noundef zeroext %set_str, ptr nocapture noundef %filterp) local_unnamed_addr #3 align 64 !dbg !372 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !373
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.99, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.99, align 8
  %call1 = tail call fastcc i32 @create_filter(ptr noundef %tr, ptr noundef %call, ptr noundef %filter_str, i1 noundef zeroext %set_str, ptr noundef %filterp), !dbg !374
  ret i32 %call1, !dbg !375
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_filter(ptr noundef %tr, ptr noundef %call, ptr noundef %filter_string, i1 noundef zeroext %set_str, ptr nocapture noundef %filterp) unnamed_addr #3 align 64 !dbg !376 {
entry:
  %pe = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #22, !dbg !377
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pe) #24, !dbg !378
  %0 = ptrtoint ptr %pe to i32, !dbg !379
  call void @__asan_store4_noabort(i32 %0), !dbg !379
  store ptr null, ptr %pe, align 4, !dbg !379
  %1 = ptrtoint ptr %filterp to i32, !dbg !380
  call void @__asan_load4_noabort(i32 %1), !dbg !380
  %2 = load ptr, ptr %filterp, align 4, !dbg !380
  %tobool.not = icmp eq ptr %2, null, !dbg !380
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %do.end, !dbg !380, !prof !381

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !380
  br label %if.end22, !dbg !380

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !380
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1842, i32 noundef 9, ptr noundef null) #24, !dbg !380
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.100, align 16, !dbg !380
  %3 = add i64 %gcov_ctr, 1, !dbg !380
  store i64 %3, ptr @__llvm_gcov_ctr.100, align 16, !dbg !380
  %gcov_ctr34 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.100, i32 0, i32 1), align 8, !dbg !382
  %4 = add i64 %gcov_ctr34, 1, !dbg !382
  store i64 %4, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.100, i32 0, i32 1), align 8, !dbg !382
  %5 = ptrtoint ptr %filterp to i32, !dbg !383
  call void @__asan_store4_noabort(i32 %5), !dbg !383
  store ptr null, ptr %filterp, align 4, !dbg !383
  br label %if.end22, !dbg !384

if.end22:                                         ; preds = %do.end, %entry.if.end22_crit_edge
  %call24 = call fastcc i32 @create_filter_start(ptr noundef %filter_string, i1 noundef zeroext %set_str, ptr noundef nonnull %pe, ptr noundef %filterp), !dbg !385
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24), !dbg !386
  %tobool25.not = icmp eq i32 %call24, 0, !dbg !386
  br i1 %tobool25.not, label %if.end27, label %if.then26, !dbg !386

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #22, !dbg !387
  %gcov_ctr35 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.100, i32 0, i32 2), align 16, !dbg !387
  %6 = add i64 %gcov_ctr35, 1, !dbg !387
  store i64 %6, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.100, i32 0, i32 2), align 16, !dbg !387
  br label %cleanup, !dbg !388

if.end27:                                         ; preds = %if.end22
  %7 = ptrtoint ptr %filterp to i32, !dbg !389
  call void @__asan_load4_noabort(i32 %7), !dbg !389
  %8 = load ptr, ptr %filterp, align 4, !dbg !389
  %9 = ptrtoint ptr %pe to i32, !dbg !390
  call void @__asan_load4_noabort(i32 %9), !dbg !390
  %10 = load ptr, ptr %pe, align 4, !dbg !390
  %call28 = tail call fastcc i32 @process_preds(ptr noundef %call, ptr noundef %filter_string, ptr noundef %8, ptr noundef %10), !dbg !391
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28), !dbg !392
  %tobool29.not = icmp eq i32 %call28, 0, !dbg !392
  br i1 %tobool29.not, label %if.end27.if.end32_crit_edge, label %land.lhs.true, !dbg !393

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #22, !dbg !393
  br label %if.end32, !dbg !393

land.lhs.true:                                    ; preds = %if.end27
  %gcov_ctr36 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.100, i32 0, i32 3), align 8, !dbg !394
  %11 = add i64 %gcov_ctr36, 1, !dbg !394
  store i64 %11, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.100, i32 0, i32 3), align 8, !dbg !394
  br i1 %set_str, label %if.then31, label %land.lhs.true.if.end32_crit_edge, !dbg !392

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22, !dbg !392
  br label %if.end32, !dbg !392

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22, !dbg !395
  %gcov_ctr37 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.100, i32 0, i32 4), align 16, !dbg !395
  %12 = add i64 %gcov_ctr37, 1, !dbg !395
  store i64 %12, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.100, i32 0, i32 4), align 16, !dbg !395
  %13 = ptrtoint ptr %filterp to i32, !dbg !396
  call void @__asan_load4_noabort(i32 %13), !dbg !396
  %14 = load ptr, ptr %filterp, align 4, !dbg !396
  tail call fastcc void @append_filter_err(ptr noundef %tr, ptr noundef %10, ptr noundef %14), !dbg !397
  br label %if.end32, !dbg !397

if.end32:                                         ; preds = %if.then31, %land.lhs.true.if.end32_crit_edge, %if.end27.if.end32_crit_edge
  %gcov_ctr38 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.100, i32 0, i32 5), align 8, !dbg !398
  %15 = add i64 %gcov_ctr38, 1, !dbg !398
  store i64 %15, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.100, i32 0, i32 5), align 8, !dbg !398
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.125, align 8
  %16 = add i64 %gcov_ctr.i, 1
  store i64 %16, ptr @__llvm_gcov_ctr.125, align 8
  tail call void @kfree(ptr noundef %10) #24, !dbg !399
  br label %cleanup, !dbg !402

cleanup:                                          ; preds = %if.end32, %if.then26
  %retval.0 = phi i32 [ %call24, %if.then26 ], [ %call28, %if.end32 ], !dbg !403
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pe) #24, !dbg !404
  ret i32 %retval.0, !dbg !404
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @apply_event_filter(ptr noundef %file, ptr noundef %filter_string) local_unnamed_addr #3 align 64 !dbg !405 {
entry:
  %filter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #22, !dbg !406
  %event_call = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 1, !dbg !407
  %0 = ptrtoint ptr %event_call to i32, !dbg !407
  call void @__asan_load4_noabort(i32 %0), !dbg !407
  %1 = load ptr, ptr %event_call, align 4, !dbg !407
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %filter) #24, !dbg !408
  %2 = ptrtoint ptr %filter to i32, !dbg !409
  call void @__asan_store4_noabort(i32 %2), !dbg !409
  store ptr null, ptr %filter, align 4, !dbg !409
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.102, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.102, align 8
  %call.i = tail call ptr @strim(ptr noundef %filter_string) #24, !dbg !410
  %call2 = tail call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(2) @.str.9) #23, !dbg !414
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2), !dbg !414
  %tobool.not = icmp eq i32 %call2, 0, !dbg !414
  br i1 %tobool.not, label %if.then, label %if.end6, !dbg !415

if.then:                                          ; preds = %entry
  %gcov_ctr.i36 = load i64, ptr @__llvm_gcov_ctr.103, align 8
  %4 = add i64 %gcov_ctr.i36, 1
  store i64 %4, ptr @__llvm_gcov_ctr.103, align 8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 7, !dbg !416
  %5 = ptrtoint ptr %flags.i to i32, !dbg !416
  call void @__asan_load4_noabort(i32 %5), !dbg !416
  %6 = load i32, ptr %flags.i, align 4, !dbg !416
  %and.i = and i32 %6, -9, !dbg !419
  store i32 %and.i, ptr %flags.i, align 4, !dbg !419
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %and.i), !dbg !420
  %cmp.not.i = icmp eq i32 %6, %and.i, !dbg !420
  br i1 %cmp.not.i, label %if.then.filter_disable.exit_crit_edge, label %if.then.i, !dbg !421

if.then.filter_disable.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22, !dbg !421
  br label %filter_disable.exit, !dbg !421

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22, !dbg !422
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 1), align 8, !dbg !422
  %7 = add i64 %gcov_ctr3.i, 1, !dbg !422
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 1), align 8, !dbg !422
  tail call void @trace_buffered_event_disable() #24, !dbg !422
  br label %filter_disable.exit, !dbg !422

filter_disable.exit:                              ; preds = %if.then.i, %if.then.filter_disable.exit_crit_edge
  %gcov_ctr.i37 = load i64, ptr @__llvm_gcov_ctr.94, align 8
  %8 = add i64 %gcov_ctr.i37, 1
  store i64 %8, ptr @__llvm_gcov_ctr.94, align 8
  %filter.i = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 2, !dbg !423
  %9 = ptrtoint ptr %filter.i to i32, !dbg !423
  call void @__asan_load4_noabort(i32 %9), !dbg !423
  %10 = load ptr, ptr %filter.i, align 4, !dbg !423
  %tobool4.not = icmp eq ptr %10, null, !dbg !425
  br i1 %tobool4.not, label %if.then5, label %if.end, !dbg !426

if.then5:                                         ; preds = %filter_disable.exit
  call void @__sanitizer_cov_trace_pc() #22, !dbg !427
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 1), align 8, !dbg !427
  %11 = add i64 %gcov_ctr20, 1, !dbg !427
  store i64 %11, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 1), align 8, !dbg !427
  br label %cleanup, !dbg !427

if.end:                                           ; preds = %filter_disable.exit
  call void @__sanitizer_cov_trace_pc() #22, !dbg !428
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 2), align 16, !dbg !428
  %12 = add i64 %gcov_ctr21, 1, !dbg !428
  store i64 %12, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 2), align 16, !dbg !428
  %13 = ptrtoint ptr %filter.i to i32, !dbg !429
  call void @__asan_store4_noabort(i32 %13), !dbg !429
  store volatile ptr null, ptr %filter.i, align 4, !dbg !429
  %gcov_ctr.i39 = load i64, ptr @__llvm_gcov_ctr.104, align 8, !dbg !429
  %14 = add i64 %gcov_ctr.i39, 1, !dbg !429
  store i64 %14, ptr @__llvm_gcov_ctr.104, align 8, !dbg !429
  %gcov_ctr.i40 = load i64, ptr @__llvm_gcov_ctr.105, align 8, !dbg !432
  %15 = add i64 %gcov_ctr.i40, 1, !dbg !432
  store i64 %15, ptr @__llvm_gcov_ctr.105, align 8, !dbg !432
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #24, !dbg !432
  tail call void @synchronize_rcu() #24, !dbg !436
  tail call fastcc void @__free_filter(ptr noundef nonnull %10), !dbg !437
  br label %cleanup, !dbg !438

if.end6:                                          ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.101, align 16, !dbg !439
  %16 = add i64 %gcov_ctr, 1, !dbg !439
  store i64 %16, ptr @__llvm_gcov_ctr.101, align 16, !dbg !439
  %tr = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 4, !dbg !440
  %17 = ptrtoint ptr %tr to i32, !dbg !440
  call void @__asan_load4_noabort(i32 %17), !dbg !440
  %18 = load ptr, ptr %tr, align 4, !dbg !440
  %call7 = call fastcc i32 @create_filter(ptr noundef %18, ptr noundef %1, ptr noundef %filter_string, i1 noundef zeroext true, ptr noundef nonnull %filter), !dbg !441
  %19 = ptrtoint ptr %filter to i32, !dbg !442
  call void @__asan_load4_noabort(i32 %19), !dbg !442
  %20 = load ptr, ptr %filter, align 4, !dbg !442
  %tobool8.not = icmp eq ptr %20, null, !dbg !442
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.then9, !dbg !442

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22, !dbg !442
  br label %cleanup, !dbg !442

if.then9:                                         ; preds = %if.end6
  %gcov_ctr.i41 = load i64, ptr @__llvm_gcov_ctr.94, align 8
  %21 = add i64 %gcov_ctr.i41, 1
  store i64 %21, ptr @__llvm_gcov_ctr.94, align 8
  %filter.i42 = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 2, !dbg !443
  %22 = ptrtoint ptr %filter.i42 to i32, !dbg !443
  call void @__asan_load4_noabort(i32 %22), !dbg !443
  %23 = load ptr, ptr %filter.i42, align 4, !dbg !443
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7), !dbg !445
  %tobool11.not = icmp eq i32 %call7, 0, !dbg !445
  br i1 %tobool11.not, label %if.then12, label %if.else, !dbg !446

if.then12:                                        ; preds = %if.then9
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 3), align 8, !dbg !447
  %24 = add i64 %gcov_ctr22, 1, !dbg !447
  store i64 %24, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 3), align 8, !dbg !447
  %gcov_ctr.i43 = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %25 = add i64 %gcov_ctr.i43, 1
  store i64 %25, ptr @__llvm_gcov_ctr.106, align 8
  %flags.i44 = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 7, !dbg !448
  %26 = ptrtoint ptr %flags.i44 to i32, !dbg !448
  call void @__asan_load4_noabort(i32 %26), !dbg !448
  %27 = load i32, ptr %flags.i44, align 4, !dbg !448
  %or.i = or i32 %27, 8, !dbg !451
  store i32 %or.i, ptr %flags.i44, align 4, !dbg !451
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %or.i), !dbg !452
  %cmp.not.i45 = icmp eq i32 %27, %or.i, !dbg !452
  br i1 %cmp.not.i45, label %if.then12.if.end13_crit_edge, label %if.then.i47, !dbg !453

if.then12.if.end13_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #22, !dbg !453
  br label %if.end13, !dbg !453

if.then.i47:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #22, !dbg !454
  %gcov_ctr3.i46 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.106, i32 0, i32 1), align 8, !dbg !454
  %28 = add i64 %gcov_ctr3.i46, 1, !dbg !454
  store i64 %28, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.106, i32 0, i32 1), align 8, !dbg !454
  tail call void @trace_buffered_event_enable() #24, !dbg !454
  br label %if.end13, !dbg !454

if.else:                                          ; preds = %if.then9
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 4), align 16, !dbg !455
  %29 = add i64 %gcov_ctr23, 1, !dbg !455
  store i64 %29, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 4), align 16, !dbg !455
  %gcov_ctr.i48 = load i64, ptr @__llvm_gcov_ctr.103, align 8
  %30 = add i64 %gcov_ctr.i48, 1
  store i64 %30, ptr @__llvm_gcov_ctr.103, align 8
  %flags.i49 = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 7, !dbg !456
  %31 = ptrtoint ptr %flags.i49 to i32, !dbg !456
  call void @__asan_load4_noabort(i32 %31), !dbg !456
  %32 = load i32, ptr %flags.i49, align 4, !dbg !456
  %and.i50 = and i32 %32, -9, !dbg !458
  store i32 %and.i50, ptr %flags.i49, align 4, !dbg !458
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %and.i50), !dbg !459
  %cmp.not.i51 = icmp eq i32 %32, %and.i50, !dbg !459
  br i1 %cmp.not.i51, label %if.else.if.end13_crit_edge, label %if.then.i53, !dbg !460

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22, !dbg !460
  br label %if.end13, !dbg !460

if.then.i53:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22, !dbg !461
  %gcov_ctr3.i52 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 1), align 8, !dbg !461
  %33 = add i64 %gcov_ctr3.i52, 1, !dbg !461
  store i64 %33, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 1), align 8, !dbg !461
  tail call void @trace_buffered_event_disable() #24, !dbg !461
  br label %if.end13, !dbg !461

if.end13:                                         ; preds = %if.then.i53, %if.else.if.end13_crit_edge, %if.then.i47, %if.then12.if.end13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #24, !dbg !462, !srcloc !465
  %34 = ptrtoint ptr %filter.i42 to i32, !dbg !462
  call void @__asan_store4_noabort(i32 %34), !dbg !462
  store volatile ptr %20, ptr %filter.i42, align 4, !dbg !462
  %gcov_ctr34.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.107, i32 0, i32 2), align 16
  %35 = add i64 %gcov_ctr34.i, 1
  store i64 %35, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.107, i32 0, i32 2), align 16
  %tobool14.not = icmp eq ptr %23, null, !dbg !466
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.then15, !dbg !466

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22, !dbg !466
  br label %cleanup, !dbg !466

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22, !dbg !467
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 5), align 8, !dbg !467
  %36 = add i64 %gcov_ctr24, 1, !dbg !467
  store i64 %36, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 5), align 8, !dbg !467
  %gcov_ctr.i55 = load i64, ptr @__llvm_gcov_ctr.105, align 8, !dbg !468
  %37 = add i64 %gcov_ctr.i55, 1, !dbg !468
  store i64 %37, ptr @__llvm_gcov_ctr.105, align 8, !dbg !468
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #24, !dbg !468
  tail call void @synchronize_rcu() #24, !dbg !470
  tail call fastcc void @__free_filter(ptr noundef nonnull %23), !dbg !471
  br label %cleanup, !dbg !472

cleanup:                                          ; preds = %if.then15, %if.end13.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end, %if.then5
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %if.then5 ], [ %call7, %if.end13.cleanup_crit_edge ], [ %call7, %if.then15 ], [ %call7, %if.end6.cleanup_crit_edge ], !dbg !473
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %filter) #24, !dbg !474
  ret i32 %retval.0, !dbg !474
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @apply_subsystem_event_filter(ptr noundef readonly %dir, ptr noundef %filter_string) local_unnamed_addr #3 align 64 !dbg !475 {
entry:
  %filter_list.i.i = alloca %struct.list_head, align 4
  %pe.i = alloca ptr, align 4
  %filter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #22, !dbg !476
  %subsystem = getelementptr inbounds %struct.trace_subsystem_dir, ptr %dir, i32 0, i32 1, !dbg !477
  %0 = ptrtoint ptr %subsystem to i32, !dbg !477
  call void @__asan_load4_noabort(i32 %0), !dbg !477
  %1 = load ptr, ptr %subsystem, align 4, !dbg !477
  %tr1 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %dir, i32 0, i32 2, !dbg !478
  %2 = ptrtoint ptr %tr1 to i32, !dbg !478
  call void @__asan_load4_noabort(i32 %2), !dbg !478
  %3 = load ptr, ptr %tr1, align 4, !dbg !478
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %filter) #24, !dbg !479
  %4 = ptrtoint ptr %filter to i32, !dbg !480
  call void @__asan_store4_noabort(i32 %4), !dbg !480
  store ptr null, ptr %filter, align 4, !dbg !480
  tail call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #24, !dbg !481
  %nr_events = getelementptr inbounds %struct.trace_subsystem_dir, ptr %dir, i32 0, i32 5, !dbg !482
  %5 = ptrtoint ptr %nr_events to i32, !dbg !482
  call void @__asan_load4_noabort(i32 %5), !dbg !482
  %6 = load i32, ptr %nr_events, align 4, !dbg !482
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6), !dbg !483
  %tobool.not = icmp eq i32 %6, 0, !dbg !483
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !484

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !485
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.108, align 16, !dbg !485
  %7 = add i64 %gcov_ctr, 1, !dbg !485
  store i64 %7, ptr @__llvm_gcov_ctr.108, align 16, !dbg !485
  br label %out_unlock, !dbg !486

if.end:                                           ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.102, align 8
  %8 = add i64 %gcov_ctr.i, 1
  store i64 %8, ptr @__llvm_gcov_ctr.102, align 8
  %call.i = tail call ptr @strim(ptr noundef %filter_string) #24, !dbg !487
  %call2 = tail call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(2) @.str.9) #23, !dbg !489
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2), !dbg !489
  %tobool3.not = icmp eq i32 %call2, 0, !dbg !489
  br i1 %tobool3.not, label %if.then4, label %if.end8, !dbg !490

if.then4:                                         ; preds = %if.end
  %gcov_ctr15 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 1), align 8, !dbg !491
  %9 = add i64 %gcov_ctr15, 1, !dbg !491
  store i64 %9, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 1), align 8, !dbg !491
  %gcov_ctr.i29 = load i64, ptr @__llvm_gcov_ctr.109, align 16
  %10 = add i64 %gcov_ctr.i29, 1
  store i64 %10, ptr @__llvm_gcov_ctr.109, align 16
  %events.i = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 35, !dbg !492
  %11 = ptrtoint ptr %events.i to i32, !dbg !492
  call void @__asan_load4_noabort(i32 %11), !dbg !492
  %file.014.i = load ptr, ptr %events.i, align 4, !dbg !492
  %cmp.not15.i = icmp eq ptr %file.014.i, %events.i, !dbg !492
  br i1 %cmp.not15.i, label %if.then4.filter_free_subsystem_preds.exit_crit_edge, label %if.then4.for.body.i_crit_edge, !dbg !492

if.then4.for.body.i_crit_edge:                    ; preds = %if.then4
  br label %for.body.i, !dbg !492

if.then4.filter_free_subsystem_preds.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #22, !dbg !492
  br label %filter_free_subsystem_preds.exit, !dbg !492

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then4.for.body.i_crit_edge
  %file.016.i = phi ptr [ %file.0.i, %for.inc.i.for.body.i_crit_edge ], [ %file.014.i, %if.then4.for.body.i_crit_edge ]
  %system.i = getelementptr inbounds %struct.trace_event_file, ptr %file.016.i, i32 0, i32 5, !dbg !495
  %12 = ptrtoint ptr %system.i to i32, !dbg !495
  call void @__asan_load4_noabort(i32 %12), !dbg !495
  %13 = load ptr, ptr %system.i, align 4, !dbg !495
  %cmp2.not.i = icmp eq ptr %13, %dir, !dbg !496
  br i1 %cmp2.not.i, label %if.end.i, label %if.then.i, !dbg !497

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !498
  %gcov_ctr8.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 1), align 8, !dbg !498
  %14 = add i64 %gcov_ctr8.i, 1, !dbg !498
  store i64 %14, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 1), align 8, !dbg !498
  br label %for.inc.i, !dbg !498

if.end.i:                                         ; preds = %for.body.i
  %gcov_ctr9.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 2), align 16, !dbg !499
  %15 = add i64 %gcov_ctr9.i, 1, !dbg !499
  store i64 %15, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 2), align 16, !dbg !499
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.214, align 8
  %16 = add i64 %gcov_ctr.i.i, 1
  store i64 %16, ptr @__llvm_gcov_ctr.214, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.103, align 8
  %17 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %17, ptr @__llvm_gcov_ctr.103, align 8
  %flags.i.i.i = getelementptr inbounds %struct.trace_event_file, ptr %file.016.i, i32 0, i32 7, !dbg !500
  %18 = ptrtoint ptr %flags.i.i.i to i32, !dbg !500
  call void @__asan_load4_noabort(i32 %18), !dbg !500
  %19 = load i32, ptr %flags.i.i.i, align 4, !dbg !500
  %and.i.i.i = and i32 %19, -9, !dbg !504
  store i32 %and.i.i.i, ptr %flags.i.i.i, align 4, !dbg !504
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %and.i.i.i), !dbg !505
  %cmp.not.i.i.i = icmp eq i32 %19, %and.i.i.i, !dbg !505
  br i1 %cmp.not.i.i.i, label %if.end.i.filter_disable.exit.i.i_crit_edge, label %if.then.i.i.i, !dbg !506

if.end.i.filter_disable.exit.i.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !506
  br label %filter_disable.exit.i.i, !dbg !506

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !507
  %gcov_ctr3.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 1), align 8, !dbg !507
  %20 = add i64 %gcov_ctr3.i.i.i, 1, !dbg !507
  store i64 %20, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 1), align 8, !dbg !507
  tail call void @trace_buffered_event_disable() #24, !dbg !507
  br label %filter_disable.exit.i.i, !dbg !507

filter_disable.exit.i.i:                          ; preds = %if.then.i.i.i, %if.end.i.filter_disable.exit.i.i_crit_edge
  %filter.i.i = getelementptr inbounds %struct.trace_event_file, ptr %file.016.i, i32 0, i32 2, !dbg !508
  %21 = ptrtoint ptr %filter.i.i to i32, !dbg !508
  call void @__asan_load4_noabort(i32 %21), !dbg !508
  %22 = load ptr, ptr %filter.i.i, align 4, !dbg !508
  %tobool.not.i.i.i = icmp eq ptr %22, null, !dbg !509
  br i1 %tobool.not.i.i.i, label %if.then.i3.i.i, label %if.end.i.i.i, !dbg !512

if.then.i3.i.i:                                   ; preds = %filter_disable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !513
  %gcov_ctr.i2.i.i = load i64, ptr @__llvm_gcov_ctr.110, align 8, !dbg !513
  %23 = add i64 %gcov_ctr.i2.i.i, 1, !dbg !513
  store i64 %23, ptr @__llvm_gcov_ctr.110, align 8, !dbg !513
  br label %for.inc.i, !dbg !513

if.end.i.i.i:                                     ; preds = %filter_disable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !514
  %gcov_ctr2.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.110, i32 0, i32 1), align 8, !dbg !514
  %24 = add i64 %gcov_ctr2.i.i.i, 1, !dbg !514
  store i64 %24, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.110, i32 0, i32 1), align 8, !dbg !514
  %filter_string.i.i.i = getelementptr inbounds %struct.event_filter, ptr %22, i32 0, i32 1, !dbg !515
  %25 = ptrtoint ptr %filter_string.i.i.i to i32, !dbg !515
  call void @__asan_load4_noabort(i32 %25), !dbg !515
  %26 = load ptr, ptr %filter_string.i.i.i, align 4, !dbg !515
  tail call void @kfree(ptr noundef %26) #24, !dbg !516
  %27 = ptrtoint ptr %filter_string.i.i.i to i32, !dbg !517
  call void @__asan_store4_noabort(i32 %27), !dbg !517
  store ptr null, ptr %filter_string.i.i.i, align 4, !dbg !517
  br label %for.inc.i, !dbg !518

for.inc.i:                                        ; preds = %if.end.i.i.i, %if.then.i3.i.i, %if.then.i
  %28 = ptrtoint ptr %file.016.i to i32, !dbg !492
  call void @__asan_load4_noabort(i32 %28), !dbg !492
  %file.0.i = load ptr, ptr %file.016.i, align 4, !dbg !492
  %cmp.not.i = icmp eq ptr %file.0.i, %events.i, !dbg !492
  br i1 %cmp.not.i, label %for.inc.i.filter_free_subsystem_preds.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge, !dbg !492, !llvm.loop !519

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !492
  br label %for.body.i, !dbg !492

for.inc.i.filter_free_subsystem_preds.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !492
  br label %filter_free_subsystem_preds.exit, !dbg !492

filter_free_subsystem_preds.exit:                 ; preds = %for.inc.i.filter_free_subsystem_preds.exit_crit_edge, %if.then4.filter_free_subsystem_preds.exit_crit_edge
  %filter5 = getelementptr inbounds %struct.event_subsystem, ptr %1, i32 0, i32 2, !dbg !521
  %29 = ptrtoint ptr %filter5 to i32, !dbg !521
  call void @__asan_load4_noabort(i32 %29), !dbg !521
  %30 = load ptr, ptr %filter5, align 4, !dbg !521
  %tobool.not.i = icmp eq ptr %30, null, !dbg !522
  br i1 %tobool.not.i, label %if.then.i31, label %if.end.i32, !dbg !524

if.then.i31:                                      ; preds = %filter_free_subsystem_preds.exit
  call void @__sanitizer_cov_trace_pc() #22, !dbg !525
  %gcov_ctr.i30 = load i64, ptr @__llvm_gcov_ctr.110, align 8, !dbg !525
  %31 = add i64 %gcov_ctr.i30, 1, !dbg !525
  store i64 %31, ptr @__llvm_gcov_ctr.110, align 8, !dbg !525
  br label %remove_filter_string.exit, !dbg !525

if.end.i32:                                       ; preds = %filter_free_subsystem_preds.exit
  call void @__sanitizer_cov_trace_pc() #22, !dbg !526
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.110, i32 0, i32 1), align 8, !dbg !526
  %32 = add i64 %gcov_ctr2.i, 1, !dbg !526
  store i64 %32, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.110, i32 0, i32 1), align 8, !dbg !526
  %filter_string.i = getelementptr inbounds %struct.event_filter, ptr %30, i32 0, i32 1, !dbg !527
  %33 = ptrtoint ptr %filter_string.i to i32, !dbg !527
  call void @__asan_load4_noabort(i32 %33), !dbg !527
  %34 = load ptr, ptr %filter_string.i, align 4, !dbg !527
  tail call void @kfree(ptr noundef %34) #24, !dbg !528
  %35 = ptrtoint ptr %filter_string.i to i32, !dbg !529
  call void @__asan_store4_noabort(i32 %35), !dbg !529
  store ptr null, ptr %filter_string.i, align 4, !dbg !529
  br label %remove_filter_string.exit, !dbg !530

remove_filter_string.exit:                        ; preds = %if.end.i32, %if.then.i31
  %36 = ptrtoint ptr %filter5 to i32, !dbg !531
  call void @__asan_load4_noabort(i32 %36), !dbg !531
  %37 = load ptr, ptr %filter5, align 4, !dbg !531
  store ptr null, ptr %filter5, align 4, !dbg !532
  %gcov_ctr.i33 = load i64, ptr @__llvm_gcov_ctr.105, align 8, !dbg !533
  %38 = add i64 %gcov_ctr.i33, 1, !dbg !533
  store i64 %38, ptr @__llvm_gcov_ctr.105, align 8, !dbg !533
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #24, !dbg !533
  tail call void @synchronize_rcu() #24, !dbg !535
  %gcov_ctr.i34 = load i64, ptr @__llvm_gcov_ctr.111, align 16
  %39 = add i64 %gcov_ctr.i34, 1
  store i64 %39, ptr @__llvm_gcov_ctr.111, align 16
  %40 = ptrtoint ptr %events.i to i32, !dbg !536
  call void @__asan_load4_noabort(i32 %40), !dbg !536
  %file.014.i36 = load ptr, ptr %events.i, align 4, !dbg !536
  %cmp.not15.i37 = icmp eq ptr %file.014.i36, %events.i, !dbg !536
  br i1 %cmp.not15.i37, label %remove_filter_string.exit.filter_free_subsystem_filters.exit_crit_edge, label %remove_filter_string.exit.for.body.i41_crit_edge, !dbg !536

remove_filter_string.exit.for.body.i41_crit_edge: ; preds = %remove_filter_string.exit
  br label %for.body.i41, !dbg !536

remove_filter_string.exit.filter_free_subsystem_filters.exit_crit_edge: ; preds = %remove_filter_string.exit
  call void @__sanitizer_cov_trace_pc() #22, !dbg !536
  br label %filter_free_subsystem_filters.exit, !dbg !536

for.body.i41:                                     ; preds = %for.inc.i50.for.body.i41_crit_edge, %remove_filter_string.exit.for.body.i41_crit_edge
  %file.016.i38 = phi ptr [ %file.0.i48, %for.inc.i50.for.body.i41_crit_edge ], [ %file.014.i36, %remove_filter_string.exit.for.body.i41_crit_edge ]
  %system.i39 = getelementptr inbounds %struct.trace_event_file, ptr %file.016.i38, i32 0, i32 5, !dbg !539
  %41 = ptrtoint ptr %system.i39 to i32, !dbg !539
  call void @__asan_load4_noabort(i32 %41), !dbg !539
  %42 = load ptr, ptr %system.i39, align 4, !dbg !539
  %cmp2.not.i40 = icmp eq ptr %42, %dir, !dbg !540
  br i1 %cmp2.not.i40, label %if.end.i47, label %if.then.i43, !dbg !541

if.then.i43:                                      ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #22, !dbg !542
  %gcov_ctr8.i42 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.111, i32 0, i32 1), align 8, !dbg !542
  %43 = add i64 %gcov_ctr8.i42, 1, !dbg !542
  store i64 %43, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.111, i32 0, i32 1), align 8, !dbg !542
  br label %for.inc.i50, !dbg !542

if.end.i47:                                       ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #22, !dbg !543
  %gcov_ctr9.i44 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.111, i32 0, i32 2), align 16, !dbg !543
  %44 = add i64 %gcov_ctr9.i44, 1, !dbg !543
  store i64 %44, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.111, i32 0, i32 2), align 16, !dbg !543
  %gcov_ctr.i.i45 = load i64, ptr @__llvm_gcov_ctr.215, align 8
  %45 = add i64 %gcov_ctr.i.i45, 1
  store i64 %45, ptr @__llvm_gcov_ctr.215, align 8
  %filter.i.i46 = getelementptr inbounds %struct.trace_event_file, ptr %file.016.i38, i32 0, i32 2, !dbg !544
  %46 = ptrtoint ptr %filter.i.i46 to i32, !dbg !544
  call void @__asan_load4_noabort(i32 %46), !dbg !544
  %47 = load ptr, ptr %filter.i.i46, align 4, !dbg !544
  tail call fastcc void @__free_filter(ptr noundef %47) #24, !dbg !547
  %48 = ptrtoint ptr %filter.i.i46 to i32, !dbg !548
  call void @__asan_store4_noabort(i32 %48), !dbg !548
  store ptr null, ptr %filter.i.i46, align 4, !dbg !548
  br label %for.inc.i50, !dbg !549

for.inc.i50:                                      ; preds = %if.end.i47, %if.then.i43
  %49 = ptrtoint ptr %file.016.i38 to i32, !dbg !536
  call void @__asan_load4_noabort(i32 %49), !dbg !536
  %file.0.i48 = load ptr, ptr %file.016.i38, align 4, !dbg !536
  %cmp.not.i49 = icmp eq ptr %file.0.i48, %events.i, !dbg !536
  br i1 %cmp.not.i49, label %for.inc.i50.filter_free_subsystem_filters.exit_crit_edge, label %for.inc.i50.for.body.i41_crit_edge, !dbg !536, !llvm.loop !550

for.inc.i50.for.body.i41_crit_edge:               ; preds = %for.inc.i50
  call void @__sanitizer_cov_trace_pc() #22, !dbg !536
  br label %for.body.i41, !dbg !536

for.inc.i50.filter_free_subsystem_filters.exit_crit_edge: ; preds = %for.inc.i50
  call void @__sanitizer_cov_trace_pc() #22, !dbg !536
  br label %filter_free_subsystem_filters.exit, !dbg !536

filter_free_subsystem_filters.exit:               ; preds = %for.inc.i50.filter_free_subsystem_filters.exit_crit_edge, %remove_filter_string.exit.filter_free_subsystem_filters.exit_crit_edge
  tail call fastcc void @__free_filter(ptr noundef %37), !dbg !551
  br label %out_unlock, !dbg !552

if.end8:                                          ; preds = %if.end
  %gcov_ctr.i51 = load i64, ptr @__llvm_gcov_ctr.112, align 16
  %50 = add i64 %gcov_ctr.i51, 1
  store i64 %50, ptr @__llvm_gcov_ctr.112, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pe.i) #24, !dbg !553
  %51 = ptrtoint ptr %pe.i to i32, !dbg !556
  call void @__asan_store4_noabort(i32 %51), !dbg !556
  store ptr null, ptr %pe.i, align 4, !dbg !556
  %call.i52 = call fastcc i32 @create_filter_start(ptr noundef %filter_string, i1 noundef zeroext true, ptr noundef nonnull %pe.i, ptr noundef nonnull %filter) #24, !dbg !557
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52), !dbg !558
  %tobool.not.i53 = icmp eq i32 %call.i52, 0, !dbg !558
  br i1 %tobool.not.i53, label %if.then.i54, label %if.end8.create_system_filter.exit_crit_edge, !dbg !559

if.end8.create_system_filter.exit_crit_edge:      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22, !dbg !559
  br label %create_system_filter.exit, !dbg !559

if.then.i54:                                      ; preds = %if.end8
  %52 = ptrtoint ptr %tr1 to i32, !dbg !560
  call void @__asan_load4_noabort(i32 %52), !dbg !560
  %53 = load ptr, ptr %tr1, align 4, !dbg !560
  %54 = ptrtoint ptr %pe.i to i32, !dbg !561
  call void @__asan_load4_noabort(i32 %54), !dbg !561
  %55 = load ptr, ptr %pe.i, align 4, !dbg !561
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filter_list.i.i) #24, !dbg !562
  %56 = getelementptr inbounds %struct.list_head, ptr %filter_list.i.i, i32 0, i32 1, !dbg !562
  %57 = ptrtoint ptr %filter_list.i.i to i32, !dbg !562
  call void @__asan_store4_noabort(i32 %57), !dbg !562
  store ptr %filter_list.i.i, ptr %filter_list.i.i, align 4, !dbg !562
  %58 = ptrtoint ptr %56 to i32, !dbg !562
  call void @__asan_store4_noabort(i32 %58), !dbg !562
  store ptr %filter_list.i.i, ptr %56, align 4, !dbg !562
  %events.i.i = getelementptr inbounds %struct.trace_array, ptr %53, i32 0, i32 35, !dbg !565
  %59 = ptrtoint ptr %events.i.i to i32, !dbg !565
  call void @__asan_load4_noabort(i32 %59), !dbg !565
  %file.0215.i.i = load ptr, ptr %events.i.i, align 4, !dbg !565
  %cmp.not216.i.i = icmp eq ptr %file.0215.i.i, %events.i.i, !dbg !565
  br i1 %cmp.not216.i.i, label %if.then.i54.fail55.i.i_crit_edge, label %for.body.lr.ph.i.i, !dbg !565

if.then.i54.fail55.i.i_crit_edge:                 ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #22, !dbg !565
  br label %fail55.i.i, !dbg !565

for.body.lr.ph.i.i:                               ; preds = %if.then.i54
  %lasterr_pos.i.i.i = getelementptr inbounds %struct.filter_parse_error, ptr %55, i32 0, i32 1
  br label %for.body.outer.i.i, !dbg !565

for.body.outer.i.i:                               ; preds = %for.inc.thread.i.i.for.body.outer.i.i_crit_edge, %for.body.lr.ph.i.i
  %file.0218.ph.i.i = phi ptr [ %file.0236.i.i, %for.inc.thread.i.i.for.body.outer.i.i_crit_edge ], [ %file.0215.i.i, %for.body.lr.ph.i.i ]
  %fail.0.off0217.ph.i.i = phi i1 [ false, %for.inc.thread.i.i.for.body.outer.i.i_crit_edge ], [ true, %for.body.lr.ph.i.i ]
  br label %for.body.i.i, !dbg !565

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.outer.i.i
  %file.0218.i.i = phi ptr [ %file.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %file.0218.ph.i.i, %for.body.outer.i.i ]
  %system.i.i = getelementptr inbounds %struct.trace_event_file, ptr %file.0218.i.i, i32 0, i32 5, !dbg !566
  %60 = ptrtoint ptr %system.i.i to i32, !dbg !566
  call void @__asan_load4_noabort(i32 %60), !dbg !566
  %61 = load ptr, ptr %system.i.i, align 4, !dbg !566
  %cmp4.not.i.i = icmp eq ptr %61, %dir, !dbg !567
  br i1 %cmp4.not.i.i, label %if.end.i.i, label %for.inc.i.i, !dbg !568

if.end.i.i:                                       ; preds = %for.body.i.i
  %gcov_ctr.i.i.i55 = load i64, ptr @__llvm_gcov_ctr.126, align 8
  %62 = add i64 %gcov_ctr.i.i.i55, 1
  store i64 %62, ptr @__llvm_gcov_ctr.126, align 8
  %gcov_ctr79.i.i.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.129, i32 0, i32 1), align 8, !dbg !569
  %63 = add i64 %gcov_ctr79.i.i.i.i.i, 1, !dbg !569
  store i64 %63, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.129, i32 0, i32 1), align 8, !dbg !569
  %gcov_ctr11.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.127, i32 0, i32 2), align 16, !dbg !577
  %64 = add i64 %gcov_ctr11.i.i.i.i, 1, !dbg !577
  store i64 %64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.127, i32 0, i32 2), align 16, !dbg !577
  %gcov_ctr.i24.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.130, align 16, !dbg !578
  %65 = add i64 %gcov_ctr.i24.i.i.i.i, 1, !dbg !578
  store i64 %65, ptr @__llvm_gcov_ctr.130, align 16, !dbg !578
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32)), !dbg !581
  %66 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4, !dbg !581
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %66, i32 noundef 3520, i32 noundef 8) #25, !dbg !582
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null, !dbg !583
  br i1 %tobool.not.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !584

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !585
  %gcov_ctr110.i.i = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.216, i32 0, i32 1), align 8, !dbg !585
  %67 = add i64 %gcov_ctr110.i.i, 1, !dbg !585
  store i64 %67, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.216, i32 0, i32 1), align 8, !dbg !585
  br label %fail_mem.i.i, !dbg !585

if.end6.i.i:                                      ; preds = %if.end.i.i
  %call7.i.i = call noalias ptr @kstrdup(ptr noundef %filter_string, i32 noundef 3264) #24, !dbg !586
  %filter_string8.i.i = getelementptr inbounds %struct.event_filter, ptr %call7.i.i.i.i, i32 0, i32 1, !dbg !587
  %68 = ptrtoint ptr %filter_string8.i.i to i32, !dbg !588
  call void @__asan_store4_noabort(i32 %68), !dbg !588
  store ptr %call7.i.i, ptr %filter_string8.i.i, align 4, !dbg !588
  %tobool10.not.i.i = icmp eq ptr %call7.i.i, null, !dbg !589
  br i1 %tobool10.not.i.i, label %if.then11.i.i, label %if.end12.i.i, !dbg !590

if.then11.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !591
  %gcov_ctr111.i.i = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.216, i32 0, i32 2), align 16, !dbg !591
  %69 = add i64 %gcov_ctr111.i.i, 1, !dbg !591
  store i64 %69, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.216, i32 0, i32 2), align 16, !dbg !591
  br label %fail_mem.i.i, !dbg !591

if.end12.i.i:                                     ; preds = %if.end6.i.i
  %event_call.i.i = getelementptr inbounds %struct.trace_event_file, ptr %file.0218.i.i, i32 0, i32 1, !dbg !592
  %70 = ptrtoint ptr %event_call.i.i to i32, !dbg !592
  call void @__asan_load4_noabort(i32 %70), !dbg !592
  %71 = load ptr, ptr %event_call.i.i, align 4, !dbg !592
  %call13.i.i = call fastcc i32 @process_preds(ptr noundef %71, ptr noundef %filter_string, ptr noundef nonnull %call7.i.i.i.i, ptr noundef %55) #24, !dbg !593
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i), !dbg !594
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0, !dbg !594
  br i1 %tobool14.not.i.i, label %if.else.i.i, label %if.then15.i.i, !dbg !594

if.then15.i.i:                                    ; preds = %if.end12.i.i
  %gcov_ctr112.i.i = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.216, i32 0, i32 3), align 8, !dbg !595
  %72 = add i64 %gcov_ctr112.i.i, 1, !dbg !595
  store i64 %72, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.216, i32 0, i32 3), align 8, !dbg !595
  %gcov_ctr.i163.i.i = load i64, ptr @__llvm_gcov_ctr.103, align 8
  %73 = add i64 %gcov_ctr.i163.i.i, 1
  store i64 %73, ptr @__llvm_gcov_ctr.103, align 8
  %flags.i.i.i56 = getelementptr inbounds %struct.trace_event_file, ptr %file.0218.i.i, i32 0, i32 7, !dbg !596
  %74 = ptrtoint ptr %flags.i.i.i56 to i32, !dbg !596
  call void @__asan_load4_noabort(i32 %74), !dbg !596
  %75 = load i32, ptr %flags.i.i.i56, align 4, !dbg !596
  %and.i.i.i57 = and i32 %75, -9, !dbg !598
  store i32 %and.i.i.i57, ptr %flags.i.i.i56, align 4, !dbg !598
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %and.i.i.i57), !dbg !599
  %cmp.not.i.i.i58 = icmp eq i32 %75, %and.i.i.i57, !dbg !599
  br i1 %cmp.not.i.i.i58, label %if.then15.i.i.filter_disable.exit.i.i61_crit_edge, label %if.then.i.i.i60, !dbg !600

if.then15.i.i.filter_disable.exit.i.i61_crit_edge: ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !600
  br label %filter_disable.exit.i.i61, !dbg !600

if.then.i.i.i60:                                  ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !601
  %gcov_ctr3.i.i.i59 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 1), align 8, !dbg !601
  %76 = add i64 %gcov_ctr3.i.i.i59, 1, !dbg !601
  store i64 %76, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 1), align 8, !dbg !601
  call void @trace_buffered_event_disable() #24, !dbg !601
  br label %filter_disable.exit.i.i61, !dbg !601

filter_disable.exit.i.i61:                        ; preds = %if.then.i.i.i60, %if.then15.i.i.filter_disable.exit.i.i61_crit_edge
  %gcov_ctr.i164.i.i = load i64, ptr @__llvm_gcov_ctr.135, align 8
  %77 = add i64 %gcov_ctr.i164.i.i, 1
  store i64 %77, ptr @__llvm_gcov_ctr.135, align 8
  %78 = ptrtoint ptr %55 to i32, !dbg !602
  call void @__asan_store4_noabort(i32 %78), !dbg !602
  store i32 11, ptr %55, align 4, !dbg !602
  %79 = ptrtoint ptr %lasterr_pos.i.i.i to i32, !dbg !605
  call void @__asan_store4_noabort(i32 %79), !dbg !605
  store i32 0, ptr %lasterr_pos.i.i.i, align 4, !dbg !605
  call fastcc void @append_filter_err(ptr noundef %53, ptr noundef %55, ptr noundef nonnull %call7.i.i.i.i) #24, !dbg !606
  br label %if.end16.i.i, !dbg !607

if.else.i.i:                                      ; preds = %if.end12.i.i
  %gcov_ctr113.i.i = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.216, i32 0, i32 4), align 16, !dbg !608
  %80 = add i64 %gcov_ctr113.i.i, 1, !dbg !608
  store i64 %80, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.216, i32 0, i32 4), align 16, !dbg !608
  %gcov_ctr.i165.i.i = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %81 = add i64 %gcov_ctr.i165.i.i, 1
  store i64 %81, ptr @__llvm_gcov_ctr.106, align 8
  %flags.i166.i.i = getelementptr inbounds %struct.trace_event_file, ptr %file.0218.i.i, i32 0, i32 7, !dbg !609
  %82 = ptrtoint ptr %flags.i166.i.i to i32, !dbg !609
  call void @__asan_load4_noabort(i32 %82), !dbg !609
  %83 = load i32, ptr %flags.i166.i.i, align 4, !dbg !609
  %or.i.i.i = or i32 %83, 8, !dbg !611
  store i32 %or.i.i.i, ptr %flags.i166.i.i, align 4, !dbg !611
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %or.i.i.i), !dbg !612
  %cmp.not.i167.i.i = icmp eq i32 %83, %or.i.i.i, !dbg !612
  br i1 %cmp.not.i167.i.i, label %if.else.i.i.if.end16.i.i_crit_edge, label %if.then.i169.i.i, !dbg !613

if.else.i.i.if.end16.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !613
  br label %if.end16.i.i, !dbg !613

if.then.i169.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !614
  %gcov_ctr3.i168.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.106, i32 0, i32 1), align 8, !dbg !614
  %84 = add i64 %gcov_ctr3.i168.i.i, 1, !dbg !614
  store i64 %84, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.106, i32 0, i32 1), align 8, !dbg !614
  call void @trace_buffered_event_enable() #24, !dbg !614
  br label %if.end16.i.i, !dbg !614

if.end16.i.i:                                     ; preds = %if.then.i169.i.i, %if.else.i.i.if.end16.i.i_crit_edge, %filter_disable.exit.i.i61
  %gcov_ctr.i170.i.i = load i64, ptr @__llvm_gcov_ctr.126, align 8
  %85 = add i64 %gcov_ctr.i170.i.i, 1
  store i64 %85, ptr @__llvm_gcov_ctr.126, align 8
  %gcov_ctr79.i.i.i171.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.129, i32 0, i32 1), align 8, !dbg !615
  %86 = add i64 %gcov_ctr79.i.i.i171.i.i, 1, !dbg !615
  store i64 %86, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.129, i32 0, i32 1), align 8, !dbg !615
  %gcov_ctr11.i.i172.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.127, i32 0, i32 2), align 16, !dbg !619
  %87 = add i64 %gcov_ctr11.i.i172.i.i, 1, !dbg !619
  store i64 %87, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.127, i32 0, i32 2), align 16, !dbg !619
  %gcov_ctr.i24.i.i173.i.i = load i64, ptr @__llvm_gcov_ctr.130, align 16, !dbg !620
  %88 = add i64 %gcov_ctr.i24.i.i173.i.i, 1, !dbg !620
  store i64 %88, ptr @__llvm_gcov_ctr.130, align 16, !dbg !620
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32)), !dbg !622
  %89 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4, !dbg !622
  %call7.i.i174.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %89, i32 noundef 3520, i32 noundef 12) #25, !dbg !623
  %tobool18.not.i.i = icmp eq ptr %call7.i.i174.i.i, null, !dbg !624
  br i1 %tobool18.not.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !625

if.then19.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !626
  %gcov_ctr114.i.i = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.216, i32 0, i32 5), align 8, !dbg !626
  %90 = add i64 %gcov_ctr114.i.i, 1, !dbg !626
  store i64 %90, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.216, i32 0, i32 5), align 8, !dbg !626
  br label %fail_mem.i.i, !dbg !626

if.end20.i.i:                                     ; preds = %if.end16.i.i
  %gcov_ctr.i175.i.i = load i64, ptr @__llvm_gcov_ctr.217, align 8
  %91 = add i64 %gcov_ctr.i175.i.i, 1
  store i64 %91, ptr @__llvm_gcov_ctr.217, align 8
  %92 = ptrtoint ptr %56 to i32, !dbg !627
  call void @__asan_load4_noabort(i32 %92), !dbg !627
  %93 = load ptr, ptr %56, align 4, !dbg !627
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i174.i.i, ptr noundef %93, ptr noundef nonnull %filter_list.i.i) #24, !dbg !631
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end20.i.i.for.inc.thread.i.i_crit_edge, !dbg !634

if.end20.i.i.for.inc.thread.i.i_crit_edge:        ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !634
  br label %for.inc.thread.i.i, !dbg !634

if.end.i.i.i.i:                                   ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !635
  %94 = ptrtoint ptr %56 to i32, !dbg !635
  call void @__asan_store4_noabort(i32 %94), !dbg !635
  store ptr %call7.i.i174.i.i, ptr %56, align 4, !dbg !635
  %95 = ptrtoint ptr %call7.i.i174.i.i to i32, !dbg !636
  call void @__asan_store4_noabort(i32 %95), !dbg !636
  store ptr %filter_list.i.i, ptr %call7.i.i174.i.i, align 8, !dbg !636
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i174.i.i, i32 0, i32 1, !dbg !637
  %96 = ptrtoint ptr %prev3.i.i.i.i to i32, !dbg !638
  call void @__asan_store4_noabort(i32 %96), !dbg !638
  store ptr %93, ptr %prev3.i.i.i.i, align 4, !dbg !638
  %97 = ptrtoint ptr %93 to i32, !dbg !639
  call void @__asan_store4_noabort(i32 %97), !dbg !639
  store volatile ptr %call7.i.i174.i.i, ptr %93, align 4, !dbg !639
  br label %for.inc.thread.i.i, !dbg !639

for.inc.i.i:                                      ; preds = %for.body.i.i
  %gcov_ctr.i.i62 = load i64, ptr @__llvm_gcov_ctr.216, align 16, !dbg !640
  %98 = add i64 %gcov_ctr.i.i62, 1, !dbg !640
  store i64 %98, ptr @__llvm_gcov_ctr.216, align 16, !dbg !640
  %99 = ptrtoint ptr %file.0218.i.i to i32, !dbg !565
  call void @__asan_load4_noabort(i32 %99), !dbg !565
  %file.0.i.i = load ptr, ptr %file.0218.i.i, align 4, !dbg !565
  %cmp.not.i.i = icmp eq ptr %file.0.i.i, %events.i.i, !dbg !565
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, !dbg !565, !llvm.loop !641

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !565
  br label %for.body.i.i, !dbg !565

for.inc.thread.i.i:                               ; preds = %if.end.i.i.i.i, %if.end20.i.i.for.inc.thread.i.i_crit_edge
  %__llvm_gcov_ctr.219.sink18.i.i.i.i = phi ptr [ getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.219, i32 0, i32 1), %if.end.i.i.i.i ], [ @__llvm_gcov_ctr.219, %if.end20.i.i.for.inc.thread.i.i_crit_edge ]
  %100 = ptrtoint ptr %__llvm_gcov_ctr.219.sink18.i.i.i.i to i32, !dbg !643
  call void @__asan_load8_noabort(i32 %100), !dbg !643
  %gcov_ctr.i.i.i.i = load i64, ptr %__llvm_gcov_ctr.219.sink18.i.i.i.i, align 8, !dbg !643
  %101 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !643
  store i64 %101, ptr %__llvm_gcov_ctr.219.sink18.i.i.i.i, align 8, !dbg !643
  %gcov_ctr.i176.i.i = load i64, ptr @__llvm_gcov_ctr.94, align 8
  %102 = add i64 %gcov_ctr.i176.i.i, 1
  store i64 %102, ptr @__llvm_gcov_ctr.94, align 8
  %filter.i.i.i = getelementptr inbounds %struct.trace_event_file, ptr %file.0218.i.i, i32 0, i32 2, !dbg !644
  %103 = ptrtoint ptr %filter.i.i.i to i32, !dbg !644
  call void @__asan_load4_noabort(i32 %103), !dbg !644
  %104 = load ptr, ptr %filter.i.i.i, align 4, !dbg !644
  %filter23.i.i = getelementptr inbounds %struct.filter_list, ptr %call7.i.i174.i.i, i32 0, i32 1, !dbg !646
  %105 = ptrtoint ptr %filter23.i.i to i32, !dbg !647
  call void @__asan_store4_noabort(i32 %105), !dbg !647
  store ptr %104, ptr %filter23.i.i, align 8, !dbg !647
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #24, !dbg !648, !srcloc !465
  %106 = ptrtoint ptr %filter.i.i.i to i32, !dbg !648
  call void @__asan_store4_noabort(i32 %106), !dbg !648
  store volatile ptr %call7.i.i.i.i, ptr %filter.i.i.i, align 4, !dbg !648
  %gcov_ctr34.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.107, i32 0, i32 2), align 16
  %107 = add i64 %gcov_ctr34.i.i.i, 1
  store i64 %107, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.107, i32 0, i32 2), align 16
  %108 = ptrtoint ptr %file.0218.i.i to i32, !dbg !565
  call void @__asan_load4_noabort(i32 %108), !dbg !565
  %file.0236.i.i = load ptr, ptr %file.0218.i.i, align 4, !dbg !565
  %cmp.not237.i.i = icmp eq ptr %file.0236.i.i, %events.i.i, !dbg !565
  br i1 %cmp.not237.i.i, label %for.inc.thread.i.i.if.end31.i.i_crit_edge, label %for.inc.thread.i.i.for.body.outer.i.i_crit_edge, !dbg !565, !llvm.loop !650

for.inc.thread.i.i.for.body.outer.i.i_crit_edge:  ; preds = %for.inc.thread.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !565
  br label %for.body.outer.i.i, !dbg !565

for.inc.thread.i.i.if.end31.i.i_crit_edge:        ; preds = %for.inc.thread.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !565
  br label %if.end31.i.i, !dbg !565

for.end.i.i:                                      ; preds = %for.inc.i.i
  br i1 %fail.0.off0217.ph.i.i, label %for.end.i.i.fail55.i.i_crit_edge, label %for.end.i.i.if.end31.i.i_crit_edge, !dbg !651

for.end.i.i.if.end31.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !651
  br label %if.end31.i.i, !dbg !651

for.end.i.i.fail55.i.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !651
  br label %fail55.i.i, !dbg !651

if.end31.i.i:                                     ; preds = %for.end.i.i.if.end31.i.i_crit_edge, %for.inc.thread.i.i.if.end31.i.i_crit_edge
  %gcov_ctr.i177.i.i = load i64, ptr @__llvm_gcov_ctr.105, align 8, !dbg !652
  %109 = add i64 %gcov_ctr.i177.i.i, 1, !dbg !652
  store i64 %109, ptr @__llvm_gcov_ctr.105, align 8, !dbg !652
  call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #24, !dbg !652
  call void @synchronize_rcu() #24, !dbg !654
  %110 = ptrtoint ptr %filter_list.i.i to i32, !dbg !655
  call void @__asan_load4_noabort(i32 %110), !dbg !655
  %111 = load ptr, ptr %filter_list.i.i, align 4, !dbg !655
  %cmp43.not222.i.i = icmp eq ptr %111, %filter_list.i.i, !dbg !655
  br i1 %cmp43.not222.i.i, label %if.end31.i.i.if.then3.i_crit_edge, label %if.end31.i.i.for.body45.i.i_crit_edge, !dbg !655

if.end31.i.i.for.body45.i.i_crit_edge:            ; preds = %if.end31.i.i
  br label %for.body45.i.i, !dbg !655

if.end31.i.i.if.then3.i_crit_edge:                ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !655
  br label %if.then3.i, !dbg !655

for.body45.i.i:                                   ; preds = %list_del.exit.i.i.for.body45.i.i_crit_edge, %if.end31.i.i.for.body45.i.i_crit_edge
  %filter_item.0223.i.i = phi ptr [ %tmp.0.i.i, %list_del.exit.i.i.for.body45.i.i_crit_edge ], [ %111, %if.end31.i.i.for.body45.i.i_crit_edge ]
  %112 = ptrtoint ptr %filter_item.0223.i.i to i32, !dbg !655
  call void @__asan_load4_noabort(i32 %112), !dbg !655
  %tmp.0.i.i = load ptr, ptr %filter_item.0223.i.i, align 4, !dbg !655
  %filter46.i.i = getelementptr inbounds %struct.filter_list, ptr %filter_item.0223.i.i, i32 0, i32 1, !dbg !656
  %113 = ptrtoint ptr %filter46.i.i to i32, !dbg !656
  call void @__asan_load4_noabort(i32 %113), !dbg !656
  %114 = load ptr, ptr %filter46.i.i, align 4, !dbg !656
  call fastcc void @__free_filter(ptr noundef %114) #24, !dbg !657
  %gcov_ctr.i178.i.i = load i64, ptr @__llvm_gcov_ctr.218, align 8
  %115 = add i64 %gcov_ctr.i178.i.i, 1
  store i64 %115, ptr @__llvm_gcov_ctr.218, align 8
  %call.i.i179.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %filter_item.0223.i.i) #24, !dbg !658
  br i1 %call.i.i179.i.i, label %if.end.i.i181.i.i, label %if.then.i.i.i.i, !dbg !663

if.then.i.i.i.i:                                  ; preds = %for.body45.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !664
  %gcov_ctr.i.i180.i.i = load i64, ptr @__llvm_gcov_ctr.220, align 8, !dbg !664
  %116 = add i64 %gcov_ctr.i.i180.i.i, 1, !dbg !664
  store i64 %116, ptr @__llvm_gcov_ctr.220, align 8, !dbg !664
  br label %list_del.exit.i.i, !dbg !664

if.end.i.i181.i.i:                                ; preds = %for.body45.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !665
  %gcov_ctr2.i.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.220, i32 0, i32 1), align 8, !dbg !665
  %117 = add i64 %gcov_ctr2.i.i.i.i, 1, !dbg !665
  store i64 %117, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.220, i32 0, i32 1), align 8, !dbg !665
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %filter_item.0223.i.i, i32 0, i32 1, !dbg !666
  %118 = ptrtoint ptr %prev.i.i.i.i to i32, !dbg !666
  call void @__asan_load4_noabort(i32 %118), !dbg !666
  %119 = load ptr, ptr %prev.i.i.i.i, align 4, !dbg !666
  %120 = ptrtoint ptr %filter_item.0223.i.i to i32, !dbg !667
  call void @__asan_load4_noabort(i32 %120), !dbg !667
  %121 = load ptr, ptr %filter_item.0223.i.i, align 4, !dbg !667
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %121, i32 0, i32 1, !dbg !668
  %122 = ptrtoint ptr %prev1.i.i.i.i.i to i32, !dbg !671
  call void @__asan_store4_noabort(i32 %122), !dbg !671
  store ptr %119, ptr %prev1.i.i.i.i.i, align 4, !dbg !671
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.221, align 8, !dbg !672
  %123 = add i64 %gcov_ctr.i.i.i.i.i, 1, !dbg !672
  store i64 %123, ptr @__llvm_gcov_ctr.221, align 8, !dbg !672
  %124 = ptrtoint ptr %119 to i32, !dbg !672
  call void @__asan_store4_noabort(i32 %124), !dbg !672
  store volatile ptr %121, ptr %119, align 4, !dbg !672
  br label %list_del.exit.i.i, !dbg !673

list_del.exit.i.i:                                ; preds = %if.end.i.i181.i.i, %if.then.i.i.i.i
  %125 = ptrtoint ptr %filter_item.0223.i.i to i32, !dbg !674
  call void @__asan_store4_noabort(i32 %125), !dbg !674
  store ptr inttoptr (i32 256 to ptr), ptr %filter_item.0223.i.i, align 4, !dbg !674
  %prev.i182.i.i = getelementptr inbounds %struct.list_head, ptr %filter_item.0223.i.i, i32 0, i32 1, !dbg !675
  %126 = ptrtoint ptr %prev.i182.i.i to i32, !dbg !676
  call void @__asan_store4_noabort(i32 %126), !dbg !676
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i182.i.i, align 4, !dbg !676
  call void @kfree(ptr noundef %filter_item.0223.i.i) #24, !dbg !677
  %gcov_ctr115.i.i = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.216, i32 0, i32 6), align 16, !dbg !655
  %127 = add i64 %gcov_ctr115.i.i, 1, !dbg !655
  store i64 %127, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.216, i32 0, i32 6), align 16, !dbg !655
  %cmp43.not.i.i = icmp eq ptr %tmp.0.i.i, %filter_list.i.i, !dbg !655
  br i1 %cmp43.not.i.i, label %list_del.exit.i.i.if.then3.i_crit_edge, label %list_del.exit.i.i.for.body45.i.i_crit_edge, !dbg !655, !llvm.loop !678

list_del.exit.i.i.for.body45.i.i_crit_edge:       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !655
  br label %for.body45.i.i, !dbg !655

list_del.exit.i.i.if.then3.i_crit_edge:           ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !655
  br label %if.then3.i, !dbg !655

fail55.i.i:                                       ; preds = %for.end.i.i.fail55.i.i_crit_edge, %if.then.i54.fail55.i.i_crit_edge
  %128 = ptrtoint ptr %filter_list.i.i to i32, !dbg !680
  call void @__asan_load4_noabort(i32 %128), !dbg !680
  %129 = load ptr, ptr %filter_list.i.i, align 4, !dbg !680
  %cmp67.not225.i.i = icmp eq ptr %129, %filter_list.i.i, !dbg !680
  br i1 %cmp67.not225.i.i, label %fail55.i.i.for.end77.i.i_crit_edge, label %fail55.i.i.for.body69.i.i_crit_edge, !dbg !680

fail55.i.i.for.body69.i.i_crit_edge:              ; preds = %fail55.i.i
  br label %for.body69.i.i, !dbg !680

fail55.i.i.for.end77.i.i_crit_edge:               ; preds = %fail55.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !680
  br label %for.end77.i.i, !dbg !680

for.body69.i.i:                                   ; preds = %list_del.exit193.i.i.for.body69.i.i_crit_edge, %fail55.i.i.for.body69.i.i_crit_edge
  %filter_item.1226.i.i = phi ptr [ %tmp.1.i.i, %list_del.exit193.i.i.for.body69.i.i_crit_edge ], [ %129, %fail55.i.i.for.body69.i.i_crit_edge ]
  %130 = ptrtoint ptr %filter_item.1226.i.i to i32, !dbg !680
  call void @__asan_load4_noabort(i32 %130), !dbg !680
  %tmp.1.i.i = load ptr, ptr %filter_item.1226.i.i, align 4, !dbg !680
  %gcov_ctr.i183.i.i = load i64, ptr @__llvm_gcov_ctr.218, align 8
  %131 = add i64 %gcov_ctr.i183.i.i, 1
  store i64 %131, ptr @__llvm_gcov_ctr.218, align 8
  %call.i.i184.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %filter_item.1226.i.i) #24, !dbg !681
  br i1 %call.i.i184.i.i, label %if.end.i.i191.i.i, label %if.then.i.i186.i.i, !dbg !684

if.then.i.i186.i.i:                               ; preds = %for.body69.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !685
  %gcov_ctr.i.i185.i.i = load i64, ptr @__llvm_gcov_ctr.220, align 8, !dbg !685
  %132 = add i64 %gcov_ctr.i.i185.i.i, 1, !dbg !685
  store i64 %132, ptr @__llvm_gcov_ctr.220, align 8, !dbg !685
  br label %list_del.exit193.i.i, !dbg !685

if.end.i.i191.i.i:                                ; preds = %for.body69.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !686
  %gcov_ctr2.i.i187.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.220, i32 0, i32 1), align 8, !dbg !686
  %133 = add i64 %gcov_ctr2.i.i187.i.i, 1, !dbg !686
  store i64 %133, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.220, i32 0, i32 1), align 8, !dbg !686
  %prev.i.i188.i.i = getelementptr inbounds %struct.list_head, ptr %filter_item.1226.i.i, i32 0, i32 1, !dbg !687
  %134 = ptrtoint ptr %prev.i.i188.i.i to i32, !dbg !687
  call void @__asan_load4_noabort(i32 %134), !dbg !687
  %135 = load ptr, ptr %prev.i.i188.i.i, align 4, !dbg !687
  %136 = ptrtoint ptr %filter_item.1226.i.i to i32, !dbg !688
  call void @__asan_load4_noabort(i32 %136), !dbg !688
  %137 = load ptr, ptr %filter_item.1226.i.i, align 4, !dbg !688
  %prev1.i.i.i189.i.i = getelementptr inbounds %struct.list_head, ptr %137, i32 0, i32 1, !dbg !689
  %138 = ptrtoint ptr %prev1.i.i.i189.i.i to i32, !dbg !691
  call void @__asan_store4_noabort(i32 %138), !dbg !691
  store ptr %135, ptr %prev1.i.i.i189.i.i, align 4, !dbg !691
  %gcov_ctr.i.i.i190.i.i = load i64, ptr @__llvm_gcov_ctr.221, align 8, !dbg !692
  %139 = add i64 %gcov_ctr.i.i.i190.i.i, 1, !dbg !692
  store i64 %139, ptr @__llvm_gcov_ctr.221, align 8, !dbg !692
  %140 = ptrtoint ptr %135 to i32, !dbg !692
  call void @__asan_store4_noabort(i32 %140), !dbg !692
  store volatile ptr %137, ptr %135, align 4, !dbg !692
  br label %list_del.exit193.i.i, !dbg !693

list_del.exit193.i.i:                             ; preds = %if.end.i.i191.i.i, %if.then.i.i186.i.i
  %141 = ptrtoint ptr %filter_item.1226.i.i to i32, !dbg !694
  call void @__asan_store4_noabort(i32 %141), !dbg !694
  store ptr inttoptr (i32 256 to ptr), ptr %filter_item.1226.i.i, align 4, !dbg !694
  %prev.i192.i.i = getelementptr inbounds %struct.list_head, ptr %filter_item.1226.i.i, i32 0, i32 1, !dbg !695
  %142 = ptrtoint ptr %prev.i192.i.i to i32, !dbg !696
  call void @__asan_store4_noabort(i32 %142), !dbg !696
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i192.i.i, align 4, !dbg !696
  call void @kfree(ptr noundef %filter_item.1226.i.i) #24, !dbg !697
  %gcov_ctr117.i.i = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.216, i32 0, i32 8), align 16, !dbg !680
  %143 = add i64 %gcov_ctr117.i.i, 1, !dbg !680
  store i64 %143, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.216, i32 0, i32 8), align 16, !dbg !680
  %cmp67.not.i.i = icmp eq ptr %tmp.1.i.i, %filter_list.i.i, !dbg !680
  br i1 %cmp67.not.i.i, label %list_del.exit193.i.i.for.end77.i.i_crit_edge, label %list_del.exit193.i.i.for.body69.i.i_crit_edge, !dbg !680, !llvm.loop !698

list_del.exit193.i.i.for.body69.i.i_crit_edge:    ; preds = %list_del.exit193.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !680
  br label %for.body69.i.i, !dbg !680

list_del.exit193.i.i.for.end77.i.i_crit_edge:     ; preds = %list_del.exit193.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !680
  br label %for.end77.i.i, !dbg !680

for.end77.i.i:                                    ; preds = %list_del.exit193.i.i.for.end77.i.i_crit_edge, %fail55.i.i.for.end77.i.i_crit_edge
  %gcov_ctr118.i.i = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.216, i32 0, i32 9), align 8, !dbg !700
  %144 = add i64 %gcov_ctr118.i.i, 1, !dbg !700
  store i64 %144, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.216, i32 0, i32 9), align 8, !dbg !700
  %gcov_ctr.i194.i.i = load i64, ptr @__llvm_gcov_ctr.135, align 8
  %145 = add i64 %gcov_ctr.i194.i.i, 1
  store i64 %145, ptr @__llvm_gcov_ctr.135, align 8
  %146 = ptrtoint ptr %55 to i32, !dbg !701
  call void @__asan_store4_noabort(i32 %146), !dbg !701
  store i32 11, ptr %55, align 4, !dbg !701
  %lasterr_pos.i195.i.i = getelementptr inbounds %struct.filter_parse_error, ptr %55, i32 0, i32 1, !dbg !703
  %147 = ptrtoint ptr %lasterr_pos.i195.i.i to i32, !dbg !704
  call void @__asan_store4_noabort(i32 %147), !dbg !704
  store i32 0, ptr %lasterr_pos.i195.i.i, align 4, !dbg !704
  br label %if.else.i, !dbg !705

fail_mem.i.i:                                     ; preds = %if.then19.i.i, %if.then11.i.i, %if.then5.i.i
  call fastcc void @__free_filter(ptr noundef %call7.i.i.i.i) #24, !dbg !706
  br i1 %fail.0.off0217.ph.i.i, label %fail_mem.i.i.if.end80.i.i_crit_edge, label %if.then79.i.i, !dbg !707

fail_mem.i.i.if.end80.i.i_crit_edge:              ; preds = %fail_mem.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !707
  br label %if.end80.i.i, !dbg !707

if.then79.i.i:                                    ; preds = %fail_mem.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !708
  %gcov_ctr119.i.i = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.216, i32 0, i32 10), align 16, !dbg !708
  %148 = add i64 %gcov_ctr119.i.i, 1, !dbg !708
  store i64 %148, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.216, i32 0, i32 10), align 16, !dbg !708
  %gcov_ctr.i196.i.i = load i64, ptr @__llvm_gcov_ctr.105, align 8, !dbg !709
  %149 = add i64 %gcov_ctr.i196.i.i, 1, !dbg !709
  store i64 %149, ptr @__llvm_gcov_ctr.105, align 8, !dbg !709
  call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #24, !dbg !709
  call void @synchronize_rcu() #24, !dbg !711
  br label %if.end80.i.i, !dbg !708

if.end80.i.i:                                     ; preds = %if.then79.i.i, %fail_mem.i.i.if.end80.i.i_crit_edge
  %150 = ptrtoint ptr %filter_list.i.i to i32, !dbg !712
  call void @__asan_load4_noabort(i32 %150), !dbg !712
  %151 = load ptr, ptr %filter_list.i.i, align 4, !dbg !712
  %cmp92.not219.i.i = icmp eq ptr %151, %filter_list.i.i, !dbg !712
  br i1 %cmp92.not219.i.i, label %if.end80.i.i.if.else.i_crit_edge, label %if.end80.i.i.for.body94.i.i_crit_edge, !dbg !712

if.end80.i.i.for.body94.i.i_crit_edge:            ; preds = %if.end80.i.i
  br label %for.body94.i.i, !dbg !712

if.end80.i.i.if.else.i_crit_edge:                 ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !712
  br label %if.else.i, !dbg !712

for.body94.i.i:                                   ; preds = %list_del.exit207.i.i.for.body94.i.i_crit_edge, %if.end80.i.i.for.body94.i.i_crit_edge
  %filter_item.2220.i.i = phi ptr [ %tmp.2.i.i, %list_del.exit207.i.i.for.body94.i.i_crit_edge ], [ %151, %if.end80.i.i.for.body94.i.i_crit_edge ]
  %152 = ptrtoint ptr %filter_item.2220.i.i to i32, !dbg !712
  call void @__asan_load4_noabort(i32 %152), !dbg !712
  %tmp.2.i.i = load ptr, ptr %filter_item.2220.i.i, align 4, !dbg !712
  %filter95.i.i = getelementptr inbounds %struct.filter_list, ptr %filter_item.2220.i.i, i32 0, i32 1, !dbg !713
  %153 = ptrtoint ptr %filter95.i.i to i32, !dbg !713
  call void @__asan_load4_noabort(i32 %153), !dbg !713
  %154 = load ptr, ptr %filter95.i.i, align 4, !dbg !713
  call fastcc void @__free_filter(ptr noundef %154) #24, !dbg !714
  %gcov_ctr.i197.i.i = load i64, ptr @__llvm_gcov_ctr.218, align 8
  %155 = add i64 %gcov_ctr.i197.i.i, 1
  store i64 %155, ptr @__llvm_gcov_ctr.218, align 8
  %call.i.i198.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %filter_item.2220.i.i) #24, !dbg !715
  br i1 %call.i.i198.i.i, label %if.end.i.i205.i.i, label %if.then.i.i200.i.i, !dbg !718

if.then.i.i200.i.i:                               ; preds = %for.body94.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !719
  %gcov_ctr.i.i199.i.i = load i64, ptr @__llvm_gcov_ctr.220, align 8, !dbg !719
  %156 = add i64 %gcov_ctr.i.i199.i.i, 1, !dbg !719
  store i64 %156, ptr @__llvm_gcov_ctr.220, align 8, !dbg !719
  br label %list_del.exit207.i.i, !dbg !719

if.end.i.i205.i.i:                                ; preds = %for.body94.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !720
  %gcov_ctr2.i.i201.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.220, i32 0, i32 1), align 8, !dbg !720
  %157 = add i64 %gcov_ctr2.i.i201.i.i, 1, !dbg !720
  store i64 %157, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.220, i32 0, i32 1), align 8, !dbg !720
  %prev.i.i202.i.i = getelementptr inbounds %struct.list_head, ptr %filter_item.2220.i.i, i32 0, i32 1, !dbg !721
  %158 = ptrtoint ptr %prev.i.i202.i.i to i32, !dbg !721
  call void @__asan_load4_noabort(i32 %158), !dbg !721
  %159 = load ptr, ptr %prev.i.i202.i.i, align 4, !dbg !721
  %160 = ptrtoint ptr %filter_item.2220.i.i to i32, !dbg !722
  call void @__asan_load4_noabort(i32 %160), !dbg !722
  %161 = load ptr, ptr %filter_item.2220.i.i, align 4, !dbg !722
  %prev1.i.i.i203.i.i = getelementptr inbounds %struct.list_head, ptr %161, i32 0, i32 1, !dbg !723
  %162 = ptrtoint ptr %prev1.i.i.i203.i.i to i32, !dbg !725
  call void @__asan_store4_noabort(i32 %162), !dbg !725
  store ptr %159, ptr %prev1.i.i.i203.i.i, align 4, !dbg !725
  %gcov_ctr.i.i.i204.i.i = load i64, ptr @__llvm_gcov_ctr.221, align 8, !dbg !726
  %163 = add i64 %gcov_ctr.i.i.i204.i.i, 1, !dbg !726
  store i64 %163, ptr @__llvm_gcov_ctr.221, align 8, !dbg !726
  %164 = ptrtoint ptr %159 to i32, !dbg !726
  call void @__asan_store4_noabort(i32 %164), !dbg !726
  store volatile ptr %161, ptr %159, align 4, !dbg !726
  br label %list_del.exit207.i.i, !dbg !727

list_del.exit207.i.i:                             ; preds = %if.end.i.i205.i.i, %if.then.i.i200.i.i
  %165 = ptrtoint ptr %filter_item.2220.i.i to i32, !dbg !728
  call void @__asan_store4_noabort(i32 %165), !dbg !728
  store ptr inttoptr (i32 256 to ptr), ptr %filter_item.2220.i.i, align 4, !dbg !728
  %prev.i206.i.i = getelementptr inbounds %struct.list_head, ptr %filter_item.2220.i.i, i32 0, i32 1, !dbg !729
  %166 = ptrtoint ptr %prev.i206.i.i to i32, !dbg !730
  call void @__asan_store4_noabort(i32 %166), !dbg !730
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i206.i.i, align 4, !dbg !730
  call void @kfree(ptr noundef %filter_item.2220.i.i) #24, !dbg !731
  %gcov_ctr120.i.i = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.216, i32 0, i32 11), align 8, !dbg !712
  %167 = add i64 %gcov_ctr120.i.i, 1, !dbg !712
  store i64 %167, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.216, i32 0, i32 11), align 8, !dbg !712
  %cmp92.not.i.i = icmp eq ptr %tmp.2.i.i, %filter_list.i.i, !dbg !712
  br i1 %cmp92.not.i.i, label %list_del.exit207.i.i.if.else.i_crit_edge, label %list_del.exit207.i.i.for.body94.i.i_crit_edge, !dbg !712, !llvm.loop !732

list_del.exit207.i.i.for.body94.i.i_crit_edge:    ; preds = %list_del.exit207.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !712
  br label %for.body94.i.i, !dbg !712

list_del.exit207.i.i.if.else.i_crit_edge:         ; preds = %list_del.exit207.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !712
  br label %if.else.i, !dbg !712

if.then3.i:                                       ; preds = %list_del.exit.i.i.if.then3.i_crit_edge, %if.end31.i.i.if.then3.i_crit_edge
  %gcov_ctr116.i.i = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.216, i32 0, i32 7), align 8, !dbg !734
  %168 = add i64 %gcov_ctr116.i.i, 1, !dbg !734
  store i64 %168, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.216, i32 0, i32 7), align 8, !dbg !734
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filter_list.i.i) #24, !dbg !735
  %gcov_ctr7.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !736
  %169 = add i64 %gcov_ctr7.i, 1, !dbg !736
  store i64 %169, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !736
  %170 = ptrtoint ptr %filter to i32, !dbg !737
  call void @__asan_load4_noabort(i32 %170), !dbg !737
  %171 = load ptr, ptr %filter, align 4, !dbg !737
  %filter_string.i63 = getelementptr inbounds %struct.event_filter, ptr %171, i32 0, i32 1, !dbg !738
  %172 = ptrtoint ptr %filter_string.i63 to i32, !dbg !738
  call void @__asan_load4_noabort(i32 %172), !dbg !738
  %173 = load ptr, ptr %filter_string.i63, align 4, !dbg !738
  call void @kfree(ptr noundef %173) #24, !dbg !739
  %174 = ptrtoint ptr %filter_string.i63 to i32, !dbg !740
  call void @__asan_store4_noabort(i32 %174), !dbg !740
  store ptr null, ptr %filter_string.i63, align 4, !dbg !740
  br label %create_system_filter.exit, !dbg !741

if.else.i:                                        ; preds = %list_del.exit207.i.i.if.else.i_crit_edge, %if.end80.i.i.if.else.i_crit_edge, %for.end77.i.i
  %retval.0.i.ph.i = phi i32 [ -12, %if.end80.i.i.if.else.i_crit_edge ], [ -22, %for.end77.i.i ], [ -12, %list_del.exit207.i.i.if.else.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filter_list.i.i) #24, !dbg !735
  %gcov_ctr8.i64 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 2), align 16, !dbg !742
  %175 = add i64 %gcov_ctr8.i64, 1, !dbg !742
  store i64 %175, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 2), align 16, !dbg !742
  %176 = ptrtoint ptr %tr1 to i32, !dbg !743
  call void @__asan_load4_noabort(i32 %176), !dbg !743
  %177 = load ptr, ptr %tr1, align 4, !dbg !743
  %178 = ptrtoint ptr %pe.i to i32, !dbg !744
  call void @__asan_load4_noabort(i32 %178), !dbg !744
  %179 = load ptr, ptr %pe.i, align 4, !dbg !744
  %180 = ptrtoint ptr %filter to i32, !dbg !745
  call void @__asan_load4_noabort(i32 %180), !dbg !745
  %181 = load ptr, ptr %filter, align 4, !dbg !745
  call fastcc void @append_filter_err(ptr noundef %177, ptr noundef %179, ptr noundef %181) #24, !dbg !746
  br label %create_system_filter.exit

create_system_filter.exit:                        ; preds = %if.else.i, %if.then3.i, %if.end8.create_system_filter.exit_crit_edge
  %err.0.i = phi i32 [ %call.i52, %if.end8.create_system_filter.exit_crit_edge ], [ %retval.0.i.ph.i, %if.else.i ], [ 0, %if.then3.i ], !dbg !747
  %182 = ptrtoint ptr %pe.i to i32, !dbg !748
  call void @__asan_load4_noabort(i32 %182), !dbg !748
  %183 = load ptr, ptr %pe.i, align 4, !dbg !748
  %gcov_ctr.i17.i = load i64, ptr @__llvm_gcov_ctr.125, align 8
  %184 = add i64 %gcov_ctr.i17.i, 1
  store i64 %184, ptr @__llvm_gcov_ctr.125, align 8
  call void @kfree(ptr noundef %183) #24, !dbg !749
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pe.i) #24, !dbg !751
  %185 = ptrtoint ptr %filter to i32, !dbg !752
  call void @__asan_load4_noabort(i32 %185), !dbg !752
  %186 = load ptr, ptr %filter, align 4, !dbg !752
  %tobool10.not = icmp eq ptr %186, null, !dbg !752
  br i1 %tobool10.not, label %create_system_filter.exit.if.end14_crit_edge, label %if.then11, !dbg !752

create_system_filter.exit.if.end14_crit_edge:     ; preds = %create_system_filter.exit
  call void @__sanitizer_cov_trace_pc() #22, !dbg !752
  br label %if.end14, !dbg !752

if.then11:                                        ; preds = %create_system_filter.exit
  call void @__sanitizer_cov_trace_pc() #22, !dbg !753
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 2), align 16, !dbg !753
  %187 = add i64 %gcov_ctr16, 1, !dbg !753
  store i64 %187, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 2), align 16, !dbg !753
  %filter12 = getelementptr inbounds %struct.event_subsystem, ptr %1, i32 0, i32 2, !dbg !754
  %188 = ptrtoint ptr %filter12 to i32, !dbg !754
  call void @__asan_load4_noabort(i32 %188), !dbg !754
  %189 = load ptr, ptr %filter12, align 4, !dbg !754
  call fastcc void @__free_filter(ptr noundef %189), !dbg !755
  %190 = ptrtoint ptr %filter12 to i32, !dbg !756
  call void @__asan_store4_noabort(i32 %190), !dbg !756
  store ptr %186, ptr %filter12, align 4, !dbg !756
  br label %if.end14, !dbg !757

if.end14:                                         ; preds = %if.then11, %create_system_filter.exit.if.end14_crit_edge
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 3), align 8, !dbg !752
  %191 = add i64 %gcov_ctr17, 1, !dbg !752
  store i64 %191, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 3), align 8, !dbg !752
  br label %out_unlock, !dbg !752

out_unlock:                                       ; preds = %if.end14, %filter_free_subsystem_filters.exit, %if.then
  %err.0 = phi i32 [ %err.0.i, %if.end14 ], [ 0, %filter_free_subsystem_filters.exit ], [ -19, %if.then ], !dbg !758
  call void @mutex_unlock(ptr noundef nonnull @event_mutex) #24, !dbg !759
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %filter) #24, !dbg !760
  ret i32 %err.0, !dbg !761
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ftrace_profile_free_filter(ptr nocapture noundef %event) local_unnamed_addr #3 align 64 !dbg !762 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !763
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.113, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.113, align 8
  %filter1 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 66, !dbg !764
  %1 = ptrtoint ptr %filter1 to i32, !dbg !764
  call void @__asan_load4_noabort(i32 %1), !dbg !764
  %2 = load ptr, ptr %filter1, align 4, !dbg !764
  store ptr null, ptr %filter1, align 4, !dbg !765
  tail call fastcc void @__free_filter(ptr noundef %2), !dbg !766
  ret void, !dbg !767
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ftrace_profile_set_filter(ptr noundef %event, i32 noundef %event_id, ptr noundef %filter_str) local_unnamed_addr #3 align 64 !dbg !768 {
entry:
  %re_cnt.i.i.i = alloca i32, align 4
  %data.sroa.5.i = alloca i32, align 4
  %data.sroa.8.i = alloca i32, align 4
  %filter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #22, !dbg !769
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %filter) #24, !dbg !770
  %0 = ptrtoint ptr %filter to i32, !dbg !771
  call void @__asan_store4_noabort(i32 %0), !dbg !771
  store ptr null, ptr %filter, align 4, !dbg !771
  tail call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #24, !dbg !772
  %tp_event = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 65, !dbg !773
  %1 = ptrtoint ptr %tp_event to i32, !dbg !773
  call void @__asan_load4_noabort(i32 %1), !dbg !773
  %2 = load ptr, ptr %tp_event, align 8, !dbg !773
  %tobool.not = icmp eq ptr %2, null, !dbg !774
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !775

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !776
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.114, align 16, !dbg !776
  %3 = add i64 %gcov_ctr, 1, !dbg !776
  store i64 %3, ptr @__llvm_gcov_ctr.114, align 16, !dbg !776
  br label %out_unlock, !dbg !776

if.end:                                           ; preds = %entry
  %filter1 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 66, !dbg !777
  %4 = ptrtoint ptr %filter1 to i32, !dbg !777
  call void @__asan_load4_noabort(i32 %4), !dbg !777
  %5 = load ptr, ptr %filter1, align 4, !dbg !777
  %tobool2.not = icmp eq ptr %5, null, !dbg !778
  br i1 %tobool2.not, label %if.end4, label %if.then3, !dbg !778

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22, !dbg !779
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.114, i32 0, i32 1), align 8, !dbg !779
  %6 = add i64 %gcov_ctr18, 1, !dbg !779
  store i64 %6, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.114, i32 0, i32 1), align 8, !dbg !779
  br label %out_unlock, !dbg !779

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @create_filter(ptr noundef null, ptr noundef nonnull %2, ptr noundef %filter_str, i1 noundef zeroext false, ptr noundef nonnull %filter), !dbg !780
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5), !dbg !781
  %tobool6.not = icmp eq i32 %call5, 0, !dbg !781
  br i1 %tobool6.not, label %if.end8, label %free_filter.thread36, !dbg !781

free_filter.thread36:                             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22, !dbg !782
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.114, i32 0, i32 2), align 16, !dbg !782
  %7 = add i64 %gcov_ctr19, 1, !dbg !782
  store i64 %7, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.114, i32 0, i32 2), align 16, !dbg !782
  br label %if.then16, !dbg !783

if.end8:                                          ; preds = %if.end4
  %call9 = tail call zeroext i1 @ftrace_event_is_function(ptr noundef nonnull %2) #24, !dbg !784
  br i1 %call9, label %if.then10, label %free_filter.thread, !dbg !784

if.then10:                                        ; preds = %if.end8
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.114, i32 0, i32 3), align 8, !dbg !785
  %8 = add i64 %gcov_ctr20, 1, !dbg !785
  store i64 %8, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.114, i32 0, i32 3), align 8, !dbg !785
  %9 = ptrtoint ptr %filter to i32, !dbg !786
  call void @__asan_load4_noabort(i32 %9), !dbg !786
  %10 = load ptr, ptr %filter, align 4, !dbg !786
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.222, align 8
  %11 = add i64 %gcov_ctr.i.i, 1
  store i64 %11, ptr @__llvm_gcov_ctr.222, align 8
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @event_mutex, i32 0, i32 5), i32 noundef -1) #24, !dbg !787
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i), !dbg !793
  %tobool.not.i = icmp eq i32 %call.i.i, 0, !dbg !793
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then10.do.end.i_crit_edge, !dbg !793

if.then10.do.end.i_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #22, !dbg !793
  br label %do.end.i, !dbg !793

land.lhs.true.i:                                  ; preds = %if.then10
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.115, align 16, !dbg !793
  %12 = add i64 %gcov_ctr.i, 1, !dbg !793
  store i64 %12, ptr @__llvm_gcov_ctr.115, align 16, !dbg !793
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #24, !dbg !793
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i), !dbg !793
  %tobool2.not.i = icmp eq i32 %call1.i, 0, !dbg !793
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i, !dbg !793

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !793
  br label %do.end.i, !dbg !793

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %gcov_ctr19.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 1), align 8, !dbg !793
  %13 = add i64 %gcov_ctr19.i, 1, !dbg !793
  store i64 %13, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 1), align 8, !dbg !793
  %.b31.i = load i1, ptr @ftrace_function_set_filter.__warned, align 1, !dbg !793
  br i1 %.b31.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i, !dbg !793

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !793
  br label %do.end.i, !dbg !793

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !793
  %gcov_ctr20.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 2), align 16, !dbg !793
  %14 = add i64 %gcov_ctr20.i, 1, !dbg !793
  store i64 %14, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 2), align 16, !dbg !793
  store i1 true, ptr @ftrace_function_set_filter.__warned, align 1, !dbg !793
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2129, ptr noundef nonnull @.str.45) #24, !dbg !793
  br label %do.end.i, !dbg !793

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.then10.do.end.i_crit_edge
  %gcov_ctr21.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 3), align 8, !dbg !793
  %15 = add i64 %gcov_ctr21.i, 1, !dbg !793
  store i64 %15, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 3), align 8, !dbg !793
  %16 = ptrtoint ptr %10 to i32, !dbg !793
  call void @__asan_load4_noabort(i32 %16), !dbg !793
  %17 = load ptr, ptr %10, align 4, !dbg !793
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.sroa.5.i), !dbg !794
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.sroa.8.i), !dbg !794
  %ftrace_ops.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 67, !dbg !795
  %18 = ptrtoint ptr %data.sroa.5.i to i32, !dbg !796
  call void @__asan_store4_noabort(i32 %18), !dbg !796
  store i32 1, ptr %data.sroa.5.i, align 4, !dbg !796
  %19 = ptrtoint ptr %data.sroa.8.i to i32, !dbg !796
  call void @__asan_store4_noabort(i32 %19), !dbg !796
  store i32 1, ptr %data.sroa.8.i, align 4, !dbg !796
  %pred52.i = getelementptr %struct.prog_entry, ptr %17, i32 0, i32 2, !dbg !797
  %20 = ptrtoint ptr %pred52.i to i32, !dbg !797
  call void @__asan_load4_noabort(i32 %20), !dbg !797
  %21 = load ptr, ptr %pred52.i, align 4, !dbg !797
  %tobool6.not53.i = icmp eq ptr %21, null, !dbg !798
  br i1 %tobool6.not53.i, label %do.end.i.free_filter_crit_edge, label %do.end.i.for.body.i_crit_edge, !dbg !798

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i, !dbg !798

do.end.i.free_filter_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !798
  br label %free_filter, !dbg !798

for.body.i:                                       ; preds = %if.end15.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %22 = phi ptr [ %73, %if.end15.i.for.body.i_crit_edge ], [ %21, %do.end.i.for.body.i_crit_edge ]
  %i.054.i = phi i32 [ %inc.i, %if.end15.i.for.body.i_crit_edge ], [ 0, %do.end.i.for.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.prog_entry, ptr %17, i32 %i.054.i, !dbg !799
  %23 = ptrtoint ptr %arrayidx.i.i to i32, !dbg !802
  call void @__asan_load4_noabort(i32 %23), !dbg !802
  %24 = load i32, ptr %arrayidx.i.i, align 4, !dbg !802
  %add.i.i = add i32 %24, 1, !dbg !803
  %pred.i.i = getelementptr %struct.prog_entry, ptr %17, i32 %add.i.i, i32 2, !dbg !804
  %25 = ptrtoint ptr %pred.i.i to i32, !dbg !804
  call void @__asan_load4_noabort(i32 %25), !dbg !804
  %26 = load ptr, ptr %pred.i.i, align 4, !dbg !804
  %tobool.not.i.i = icmp eq ptr %26, null, !dbg !805
  br i1 %tobool.not.i.i, label %is_or.exit.i, label %is_or.exit.thread.i, !dbg !805

is_or.exit.thread.i:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !806
  %gcov_ctr.i32.i = load i64, ptr @__llvm_gcov_ctr.223, align 8, !dbg !806
  %27 = add i64 %gcov_ctr.i32.i, 1, !dbg !806
  store i64 %27, ptr @__llvm_gcov_ctr.223, align 8, !dbg !806
  br label %if.then11.i, !dbg !807

is_or.exit.i:                                     ; preds = %for.body.i
  %arrayidx2.i.i = getelementptr %struct.prog_entry, ptr %17, i32 %add.i.i, !dbg !805
  %gcov_ctr6.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.223, i32 0, i32 1), align 8, !dbg !808
  %28 = add i64 %gcov_ctr6.i.i, 1, !dbg !808
  store i64 %28, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.223, i32 0, i32 1), align 8, !dbg !808
  %when_to_branch.i.i = getelementptr %struct.prog_entry, ptr %17, i32 %i.054.i, i32 1, !dbg !809
  %29 = ptrtoint ptr %when_to_branch.i.i to i32, !dbg !809
  call void @__asan_load4_noabort(i32 %29), !dbg !809
  %30 = load i32, ptr %when_to_branch.i.i, align 4, !dbg !809
  %31 = ptrtoint ptr %arrayidx2.i.i to i32, !dbg !810
  call void @__asan_load4_noabort(i32 %31), !dbg !810
  %32 = load i32, ptr %arrayidx2.i.i, align 4, !dbg !810
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32), !dbg !811
  %cmp.i.i = icmp eq i32 %30, %32, !dbg !811
  br i1 %cmp.i.i, label %if.end12.i, label %is_or.exit.i.if.then11.i_crit_edge, !dbg !807

is_or.exit.i.if.then11.i_crit_edge:               ; preds = %is_or.exit.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !807
  br label %if.then11.i, !dbg !807

if.then11.i:                                      ; preds = %is_or.exit.i.if.then11.i_crit_edge, %is_or.exit.thread.i
  %gcov_ctr22.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 4), align 16, !dbg !812
  %33 = add i64 %gcov_ctr22.i, 1, !dbg !812
  store i64 %33, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 4), align 16, !dbg !812
  br label %free_filter.thread39, !dbg !812

if.end12.i:                                       ; preds = %is_or.exit.i
  %field1.i.i.i = getelementptr inbounds %struct.filter_pred, ptr %22, i32 0, i32 4, !dbg !813
  %34 = ptrtoint ptr %field1.i.i.i to i32, !dbg !813
  call void @__asan_load4_noabort(i32 %34), !dbg !813
  %35 = load ptr, ptr %field1.i.i.i, align 8, !dbg !813
  %op.i.i.i = getelementptr inbounds %struct.filter_pred, ptr %22, i32 0, i32 7, !dbg !818
  %36 = ptrtoint ptr %op.i.i.i to i32, !dbg !818
  call void @__asan_load4_noabort(i32 %36), !dbg !818
  %37 = load i32, ptr %op.i.i.i, align 4, !dbg !818
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37), !dbg !819
  %cmp.not.i.i.i = icmp eq i32 %37, 2, !dbg !819
  br i1 %cmp.not.i.i.i, label %if.end12.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i, !dbg !820

if.end12.i.if.end.i.i.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !820
  br label %if.end.i.i.i, !dbg !820

land.lhs.true.i.i.i:                              ; preds = %if.end12.i
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.225, align 16, !dbg !821
  %38 = add i64 %gcov_ctr.i.i.i, 1, !dbg !821
  store i64 %38, ptr @__llvm_gcov_ctr.225, align 16, !dbg !821
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37), !dbg !822
  %cmp3.not.i.i.i = icmp eq i32 %37, 1, !dbg !822
  br i1 %cmp3.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i, !dbg !823

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !823
  br label %if.end.i.i.i, !dbg !823

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !824
  %gcov_ctr6.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.225, i32 0, i32 1), align 8, !dbg !824
  %39 = add i64 %gcov_ctr6.i.i.i, 1, !dbg !824
  store i64 %39, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.225, i32 0, i32 1), align 8, !dbg !824
  br label %ftrace_function_set_filter_pred.exit.thread.i, !dbg !824

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.end12.i.if.end.i.i.i_crit_edge
  %name.i.i.i = getelementptr inbounds %struct.ftrace_event_field, ptr %35, i32 0, i32 1, !dbg !825
  %40 = ptrtoint ptr %name.i.i.i to i32, !dbg !825
  call void @__asan_load4_noabort(i32 %40), !dbg !825
  %41 = load ptr, ptr %name.i.i.i, align 4, !dbg !825
  %call.i.i.i = call i32 @strcmp(ptr noundef %41, ptr noundef nonnull dereferenceable(3) @.str.12) #26, !dbg !826
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i), !dbg !826
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0, !dbg !826
  br i1 %tobool.not.i.i.i, label %if.end.i35.i, label %if.then4.i.i.i, !dbg !826

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !827
  %gcov_ctr7.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.225, i32 0, i32 2), align 16, !dbg !827
  %42 = add i64 %gcov_ctr7.i.i.i, 1, !dbg !827
  store i64 %42, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.225, i32 0, i32 2), align 16, !dbg !827
  br label %ftrace_function_set_filter_pred.exit.thread.i, !dbg !827

ftrace_function_set_filter_pred.exit.thread.i:    ; preds = %if.then4.i.i.i, %if.then.i.i.i
  %gcov_ctr.i33.i = load i64, ptr @__llvm_gcov_ctr.224, align 8, !dbg !828
  %43 = add i64 %gcov_ctr.i33.i, 1, !dbg !828
  store i64 %43, ptr @__llvm_gcov_ctr.224, align 8, !dbg !828
  br label %if.then14.i, !dbg !829

if.end.i35.i:                                     ; preds = %if.end.i.i.i
  %gcov_ctr8.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.225, i32 0, i32 3), align 8, !dbg !830
  %44 = add i64 %gcov_ctr8.i.i.i, 1, !dbg !830
  store i64 %44, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.225, i32 0, i32 3), align 8, !dbg !830
  %gcov_ctr3.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.224, i32 0, i32 1), align 8, !dbg !831
  %45 = add i64 %gcov_ctr3.i.i, 1, !dbg !831
  store i64 %45, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.224, i32 0, i32 1), align 8, !dbg !831
  %regex.i.i = getelementptr inbounds %struct.filter_pred, ptr %22, i32 0, i32 2, !dbg !832
  %len.i.i = getelementptr inbounds %struct.filter_pred, ptr %22, i32 0, i32 2, i32 1, !dbg !833
  %46 = ptrtoint ptr %len.i.i to i32, !dbg !833
  call void @__asan_load4_noabort(i32 %46), !dbg !833
  %47 = load i32, ptr %len.i.i, align 8, !dbg !833
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %re_cnt.i.i.i) #24, !dbg !834
  %48 = ptrtoint ptr %re_cnt.i.i.i to i32, !dbg !837
  call void @__asan_store4_noabort(i32 %48), !dbg !837
  store i32 -1, ptr %re_cnt.i.i.i, align 4, !dbg !837, !annotation !838
  br i1 %cmp.not.i.i.i, label %if.end.i35.i.cond.end.i.i.i_crit_edge, label %cond.false.i.i.i, !dbg !839

if.end.i35.i.cond.end.i.i.i_crit_edge:            ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !839
  br label %cond.end.i.i.i, !dbg !839

cond.false.i.i.i:                                 ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !840
  %gcov_ctr.i9.i.i = load i64, ptr @__llvm_gcov_ctr.226, align 16, !dbg !840
  %49 = add i64 %gcov_ctr.i9.i.i, 1, !dbg !840
  store i64 %49, ptr @__llvm_gcov_ctr.226, align 16, !dbg !840
  br label %cond.end.i.i.i, !dbg !839

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %if.end.i35.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi ptr [ %data.sroa.8.i, %cond.false.i.i.i ], [ %data.sroa.5.i, %if.end.i35.i.cond.end.i.i.i_crit_edge ], !dbg !839
  %call.i.i.i.i = call ptr @kstrndup(ptr noundef %regex.i.i, i32 noundef %47, i32 noundef 3264) #24, !dbg !841
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i, null, !dbg !844
  br i1 %tobool.not.i.i.i.i, label %ftrace_function_filter_re.exit.thread.i.i.i, label %ftrace_function_filter_re.exit.i.i.i, !dbg !845

ftrace_function_filter_re.exit.thread.i.i.i:      ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !846
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.227, align 8, !dbg !846
  %50 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !846
  store i64 %50, ptr @__llvm_gcov_ctr.227, align 8, !dbg !846
  br label %ftrace_function_set_filter_pred.exit.thread40.i, !dbg !847

ftrace_function_filter_re.exit.i.i.i:             ; preds = %cond.end.i.i.i
  %gcov_ctr4.i.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.227, i32 0, i32 1), align 8, !dbg !848
  %51 = add i64 %gcov_ctr4.i.i.i.i, 1, !dbg !848
  store i64 %51, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.227, i32 0, i32 1), align 8, !dbg !848
  %call1.i.i.i.i = call ptr @strreplace(ptr noundef nonnull %call.i.i.i.i, i8 noundef zeroext 44, i8 noundef zeroext 32) #24, !dbg !849
  %call2.i.i.i.i = call ptr @argv_split(i32 noundef 3264, ptr noundef nonnull %call.i.i.i.i, ptr noundef nonnull %re_cnt.i.i.i) #24, !dbg !850
  call void @kfree(ptr noundef nonnull %call.i.i.i.i) #24, !dbg !851
  %tobool1.not.i.i.i = icmp eq ptr %call2.i.i.i.i, null, !dbg !852
  br i1 %tobool1.not.i.i.i, label %ftrace_function_filter_re.exit.i.i.i.ftrace_function_set_filter_pred.exit.thread40.i_crit_edge, label %if.end.i11.i.i, !dbg !847

ftrace_function_filter_re.exit.i.i.i.ftrace_function_set_filter_pred.exit.thread40.i_crit_edge: ; preds = %ftrace_function_filter_re.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !847
  br label %ftrace_function_set_filter_pred.exit.thread40.i, !dbg !847

ftrace_function_set_filter_pred.exit.thread40.i:  ; preds = %ftrace_function_filter_re.exit.i.i.i.ftrace_function_set_filter_pred.exit.thread40.i_crit_edge, %ftrace_function_filter_re.exit.thread.i.i.i
  %gcov_ctr15.i.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.226, i32 0, i32 1), align 8, !dbg !853
  %52 = add i64 %gcov_ctr15.i.i.i, 1, !dbg !853
  store i64 %52, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.226, i32 0, i32 1), align 8, !dbg !853
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %re_cnt.i.i.i) #24, !dbg !854
  br label %if.then14.i, !dbg !829

if.end.i11.i.i:                                   ; preds = %ftrace_function_filter_re.exit.i.i.i
  %gcov_ctr16.i.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.226, i32 0, i32 2), align 16, !dbg !855
  %53 = add i64 %gcov_ctr16.i.i.i, 1, !dbg !855
  store i64 %53, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.226, i32 0, i32 2), align 16, !dbg !855
  %54 = ptrtoint ptr %re_cnt.i.i.i to i32, !dbg !856
  call void @__asan_load4_noabort(i32 %54), !dbg !856
  %55 = load i32, ptr %re_cnt.i.i.i, align 4, !dbg !856
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55), !dbg !857
  %cmp42.i.i.i = icmp sgt i32 %55, 0, !dbg !857
  br i1 %cmp42.i.i.i, label %if.end.i11.i.i.for.body.i.i.i_crit_edge, label %ftrace_function_set_filter_pred.exit.thread43.i, !dbg !858

if.end.i11.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.end.i11.i.i
  br label %for.body.i.i.i, !dbg !858

ftrace_function_set_filter_pred.exit.thread43.i:  ; preds = %if.end.i11.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !859
  call void @argv_free(ptr noundef nonnull %call2.i.i.i.i) #24, !dbg !859
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %re_cnt.i.i.i) #24, !dbg !854
  br label %if.then14.i, !dbg !829

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i11.i.i.for.body.i.i.i_crit_edge
  %i.043.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i11.i.i.for.body.i.i.i_crit_edge ]
  %56 = ptrtoint ptr %cond.i.i.i to i32, !dbg !860
  call void @__asan_load4_noabort(i32 %56), !dbg !860
  %57 = load i32, ptr %cond.i.i.i, align 4, !dbg !860
  %arrayidx.i.i.i = getelementptr ptr, ptr %call2.i.i.i.i, i32 %i.043.i.i.i, !dbg !861
  %58 = ptrtoint ptr %arrayidx.i.i.i to i32, !dbg !861
  call void @__asan_load4_noabort(i32 %58), !dbg !861
  %59 = load ptr, ptr %arrayidx.i.i.i, align 4, !dbg !861
  %call3.i.i.i = call i32 @strlen(ptr noundef %59) #26, !dbg !862
  br i1 %cmp.not.i.i.i, label %if.then.i35.i.i.i, label %if.else.i.i.i.i, !dbg !863

if.then.i35.i.i.i:                                ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !866
  %gcov_ctr.i33.i.i.i = load i64, ptr @__llvm_gcov_ctr.228, align 8, !dbg !866
  %60 = add i64 %gcov_ctr.i33.i.i.i, 1, !dbg !866
  store i64 %60, ptr @__llvm_gcov_ctr.228, align 8, !dbg !866
  %call.i34.i.i.i = call i32 @ftrace_set_filter(ptr noundef %ftrace_ops.i, ptr noundef %59, i32 noundef %call3.i.i.i, i32 noundef %57) #24, !dbg !867
  br label %ftrace_function_set_regexp.exit.i.i.i, !dbg !868

if.else.i.i.i.i:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !869
  %gcov_ctr2.i.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.228, i32 0, i32 1), align 8, !dbg !869
  %61 = add i64 %gcov_ctr2.i.i.i.i, 1, !dbg !869
  store i64 %61, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.228, i32 0, i32 1), align 8, !dbg !869
  %call1.i36.i.i.i = call i32 @ftrace_set_notrace(ptr noundef %ftrace_ops.i, ptr noundef %59, i32 noundef %call3.i.i.i, i32 noundef %57) #24, !dbg !870
  br label %ftrace_function_set_regexp.exit.i.i.i

ftrace_function_set_regexp.exit.i.i.i:            ; preds = %if.else.i.i.i.i, %if.then.i35.i.i.i
  %ret.0.i.i.i.i = phi i32 [ %call.i34.i.i.i, %if.then.i35.i.i.i ], [ %call1.i36.i.i.i, %if.else.i.i.i.i ], !dbg !871
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i.i.i), !dbg !872
  %tobool5.not.i.i.i = icmp eq i32 %ret.0.i.i.i.i, 0, !dbg !872
  br i1 %tobool5.not.i.i.i, label %if.end7.i.i.i, label %ftrace_function_set_filter_pred.exit.i, !dbg !872

if.end7.i.i.i:                                    ; preds = %ftrace_function_set_regexp.exit.i.i.i
  %62 = ptrtoint ptr %cond.i.i.i to i32, !dbg !873
  call void @__asan_load4_noabort(i32 %62), !dbg !873
  %63 = load i32, ptr %cond.i.i.i, align 4, !dbg !873
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63), !dbg !873
  %tobool8.not.i.i.i = icmp eq i32 %63, 0, !dbg !873
  br i1 %tobool8.not.i.i.i, label %if.end7.i.i.i.for.inc.i.i.i_crit_edge, label %if.then9.i.i.i, !dbg !873

if.end7.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !873
  br label %for.inc.i.i.i, !dbg !873

if.then9.i.i.i:                                   ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !874
  %gcov_ctr18.i.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.226, i32 0, i32 4), align 16, !dbg !874
  %64 = add i64 %gcov_ctr18.i.i.i, 1, !dbg !874
  store i64 %64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.226, i32 0, i32 4), align 16, !dbg !874
  %65 = ptrtoint ptr %cond.i.i.i to i32, !dbg !875
  call void @__asan_store4_noabort(i32 %65), !dbg !875
  store i32 0, ptr %cond.i.i.i, align 4, !dbg !875
  br label %for.inc.i.i.i, !dbg !876

for.inc.i.i.i:                                    ; preds = %if.then9.i.i.i, %if.end7.i.i.i.for.inc.i.i.i_crit_edge
  %gcov_ctr19.i.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.226, i32 0, i32 5), align 8, !dbg !877
  %66 = add i64 %gcov_ctr19.i.i.i, 1, !dbg !877
  store i64 %66, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.226, i32 0, i32 5), align 8, !dbg !877
  %inc.i.i.i = add nuw nsw i32 %i.043.i.i.i, 1, !dbg !877
  %67 = ptrtoint ptr %re_cnt.i.i.i to i32, !dbg !856
  call void @__asan_load4_noabort(i32 %67), !dbg !856
  %68 = load i32, ptr %re_cnt.i.i.i, align 4, !dbg !856
  %cmp.i.i.i = icmp slt i32 %inc.i.i.i, %68, !dbg !857
  br i1 %cmp.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %ftrace_function_set_filter_pred.exit.thread46.i, !dbg !858, !llvm.loop !878

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !858
  br label %for.body.i.i.i, !dbg !858

ftrace_function_set_filter_pred.exit.thread46.i:  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !859
  call void @argv_free(ptr noundef nonnull %call2.i.i.i.i) #24, !dbg !859
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %re_cnt.i.i.i) #24, !dbg !854
  br label %if.end15.i, !dbg !829

ftrace_function_set_filter_pred.exit.i:           ; preds = %ftrace_function_set_regexp.exit.i.i.i
  %gcov_ctr17.i.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.226, i32 0, i32 3), align 8, !dbg !880
  %69 = add i64 %gcov_ctr17.i.i.i, 1, !dbg !880
  store i64 %69, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.226, i32 0, i32 3), align 8, !dbg !880
  call void @argv_free(ptr noundef nonnull %call2.i.i.i.i) #24, !dbg !859
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %re_cnt.i.i.i) #24, !dbg !854
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i.i.i), !dbg !881
  %cmp.i = icmp slt i32 %ret.0.i.i.i.i, 0, !dbg !881
  br i1 %cmp.i, label %ftrace_function_set_filter_pred.exit.i.if.then14.i_crit_edge, label %ftrace_function_set_filter_pred.exit.i.if.end15.i_crit_edge, !dbg !829

ftrace_function_set_filter_pred.exit.i.if.end15.i_crit_edge: ; preds = %ftrace_function_set_filter_pred.exit.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !829
  br label %if.end15.i, !dbg !829

ftrace_function_set_filter_pred.exit.i.if.then14.i_crit_edge: ; preds = %ftrace_function_set_filter_pred.exit.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !829
  br label %if.then14.i, !dbg !829

if.then14.i:                                      ; preds = %ftrace_function_set_filter_pred.exit.i.if.then14.i_crit_edge, %ftrace_function_set_filter_pred.exit.thread43.i, %ftrace_function_set_filter_pred.exit.thread40.i, %ftrace_function_set_filter_pred.exit.thread.i
  %gcov_ctr23.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 5), align 8, !dbg !882
  %70 = add i64 %gcov_ctr23.i, 1, !dbg !882
  store i64 %70, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 5), align 8, !dbg !882
  br label %free_filter.thread39, !dbg !882

if.end15.i:                                       ; preds = %ftrace_function_set_filter_pred.exit.i.if.end15.i_crit_edge, %ftrace_function_set_filter_pred.exit.thread46.i
  %gcov_ctr24.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 6), align 16, !dbg !883
  %71 = add i64 %gcov_ctr24.i, 1, !dbg !883
  store i64 %71, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 6), align 16, !dbg !883
  %inc.i = add i32 %i.054.i, 1, !dbg !884
  %pred.i = getelementptr %struct.prog_entry, ptr %17, i32 %inc.i, i32 2, !dbg !797
  %72 = ptrtoint ptr %pred.i to i32, !dbg !797
  call void @__asan_load4_noabort(i32 %72), !dbg !797
  %73 = load ptr, ptr %pred.i, align 4, !dbg !797
  %tobool6.not.i = icmp eq ptr %73, null, !dbg !798
  br i1 %tobool6.not.i, label %if.end15.i.free_filter_crit_edge, label %if.end15.i.for.body.i_crit_edge, !dbg !798, !llvm.loop !885

if.end15.i.for.body.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !798
  br label %for.body.i, !dbg !798

if.end15.i.free_filter_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !798
  br label %free_filter, !dbg !798

free_filter.thread:                               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22, !dbg !886
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.114, i32 0, i32 4), align 16, !dbg !886
  %74 = add i64 %gcov_ctr21, 1, !dbg !886
  store i64 %74, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.114, i32 0, i32 4), align 16, !dbg !886
  %75 = ptrtoint ptr %filter to i32, !dbg !886
  call void @__asan_load4_noabort(i32 %75), !dbg !886
  %76 = load ptr, ptr %filter, align 4, !dbg !886
  %77 = ptrtoint ptr %filter1 to i32, !dbg !887
  call void @__asan_store4_noabort(i32 %77), !dbg !887
  store ptr %76, ptr %filter1, align 4, !dbg !887
  br label %lor.lhs.false, !dbg !783

free_filter.thread39:                             ; preds = %if.then14.i, %if.then11.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.sroa.5.i), !dbg !888
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.sroa.8.i), !dbg !888
  br label %if.then16, !dbg !783

free_filter:                                      ; preds = %if.end15.i.free_filter_crit_edge, %do.end.i.free_filter_crit_edge
  %gcov_ctr25.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 7), align 8, !dbg !889
  %78 = add i64 %gcov_ctr25.i, 1, !dbg !889
  store i64 %78, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 7), align 8, !dbg !889
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.sroa.5.i), !dbg !888
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.sroa.8.i), !dbg !888
  br label %lor.lhs.false, !dbg !783

lor.lhs.false:                                    ; preds = %free_filter, %free_filter.thread
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.114, i32 0, i32 5), align 8, !dbg !890
  %79 = add i64 %gcov_ctr22, 1, !dbg !890
  store i64 %79, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.114, i32 0, i32 5), align 8, !dbg !890
  %call15 = call zeroext i1 @ftrace_event_is_function(ptr noundef nonnull %2) #24, !dbg !891
  br i1 %call15, label %lor.lhs.false.if.then16_crit_edge, label %lor.lhs.false.out_unlock_crit_edge, !dbg !892

lor.lhs.false.out_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22, !dbg !892
  br label %out_unlock, !dbg !892

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22, !dbg !892
  br label %if.then16, !dbg !892

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %free_filter.thread39, %free_filter.thread36
  %err.034 = phi i32 [ 0, %lor.lhs.false.if.then16_crit_edge ], [ %call5, %free_filter.thread36 ], [ -22, %free_filter.thread39 ]
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.114, i32 0, i32 6), align 16, !dbg !893
  %80 = add i64 %gcov_ctr23, 1, !dbg !893
  store i64 %80, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.114, i32 0, i32 6), align 16, !dbg !893
  %81 = ptrtoint ptr %filter to i32, !dbg !893
  call void @__asan_load4_noabort(i32 %81), !dbg !893
  %82 = load ptr, ptr %filter, align 4, !dbg !893
  call fastcc void @__free_filter(ptr noundef %82), !dbg !894
  br label %out_unlock, !dbg !894

out_unlock:                                       ; preds = %if.then16, %lor.lhs.false.out_unlock_crit_edge, %if.then3, %if.then
  %err.1 = phi i32 [ -17, %if.then3 ], [ %err.034, %if.then16 ], [ 0, %lor.lhs.false.out_unlock_crit_edge ], [ -22, %if.then ], !dbg !895
  call void @mutex_unlock(ptr noundef nonnull @event_mutex) #24, !dbg !896
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %filter) #24, !dbg !897
  ret i32 %err.1, !dbg !898
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ftrace_event_is_function(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ftrace_test_filter(ptr nocapture readnone %__data, i32 noundef %a, i32 noundef %b, i32 noundef %c, i32 noundef %d, i32 noundef %e, i32 noundef %f, i32 noundef %g, i32 noundef %h) #3 align 64 !dbg !899 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !901
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.116, align 16, !dbg !902
  %0 = add i64 %gcov_ctr, 1, !dbg !902
  store i64 %0, ptr @__llvm_gcov_ctr.116, align 16, !dbg !902
  %1 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ftrace_test_filter, i32 0, i32 7), align 4, !dbg !902
  %tobool.not = icmp eq ptr %1, null, !dbg !902
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge, !dbg !902

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2, !dbg !902

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !902
  br label %if.end, !dbg !902

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %1, %entry.do.body2_crit_edge ], !dbg !902
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.116, i32 0, i32 1), align 8, !dbg !902
  %2 = add i64 %gcov_ctr11, 1, !dbg !902
  store i64 %2, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.116, i32 0, i32 1), align 8, !dbg !902
  %3 = ptrtoint ptr %it_func_ptr.0 to i32, !dbg !902
  call void @__asan_load4_noabort(i32 %3), !dbg !902
  %4 = load volatile ptr, ptr %it_func_ptr.0, align 4, !dbg !902
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1, !dbg !902
  %5 = ptrtoint ptr %data to i32, !dbg !902
  call void @__asan_load4_noabort(i32 %5), !dbg !902
  %6 = load ptr, ptr %data, align 4, !dbg !902
  tail call void %4(ptr noundef %6, i32 noundef %a, i32 noundef %b, i32 noundef %c, i32 noundef %d, i32 noundef %e, i32 noundef %f, i32 noundef %g, i32 noundef %h) #24, !dbg !902
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1, !dbg !902
  %7 = ptrtoint ptr %incdec.ptr to i32, !dbg !902
  call void @__asan_load4_noabort(i32 %7), !dbg !902
  %8 = load ptr, ptr %incdec.ptr, align 4, !dbg !902
  %tobool9.not = icmp eq ptr %8, null, !dbg !902
  br i1 %tobool9.not, label %do.end10, label %do.body2.do.body2_crit_edge, !dbg !902, !llvm.loop !903

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #22, !dbg !902
  br label %do.body2, !dbg !902

do.end10:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #22, !dbg !902
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.116, i32 0, i32 2), align 16, !dbg !902
  %9 = add i64 %gcov_ctr12, 1, !dbg !902
  store i64 %9, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.116, i32 0, i32 2), align 16, !dbg !902
  br label %if.end, !dbg !902

if.end:                                           ; preds = %do.end10, %entry.if.end_crit_edge
  ret i32 0, !dbg !902
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ftrace_test_filter(ptr noundef %__data, i32 noundef %a, i32 noundef %b, i32 noundef %c, i32 noundef %d, i32 noundef %e, i32 noundef %f, i32 noundef %g, i32 noundef %h) #3 align 64 !dbg !904 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #22, !dbg !905
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #24, !dbg !906
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7, !dbg !907
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24), !dbg !906
  %1 = ptrtoint ptr %flags.i to i32, !dbg !907
  call void @__asan_load4_noabort(i32 %1), !dbg !907
  %2 = load i32, ptr %flags.i, align 4, !dbg !907
  %and.i = and i32 %2, 704, !dbg !911
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !911
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !911
  br i1 %tobool.not.i, label %entry.if.end.sink.split_crit_edge, label %if.end.i, !dbg !911, !prof !381

entry.if.end.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !911
  br label %if.end.sink.split, !dbg !911

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256, !dbg !912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i), !dbg !912
  %tobool5.not.i = icmp eq i32 %and4.i, 0, !dbg !912
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end.sink.split_crit_edge, !dbg !912, !prof !913

if.end.i.if.end.sink.split_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !912
  br label %if.end.sink.split, !dbg !912

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %gcov_ctr14.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.229, i32 0, i32 1), align 8, !dbg !914
  %3 = add i64 %gcov_ctr14.i, 1, !dbg !914
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.229, i32 0, i32 1), align 8, !dbg !914
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #24, !dbg !915
  br i1 %call.i, label %if.then, label %trace_trigger_soft_disabled.exit.if.end_crit_edge, !dbg !906

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #22, !dbg !906
  br label %if.end, !dbg !906

if.then:                                          ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #22, !dbg !916
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.117, align 16
  %4 = add i64 %gcov_ctr, 1
  store i64 %4, ptr @__llvm_gcov_ctr.117, align 16
  br label %cleanup, !dbg !906

if.end.sink.split:                                ; preds = %if.end.i.if.end.sink.split_crit_edge, %entry.if.end.sink.split_crit_edge
  %.sink = phi ptr [ @__llvm_gcov_ctr.229, %entry.if.end.sink.split_crit_edge ], [ getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.229, i32 0, i32 2), %if.end.i.if.end.sink.split_crit_edge ]
  %5 = ptrtoint ptr %.sink to i32, !dbg !917
  call void @__asan_load8_noabort(i32 %5), !dbg !917
  %gcov_ctr15.i = load i64, ptr %.sink, align 16, !dbg !917
  %6 = add i64 %gcov_ctr15.i, 1, !dbg !917
  store i64 %6, ptr %.sink, align 16, !dbg !917
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %trace_trigger_soft_disabled.exit.if.end_crit_edge
  %gcov_ctr.i38 = load i64, ptr @__llvm_gcov_ctr.230, align 8
  %7 = add i64 %gcov_ctr.i38, 1
  store i64 %7, ptr @__llvm_gcov_ctr.230, align 8
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #24, !dbg !906
  %tobool.not = icmp eq ptr %call3, null, !dbg !906
  br i1 %tobool.not, label %if.then4, label %if.end5, !dbg !906

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22, !dbg !916
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 1), align 8
  %8 = add i64 %gcov_ctr18, 1
  store i64 %8, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 1), align 8
  br label %cleanup, !dbg !906

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22, !dbg !906
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 2), align 16, !dbg !906
  %9 = add i64 %gcov_ctr19, 1, !dbg !906
  store i64 %9, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 2), align 16, !dbg !906
  %a6 = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %call3, i32 0, i32 1, !dbg !906
  %10 = ptrtoint ptr %a6 to i32, !dbg !906
  call void @__asan_store4_noabort(i32 %10), !dbg !906
  store i32 %a, ptr %a6, align 4, !dbg !906
  %b7 = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %call3, i32 0, i32 2, !dbg !906
  %11 = ptrtoint ptr %b7 to i32, !dbg !906
  call void @__asan_store4_noabort(i32 %11), !dbg !906
  store i32 %b, ptr %b7, align 4, !dbg !906
  %c8 = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %call3, i32 0, i32 3, !dbg !906
  %12 = ptrtoint ptr %c8 to i32, !dbg !906
  call void @__asan_store4_noabort(i32 %12), !dbg !906
  store i32 %c, ptr %c8, align 4, !dbg !906
  %d9 = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %call3, i32 0, i32 4, !dbg !906
  %13 = ptrtoint ptr %d9 to i32, !dbg !906
  call void @__asan_store4_noabort(i32 %13), !dbg !906
  store i32 %d, ptr %d9, align 4, !dbg !906
  %e10 = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %call3, i32 0, i32 5, !dbg !906
  %14 = ptrtoint ptr %e10 to i32, !dbg !906
  call void @__asan_store4_noabort(i32 %14), !dbg !906
  store i32 %e, ptr %e10, align 4, !dbg !906
  %f11 = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %call3, i32 0, i32 6, !dbg !906
  %15 = ptrtoint ptr %f11 to i32, !dbg !906
  call void @__asan_store4_noabort(i32 %15), !dbg !906
  store i32 %f, ptr %f11, align 4, !dbg !906
  %g12 = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %call3, i32 0, i32 7, !dbg !906
  %16 = ptrtoint ptr %g12 to i32, !dbg !906
  call void @__asan_store4_noabort(i32 %16), !dbg !906
  store i32 %g, ptr %g12, align 4, !dbg !906
  %h13 = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %call3, i32 0, i32 8, !dbg !906
  %17 = ptrtoint ptr %h13 to i32, !dbg !906
  call void @__asan_store4_noabort(i32 %17), !dbg !906
  store i32 %h, ptr %h13, align 4, !dbg !906
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #24, !dbg !906
  br label %cleanup, !dbg !906

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #24, !dbg !906
  ret void, !dbg !906
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_ftrace_test_filter(ptr noundef %__data, i32 noundef %a, i32 noundef %b, i32 noundef %c, i32 noundef %d, i32 noundef %e, i32 noundef %f, i32 noundef %g, i32 noundef %h) #3 align 64 !dbg !918 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22, !dbg !919
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #24, !dbg !920
  %0 = ptrtoint ptr %__regs to i32, !dbg !920
  call void @__asan_store4_noabort(i32 %0), !dbg !920
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !dbg !920, !annotation !838
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #24, !dbg !920
  %1 = ptrtoint ptr %rctx to i32, !dbg !920
  call void @__asan_store4_noabort(i32 %1), !dbg !920
  store i32 -1, ptr %rctx, align 4, !dbg !920, !annotation !838
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.230, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.230, align 8
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10, !dbg !920
  %3 = ptrtoint ptr %perf_events to i32, !dbg !920
  call void @__asan_load4_noabort(i32 %3), !dbg !920
  %4 = load ptr, ptr %perf_events, align 4, !dbg !920
  %5 = ptrtoint ptr %4 to i32, !dbg !920
  %gcov_ctr.i64 = load i64, ptr @__llvm_gcov_ctr.163, align 8, !dbg !921
  %6 = add i64 %gcov_ctr.i64, 1, !dbg !921
  store i64 %6, ptr @__llvm_gcov_ctr.163, align 8, !dbg !921
  %7 = tail call i32 @llvm.read_register.i32(metadata !189) #24, !dbg !921
  %and.i = and i32 %7, -16384, !dbg !925
  %8 = inttoptr i32 %and.i to ptr, !dbg !926
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3, !dbg !920
  %9 = ptrtoint ptr %cpu to i32, !dbg !920
  call void @__asan_load4_noabort(i32 %9), !dbg !920
  %10 = load i32, ptr %cpu, align 4, !dbg !920
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10, !dbg !920
  %11 = ptrtoint ptr %arrayidx to i32, !dbg !920
  call void @__asan_load4_noabort(i32 %11), !dbg !920
  %12 = load i32, ptr %arrayidx, align 4, !dbg !920
  %add = add i32 %12, %5, !dbg !920
  %13 = inttoptr i32 %add to ptr, !dbg !920
  %gcov_ctr.i65 = load i64, ptr @__llvm_gcov_ctr.232, align 8
  %14 = add i64 %gcov_ctr.i65, 1
  store i64 %14, ptr @__llvm_gcov_ctr.232, align 8
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11, !dbg !927
  %15 = ptrtoint ptr %prog_array.i to i32, !dbg !927
  call void @__asan_load4_noabort(i32 %15), !dbg !927
  %16 = load volatile ptr, ptr %prog_array.i, align 4, !dbg !927
  %tobool.i.not = icmp eq ptr %16, null, !dbg !930
  br i1 %tobool.i.not, label %land.lhs.true, label %entry.if.end_crit_edge, !dbg !920

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !920
  br label %if.end, !dbg !920

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.118, align 16, !dbg !920
  %17 = add i64 %gcov_ctr, 1, !dbg !920
  store i64 %17, ptr @__llvm_gcov_ctr.118, align 16, !dbg !920
  %gcov_ctr34 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 1), align 8, !dbg !920
  %18 = add i64 %gcov_ctr34, 1, !dbg !920
  store i64 %18, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 1), align 8, !dbg !920
  %gcov_ctr35 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 2), align 16, !dbg !920
  %19 = add i64 %gcov_ctr35, 1, !dbg !920
  store i64 %19, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 2), align 16, !dbg !920
  %gcov_ctr.i66 = load i64, ptr @__llvm_gcov_ctr.233, align 8
  %20 = add i64 %gcov_ctr.i66, 1
  store i64 %20, ptr @__llvm_gcov_ctr.233, align 8
  %21 = ptrtoint ptr %13 to i32, !dbg !931
  call void @__asan_load4_noabort(i32 %21), !dbg !931
  %22 = load volatile ptr, ptr %13, align 4, !dbg !931
  %tobool.not.i.not = icmp eq ptr %22, null, !dbg !934
  br i1 %tobool.not.i.not, label %if.then, label %land.lhs.true.if.end_crit_edge, !dbg !920

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22, !dbg !920
  br label %if.end, !dbg !920

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22, !dbg !935
  %gcov_ctr36 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 3), align 8
  %23 = add i64 %gcov_ctr36, 1
  store i64 %23, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 3), align 8
  br label %cleanup, !dbg !920

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #24, !dbg !920
  %tobool14.not = icmp eq ptr %call13, null, !dbg !920
  br i1 %tobool14.not, label %if.then15, label %if.end16, !dbg !920

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22, !dbg !935
  %gcov_ctr37 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 4), align 16
  %24 = add i64 %gcov_ctr37, 1
  store i64 %24, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 4), align 16
  br label %cleanup, !dbg !920

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22, !dbg !920
  %gcov_ctr38 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 5), align 8, !dbg !920
  %25 = add i64 %gcov_ctr38, 1, !dbg !920
  store i64 %25, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 5), align 8, !dbg !920
  %26 = ptrtoint ptr %__regs to i32, !dbg !920
  call void @__asan_load4_noabort(i32 %26), !dbg !920
  %27 = load ptr, ptr %__regs, align 4, !dbg !920
  %gcov_ctr.i67 = load i64, ptr @__llvm_gcov_ctr.234, align 8
  %28 = add i64 %gcov_ctr.i67, 1
  store i64 %28, ptr @__llvm_gcov_ctr.234, align 8
  %29 = call ptr @llvm.returnaddress(i32 0) #24, !dbg !936
  %30 = ptrtoint ptr %29 to i32, !dbg !936
  %arrayidx.i = getelementptr [18 x i32], ptr %27, i32 0, i32 15, !dbg !936
  %31 = ptrtoint ptr %arrayidx.i to i32, !dbg !936
  call void @__asan_store4_noabort(i32 %31), !dbg !936
  store i32 %30, ptr %arrayidx.i, align 4, !dbg !936
  %32 = call ptr @llvm.frameaddress.p0(i32 0) #24, !dbg !936
  %33 = ptrtoint ptr %32 to i32, !dbg !936
  %arrayidx2.i = getelementptr [18 x i32], ptr %27, i32 0, i32 11, !dbg !936
  %34 = ptrtoint ptr %arrayidx2.i to i32, !dbg !936
  call void @__asan_store4_noabort(i32 %34), !dbg !936
  store i32 %33, ptr %arrayidx2.i, align 4, !dbg !936
  %35 = call i32 @llvm.read_register.i32(metadata !189) #24, !dbg !936
  %arrayidx4.i = getelementptr [18 x i32], ptr %27, i32 0, i32 13, !dbg !936
  %36 = ptrtoint ptr %arrayidx4.i to i32, !dbg !936
  call void @__asan_store4_noabort(i32 %36), !dbg !936
  store i32 %35, ptr %arrayidx4.i, align 4, !dbg !936
  %arrayidx6.i = getelementptr [18 x i32], ptr %27, i32 0, i32 16, !dbg !936
  %37 = ptrtoint ptr %arrayidx6.i to i32, !dbg !936
  call void @__asan_store4_noabort(i32 %37), !dbg !936
  store i32 19, ptr %arrayidx6.i, align 4, !dbg !936
  %a17 = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %call13, i32 0, i32 1, !dbg !920
  %38 = ptrtoint ptr %a17 to i32, !dbg !920
  call void @__asan_store4_noabort(i32 %38), !dbg !920
  store i32 %a, ptr %a17, align 4, !dbg !920
  %b18 = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %call13, i32 0, i32 2, !dbg !920
  %39 = ptrtoint ptr %b18 to i32, !dbg !920
  call void @__asan_store4_noabort(i32 %39), !dbg !920
  store i32 %b, ptr %b18, align 4, !dbg !920
  %c19 = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %call13, i32 0, i32 3, !dbg !920
  %40 = ptrtoint ptr %c19 to i32, !dbg !920
  call void @__asan_store4_noabort(i32 %40), !dbg !920
  store i32 %c, ptr %c19, align 4, !dbg !920
  %d20 = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %call13, i32 0, i32 4, !dbg !920
  %41 = ptrtoint ptr %d20 to i32, !dbg !920
  call void @__asan_store4_noabort(i32 %41), !dbg !920
  store i32 %d, ptr %d20, align 4, !dbg !920
  %e21 = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %call13, i32 0, i32 5, !dbg !920
  %42 = ptrtoint ptr %e21 to i32, !dbg !920
  call void @__asan_store4_noabort(i32 %42), !dbg !920
  store i32 %e, ptr %e21, align 4, !dbg !920
  %f22 = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %call13, i32 0, i32 6, !dbg !920
  %43 = ptrtoint ptr %f22 to i32, !dbg !920
  call void @__asan_store4_noabort(i32 %43), !dbg !920
  store i32 %f, ptr %f22, align 4, !dbg !920
  %g23 = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %call13, i32 0, i32 7, !dbg !920
  %44 = ptrtoint ptr %g23 to i32, !dbg !920
  call void @__asan_store4_noabort(i32 %44), !dbg !920
  store i32 %g, ptr %g23, align 4, !dbg !920
  %h24 = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %call13, i32 0, i32 8, !dbg !920
  %45 = ptrtoint ptr %h24 to i32, !dbg !920
  call void @__asan_store4_noabort(i32 %45), !dbg !920
  store i32 %h, ptr %h24, align 4, !dbg !920
  %46 = ptrtoint ptr %rctx to i32, !dbg !920
  call void @__asan_load4_noabort(i32 %46), !dbg !920
  %47 = load i32, ptr %rctx, align 4, !dbg !920
  %48 = ptrtoint ptr %__regs to i32, !dbg !920
  call void @__asan_load4_noabort(i32 %48), !dbg !920
  %49 = load ptr, ptr %__regs, align 4, !dbg !920
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %47, ptr noundef %__data, i64 noundef 1, ptr noundef %49, ptr noundef %13, ptr noundef null) #24, !dbg !920
  br label %cleanup, !dbg !920

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #24, !dbg !920
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #24, !dbg !920
  ret void, !dbg !920
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_ftrace_test_filter(ptr noundef %__data, i32 noundef %a, i32 noundef %b, i32 noundef %c, i32 noundef %d, i32 noundef %e, i32 noundef %f, i32 noundef %g, i32 noundef %h) #3 align 64 !dbg !940 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !941
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.119, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.119, align 8
  %conv = zext i32 %a to i64, !dbg !942
  %conv4 = zext i32 %b to i64, !dbg !942
  %conv8 = zext i32 %c to i64, !dbg !942
  %conv12 = zext i32 %d to i64, !dbg !942
  %conv16 = zext i32 %e to i64, !dbg !942
  %conv20 = zext i32 %f to i64, !dbg !942
  %conv24 = zext i32 %g to i64, !dbg !942
  %conv28 = zext i32 %h to i64, !dbg !942
  tail call void @bpf_trace_run8(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16, i64 noundef %conv20, i64 noundef %conv24, i64 noundef %conv28) #24, !dbg !942
  ret void, !dbg !942
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ftrace_test_event_filter() #6 section ".init.text" align 64 !dbg !943 {
entry:
  %filter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #22, !dbg !944
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.120, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.120, align 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #27, !dbg !945
  br label %for.body, !dbg !946

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.089 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %filter) #24, !dbg !947
  %1 = ptrtoint ptr %filter to i32, !dbg !948
  call void @__asan_store4_noabort(i32 %1), !dbg !948
  store ptr null, ptr %filter, align 4, !dbg !948
  %arrayidx = getelementptr [25 x %struct.test_filter_data_t], ptr @test_filter_data, i32 0, i32 %i.089, !dbg !949
  %2 = ptrtoint ptr %arrayidx to i32, !dbg !950
  call void @__asan_load4_noabort(i32 %2), !dbg !950
  %3 = load ptr, ptr %arrayidx, align 4, !dbg !950
  %call2 = call fastcc i32 @create_filter(ptr noundef null, ptr noundef nonnull @event_ftrace_test_filter, ptr noundef %3, i1 noundef zeroext false, ptr noundef nonnull %filter), !dbg !951
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2), !dbg !952
  %tobool.not = icmp eq i32 %call2, 0, !dbg !952
  br i1 %tobool.not, label %if.end, label %do.end5, !dbg !952

do.end5:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22, !dbg !953
  %gcov_ctr50 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 1), align 8, !dbg !953
  %4 = add i64 %gcov_ctr50, 1, !dbg !953
  store i64 %4, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 1), align 8, !dbg !953
  %5 = ptrtoint ptr %arrayidx to i32, !dbg !953
  call void @__asan_load4_noabort(i32 %5), !dbg !953
  %6 = load ptr, ptr %arrayidx, align 4, !dbg !953
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %6, i32 noundef %call2) #27, !dbg !953
  %7 = ptrtoint ptr %filter to i32, !dbg !954
  call void @__asan_load4_noabort(i32 %7), !dbg !954
  %8 = load ptr, ptr %filter, align 4, !dbg !954
  tail call fastcc void @__free_filter(ptr noundef %8), !dbg !955
  br label %for.end, !dbg !956

if.end:                                           ; preds = %for.body
  tail call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #24, !dbg !957
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.235, align 8
  %9 = add i64 %gcov_ctr.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.235, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.238, align 8, !dbg !958
  %10 = add i64 %gcov_ctr.i.i, 1, !dbg !958
  store i64 %10, ptr @__llvm_gcov_ctr.238, align 8, !dbg !958
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.163, align 8, !dbg !964
  %11 = add i64 %gcov_ctr.i.i.i, 1, !dbg !964
  store i64 %11, ptr @__llvm_gcov_ctr.163, align 8, !dbg !964
  %12 = tail call i32 @llvm.read_register.i32(metadata !189) #24, !dbg !964
  %and.i.i.i = and i32 %12, -16384, !dbg !966
  %13 = inttoptr i32 %and.i.i.i to ptr, !dbg !967
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1, !dbg !968
  %14 = ptrtoint ptr %preempt_count.i.i to i32, !dbg !969
  call void @__asan_load4_noabort(i32 %14), !dbg !969
  %15 = load volatile i32, ptr %preempt_count.i.i, align 4, !dbg !969
  %add.i = add i32 %15, 1, !dbg !969
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4, !dbg !969
  tail call void asm sideeffect "", "~{memory}"() #24, !dbg !970, !srcloc !971
  %not_visited = getelementptr [25 x %struct.test_filter_data_t], ptr @test_filter_data, i32 0, i32 %i.089, i32 3, !dbg !972
  %16 = ptrtoint ptr %not_visited to i32, !dbg !972
  call void @__asan_load4_noabort(i32 %16), !dbg !972
  %17 = load ptr, ptr %not_visited, align 4, !dbg !972
  %18 = ptrtoint ptr %17 to i32, !dbg !973
  call void @__asan_load1_noabort(i32 %18), !dbg !973
  %19 = load i8, ptr %17, align 1, !dbg !973
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19), !dbg !973
  %tobool12.not = icmp eq i8 %19, 0, !dbg !973
  br i1 %tobool12.not, label %if.end.if.end15_crit_edge, label %if.then13, !dbg !973

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22, !dbg !973
  br label %if.end15, !dbg !973

if.then13:                                        ; preds = %if.end
  %gcov_ctr51 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 2), align 16, !dbg !974
  %20 = add i64 %gcov_ctr51, 1, !dbg !974
  store i64 %20, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 2), align 16, !dbg !974
  %21 = ptrtoint ptr %filter to i32, !dbg !974
  call void @__asan_load4_noabort(i32 %21), !dbg !974
  %22 = load ptr, ptr %filter, align 4, !dbg !974
  %gcov_ctr.i76 = load i64, ptr @__llvm_gcov_ctr.236, align 16
  %23 = add i64 %gcov_ctr.i76, 1
  store i64 %23, ptr @__llvm_gcov_ctr.236, align 16
  %gcov_ctr.i.i77 = load i64, ptr @__llvm_gcov_ctr.222, align 8
  %24 = add i64 %gcov_ctr.i.i77, 1
  store i64 %24, ptr @__llvm_gcov_ctr.222, align 8
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @event_mutex, i32 0, i32 5), i32 noundef -1) #24, !dbg !975
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i), !dbg !979
  %tobool.not.i = icmp eq i32 %call.i.i, 0, !dbg !979
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then13.do.end.i_crit_edge, !dbg !979

if.then13.do.end.i_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #22, !dbg !979
  br label %do.end.i, !dbg !979

land.lhs.true.i:                                  ; preds = %if.then13
  %gcov_ctr111.i = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 1), align 8, !dbg !979
  %25 = add i64 %gcov_ctr111.i, 1, !dbg !979
  store i64 %25, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 1), align 8, !dbg !979
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #24, !dbg !979
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i), !dbg !979
  %tobool2.not.i = icmp eq i32 %call1.i, 0, !dbg !979
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i, !dbg !979

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !979
  br label %do.end.i, !dbg !979

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %gcov_ctr112.i = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 2), align 16, !dbg !979
  %26 = add i64 %gcov_ctr112.i, 1, !dbg !979
  store i64 %26, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 2), align 16, !dbg !979
  %.b141.i = load i1, ptr @update_pred_fn.__warned, align 1, !dbg !979
  br i1 %.b141.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i, !dbg !979

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !979
  br label %do.end.i, !dbg !979

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !979
  %gcov_ctr113.i = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 3), align 8, !dbg !979
  %27 = add i64 %gcov_ctr113.i, 1, !dbg !979
  store i64 %27, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 3), align 8, !dbg !979
  store i1 true, ptr @update_pred_fn.__warned, align 1, !dbg !979
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2292, ptr noundef nonnull @.str.45) #24, !dbg !979
  br label %do.end.i, !dbg !979

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.then13.do.end.i_crit_edge
  %28 = ptrtoint ptr %22 to i32, !dbg !979
  call void @__asan_load4_noabort(i32 %28), !dbg !979
  %29 = load ptr, ptr %22, align 4, !dbg !979
  %pred144.i = getelementptr %struct.prog_entry, ptr %29, i32 0, i32 2, !dbg !980
  %30 = ptrtoint ptr %pred144.i to i32, !dbg !980
  call void @__asan_load4_noabort(i32 %30), !dbg !980
  %31 = load ptr, ptr %pred144.i, align 4, !dbg !980
  %tobool6.not145.i = icmp eq ptr %31, null, !dbg !981
  br i1 %tobool6.not145.i, label %do.end.i.if.end15_crit_edge, label %do.end.i.for.body.i_crit_edge, !dbg !981

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i, !dbg !981

do.end.i.if.end15_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !981
  br label %if.end15, !dbg !981

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %32 = phi ptr [ %52, %for.inc.i.for.body.i_crit_edge ], [ %31, %do.end.i.for.body.i_crit_edge ]
  %i.0146.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end.i.for.body.i_crit_edge ]
  %field10.i = getelementptr inbounds %struct.filter_pred, ptr %32, i32 0, i32 4, !dbg !982
  %33 = ptrtoint ptr %field10.i to i32, !dbg !982
  call void @__asan_load4_noabort(i32 %33), !dbg !982
  %34 = load ptr, ptr %field10.i, align 8, !dbg !982
  %35 = ptrtoint ptr %32 to i32, !dbg !983
  call void @__asan_load4_noabort(i32 %35), !dbg !983
  %36 = load ptr, ptr %32, align 8, !dbg !983
  %tobool11.not.i = icmp eq ptr %36, null, !dbg !983
  br i1 %tobool11.not.i, label %land.rhs.i, label %for.body.i.if.end46.i_crit_edge, !dbg !983

for.body.i.if.end46.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !983
  br label %if.end46.i, !dbg !983

land.rhs.i:                                       ; preds = %for.body.i
  %gcov_ctr114.i = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 4), align 16, !dbg !983
  %37 = add i64 %gcov_ctr114.i, 1, !dbg !983
  store i64 %37, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 4), align 16, !dbg !983
  %.b137140.i = load i1, ptr @update_pred_fn.__already_done, align 1, !dbg !983
  br i1 %.b137140.i, label %land.rhs.i.if.end46.i_crit_edge, label %if.then20.i, !dbg !983, !prof !381

land.rhs.i.if.end46.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !983
  br label %if.end46.i, !dbg !983

if.then20.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !983
  store i1 true, ptr @update_pred_fn.__already_done, align 1, !dbg !983
  %gcov_ctr115.i = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 5), align 8, !dbg !983
  %38 = add i64 %gcov_ctr115.i, 1, !dbg !983
  store i64 %38, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 5), align 8, !dbg !983
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 2299, i32 noundef 9, ptr noundef null) #24, !dbg !983
  %gcov_ctr116.i = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 6), align 16, !dbg !983
  %39 = add i64 %gcov_ctr116.i, 1, !dbg !983
  store i64 %39, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 6), align 16, !dbg !983
  br label %if.end46.i, !dbg !983

if.end46.i:                                       ; preds = %if.then20.i, %land.rhs.i.if.end46.i_crit_edge, %for.body.i.if.end46.i_crit_edge
  %tobool54.not.i = icmp eq ptr %34, null, !dbg !984
  br i1 %tobool54.not.i, label %land.rhs58.i, label %if.end104.i, !dbg !985

land.rhs58.i:                                     ; preds = %if.end46.i
  %gcov_ctr117.i = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 7), align 8, !dbg !986
  %40 = add i64 %gcov_ctr117.i, 1, !dbg !986
  store i64 %40, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 7), align 8, !dbg !986
  %.b138139.i = load i1, ptr @update_pred_fn.__already_done.87, align 1, !dbg !986
  br i1 %.b138139.i, label %land.rhs58.i.for.inc.i_crit_edge, label %if.then69.i, !dbg !986, !prof !381

land.rhs58.i.for.inc.i_crit_edge:                 ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !986
  br label %for.inc.i, !dbg !986

if.then69.i:                                      ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !986
  store i1 true, ptr @update_pred_fn.__already_done.87, align 1, !dbg !986
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 2302, i32 noundef 9, ptr noundef nonnull @.str.88, i32 noundef %i.0146.i) #24, !dbg !986
  %gcov_ctr118.i = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 8), align 16, !dbg !986
  %41 = add i64 %gcov_ctr118.i, 1, !dbg !986
  store i64 %41, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 8), align 16, !dbg !986
  %gcov_ctr119.i = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 9), align 8, !dbg !986
  %42 = add i64 %gcov_ctr119.i, 1, !dbg !986
  store i64 %42, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 9), align 8, !dbg !986
  br label %for.inc.i, !dbg !986

if.end104.i:                                      ; preds = %if.end46.i
  %name.i = getelementptr inbounds %struct.ftrace_event_field, ptr %34, i32 0, i32 1, !dbg !987
  %43 = ptrtoint ptr %name.i to i32, !dbg !987
  call void @__asan_load4_noabort(i32 %43), !dbg !987
  %44 = load ptr, ptr %name.i, align 4, !dbg !987
  %45 = ptrtoint ptr %44 to i32, !dbg !988
  call void @__asan_load1_noabort(i32 %45), !dbg !988
  %46 = load i8, ptr %44, align 1, !dbg !988
  %conv.i = zext i8 %46 to i32, !dbg !988
  %call105.i = tail call ptr @strchr(ptr noundef %17, i32 noundef %conv.i) #24, !dbg !989
  %tobool106.not.i = icmp eq ptr %call105.i, null, !dbg !989
  br i1 %tobool106.not.i, label %if.end104.i.for.inc.i_crit_edge, label %cleanup.cont.i, !dbg !990

if.end104.i.for.inc.i_crit_edge:                  ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !990
  br label %for.inc.i, !dbg !990

cleanup.cont.i:                                   ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !991
  %gcov_ctr121.i = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 11), align 8, !dbg !991
  %47 = add i64 %gcov_ctr121.i, 1, !dbg !991
  store i64 %47, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 11), align 8, !dbg !991
  %48 = ptrtoint ptr %32 to i32, !dbg !992
  call void @__asan_store4_noabort(i32 %48), !dbg !992
  store ptr @test_pred_visited_fn, ptr %32, align 8, !dbg !992
  br label %for.inc.i, !dbg !993

for.inc.i:                                        ; preds = %cleanup.cont.i, %if.end104.i.for.inc.i_crit_edge, %if.then69.i, %land.rhs58.i.for.inc.i_crit_edge
  %.sink.i = phi ptr [ getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 14), %cleanup.cont.i ], [ getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 10), %if.then69.i ], [ getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 10), %land.rhs58.i.for.inc.i_crit_edge ], [ getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.236, i32 0, i32 12), %if.end104.i.for.inc.i_crit_edge ]
  %49 = ptrtoint ptr %.sink.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %gcov_ctr120.i = load i64, ptr %.sink.i, align 16
  %50 = add i64 %gcov_ctr120.i, 1
  store i64 %50, ptr %.sink.i, align 16
  %inc.i = add i32 %i.0146.i, 1, !dbg !994
  %pred.i = getelementptr %struct.prog_entry, ptr %29, i32 %inc.i, i32 2, !dbg !980
  %51 = ptrtoint ptr %pred.i to i32, !dbg !980
  call void @__asan_load4_noabort(i32 %51), !dbg !980
  %52 = load ptr, ptr %pred.i, align 4, !dbg !980
  %tobool6.not.i = icmp eq ptr %52, null, !dbg !981
  br i1 %tobool6.not.i, label %for.inc.i.if.end15_crit_edge, label %for.inc.i.for.body.i_crit_edge, !dbg !981, !llvm.loop !995

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !981
  br label %for.body.i, !dbg !981

for.inc.i.if.end15_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !981
  br label %if.end15, !dbg !981

if.end15:                                         ; preds = %for.inc.i.if.end15_crit_edge, %do.end.i.if.end15_crit_edge, %if.end.if.end15_crit_edge
  store i1 false, ptr @test_pred_visited, align 4, !dbg !996
  %53 = ptrtoint ptr %filter to i32, !dbg !997
  call void @__asan_load4_noabort(i32 %53), !dbg !997
  %54 = load ptr, ptr %filter, align 4, !dbg !997
  %rec = getelementptr [25 x %struct.test_filter_data_t], ptr @test_filter_data, i32 0, i32 %i.089, i32 1, !dbg !998
  %call16 = tail call i32 @filter_match_preds(ptr noundef %54, ptr noundef %rec), !dbg !999
  tail call void asm sideeffect "", "~{memory}"() #24, !dbg !1000, !srcloc !1001
  %gcov_ctr.i71 = load i64, ptr @__llvm_gcov_ctr.237, align 8
  %55 = add i64 %gcov_ctr.i71, 1
  store i64 %55, ptr @__llvm_gcov_ctr.237, align 8
  %gcov_ctr.i.i72 = load i64, ptr @__llvm_gcov_ctr.238, align 8, !dbg !1002
  %56 = add i64 %gcov_ctr.i.i72, 1, !dbg !1002
  store i64 %56, ptr @__llvm_gcov_ctr.238, align 8, !dbg !1002
  %gcov_ctr.i.i.i73 = load i64, ptr @__llvm_gcov_ctr.163, align 8, !dbg !1006
  %57 = add i64 %gcov_ctr.i.i.i73, 1, !dbg !1006
  store i64 %57, ptr @__llvm_gcov_ctr.163, align 8, !dbg !1006
  %58 = tail call i32 @llvm.read_register.i32(metadata !189) #24, !dbg !1006
  %and.i.i.i74 = and i32 %58, -16384, !dbg !1008
  %59 = inttoptr i32 %and.i.i.i74 to ptr, !dbg !1009
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1, !dbg !1010
  %60 = ptrtoint ptr %preempt_count.i.i75 to i32, !dbg !1011
  call void @__asan_load4_noabort(i32 %60), !dbg !1011
  %61 = load volatile i32, ptr %preempt_count.i.i75, align 4, !dbg !1011
  %sub.i = add i32 %61, -1, !dbg !1011
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4, !dbg !1011
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #24, !dbg !1012
  tail call fastcc void @__free_filter(ptr noundef %54), !dbg !1013
  %.b = load i1, ptr @test_pred_visited, align 4, !dbg !1014
  br i1 %.b, label %do.end24, label %if.end28, !dbg !1014

do.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1015
  %gcov_ctr52 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 3), align 8, !dbg !1015
  %62 = add i64 %gcov_ctr52, 1, !dbg !1015
  store i64 %62, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 3), align 8, !dbg !1015
  %63 = ptrtoint ptr %arrayidx to i32, !dbg !1015
  call void @__asan_load4_noabort(i32 %63), !dbg !1015
  %64 = load ptr, ptr %arrayidx, align 4, !dbg !1015
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %64) #27, !dbg !1015
  br label %for.end, !dbg !1016

if.end28:                                         ; preds = %if.end15
  %match = getelementptr [25 x %struct.test_filter_data_t], ptr @test_filter_data, i32 0, i32 %i.089, i32 2, !dbg !1017
  %65 = ptrtoint ptr %match to i32, !dbg !1017
  call void @__asan_load4_noabort(i32 %65), !dbg !1017
  %66 = load i32, ptr %match, align 4, !dbg !1017
  call void @__sanitizer_cov_trace_cmp4(i32 %call16, i32 %66), !dbg !1018
  %cmp29.not = icmp eq i32 %call16, %66, !dbg !1018
  br i1 %cmp29.not, label %for.inc, label %do.end33, !dbg !1019

do.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1020
  %gcov_ctr54 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 5), align 8, !dbg !1020
  %67 = add i64 %gcov_ctr54, 1, !dbg !1020
  store i64 %67, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 5), align 8, !dbg !1020
  %68 = ptrtoint ptr %arrayidx to i32, !dbg !1020
  call void @__asan_load4_noabort(i32 %68), !dbg !1020
  %69 = load ptr, ptr %arrayidx, align 4, !dbg !1020
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %69, i32 noundef %66) #27, !dbg !1020
  br label %for.end, !dbg !1021

for.inc:                                          ; preds = %if.end28
  %gcov_ctr53 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 4), align 16, !dbg !1022
  %70 = add i64 %gcov_ctr53, 1, !dbg !1022
  store i64 %70, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 4), align 16, !dbg !1022
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %filter) #24, !dbg !1022
  %gcov_ctr56 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 7), align 8, !dbg !1023
  %71 = add i64 %gcov_ctr56, 1, !dbg !1023
  store i64 %71, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 7), align 8, !dbg !1023
  %inc = add nuw nsw i32 %i.089, 1, !dbg !1023
  %exitcond.not = icmp eq i32 %inc, 25, !dbg !1024
  br i1 %exitcond.not, label %for.inc.do.end45_crit_edge, label %for.inc.for.body_crit_edge, !dbg !946, !llvm.loop !1025

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22, !dbg !946
  br label %for.body, !dbg !946

for.inc.do.end45_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22, !dbg !946
  br label %do.end45, !dbg !946

for.end:                                          ; preds = %do.end33, %do.end24, %do.end5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %filter) #24, !dbg !1022
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %i.089), !dbg !1026
  %cmp41 = icmp eq i32 %i.089, 25, !dbg !1026
  br i1 %cmp41, label %for.end.do.end45_crit_edge, label %for.end.if.end48_crit_edge, !dbg !1027

for.end.if.end48_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1027
  br label %if.end48, !dbg !1027

for.end.do.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1027
  br label %do.end45, !dbg !1027

do.end45:                                         ; preds = %for.end.do.end45_crit_edge, %for.inc.do.end45_crit_edge
  %gcov_ctr57 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 8), align 16, !dbg !1028
  %72 = add i64 %gcov_ctr57, 1, !dbg !1028
  store i64 %72, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 8), align 16, !dbg !1028
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #27, !dbg !1028
  br label %if.end48, !dbg !1028

if.end48:                                         ; preds = %do.end45, %for.end.if.end48_crit_edge
  ret i32 0, !dbg !1029
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_filter_start(ptr noundef %filter_string, i1 noundef zeroext %set_str, ptr nocapture noundef %pse, ptr nocapture noundef %filterp) unnamed_addr #3 align 64 !dbg !1030 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1031
  %0 = ptrtoint ptr %pse to i32, !dbg !1032
  call void @__asan_load4_noabort(i32 %0), !dbg !1032
  %1 = load ptr, ptr %pse, align 4, !dbg !1032
  %tobool.not = icmp eq ptr %1, null, !dbg !1032
  br i1 %tobool.not, label %lor.rhs, label %entry.land.rhs_crit_edge, !dbg !1032

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1032
  br label %land.rhs, !dbg !1032

lor.rhs:                                          ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.122, align 16, !dbg !1032
  %2 = add i64 %gcov_ctr, 1, !dbg !1032
  store i64 %2, ptr @__llvm_gcov_ctr.122, align 16, !dbg !1032
  %3 = ptrtoint ptr %filterp to i32, !dbg !1032
  call void @__asan_load4_noabort(i32 %3), !dbg !1032
  %4 = load ptr, ptr %filterp, align 4, !dbg !1032
  %tobool1.not = icmp eq ptr %4, null, !dbg !1032
  br i1 %tobool1.not, label %if.end40, label %lor.rhs.land.rhs_crit_edge, !dbg !1032

lor.rhs.land.rhs_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1032
  br label %land.rhs, !dbg !1032

land.rhs:                                         ; preds = %lor.rhs.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %gcov_ctr60 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 1), align 8, !dbg !1032
  %5 = add i64 %gcov_ctr60, 1, !dbg !1032
  store i64 %5, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 1), align 8, !dbg !1032
  %.b82 = load i1, ptr @create_filter_start.__already_done, align 1, !dbg !1032
  br i1 %.b82, label %land.rhs.if.then39_crit_edge, label %if.then, !dbg !1032, !prof !381

land.rhs.if.then39_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1032
  br label %if.then39, !dbg !1032

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1032
  store i1 true, ptr @create_filter_start.__already_done, align 1, !dbg !1032
  %gcov_ctr61 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 2), align 16, !dbg !1032
  %6 = add i64 %gcov_ctr61, 1, !dbg !1032
  store i64 %6, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 2), align 16, !dbg !1032
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1785, i32 noundef 9, ptr noundef null) #24, !dbg !1032
  %gcov_ctr62 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 3), align 8, !dbg !1032
  %7 = add i64 %gcov_ctr62, 1, !dbg !1032
  store i64 %7, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 3), align 8, !dbg !1032
  br label %if.then39, !dbg !1032

if.then39:                                        ; preds = %if.then, %land.rhs.if.then39_crit_edge
  %gcov_ctr63 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 4), align 16, !dbg !1033
  %8 = add i64 %gcov_ctr63, 1, !dbg !1033
  store i64 %8, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 4), align 16, !dbg !1033
  br label %cleanup, !dbg !1033

if.end40:                                         ; preds = %lor.rhs
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.126, align 8
  %9 = add i64 %gcov_ctr.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.126, align 8
  %gcov_ctr79.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.129, i32 0, i32 1), align 8, !dbg !1034
  %10 = add i64 %gcov_ctr79.i.i.i, 1, !dbg !1034
  store i64 %10, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.129, i32 0, i32 1), align 8, !dbg !1034
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.127, i32 0, i32 2), align 16, !dbg !1038
  %11 = add i64 %gcov_ctr11.i.i, 1, !dbg !1038
  store i64 %11, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.127, i32 0, i32 2), align 16, !dbg !1038
  %gcov_ctr.i24.i.i = load i64, ptr @__llvm_gcov_ctr.130, align 16, !dbg !1039
  %12 = add i64 %gcov_ctr.i24.i.i, 1, !dbg !1039
  store i64 %12, ptr @__llvm_gcov_ctr.130, align 16, !dbg !1039
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32)), !dbg !1041
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4, !dbg !1041
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 8) #25, !dbg !1042
  %tobool41.not = icmp eq ptr %call7.i.i, null, !dbg !1043
  br i1 %tobool41.not, label %if.end40.if.end50_crit_edge, label %land.lhs.true, !dbg !1044

if.end40.if.end50_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1044
  br label %if.end50, !dbg !1044

land.lhs.true:                                    ; preds = %if.end40
  %gcov_ctr64 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 5), align 8, !dbg !1045
  %14 = add i64 %gcov_ctr64, 1, !dbg !1045
  store i64 %14, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 5), align 8, !dbg !1045
  br i1 %set_str, label %if.then43, label %land.lhs.true.if.end50_crit_edge, !dbg !1043

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1043
  br label %if.end50, !dbg !1043

if.then43:                                        ; preds = %land.lhs.true
  %call44 = tail call noalias ptr @kstrdup(ptr noundef %filter_string, i32 noundef 3264) #24, !dbg !1046
  %filter_string45 = getelementptr inbounds %struct.event_filter, ptr %call7.i.i, i32 0, i32 1, !dbg !1047
  %15 = ptrtoint ptr %filter_string45 to i32, !dbg !1048
  call void @__asan_store4_noabort(i32 %15), !dbg !1048
  store ptr %call44, ptr %filter_string45, align 4, !dbg !1048
  %tobool47.not = icmp eq ptr %call44, null, !dbg !1049
  br i1 %tobool47.not, label %if.then48, label %if.then43.if.end49_crit_edge, !dbg !1050

if.then43.if.end49_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1050
  br label %if.end49, !dbg !1050

if.then48:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1051
  %gcov_ctr65 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 6), align 16, !dbg !1051
  %16 = add i64 %gcov_ctr65, 1, !dbg !1051
  store i64 %16, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 6), align 16, !dbg !1051
  br label %if.end49, !dbg !1052

if.end49:                                         ; preds = %if.then48, %if.then43.if.end49_crit_edge
  %err.0 = phi i32 [ 0, %if.then43.if.end49_crit_edge ], [ -12, %if.then48 ], !dbg !1053
  %gcov_ctr66 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 7), align 8, !dbg !1054
  %17 = add i64 %gcov_ctr66, 1, !dbg !1054
  store i64 %17, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 7), align 8, !dbg !1054
  br label %if.end50, !dbg !1054

if.end50:                                         ; preds = %if.end49, %land.lhs.true.if.end50_crit_edge, %if.end40.if.end50_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end49 ], [ 0, %land.lhs.true.if.end50_crit_edge ], [ 0, %if.end40.if.end50_crit_edge ], !dbg !1055
  %gcov_ctr.i84 = load i64, ptr @__llvm_gcov_ctr.126, align 8
  %18 = add i64 %gcov_ctr.i84, 1
  store i64 %18, ptr @__llvm_gcov_ctr.126, align 8
  %gcov_ctr79.i.i.i85 = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.129, i32 0, i32 1), align 8, !dbg !1056
  %19 = add i64 %gcov_ctr79.i.i.i85, 1, !dbg !1056
  store i64 %19, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.129, i32 0, i32 1), align 8, !dbg !1056
  %gcov_ctr11.i.i86 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.127, i32 0, i32 2), align 16, !dbg !1060
  %20 = add i64 %gcov_ctr11.i.i86, 1, !dbg !1060
  store i64 %20, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.127, i32 0, i32 2), align 16, !dbg !1060
  %gcov_ctr.i24.i.i87 = load i64, ptr @__llvm_gcov_ctr.130, align 16, !dbg !1061
  %21 = add i64 %gcov_ctr.i24.i.i87, 1, !dbg !1061
  store i64 %21, ptr @__llvm_gcov_ctr.130, align 16, !dbg !1061
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32)), !dbg !1063
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4, !dbg !1063
  %call7.i.i88 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 8) #25, !dbg !1064
  br i1 %tobool41.not, label %if.end50.if.then56_crit_edge, label %lor.lhs.false, !dbg !1065

if.end50.if.then56_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1065
  br label %if.then56, !dbg !1065

lor.lhs.false:                                    ; preds = %if.end50
  %gcov_ctr67 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 8), align 16, !dbg !1066
  %23 = add i64 %gcov_ctr67, 1, !dbg !1066
  store i64 %23, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 8), align 16, !dbg !1066
  %tobool53.not = icmp eq ptr %call7.i.i88, null, !dbg !1066
  br i1 %tobool53.not, label %lor.lhs.false.if.then56_crit_edge, label %lor.lhs.false54, !dbg !1067

lor.lhs.false.if.then56_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1067
  br label %if.then56, !dbg !1067

lor.lhs.false54:                                  ; preds = %lor.lhs.false
  %gcov_ctr68 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 9), align 8, !dbg !1068
  %24 = add i64 %gcov_ctr68, 1, !dbg !1068
  store i64 %24, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 9), align 8, !dbg !1068
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1), !dbg !1068
  %tobool55.not = icmp eq i32 %err.1, 0, !dbg !1068
  br i1 %tobool55.not, label %if.end57, label %lor.lhs.false54.if.then56_crit_edge, !dbg !1069

lor.lhs.false54.if.then56_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1069
  br label %if.then56, !dbg !1069

if.then56:                                        ; preds = %lor.lhs.false54.if.then56_crit_edge, %lor.lhs.false.if.then56_crit_edge, %if.end50.if.then56_crit_edge
  %gcov_ctr70 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 11), align 8, !dbg !1070
  %25 = add i64 %gcov_ctr70, 1, !dbg !1070
  store i64 %25, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 11), align 8, !dbg !1070
  tail call void @kfree(ptr noundef %call7.i.i88) #24, !dbg !1071
  tail call fastcc void @__free_filter(ptr noundef %call7.i.i), !dbg !1072
  br label %cleanup, !dbg !1073

if.end57:                                         ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1074
  %gcov_ctr69 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 10), align 16, !dbg !1074
  %26 = add i64 %gcov_ctr69, 1, !dbg !1074
  store i64 %26, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 10), align 16, !dbg !1074
  %27 = ptrtoint ptr %filterp to i32, !dbg !1075
  call void @__asan_store4_noabort(i32 %27), !dbg !1075
  store ptr %call7.i.i, ptr %filterp, align 4, !dbg !1075
  %28 = ptrtoint ptr %pse to i32, !dbg !1076
  call void @__asan_store4_noabort(i32 %28), !dbg !1076
  store ptr %call7.i.i88, ptr %pse, align 4, !dbg !1076
  br label %cleanup, !dbg !1077

cleanup:                                          ; preds = %if.end57, %if.then56, %if.then39
  %retval.0 = phi i32 [ -22, %if.then39 ], [ -12, %if.then56 ], [ 0, %if.end57 ], !dbg !1053
  ret i32 %retval.0, !dbg !1078
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_preds(ptr noundef %call, ptr noundef %filter_string, ptr noundef %filter, ptr noundef writeonly %pe) unnamed_addr #3 align 64 !dbg !1079 {
entry:
  %num_buf.i.i = alloca [24 x i8], align 1
  %val.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1080
  %0 = ptrtoint ptr %filter_string to i32, !dbg !1081
  call void @__asan_load1_noabort(i32 %0), !dbg !1081
  %1 = load i8, ptr %filter_string, align 1, !dbg !1081
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1), !dbg !1084
  %tobool.not164.i = icmp eq i8 %1, 0, !dbg !1084
  br i1 %tobool.not164.i, label %if.end.thread, label %entry.for.body.i_crit_edge, !dbg !1084

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i, !dbg !1084

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1085
  %gcov_ctr106.i110 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 21), align 8, !dbg !1085
  %2 = add i64 %gcov_ctr106.i110, 1, !dbg !1085
  store i64 %2, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 21), align 8, !dbg !1085
  br label %if.then3, !dbg !1086

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %3 = phi i8 [ %26, %for.inc.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %arrayidx177.i = phi ptr [ %arrayidx.i, %for.inc.i.for.body.i_crit_edge ], [ %filter_string, %entry.for.body.i_crit_edge ]
  %i.0174.i = phi i32 [ %inc41.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %quote.0173.i = phi i32 [ %quote.2.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %max_open.0171.i = phi i32 [ %max_open.1.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %entry.for.body.i_crit_edge ]
  %last_quote.0170.i = phi i32 [ %last_quote.2.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %open.0168.i = phi i32 [ %open.1.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %entry.for.body.i_crit_edge ]
  %nr_preds.0166.i = phi i32 [ %nr_preds.2.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %is_pred.0.off0165.i = phi i1 [ %is_pred.2.off0.i, %for.inc.i.for.body.i_crit_edge ], [ false, %entry.for.body.i_crit_edge ]
  %conv.i = zext i8 %3 to i32, !dbg !1087
  %arrayidx2.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i, !dbg !1087
  %4 = ptrtoint ptr %arrayidx2.i to i32, !dbg !1087
  call void @__asan_load1_noabort(i32 %4), !dbg !1087
  %5 = load i8, ptr %arrayidx2.i, align 1, !dbg !1087
  %6 = and i8 %5, 32, !dbg !1087
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6), !dbg !1087
  %cmp.not.i = icmp eq i8 %6, 0, !dbg !1087
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !1087

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1088
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.134, align 16, !dbg !1088
  %7 = add i64 %gcov_ctr.i, 1, !dbg !1088
  store i64 %7, ptr @__llvm_gcov_ctr.134, align 16, !dbg !1088
  br label %for.inc.i, !dbg !1088

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quote.0173.i), !dbg !1089
  %tobool5.not.i = icmp eq i32 %quote.0173.i, 0, !dbg !1089
  br i1 %tobool5.not.i, label %if.end13.i, label %if.then6.i, !dbg !1089

if.then6.i:                                       ; preds = %if.end.i
  %gcov_ctr86.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 1), align 8, !dbg !1090
  %8 = add i64 %gcov_ctr86.i, 1, !dbg !1090
  store i64 %8, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 1), align 8, !dbg !1090
  %9 = ptrtoint ptr %arrayidx177.i to i32, !dbg !1090
  call void @__asan_load1_noabort(i32 %9), !dbg !1090
  %10 = load i8, ptr %arrayidx177.i, align 1, !dbg !1090
  %conv8.i = zext i8 %10 to i32, !dbg !1090
  call void @__sanitizer_cov_trace_cmp4(i32 %quote.0173.i, i32 %conv8.i), !dbg !1091
  %cmp9.i = icmp eq i32 %quote.0173.i, %conv8.i, !dbg !1091
  br i1 %cmp9.i, label %if.then11.i, label %if.then6.i.for.inc.i_crit_edge, !dbg !1090

if.then6.i.for.inc.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1090
  br label %for.inc.i, !dbg !1090

if.then11.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1092
  %gcov_ctr87.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 2), align 16, !dbg !1092
  %11 = add i64 %gcov_ctr87.i, 1, !dbg !1092
  store i64 %11, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 2), align 16, !dbg !1092
  br label %for.inc.i, !dbg !1093

if.end13.i:                                       ; preds = %if.end.i
  %12 = zext i8 %3 to i64, !dbg !1094
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values), !dbg !1094
  switch i8 %3, label %if.end13.i.sw.epilog.i_crit_edge [
    i8 39, label %if.end13.i.sw.bb.i_crit_edge
    i8 34, label %if.end13.i.sw.bb.i_crit_edge1505
    i8 124, label %if.end13.i.sw.bb18.i_crit_edge
    i8 38, label %if.end13.i.sw.bb18.i_crit_edge1506
    i8 40, label %sw.bb27.i
    i8 41, label %sw.bb32.i
  ], !dbg !1094

if.end13.i.sw.bb18.i_crit_edge1506:               ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1094
  br label %sw.bb18.i, !dbg !1094

if.end13.i.sw.bb18.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1094
  br label %sw.bb18.i, !dbg !1094

if.end13.i.sw.bb.i_crit_edge1505:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1094
  br label %sw.bb.i, !dbg !1094

if.end13.i.sw.bb.i_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1094
  br label %sw.bb.i, !dbg !1094

if.end13.i.sw.epilog.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1094
  br label %sw.epilog.i, !dbg !1094

sw.bb.i:                                          ; preds = %if.end13.i.sw.bb.i_crit_edge, %if.end13.i.sw.bb.i_crit_edge1505
  %gcov_ctr89.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 4), align 16, !dbg !1095
  %13 = add i64 %gcov_ctr89.i, 1, !dbg !1095
  store i64 %13, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 4), align 16, !dbg !1095
  %14 = ptrtoint ptr %arrayidx177.i to i32, !dbg !1095
  call void @__asan_load1_noabort(i32 %14), !dbg !1095
  %15 = load i8, ptr %arrayidx177.i, align 1, !dbg !1095
  %conv17.i = zext i8 %15 to i32, !dbg !1095
  br label %sw.epilog.i, !dbg !1096

sw.bb18.i:                                        ; preds = %if.end13.i.sw.bb18.i_crit_edge, %if.end13.i.sw.bb18.i_crit_edge1506
  %add.i = add i32 %i.0174.i, 1, !dbg !1097
  %arrayidx19.i = getelementptr i8, ptr %filter_string, i32 %add.i, !dbg !1098
  %16 = ptrtoint ptr %arrayidx19.i to i32, !dbg !1098
  call void @__asan_load1_noabort(i32 %16), !dbg !1098
  %17 = load i8, ptr %arrayidx19.i, align 1, !dbg !1098
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %3), !dbg !1099
  %cmp23.not.i = icmp eq i8 %17, %3, !dbg !1099
  br i1 %cmp23.not.i, label %if.end26.i, label %if.then25.i, !dbg !1098

if.then25.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1100
  %gcov_ctr90.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 5), align 8, !dbg !1100
  %18 = add i64 %gcov_ctr90.i, 1, !dbg !1100
  store i64 %18, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 5), align 8, !dbg !1100
  br label %sw.epilog.i, !dbg !1100

if.end26.i:                                       ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1101
  %gcov_ctr91.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 6), align 16, !dbg !1101
  %19 = add i64 %gcov_ctr91.i, 1, !dbg !1101
  store i64 %19, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 6), align 16, !dbg !1101
  br label %for.inc.i, !dbg !1102

sw.bb27.i:                                        ; preds = %if.end13.i
  %gcov_ctr88.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 3), align 8, !dbg !1103
  %20 = add i64 %gcov_ctr88.i, 1, !dbg !1103
  store i64 %20, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 3), align 8, !dbg !1103
  %inc.i = add i32 %open.0168.i, 1, !dbg !1104
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %max_open.0171.i), !dbg !1105
  %cmp28.i = icmp sgt i32 %inc.i, %max_open.0171.i, !dbg !1105
  br i1 %cmp28.i, label %if.then30.i, label %sw.bb27.i.for.inc.i_crit_edge, !dbg !1106

sw.bb27.i.for.inc.i_crit_edge:                    ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1106
  br label %for.inc.i, !dbg !1106

if.then30.i:                                      ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1107
  %gcov_ctr92.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 7), align 8, !dbg !1107
  %21 = add i64 %gcov_ctr92.i, 1, !dbg !1107
  store i64 %21, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 7), align 8, !dbg !1107
  br label %for.inc.i, !dbg !1108

sw.bb32.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %open.0168.i), !dbg !1109
  %cmp33.i = icmp eq i32 %open.0168.i, 1, !dbg !1109
  br i1 %cmp33.i, label %sw.default, label %if.end36.i, !dbg !1110

if.end36.i:                                       ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1111
  %gcov_ctr94.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 9), align 8, !dbg !1111
  %22 = add i64 %gcov_ctr94.i, 1, !dbg !1111
  store i64 %22, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 9), align 8, !dbg !1111
  %dec.i = add i32 %open.0168.i, -1, !dbg !1111
  br label %for.inc.i, !dbg !1112

sw.epilog.i:                                      ; preds = %if.then25.i, %sw.bb.i, %if.end13.i.sw.epilog.i_crit_edge
  %last_quote.1.i = phi i32 [ %last_quote.0170.i, %if.end13.i.sw.epilog.i_crit_edge ], [ %last_quote.0170.i, %if.then25.i ], [ %i.0174.i, %sw.bb.i ], !dbg !1113
  %quote.1.i = phi i32 [ 0, %if.end13.i.sw.epilog.i_crit_edge ], [ 0, %if.then25.i ], [ %conv17.i, %sw.bb.i ], !dbg !1113
  br i1 %is_pred.0.off0165.i, label %sw.epilog.i.if.end40.i_crit_edge, label %if.then38.i, !dbg !1114

sw.epilog.i.if.end40.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1114
  br label %if.end40.i, !dbg !1114

if.then38.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1115
  %gcov_ctr95.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 10), align 16, !dbg !1115
  %23 = add i64 %gcov_ctr95.i, 1, !dbg !1115
  store i64 %23, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 10), align 16, !dbg !1115
  %inc39.i = add i32 %nr_preds.0166.i, 1, !dbg !1115
  br label %if.end40.i, !dbg !1116

if.end40.i:                                       ; preds = %if.then38.i, %sw.epilog.i.if.end40.i_crit_edge
  %nr_preds.1.i = phi i32 [ %nr_preds.0166.i, %sw.epilog.i.if.end40.i_crit_edge ], [ %inc39.i, %if.then38.i ], !dbg !1113
  %gcov_ctr96.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 11), align 8, !dbg !1117
  %24 = add i64 %gcov_ctr96.i, 1, !dbg !1117
  store i64 %24, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 11), align 8, !dbg !1117
  br label %for.inc.i, !dbg !1117

for.inc.i:                                        ; preds = %if.end40.i, %if.end36.i, %if.then30.i, %sw.bb27.i.for.inc.i_crit_edge, %if.end26.i, %if.then11.i, %if.then6.i.for.inc.i_crit_edge, %if.then.i
  %is_pred.2.off0.i = phi i1 [ %is_pred.0.off0165.i, %if.then.i ], [ %is_pred.0.off0165.i, %if.then11.i ], [ %is_pred.0.off0165.i, %if.then6.i.for.inc.i_crit_edge ], [ true, %if.end40.i ], [ false, %if.end36.i ], [ false, %if.then30.i ], [ false, %sw.bb27.i.for.inc.i_crit_edge ], [ false, %if.end26.i ]
  %nr_preds.2.i = phi i32 [ %nr_preds.0166.i, %if.then.i ], [ %nr_preds.0166.i, %if.then11.i ], [ %nr_preds.0166.i, %if.then6.i.for.inc.i_crit_edge ], [ %nr_preds.1.i, %if.end40.i ], [ %nr_preds.0166.i, %if.end36.i ], [ %nr_preds.0166.i, %if.then30.i ], [ %nr_preds.0166.i, %sw.bb27.i.for.inc.i_crit_edge ], [ %nr_preds.0166.i, %if.end26.i ], !dbg !1118
  %open.1.i = phi i32 [ %open.0168.i, %if.then.i ], [ %open.0168.i, %if.then11.i ], [ %open.0168.i, %if.then6.i.for.inc.i_crit_edge ], [ %open.0168.i, %if.end40.i ], [ %dec.i, %if.end36.i ], [ %inc.i, %if.then30.i ], [ %inc.i, %sw.bb27.i.for.inc.i_crit_edge ], [ %open.0168.i, %if.end26.i ], !dbg !1113
  %last_quote.2.i = phi i32 [ %last_quote.0170.i, %if.then.i ], [ %last_quote.0170.i, %if.then11.i ], [ %last_quote.0170.i, %if.then6.i.for.inc.i_crit_edge ], [ %last_quote.1.i, %if.end40.i ], [ %last_quote.0170.i, %if.end36.i ], [ %last_quote.0170.i, %if.then30.i ], [ %last_quote.0170.i, %sw.bb27.i.for.inc.i_crit_edge ], [ %last_quote.0170.i, %if.end26.i ], !dbg !1119
  %max_open.1.i = phi i32 [ %max_open.0171.i, %if.then.i ], [ %max_open.0171.i, %if.then11.i ], [ %max_open.0171.i, %if.then6.i.for.inc.i_crit_edge ], [ %max_open.0171.i, %if.end40.i ], [ %max_open.0171.i, %if.end36.i ], [ %inc.i, %if.then30.i ], [ %max_open.0171.i, %sw.bb27.i.for.inc.i_crit_edge ], [ %max_open.0171.i, %if.end26.i ], !dbg !1113
  %quote.2.i = phi i32 [ %quote.0173.i, %if.then.i ], [ 0, %if.then11.i ], [ %quote.0173.i, %if.then6.i.for.inc.i_crit_edge ], [ %quote.1.i, %if.end40.i ], [ 0, %if.end36.i ], [ 0, %if.then30.i ], [ 0, %sw.bb27.i.for.inc.i_crit_edge ], [ 0, %if.end26.i ], !dbg !1113
  %inc41.i = add i32 %i.0174.i, 1, !dbg !1120
  %arrayidx.i = getelementptr i8, ptr %filter_string, i32 %inc41.i, !dbg !1081
  %25 = ptrtoint ptr %arrayidx.i to i32, !dbg !1081
  call void @__asan_load1_noabort(i32 %25), !dbg !1081
  %26 = load i8, ptr %arrayidx.i, align 1, !dbg !1081
  %tobool.not.i = icmp eq i8 %26, 0, !dbg !1084
  br i1 %tobool.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge, !dbg !1084, !llvm.loop !1121

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1084
  br label %for.body.i, !dbg !1084

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quote.2.i), !dbg !1122
  %tobool42.not.i = icmp eq i32 %quote.2.i, 0, !dbg !1122
  br i1 %tobool42.not.i, label %if.end44.i, label %sw.bb, !dbg !1122

if.end44.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %open.1.i), !dbg !1123
  %cmp45.not.i = icmp eq i32 %open.1.i, 1, !dbg !1123
  br i1 %cmp45.not.i, label %if.end, label %for.cond49.preheader.i, !dbg !1124

for.cond49.preheader.i:                           ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0174.i), !dbg !1125
  %tobool50.not184.i = icmp eq i32 %i.0174.i, 0, !dbg !1125
  br i1 %tobool50.not184.i, label %for.cond49.preheader.i.for.end77.i_crit_edge, label %for.cond49.preheader.i.for.body51.i_crit_edge, !dbg !1125

for.cond49.preheader.i.for.body51.i_crit_edge:    ; preds = %for.cond49.preheader.i
  br label %for.body51.i, !dbg !1125

for.cond49.preheader.i.for.end77.i_crit_edge:     ; preds = %for.cond49.preheader.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1125
  br label %for.end77.i, !dbg !1125

for.body51.i:                                     ; preds = %for.inc75.i.for.body51.i_crit_edge, %for.cond49.preheader.i.for.body51.i_crit_edge
  %i.1187.i = phi i32 [ %i.1.i, %for.inc75.i.for.body51.i_crit_edge ], [ %i.0174.i, %for.cond49.preheader.i.for.body51.i_crit_edge ]
  %level.0186.i = phi i32 [ %level.2.i, %for.inc75.i.for.body51.i_crit_edge ], [ %open.1.i, %for.cond49.preheader.i.for.body51.i_crit_edge ]
  %quote.3185.i = phi i32 [ %quote.6.i, %for.inc75.i.for.body51.i_crit_edge ], [ 0, %for.cond49.preheader.i.for.body51.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quote.3185.i), !dbg !1126
  %tobool52.not.i = icmp eq i32 %quote.3185.i, 0, !dbg !1126
  %arrayidx61.i = getelementptr i8, ptr %filter_string, i32 %i.1187.i, !dbg !1113
  %27 = ptrtoint ptr %arrayidx61.i to i32, !dbg !1113
  call void @__asan_load1_noabort(i32 %27), !dbg !1113
  %28 = load i8, ptr %arrayidx61.i, align 1, !dbg !1113
  br i1 %tobool52.not.i, label %if.end60.i, label %if.then53.i, !dbg !1126

if.then53.i:                                      ; preds = %for.body51.i
  %conv55.i = zext i8 %28 to i32, !dbg !1127
  call void @__sanitizer_cov_trace_cmp4(i32 %quote.3185.i, i32 %conv55.i), !dbg !1128
  %cmp56.i = icmp eq i32 %quote.3185.i, %conv55.i, !dbg !1128
  br i1 %cmp56.i, label %if.then58.i, label %if.then53.i.if.end59.i_crit_edge, !dbg !1127

if.then53.i.if.end59.i_crit_edge:                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1127
  br label %if.end59.i, !dbg !1127

if.then58.i:                                      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1129
  %gcov_ctr98.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 13), align 8, !dbg !1129
  %29 = add i64 %gcov_ctr98.i, 1, !dbg !1129
  store i64 %29, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 13), align 8, !dbg !1129
  br label %if.end59.i, !dbg !1130

if.end59.i:                                       ; preds = %if.then58.i, %if.then53.i.if.end59.i_crit_edge
  %quote.4.i = phi i32 [ 0, %if.then58.i ], [ %quote.3185.i, %if.then53.i.if.end59.i_crit_edge ], !dbg !1113
  %gcov_ctr99.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 14), align 16, !dbg !1131
  %30 = add i64 %gcov_ctr99.i, 1, !dbg !1131
  store i64 %30, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 14), align 16, !dbg !1131
  br label %for.inc75.i, !dbg !1131

if.end60.i:                                       ; preds = %for.body51.i
  %31 = zext i8 %28 to i64, !dbg !1132
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.240), !dbg !1132
  switch i8 %28, label %if.end60.i.sw.epilog74.i_crit_edge [
    i8 40, label %sw.bb63.i
    i8 41, label %sw.bb69.i
    i8 39, label %if.end60.i.sw.bb71.i_crit_edge
    i8 34, label %if.end60.i.sw.bb71.i_crit_edge1507
  ], !dbg !1132

if.end60.i.sw.bb71.i_crit_edge1507:               ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1132
  br label %sw.bb71.i, !dbg !1132

if.end60.i.sw.bb71.i_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1132
  br label %sw.bb71.i, !dbg !1132

if.end60.i.sw.epilog74.i_crit_edge:               ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1132
  br label %sw.epilog74.i, !dbg !1132

sw.bb63.i:                                        ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_cmp4(i32 %level.0186.i, i32 %open.1.i), !dbg !1133
  %cmp64.i = icmp eq i32 %level.0186.i, %open.1.i, !dbg !1133
  br i1 %cmp64.i, label %if.then66.i, label %if.end67.i, !dbg !1134

if.then66.i:                                      ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1135
  %gcov_ctr100.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 15), align 8, !dbg !1135
  %32 = add i64 %gcov_ctr100.i, 1, !dbg !1135
  store i64 %32, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 15), align 8, !dbg !1135
  br label %sw.bb2, !dbg !1136

if.end67.i:                                       ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1137
  %gcov_ctr101.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 16), align 16, !dbg !1137
  %33 = add i64 %gcov_ctr101.i, 1, !dbg !1137
  store i64 %33, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 16), align 16, !dbg !1137
  %dec68.i = add i32 %level.0186.i, -1, !dbg !1137
  br label %sw.epilog74.i, !dbg !1138

sw.bb69.i:                                        ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1139
  %gcov_ctr102.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 17), align 8, !dbg !1139
  %34 = add i64 %gcov_ctr102.i, 1, !dbg !1139
  store i64 %34, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 17), align 8, !dbg !1139
  %inc70.i = add i32 %level.0186.i, 1, !dbg !1139
  br label %sw.epilog74.i, !dbg !1140

sw.bb71.i:                                        ; preds = %if.end60.i.sw.bb71.i_crit_edge, %if.end60.i.sw.bb71.i_crit_edge1507
  %gcov_ctr103.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 18), align 16, !dbg !1141
  %35 = add i64 %gcov_ctr103.i, 1, !dbg !1141
  store i64 %35, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 18), align 16, !dbg !1141
  %36 = ptrtoint ptr %arrayidx61.i to i32, !dbg !1141
  call void @__asan_load1_noabort(i32 %36), !dbg !1141
  %37 = load i8, ptr %arrayidx61.i, align 1, !dbg !1141
  %conv73.i = zext i8 %37 to i32, !dbg !1141
  br label %sw.epilog74.i, !dbg !1142

sw.epilog74.i:                                    ; preds = %sw.bb71.i, %sw.bb69.i, %if.end67.i, %if.end60.i.sw.epilog74.i_crit_edge
  %quote.5.i = phi i32 [ 0, %if.end60.i.sw.epilog74.i_crit_edge ], [ %conv73.i, %sw.bb71.i ], [ 0, %sw.bb69.i ], [ 0, %if.end67.i ], !dbg !1113
  %level.1.i = phi i32 [ %level.0186.i, %if.end60.i.sw.epilog74.i_crit_edge ], [ %level.0186.i, %sw.bb71.i ], [ %inc70.i, %sw.bb69.i ], [ %dec68.i, %if.end67.i ], !dbg !1113
  %gcov_ctr104.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 19), align 8, !dbg !1143
  %38 = add i64 %gcov_ctr104.i, 1, !dbg !1143
  store i64 %38, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 19), align 8, !dbg !1143
  br label %for.inc75.i, !dbg !1143

for.inc75.i:                                      ; preds = %sw.epilog74.i, %if.end59.i
  %quote.6.i = phi i32 [ %quote.4.i, %if.end59.i ], [ %quote.5.i, %sw.epilog74.i ], !dbg !1113
  %level.2.i = phi i32 [ %level.0186.i, %if.end59.i ], [ %level.1.i, %sw.epilog74.i ], !dbg !1144
  %i.1.i = add i32 %i.1187.i, -1, !dbg !1113
  %tobool50.not.i = icmp eq i32 %i.1.i, 0, !dbg !1125
  br i1 %tobool50.not.i, label %for.inc75.i.for.end77.i_crit_edge, label %for.inc75.i.for.body51.i_crit_edge, !dbg !1125, !llvm.loop !1145

for.inc75.i.for.body51.i_crit_edge:               ; preds = %for.inc75.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1125
  br label %for.body51.i, !dbg !1125

for.inc75.i.for.end77.i_crit_edge:                ; preds = %for.inc75.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1125
  br label %for.end77.i, !dbg !1125

for.end77.i:                                      ; preds = %for.inc75.i.for.end77.i_crit_edge, %for.cond49.preheader.i.for.end77.i_crit_edge
  %gcov_ctr105.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 20), align 16, !dbg !1146
  %39 = add i64 %gcov_ctr105.i, 1, !dbg !1146
  store i64 %39, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 20), align 16, !dbg !1146
  br label %sw.bb2, !dbg !1147

sw.bb:                                            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1148
  %gcov_ctr97.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 12), align 16, !dbg !1148
  %40 = add i64 %gcov_ctr97.i, 1, !dbg !1148
  store i64 %40, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 12), align 16, !dbg !1148
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.123, align 16, !dbg !1149
  %41 = add i64 %gcov_ctr, 1, !dbg !1149
  store i64 %41, ptr @__llvm_gcov_ctr.123, align 16, !dbg !1149
  %gcov_ctr.i64 = load i64, ptr @__llvm_gcov_ctr.135, align 8
  %42 = add i64 %gcov_ctr.i64, 1
  store i64 %42, ptr @__llvm_gcov_ctr.135, align 8
  %43 = ptrtoint ptr %pe to i32, !dbg !1150
  call void @__asan_store4_noabort(i32 %43), !dbg !1150
  store i32 4, ptr %pe, align 4, !dbg !1150
  %lasterr_pos.i = getelementptr inbounds %struct.filter_parse_error, ptr %pe, i32 0, i32 1, !dbg !1152
  %44 = ptrtoint ptr %lasterr_pos.i to i32, !dbg !1153
  call void @__asan_store4_noabort(i32 %44), !dbg !1153
  store i32 %last_quote.2.i, ptr %lasterr_pos.i, align 4, !dbg !1153
  br label %cleanup, !dbg !1154

sw.bb2:                                           ; preds = %for.end77.i, %if.then66.i
  %index.0.ph.ph = phi i32 [ 0, %for.end77.i ], [ %i.1187.i, %if.then66.i ]
  %gcov_ctr49 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 1), align 8, !dbg !1155
  %45 = add i64 %gcov_ctr49, 1, !dbg !1155
  store i64 %45, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 1), align 8, !dbg !1155
  %gcov_ctr.i65 = load i64, ptr @__llvm_gcov_ctr.135, align 8
  %46 = add i64 %gcov_ctr.i65, 1
  store i64 %46, ptr @__llvm_gcov_ctr.135, align 8
  %47 = ptrtoint ptr %pe to i32, !dbg !1156
  call void @__asan_store4_noabort(i32 %47), !dbg !1156
  store i32 2, ptr %pe, align 4, !dbg !1156
  %lasterr_pos.i66 = getelementptr inbounds %struct.filter_parse_error, ptr %pe, i32 0, i32 1, !dbg !1158
  %48 = ptrtoint ptr %lasterr_pos.i66 to i32, !dbg !1159
  call void @__asan_store4_noabort(i32 %48), !dbg !1159
  store i32 %index.0.ph.ph, ptr %lasterr_pos.i66, align 4, !dbg !1159
  br label %cleanup, !dbg !1160

sw.default:                                       ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1161
  %gcov_ctr93.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 8), align 16, !dbg !1161
  %49 = add i64 %gcov_ctr93.i, 1, !dbg !1161
  store i64 %49, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 8), align 16, !dbg !1161
  %gcov_ctr50 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 2), align 16, !dbg !1162
  %50 = add i64 %gcov_ctr50, 1, !dbg !1162
  store i64 %50, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 2), align 16, !dbg !1162
  %gcov_ctr.i67 = load i64, ptr @__llvm_gcov_ctr.135, align 8
  %51 = add i64 %gcov_ctr.i67, 1
  store i64 %51, ptr @__llvm_gcov_ctr.135, align 8
  %52 = ptrtoint ptr %pe to i32, !dbg !1163
  call void @__asan_store4_noabort(i32 %52), !dbg !1163
  store i32 3, ptr %pe, align 4, !dbg !1163
  %lasterr_pos.i68 = getelementptr inbounds %struct.filter_parse_error, ptr %pe, i32 0, i32 1, !dbg !1165
  %53 = ptrtoint ptr %lasterr_pos.i68 to i32, !dbg !1166
  call void @__asan_store4_noabort(i32 %53), !dbg !1166
  store i32 %i.0174.i, ptr %lasterr_pos.i68, align 4, !dbg !1166
  br label %cleanup, !dbg !1167

if.end:                                           ; preds = %if.end44.i
  %gcov_ctr106.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 21), align 8, !dbg !1085
  %54 = add i64 %gcov_ctr106.i, 1, !dbg !1085
  store i64 %54, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 21), align 8, !dbg !1085
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_preds.2.i), !dbg !1168
  %tobool.not = icmp eq i32 %nr_preds.2.i, 0, !dbg !1168
  br i1 %tobool.not, label %if.end.if.then3_crit_edge, label %if.end4, !dbg !1086

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1086
  br label %if.then3, !dbg !1086

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %if.end.thread
  %gcov_ctr51 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 3), align 8, !dbg !1169
  %55 = add i64 %gcov_ctr51, 1, !dbg !1169
  store i64 %55, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 3), align 8, !dbg !1169
  br label %cleanup, !dbg !1169

if.end4:                                          ; preds = %if.end
  %add.i69 = add i32 %nr_preds.2.i, 2, !dbg !1170
  %56 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %max_open.1.i, i32 4) #24, !dbg !1173
  %57 = extractvalue { i32, i1 } %56, 1, !dbg !1173
  %gcov_ctr.i16.i.i = load i64, ptr @__llvm_gcov_ctr.145, align 8
  %58 = add i64 %gcov_ctr.i16.i.i, 1
  store i64 %58, ptr @__llvm_gcov_ctr.145, align 8
  br i1 %57, label %kmalloc_array.exit.thread.i, label %if.end7.i.i, !dbg !1173, !prof !913

kmalloc_array.exit.thread.i:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1176
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.140, align 16, !dbg !1176
  %59 = add i64 %gcov_ctr.i.i, 1, !dbg !1176
  store i64 %59, ptr @__llvm_gcov_ctr.140, align 16, !dbg !1176
  br label %predicate_parse.exit.thread, !dbg !1177

if.end7.i.i:                                      ; preds = %if.end4
  %60 = extractvalue { i32, i1 } %56, 0, !dbg !1173
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.140, i32 0, i32 3), align 8, !dbg !1178
  %61 = add i64 %gcov_ctr11.i.i, 1, !dbg !1178
  store i64 %61, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.140, i32 0, i32 3), align 8, !dbg !1178
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %60, i32 noundef 3264) #28, !dbg !1179
  %tobool.not.i70 = icmp eq ptr %call8.i.i, null, !dbg !1180
  br i1 %tobool.not.i70, label %if.end7.i.i.predicate_parse.exit.thread_crit_edge, label %if.end.i73, !dbg !1177

if.end7.i.i.predicate_parse.exit.thread_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1177
  br label %predicate_parse.exit.thread, !dbg !1177

predicate_parse.exit.thread:                      ; preds = %if.end7.i.i.predicate_parse.exit.thread_crit_edge, %kmalloc_array.exit.thread.i
  %gcov_ctr.i71 = load i64, ptr @__llvm_gcov_ctr.136, align 16, !dbg !1181
  %62 = add i64 %gcov_ctr.i71, 1, !dbg !1181
  store i64 %62, ptr @__llvm_gcov_ctr.136, align 16, !dbg !1181
  %gcov_ctr.i1.i = load i64, ptr @__llvm_gcov_ctr.141, align 8
  %63 = add i64 %gcov_ctr.i1.i, 1
  store i64 %63, ptr @__llvm_gcov_ctr.141, align 8
  %gcov_ctr.i88113 = load i64, ptr @__llvm_gcov_ctr.138, align 8
  %64 = add i64 %gcov_ctr.i88113, 1
  store i64 %64, ptr @__llvm_gcov_ctr.138, align 8
  br label %if.then7, !dbg !1182

if.end.i73:                                       ; preds = %if.end7.i.i
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.142, align 8
  %65 = add i64 %gcov_ctr.i2.i, 1
  store i64 %65, ptr @__llvm_gcov_ctr.142, align 8
  %66 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i69, i32 12) #24, !dbg !1183
  %67 = extractvalue { i32, i1 } %66, 1, !dbg !1183
  %gcov_ctr.i16.i.i.i = load i64, ptr @__llvm_gcov_ctr.145, align 8
  %68 = add i64 %gcov_ctr.i16.i.i.i, 1
  store i64 %68, ptr @__llvm_gcov_ctr.145, align 8
  br i1 %67, label %kcalloc.exit.thread.i, label %kcalloc.exit.thread791.i, !dbg !1183, !prof !913

kcalloc.exit.thread.i:                            ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1187
  %gcov_ctr.i.i3.i = load i64, ptr @__llvm_gcov_ctr.140, align 16, !dbg !1187
  %69 = add i64 %gcov_ctr.i.i3.i, 1, !dbg !1187
  store i64 %69, ptr @__llvm_gcov_ctr.140, align 16, !dbg !1187
  br label %if.then4.i, !dbg !1188

kcalloc.exit.thread791.i:                         ; preds = %if.end.i73
  %70 = extractvalue { i32, i1 } %66, 0, !dbg !1183
  %gcov_ctr11.i.i10.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.140, i32 0, i32 3), align 8, !dbg !1189
  %71 = add i64 %gcov_ctr11.i.i10.i, 1, !dbg !1189
  store i64 %71, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.140, i32 0, i32 3), align 8, !dbg !1189
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %70, i32 noundef 3520) #28, !dbg !1190
  %tobool3.not793.i = icmp eq ptr %call8.i.i.i, null, !dbg !1191
  br i1 %tobool3.not793.i, label %kcalloc.exit.thread791.i.if.then4.i_crit_edge, label %if.end7.i76.i, !dbg !1188

kcalloc.exit.thread791.i.if.then4.i_crit_edge:    ; preds = %kcalloc.exit.thread791.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1188
  br label %if.then4.i, !dbg !1188

if.then4.i:                                       ; preds = %kcalloc.exit.thread791.i.if.then4.i_crit_edge, %kcalloc.exit.thread.i
  %gcov_ctr224.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 1), align 8, !dbg !1192
  %72 = add i64 %gcov_ctr224.i, 1, !dbg !1192
  store i64 %72, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 1), align 8, !dbg !1192
  %gcov_ctr.i11.i = load i64, ptr @__llvm_gcov_ctr.135, align 8
  %73 = add i64 %gcov_ctr.i11.i, 1
  store i64 %73, ptr @__llvm_gcov_ctr.135, align 8
  %74 = ptrtoint ptr %pe to i32, !dbg !1193
  call void @__asan_store4_noabort(i32 %74), !dbg !1193
  store i32 -12, ptr %pe, align 4, !dbg !1193
  %lasterr_pos.i.i = getelementptr inbounds %struct.filter_parse_error, ptr %pe, i32 0, i32 1, !dbg !1195
  %75 = ptrtoint ptr %lasterr_pos.i.i to i32, !dbg !1196
  call void @__asan_store4_noabort(i32 %75), !dbg !1196
  store i32 0, ptr %lasterr_pos.i.i, align 4, !dbg !1196
  br label %out_free.i, !dbg !1197

if.end7.i76.i:                                    ; preds = %kcalloc.exit.thread791.i
  %gcov_ctr.i16.i12796.i = load i64, ptr @__llvm_gcov_ctr.145, align 8
  %76 = add i64 %gcov_ctr.i16.i12796.i, 1
  store i64 %76, ptr @__llvm_gcov_ctr.145, align 8
  %gcov_ctr11.i74.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.140, i32 0, i32 3), align 8, !dbg !1198
  %77 = add i64 %gcov_ctr11.i74.i, 1, !dbg !1198
  store i64 %77, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.140, i32 0, i32 3), align 8, !dbg !1198
  %call8.i75.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i69, i32 noundef 3264) #28, !dbg !1200
  %tobool7.not.i = icmp eq ptr %call8.i75.i, null, !dbg !1201
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end9.i, !dbg !1202

if.then8.i:                                       ; preds = %if.end7.i76.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1203
  %gcov_ctr226.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 3), align 8, !dbg !1203
  %78 = add i64 %gcov_ctr226.i, 1, !dbg !1203
  store i64 %78, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 3), align 8, !dbg !1203
  %gcov_ctr.i79.i = load i64, ptr @__llvm_gcov_ctr.135, align 8
  %79 = add i64 %gcov_ctr.i79.i, 1
  store i64 %79, ptr @__llvm_gcov_ctr.135, align 8
  %80 = ptrtoint ptr %pe to i32, !dbg !1204
  call void @__asan_store4_noabort(i32 %80), !dbg !1204
  store i32 -12, ptr %pe, align 4, !dbg !1204
  %lasterr_pos.i80.i = getelementptr inbounds %struct.filter_parse_error, ptr %pe, i32 0, i32 1, !dbg !1206
  %81 = ptrtoint ptr %lasterr_pos.i80.i to i32, !dbg !1207
  call void @__asan_store4_noabort(i32 %81), !dbg !1207
  store i32 0, ptr %lasterr_pos.i80.i, align 4, !dbg !1207
  br label %out_free.i, !dbg !1208

if.end9.i:                                        ; preds = %if.end7.i76.i
  %gcov_ctr225.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 2), align 16, !dbg !1209
  %82 = add i64 %gcov_ctr225.i, 1, !dbg !1209
  store i64 %82, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 2), align 16, !dbg !1209
  %83 = ptrtoint ptr %call8.i.i to i32, !dbg !1210
  call void @__asan_store4_noabort(i32 %83), !dbg !1210
  store i32 0, ptr %call8.i.i, align 128, !dbg !1210
  %84 = ptrtoint ptr %filter_string to i32, !dbg !1211
  call void @__asan_load1_noabort(i32 %84), !dbg !1211
  %85 = load i8, ptr %filter_string, align 1, !dbg !1211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85), !dbg !1212
  %tobool10.not420520.i = icmp eq i8 %85, 0, !dbg !1212
  br i1 %tobool10.not420520.i, label %if.end9.i.while.end110.i_crit_edge, label %while.body.lr.ph.lr.ph.i, !dbg !1212

if.end9.i.while.end110.i_crit_edge:               ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1212
  br label %while.end110.i, !dbg !1212

while.body.lr.ph.lr.ph.i:                         ; preds = %if.end9.i
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call8.i.i to i32
  br label %while.body.lr.ph.i, !dbg !1212

while.body.lr.ph.i:                               ; preds = %cleanup.cont.i.while.body.lr.ph.i_crit_edge, %while.body.lr.ph.lr.ph.i
  %86 = phi i8 [ %85, %while.body.lr.ph.lr.ph.i ], [ %387, %cleanup.cont.i.while.body.lr.ph.i_crit_edge ]
  %N.0.ph526.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.i ], [ %inc.i80, %cleanup.cont.i.while.body.lr.ph.i_crit_edge ]
  %ret.0.ph524.i = phi i32 [ -12, %while.body.lr.ph.lr.ph.i ], [ -1, %cleanup.cont.i.while.body.lr.ph.i_crit_edge ]
  %invert.0.ph523.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.i ], [ %and72.i, %cleanup.cont.i.while.body.lr.ph.i_crit_edge ]
  %top.0.ph522.i = phi ptr [ %call8.i.i, %while.body.lr.ph.lr.ph.i ], [ %top.1.ph.i, %cleanup.cont.i.while.body.lr.ph.i_crit_edge ]
  %ptr.0.ph521.i = phi ptr [ %filter_string, %while.body.lr.ph.lr.ph.i ], [ %ptr.2.i, %cleanup.cont.i.while.body.lr.ph.i_crit_edge ]
  br label %while.body.i, !dbg !1212

while.body.i:                                     ; preds = %cleanup.i84.while.body.i_crit_edge, %while.body.lr.ph.i
  %87 = phi i8 [ %86, %while.body.lr.ph.i ], [ %380, %cleanup.i84.while.body.i_crit_edge ]
  %invert.0423.i = phi i32 [ %invert.0.ph523.i, %while.body.lr.ph.i ], [ %invert.2.i, %cleanup.i84.while.body.i_crit_edge ]
  %top.0422.i = phi ptr [ %top.0.ph522.i, %while.body.lr.ph.i ], [ %top.2.i, %cleanup.i84.while.body.i_crit_edge ]
  %ptr.0421.i = phi ptr [ %ptr.0.ph521.i, %while.body.lr.ph.i ], [ %incdec.ptr.i, %cleanup.i84.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %ptr.0421.i, i32 1, !dbg !1213
  %conv.i74 = zext i8 %87 to i32, !dbg !1214
  %arrayidx.i75 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i74, !dbg !1214
  %88 = ptrtoint ptr %arrayidx.i75 to i32, !dbg !1214
  call void @__asan_load1_noabort(i32 %88), !dbg !1214
  %89 = load i8, ptr %arrayidx.i75, align 1, !dbg !1214
  %90 = and i8 %89, 32, !dbg !1214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90), !dbg !1214
  %cmp.not.i76 = icmp eq i8 %90, 0, !dbg !1214
  br i1 %cmp.not.i76, label %if.end14.i, label %if.then13.i, !dbg !1214

if.then13.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1215
  %gcov_ctr227.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 4), align 16
  %91 = add i64 %gcov_ctr227.i, 1
  store i64 %91, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 4), align 16
  br label %cleanup.i84, !dbg !1216, !llvm.loop !1217

if.end14.i:                                       ; preds = %while.body.i
  %92 = zext i8 %87 to i64, !dbg !1219
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.241), !dbg !1219
  switch i8 %87, label %if.end14.i.sw.epilog.i78_crit_edge [
    i8 40, label %sw.bb.i77
    i8 33, label %sw.bb21.i
  ], !dbg !1219

if.end14.i.sw.epilog.i78_crit_edge:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1219
  br label %sw.epilog.i78, !dbg !1219

sw.bb.i77:                                        ; preds = %if.end14.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %top.0422.i to i32, !dbg !1220
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !1220
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 2, !dbg !1220
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %max_open.1.i), !dbg !1221
  %cmp16.i = icmp sgt i32 %sub.ptr.div.i, %max_open.1.i, !dbg !1221
  br i1 %cmp16.i, label %if.then18.i, label %if.end19.i, !dbg !1222

if.then18.i:                                      ; preds = %sw.bb.i77
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1223
  %gcov_ctr228.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 5), align 8, !dbg !1223
  %93 = add i64 %gcov_ctr228.i, 1, !dbg !1223
  store i64 %93, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 5), align 8, !dbg !1223
  br label %out_free.i, !dbg !1224

if.end19.i:                                       ; preds = %sw.bb.i77
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1225
  %gcov_ctr229.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 6), align 16, !dbg !1225
  %94 = add i64 %gcov_ctr229.i, 1, !dbg !1225
  store i64 %94, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 6), align 16, !dbg !1225
  %incdec.ptr20.i = getelementptr i32, ptr %top.0422.i, i32 1, !dbg !1226
  %95 = ptrtoint ptr %incdec.ptr20.i to i32, !dbg !1227
  call void @__asan_store4_noabort(i32 %95), !dbg !1227
  store i32 %invert.0423.i, ptr %incdec.ptr20.i, align 4, !dbg !1227
  br label %cleanup.i84, !dbg !1228, !llvm.loop !1229

sw.bb21.i:                                        ; preds = %if.end14.i
  %96 = ptrtoint ptr %incdec.ptr.i to i32, !dbg !1230
  call void @__asan_load1_noabort(i32 %96), !dbg !1230
  %97 = load i8, ptr %incdec.ptr.i, align 1, !dbg !1230
  %98 = zext i8 %97 to i64, !dbg !1233
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.242), !dbg !1233
  switch i8 %97, label %if.end24.i [
    i8 61, label %sw.bb21.i.if.then23.i_crit_edge
    i8 126, label %sw.bb21.i.if.then23.i_crit_edge1508
  ], !dbg !1233

sw.bb21.i.if.then23.i_crit_edge1508:              ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1233
  br label %if.then23.i, !dbg !1233

sw.bb21.i.if.then23.i_crit_edge:                  ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1233
  br label %if.then23.i, !dbg !1233

if.then23.i:                                      ; preds = %sw.bb21.i.if.then23.i_crit_edge, %sw.bb21.i.if.then23.i_crit_edge1508
  %gcov_ctr.i82.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 1), align 8, !dbg !1234
  %99 = add i64 %gcov_ctr.i82.i, 1, !dbg !1234
  store i64 %99, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 1), align 8, !dbg !1234
  %gcov_ctr230.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 7), align 8, !dbg !1235
  %100 = add i64 %gcov_ctr230.i, 1, !dbg !1235
  store i64 %100, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 7), align 8, !dbg !1235
  br label %sw.epilog.i78, !dbg !1235

if.end24.i:                                       ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1234
  %gcov_ctr.i82143.i = load i64, ptr @__llvm_gcov_ctr.143, align 8, !dbg !1234
  %101 = add i64 %gcov_ctr.i82143.i, 1, !dbg !1234
  store i64 %101, ptr @__llvm_gcov_ctr.143, align 8, !dbg !1234
  %gcov_ctr231.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 8), align 16, !dbg !1236
  %102 = add i64 %gcov_ctr231.i, 1, !dbg !1236
  store i64 %102, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 8), align 16, !dbg !1236
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %invert.0423.i), !dbg !1237
  %tobool25.not.i = icmp eq i32 %invert.0423.i, 0, !dbg !1237
  %lnot.ext.i = zext i1 %tobool25.not.i to i32, !dbg !1237
  br label %cleanup.i84, !dbg !1238, !llvm.loop !1239

sw.epilog.i78:                                    ; preds = %if.then23.i, %if.end14.i.sw.epilog.i78_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %N.0.ph526.i, i32 %add.i69), !dbg !1240
  %exitcond.not.i = icmp eq i32 %N.0.ph526.i, %add.i69, !dbg !1240
  br i1 %exitcond.not.i, label %if.then28.i, label %if.end32.i, !dbg !1241

if.then28.i:                                      ; preds = %sw.epilog.i78
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1242
  %gcov_ctr232.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 9), align 8, !dbg !1242
  %103 = add i64 %gcov_ctr232.i, 1, !dbg !1242
  store i64 %103, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 9), align 8, !dbg !1242
  %sub.ptr.lhs.cast29.i = ptrtoint ptr %ptr.0421.i to i32, !dbg !1243
  %sub.ptr.rhs.cast30.i = ptrtoint ptr %filter_string to i32, !dbg !1243
  %sub.ptr.sub31.i = sub i32 %sub.ptr.lhs.cast29.i, %sub.ptr.rhs.cast30.i, !dbg !1243
  %gcov_ctr.i83.i = load i64, ptr @__llvm_gcov_ctr.135, align 8
  %104 = add i64 %gcov_ctr.i83.i, 1
  store i64 %104, ptr @__llvm_gcov_ctr.135, align 8
  %105 = ptrtoint ptr %pe to i32, !dbg !1244
  call void @__asan_store4_noabort(i32 %105), !dbg !1244
  store i32 12, ptr %pe, align 4, !dbg !1244
  %lasterr_pos.i84.i = getelementptr inbounds %struct.filter_parse_error, ptr %pe, i32 0, i32 1, !dbg !1246
  %106 = ptrtoint ptr %lasterr_pos.i84.i to i32, !dbg !1247
  call void @__asan_store4_noabort(i32 %106), !dbg !1247
  store i32 %sub.ptr.sub31.i, ptr %lasterr_pos.i84.i, align 4, !dbg !1247
  br label %out_free.i, !dbg !1248

if.end32.i:                                       ; preds = %sw.epilog.i78
  %conv33.i = trunc i32 %invert.0423.i to i8, !dbg !1249
  %arrayidx34.i = getelementptr i8, ptr %call8.i75.i, i32 %N.0.ph526.i, !dbg !1250
  %107 = ptrtoint ptr %arrayidx34.i to i32, !dbg !1251
  call void @__asan_store1_noabort(i32 %107), !dbg !1251
  store i8 %conv33.i, ptr %arrayidx34.i, align 1, !dbg !1251
  %sub.i = add nsw i32 %N.0.ph526.i, -1, !dbg !1252
  %arrayidx35.i = getelementptr %struct.prog_entry, ptr %call8.i.i.i, i32 %N.0.ph526.i, !dbg !1253
  %108 = ptrtoint ptr %arrayidx35.i to i32, !dbg !1254
  call void @__asan_store4_noabort(i32 %108), !dbg !1254
  store i32 %sub.i, ptr %arrayidx35.i, align 4, !dbg !1254
  %pred.i = getelementptr %struct.prog_entry, ptr %call8.i.i.i, i32 %N.0.ph526.i, i32 2, !dbg !1255
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %num_buf.i.i) #24, !dbg !1256
  %109 = call ptr @memset(ptr %num_buf.i.i, i32 255, i32 24), !dbg !1259
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i.i) #24, !dbg !1260
  %110 = ptrtoint ptr %val.i.i to i32, !dbg !1261
  call void @__asan_store8_noabort(i32 %110), !dbg !1261
  store i64 -1, ptr %val.i.i, align 8, !dbg !1261, !annotation !838
  %111 = ptrtoint ptr %ptr.0421.i to i32, !dbg !1262
  call void @__asan_load1_noabort(i32 %111), !dbg !1262
  %112 = load i8, ptr %ptr.0421.i, align 1, !dbg !1262
  %conv643.i.i = zext i8 %112 to i32, !dbg !1262
  %arrayidx1644.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv643.i.i, !dbg !1262
  %113 = ptrtoint ptr %arrayidx1644.i.i to i32, !dbg !1262
  call void @__asan_load1_noabort(i32 %113), !dbg !1262
  %114 = load i8, ptr %arrayidx1644.i.i, align 1, !dbg !1262
  %115 = and i8 %114, 32, !dbg !1262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115), !dbg !1262
  %cmp.not645.i.i = icmp eq i8 %115, 0, !dbg !1262
  br i1 %cmp.not645.i.i, label %if.end32.i.while.cond4.preheader.i.i_crit_edge, label %if.end32.i.while.body.i.i_crit_edge, !dbg !1263

if.end32.i.while.body.i.i_crit_edge:              ; preds = %if.end32.i
  br label %while.body.i.i, !dbg !1263

if.end32.i.while.cond4.preheader.i.i_crit_edge:   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1263
  br label %while.cond4.preheader.i.i, !dbg !1263

while.cond4.preheader.i.i:                        ; preds = %while.body.i.i.while.cond4.preheader.i.i_crit_edge, %if.end32.i.while.cond4.preheader.i.i_crit_edge
  %i.0.lcssa642.i.i = phi i32 [ 0, %if.end32.i.while.cond4.preheader.i.i_crit_edge ], [ %inc.i.i, %while.body.i.i.while.cond4.preheader.i.i_crit_edge ]
  br label %while.cond4.i.i, !dbg !1264

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end32.i.while.body.i.i_crit_edge
  %i.0646.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %if.end32.i.while.body.i.i_crit_edge ]
  %gcov_ctr.i85.i = load i64, ptr @__llvm_gcov_ctr.137, align 16, !dbg !1265
  %116 = add i64 %gcov_ctr.i85.i, 1, !dbg !1265
  store i64 %116, ptr @__llvm_gcov_ctr.137, align 16, !dbg !1265
  %inc.i.i = add i32 %i.0646.i.i, 1, !dbg !1265
  %arrayidx.i86.i = getelementptr i8, ptr %ptr.0421.i, i32 %inc.i.i, !dbg !1262
  %117 = ptrtoint ptr %arrayidx.i86.i to i32, !dbg !1262
  call void @__asan_load1_noabort(i32 %117), !dbg !1262
  %118 = load i8, ptr %arrayidx.i86.i, align 1, !dbg !1262
  %conv.i.i = zext i8 %118 to i32, !dbg !1262
  %arrayidx1.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i, !dbg !1262
  %119 = ptrtoint ptr %arrayidx1.i.i to i32, !dbg !1262
  call void @__asan_load1_noabort(i32 %119), !dbg !1262
  %120 = load i8, ptr %arrayidx1.i.i, align 1, !dbg !1262
  %121 = and i8 %120, 32, !dbg !1262
  %cmp.not.i.i = icmp eq i8 %121, 0, !dbg !1262
  br i1 %cmp.not.i.i, label %while.body.i.i.while.cond4.preheader.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge, !dbg !1263, !llvm.loop !1266

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1263
  br label %while.body.i.i, !dbg !1263

while.body.i.i.while.cond4.preheader.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1263
  br label %while.cond4.preheader.i.i, !dbg !1263

while.cond4.i.i:                                  ; preds = %while.body16.i.i, %while.cond4.preheader.i.i
  %i.1.i.i = phi i32 [ %inc17.i.i, %while.body16.i.i ], [ %i.0.lcssa642.i.i, %while.cond4.preheader.i.i ], !dbg !1267
  %arrayidx5.i.i = getelementptr i8, ptr %ptr.0421.i, i32 %i.1.i.i, !dbg !1268
  %122 = ptrtoint ptr %arrayidx5.i.i to i32, !dbg !1268
  call void @__asan_load1_noabort(i32 %122), !dbg !1268
  %123 = load i8, ptr %arrayidx5.i.i, align 1, !dbg !1268
  %conv6.i.i = zext i8 %123 to i32, !dbg !1268
  %arrayidx7.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv6.i.i, !dbg !1268
  %124 = ptrtoint ptr %arrayidx7.i.i to i32, !dbg !1268
  call void @__asan_load1_noabort(i32 %124), !dbg !1268
  %125 = load i8, ptr %arrayidx7.i.i, align 1, !dbg !1268
  %126 = and i8 %125, 7, !dbg !1268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126), !dbg !1268
  %cmp10.not.i.i = icmp eq i8 %126, 0, !dbg !1268
  br i1 %cmp10.not.i.i, label %lor.rhs.i.i, label %while.cond4.i.i.while.body16.i.i_crit_edge, !dbg !1269

while.cond4.i.i.while.body16.i.i_crit_edge:       ; preds = %while.cond4.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1269
  br label %while.body16.i.i, !dbg !1269

lor.rhs.i.i:                                      ; preds = %while.cond4.i.i
  %gcov_ctr348.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 1), align 8, !dbg !1270
  %127 = add i64 %gcov_ctr348.i.i, 1, !dbg !1270
  store i64 %127, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 1), align 8, !dbg !1270
  %128 = ptrtoint ptr %arrayidx5.i.i to i32, !dbg !1270
  call void @__asan_load1_noabort(i32 %128), !dbg !1270
  %129 = load i8, ptr %arrayidx5.i.i, align 1, !dbg !1270
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %129), !dbg !1271
  %cmp14.i.i = icmp eq i8 %129, 95, !dbg !1271
  br i1 %cmp14.i.i, label %lor.rhs.i.i.while.body16.i.i_crit_edge, label %while.end18.i.i, !dbg !1264

lor.rhs.i.i.while.body16.i.i_crit_edge:           ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1264
  br label %while.body16.i.i, !dbg !1264

while.body16.i.i:                                 ; preds = %lor.rhs.i.i.while.body16.i.i_crit_edge, %while.cond4.i.i.while.body16.i.i_crit_edge
  %gcov_ctr349.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 2), align 16, !dbg !1272
  %130 = add i64 %gcov_ctr349.i.i, 1, !dbg !1272
  store i64 %130, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 2), align 16, !dbg !1272
  %inc17.i.i = add i32 %i.1.i.i, 1, !dbg !1272
  br label %while.cond4.i.i, !dbg !1264, !llvm.loop !1273

while.end18.i.i:                                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.i.i, i32 %i.0.lcssa642.i.i), !dbg !1274
  %tobool.not.i.i = icmp eq i32 %i.1.i.i, %i.0.lcssa642.i.i, !dbg !1274
  br i1 %tobool.not.i.i, label %if.then.i87.i, label %if.end.i88.i, !dbg !1275

if.then.i87.i:                                    ; preds = %while.end18.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1276
  %gcov_ctr350.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 3), align 8, !dbg !1276
  %131 = add i64 %gcov_ctr350.i.i, 1, !dbg !1276
  store i64 %131, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 3), align 8, !dbg !1276
  br label %parse_pred.exit.thread.i, !dbg !1276

if.end.i88.i:                                     ; preds = %while.end18.i.i
  %arrayidx.le.i.i = getelementptr i8, ptr %ptr.0421.i, i32 %i.0.lcssa642.i.i, !dbg !1262
  %sub.i.i = sub i32 %i.1.i.i, %i.0.lcssa642.i.i, !dbg !1277
  %call19.i.i = call ptr @kmemdup_nul(ptr noundef %arrayidx.le.i.i, i32 noundef %sub.i.i, i32 noundef 3264) #24, !dbg !1278
  %tobool20.not.i.i = icmp eq ptr %call19.i.i, null, !dbg !1279
  br i1 %tobool20.not.i.i, label %if.then21.i.i, label %if.end22.i.i, !dbg !1280

if.then21.i.i:                                    ; preds = %if.end.i88.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1281
  %gcov_ctr351.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 4), align 16, !dbg !1281
  %132 = add i64 %gcov_ctr351.i.i, 1, !dbg !1281
  store i64 %132, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 4), align 16, !dbg !1281
  br label %parse_pred.exit.thread.i, !dbg !1281

if.end22.i.i:                                     ; preds = %if.end.i88.i
  %call23.i.i = call ptr @trace_find_event_field(ptr noundef %call, ptr noundef nonnull %call19.i.i) #24, !dbg !1282
  call void @kfree(ptr noundef nonnull %call19.i.i) #24, !dbg !1283
  %tobool24.not.i.i = icmp eq ptr %call23.i.i, null, !dbg !1284
  br i1 %tobool24.not.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1285

if.then25.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1286
  %sub.ptr.lhs.cast36.le.i = ptrtoint ptr %incdec.ptr.i to i32, !dbg !1286
  %sub.ptr.rhs.cast37.le.i = ptrtoint ptr %filter_string to i32, !dbg !1286
  %sub.ptr.sub38.le475.i = sub i32 %sub.ptr.lhs.cast36.le.i, %sub.ptr.rhs.cast37.le.i, !dbg !1286
  %gcov_ctr352.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 5), align 8, !dbg !1287
  %133 = add i64 %gcov_ctr352.i.i, 1, !dbg !1287
  store i64 %133, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 5), align 8, !dbg !1287
  %add.i.i = add i32 %sub.ptr.sub38.le475.i, %i.1.i.i, !dbg !1288
  %gcov_ctr.i.i89.i = load i64, ptr @__llvm_gcov_ctr.135, align 8
  %134 = add i64 %gcov_ctr.i.i89.i, 1
  store i64 %134, ptr @__llvm_gcov_ctr.135, align 8
  %135 = ptrtoint ptr %pe to i32, !dbg !1289
  call void @__asan_store4_noabort(i32 %135), !dbg !1289
  store i32 9, ptr %pe, align 4, !dbg !1289
  %lasterr_pos.i.i.i = getelementptr inbounds %struct.filter_parse_error, ptr %pe, i32 0, i32 1, !dbg !1291
  %136 = ptrtoint ptr %lasterr_pos.i.i.i to i32, !dbg !1292
  call void @__asan_store4_noabort(i32 %136), !dbg !1292
  store i32 %add.i.i, ptr %lasterr_pos.i.i.i, align 4, !dbg !1292
  br label %parse_pred.exit.thread.i, !dbg !1293

if.end26.i.i:                                     ; preds = %if.end22.i.i
  %call1.i.i.i = call i32 @strncmp(ptr noundef %arrayidx5.i.i, ptr noundef nonnull dereferenceable(9) @.str.11, i32 noundef 8) #24, !dbg !1294
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i), !dbg !1297
  %cmp.i.i90.i = icmp eq i32 %call1.i.i.i, 0, !dbg !1297
  %__llvm_gcov_ctr.146..i.i.i = select i1 %cmp.i.i90.i, ptr @__llvm_gcov_ctr.146, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 1), !dbg !1294
  %137 = ptrtoint ptr %__llvm_gcov_ctr.146..i.i.i to i32, !dbg !1298
  call void @__asan_load8_noabort(i32 %137), !dbg !1298
  %gcov_ctr2.i.i.i = load i64, ptr %__llvm_gcov_ctr.146..i.i.i, align 8, !dbg !1298
  %138 = add i64 %gcov_ctr2.i.i.i, 1, !dbg !1298
  store i64 %138, ptr %__llvm_gcov_ctr.146..i.i.i, align 8, !dbg !1298
  br i1 %cmp.i.i90.i, label %if.then30.i.i, label %if.end26.i.i.if.end32.i.i_crit_edge, !dbg !1299

if.end26.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1299
  br label %if.end32.i.i, !dbg !1299

if.then30.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1300
  %gcov_ctr353.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 6), align 16, !dbg !1300
  %139 = add i64 %gcov_ctr353.i.i, 1, !dbg !1300
  store i64 %139, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 6), align 16, !dbg !1300
  %add31.i.i = add i32 %i.1.i.i, 8, !dbg !1301
  br label %if.end32.i.i, !dbg !1302

if.end32.i.i:                                     ; preds = %if.then30.i.i, %if.end26.i.i.if.end32.i.i_crit_edge
  %i.2.i.i = phi i32 [ %add31.i.i, %if.then30.i.i ], [ %i.1.i.i, %if.end26.i.i.if.end32.i.i_crit_edge ], !dbg !1267
  %arrayidx34649.i.i = getelementptr i8, ptr %ptr.0421.i, i32 %i.2.i.i, !dbg !1303
  %140 = ptrtoint ptr %arrayidx34649.i.i to i32, !dbg !1303
  call void @__asan_load1_noabort(i32 %140), !dbg !1303
  %141 = load i8, ptr %arrayidx34649.i.i, align 1, !dbg !1303
  %conv35650.i.i = zext i8 %141 to i32, !dbg !1303
  %arrayidx36651.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv35650.i.i, !dbg !1303
  %142 = ptrtoint ptr %arrayidx36651.i.i to i32, !dbg !1303
  call void @__asan_load1_noabort(i32 %142), !dbg !1303
  %143 = load i8, ptr %arrayidx36651.i.i, align 1, !dbg !1303
  %144 = and i8 %143, 32, !dbg !1303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144), !dbg !1303
  %cmp39.not652.i.i = icmp eq i8 %144, 0, !dbg !1303
  br i1 %cmp39.not652.i.i, label %if.end32.i.i.for.cond.preheader.i.i_crit_edge, label %if.end32.i.i.while.body41.i.i_crit_edge, !dbg !1304

if.end32.i.i.while.body41.i.i_crit_edge:          ; preds = %if.end32.i.i
  br label %while.body41.i.i, !dbg !1304

if.end32.i.i.for.cond.preheader.i.i_crit_edge:    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1304
  br label %for.cond.preheader.i.i, !dbg !1304

for.cond.preheader.i.i:                           ; preds = %while.body41.i.i.for.cond.preheader.i.i_crit_edge, %if.end32.i.i.for.cond.preheader.i.i_crit_edge
  %i.3.lcssa648.i.i = phi i32 [ %i.2.i.i, %if.end32.i.i.for.cond.preheader.i.i_crit_edge ], [ %inc42.i.i, %while.body41.i.i.for.cond.preheader.i.i_crit_edge ]
  %arrayidx34.le.i.i = getelementptr i8, ptr %ptr.0421.i, i32 %i.3.lcssa648.i.i, !dbg !1303
  %145 = ptrtoint ptr %arrayidx34.le.i.i to i32, !dbg !1305
  call void @__asan_load1_noabort(i32 %145), !dbg !1305
  %lhsc.i.i = load i8, ptr %arrayidx34.le.i.i, align 1, !dbg !1305
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %lhsc.i.i), !dbg !1306
  %cmp51.i.i = icmp eq i8 %lhsc.i.i, 126, !dbg !1306
  br i1 %cmp51.i.i, label %for.cond.preheader.i.i.if.end60.i.i_crit_edge, label %for.inc.i.i, !dbg !1305

for.cond.preheader.i.i.if.end60.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1305
  br label %if.end60.i.i, !dbg !1305

while.body41.i.i:                                 ; preds = %while.body41.i.i.while.body41.i.i_crit_edge, %if.end32.i.i.while.body41.i.i_crit_edge
  %i.3653.i.i = phi i32 [ %inc42.i.i, %while.body41.i.i.while.body41.i.i_crit_edge ], [ %i.2.i.i, %if.end32.i.i.while.body41.i.i_crit_edge ]
  %gcov_ctr354.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 7), align 8, !dbg !1307
  %146 = add i64 %gcov_ctr354.i.i, 1, !dbg !1307
  store i64 %146, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 7), align 8, !dbg !1307
  %inc42.i.i = add i32 %i.3653.i.i, 1, !dbg !1307
  %arrayidx34.i.i = getelementptr i8, ptr %ptr.0421.i, i32 %inc42.i.i, !dbg !1303
  %147 = ptrtoint ptr %arrayidx34.i.i to i32, !dbg !1303
  call void @__asan_load1_noabort(i32 %147), !dbg !1303
  %148 = load i8, ptr %arrayidx34.i.i, align 1, !dbg !1303
  %conv35.i.i = zext i8 %148 to i32, !dbg !1303
  %arrayidx36.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv35.i.i, !dbg !1303
  %149 = ptrtoint ptr %arrayidx36.i.i to i32, !dbg !1303
  call void @__asan_load1_noabort(i32 %149), !dbg !1303
  %150 = load i8, ptr %arrayidx36.i.i, align 1, !dbg !1303
  %151 = and i8 %150, 32, !dbg !1303
  %cmp39.not.i.i = icmp eq i8 %151, 0, !dbg !1303
  br i1 %cmp39.not.i.i, label %while.body41.i.i.for.cond.preheader.i.i_crit_edge, label %while.body41.i.i.while.body41.i.i_crit_edge, !dbg !1304, !llvm.loop !1308

while.body41.i.i.while.body41.i.i_crit_edge:      ; preds = %while.body41.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1304
  br label %while.body41.i.i, !dbg !1304

while.body41.i.i.for.cond.preheader.i.i_crit_edge: ; preds = %while.body41.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1304
  br label %for.cond.preheader.i.i, !dbg !1304

for.inc.i.i:                                      ; preds = %for.cond.preheader.i.i
  %gcov_ctr356.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 9), align 8, !dbg !1309
  %152 = add i64 %gcov_ctr356.i.i, 1, !dbg !1309
  store i64 %152, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 9), align 8, !dbg !1309
  %call50.1.i.i = call i32 @strncmp(ptr noundef %arrayidx34.le.i.i, ptr noundef nonnull dereferenceable(3) @.str.14, i32 noundef 2) #24, !dbg !1305
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.1.i.i), !dbg !1306
  %cmp51.1.i.i = icmp eq i32 %call50.1.i.i, 0, !dbg !1306
  br i1 %cmp51.1.i.i, label %for.inc.i.i.if.end60.i.i_crit_edge, label %for.inc.1.i.i, !dbg !1305

for.inc.i.i.if.end60.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1305
  br label %if.end60.i.i, !dbg !1305

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %153 = add i64 %gcov_ctr356.i.i, 2, !dbg !1309
  store i64 %153, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 9), align 8, !dbg !1309
  %call50.2.i.i = call i32 @strncmp(ptr noundef %arrayidx34.le.i.i, ptr noundef nonnull dereferenceable(3) @.str.15, i32 noundef 2) #24, !dbg !1305
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.2.i.i), !dbg !1306
  %cmp51.2.i.i = icmp eq i32 %call50.2.i.i, 0, !dbg !1306
  br i1 %cmp51.2.i.i, label %for.inc.1.i.i.if.end60.i.i_crit_edge, label %for.inc.2.i.i, !dbg !1305

for.inc.1.i.i.if.end60.i.i_crit_edge:             ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1305
  br label %if.end60.i.i, !dbg !1305

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %154 = add i64 %gcov_ctr356.i.i, 3, !dbg !1309
  store i64 %154, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 9), align 8, !dbg !1309
  %call50.3.i.i = call i32 @strncmp(ptr noundef %arrayidx34.le.i.i, ptr noundef nonnull dereferenceable(3) @.str.16, i32 noundef 2) #24, !dbg !1305
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.3.i.i), !dbg !1306
  %cmp51.3.i.i = icmp eq i32 %call50.3.i.i, 0, !dbg !1306
  br i1 %cmp51.3.i.i, label %for.inc.2.i.i.if.end60.i.i_crit_edge, label %for.inc.3.i.i, !dbg !1305

for.inc.2.i.i.if.end60.i.i_crit_edge:             ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1305
  br label %if.end60.i.i, !dbg !1305

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %155 = add i64 %gcov_ctr356.i.i, 4, !dbg !1309
  store i64 %155, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 9), align 8, !dbg !1309
  %156 = ptrtoint ptr %arrayidx34.le.i.i to i32, !dbg !1305
  call void @__asan_load1_noabort(i32 %156), !dbg !1305
  %lhsc688.i.i = load i8, ptr %arrayidx34.le.i.i, align 1, !dbg !1305
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %lhsc688.i.i), !dbg !1306
  %cmp51.4.i.i = icmp eq i8 %lhsc688.i.i, 60, !dbg !1306
  br i1 %cmp51.4.i.i, label %for.inc.3.i.i.if.end60.i.i_crit_edge, label %for.inc.4.i.i, !dbg !1305

for.inc.3.i.i.if.end60.i.i_crit_edge:             ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1305
  br label %if.end60.i.i, !dbg !1305

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %157 = add i64 %gcov_ctr356.i.i, 5, !dbg !1309
  store i64 %157, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 9), align 8, !dbg !1309
  %call50.5.i.i = call i32 @strncmp(ptr noundef %arrayidx34.le.i.i, ptr noundef nonnull dereferenceable(3) @.str.18, i32 noundef 2) #24, !dbg !1305
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.5.i.i), !dbg !1306
  %cmp51.5.i.i = icmp eq i32 %call50.5.i.i, 0, !dbg !1306
  br i1 %cmp51.5.i.i, label %for.inc.4.i.i.if.end60.i.i_crit_edge, label %for.inc.5.i.i, !dbg !1305

for.inc.4.i.i.if.end60.i.i_crit_edge:             ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1305
  br label %if.end60.i.i, !dbg !1305

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  %158 = add i64 %gcov_ctr356.i.i, 6, !dbg !1309
  store i64 %158, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 9), align 8, !dbg !1309
  %159 = ptrtoint ptr %arrayidx34.le.i.i to i32, !dbg !1305
  call void @__asan_load1_noabort(i32 %159), !dbg !1305
  %lhsc689.i.i = load i8, ptr %arrayidx34.le.i.i, align 1, !dbg !1305
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %lhsc689.i.i), !dbg !1306
  %cmp51.6.i.i = icmp eq i8 %lhsc689.i.i, 62, !dbg !1306
  br i1 %cmp51.6.i.i, label %for.inc.5.i.i.if.end60.i.i_crit_edge, label %for.inc.6.i.i, !dbg !1305

for.inc.5.i.i.if.end60.i.i_crit_edge:             ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1305
  br label %if.end60.i.i, !dbg !1305

for.inc.6.i.i:                                    ; preds = %for.inc.5.i.i
  %160 = add i64 %gcov_ctr356.i.i, 7, !dbg !1309
  store i64 %160, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 9), align 8, !dbg !1309
  %161 = ptrtoint ptr %arrayidx34.le.i.i to i32, !dbg !1305
  call void @__asan_load1_noabort(i32 %161), !dbg !1305
  %lhsc690.i.i = load i8, ptr %arrayidx34.le.i.i, align 1, !dbg !1305
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %lhsc690.i.i), !dbg !1306
  %cmp51.7.i.i = icmp eq i8 %lhsc690.i.i, 38, !dbg !1306
  br i1 %cmp51.7.i.i, label %for.inc.6.i.i.if.end60.i.i_crit_edge, label %for.inc.7.i.i, !dbg !1305

for.inc.6.i.i.if.end60.i.i_crit_edge:             ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1305
  br label %if.end60.i.i, !dbg !1305

for.inc.7.i.i:                                    ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1286
  %sub.ptr.lhs.cast36.le494.i = ptrtoint ptr %incdec.ptr.i to i32, !dbg !1286
  %sub.ptr.rhs.cast37.le478.i = ptrtoint ptr %filter_string to i32, !dbg !1286
  %sub.ptr.sub38.le472.i = sub i32 %sub.ptr.lhs.cast36.le494.i, %sub.ptr.rhs.cast37.le478.i, !dbg !1286
  %162 = add i64 %gcov_ctr356.i.i, 8, !dbg !1309
  store i64 %162, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 9), align 8, !dbg !1309
  %gcov_ctr357.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 10), align 16, !dbg !1310
  %163 = add i64 %gcov_ctr357.i.i, 1, !dbg !1310
  store i64 %163, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 10), align 16, !dbg !1310
  br label %err_free.i.i, !dbg !1311

if.end60.i.i:                                     ; preds = %for.inc.6.i.i.if.end60.i.i_crit_edge, %for.inc.5.i.i.if.end60.i.i_crit_edge, %for.inc.4.i.i.if.end60.i.i_crit_edge, %for.inc.3.i.i.if.end60.i.i_crit_edge, %for.inc.2.i.i.if.end60.i.i_crit_edge, %for.inc.1.i.i.if.end60.i.i_crit_edge, %for.inc.i.i.if.end60.i.i_crit_edge, %for.cond.preheader.i.i.if.end60.i.i_crit_edge
  %arrayidx44657.lcssa.i.i = phi ptr [ @ops, %for.cond.preheader.i.i.if.end60.i.i_crit_edge ], [ getelementptr inbounds ([9 x ptr], ptr @ops, i32 0, i32 1), %for.inc.i.i.if.end60.i.i_crit_edge ], [ getelementptr inbounds ([9 x ptr], ptr @ops, i32 0, i32 2), %for.inc.1.i.i.if.end60.i.i_crit_edge ], [ getelementptr inbounds ([9 x ptr], ptr @ops, i32 0, i32 3), %for.inc.2.i.i.if.end60.i.i_crit_edge ], [ getelementptr inbounds ([9 x ptr], ptr @ops, i32 0, i32 4), %for.inc.3.i.i.if.end60.i.i_crit_edge ], [ getelementptr inbounds ([9 x ptr], ptr @ops, i32 0, i32 5), %for.inc.4.i.i.if.end60.i.i_crit_edge ], [ getelementptr inbounds ([9 x ptr], ptr @ops, i32 0, i32 6), %for.inc.5.i.i.if.end60.i.i_crit_edge ], [ getelementptr inbounds ([9 x ptr], ptr @ops, i32 0, i32 7), %for.inc.6.i.i.if.end60.i.i_crit_edge ]
  %op.0656.lcssa.i.i = phi i32 [ 0, %for.cond.preheader.i.i.if.end60.i.i_crit_edge ], [ 1, %for.inc.i.i.if.end60.i.i_crit_edge ], [ 2, %for.inc.1.i.i.if.end60.i.i_crit_edge ], [ 3, %for.inc.2.i.i.if.end60.i.i_crit_edge ], [ 4, %for.inc.3.i.i.if.end60.i.i_crit_edge ], [ 5, %for.inc.4.i.i.if.end60.i.i_crit_edge ], [ 6, %for.inc.5.i.i.if.end60.i.i_crit_edge ], [ 7, %for.inc.6.i.i.if.end60.i.i_crit_edge ]
  %gcov_ctr355.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 8), align 16, !dbg !1312
  %164 = add i64 %gcov_ctr355.i.i, 1, !dbg !1312
  store i64 %164, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 8), align 16, !dbg !1312
  %165 = ptrtoint ptr %arrayidx44657.lcssa.i.i to i32, !dbg !1313
  call void @__asan_load4_noabort(i32 %165), !dbg !1313
  %166 = load ptr, ptr %arrayidx44657.lcssa.i.i, align 4, !dbg !1313
  %call62.i.i = call i32 @strlen(ptr noundef %166) #26, !dbg !1314
  %add63.i.i = add i32 %call62.i.i, %i.3.lcssa648.i.i, !dbg !1315
  %arrayidx65659.i.i = getelementptr i8, ptr %ptr.0421.i, i32 %add63.i.i, !dbg !1316
  %167 = ptrtoint ptr %arrayidx65659.i.i to i32, !dbg !1316
  call void @__asan_load1_noabort(i32 %167), !dbg !1316
  %168 = load i8, ptr %arrayidx65659.i.i, align 1, !dbg !1316
  %conv66660.i.i = zext i8 %168 to i32, !dbg !1316
  %arrayidx67661.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv66660.i.i, !dbg !1316
  %169 = ptrtoint ptr %arrayidx67661.i.i to i32, !dbg !1316
  call void @__asan_load1_noabort(i32 %169), !dbg !1316
  %170 = load i8, ptr %arrayidx67661.i.i, align 1, !dbg !1316
  %171 = and i8 %170, 32, !dbg !1316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171), !dbg !1316
  %cmp70.not662.i.i = icmp eq i8 %171, 0, !dbg !1316
  br i1 %cmp70.not662.i.i, label %if.end60.i.i.while.end74.i.i_crit_edge, label %if.end60.i.i.while.body72.i.i_crit_edge, !dbg !1317

if.end60.i.i.while.body72.i.i_crit_edge:          ; preds = %if.end60.i.i
  br label %while.body72.i.i, !dbg !1317

if.end60.i.i.while.end74.i.i_crit_edge:           ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1317
  br label %while.end74.i.i, !dbg !1317

while.body72.i.i:                                 ; preds = %while.body72.i.i.while.body72.i.i_crit_edge, %if.end60.i.i.while.body72.i.i_crit_edge
  %i.4663.i.i = phi i32 [ %inc73.i.i, %while.body72.i.i.while.body72.i.i_crit_edge ], [ %add63.i.i, %if.end60.i.i.while.body72.i.i_crit_edge ]
  %gcov_ctr358.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 11), align 8, !dbg !1318
  %172 = add i64 %gcov_ctr358.i.i, 1, !dbg !1318
  store i64 %172, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 11), align 8, !dbg !1318
  %inc73.i.i = add i32 %i.4663.i.i, 1, !dbg !1318
  %arrayidx65.i.i = getelementptr i8, ptr %ptr.0421.i, i32 %inc73.i.i, !dbg !1316
  %173 = ptrtoint ptr %arrayidx65.i.i to i32, !dbg !1316
  call void @__asan_load1_noabort(i32 %173), !dbg !1316
  %174 = load i8, ptr %arrayidx65.i.i, align 1, !dbg !1316
  %conv66.i.i = zext i8 %174 to i32, !dbg !1316
  %arrayidx67.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv66.i.i, !dbg !1316
  %175 = ptrtoint ptr %arrayidx67.i.i to i32, !dbg !1316
  call void @__asan_load1_noabort(i32 %175), !dbg !1316
  %176 = load i8, ptr %arrayidx67.i.i, align 1, !dbg !1316
  %177 = and i8 %176, 32, !dbg !1316
  %cmp70.not.i.i = icmp eq i8 %177, 0, !dbg !1316
  br i1 %cmp70.not.i.i, label %while.body72.i.i.while.end74.i.i_crit_edge, label %while.body72.i.i.while.body72.i.i_crit_edge, !dbg !1317, !llvm.loop !1319

while.body72.i.i.while.body72.i.i_crit_edge:      ; preds = %while.body72.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1317
  br label %while.body72.i.i, !dbg !1317

while.body72.i.i.while.end74.i.i_crit_edge:       ; preds = %while.body72.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1317
  br label %while.end74.i.i, !dbg !1317

while.end74.i.i:                                  ; preds = %while.body72.i.i.while.end74.i.i_crit_edge, %if.end60.i.i.while.end74.i.i_crit_edge
  %i.4.lcssa658.i.i = phi i32 [ %add63.i.i, %if.end60.i.i.while.end74.i.i_crit_edge ], [ %inc73.i.i, %while.body72.i.i.while.end74.i.i_crit_edge ]
  %arrayidx65.le.i.i = getelementptr i8, ptr %ptr.0421.i, i32 %i.4.lcssa658.i.i, !dbg !1316
  %gcov_ctr.i596.i.i = load i64, ptr @__llvm_gcov_ctr.126, align 8
  %178 = add i64 %gcov_ctr.i596.i.i, 1
  store i64 %178, ptr @__llvm_gcov_ctr.126, align 8
  %gcov_ctr86.i.i.i.i91.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.129, i32 0, i32 8), align 16, !dbg !1320
  %179 = add i64 %gcov_ctr86.i.i.i.i91.i, 1, !dbg !1320
  store i64 %179, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.129, i32 0, i32 8), align 16, !dbg !1320
  %gcov_ctr11.i.i.i92.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.127, i32 0, i32 2), align 16, !dbg !1324
  %180 = add i64 %gcov_ctr11.i.i.i92.i, 1, !dbg !1324
  store i64 %180, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.127, i32 0, i32 2), align 16, !dbg !1324
  %gcov_ctr.i24.i.i.i93.i = load i64, ptr @__llvm_gcov_ctr.130, align 16, !dbg !1325
  %181 = add i64 %gcov_ctr.i24.i.i.i93.i, 1, !dbg !1325
  store i64 %181, ptr @__llvm_gcov_ctr.130, align 16, !dbg !1325
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32)), !dbg !1327
  %182 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4, !dbg !1327
  %call7.i.i.i94.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %182, i32 noundef 3520, i32 noundef 304) #25, !dbg !1328
  %tobool76.not.i.i = icmp eq ptr %call7.i.i.i94.i, null, !dbg !1329
  br i1 %tobool76.not.i.i, label %if.then77.i.i, label %if.end78.i.i, !dbg !1330

if.then77.i.i:                                    ; preds = %while.end74.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1331
  %gcov_ctr359.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 12), align 16, !dbg !1331
  %183 = add i64 %gcov_ctr359.i.i, 1, !dbg !1331
  store i64 %183, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 12), align 16, !dbg !1331
  br label %parse_pred.exit.thread.i, !dbg !1331

if.end78.i.i:                                     ; preds = %while.end74.i.i
  %field79.i.i = getelementptr inbounds %struct.filter_pred, ptr %call7.i.i.i94.i, i32 0, i32 4, !dbg !1332
  %184 = ptrtoint ptr %field79.i.i to i32, !dbg !1333
  call void @__asan_store4_noabort(i32 %184), !dbg !1333
  store ptr %call23.i.i, ptr %field79.i.i, align 8, !dbg !1333
  %offset.i.i = getelementptr inbounds %struct.ftrace_event_field, ptr %call23.i.i, i32 0, i32 4, !dbg !1334
  %185 = ptrtoint ptr %offset.i.i to i32, !dbg !1334
  call void @__asan_load4_noabort(i32 %185), !dbg !1334
  %186 = load i32, ptr %offset.i.i, align 4, !dbg !1334
  %offset80.i.i = getelementptr inbounds %struct.filter_pred, ptr %call7.i.i.i94.i, i32 0, i32 5, !dbg !1335
  %187 = ptrtoint ptr %offset80.i.i to i32, !dbg !1336
  call void @__asan_store4_noabort(i32 %187), !dbg !1336
  store i32 %186, ptr %offset80.i.i, align 4, !dbg !1336
  %op81.i.i = getelementptr inbounds %struct.filter_pred, ptr %call7.i.i.i94.i, i32 0, i32 7, !dbg !1337
  %188 = ptrtoint ptr %op81.i.i to i32, !dbg !1338
  call void @__asan_store4_noabort(i32 %188), !dbg !1338
  store i32 %op.0656.lcssa.i.i, ptr %op81.i.i, align 4, !dbg !1338
  %call82.i.i = call zeroext i1 @ftrace_event_is_function(ptr noundef %call) #24, !dbg !1339
  br i1 %call82.i.i, label %if.then83.i.i, label %if.else153.i.i, !dbg !1339

if.then83.i.i:                                    ; preds = %if.end78.i.i
  %name.i.i = getelementptr inbounds %struct.ftrace_event_field, ptr %call23.i.i, i32 0, i32 1, !dbg !1340
  %189 = ptrtoint ptr %name.i.i to i32, !dbg !1340
  call void @__asan_load4_noabort(i32 %189), !dbg !1340
  %190 = load ptr, ptr %name.i.i, align 4, !dbg !1340
  %call84.i.i = call i32 @strcmp(ptr noundef %190, ptr noundef nonnull dereferenceable(3) @.str.12) #26, !dbg !1341
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i.i), !dbg !1342
  %cmp85.not.i.i = icmp eq i32 %call84.i.i, 0, !dbg !1342
  br i1 %cmp85.not.i.i, label %if.end89.i.i, label %if.then87.i.i, !dbg !1341

if.then87.i.i:                                    ; preds = %if.then83.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1286
  %sub.ptr.lhs.cast36.le516.i = ptrtoint ptr %incdec.ptr.i to i32, !dbg !1286
  %sub.ptr.rhs.cast37.le489.i = ptrtoint ptr %filter_string to i32, !dbg !1286
  %sub.ptr.sub38.le439.i = sub i32 %sub.ptr.lhs.cast36.le516.i, %sub.ptr.rhs.cast37.le489.i, !dbg !1286
  %gcov_ctr360.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 13), align 8, !dbg !1343
  %191 = add i64 %gcov_ctr360.i.i, 1, !dbg !1343
  store i64 %191, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 13), align 8, !dbg !1343
  br label %err_free.i.i, !dbg !1344

if.end89.i.i:                                     ; preds = %if.then83.i.i
  %192 = ptrtoint ptr %call7.i.i.i94.i to i32, !dbg !1345
  call void @__asan_store4_noabort(i32 %192), !dbg !1345
  store ptr @filter_pred_none, ptr %call7.i.i.i94.i, align 8, !dbg !1345
  %193 = ptrtoint ptr %arrayidx65.le.i.i to i32, !dbg !1346
  call void @__asan_load1_noabort(i32 %193), !dbg !1346
  %194 = load i8, ptr %arrayidx65.le.i.i, align 1, !dbg !1346
  call void @__sanitizer_cov_trace_const_cmp1(i8 39, i8 %194), !dbg !1347
  %cmp92.i.i = icmp eq i8 %194, 39, !dbg !1347
  br i1 %cmp92.i.i, label %if.end89.i.i.if.then98.i.i_crit_edge, label %lor.lhs.false.i.i, !dbg !1348

if.end89.i.i.if.then98.i.i_crit_edge:             ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1348
  br label %if.then98.i.i, !dbg !1348

lor.lhs.false.i.i:                                ; preds = %if.end89.i.i
  %gcov_ctr361.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 14), align 16, !dbg !1349
  %195 = add i64 %gcov_ctr361.i.i, 1, !dbg !1349
  store i64 %195, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 14), align 16, !dbg !1349
  %196 = ptrtoint ptr %arrayidx65.le.i.i to i32, !dbg !1349
  call void @__asan_load1_noabort(i32 %196), !dbg !1349
  %197 = load i8, ptr %arrayidx65.le.i.i, align 1, !dbg !1349
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %197), !dbg !1350
  %cmp96.i.i = icmp eq i8 %197, 34, !dbg !1350
  br i1 %cmp96.i.i, label %lor.lhs.false.i.i.if.then98.i.i_crit_edge, label %if.else.i.i, !dbg !1346

lor.lhs.false.i.i.if.then98.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1346
  br label %if.then98.i.i, !dbg !1346

if.then98.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then98.i.i_crit_edge, %if.end89.i.i.if.then98.i.i_crit_edge
  %198 = ptrtoint ptr %arrayidx65.le.i.i to i32, !dbg !1351
  call void @__asan_load1_noabort(i32 %198), !dbg !1351
  %199 = load i8, ptr %arrayidx65.le.i.i, align 1, !dbg !1351
  br label %if.end100.i.i, !dbg !1352

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1353
  %gcov_ctr362.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 15), align 8, !dbg !1353
  %200 = add i64 %gcov_ctr362.i.i, 1, !dbg !1353
  store i64 %200, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 15), align 8, !dbg !1353
  br label %if.end100.i.i

if.end100.i.i:                                    ; preds = %if.else.i.i, %if.then98.i.i
  %q.0.i.i = phi i8 [ %199, %if.then98.i.i ], [ 0, %if.else.i.i ], !dbg !1267
  %inc101.i.i = add i32 %i.4.lcssa658.i.i, 1, !dbg !1354
  %arrayidx103677.i.i = getelementptr i8, ptr %ptr.0421.i, i32 %inc101.i.i, !dbg !1355
  %201 = ptrtoint ptr %arrayidx103677.i.i to i32, !dbg !1355
  call void @__asan_load1_noabort(i32 %201), !dbg !1355
  %202 = load i8, ptr %arrayidx103677.i.i, align 1, !dbg !1355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202), !dbg !1356
  %tobool104.not678.i.i = icmp eq i8 %202, 0, !dbg !1356
  br i1 %tobool104.not678.i.i, label %if.end100.i.i.for.end135.i.i_crit_edge, label %for.body105.lr.ph.i.i, !dbg !1356

if.end100.i.i.for.end135.i.i_crit_edge:           ; preds = %if.end100.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1356
  br label %for.end135.i.i, !dbg !1356

for.body105.lr.ph.i.i:                            ; preds = %if.end100.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %q.0.i.i)
  %cond.i.i = icmp eq i8 %q.0.i.i, 0
  br label %for.body105.i.i, !dbg !1356

for.body105.i.i:                                  ; preds = %for.inc133.i.i.for.body105.i.i_crit_edge, %for.body105.lr.ph.i.i
  %arrayidx103681.i.i = phi ptr [ %arrayidx103677.i.i, %for.body105.lr.ph.i.i ], [ %arrayidx103.i.i, %for.inc133.i.i.for.body105.i.i_crit_edge ]
  %i.5679.i.i = phi i32 [ %inc101.i.i, %for.body105.lr.ph.i.i ], [ %inc134.i.i, %for.inc133.i.i.for.body105.i.i_crit_edge ]
  br i1 %cond.i.i, label %land.lhs.true116.i.i, label %land.lhs.true.i95.i, !dbg !1357

land.lhs.true.i95.i:                              ; preds = %for.body105.i.i
  %gcov_ctr363.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 16), align 16, !dbg !1358
  %203 = add i64 %gcov_ctr363.i.i, 1, !dbg !1358
  store i64 %203, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 16), align 16, !dbg !1358
  %204 = ptrtoint ptr %arrayidx103681.i.i to i32, !dbg !1358
  call void @__asan_load1_noabort(i32 %204), !dbg !1358
  %205 = load i8, ptr %arrayidx103681.i.i, align 1, !dbg !1358
  call void @__sanitizer_cov_trace_cmp1(i8 %205, i8 %q.0.i.i), !dbg !1359
  %cmp111.i.i = icmp eq i8 %205, %q.0.i.i, !dbg !1359
  br i1 %cmp111.i.i, label %for.end135.thread.i.i, label %land.lhs.true.i95.i.for.inc133.i.i_crit_edge, !dbg !1360

land.lhs.true.i95.i.for.inc133.i.i_crit_edge:     ; preds = %land.lhs.true.i95.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1360
  br label %for.inc133.i.i, !dbg !1360

for.end135.thread.i.i:                            ; preds = %land.lhs.true.i95.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1361
  %gcov_ctr364.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 17), align 8, !dbg !1361
  %206 = add i64 %gcov_ctr364.i.i, 1, !dbg !1361
  store i64 %206, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 17), align 8, !dbg !1361
  br label %if.end139.sink.split.i.i, !dbg !1362

land.lhs.true116.i.i:                             ; preds = %for.body105.i.i
  %gcov_ctr365.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 18), align 16, !dbg !1363
  %207 = add i64 %gcov_ctr365.i.i, 1, !dbg !1363
  store i64 %207, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 18), align 16, !dbg !1363
  %208 = ptrtoint ptr %arrayidx103681.i.i to i32, !dbg !1363
  call void @__asan_load1_noabort(i32 %208), !dbg !1363
  %209 = load i8, ptr %arrayidx103681.i.i, align 1, !dbg !1363
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %209), !dbg !1364
  %cmp119.i.i = icmp eq i8 %209, 41, !dbg !1364
  br i1 %cmp119.i.i, label %land.lhs.true116.i.i.if.end139.sink.split.i.i_crit_edge, label %lor.lhs.false121.i.i, !dbg !1365

land.lhs.true116.i.i.if.end139.sink.split.i.i_crit_edge: ; preds = %land.lhs.true116.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1365
  br label %if.end139.sink.split.i.i, !dbg !1365

lor.lhs.false121.i.i:                             ; preds = %land.lhs.true116.i.i
  %gcov_ctr366.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 19), align 8, !dbg !1366
  %210 = add i64 %gcov_ctr366.i.i, 1, !dbg !1366
  store i64 %210, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 19), align 8, !dbg !1366
  %211 = ptrtoint ptr %arrayidx103681.i.i to i32, !dbg !1366
  call void @__asan_load1_noabort(i32 %211), !dbg !1366
  %212 = load i8, ptr %arrayidx103681.i.i, align 1, !dbg !1366
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %212), !dbg !1367
  %cmp124.i.i = icmp eq i8 %212, 38, !dbg !1367
  br i1 %cmp124.i.i, label %lor.lhs.false121.i.i.if.end139.sink.split.i.i_crit_edge, label %lor.lhs.false126.i.i, !dbg !1368

lor.lhs.false121.i.i.if.end139.sink.split.i.i_crit_edge: ; preds = %lor.lhs.false121.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1368
  br label %if.end139.sink.split.i.i, !dbg !1368

lor.lhs.false126.i.i:                             ; preds = %lor.lhs.false121.i.i
  %gcov_ctr367.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 20), align 16, !dbg !1369
  %213 = add i64 %gcov_ctr367.i.i, 1, !dbg !1369
  store i64 %213, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 20), align 16, !dbg !1369
  %214 = ptrtoint ptr %arrayidx103681.i.i to i32, !dbg !1369
  call void @__asan_load1_noabort(i32 %214), !dbg !1369
  %215 = load i8, ptr %arrayidx103681.i.i, align 1, !dbg !1369
  call void @__sanitizer_cov_trace_const_cmp1(i8 124, i8 %215), !dbg !1370
  %cmp129.i.i = icmp eq i8 %215, 124, !dbg !1370
  br i1 %cmp129.i.i, label %lor.lhs.false126.i.i.if.end139.sink.split.i.i_crit_edge, label %lor.lhs.false126.i.i.for.inc133.i.i_crit_edge, !dbg !1371

lor.lhs.false126.i.i.for.inc133.i.i_crit_edge:    ; preds = %lor.lhs.false126.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1371
  br label %for.inc133.i.i, !dbg !1371

lor.lhs.false126.i.i.if.end139.sink.split.i.i_crit_edge: ; preds = %lor.lhs.false126.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1371
  br label %if.end139.sink.split.i.i, !dbg !1371

for.inc133.i.i:                                   ; preds = %lor.lhs.false126.i.i.for.inc133.i.i_crit_edge, %land.lhs.true.i95.i.for.inc133.i.i_crit_edge
  %gcov_ctr369.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 22), align 16, !dbg !1372
  %216 = add i64 %gcov_ctr369.i.i, 1, !dbg !1372
  store i64 %216, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 22), align 16, !dbg !1372
  %inc134.i.i = add i32 %i.5679.i.i, 1, !dbg !1372
  %arrayidx103.i.i = getelementptr i8, ptr %ptr.0421.i, i32 %inc134.i.i, !dbg !1355
  %217 = ptrtoint ptr %arrayidx103.i.i to i32, !dbg !1355
  call void @__asan_load1_noabort(i32 %217), !dbg !1355
  %218 = load i8, ptr %arrayidx103.i.i, align 1, !dbg !1355
  %tobool104.not.i.i = icmp eq i8 %218, 0, !dbg !1356
  br i1 %tobool104.not.i.i, label %for.inc133.i.i.for.end135.i.i_crit_edge, label %for.inc133.i.i.for.body105.i.i_crit_edge, !dbg !1356, !llvm.loop !1373

for.inc133.i.i.for.body105.i.i_crit_edge:         ; preds = %for.inc133.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1356
  br label %for.body105.i.i, !dbg !1356

for.inc133.i.i.for.end135.i.i_crit_edge:          ; preds = %for.inc133.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1356
  br label %for.end135.i.i, !dbg !1356

for.end135.i.i:                                   ; preds = %for.inc133.i.i.for.end135.i.i_crit_edge, %if.end100.i.i.for.end135.i.i_crit_edge
  %i.5635.i.i = phi i32 [ %inc101.i.i, %if.end100.i.i.for.end135.i.i_crit_edge ], [ %inc134.i.i, %for.inc133.i.i.for.end135.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %q.0.i.i), !dbg !1362
  %tobool136.not.i.i = icmp eq i8 %q.0.i.i, 0, !dbg !1362
  br i1 %tobool136.not.i.i, label %for.end135.i.i.if.end139.i.i_crit_edge, label %for.end135.i.i.if.end139.sink.split.i.i_crit_edge, !dbg !1362

for.end135.i.i.if.end139.sink.split.i.i_crit_edge: ; preds = %for.end135.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1362
  br label %if.end139.sink.split.i.i, !dbg !1362

for.end135.i.i.if.end139.i.i_crit_edge:           ; preds = %for.end135.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1362
  br label %if.end139.i.i, !dbg !1362

if.end139.sink.split.i.i:                         ; preds = %for.end135.i.i.if.end139.sink.split.i.i_crit_edge, %lor.lhs.false126.i.i.if.end139.sink.split.i.i_crit_edge, %lor.lhs.false121.i.i.if.end139.sink.split.i.i_crit_edge, %land.lhs.true116.i.i.if.end139.sink.split.i.i_crit_edge, %for.end135.thread.i.i
  %.sink.i.i = phi ptr [ getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 23), %for.end135.thread.i.i ], [ getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 23), %for.end135.i.i.if.end139.sink.split.i.i_crit_edge ], [ getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 21), %land.lhs.true116.i.i.if.end139.sink.split.i.i_crit_edge ], [ getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 21), %lor.lhs.false121.i.i.if.end139.sink.split.i.i_crit_edge ], [ getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 21), %lor.lhs.false126.i.i.if.end139.sink.split.i.i_crit_edge ]
  %i.5634.ph.i.i = phi i32 [ %i.5679.i.i, %for.end135.thread.i.i ], [ %i.5635.i.i, %for.end135.i.i.if.end139.sink.split.i.i_crit_edge ], [ %i.5679.i.i, %land.lhs.true116.i.i.if.end139.sink.split.i.i_crit_edge ], [ %i.5679.i.i, %lor.lhs.false121.i.i.if.end139.sink.split.i.i_crit_edge ], [ %i.5679.i.i, %lor.lhs.false126.i.i.if.end139.sink.split.i.i_crit_edge ]
  %s.0.ph.i.i = phi i32 [ %inc101.i.i, %for.end135.thread.i.i ], [ %inc101.i.i, %for.end135.i.i.if.end139.sink.split.i.i_crit_edge ], [ %i.4.lcssa658.i.i, %land.lhs.true116.i.i.if.end139.sink.split.i.i_crit_edge ], [ %i.4.lcssa658.i.i, %lor.lhs.false121.i.i.if.end139.sink.split.i.i_crit_edge ], [ %i.4.lcssa658.i.i, %lor.lhs.false126.i.i.if.end139.sink.split.i.i_crit_edge ]
  %219 = ptrtoint ptr %.sink.i.i to i32, !dbg !1267
  call void @__asan_load8_noabort(i32 %219), !dbg !1267
  %gcov_ctr368.i.i = load i64, ptr %.sink.i.i, align 8, !dbg !1267
  %220 = add i64 %gcov_ctr368.i.i, 1, !dbg !1267
  store i64 %220, ptr %.sink.i.i, align 8, !dbg !1267
  br label %if.end139.i.i, !dbg !1375

if.end139.i.i:                                    ; preds = %if.end139.sink.split.i.i, %for.end135.i.i.if.end139.i.i_crit_edge
  %i.5634.i.i = phi i32 [ %i.5635.i.i, %for.end135.i.i.if.end139.i.i_crit_edge ], [ %i.5634.ph.i.i, %if.end139.sink.split.i.i ]
  %s.0.i.i = phi i32 [ %i.4.lcssa658.i.i, %for.end135.i.i.if.end139.i.i_crit_edge ], [ %s.0.ph.i.i, %if.end139.sink.split.i.i ], !dbg !1267
  %sub140.i.i = sub i32 %i.5634.i.i, %s.0.i.i, !dbg !1375
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub140.i.i), !dbg !1376
  %cmp141.i.i = icmp ugt i32 %sub140.i.i, 255, !dbg !1376
  br i1 %cmp141.i.i, label %if.then143.i.i, label %if.end145.i.i, !dbg !1377

if.then143.i.i:                                   ; preds = %if.end139.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1286
  %sub.ptr.lhs.cast36.le518.i = ptrtoint ptr %incdec.ptr.i to i32, !dbg !1286
  %sub.ptr.rhs.cast37.le490.i = ptrtoint ptr %filter_string to i32, !dbg !1286
  %sub.ptr.sub38.le.i = sub i32 %sub.ptr.lhs.cast36.le518.i, %sub.ptr.rhs.cast37.le490.i, !dbg !1286
  %gcov_ctr371.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 24), align 16, !dbg !1378
  %221 = add i64 %gcov_ctr371.i.i, 1, !dbg !1378
  store i64 %221, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 24), align 16, !dbg !1378
  br label %err_free.i.i, !dbg !1379

if.end145.i.i:                                    ; preds = %if.end139.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1380
  %gcov_ctr372.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 25), align 8, !dbg !1380
  %222 = add i64 %gcov_ctr372.i.i, 1, !dbg !1380
  store i64 %222, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 25), align 8, !dbg !1380
  %regex.i.i = getelementptr inbounds %struct.filter_pred, ptr %call7.i.i.i94.i, i32 0, i32 2, !dbg !1381
  %len146.i.i = getelementptr inbounds %struct.filter_pred, ptr %call7.i.i.i94.i, i32 0, i32 2, i32 1, !dbg !1382
  %223 = ptrtoint ptr %len146.i.i to i32, !dbg !1383
  call void @__asan_store4_noabort(i32 %223), !dbg !1383
  store i32 %sub140.i.i, ptr %len146.i.i, align 8, !dbg !1383
  %add.ptr148.i.i = getelementptr i8, ptr %ptr.0421.i, i32 %s.0.i.i, !dbg !1384
  %call149.i.i = call ptr @strncpy(ptr noundef %regex.i.i, ptr noundef %add.ptr148.i.i, i32 noundef %sub140.i.i) #24, !dbg !1385
  %arrayidx152.i.i = getelementptr [256 x i8], ptr %regex.i.i, i32 0, i32 %sub140.i.i, !dbg !1386
  %224 = ptrtoint ptr %arrayidx152.i.i to i32, !dbg !1387
  call void @__asan_store1_noabort(i32 %224), !dbg !1387
  store i8 0, ptr %arrayidx152.i.i, align 1, !dbg !1387
  br label %parse_pred.exit.i, !dbg !1388

if.else153.i.i:                                   ; preds = %if.end78.i.i
  %225 = ptrtoint ptr %arrayidx65.le.i.i to i32, !dbg !1389
  call void @__asan_load1_noabort(i32 %225), !dbg !1389
  %226 = load i8, ptr %arrayidx65.le.i.i, align 1, !dbg !1389
  call void @__sanitizer_cov_trace_const_cmp1(i8 39, i8 %226), !dbg !1390
  %cmp156.i.i = icmp eq i8 %226, 39, !dbg !1390
  br i1 %cmp156.i.i, label %if.else153.i.i.if.then163.i.i_crit_edge, label %lor.lhs.false158.i.i, !dbg !1391

if.else153.i.i.if.then163.i.i_crit_edge:          ; preds = %if.else153.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1391
  br label %if.then163.i.i, !dbg !1391

lor.lhs.false158.i.i:                             ; preds = %if.else153.i.i
  %gcov_ctr373.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 26), align 16, !dbg !1392
  %227 = add i64 %gcov_ctr373.i.i, 1, !dbg !1392
  store i64 %227, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 26), align 16, !dbg !1392
  %228 = ptrtoint ptr %arrayidx65.le.i.i to i32, !dbg !1392
  call void @__asan_load1_noabort(i32 %228), !dbg !1392
  %229 = load i8, ptr %arrayidx65.le.i.i, align 1, !dbg !1392
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %229), !dbg !1393
  %cmp161.i.i = icmp eq i8 %229, 34, !dbg !1393
  br i1 %cmp161.i.i, label %lor.lhs.false158.i.i.if.then163.i.i_crit_edge, label %if.else251.i.i, !dbg !1389

lor.lhs.false158.i.i.if.then163.i.i_crit_edge:    ; preds = %lor.lhs.false158.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1389
  br label %if.then163.i.i, !dbg !1389

if.then163.i.i:                                   ; preds = %lor.lhs.false158.i.i.if.then163.i.i_crit_edge, %if.else153.i.i.if.then163.i.i_crit_edge
  %230 = ptrtoint ptr %arrayidx65.le.i.i to i32, !dbg !1394
  call void @__asan_load1_noabort(i32 %230), !dbg !1394
  %231 = load i8, ptr %arrayidx65.le.i.i, align 1, !dbg !1394
  %232 = zext i32 %op.0656.lcssa.i.i to i64, !dbg !1395
  call void @__sanitizer_cov_trace_switch(i64 %232, ptr @__sancov_gen_cov_switch_values.243), !dbg !1395
  switch i32 %op.0656.lcssa.i.i, label %sw.default.i.i [
    i32 1, label %sw.bb.i.i
    i32 0, label %if.then163.i.i.sw.epilog.i96.i_crit_edge
    i32 2, label %if.then163.i.i.sw.epilog.i96.i_crit_edge1509
  ], !dbg !1395

if.then163.i.i.sw.epilog.i96.i_crit_edge1509:     ; preds = %if.then163.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1395
  br label %sw.epilog.i96.i, !dbg !1395

if.then163.i.i.sw.epilog.i96.i_crit_edge:         ; preds = %if.then163.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1395
  br label %sw.epilog.i96.i, !dbg !1395

sw.bb.i.i:                                        ; preds = %if.then163.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1396
  %gcov_ctr374.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 27), align 8, !dbg !1396
  %233 = add i64 %gcov_ctr374.i.i, 1, !dbg !1396
  store i64 %233, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 27), align 8, !dbg !1396
  %not.i.i = getelementptr inbounds %struct.filter_pred, ptr %call7.i.i.i94.i, i32 0, i32 6, !dbg !1397
  %234 = ptrtoint ptr %not.i.i to i32, !dbg !1398
  call void @__asan_store4_noabort(i32 %234), !dbg !1398
  store i32 1, ptr %not.i.i, align 8, !dbg !1398
  br label %sw.epilog.i96.i, !dbg !1396

sw.default.i.i:                                   ; preds = %if.then163.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1286
  %sub.ptr.lhs.cast36.le506.i = ptrtoint ptr %incdec.ptr.i to i32, !dbg !1286
  %sub.ptr.rhs.cast37.le484.i = ptrtoint ptr %filter_string to i32, !dbg !1286
  %sub.ptr.sub38.le454.i = sub i32 %sub.ptr.lhs.cast36.le506.i, %sub.ptr.rhs.cast37.le484.i, !dbg !1286
  %gcov_ctr375.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 28), align 16, !dbg !1399
  %235 = add i64 %gcov_ctr375.i.i, 1, !dbg !1399
  store i64 %235, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 28), align 16, !dbg !1399
  br label %err_free.i.i, !dbg !1400

sw.epilog.i96.i:                                  ; preds = %sw.bb.i.i, %if.then163.i.i.sw.epilog.i96.i_crit_edge, %if.then163.i.i.sw.epilog.i96.i_crit_edge1509
  %call168.i.i = call fastcc zeroext i1 @is_string_field(ptr noundef nonnull %call23.i.i) #24, !dbg !1401
  br i1 %call168.i.i, label %if.end171.i.i, label %if.then169.i.i, !dbg !1402

if.then169.i.i:                                   ; preds = %sw.epilog.i96.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1286
  %sub.ptr.lhs.cast36.le508.i = ptrtoint ptr %incdec.ptr.i to i32, !dbg !1286
  %sub.ptr.rhs.cast37.le485.i = ptrtoint ptr %filter_string to i32, !dbg !1286
  %sub.ptr.sub38.le451.i = sub i32 %sub.ptr.lhs.cast36.le508.i, %sub.ptr.rhs.cast37.le485.i, !dbg !1286
  %gcov_ctr376.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 29), align 8, !dbg !1403
  %236 = add i64 %gcov_ctr376.i.i, 1, !dbg !1403
  store i64 %236, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 29), align 8, !dbg !1403
  br label %err_free.i.i, !dbg !1404

if.end171.i.i:                                    ; preds = %sw.epilog.i96.i
  %inc172.i.i = add i32 %i.4.lcssa658.i.i, 1, !dbg !1405
  %arrayidx174673.i.i = getelementptr i8, ptr %ptr.0421.i, i32 %inc172.i.i, !dbg !1406
  %237 = ptrtoint ptr %arrayidx174673.i.i to i32, !dbg !1406
  call void @__asan_load1_noabort(i32 %237), !dbg !1406
  %238 = load i8, ptr %arrayidx174673.i.i, align 1, !dbg !1406
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %238), !dbg !1407
  %tobool175.not674.i.i = icmp eq i8 %238, 0, !dbg !1407
  br i1 %tobool175.not674.i.i, label %if.end171.i.i.if.then189.i.i_crit_edge, label %if.end171.i.i.for.body176.i.i_crit_edge, !dbg !1407

if.end171.i.i.for.body176.i.i_crit_edge:          ; preds = %if.end171.i.i
  br label %for.body176.i.i, !dbg !1407

if.end171.i.i.if.then189.i.i_crit_edge:           ; preds = %if.end171.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1407
  br label %if.then189.i.i, !dbg !1407

for.body176.i.i:                                  ; preds = %if.end183.i.i.for.body176.i.i_crit_edge, %if.end171.i.i.for.body176.i.i_crit_edge
  %239 = phi i8 [ %242, %if.end183.i.i.for.body176.i.i_crit_edge ], [ %238, %if.end171.i.i.for.body176.i.i_crit_edge ]
  %i.6675.i.i = phi i32 [ %inc185.i.i, %if.end183.i.i.for.body176.i.i_crit_edge ], [ %inc172.i.i, %if.end171.i.i.for.body176.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %239, i8 %231), !dbg !1408
  %cmp180.i.i = icmp eq i8 %239, %231, !dbg !1408
  br i1 %cmp180.i.i, label %for.end186.i.i, label %if.end183.i.i, !dbg !1409

if.end183.i.i:                                    ; preds = %for.body176.i.i
  %gcov_ctr377.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 30), align 16, !dbg !1410
  %240 = add i64 %gcov_ctr377.i.i, 1, !dbg !1410
  store i64 %240, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 30), align 16, !dbg !1410
  %inc185.i.i = add i32 %i.6675.i.i, 1, !dbg !1411
  %arrayidx174.i.i = getelementptr i8, ptr %ptr.0421.i, i32 %inc185.i.i, !dbg !1406
  %241 = ptrtoint ptr %arrayidx174.i.i to i32, !dbg !1406
  call void @__asan_load1_noabort(i32 %241), !dbg !1406
  %242 = load i8, ptr %arrayidx174.i.i, align 1, !dbg !1406
  %tobool175.not.i.i = icmp eq i8 %242, 0, !dbg !1407
  br i1 %tobool175.not.i.i, label %if.end183.i.i.if.then189.i.i_crit_edge, label %if.end183.i.i.for.body176.i.i_crit_edge, !dbg !1407, !llvm.loop !1412

if.end183.i.i.for.body176.i.i_crit_edge:          ; preds = %if.end183.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1407
  br label %for.body176.i.i, !dbg !1407

if.end183.i.i.if.then189.i.i_crit_edge:           ; preds = %if.end183.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1407
  br label %if.then189.i.i, !dbg !1407

for.end186.i.i:                                   ; preds = %for.body176.i.i
  %arrayidx174.le.i.i = getelementptr i8, ptr %ptr.0421.i, i32 %i.6675.i.i, !dbg !1406
  %gcov_ctr378.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 31), align 8, !dbg !1413
  %243 = add i64 %gcov_ctr378.i.i, 1, !dbg !1413
  store i64 %243, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 31), align 8, !dbg !1413
  %244 = ptrtoint ptr %arrayidx174.le.i.i to i32, !dbg !1414
  call void @__asan_load1_noabort(i32 %244), !dbg !1414
  %.pr.i.i = load i8, ptr %arrayidx174.le.i.i, align 1, !dbg !1414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.i), !dbg !1414
  %tobool188.not.i.i = icmp eq i8 %.pr.i.i, 0, !dbg !1414
  br i1 %tobool188.not.i.i, label %for.end186.i.i.if.then189.i.i_crit_edge, label %if.end191.i.i, !dbg !1415

for.end186.i.i.if.then189.i.i_crit_edge:          ; preds = %for.end186.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1415
  br label %if.then189.i.i, !dbg !1415

if.then189.i.i:                                   ; preds = %for.end186.i.i.if.then189.i.i_crit_edge, %if.end183.i.i.if.then189.i.i_crit_edge, %if.end171.i.i.if.then189.i.i_crit_edge
  %i.6638.i.i = phi i32 [ %inc185.i.i, %if.end183.i.i.if.then189.i.i_crit_edge ], [ %i.6675.i.i, %for.end186.i.i.if.then189.i.i_crit_edge ], [ %inc172.i.i, %if.end171.i.i.if.then189.i.i_crit_edge ]
  %sub.ptr.lhs.cast36.le510.i = ptrtoint ptr %incdec.ptr.i to i32, !dbg !1286
  %sub.ptr.rhs.cast37.le486.i = ptrtoint ptr %filter_string to i32, !dbg !1286
  %sub.ptr.sub38.le448.i = sub i32 %sub.ptr.lhs.cast36.le510.i, %sub.ptr.rhs.cast37.le486.i, !dbg !1286
  %gcov_ctr379.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 32), align 16, !dbg !1416
  %245 = add i64 %gcov_ctr379.i.i, 1, !dbg !1416
  store i64 %245, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 32), align 16, !dbg !1416
  br label %err_free.i.i, !dbg !1417

if.end191.i.i:                                    ; preds = %for.end186.i.i
  %sub193.i.i = sub i32 %i.6675.i.i, %inc172.i.i, !dbg !1418
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub193.i.i), !dbg !1419
  %cmp194.i.i = icmp ugt i32 %sub193.i.i, 255, !dbg !1419
  br i1 %cmp194.i.i, label %if.then196.i.i, label %if.end198.i.i, !dbg !1420

if.then196.i.i:                                   ; preds = %if.end191.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1286
  %sub.ptr.lhs.cast36.le514.i = ptrtoint ptr %incdec.ptr.i to i32, !dbg !1286
  %sub.ptr.rhs.cast37.le488.i = ptrtoint ptr %filter_string to i32, !dbg !1286
  %sub.ptr.sub38.le442.i = sub i32 %sub.ptr.lhs.cast36.le514.i, %sub.ptr.rhs.cast37.le488.i, !dbg !1286
  %gcov_ctr380.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 33), align 8, !dbg !1421
  %246 = add i64 %gcov_ctr380.i.i, 1, !dbg !1421
  store i64 %246, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 33), align 8, !dbg !1421
  br label %err_free.i.i, !dbg !1422

if.end198.i.i:                                    ; preds = %if.end191.i.i
  %regex199.i.i = getelementptr inbounds %struct.filter_pred, ptr %call7.i.i.i94.i, i32 0, i32 2, !dbg !1423
  %len200.i.i = getelementptr inbounds %struct.filter_pred, ptr %call7.i.i.i94.i, i32 0, i32 2, i32 1, !dbg !1424
  %247 = ptrtoint ptr %len200.i.i to i32, !dbg !1425
  call void @__asan_store4_noabort(i32 %247), !dbg !1425
  store i32 %sub193.i.i, ptr %len200.i.i, align 8, !dbg !1425
  %call205.i.i = call ptr @strncpy(ptr noundef %regex199.i.i, ptr noundef %arrayidx174673.i.i, i32 noundef %sub193.i.i) #24, !dbg !1426
  %arrayidx208.i.i = getelementptr [256 x i8], ptr %regex199.i.i, i32 0, i32 %sub193.i.i, !dbg !1427
  %248 = ptrtoint ptr %arrayidx208.i.i to i32, !dbg !1428
  call void @__asan_store1_noabort(i32 %248), !dbg !1428
  store i8 0, ptr %arrayidx208.i.i, align 1, !dbg !1428
  call fastcc void @filter_build_regex(ptr noundef nonnull %call7.i.i.i94.i) #24, !dbg !1429
  %filter_type.i.i = getelementptr inbounds %struct.ftrace_event_field, ptr %call23.i.i, i32 0, i32 3, !dbg !1430
  %249 = ptrtoint ptr %filter_type.i.i to i32, !dbg !1430
  call void @__asan_load4_noabort(i32 %249), !dbg !1430
  %250 = load i32, ptr %filter_type.i.i, align 4, !dbg !1430
  %251 = zext i32 %250 to i64, !dbg !1431
  call void @__sanitizer_cov_trace_switch(i64 %251, ptr @__sancov_gen_cov_switch_values.244), !dbg !1431
  switch i32 %250, label %if.else232.i.i [
    i32 6, label %if.then211.i.i
    i32 1, label %if.then217.i.i
    i32 2, label %if.then224.i.i
    i32 3, label %if.then230.i.i
  ], !dbg !1431

if.then211.i.i:                                   ; preds = %if.end198.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1432
  %gcov_ctr381.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 34), align 16, !dbg !1432
  %252 = add i64 %gcov_ctr381.i.i, 1, !dbg !1432
  store i64 %252, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 34), align 16, !dbg !1432
  %253 = ptrtoint ptr %call7.i.i.i94.i to i32, !dbg !1433
  call void @__asan_store4_noabort(i32 %253), !dbg !1433
  store ptr @filter_pred_comm, ptr %call7.i.i.i94.i, align 8, !dbg !1433
  br label %cleanup.cont.i.i, !dbg !1434

if.then217.i.i:                                   ; preds = %if.end198.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1435
  %gcov_ctr382.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 35), align 8, !dbg !1435
  %254 = add i64 %gcov_ctr382.i.i, 1, !dbg !1435
  store i64 %254, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 35), align 8, !dbg !1435
  %255 = ptrtoint ptr %call7.i.i.i94.i to i32, !dbg !1436
  call void @__asan_store4_noabort(i32 %255), !dbg !1436
  store ptr @filter_pred_string, ptr %call7.i.i.i94.i, align 8, !dbg !1436
  %size.i.i = getelementptr inbounds %struct.ftrace_event_field, ptr %call23.i.i, i32 0, i32 5, !dbg !1437
  %256 = ptrtoint ptr %size.i.i to i32, !dbg !1437
  call void @__asan_load4_noabort(i32 %256), !dbg !1437
  %257 = load i32, ptr %size.i.i, align 4, !dbg !1437
  %field_len.i.i = getelementptr inbounds %struct.filter_pred, ptr %call7.i.i.i94.i, i32 0, i32 2, i32 2, !dbg !1438
  %258 = ptrtoint ptr %field_len.i.i to i32, !dbg !1439
  call void @__asan_store4_noabort(i32 %258), !dbg !1439
  store i32 %257, ptr %field_len.i.i, align 4, !dbg !1439
  br label %cleanup.cont.i.i, !dbg !1440

if.then224.i.i:                                   ; preds = %if.end198.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1441
  %gcov_ctr383.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 36), align 16, !dbg !1441
  %259 = add i64 %gcov_ctr383.i.i, 1, !dbg !1441
  store i64 %259, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 36), align 16, !dbg !1441
  %260 = ptrtoint ptr %call7.i.i.i94.i to i32, !dbg !1442
  call void @__asan_store4_noabort(i32 %260), !dbg !1442
  store ptr @filter_pred_strloc, ptr %call7.i.i.i94.i, align 8, !dbg !1442
  br label %cleanup.cont.i.i, !dbg !1443

if.then230.i.i:                                   ; preds = %if.end198.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1444
  %gcov_ctr384.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 37), align 8, !dbg !1444
  %261 = add i64 %gcov_ctr384.i.i, 1, !dbg !1444
  store i64 %261, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 37), align 8, !dbg !1444
  %262 = ptrtoint ptr %call7.i.i.i94.i to i32, !dbg !1445
  call void @__asan_store4_noabort(i32 %262), !dbg !1445
  store ptr @filter_pred_strrelloc, ptr %call7.i.i.i94.i, align 8, !dbg !1445
  br label %cleanup.cont.i.i, !dbg !1444

if.else232.i.i:                                   ; preds = %if.end198.i.i
  %263 = load ptr, ptr @ustring_per_cpu, align 4, !dbg !1446
  %tobool233.not.i.i = icmp eq ptr %263, null, !dbg !1446
  br i1 %tobool233.not.i.i, label %if.then234.i.i, label %if.else232.i.i.if.end239.i.i_crit_edge, !dbg !1447

if.else232.i.i.if.end239.i.i_crit_edge:           ; preds = %if.else232.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1447
  br label %if.end239.i.i, !dbg !1447

if.then234.i.i:                                   ; preds = %if.else232.i.i
  %call235.i.i = call noalias ptr @__alloc_percpu(i32 noundef 1024, i32 noundef 1) #28, !dbg !1448
  store ptr %call235.i.i, ptr @ustring_per_cpu, align 4, !dbg !1449
  %tobool236.not.i.i = icmp eq ptr %call235.i.i, null, !dbg !1450
  br i1 %tobool236.not.i.i, label %err_mem.i.i, label %if.end238.i.i, !dbg !1451

if.end238.i.i:                                    ; preds = %if.then234.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1452
  %gcov_ctr386.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 39), align 8, !dbg !1452
  %264 = add i64 %gcov_ctr386.i.i, 1, !dbg !1452
  store i64 %264, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 39), align 8, !dbg !1452
  br label %if.end239.i.i, !dbg !1452

if.end239.i.i:                                    ; preds = %if.end238.i.i, %if.else232.i.i.if.end239.i.i_crit_edge
  br i1 %cmp.i.i90.i, label %if.then241.i.i, label %if.else243.i.i, !dbg !1453

if.then241.i.i:                                   ; preds = %if.end239.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1454
  %gcov_ctr387.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 40), align 16, !dbg !1454
  %265 = add i64 %gcov_ctr387.i.i, 1, !dbg !1454
  store i64 %265, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 40), align 16, !dbg !1454
  %266 = ptrtoint ptr %call7.i.i.i94.i to i32, !dbg !1455
  call void @__asan_store4_noabort(i32 %266), !dbg !1455
  store ptr @filter_pred_pchar_user, ptr %call7.i.i.i94.i, align 8, !dbg !1455
  br label %cleanup.cont.i.i, !dbg !1454

if.else243.i.i:                                   ; preds = %if.end239.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1456
  %gcov_ctr388.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 41), align 8, !dbg !1456
  %267 = add i64 %gcov_ctr388.i.i, 1, !dbg !1456
  store i64 %267, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 41), align 8, !dbg !1456
  %268 = ptrtoint ptr %call7.i.i.i94.i to i32, !dbg !1457
  call void @__asan_store4_noabort(i32 %268), !dbg !1457
  store ptr @filter_pred_pchar, ptr %call7.i.i.i94.i, align 8, !dbg !1457
  br label %cleanup.cont.i.i

cleanup.cont.i.i:                                 ; preds = %if.else243.i.i, %if.then241.i.i, %if.then230.i.i, %if.then224.i.i, %if.then217.i.i, %if.then211.i.i
  %inc250.i.i = add i32 %i.6675.i.i, 1, !dbg !1458
  %gcov_ctr389.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 42), align 16, !dbg !1459
  %269 = add i64 %gcov_ctr389.i.i, 1, !dbg !1459
  store i64 %269, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 42), align 16, !dbg !1459
  br label %parse_pred.exit.i, !dbg !1459

if.else251.i.i:                                   ; preds = %lor.lhs.false158.i.i
  %gcov_ctr.i609.i.i = load i64, ptr @__llvm_gcov_ctr.91, align 8
  %270 = add i64 %gcov_ctr.i609.i.i, 1
  store i64 %270, ptr @__llvm_gcov_ctr.91, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %229), !dbg !1460
  %cmp.i610.i.i = icmp ugt i8 %229, 47, !dbg !1460
  br i1 %cmp.i610.i.i, label %isdigit.exit.i.i, label %if.else251.i.i.lor.lhs.false256.i.i_crit_edge, !dbg !1462

if.else251.i.i.lor.lhs.false256.i.i_crit_edge:    ; preds = %if.else251.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1462
  br label %lor.lhs.false256.i.i, !dbg !1462

isdigit.exit.i.i:                                 ; preds = %if.else251.i.i
  %gcov_ctr2.i611.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.91, i32 0, i32 1), align 8, !dbg !1463
  %271 = add i64 %gcov_ctr2.i611.i.i, 1, !dbg !1463
  store i64 %271, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.91, i32 0, i32 1), align 8, !dbg !1463
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %229), !dbg !1464
  %cmp1.i.i.i = icmp ugt i8 %229, 57, !dbg !1464
  br i1 %cmp1.i.i.i, label %isdigit.exit.i.i.lor.lhs.false256.i.i_crit_edge, label %isdigit.exit.i.i.if.then261.i.i_crit_edge, !dbg !1465

isdigit.exit.i.i.if.then261.i.i_crit_edge:        ; preds = %isdigit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1465
  br label %if.then261.i.i, !dbg !1465

isdigit.exit.i.i.lor.lhs.false256.i.i_crit_edge:  ; preds = %isdigit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1465
  br label %lor.lhs.false256.i.i, !dbg !1465

lor.lhs.false256.i.i:                             ; preds = %isdigit.exit.i.i.lor.lhs.false256.i.i_crit_edge, %if.else251.i.i.lor.lhs.false256.i.i_crit_edge
  %gcov_ctr390.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 43), align 8, !dbg !1466
  %272 = add i64 %gcov_ctr390.i.i, 1, !dbg !1466
  store i64 %272, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 43), align 8, !dbg !1466
  %273 = ptrtoint ptr %arrayidx65.le.i.i to i32, !dbg !1466
  call void @__asan_load1_noabort(i32 %273), !dbg !1466
  %274 = load i8, ptr %arrayidx65.le.i.i, align 1, !dbg !1466
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %274), !dbg !1467
  %cmp259.i.i = icmp eq i8 %274, 45, !dbg !1467
  br i1 %cmp259.i.i, label %lor.lhs.false256.i.i.if.then261.i.i_crit_edge, label %if.else330.i.i, !dbg !1468

lor.lhs.false256.i.i.if.then261.i.i_crit_edge:    ; preds = %lor.lhs.false256.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1468
  br label %if.then261.i.i, !dbg !1468

if.then261.i.i:                                   ; preds = %lor.lhs.false256.i.i.if.then261.i.i_crit_edge, %isdigit.exit.i.i.if.then261.i.i_crit_edge
  %call262.i.i = call fastcc zeroext i1 @is_string_field(ptr noundef nonnull %call23.i.i) #24, !dbg !1469
  br i1 %call262.i.i, label %if.then263.i.i, label %if.end265.i.i, !dbg !1469

if.then263.i.i:                                   ; preds = %if.then261.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1286
  %sub.ptr.lhs.cast36.le498.i = ptrtoint ptr %incdec.ptr.i to i32, !dbg !1286
  %sub.ptr.rhs.cast37.le480.i = ptrtoint ptr %filter_string to i32, !dbg !1286
  %sub.ptr.sub38.le466.i = sub i32 %sub.ptr.lhs.cast36.le498.i, %sub.ptr.rhs.cast37.le480.i, !dbg !1286
  %gcov_ctr391.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 44), align 16, !dbg !1470
  %275 = add i64 %gcov_ctr391.i.i, 1, !dbg !1470
  store i64 %275, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 44), align 16, !dbg !1470
  br label %err_free.i.i, !dbg !1471

if.end265.i.i:                                    ; preds = %if.then261.i.i
  br i1 %cmp51.i.i, label %if.then268.i.i, label %if.end270.i.i, !dbg !1472

if.then268.i.i:                                   ; preds = %if.end265.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1286
  %sub.ptr.lhs.cast36.le500.i = ptrtoint ptr %incdec.ptr.i to i32, !dbg !1286
  %sub.ptr.rhs.cast37.le481.i = ptrtoint ptr %filter_string to i32, !dbg !1286
  %sub.ptr.sub38.le463.i = sub i32 %sub.ptr.lhs.cast36.le500.i, %sub.ptr.rhs.cast37.le481.i, !dbg !1286
  %gcov_ctr392.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 45), align 8, !dbg !1473
  %276 = add i64 %gcov_ctr392.i.i, 1, !dbg !1473
  store i64 %276, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 45), align 8, !dbg !1473
  br label %err_free.i.i, !dbg !1474

if.end270.i.i:                                    ; preds = %if.end265.i.i
  %277 = ptrtoint ptr %arrayidx65.le.i.i to i32, !dbg !1475
  call void @__asan_load1_noabort(i32 %277), !dbg !1475
  %278 = load i8, ptr %arrayidx65.le.i.i, align 1, !dbg !1475
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %278), !dbg !1476
  %cmp273.i.i = icmp eq i8 %278, 45, !dbg !1476
  br i1 %cmp273.i.i, label %if.then275.i.i, label %if.end270.i.i.if.end277.i.i_crit_edge, !dbg !1475

if.end270.i.i.if.end277.i.i_crit_edge:            ; preds = %if.end270.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1475
  br label %if.end277.i.i, !dbg !1475

if.then275.i.i:                                   ; preds = %if.end270.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1477
  %gcov_ctr393.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 46), align 16, !dbg !1477
  %279 = add i64 %gcov_ctr393.i.i, 1, !dbg !1477
  store i64 %279, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 46), align 16, !dbg !1477
  %inc276.i.i = add i32 %i.4.lcssa658.i.i, 1, !dbg !1477
  br label %if.end277.i.i, !dbg !1478

if.end277.i.i:                                    ; preds = %if.then275.i.i, %if.end270.i.i.if.end277.i.i_crit_edge
  %i.8.i.i = phi i32 [ %inc276.i.i, %if.then275.i.i ], [ %i.4.lcssa658.i.i, %if.end270.i.i.if.end277.i.i_crit_edge ], !dbg !1267
  %arrayidx279666.i.i = getelementptr i8, ptr %ptr.0421.i, i32 %i.8.i.i, !dbg !1479
  %280 = ptrtoint ptr %arrayidx279666.i.i to i32, !dbg !1479
  call void @__asan_load1_noabort(i32 %280), !dbg !1479
  %281 = load i8, ptr %arrayidx279666.i.i, align 1, !dbg !1479
  %conv280667.i.i = zext i8 %281 to i32, !dbg !1479
  %arrayidx281668.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv280667.i.i, !dbg !1479
  %282 = ptrtoint ptr %arrayidx281668.i.i to i32, !dbg !1479
  call void @__asan_load1_noabort(i32 %282), !dbg !1479
  %283 = load i8, ptr %arrayidx281668.i.i, align 1, !dbg !1479
  %284 = and i8 %283, 7, !dbg !1479
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %284), !dbg !1479
  %cmp284.not669.i.i = icmp eq i8 %284, 0, !dbg !1479
  br i1 %cmp284.not669.i.i, label %if.end277.i.i.while.end288.i.i_crit_edge, label %if.end277.i.i.while.body286.i.i_crit_edge, !dbg !1480

if.end277.i.i.while.body286.i.i_crit_edge:        ; preds = %if.end277.i.i
  br label %while.body286.i.i, !dbg !1480

if.end277.i.i.while.end288.i.i_crit_edge:         ; preds = %if.end277.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1480
  br label %while.end288.i.i, !dbg !1480

while.body286.i.i:                                ; preds = %while.body286.i.i.while.body286.i.i_crit_edge, %if.end277.i.i.while.body286.i.i_crit_edge
  %i.9670.i.i = phi i32 [ %inc287.i.i, %while.body286.i.i.while.body286.i.i_crit_edge ], [ %i.8.i.i, %if.end277.i.i.while.body286.i.i_crit_edge ]
  %gcov_ctr394.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 47), align 8, !dbg !1481
  %285 = add i64 %gcov_ctr394.i.i, 1, !dbg !1481
  store i64 %285, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 47), align 8, !dbg !1481
  %inc287.i.i = add i32 %i.9670.i.i, 1, !dbg !1481
  %arrayidx279.i.i = getelementptr i8, ptr %ptr.0421.i, i32 %inc287.i.i, !dbg !1479
  %286 = ptrtoint ptr %arrayidx279.i.i to i32, !dbg !1479
  call void @__asan_load1_noabort(i32 %286), !dbg !1479
  %287 = load i8, ptr %arrayidx279.i.i, align 1, !dbg !1479
  %conv280.i.i = zext i8 %287 to i32, !dbg !1479
  %arrayidx281.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv280.i.i, !dbg !1479
  %288 = ptrtoint ptr %arrayidx281.i.i to i32, !dbg !1479
  call void @__asan_load1_noabort(i32 %288), !dbg !1479
  %289 = load i8, ptr %arrayidx281.i.i, align 1, !dbg !1479
  %290 = and i8 %289, 7, !dbg !1479
  %cmp284.not.i.i = icmp eq i8 %290, 0, !dbg !1479
  br i1 %cmp284.not.i.i, label %while.body286.i.i.while.end288.i.i_crit_edge, label %while.body286.i.i.while.body286.i.i_crit_edge, !dbg !1480, !llvm.loop !1482

while.body286.i.i.while.body286.i.i_crit_edge:    ; preds = %while.body286.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1480
  br label %while.body286.i.i, !dbg !1480

while.body286.i.i.while.end288.i.i_crit_edge:     ; preds = %while.body286.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1480
  br label %while.end288.i.i, !dbg !1480

while.end288.i.i:                                 ; preds = %while.body286.i.i.while.end288.i.i_crit_edge, %if.end277.i.i.while.end288.i.i_crit_edge
  %i.9.lcssa.i.i = phi i32 [ %i.8.i.i, %if.end277.i.i.while.end288.i.i_crit_edge ], [ %inc287.i.i, %while.body286.i.i.while.end288.i.i_crit_edge ], !dbg !1267
  %sub289.i.i = sub i32 %i.9.lcssa.i.i, %i.4.lcssa658.i.i, !dbg !1483
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %sub289.i.i), !dbg !1484
  %cmp290.i.i = icmp ugt i32 %sub289.i.i, 23, !dbg !1484
  br i1 %cmp290.i.i, label %if.then292.i.i, label %if.end294.i.i, !dbg !1485

if.then292.i.i:                                   ; preds = %while.end288.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1286
  %sub.ptr.lhs.cast36.le502.i = ptrtoint ptr %incdec.ptr.i to i32, !dbg !1286
  %sub.ptr.rhs.cast37.le482.i = ptrtoint ptr %filter_string to i32, !dbg !1286
  %sub.ptr.sub38.le460.i = sub i32 %sub.ptr.lhs.cast36.le502.i, %sub.ptr.rhs.cast37.le482.i, !dbg !1286
  %gcov_ctr395.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 48), align 16, !dbg !1486
  %291 = add i64 %gcov_ctr395.i.i, 1, !dbg !1486
  store i64 %291, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 48), align 16, !dbg !1486
  br label %err_free.i.i, !dbg !1487

if.end294.i.i:                                    ; preds = %while.end288.i.i
  %call297.i.i = call ptr @strncpy(ptr noundef nonnull %num_buf.i.i, ptr noundef %arrayidx65.le.i.i, i32 noundef %sub289.i.i) #24, !dbg !1488
  %arrayidx298.i.i = getelementptr [24 x i8], ptr %num_buf.i.i, i32 0, i32 %sub289.i.i, !dbg !1489
  %292 = ptrtoint ptr %arrayidx298.i.i to i32, !dbg !1490
  call void @__asan_store1_noabort(i32 %292), !dbg !1490
  store i8 0, ptr %arrayidx298.i.i, align 1, !dbg !1490
  %is_signed.i.i = getelementptr inbounds %struct.ftrace_event_field, ptr %call23.i.i, i32 0, i32 6, !dbg !1491
  %293 = ptrtoint ptr %is_signed.i.i to i32, !dbg !1491
  call void @__asan_load4_noabort(i32 %293), !dbg !1491
  %294 = load i32, ptr %is_signed.i.i, align 4, !dbg !1491
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %294), !dbg !1492
  %tobool299.not.i.i = icmp eq i32 %294, 0, !dbg !1492
  br i1 %tobool299.not.i.i, label %if.else303.i.i, label %if.then300.i.i, !dbg !1492

if.then300.i.i:                                   ; preds = %if.end294.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1493
  %call302.i.i = call i32 @kstrtoll(ptr noundef nonnull %num_buf.i.i, i32 noundef 0, ptr noundef nonnull %val.i.i) #24, !dbg !1493
  br label %if.end306.i.i, !dbg !1494

if.else303.i.i:                                   ; preds = %if.end294.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1495
  %gcov_ctr396.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 49), align 8, !dbg !1495
  %295 = add i64 %gcov_ctr396.i.i, 1, !dbg !1495
  store i64 %295, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 49), align 8, !dbg !1495
  %call305.i.i = call i32 @kstrtoull(ptr noundef nonnull %num_buf.i.i, i32 noundef 0, ptr noundef nonnull %val.i.i) #24, !dbg !1496
  br label %if.end306.i.i

if.end306.i.i:                                    ; preds = %if.else303.i.i, %if.then300.i.i
  %ret.0.i.i = phi i32 [ %call302.i.i, %if.then300.i.i ], [ %call305.i.i, %if.else303.i.i ], !dbg !1267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i), !dbg !1497
  %tobool307.not.i.i = icmp eq i32 %ret.0.i.i, 0, !dbg !1497
  br i1 %tobool307.not.i.i, label %if.end310.i.i, label %if.then308.i.i, !dbg !1497

if.then308.i.i:                                   ; preds = %if.end306.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1286
  %sub.ptr.lhs.cast36.le504.i = ptrtoint ptr %incdec.ptr.i to i32, !dbg !1286
  %sub.ptr.rhs.cast37.le483.i = ptrtoint ptr %filter_string to i32, !dbg !1286
  %sub.ptr.sub38.le457.i = sub i32 %sub.ptr.lhs.cast36.le504.i, %sub.ptr.rhs.cast37.le483.i, !dbg !1286
  %gcov_ctr397.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 50), align 16, !dbg !1498
  %296 = add i64 %gcov_ctr397.i.i, 1, !dbg !1498
  store i64 %296, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 50), align 16, !dbg !1498
  br label %err_free.i.i, !dbg !1499

if.end310.i.i:                                    ; preds = %if.end306.i.i
  %297 = ptrtoint ptr %val.i.i to i32, !dbg !1500
  call void @__asan_load8_noabort(i32 %297), !dbg !1500
  %298 = load i64, ptr %val.i.i, align 8, !dbg !1500
  %val311.i.i = getelementptr inbounds %struct.filter_pred, ptr %call7.i.i.i94.i, i32 0, i32 1, !dbg !1501
  %299 = ptrtoint ptr %val311.i.i to i32, !dbg !1502
  call void @__asan_store8_noabort(i32 %299), !dbg !1502
  store i64 %298, ptr %val311.i.i, align 8, !dbg !1502
  %filter_type312.i.i = getelementptr inbounds %struct.ftrace_event_field, ptr %call23.i.i, i32 0, i32 3, !dbg !1503
  %300 = ptrtoint ptr %filter_type312.i.i to i32, !dbg !1503
  call void @__asan_load4_noabort(i32 %300), !dbg !1503
  %301 = load i32, ptr %filter_type312.i.i, align 4, !dbg !1503
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %301), !dbg !1504
  %cmp313.i.i = icmp eq i32 %301, 7, !dbg !1504
  br i1 %cmp313.i.i, label %if.then315.i.i, label %if.else317.i.i, !dbg !1505

if.then315.i.i:                                   ; preds = %if.end310.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1506
  %gcov_ctr398.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 51), align 8, !dbg !1506
  %302 = add i64 %gcov_ctr398.i.i, 1, !dbg !1506
  store i64 %302, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 51), align 8, !dbg !1506
  %303 = ptrtoint ptr %call7.i.i.i94.i to i32, !dbg !1507
  call void @__asan_store4_noabort(i32 %303), !dbg !1507
  store ptr @filter_pred_cpu, ptr %call7.i.i.i94.i, align 8, !dbg !1507
  br label %parse_pred.exit.i, !dbg !1506

if.else317.i.i:                                   ; preds = %if.end310.i.i
  %304 = ptrtoint ptr %op81.i.i to i32, !dbg !1508
  call void @__asan_load4_noabort(i32 %304), !dbg !1508
  %305 = load i32, ptr %op81.i.i, align 4, !dbg !1508
  %size319.i.i = getelementptr inbounds %struct.ftrace_event_field, ptr %call23.i.i, i32 0, i32 5, !dbg !1509
  %306 = ptrtoint ptr %size319.i.i to i32, !dbg !1509
  call void @__asan_load4_noabort(i32 %306), !dbg !1509
  %307 = load i32, ptr %size319.i.i, align 4, !dbg !1509
  %308 = ptrtoint ptr %is_signed.i.i to i32, !dbg !1510
  call void @__asan_load4_noabort(i32 %308), !dbg !1510
  %309 = load i32, ptr %is_signed.i.i, align 4, !dbg !1510
  %call321.i.i = call fastcc ptr @select_comparison_fn(i32 noundef %305, i32 noundef %307, i32 noundef %309) #24, !dbg !1511
  %310 = ptrtoint ptr %call7.i.i.i94.i to i32, !dbg !1512
  call void @__asan_store4_noabort(i32 %310), !dbg !1512
  store ptr %call321.i.i, ptr %call7.i.i.i94.i, align 8, !dbg !1512
  %311 = ptrtoint ptr %op81.i.i to i32, !dbg !1513
  call void @__asan_load4_noabort(i32 %311), !dbg !1513
  %312 = load i32, ptr %op81.i.i, align 4, !dbg !1513
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %312), !dbg !1514
  %cmp324.i.i = icmp eq i32 %312, 1, !dbg !1514
  br i1 %cmp324.i.i, label %if.then326.i.i, label %if.else317.i.i.if.end328.i.i_crit_edge, !dbg !1515

if.else317.i.i.if.end328.i.i_crit_edge:           ; preds = %if.else317.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1515
  br label %if.end328.i.i, !dbg !1515

if.then326.i.i:                                   ; preds = %if.else317.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1516
  %gcov_ctr399.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 52), align 16, !dbg !1516
  %313 = add i64 %gcov_ctr399.i.i, 1, !dbg !1516
  store i64 %313, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 52), align 16, !dbg !1516
  %not327.i.i = getelementptr inbounds %struct.filter_pred, ptr %call7.i.i.i94.i, i32 0, i32 6, !dbg !1517
  %314 = ptrtoint ptr %not327.i.i to i32, !dbg !1518
  call void @__asan_store4_noabort(i32 %314), !dbg !1518
  store i32 1, ptr %not327.i.i, align 8, !dbg !1518
  br label %if.end328.i.i, !dbg !1516

if.end328.i.i:                                    ; preds = %if.then326.i.i, %if.else317.i.i.if.end328.i.i_crit_edge
  %gcov_ctr400.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 53), align 8
  %315 = add i64 %gcov_ctr400.i.i, 1
  store i64 %315, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 53), align 8
  br label %parse_pred.exit.i

if.else330.i.i:                                   ; preds = %lor.lhs.false256.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1286
  %sub.ptr.lhs.cast36.le496.i = ptrtoint ptr %incdec.ptr.i to i32, !dbg !1286
  %sub.ptr.rhs.cast37.le479.i = ptrtoint ptr %filter_string to i32, !dbg !1286
  %sub.ptr.sub38.le469.i = sub i32 %sub.ptr.lhs.cast36.le496.i, %sub.ptr.rhs.cast37.le479.i, !dbg !1286
  %gcov_ctr401.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 54), align 16, !dbg !1519
  %316 = add i64 %gcov_ctr401.i.i, 1, !dbg !1519
  store i64 %316, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 54), align 16, !dbg !1519
  br label %err_free.i.i, !dbg !1520

err_free.i.i:                                     ; preds = %if.else330.i.i, %if.then308.i.i, %if.then292.i.i, %if.then268.i.i, %if.then263.i.i, %if.then196.i.i, %if.then189.i.i, %if.then169.i.i, %sw.default.i.i, %if.then143.i.i, %if.then87.i.i, %for.inc.7.i.i
  %sub.ptr.sub38282.i = phi i32 [ %sub.ptr.sub38.le451.i, %if.then169.i.i ], [ %sub.ptr.sub38.le448.i, %if.then189.i.i ], [ %sub.ptr.sub38.le442.i, %if.then196.i.i ], [ %sub.ptr.sub38.le454.i, %sw.default.i.i ], [ %sub.ptr.sub38.le469.i, %if.else330.i.i ], [ %sub.ptr.sub38.le457.i, %if.then308.i.i ], [ %sub.ptr.sub38.le460.i, %if.then292.i.i ], [ %sub.ptr.sub38.le463.i, %if.then268.i.i ], [ %sub.ptr.sub38.le466.i, %if.then263.i.i ], [ %sub.ptr.sub38.le.i, %if.then143.i.i ], [ %sub.ptr.sub38.le439.i, %if.then87.i.i ], [ %sub.ptr.sub38.le472.i, %for.inc.7.i.i ]
  %i.4.lcssa658.sink.i.i = phi i32 [ %i.4.lcssa658.i.i, %if.then169.i.i ], [ %i.6638.i.i, %if.then189.i.i ], [ %i.6675.i.i, %if.then196.i.i ], [ %i.4.lcssa658.i.i, %sw.default.i.i ], [ %i.4.lcssa658.i.i, %if.else330.i.i ], [ %i.4.lcssa658.i.i, %if.then308.i.i ], [ %i.9.lcssa.i.i, %if.then292.i.i ], [ %i.4.lcssa658.i.i, %if.then268.i.i ], [ %i.4.lcssa658.i.i, %if.then263.i.i ], [ %i.5634.i.i, %if.then143.i.i ], [ %i.4.lcssa658.i.i, %if.then87.i.i ], [ %i.3.lcssa648.i.i, %for.inc.7.i.i ]
  %.sink698.i.i = phi i32 [ 7, %if.then169.i.i ], [ 4, %if.then189.i.i ], [ 5, %if.then196.i.i ], [ 8, %sw.default.i.i ], [ 15, %if.else330.i.i ], [ 10, %if.then308.i.i ], [ 5, %if.then292.i.i ], [ 8, %if.then268.i.i ], [ 6, %if.then263.i.i ], [ 5, %if.then143.i.i ], [ 14, %if.then87.i.i ], [ 1, %for.inc.7.i.i ]
  %pred.0.i.i = phi ptr [ %call7.i.i.i94.i, %if.then169.i.i ], [ %call7.i.i.i94.i, %if.then189.i.i ], [ %call7.i.i.i94.i, %if.then196.i.i ], [ %call7.i.i.i94.i, %sw.default.i.i ], [ %call7.i.i.i94.i, %if.else330.i.i ], [ %call7.i.i.i94.i, %if.then308.i.i ], [ %call7.i.i.i94.i, %if.then292.i.i ], [ %call7.i.i.i94.i, %if.then268.i.i ], [ %call7.i.i.i94.i, %if.then263.i.i ], [ %call7.i.i.i94.i, %if.then143.i.i ], [ %call7.i.i.i94.i, %if.then87.i.i ], [ null, %for.inc.7.i.i ], !dbg !1267
  %add170.i.i = add i32 %i.4.lcssa658.sink.i.i, %sub.ptr.sub38282.i, !dbg !1267
  %gcov_ctr.i603.i.i = load i64, ptr @__llvm_gcov_ctr.135, align 8
  %317 = add i64 %gcov_ctr.i603.i.i, 1
  store i64 %317, ptr @__llvm_gcov_ctr.135, align 8
  %318 = ptrtoint ptr %pe to i32, !dbg !1267
  call void @__asan_store4_noabort(i32 %318), !dbg !1267
  store i32 %.sink698.i.i, ptr %pe, align 4, !dbg !1267
  %lasterr_pos.i604.i.i = getelementptr inbounds %struct.filter_parse_error, ptr %pe, i32 0, i32 1, !dbg !1267
  %319 = ptrtoint ptr %lasterr_pos.i604.i.i to i32, !dbg !1267
  call void @__asan_store4_noabort(i32 %319), !dbg !1267
  store i32 %add170.i.i, ptr %lasterr_pos.i604.i.i, align 4, !dbg !1267
  %gcov_ctr402.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 55), align 8, !dbg !1521
  %320 = add i64 %gcov_ctr402.i.i, 1, !dbg !1521
  store i64 %320, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 55), align 8, !dbg !1521
  call void @kfree(ptr noundef %pred.0.i.i) #24, !dbg !1522
  br label %parse_pred.exit.thread.i, !dbg !1523

err_mem.i.i:                                      ; preds = %if.then234.i.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1215
  %gcov_ctr385.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 38), align 16
  %321 = add i64 %gcov_ctr385.i.i, 1
  store i64 %321, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 38), align 16
  %gcov_ctr403.i.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 56), align 16, !dbg !1524
  %322 = add i64 %gcov_ctr403.i.i, 1, !dbg !1524
  store i64 %322, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 56), align 16, !dbg !1524
  call void @kfree(ptr noundef nonnull %call7.i.i.i94.i) #24, !dbg !1525
  br label %parse_pred.exit.thread.i, !dbg !1526

parse_pred.exit.thread.i:                         ; preds = %err_mem.i.i, %err_free.i.i, %if.then77.i.i, %if.then25.i.i, %if.then21.i.i, %if.then.i87.i
  %retval.0.i97.ph.i = phi i32 [ -1, %if.then.i87.i ], [ -12, %if.then21.i.i ], [ -22, %if.then25.i.i ], [ -12, %if.then77.i.i ], [ -12, %err_mem.i.i ], [ -22, %err_free.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i.i) #24, !dbg !1527
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %num_buf.i.i) #24, !dbg !1527
  br label %if.then43.i79, !dbg !1528

parse_pred.exit.i:                                ; preds = %if.end328.i.i, %if.then315.i.i, %cleanup.cont.i.i, %if.end145.i.i
  %i.10.i.i = phi i32 [ %i.5634.i.i, %if.end145.i.i ], [ %inc250.i.i, %cleanup.cont.i.i ], [ %i.9.lcssa.i.i, %if.then315.i.i ], [ %i.9.lcssa.i.i, %if.end328.i.i ], !dbg !1267
  %323 = ptrtoint ptr %pred.i to i32, !dbg !1529
  call void @__asan_store4_noabort(i32 %323), !dbg !1529
  store ptr %call7.i.i.i94.i, ptr %pred.i, align 4, !dbg !1529
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i.i) #24, !dbg !1527
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %num_buf.i.i) #24, !dbg !1527
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.10.i.i), !dbg !1530
  %cmp41.i = icmp slt i32 %i.10.i.i, 0, !dbg !1530
  br i1 %cmp41.i, label %parse_pred.exit.i.if.then43.i79_crit_edge, label %if.end44.i81, !dbg !1528

parse_pred.exit.i.if.then43.i79_crit_edge:        ; preds = %parse_pred.exit.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1528
  br label %if.then43.i79, !dbg !1528

if.then43.i79:                                    ; preds = %parse_pred.exit.i.if.then43.i79_crit_edge, %parse_pred.exit.thread.i
  %retval.0.i97146.i = phi i32 [ %retval.0.i97.ph.i, %parse_pred.exit.thread.i ], [ %i.10.i.i, %parse_pred.exit.i.if.then43.i79_crit_edge ]
  %gcov_ctr233.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 10), align 16, !dbg !1531
  %324 = add i64 %gcov_ctr233.i, 1, !dbg !1531
  store i64 %324, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 10), align 16, !dbg !1531
  br label %out_free.i, !dbg !1532

if.end44.i81:                                     ; preds = %parse_pred.exit.i
  %add.ptr.i = getelementptr i8, ptr %ptr.0421.i, i32 %i.10.i.i, !dbg !1533
  %inc.i80 = add nuw i32 %N.0.ph526.i, 1, !dbg !1534
  br label %while.cond45.outer.i, !dbg !1535

while.cond45.outer.i:                             ; preds = %if.end108.i, %if.end44.i81
  %ptr.1.ph.i = phi ptr [ %ptr.2.i, %if.end108.i ], [ %add.ptr.i, %if.end44.i81 ]
  %top.1.ph.i = phi ptr [ %incdec.ptr109.i, %if.end108.i ], [ %top.0422.i, %if.end44.i81 ]
  %incdec.ptr47431.i = getelementptr i8, ptr %ptr.1.ph.i, i32 1, !dbg !1536
  %325 = ptrtoint ptr %ptr.1.ph.i to i32, !dbg !1537
  call void @__asan_load1_noabort(i32 %325), !dbg !1537
  %326 = load i8, ptr %ptr.1.ph.i, align 1, !dbg !1537
  %conv48432.i = zext i8 %326 to i32, !dbg !1537
  %arrayidx49433.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv48432.i, !dbg !1537
  %327 = ptrtoint ptr %arrayidx49433.i to i32, !dbg !1537
  call void @__asan_load1_noabort(i32 %327), !dbg !1537
  %328 = load i8, ptr %arrayidx49433.i, align 1, !dbg !1537
  %329 = and i8 %328, 32, !dbg !1537
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %329), !dbg !1537
  %cmp52.not434.i = icmp eq i8 %329, 0, !dbg !1537
  br i1 %cmp52.not434.i, label %while.cond45.outer.i.if.end55.i_crit_edge, label %while.cond45.outer.i.if.then54.i_crit_edge, !dbg !1537

while.cond45.outer.i.if.then54.i_crit_edge:       ; preds = %while.cond45.outer.i
  br label %if.then54.i, !dbg !1537

while.cond45.outer.i.if.end55.i_crit_edge:        ; preds = %while.cond45.outer.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1537
  br label %if.end55.i, !dbg !1537

if.then54.i:                                      ; preds = %if.then54.i.if.then54.i_crit_edge, %while.cond45.outer.i.if.then54.i_crit_edge
  %incdec.ptr47435.i = phi ptr [ %incdec.ptr47.i, %if.then54.i.if.then54.i_crit_edge ], [ %incdec.ptr47431.i, %while.cond45.outer.i.if.then54.i_crit_edge ]
  %gcov_ctr234.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 11), align 8, !dbg !1538
  %330 = add i64 %gcov_ctr234.i, 1, !dbg !1538
  store i64 %330, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 11), align 8, !dbg !1538
  %incdec.ptr47.i = getelementptr i8, ptr %incdec.ptr47435.i, i32 1, !dbg !1536
  %331 = ptrtoint ptr %incdec.ptr47435.i to i32, !dbg !1537
  call void @__asan_load1_noabort(i32 %331), !dbg !1537
  %332 = load i8, ptr %incdec.ptr47435.i, align 1, !dbg !1537
  %conv48.i = zext i8 %332 to i32, !dbg !1537
  %arrayidx49.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv48.i, !dbg !1537
  %333 = ptrtoint ptr %arrayidx49.i to i32, !dbg !1537
  call void @__asan_load1_noabort(i32 %333), !dbg !1537
  %334 = load i8, ptr %arrayidx49.i, align 1, !dbg !1537
  %335 = and i8 %334, 32, !dbg !1537
  %cmp52.not.i = icmp eq i8 %335, 0, !dbg !1537
  br i1 %cmp52.not.i, label %if.then54.i.if.end55.i_crit_edge, label %if.then54.i.if.then54.i_crit_edge, !dbg !1537, !llvm.loop !1539

if.then54.i.if.then54.i_crit_edge:                ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1537
  br label %if.then54.i, !dbg !1537

if.then54.i.if.end55.i_crit_edge:                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1537
  br label %if.end55.i, !dbg !1537

if.end55.i:                                       ; preds = %if.then54.i.if.end55.i_crit_edge, %while.cond45.outer.i.if.end55.i_crit_edge
  %ptr.1.lcssa.i = phi ptr [ %ptr.1.ph.i, %while.cond45.outer.i.if.end55.i_crit_edge ], [ %incdec.ptr47435.i, %if.then54.i.if.end55.i_crit_edge ], !dbg !1541
  %incdec.ptr47.lcssa.i = phi ptr [ %incdec.ptr47431.i, %while.cond45.outer.i.if.end55.i_crit_edge ], [ %incdec.ptr47.i, %if.then54.i.if.end55.i_crit_edge ], !dbg !1536
  %.lcssa.i = phi i8 [ %326, %while.cond45.outer.i.if.end55.i_crit_edge ], [ %332, %if.then54.i.if.end55.i_crit_edge ], !dbg !1537
  %336 = zext i8 %.lcssa.i to i64, !dbg !1542
  call void @__sanitizer_cov_trace_switch(i64 %336, ptr @__sancov_gen_cov_switch_values.245), !dbg !1542
  switch i8 %.lcssa.i, label %if.end55.i.sw.default.i_crit_edge [
    i8 41, label %if.end55.i.sw.bb57.i_crit_edge
    i8 0, label %if.end55.i.sw.bb57.i_crit_edge1510
    i8 38, label %if.end55.i.sw.bb58.i_crit_edge
    i8 124, label %if.end55.i.sw.bb58.i_crit_edge1511
  ], !dbg !1542

if.end55.i.sw.bb58.i_crit_edge1511:               ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1542
  br label %sw.bb58.i, !dbg !1542

if.end55.i.sw.bb58.i_crit_edge:                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1542
  br label %sw.bb58.i, !dbg !1542

if.end55.i.sw.bb57.i_crit_edge1510:               ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1542
  br label %sw.bb57.i, !dbg !1542

if.end55.i.sw.bb57.i_crit_edge:                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1542
  br label %sw.bb57.i, !dbg !1542

if.end55.i.sw.default.i_crit_edge:                ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1542
  br label %sw.default.i, !dbg !1542

sw.bb57.i:                                        ; preds = %if.end55.i.sw.bb57.i_crit_edge, %if.end55.i.sw.bb57.i_crit_edge1510
  %gcov_ctr235.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 12), align 16, !dbg !1543
  %337 = add i64 %gcov_ctr235.i, 1, !dbg !1543
  store i64 %337, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 12), align 16, !dbg !1543
  br label %sw.epilog71.i, !dbg !1543

sw.bb58.i:                                        ; preds = %if.end55.i.sw.bb58.i_crit_edge, %if.end55.i.sw.bb58.i_crit_edge1511
  %338 = ptrtoint ptr %incdec.ptr47.lcssa.i to i32, !dbg !1544
  call void @__asan_load1_noabort(i32 %338), !dbg !1544
  %339 = load i8, ptr %incdec.ptr47.lcssa.i, align 1, !dbg !1544
  call void @__sanitizer_cov_trace_cmp1(i8 %339, i8 %.lcssa.i), !dbg !1545
  %cmp63.i = icmp eq i8 %339, %.lcssa.i, !dbg !1545
  br i1 %cmp63.i, label %if.then65.i, label %if.end67.i82, !dbg !1544

if.then65.i:                                      ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1546
  %gcov_ctr236.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 13), align 8, !dbg !1546
  %340 = add i64 %gcov_ctr236.i, 1, !dbg !1546
  store i64 %340, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 13), align 8, !dbg !1546
  %incdec.ptr66.i = getelementptr i8, ptr %ptr.1.lcssa.i, i32 2, !dbg !1546
  br label %sw.epilog71.i, !dbg !1547

if.end67.i82:                                     ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1548
  %gcov_ctr237.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 14), align 16, !dbg !1548
  %341 = add i64 %gcov_ctr237.i, 1, !dbg !1548
  store i64 %341, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 14), align 16, !dbg !1548
  br label %sw.default.i, !dbg !1548

sw.default.i:                                     ; preds = %if.end67.i82, %if.end55.i.sw.default.i_crit_edge
  %sub.ptr.rhs.cast37306.i = ptrtoint ptr %filter_string to i32, !dbg !1286
  %gcov_ctr238.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 15), align 8, !dbg !1549
  %342 = add i64 %gcov_ctr238.i, 1, !dbg !1549
  store i64 %342, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 15), align 8, !dbg !1549
  %sub.ptr.lhs.cast68.i = ptrtoint ptr %ptr.1.lcssa.i to i32, !dbg !1550
  %sub.ptr.sub70.i = sub i32 %sub.ptr.lhs.cast68.i, %sub.ptr.rhs.cast37306.i, !dbg !1550
  %gcov_ctr.i98.i = load i64, ptr @__llvm_gcov_ctr.135, align 8
  %343 = add i64 %gcov_ctr.i98.i, 1
  store i64 %343, ptr @__llvm_gcov_ctr.135, align 8
  %344 = ptrtoint ptr %pe to i32, !dbg !1551
  call void @__asan_store4_noabort(i32 %344), !dbg !1551
  store i32 12, ptr %pe, align 4, !dbg !1551
  %lasterr_pos.i99.i = getelementptr inbounds %struct.filter_parse_error, ptr %pe, i32 0, i32 1, !dbg !1553
  %345 = ptrtoint ptr %lasterr_pos.i99.i to i32, !dbg !1554
  call void @__asan_store4_noabort(i32 %345), !dbg !1554
  store i32 %sub.ptr.sub70.i, ptr %lasterr_pos.i99.i, align 4, !dbg !1554
  br label %out_free.i, !dbg !1555

sw.epilog71.i:                                    ; preds = %if.then65.i, %sw.bb57.i
  %ptr.2.i = phi ptr [ %incdec.ptr66.i, %if.then65.i ], [ %incdec.ptr47.lcssa.i, %sw.bb57.i ], !dbg !1541
  %346 = ptrtoint ptr %top.1.ph.i to i32, !dbg !1556
  call void @__asan_load4_noabort(i32 %346), !dbg !1556
  %347 = load i32, ptr %top.1.ph.i, align 4, !dbg !1556
  %and72.i = and i32 %347, 1, !dbg !1557
  %and73.i = and i32 %347, 2, !dbg !1558
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i), !dbg !1558
  %tobool74.not.i = icmp eq i32 %and73.i, 0, !dbg !1558
  br i1 %tobool74.not.i, label %sw.epilog71.i.if.end78.i83_crit_edge, label %if.then75.i, !dbg !1559

sw.epilog71.i.if.end78.i83_crit_edge:             ; preds = %sw.epilog71.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1559
  br label %if.end78.i83, !dbg !1559

if.then75.i:                                      ; preds = %sw.epilog71.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1560
  %gcov_ctr239.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 16), align 16, !dbg !1560
  %348 = add i64 %gcov_ctr239.i, 1, !dbg !1560
  store i64 %348, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 16), align 16, !dbg !1560
  %gcov_ctr.i100.i = load i64, ptr @__llvm_gcov_ctr.144, align 8
  %349 = add i64 %gcov_ctr.i100.i, 1
  store i64 %349, ptr @__llvm_gcov_ctr.144, align 8
  %350 = ptrtoint ptr %arrayidx35.i to i32, !dbg !1561
  call void @__asan_load4_noabort(i32 %350), !dbg !1561
  %351 = load i32, ptr %arrayidx35.i, align 4, !dbg !1561
  %arrayidx1.i102.i = getelementptr %struct.prog_entry, ptr %call8.i.i.i, i32 %351, !dbg !1564
  %352 = ptrtoint ptr %arrayidx1.i102.i to i32, !dbg !1565
  call void @__asan_load4_noabort(i32 %352), !dbg !1565
  %353 = load i32, ptr %arrayidx1.i102.i, align 4, !dbg !1565
  %when_to_branch.i.i = getelementptr %struct.prog_entry, ptr %call8.i.i.i, i32 %351, i32 1, !dbg !1566
  %354 = ptrtoint ptr %when_to_branch.i.i to i32, !dbg !1567
  call void @__asan_store4_noabort(i32 %354), !dbg !1567
  store i32 %and72.i, ptr %when_to_branch.i.i, align 4, !dbg !1567
  store i32 %N.0.ph526.i, ptr %arrayidx1.i102.i, align 4, !dbg !1568
  store i32 %353, ptr %arrayidx35.i, align 4, !dbg !1569
  %355 = ptrtoint ptr %top.1.ph.i to i32, !dbg !1570
  call void @__asan_load4_noabort(i32 %355), !dbg !1570
  %356 = load i32, ptr %top.1.ph.i, align 4, !dbg !1570
  %and77.i = and i32 %356, -3, !dbg !1570
  store i32 %and77.i, ptr %top.1.ph.i, align 4, !dbg !1570
  br label %if.end78.i83, !dbg !1571

if.end78.i83:                                     ; preds = %if.then75.i, %sw.epilog71.i.if.end78.i83_crit_edge
  %357 = ptrtoint ptr %ptr.1.lcssa.i to i32, !dbg !1572
  call void @__asan_load1_noabort(i32 %357), !dbg !1572
  %358 = load i8, ptr %ptr.1.lcssa.i, align 1, !dbg !1572
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %358), !dbg !1573
  %cmp80.i = icmp eq i8 %358, 38, !dbg !1573
  br i1 %cmp80.i, label %if.end78.i83.cleanup.cont.i_crit_edge, label %if.end83.i, !dbg !1572

if.end78.i83.cleanup.cont.i_crit_edge:            ; preds = %if.end78.i83
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1572
  br label %cleanup.cont.i, !dbg !1572

if.end83.i:                                       ; preds = %if.end78.i83
  %359 = ptrtoint ptr %top.1.ph.i to i32, !dbg !1574
  call void @__asan_load4_noabort(i32 %359), !dbg !1574
  %360 = load i32, ptr %top.1.ph.i, align 4, !dbg !1574
  %and84.i = and i32 %360, 4, !dbg !1575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i), !dbg !1575
  %tobool85.not.i = icmp eq i32 %and84.i, 0, !dbg !1575
  br i1 %tobool85.not.i, label %if.end83.i.if.end92.i_crit_edge, label %if.then86.i, !dbg !1574

if.end83.i.if.end92.i_crit_edge:                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1574
  br label %if.end92.i, !dbg !1574

if.then86.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1576
  %gcov_ctr241.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 18), align 16, !dbg !1576
  %361 = add i64 %gcov_ctr241.i, 1, !dbg !1576
  store i64 %361, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 18), align 16, !dbg !1576
  %362 = xor i32 %and72.i, 1, !dbg !1577
  %gcov_ctr.i103.i = load i64, ptr @__llvm_gcov_ctr.144, align 8
  %363 = add i64 %gcov_ctr.i103.i, 1
  store i64 %363, ptr @__llvm_gcov_ctr.144, align 8
  %364 = ptrtoint ptr %arrayidx35.i to i32, !dbg !1578
  call void @__asan_load4_noabort(i32 %364), !dbg !1578
  %365 = load i32, ptr %arrayidx35.i, align 4, !dbg !1578
  %arrayidx1.i105.i = getelementptr %struct.prog_entry, ptr %call8.i.i.i, i32 %365, !dbg !1580
  %366 = ptrtoint ptr %arrayidx1.i105.i to i32, !dbg !1581
  call void @__asan_load4_noabort(i32 %366), !dbg !1581
  %367 = load i32, ptr %arrayidx1.i105.i, align 4, !dbg !1581
  %when_to_branch.i106.i = getelementptr %struct.prog_entry, ptr %call8.i.i.i, i32 %365, i32 1, !dbg !1582
  %368 = ptrtoint ptr %when_to_branch.i106.i to i32, !dbg !1583
  call void @__asan_store4_noabort(i32 %368), !dbg !1583
  store i32 %362, ptr %when_to_branch.i106.i, align 4, !dbg !1583
  store i32 %N.0.ph526.i, ptr %arrayidx1.i105.i, align 4, !dbg !1584
  store i32 %367, ptr %arrayidx35.i, align 4, !dbg !1585
  %369 = ptrtoint ptr %top.1.ph.i to i32, !dbg !1586
  call void @__asan_load4_noabort(i32 %369), !dbg !1586
  %370 = load i32, ptr %top.1.ph.i, align 4, !dbg !1586
  %and91.i = and i32 %370, -5, !dbg !1586
  store i32 %and91.i, ptr %top.1.ph.i, align 4, !dbg !1586
  br label %if.end92.i, !dbg !1587

if.end92.i:                                       ; preds = %if.then86.i, %if.end83.i.if.end92.i_crit_edge
  %371 = ptrtoint ptr %ptr.1.lcssa.i to i32, !dbg !1588
  call void @__asan_load1_noabort(i32 %371), !dbg !1588
  %372 = load i8, ptr %ptr.1.lcssa.i, align 1, !dbg !1588
  %373 = zext i8 %372 to i64, !dbg !1588
  call void @__sanitizer_cov_trace_switch(i64 %373, ptr @__sancov_gen_cov_switch_values.246), !dbg !1588
  switch i8 %372, label %if.end101.i [
    i8 124, label %if.end92.i.cleanup.cont.i_crit_edge
    i8 0, label %cleanup.thread165.i
  ], !dbg !1588

if.end92.i.cleanup.cont.i_crit_edge:              ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1588
  br label %cleanup.cont.i, !dbg !1588

cleanup.thread165.i:                              ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1215
  %gcov_ctr243.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 20), align 16
  %374 = add i64 %gcov_ctr243.i, 1
  store i64 %374, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 20), align 16
  br label %out.i

if.end101.i:                                      ; preds = %if.end92.i
  %cmp102.i = icmp eq ptr %top.1.ph.i, %call8.i.i, !dbg !1589
  br i1 %cmp102.i, label %if.then104.i, label %if.end108.i, !dbg !1590

if.then104.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1286
  %sub.ptr.rhs.cast37.le491.i = ptrtoint ptr %filter_string to i32, !dbg !1286
  %gcov_ctr244.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 21), align 8, !dbg !1591
  %375 = add i64 %gcov_ctr244.i, 1, !dbg !1591
  store i64 %375, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 21), align 8, !dbg !1591
  %sub.ptr.lhs.cast105.i = ptrtoint ptr %ptr.2.i to i32, !dbg !1592
  %sub.ptr.sub107.i = sub i32 %sub.ptr.lhs.cast105.i, %sub.ptr.rhs.cast37.le491.i, !dbg !1592
  %gcov_ctr.i107.i = load i64, ptr @__llvm_gcov_ctr.135, align 8
  %376 = add i64 %gcov_ctr.i107.i, 1
  store i64 %376, ptr @__llvm_gcov_ctr.135, align 8
  %377 = ptrtoint ptr %pe to i32, !dbg !1593
  call void @__asan_store4_noabort(i32 %377), !dbg !1593
  store i32 3, ptr %pe, align 4, !dbg !1593
  %lasterr_pos.i108.i = getelementptr inbounds %struct.filter_parse_error, ptr %pe, i32 0, i32 1, !dbg !1595
  %378 = ptrtoint ptr %lasterr_pos.i108.i to i32, !dbg !1596
  call void @__asan_store4_noabort(i32 %378), !dbg !1596
  store i32 %sub.ptr.sub107.i, ptr %lasterr_pos.i108.i, align 4, !dbg !1596
  br label %out_free.i, !dbg !1597

if.end108.i:                                      ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1598
  %incdec.ptr109.i = getelementptr i32, ptr %top.1.ph.i, i32 -1, !dbg !1598
  br label %while.cond45.outer.i, !dbg !1535, !llvm.loop !1599

cleanup.i84:                                      ; preds = %if.end24.i, %if.end19.i, %if.then13.i
  %top.2.i = phi ptr [ %top.0422.i, %if.then13.i ], [ %top.0422.i, %if.end24.i ], [ %incdec.ptr20.i, %if.end19.i ], !dbg !1541
  %invert.2.i = phi i32 [ %invert.0423.i, %if.then13.i ], [ %lnot.ext.i, %if.end24.i ], [ %invert.0423.i, %if.end19.i ], !dbg !1541
  %379 = ptrtoint ptr %incdec.ptr.i to i32, !dbg !1211
  call void @__asan_load1_noabort(i32 %379), !dbg !1211
  %380 = load i8, ptr %incdec.ptr.i, align 1, !dbg !1211
  %tobool10.not.i = icmp eq i8 %380, 0, !dbg !1212
  br i1 %tobool10.not.i, label %cleanup.i84.while.end110.i_crit_edge, label %cleanup.i84.while.body.i_crit_edge, !dbg !1212

cleanup.i84.while.body.i_crit_edge:               ; preds = %cleanup.i84
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1212
  br label %while.body.i, !dbg !1212

cleanup.i84.while.end110.i_crit_edge:             ; preds = %cleanup.i84
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1212
  br label %while.end110.i, !dbg !1212

cleanup.cont.i:                                   ; preds = %if.end92.i.cleanup.cont.i_crit_edge, %if.end78.i83.cleanup.cont.i_crit_edge
  %.sink.i = phi ptr [ getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 17), %if.end78.i83.cleanup.cont.i_crit_edge ], [ getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 19), %if.end92.i.cleanup.cont.i_crit_edge ]
  %.sink1034.i = phi i32 [ 2, %if.end78.i83.cleanup.cont.i_crit_edge ], [ 4, %if.end92.i.cleanup.cont.i_crit_edge ]
  %381 = ptrtoint ptr %.sink.i to i32, !dbg !1541
  call void @__asan_load8_noabort(i32 %381), !dbg !1541
  %gcov_ctr240.i = load i64, ptr %.sink.i, align 8, !dbg !1541
  %382 = add i64 %gcov_ctr240.i, 1, !dbg !1541
  store i64 %382, ptr %.sink.i, align 8, !dbg !1541
  %383 = ptrtoint ptr %top.1.ph.i to i32, !dbg !1541
  call void @__asan_load4_noabort(i32 %383), !dbg !1541
  %384 = load i32, ptr %top.1.ph.i, align 4, !dbg !1541
  %or.i = or i32 %384, %.sink1034.i, !dbg !1541
  store i32 %or.i, ptr %top.1.ph.i, align 4, !dbg !1541
  %gcov_ctr245.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 22), align 16, !dbg !1212
  %385 = add i64 %gcov_ctr245.i, 1, !dbg !1212
  store i64 %385, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 22), align 16, !dbg !1212
  %386 = ptrtoint ptr %ptr.2.i to i32, !dbg !1211
  call void @__asan_load1_noabort(i32 %386), !dbg !1211
  %387 = load i8, ptr %ptr.2.i, align 1, !dbg !1211
  %tobool10.not420.i = icmp eq i8 %387, 0, !dbg !1212
  br i1 %tobool10.not420.i, label %cleanup.cont.i.while.end110.i_crit_edge, label %cleanup.cont.i.while.body.lr.ph.i_crit_edge, !dbg !1212, !llvm.loop !1600

cleanup.cont.i.while.body.lr.ph.i_crit_edge:      ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1212
  br label %while.body.lr.ph.i, !dbg !1212

cleanup.cont.i.while.end110.i_crit_edge:          ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1212
  br label %while.end110.i, !dbg !1212

while.end110.i:                                   ; preds = %cleanup.cont.i.while.end110.i_crit_edge, %cleanup.i84.while.end110.i_crit_edge, %if.end9.i.while.end110.i_crit_edge
  %ret.0.ph.lcssa419.i = phi i32 [ -12, %if.end9.i.while.end110.i_crit_edge ], [ %ret.0.ph524.i, %cleanup.i84.while.end110.i_crit_edge ], [ -1, %cleanup.cont.i.while.end110.i_crit_edge ]
  %N.0.ph.lcssa394.i = phi i32 [ 0, %if.end9.i.while.end110.i_crit_edge ], [ %N.0.ph526.i, %cleanup.i84.while.end110.i_crit_edge ], [ %inc.i80, %cleanup.cont.i.while.end110.i_crit_edge ]
  %ptr.0.lcssa.i = phi ptr [ %filter_string, %if.end9.i.while.end110.i_crit_edge ], [ %incdec.ptr.i, %cleanup.i84.while.end110.i_crit_edge ], [ %ptr.2.i, %cleanup.cont.i.while.end110.i_crit_edge ], !dbg !1541
  %top.0.lcssa.i = phi ptr [ %call8.i.i, %if.end9.i.while.end110.i_crit_edge ], [ %top.2.i, %cleanup.i84.while.end110.i_crit_edge ], [ %top.1.ph.i, %cleanup.cont.i.while.end110.i_crit_edge ], !dbg !1601
  %gcov_ctr246.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 23), align 8, !dbg !1212
  %388 = add i64 %gcov_ctr246.i, 1, !dbg !1212
  store i64 %388, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 23), align 8, !dbg !1212
  br label %out.i, !dbg !1212

out.i:                                            ; preds = %while.end110.i, %cleanup.thread165.i
  %ptr.4.i = phi ptr [ %ptr.0.lcssa.i, %while.end110.i ], [ %ptr.2.i, %cleanup.thread165.i ], !dbg !1541
  %top.3.i = phi ptr [ %top.0.lcssa.i, %while.end110.i ], [ %top.1.ph.i, %cleanup.thread165.i ], !dbg !1601
  %ret.2.i = phi i32 [ %ret.0.ph.lcssa419.i, %while.end110.i ], [ -1, %cleanup.thread165.i ], !dbg !1602
  %N.2.i = phi i32 [ %N.0.ph.lcssa394.i, %while.end110.i ], [ %inc.i80, %cleanup.thread165.i ], !dbg !1603
  %cmp111.not.i = icmp eq ptr %top.3.i, %call8.i.i, !dbg !1604
  br i1 %cmp111.not.i, label %if.end117.i, label %if.then113.i, !dbg !1605

if.then113.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1606
  %gcov_ctr247.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 24), align 16, !dbg !1606
  %389 = add i64 %gcov_ctr247.i, 1, !dbg !1606
  store i64 %389, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 24), align 16, !dbg !1606
  %sub.ptr.lhs.cast114.i = ptrtoint ptr %ptr.4.i to i32, !dbg !1607
  %sub.ptr.rhs.cast115.i = ptrtoint ptr %filter_string to i32, !dbg !1607
  %sub.ptr.sub116.i = sub i32 %sub.ptr.lhs.cast114.i, %sub.ptr.rhs.cast115.i, !dbg !1607
  %gcov_ctr.i109.i = load i64, ptr @__llvm_gcov_ctr.135, align 8
  %390 = add i64 %gcov_ctr.i109.i, 1
  store i64 %390, ptr @__llvm_gcov_ctr.135, align 8
  %391 = ptrtoint ptr %pe to i32, !dbg !1608
  call void @__asan_store4_noabort(i32 %391), !dbg !1608
  store i32 2, ptr %pe, align 4, !dbg !1608
  %lasterr_pos.i110.i = getelementptr inbounds %struct.filter_parse_error, ptr %pe, i32 0, i32 1, !dbg !1610
  %392 = ptrtoint ptr %lasterr_pos.i110.i to i32, !dbg !1611
  call void @__asan_store4_noabort(i32 %392), !dbg !1611
  store i32 %sub.ptr.sub116.i, ptr %lasterr_pos.i110.i, align 4, !dbg !1611
  br label %out_free.i, !dbg !1612

if.end117.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %N.2.i), !dbg !1613
  %tobool118.not.i = icmp eq i32 %N.2.i, 0, !dbg !1613
  br i1 %tobool118.not.i, label %if.then119.i, label %if.end123.i, !dbg !1614

if.then119.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1615
  %gcov_ctr248.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 25), align 8, !dbg !1615
  %393 = add i64 %gcov_ctr248.i, 1, !dbg !1615
  store i64 %393, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 25), align 8, !dbg !1615
  %sub.ptr.lhs.cast120.i = ptrtoint ptr %ptr.4.i to i32, !dbg !1616
  %sub.ptr.rhs.cast121.i = ptrtoint ptr %filter_string to i32, !dbg !1616
  %sub.ptr.sub122.i = sub i32 %sub.ptr.lhs.cast120.i, %sub.ptr.rhs.cast121.i, !dbg !1616
  %gcov_ctr.i111.i = load i64, ptr @__llvm_gcov_ctr.135, align 8
  %394 = add i64 %gcov_ctr.i111.i, 1
  store i64 %394, ptr @__llvm_gcov_ctr.135, align 8
  %395 = ptrtoint ptr %pe to i32, !dbg !1617
  call void @__asan_store4_noabort(i32 %395), !dbg !1617
  store i32 17, ptr %pe, align 4, !dbg !1617
  %lasterr_pos.i112.i = getelementptr inbounds %struct.filter_parse_error, ptr %pe, i32 0, i32 1, !dbg !1619
  %396 = ptrtoint ptr %lasterr_pos.i112.i to i32, !dbg !1620
  call void @__asan_store4_noabort(i32 %396), !dbg !1620
  store i32 %sub.ptr.sub122.i, ptr %lasterr_pos.i112.i, align 4, !dbg !1620
  br label %out_free.i, !dbg !1621

if.end123.i:                                      ; preds = %if.end117.i
  %arrayidx124.i = getelementptr %struct.prog_entry, ptr %call8.i.i.i, i32 %N.2.i, !dbg !1622
  %pred125.i = getelementptr %struct.prog_entry, ptr %call8.i.i.i, i32 %N.2.i, i32 2, !dbg !1623
  %397 = ptrtoint ptr %pred125.i to i32, !dbg !1624
  call void @__asan_store4_noabort(i32 %397), !dbg !1624
  store ptr null, ptr %pred125.i, align 4, !dbg !1624
  %398 = ptrtoint ptr %arrayidx124.i to i32, !dbg !1625
  call void @__asan_store4_noabort(i32 %398), !dbg !1625
  store i32 1, ptr %arrayidx124.i, align 4, !dbg !1625
  %add128.i = add i32 %N.2.i, 1, !dbg !1626
  %arrayidx129.i = getelementptr %struct.prog_entry, ptr %call8.i.i.i, i32 %add128.i, !dbg !1627
  %pred130.i = getelementptr %struct.prog_entry, ptr %call8.i.i.i, i32 %add128.i, i32 2, !dbg !1628
  %399 = ptrtoint ptr %pred130.i to i32, !dbg !1629
  call void @__asan_store4_noabort(i32 %399), !dbg !1629
  store ptr null, ptr %pred130.i, align 4, !dbg !1629
  %400 = ptrtoint ptr %arrayidx129.i to i32, !dbg !1630
  call void @__asan_store4_noabort(i32 %400), !dbg !1630
  store i32 0, ptr %arrayidx129.i, align 4, !dbg !1630
  %sub134.i = add i32 %N.2.i, -1, !dbg !1631
  %arrayidx135.i = getelementptr %struct.prog_entry, ptr %call8.i.i.i, i32 %sub134.i, !dbg !1632
  %401 = ptrtoint ptr %arrayidx135.i to i32, !dbg !1633
  call void @__asan_store4_noabort(i32 %401), !dbg !1633
  store i32 %N.2.i, ptr %arrayidx135.i, align 4, !dbg !1633
  %when_to_branch.i = getelementptr %struct.prog_entry, ptr %call8.i.i.i, i32 %sub134.i, i32 1, !dbg !1634
  %402 = ptrtoint ptr %when_to_branch.i to i32, !dbg !1635
  call void @__asan_store4_noabort(i32 %402), !dbg !1635
  store i32 0, ptr %when_to_branch.i, align 4, !dbg !1635
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub134.i), !dbg !1636
  %tobool140.not533.i = icmp eq i32 %sub134.i, 0, !dbg !1636
  br i1 %tobool140.not533.i, label %if.end123.i.for.body159.i.preheader_crit_edge, label %for.body.preheader.i, !dbg !1636

if.end123.i.for.body159.i.preheader_crit_edge:    ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1636
  br label %for.body159.i.preheader, !dbg !1636

for.body159.i.preheader:                          ; preds = %for.cond156.preheader.i.for.body159.i.preheader_crit_edge, %if.end123.i.for.body159.i.preheader_crit_edge
  %.promoted1504 = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 30), align 1
  br label %for.body159.i, !dbg !1637

for.body.preheader.i:                             ; preds = %if.end123.i
  %dec532.i = add i32 %N.2.i, -2, !dbg !1638
  %.promoted = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 26), align 1
  %.promoted1502 = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 27), align 8
  br label %for.body.i85, !dbg !1636

for.cond156.preheader.i:                          ; preds = %if.end155.i
  store i64 %416, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 27), align 8, !dbg !1639
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %N.2.i), !dbg !1640
  %cmp157535.i = icmp sgt i32 %N.2.i, 0, !dbg !1640
  br i1 %cmp157535.i, label %for.cond156.preheader.i.for.body159.i.preheader_crit_edge, label %for.cond156.preheader.i.for.end198.i_crit_edge, !dbg !1637

for.cond156.preheader.i.for.end198.i_crit_edge:   ; preds = %for.cond156.preheader.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1637
  br label %for.end198.i, !dbg !1637

for.cond156.preheader.i.for.body159.i.preheader_crit_edge: ; preds = %for.cond156.preheader.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1637
  br label %for.body159.i.preheader, !dbg !1637

for.body.i85:                                     ; preds = %if.end155.i.for.body.i85_crit_edge, %for.body.preheader.i
  %403 = phi i64 [ %416, %if.end155.i.for.body.i85_crit_edge ], [ %.promoted1502, %for.body.preheader.i ]
  %404 = phi i64 [ %415, %if.end155.i.for.body.i85_crit_edge ], [ %.promoted, %for.body.preheader.i ]
  %dec534.i = phi i32 [ %dec.i86, %if.end155.i.for.body.i85_crit_edge ], [ %dec532.i, %for.body.preheader.i ]
  %arrayidx142.i = getelementptr %struct.prog_entry, ptr %call8.i.i.i, i32 %dec534.i, !dbg !1641
  %405 = ptrtoint ptr %arrayidx142.i to i32, !dbg !1642
  call void @__asan_load4_noabort(i32 %405), !dbg !1642
  %406 = load i32, ptr %arrayidx142.i, align 4, !dbg !1642
  %when_to_branch145.i = getelementptr %struct.prog_entry, ptr %call8.i.i.i, i32 %dec534.i, i32 1, !dbg !1643
  %407 = ptrtoint ptr %when_to_branch145.i to i32, !dbg !1643
  call void @__asan_load4_noabort(i32 %407), !dbg !1643
  %408 = load i32, ptr %when_to_branch145.i, align 4, !dbg !1643
  %when_to_branch147.i = getelementptr %struct.prog_entry, ptr %call8.i.i.i, i32 %406, i32 1, !dbg !1644
  %409 = ptrtoint ptr %when_to_branch147.i to i32, !dbg !1644
  call void @__asan_load4_noabort(i32 %409), !dbg !1644
  %410 = load i32, ptr %when_to_branch147.i, align 4, !dbg !1644
  call void @__sanitizer_cov_trace_cmp4(i32 %408, i32 %410), !dbg !1645
  %cmp148.i = icmp eq i32 %408, %410, !dbg !1645
  br i1 %cmp148.i, label %if.then150.i, label %for.body.i85.if.end155.i_crit_edge, !dbg !1646

for.body.i85.if.end155.i_crit_edge:               ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1646
  br label %if.end155.i, !dbg !1646

if.then150.i:                                     ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1647
  %arrayidx146.i = getelementptr %struct.prog_entry, ptr %call8.i.i.i, i32 %406, !dbg !1647
  %411 = add i64 %404, 1, !dbg !1648
  store i64 %411, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 26), align 16, !dbg !1648
  %412 = ptrtoint ptr %arrayidx146.i to i32, !dbg !1649
  call void @__asan_load4_noabort(i32 %412), !dbg !1649
  %413 = load i32, ptr %arrayidx146.i, align 4, !dbg !1649
  %414 = ptrtoint ptr %arrayidx142.i to i32, !dbg !1650
  call void @__asan_store4_noabort(i32 %414), !dbg !1650
  store i32 %413, ptr %arrayidx142.i, align 4, !dbg !1650
  br label %if.end155.i, !dbg !1651

if.end155.i:                                      ; preds = %if.then150.i, %for.body.i85.if.end155.i_crit_edge
  %415 = phi i64 [ %411, %if.then150.i ], [ %404, %for.body.i85.if.end155.i_crit_edge ]
  %416 = add i64 %403, 1, !dbg !1639
  %dec.i86 = add i32 %dec534.i, -1, !dbg !1638
  %tobool140.not.i = icmp eq i32 %dec534.i, 0, !dbg !1636
  br i1 %tobool140.not.i, label %for.cond156.preheader.i, label %if.end155.i.for.body.i85_crit_edge, !dbg !1636, !llvm.loop !1652

if.end155.i.for.body.i85_crit_edge:               ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1636
  br label %for.body.i85, !dbg !1636

for.body159.i:                                    ; preds = %for.inc.i87.for.body159.i_crit_edge, %for.body159.i.preheader
  %417 = phi i64 [ %426, %for.inc.i87.for.body159.i_crit_edge ], [ %.promoted1504, %for.body159.i.preheader ]
  %i.1536.i = phi i32 [ %inc197.i, %for.inc.i87.for.body159.i_crit_edge ], [ 0, %for.body159.i.preheader ]
  %arrayidx160.i = getelementptr i8, ptr %call8.i75.i, i32 %i.1536.i, !dbg !1653
  %418 = ptrtoint ptr %arrayidx160.i to i32, !dbg !1653
  call void @__asan_load1_noabort(i32 %418), !dbg !1653
  %419 = load i8, ptr %arrayidx160.i, align 1, !dbg !1653
  %conv161.i = zext i8 %419 to i32, !dbg !1653
  %arrayidx162.i = getelementptr %struct.prog_entry, ptr %call8.i.i.i, i32 %i.1536.i, !dbg !1654
  %when_to_branch163.i = getelementptr %struct.prog_entry, ptr %call8.i.i.i, i32 %i.1536.i, i32 1, !dbg !1655
  %420 = ptrtoint ptr %when_to_branch163.i to i32, !dbg !1655
  call void @__asan_load4_noabort(i32 %420), !dbg !1655
  %421 = load i32, ptr %when_to_branch163.i, align 4, !dbg !1655
  %xor.i = xor i32 %421, %conv161.i, !dbg !1656
  store i32 %xor.i, ptr %when_to_branch163.i, align 4, !dbg !1657
  %422 = ptrtoint ptr %arrayidx162.i to i32, !dbg !1658
  call void @__asan_load4_noabort(i32 %422), !dbg !1658
  %423 = load i32, ptr %arrayidx162.i, align 4, !dbg !1658
  call void @__sanitizer_cov_trace_cmp4(i32 %423, i32 %i.1536.i), !dbg !1658
  %cmp168.not.i = icmp sgt i32 %423, %i.1536.i, !dbg !1658
  br i1 %cmp168.not.i, label %for.inc.i87, label %do.end.i, !dbg !1658, !prof !381

do.end.i:                                         ; preds = %for.body159.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1658
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 573, i32 noundef 9, ptr noundef null) #24, !dbg !1658
  %gcov_ctr251.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 28), align 16, !dbg !1658
  %424 = add i64 %gcov_ctr251.i, 1, !dbg !1658
  store i64 %424, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 28), align 16, !dbg !1658
  %gcov_ctr252.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 29), align 8, !dbg !1659
  %425 = add i64 %gcov_ctr252.i, 1, !dbg !1659
  store i64 %425, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 29), align 8, !dbg !1659
  br label %out_free.i, !dbg !1660

for.inc.i87:                                      ; preds = %for.body159.i
  %426 = add i64 %417, 1, !dbg !1661
  store i64 %426, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 30), align 16, !dbg !1661
  %inc197.i = add nuw nsw i32 %i.1536.i, 1, !dbg !1661
  %exitcond777.not.i = icmp eq i32 %inc197.i, %N.2.i, !dbg !1640
  br i1 %exitcond777.not.i, label %for.inc.i87.for.end198.i_crit_edge, label %for.inc.i87.for.body159.i_crit_edge, !dbg !1637, !llvm.loop !1662

for.inc.i87.for.body159.i_crit_edge:              ; preds = %for.inc.i87
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1637
  br label %for.body159.i, !dbg !1637

for.inc.i87.for.end198.i_crit_edge:               ; preds = %for.inc.i87
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1637
  br label %for.end198.i, !dbg !1637

for.end198.i:                                     ; preds = %for.inc.i87.for.end198.i_crit_edge, %for.cond156.preheader.i.for.end198.i_crit_edge
  %gcov_ctr254.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 31), align 8, !dbg !1664
  %427 = add i64 %gcov_ctr254.i, 1, !dbg !1664
  store i64 %427, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 31), align 8, !dbg !1664
  call void @kfree(ptr noundef nonnull %call8.i.i) #24, !dbg !1665
  call void @kfree(ptr noundef nonnull %call8.i75.i) #24, !dbg !1666
  br label %predicate_parse.exit, !dbg !1667

out_free.i:                                       ; preds = %do.end.i, %if.then119.i, %if.then113.i, %if.then104.i, %sw.default.i, %if.then43.i79, %if.then28.i, %if.then18.i, %if.then8.i, %if.then4.i
  %tobool3.not126.i = phi i1 [ false, %if.then113.i ], [ false, %do.end.i ], [ false, %if.then119.i ], [ false, %if.then8.i ], [ true, %if.then4.i ], [ false, %if.then28.i ], [ false, %if.then43.i79 ], [ false, %sw.default.i ], [ false, %if.then104.i ], [ false, %if.then18.i ]
  %retval.0.i.i124.i = phi ptr [ %call8.i.i.i, %if.then113.i ], [ %call8.i.i.i, %do.end.i ], [ %call8.i.i.i, %if.then119.i ], [ %call8.i.i.i, %if.then8.i ], [ null, %if.then4.i ], [ %call8.i.i.i, %if.then28.i ], [ %call8.i.i.i, %if.then43.i79 ], [ %call8.i.i.i, %sw.default.i ], [ %call8.i.i.i, %if.then104.i ], [ %call8.i.i.i, %if.then18.i ]
  %inverts.0.i = phi ptr [ %call8.i75.i, %if.then113.i ], [ %call8.i75.i, %do.end.i ], [ %call8.i75.i, %if.then119.i ], [ null, %if.then8.i ], [ null, %if.then4.i ], [ %call8.i75.i, %if.then28.i ], [ %call8.i75.i, %if.then43.i79 ], [ %call8.i75.i, %sw.default.i ], [ %call8.i75.i, %if.then104.i ], [ %call8.i75.i, %if.then18.i ], !dbg !1541
  %ret.3.i = phi i32 [ %ret.2.i, %if.then113.i ], [ -22, %do.end.i ], [ -22, %if.then119.i ], [ -12, %if.then8.i ], [ -12, %if.then4.i ], [ %ret.0.ph524.i, %if.then28.i ], [ %retval.0.i97146.i, %if.then43.i79 ], [ -1, %sw.default.i ], [ -1, %if.then104.i ], [ -22, %if.then18.i ], !dbg !1541
  call void @kfree(ptr noundef nonnull %call8.i.i) #24, !dbg !1668
  call void @kfree(ptr noundef %inverts.0.i) #24, !dbg !1669
  br i1 %tobool3.not126.i, label %out_free.i.if.end211.i_crit_edge, label %for.cond201.preheader.i, !dbg !1670

out_free.i.if.end211.i_crit_edge:                 ; preds = %out_free.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1670
  br label %if.end211.i, !dbg !1670

for.cond201.preheader.i:                          ; preds = %out_free.i
  %pred203537.i = getelementptr %struct.prog_entry, ptr %retval.0.i.i124.i, i32 0, i32 2, !dbg !1671
  %428 = ptrtoint ptr %pred203537.i to i32, !dbg !1671
  call void @__asan_load4_noabort(i32 %428), !dbg !1671
  %429 = load ptr, ptr %pred203537.i, align 8, !dbg !1671
  %tobool204.not538.i = icmp eq ptr %429, null, !dbg !1672
  br i1 %tobool204.not538.i, label %for.cond201.preheader.i.for.end210.i_crit_edge, label %for.cond201.preheader.i.for.body205.i_crit_edge, !dbg !1672

for.cond201.preheader.i.for.body205.i_crit_edge:  ; preds = %for.cond201.preheader.i
  br label %for.body205.i, !dbg !1672

for.cond201.preheader.i.for.end210.i_crit_edge:   ; preds = %for.cond201.preheader.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1672
  br label %for.end210.i, !dbg !1672

for.body205.i:                                    ; preds = %for.body205.i.for.body205.i_crit_edge, %for.cond201.preheader.i.for.body205.i_crit_edge
  %430 = phi ptr [ %433, %for.body205.i.for.body205.i_crit_edge ], [ %429, %for.cond201.preheader.i.for.body205.i_crit_edge ]
  %i.2539.i = phi i32 [ %inc209.i, %for.body205.i.for.body205.i_crit_edge ], [ 0, %for.cond201.preheader.i.for.body205.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %430) #24, !dbg !1673
  %gcov_ctr255.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 32), align 16, !dbg !1674
  %431 = add i64 %gcov_ctr255.i, 1, !dbg !1674
  store i64 %431, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 32), align 16, !dbg !1674
  %inc209.i = add i32 %i.2539.i, 1, !dbg !1674
  %pred203.i = getelementptr %struct.prog_entry, ptr %retval.0.i.i124.i, i32 %inc209.i, i32 2, !dbg !1671
  %432 = ptrtoint ptr %pred203.i to i32, !dbg !1671
  call void @__asan_load4_noabort(i32 %432), !dbg !1671
  %433 = load ptr, ptr %pred203.i, align 4, !dbg !1671
  %tobool204.not.i = icmp eq ptr %433, null, !dbg !1672
  br i1 %tobool204.not.i, label %for.body205.i.for.end210.i_crit_edge, label %for.body205.i.for.body205.i_crit_edge, !dbg !1672, !llvm.loop !1675

for.body205.i.for.body205.i_crit_edge:            ; preds = %for.body205.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1672
  br label %for.body205.i, !dbg !1672

for.body205.i.for.end210.i_crit_edge:             ; preds = %for.body205.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1672
  br label %for.end210.i, !dbg !1672

for.end210.i:                                     ; preds = %for.body205.i.for.end210.i_crit_edge, %for.cond201.preheader.i.for.end210.i_crit_edge
  %gcov_ctr256.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 33), align 8, !dbg !1677
  %434 = add i64 %gcov_ctr256.i, 1, !dbg !1677
  store i64 %434, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 33), align 8, !dbg !1677
  call void @kfree(ptr noundef nonnull %retval.0.i.i124.i) #24, !dbg !1678
  br label %if.end211.i, !dbg !1679

if.end211.i:                                      ; preds = %for.end210.i, %out_free.i.if.end211.i_crit_edge
  %gcov_ctr257.i = load i64, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 34), align 16, !dbg !1680
  %435 = add i64 %gcov_ctr257.i, 1, !dbg !1680
  store i64 %435, ptr getelementptr inbounds ([35 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 34), align 16, !dbg !1680
  %gcov_ctr.i113.i = load i64, ptr @__llvm_gcov_ctr.141, align 8
  %436 = add i64 %gcov_ctr.i113.i, 1
  store i64 %436, ptr @__llvm_gcov_ctr.141, align 8
  %437 = inttoptr i32 %ret.3.i to ptr, !dbg !1681
  br label %predicate_parse.exit, !dbg !1685

predicate_parse.exit:                             ; preds = %if.end211.i, %for.end198.i
  %retval.0.i = phi ptr [ %437, %if.end211.i ], [ %call8.i.i.i, %for.end198.i ]
  %gcov_ctr.i88 = load i64, ptr @__llvm_gcov_ctr.138, align 8
  %438 = add i64 %gcov_ctr.i88, 1
  store i64 %438, ptr @__llvm_gcov_ctr.138, align 8
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr), !dbg !1686
  br i1 %cmp.i, label %predicate_parse.exit.if.then7_crit_edge, label %do.body, !dbg !1182

predicate_parse.exit.if.then7_crit_edge:          ; preds = %predicate_parse.exit
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1182
  br label %if.then7, !dbg !1182

if.then7:                                         ; preds = %predicate_parse.exit.if.then7_crit_edge, %predicate_parse.exit.thread
  %retval.0.i115 = phi ptr [ inttoptr (i32 -12 to ptr), %predicate_parse.exit.thread ], [ %retval.0.i, %predicate_parse.exit.if.then7_crit_edge ]
  %gcov_ctr52 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 4), align 16, !dbg !1689
  %439 = add i64 %gcov_ctr52, 1, !dbg !1689
  store i64 %439, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 4), align 16, !dbg !1689
  %gcov_ctr.i89 = load i64, ptr @__llvm_gcov_ctr.139, align 8
  %440 = add i64 %gcov_ctr.i89, 1
  store i64 %440, ptr @__llvm_gcov_ctr.139, align 8
  %441 = ptrtoint ptr %retval.0.i115 to i32, !dbg !1690
  br label %cleanup, !dbg !1693

do.body:                                          ; preds = %predicate_parse.exit
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1694
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #24, !dbg !1694, !srcloc !1695
  %442 = ptrtoint ptr %filter to i32, !dbg !1694
  call void @__asan_store4_noabort(i32 %442), !dbg !1694
  store volatile ptr %retval.0.i, ptr %filter, align 4, !dbg !1694
  %gcov_ctr55 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 7), align 8
  %443 = add i64 %gcov_ctr55, 1
  store i64 %443, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 7), align 8
  br label %cleanup, !dbg !1696

cleanup:                                          ; preds = %do.body, %if.then7, %if.then3, %sw.default, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ %441, %if.then7 ], [ 0, %do.body ], [ -22, %if.then3 ], [ -1, %sw.default ], [ -2, %sw.bb2 ], [ -3, %sw.bb ], !dbg !1215
  ret i32 %retval.0, !dbg !1697
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @append_filter_err(ptr noundef %tr, ptr nocapture noundef readonly %pe, ptr nocapture noundef %filter) unnamed_addr #3 align 64 !dbg !1698 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1699
  %lasterr_pos = getelementptr inbounds %struct.filter_parse_error, ptr %pe, i32 0, i32 1, !dbg !1700
  %0 = ptrtoint ptr %lasterr_pos to i32, !dbg !1700
  call void @__asan_load4_noabort(i32 %0), !dbg !1700
  %1 = load i32, ptr %lasterr_pos, align 4, !dbg !1700
  %filter_string = getelementptr inbounds %struct.event_filter, ptr %filter, i32 0, i32 1, !dbg !1701
  %2 = ptrtoint ptr %filter_string to i32, !dbg !1701
  call void @__asan_load4_noabort(i32 %2), !dbg !1701
  %3 = load ptr, ptr %filter_string, align 4, !dbg !1701
  %tobool.not = icmp eq ptr %3, null, !dbg !1701
  br i1 %tobool.not, label %do.end, label %if.end23, !dbg !1701, !prof !913

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1701
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1032, i32 noundef 9, ptr noundef null) #24, !dbg !1701
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.124, align 16, !dbg !1701
  %4 = add i64 %gcov_ctr, 1, !dbg !1701
  store i64 %4, ptr @__llvm_gcov_ctr.124, align 16, !dbg !1701
  %gcov_ctr55 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 1), align 8
  %5 = add i64 %gcov_ctr55, 1
  store i64 %5, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 1), align 8
  br label %cleanup, !dbg !1702

if.end23:                                         ; preds = %entry
  %gcov_ctr90.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.129, i32 0, i32 12), align 16, !dbg !1703
  %6 = add i64 %gcov_ctr90.i.i, 1, !dbg !1703
  store i64 %6, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.129, i32 0, i32 12), align 16, !dbg !1703
  %gcov_ctr11.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.127, i32 0, i32 2), align 16, !dbg !1706
  %7 = add i64 %gcov_ctr11.i, 1, !dbg !1706
  store i64 %7, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.127, i32 0, i32 2), align 16, !dbg !1706
  %gcov_ctr.i24.i = load i64, ptr @__llvm_gcov_ctr.130, align 16, !dbg !1707
  %8 = add i64 %gcov_ctr.i24.i, 1, !dbg !1707
  store i64 %8, ptr @__llvm_gcov_ctr.130, align 16, !dbg !1707
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32)), !dbg !1709
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4, !dbg !1709
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 4128) #25, !dbg !1710
  %tobool24.not = icmp eq ptr %call7.i, null, !dbg !1711
  br i1 %tobool24.not, label %if.then25, label %if.end26, !dbg !1712

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1713
  %gcov_ctr56 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 2), align 16
  %10 = add i64 %gcov_ctr56, 1
  store i64 %10, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 2), align 16
  br label %cleanup, !dbg !1714

if.end26:                                         ; preds = %if.end23
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.211, align 8
  %11 = add i64 %gcov_ctr.i, 1
  store i64 %11, ptr @__llvm_gcov_ctr.211, align 8
  %seq.i = getelementptr inbounds %struct.trace_seq, ptr %call7.i, i32 0, i32 1, !dbg !1715
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.212, align 8
  %12 = add i64 %gcov_ctr.i.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.212, align 8
  %13 = ptrtoint ptr %seq.i to i32, !dbg !1719
  call void @__asan_store4_noabort(i32 %13), !dbg !1719
  store ptr %call7.i, ptr %seq.i, align 8, !dbg !1719
  %size1.i.i = getelementptr inbounds %struct.trace_seq, ptr %call7.i, i32 0, i32 1, i32 1, !dbg !1723
  %14 = ptrtoint ptr %size1.i.i to i32, !dbg !1724
  call void @__asan_store4_noabort(i32 %14), !dbg !1724
  store i32 4096, ptr %size1.i.i, align 4, !dbg !1724
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.213, align 8
  %15 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %15, ptr @__llvm_gcov_ctr.213, align 8
  %len.i.i.i = getelementptr inbounds %struct.trace_seq, ptr %call7.i, i32 0, i32 1, i32 2, !dbg !1725
  %16 = ptrtoint ptr %len.i.i.i to i32, !dbg !1728
  call void @__asan_store4_noabort(i32 %16), !dbg !1728
  store i32 0, ptr %len.i.i.i, align 8, !dbg !1728
  %readpos.i.i.i = getelementptr inbounds %struct.trace_seq, ptr %call7.i, i32 0, i32 1, i32 3, !dbg !1729
  %17 = ptrtoint ptr %readpos.i.i.i to i32, !dbg !1730
  call void @__asan_store8_noabort(i32 %17), !dbg !1730
  store i64 0, ptr %readpos.i.i.i, align 8, !dbg !1730
  %full.i = getelementptr inbounds %struct.trace_seq, ptr %call7.i, i32 0, i32 2, !dbg !1731
  %18 = ptrtoint ptr %full.i to i32, !dbg !1732
  call void @__asan_store4_noabort(i32 %18), !dbg !1732
  store i32 0, ptr %full.i, align 8, !dbg !1732
  %19 = ptrtoint ptr %filter_string to i32, !dbg !1733
  call void @__asan_load4_noabort(i32 %19), !dbg !1733
  %20 = load ptr, ptr %filter_string, align 4, !dbg !1733
  %call28 = tail call i32 @strlen(ptr noundef %20) #23, !dbg !1734
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %call28), !dbg !1735
  %cmp = icmp sgt i32 %1, %call28, !dbg !1735
  br i1 %cmp, label %if.then29, label %if.end26.if.end30_crit_edge, !dbg !1736

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1736
  br label %if.end30, !dbg !1736

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1737
  %gcov_ctr57 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 3), align 8, !dbg !1737
  %21 = add i64 %gcov_ctr57, 1, !dbg !1737
  store i64 %21, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 3), align 8, !dbg !1737
  br label %if.end30, !dbg !1738

if.end30:                                         ; preds = %if.then29, %if.end26.if.end30_crit_edge
  %pos.0 = phi i32 [ %call28, %if.then29 ], [ %1, %if.end26.if.end30_crit_edge ], !dbg !1713
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos.0), !dbg !1739
  %tobool31.not = icmp eq i32 %pos.0, 0, !dbg !1739
  br i1 %tobool31.not, label %if.end30.if.end33_crit_edge, label %if.then32, !dbg !1739

if.end30.if.end33_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1739
  br label %if.end33, !dbg !1739

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1740
  %gcov_ctr58 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 4), align 16, !dbg !1740
  %22 = add i64 %gcov_ctr58, 1, !dbg !1740
  store i64 %22, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 4), align 16, !dbg !1740
  %inc = add i32 %pos.0, 1, !dbg !1740
  br label %if.end33, !dbg !1741

if.end33:                                         ; preds = %if.then32, %if.end30.if.end33_crit_edge
  %pos.1 = phi i32 [ %inc, %if.then32 ], [ 0, %if.end30.if.end33_crit_edge ], !dbg !1713
  %23 = ptrtoint ptr %filter_string to i32, !dbg !1742
  call void @__asan_load4_noabort(i32 %23), !dbg !1742
  %24 = load ptr, ptr %filter_string, align 4, !dbg !1742
  tail call void @trace_seq_puts(ptr noundef nonnull %call7.i, ptr noundef %24) #24, !dbg !1743
  %25 = ptrtoint ptr %pe to i32, !dbg !1744
  call void @__asan_load4_noabort(i32 %25), !dbg !1744
  %26 = load i32, ptr %pe, align 4, !dbg !1744
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26), !dbg !1745
  %cmp35 = icmp sgt i32 %26, 0, !dbg !1745
  br i1 %cmp35, label %if.then36, label %if.else, !dbg !1746

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1747
  %gcov_ctr59 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 5), align 8, !dbg !1747
  %27 = add i64 %gcov_ctr59, 1, !dbg !1747
  store i64 %27, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 5), align 8, !dbg !1747
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.22, i32 noundef %pos.1, ptr noundef nonnull @.str.23) #24, !dbg !1748
  %28 = ptrtoint ptr %pe to i32, !dbg !1749
  call void @__asan_load4_noabort(i32 %28), !dbg !1749
  %29 = load i32, ptr %pe, align 4, !dbg !1749
  %arrayidx = getelementptr [18 x ptr], ptr @err_text, i32 0, i32 %29, !dbg !1750
  %30 = ptrtoint ptr %arrayidx to i32, !dbg !1750
  call void @__asan_load4_noabort(i32 %30), !dbg !1750
  %31 = load ptr, ptr %arrayidx, align 4, !dbg !1750
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.24, ptr noundef %31) #24, !dbg !1751
  %32 = ptrtoint ptr %filter_string to i32, !dbg !1752
  call void @__asan_load4_noabort(i32 %32), !dbg !1752
  %33 = load ptr, ptr %filter_string, align 4, !dbg !1752
  %34 = ptrtoint ptr %pe to i32, !dbg !1753
  call void @__asan_load4_noabort(i32 %34), !dbg !1753
  %35 = load i32, ptr %pe, align 4, !dbg !1753
  %conv = trunc i32 %35 to i8, !dbg !1754
  %36 = ptrtoint ptr %lasterr_pos to i32, !dbg !1755
  call void @__asan_load4_noabort(i32 %36), !dbg !1755
  %37 = load i32, ptr %lasterr_pos, align 4, !dbg !1755
  %conv41 = trunc i32 %37 to i8, !dbg !1756
  tail call void @tracing_log_err(ptr noundef %tr, ptr noundef nonnull @.str.25, ptr noundef %33, ptr noundef nonnull @err_text, i8 noundef zeroext %conv, i8 noundef zeroext %conv41) #24, !dbg !1757
  br label %if.end44, !dbg !1758

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1759
  %gcov_ctr60 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 6), align 16, !dbg !1759
  %38 = add i64 %gcov_ctr60, 1, !dbg !1759
  store i64 %38, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 6), align 16, !dbg !1759
  %39 = ptrtoint ptr %pe to i32, !dbg !1760
  call void @__asan_load4_noabort(i32 %39), !dbg !1760
  %40 = load i32, ptr %pe, align 4, !dbg !1760
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.26, i32 noundef %40) #24, !dbg !1761
  %41 = ptrtoint ptr %filter_string to i32, !dbg !1762
  call void @__asan_load4_noabort(i32 %41), !dbg !1762
  %42 = load ptr, ptr %filter_string, align 4, !dbg !1762
  tail call void @tracing_log_err(ptr noundef %tr, ptr noundef nonnull @.str.25, ptr noundef %42, ptr noundef nonnull @err_text, i8 noundef zeroext 16, i8 noundef zeroext 0) #24, !dbg !1763
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then36
  tail call void @trace_seq_putc(ptr noundef nonnull %call7.i, i8 noundef zeroext 0) #24, !dbg !1764
  %43 = ptrtoint ptr %len.i.i.i to i32, !dbg !1765
  call void @__asan_load4_noabort(i32 %43), !dbg !1765
  %44 = load i32, ptr %len.i.i.i, align 8, !dbg !1765
  %call46 = tail call ptr @kmemdup_nul(ptr noundef nonnull %call7.i, i32 noundef %44, i32 noundef 3264) #24, !dbg !1766
  %tobool47.not = icmp eq ptr %call46, null, !dbg !1767
  br i1 %tobool47.not, label %if.end44.if.end51_crit_edge, label %if.then48, !dbg !1767

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1767
  br label %if.end51, !dbg !1767

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1768
  %gcov_ctr61 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 7), align 8, !dbg !1768
  %45 = add i64 %gcov_ctr61, 1, !dbg !1768
  store i64 %45, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 7), align 8, !dbg !1768
  %46 = ptrtoint ptr %filter_string to i32, !dbg !1769
  call void @__asan_load4_noabort(i32 %46), !dbg !1769
  %47 = load ptr, ptr %filter_string, align 4, !dbg !1769
  tail call void @kfree(ptr noundef %47) #24, !dbg !1770
  %48 = ptrtoint ptr %filter_string to i32, !dbg !1771
  call void @__asan_store4_noabort(i32 %48), !dbg !1771
  store ptr %call46, ptr %filter_string, align 4, !dbg !1771
  br label %if.end51, !dbg !1772

if.end51:                                         ; preds = %if.then48, %if.end44.if.end51_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #24, !dbg !1773
  br label %cleanup, !dbg !1774

cleanup:                                          ; preds = %if.end51, %if.then25, %do.end
  ret void, !dbg !1774
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_find_event_field(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_none(ptr nocapture noundef readnone %pred, ptr nocapture noundef readnone %event) #10 align 64 !dbg !1775 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1776
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.147, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.147, align 8
  ret i32 0, !dbg !1777
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @is_string_field(ptr nocapture noundef readonly %field) unnamed_addr #12 align 64 !dbg !1778 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1780
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.148, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.148, align 16
  %filter_type = getelementptr inbounds %struct.ftrace_event_field, ptr %field, i32 0, i32 3, !dbg !1781
  %1 = ptrtoint ptr %filter_type to i32, !dbg !1781
  call void @__asan_load4_noabort(i32 %1), !dbg !1781
  %2 = load i32, ptr %filter_type, align 4, !dbg !1781
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2), !dbg !1782
  %cmp = icmp eq i32 %2, 2, !dbg !1782
  br i1 %cmp, label %entry.lor.end_crit_edge, label %lor.lhs.false, !dbg !1783

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1783
  br label %lor.end, !dbg !1783

lor.lhs.false:                                    ; preds = %entry
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 1), align 8, !dbg !1784
  %3 = add i64 %gcov_ctr11, 1, !dbg !1784
  store i64 %3, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 1), align 8, !dbg !1784
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2), !dbg !1785
  %cmp2 = icmp eq i32 %2, 3, !dbg !1785
  br i1 %cmp2, label %lor.lhs.false.lor.end_crit_edge, label %lor.lhs.false3, !dbg !1786

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1786
  br label %lor.end, !dbg !1786

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 2), align 16, !dbg !1787
  %4 = add i64 %gcov_ctr12, 1, !dbg !1787
  store i64 %4, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 2), align 16, !dbg !1787
  %5 = ptrtoint ptr %filter_type to i32, !dbg !1788
  call void @__asan_load4_noabort(i32 %5), !dbg !1788
  %6 = load i32, ptr %filter_type, align 4, !dbg !1788
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6), !dbg !1789
  %cmp5 = icmp eq i32 %6, 1, !dbg !1789
  br i1 %cmp5, label %lor.lhs.false3.lor.end_crit_edge, label %lor.lhs.false6, !dbg !1790

lor.lhs.false3.lor.end_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1790
  br label %lor.end, !dbg !1790

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 3), align 8, !dbg !1791
  %7 = add i64 %gcov_ctr13, 1, !dbg !1791
  store i64 %7, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 3), align 8, !dbg !1791
  %8 = ptrtoint ptr %filter_type to i32, !dbg !1792
  call void @__asan_load4_noabort(i32 %8), !dbg !1792
  %9 = load i32, ptr %filter_type, align 4, !dbg !1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9), !dbg !1793
  %cmp8 = icmp eq i32 %9, 4, !dbg !1793
  br i1 %cmp8, label %lor.lhs.false6.lor.end_crit_edge, label %lor.rhs, !dbg !1794

lor.lhs.false6.lor.end_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1794
  br label %lor.end, !dbg !1794

lor.rhs:                                          ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1795
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 4), align 16, !dbg !1795
  %10 = add i64 %gcov_ctr14, 1, !dbg !1795
  store i64 %10, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 4), align 16, !dbg !1795
  %11 = ptrtoint ptr %filter_type to i32, !dbg !1796
  call void @__asan_load4_noabort(i32 %11), !dbg !1796
  %12 = load i32, ptr %filter_type, align 4, !dbg !1796
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12), !dbg !1797
  %cmp10 = icmp eq i32 %12, 6, !dbg !1797
  br label %lor.end, !dbg !1794

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false6.lor.end_crit_edge, %lor.lhs.false3.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge, %entry.lor.end_crit_edge
  %13 = phi i1 [ true, %lor.lhs.false6.lor.end_crit_edge ], [ true, %lor.lhs.false3.lor.end_crit_edge ], [ true, %lor.lhs.false.lor.end_crit_edge ], [ true, %entry.lor.end_crit_edge ], [ %cmp10, %lor.rhs ]
  ret i1 %13, !dbg !1798
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @filter_build_regex(ptr noundef %pred) unnamed_addr #0 align 64 !dbg !1799 {
entry:
  %search = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1800
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.149, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.149, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %search) #24, !dbg !1801
  %1 = ptrtoint ptr %search to i32, !dbg !1802
  call void @__asan_store4_noabort(i32 %1), !dbg !1802
  store ptr inttoptr (i32 -1 to ptr), ptr %search, align 4, !dbg !1802, !annotation !838
  %op = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 7, !dbg !1803
  %2 = ptrtoint ptr %op to i32, !dbg !1803
  call void @__asan_load4_noabort(i32 %2), !dbg !1803
  %3 = load i32, ptr %op, align 4, !dbg !1803
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3), !dbg !1804
  %cmp = icmp eq i32 %3, 0, !dbg !1804
  br i1 %cmp, label %if.end, label %entry.sw.bb_crit_edge, !dbg !1805

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1805
  br label %sw.bb, !dbg !1805

if.end:                                           ; preds = %entry
  %regex = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 2, !dbg !1806
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.149, i32 0, i32 1), align 8, !dbg !1807
  %4 = add i64 %gcov_ctr14, 1, !dbg !1807
  store i64 %4, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.149, i32 0, i32 1), align 8, !dbg !1807
  %len = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 2, i32 1, !dbg !1808
  %5 = ptrtoint ptr %len to i32, !dbg !1808
  call void @__asan_load4_noabort(i32 %5), !dbg !1808
  %6 = load i32, ptr %len, align 4, !dbg !1808
  %not = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 6, !dbg !1809
  %call = call i32 @filter_parse_regex(ptr noundef %regex, i32 noundef %6, ptr noundef nonnull %search, ptr noundef %not), !dbg !1810
  %7 = ptrtoint ptr %search to i32, !dbg !1811
  call void @__asan_load4_noabort(i32 %7), !dbg !1811
  %8 = load ptr, ptr %search, align 4, !dbg !1811
  %call1 = tail call i32 @strlen(ptr noundef %8) #23, !dbg !1812
  %9 = ptrtoint ptr %len to i32, !dbg !1813
  call void @__asan_store4_noabort(i32 %9), !dbg !1813
  store i32 %call1, ptr %len, align 4, !dbg !1813
  %add = add i32 %call1, 1, !dbg !1814
  %10 = call ptr @memmove(ptr %regex, ptr %8, i32 %add), !dbg !1815
  %11 = zext i32 %call to i64, !dbg !1816
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.247), !dbg !1816
  switch i32 %call, label %if.end.sw.epilog_crit_edge [
    i32 5, label %if.end.sw.bb_crit_edge
    i32 0, label %if.end.sw.bb_crit_edge32
    i32 1, label %sw.bb6
    i32 2, label %sw.bb8
    i32 3, label %sw.bb10
    i32 4, label %sw.bb12
  ], !dbg !1816

if.end.sw.bb_crit_edge32:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1816
  br label %sw.bb, !dbg !1816

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1816
  br label %sw.bb, !dbg !1816

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1816
  br label %sw.epilog, !dbg !1816

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge32, %entry.sw.bb_crit_edge
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.149, i32 0, i32 6), align 16, !dbg !1817
  %12 = add i64 %gcov_ctr19, 1, !dbg !1817
  store i64 %12, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.149, i32 0, i32 6), align 16, !dbg !1817
  br label %sw.epilog.sink.split, !dbg !1818

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1819
  %gcov_ctr15 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.149, i32 0, i32 2), align 16, !dbg !1819
  %13 = add i64 %gcov_ctr15, 1, !dbg !1819
  store i64 %13, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.149, i32 0, i32 2), align 16, !dbg !1819
  br label %sw.epilog.sink.split, !dbg !1820

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1821
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.149, i32 0, i32 3), align 8, !dbg !1821
  %14 = add i64 %gcov_ctr16, 1, !dbg !1821
  store i64 %14, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.149, i32 0, i32 3), align 8, !dbg !1821
  br label %sw.epilog.sink.split, !dbg !1822

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1823
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.149, i32 0, i32 4), align 16, !dbg !1823
  %15 = add i64 %gcov_ctr17, 1, !dbg !1823
  store i64 %15, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.149, i32 0, i32 4), align 16, !dbg !1823
  br label %sw.epilog.sink.split, !dbg !1824

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1825
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.149, i32 0, i32 5), align 8, !dbg !1825
  %16 = add i64 %gcov_ctr18, 1, !dbg !1825
  store i64 %16, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.149, i32 0, i32 5), align 8, !dbg !1825
  br label %sw.epilog.sink.split, !dbg !1826

sw.epilog.sink.split:                             ; preds = %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb
  %regex_match_glob.sink = phi ptr [ @regex_match_glob, %sw.bb12 ], [ @regex_match_end, %sw.bb10 ], [ @regex_match_middle, %sw.bb8 ], [ @regex_match_front, %sw.bb6 ], [ @regex_match_full, %sw.bb ]
  %match13 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 2, i32 3, !dbg !1827
  %17 = ptrtoint ptr %match13 to i32, !dbg !1827
  call void @__asan_store4_noabort(i32 %17), !dbg !1827
  store ptr %regex_match_glob.sink, ptr %match13, align 4, !dbg !1827
  br label %sw.epilog, !dbg !1828

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %search) #24, !dbg !1828
  ret void, !dbg !1828
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filter_pred_comm(ptr noundef %pred, ptr nocapture noundef readnone %event) #3 align 64 !dbg !1829 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1830
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.150, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.150, align 8
  %regex = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 2, !dbg !1831
  %match = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 2, i32 3, !dbg !1832
  %1 = ptrtoint ptr %match to i32, !dbg !1832
  call void @__asan_load4_noabort(i32 %1), !dbg !1832
  %2 = load ptr, ptr %match, align 8, !dbg !1832
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.163, align 8, !dbg !1833
  %3 = add i64 %gcov_ctr.i, 1, !dbg !1833
  store i64 %3, ptr @__llvm_gcov_ctr.163, align 8, !dbg !1833
  %4 = tail call i32 @llvm.read_register.i32(metadata !189) #24, !dbg !1833
  %and.i = and i32 %4, -16384, !dbg !1835
  %5 = inttoptr i32 %and.i to ptr, !dbg !1836
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2, !dbg !1837
  %6 = ptrtoint ptr %task to i32, !dbg !1837
  call void @__asan_load4_noabort(i32 %6), !dbg !1837
  %7 = load ptr, ptr %task, align 8, !dbg !1837
  %comm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101, !dbg !1838
  %call2 = tail call i32 %2(ptr noundef %comm, ptr noundef %regex, i32 noundef 16) #24, !dbg !1839
  %not = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 6, !dbg !1840
  %8 = ptrtoint ptr %not to i32, !dbg !1840
  call void @__asan_load4_noabort(i32 %8), !dbg !1840
  %9 = load i32, ptr %not, align 8, !dbg !1840
  %xor = xor i32 %9, %call2, !dbg !1841
  ret i32 %xor, !dbg !1842
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filter_pred_string(ptr noundef %pred, ptr noundef %event) #3 align 64 !dbg !1843 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1844
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.151, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.151, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !1845
  %1 = ptrtoint ptr %offset to i32, !dbg !1845
  call void @__asan_load4_noabort(i32 %1), !dbg !1845
  %2 = load i32, ptr %offset, align 4, !dbg !1845
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !1846
  %regex = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 2, !dbg !1847
  %match1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 2, i32 3, !dbg !1848
  %3 = ptrtoint ptr %match1 to i32, !dbg !1848
  call void @__asan_load4_noabort(i32 %3), !dbg !1848
  %4 = load ptr, ptr %match1, align 8, !dbg !1848
  %field_len = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 2, i32 2, !dbg !1849
  %5 = ptrtoint ptr %field_len to i32, !dbg !1849
  call void @__asan_load4_noabort(i32 %5), !dbg !1849
  %6 = load i32, ptr %field_len, align 4, !dbg !1849
  %call = tail call i32 %4(ptr noundef %add.ptr, ptr noundef %regex, i32 noundef %6) #24, !dbg !1850
  %not = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 6, !dbg !1851
  %7 = ptrtoint ptr %not to i32, !dbg !1851
  call void @__asan_load4_noabort(i32 %7), !dbg !1851
  %8 = load i32, ptr %not, align 8, !dbg !1851
  %xor = xor i32 %8, %call, !dbg !1852
  ret i32 %xor, !dbg !1853
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filter_pred_strloc(ptr noundef %pred, ptr noundef %event) #3 align 64 !dbg !1854 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1855
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.152, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.152, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !1856
  %1 = ptrtoint ptr %offset to i32, !dbg !1856
  call void @__asan_load4_noabort(i32 %1), !dbg !1856
  %2 = load i32, ptr %offset, align 4, !dbg !1856
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !1857
  %3 = ptrtoint ptr %add.ptr to i32, !dbg !1858
  call void @__asan_load4_noabort(i32 %3), !dbg !1858
  %4 = load i32, ptr %add.ptr, align 4, !dbg !1858
  %and = and i32 %4, 65535, !dbg !1859
  %shr = lshr i32 %4, 16, !dbg !1860
  %add.ptr1 = getelementptr i8, ptr %event, i32 %and, !dbg !1861
  %regex = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 2, !dbg !1862
  %match2 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 2, i32 3, !dbg !1863
  %5 = ptrtoint ptr %match2 to i32, !dbg !1863
  call void @__asan_load4_noabort(i32 %5), !dbg !1863
  %6 = load ptr, ptr %match2, align 8, !dbg !1863
  %call = tail call i32 %6(ptr noundef %add.ptr1, ptr noundef %regex, i32 noundef %shr) #24, !dbg !1864
  %not = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 6, !dbg !1865
  %7 = ptrtoint ptr %not to i32, !dbg !1865
  call void @__asan_load4_noabort(i32 %7), !dbg !1865
  %8 = load i32, ptr %not, align 8, !dbg !1865
  %xor = xor i32 %8, %call, !dbg !1866
  ret i32 %xor, !dbg !1867
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filter_pred_strrelloc(ptr noundef %pred, ptr noundef %event) #3 align 64 !dbg !1868 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1869
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.153, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.153, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !1870
  %1 = ptrtoint ptr %offset to i32, !dbg !1870
  call void @__asan_load4_noabort(i32 %1), !dbg !1870
  %2 = load i32, ptr %offset, align 4, !dbg !1870
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !1871
  %3 = ptrtoint ptr %add.ptr to i32, !dbg !1872
  call void @__asan_load4_noabort(i32 %3), !dbg !1872
  %4 = load i32, ptr %add.ptr, align 4, !dbg !1872
  %and = and i32 %4, 65535, !dbg !1873
  %shr = lshr i32 %4, 16, !dbg !1874
  %arrayidx = getelementptr i32, ptr %add.ptr, i32 1, !dbg !1875
  %add.ptr1 = getelementptr i8, ptr %arrayidx, i32 %and, !dbg !1876
  %regex = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 2, !dbg !1877
  %match2 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 2, i32 3, !dbg !1878
  %5 = ptrtoint ptr %match2 to i32, !dbg !1878
  call void @__asan_load4_noabort(i32 %5), !dbg !1878
  %6 = load ptr, ptr %match2, align 8, !dbg !1878
  %call = tail call i32 %6(ptr noundef %add.ptr1, ptr noundef %regex, i32 noundef %shr) #24, !dbg !1879
  %not = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 6, !dbg !1880
  %7 = ptrtoint ptr %not to i32, !dbg !1880
  call void @__asan_load4_noabort(i32 %7), !dbg !1880
  %8 = load i32, ptr %not, align 8, !dbg !1880
  %xor = xor i32 %8, %call, !dbg !1881
  ret i32 %xor, !dbg !1882
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filter_pred_pchar_user(ptr noundef %pred, ptr nocapture noundef readonly %event) #3 align 64 !dbg !1883 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1884
  %0 = load ptr, ptr @ustring_per_cpu, align 4, !dbg !1885
  %tobool.not.i = icmp eq ptr %0, null, !dbg !1885
  br i1 %tobool.not.i, label %if.then.i, label %do.body.i, !dbg !1888

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1889
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.164, align 16, !dbg !1889
  %1 = add i64 %gcov_ctr.i, 1, !dbg !1889
  store i64 %1, ptr @__llvm_gcov_ctr.164, align 16, !dbg !1889
  br label %if.then, !dbg !1889

do.body.i:                                        ; preds = %entry
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !1890
  %2 = ptrtoint ptr %offset to i32, !dbg !1890
  call void @__asan_load4_noabort(i32 %2), !dbg !1890
  %3 = load i32, ptr %offset, align 4, !dbg !1890
  %add.ptr = getelementptr i8, ptr %event, i32 %3, !dbg !1891
  %4 = ptrtoint ptr %add.ptr to i32, !dbg !1892
  call void @__asan_load4_noabort(i32 %4), !dbg !1892
  %5 = load ptr, ptr %add.ptr, align 4, !dbg !1892
  %6 = ptrtoint ptr %0 to i32, !dbg !1893
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.163, align 8, !dbg !1894
  %7 = add i64 %gcov_ctr.i.i, 1, !dbg !1894
  store i64 %7, ptr @__llvm_gcov_ctr.163, align 8, !dbg !1894
  %8 = tail call i32 @llvm.read_register.i32(metadata !189) #24, !dbg !1894
  %and.i.i = and i32 %8, -16384, !dbg !1896
  %9 = inttoptr i32 %and.i.i to ptr, !dbg !1897
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3, !dbg !1893
  %10 = ptrtoint ptr %cpu.i to i32, !dbg !1893
  call void @__asan_load4_noabort(i32 %10), !dbg !1893
  %11 = load i32, ptr %cpu.i, align 4, !dbg !1893
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11, !dbg !1893
  %12 = ptrtoint ptr %arrayidx.i to i32, !dbg !1893
  call void @__asan_load4_noabort(i32 %12), !dbg !1893
  %13 = load i32, ptr %arrayidx.i, align 4, !dbg !1893
  %add.i = add i32 %13, %6, !dbg !1893
  %14 = inttoptr i32 %add.i to ptr, !dbg !1893
  %call2.i = tail call i32 @strncpy_from_user_nofault(ptr noundef %14, ptr noundef %5, i32 noundef 1024) #24, !dbg !1898
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i), !dbg !1898
  %tobool3.not.i = icmp eq i32 %call2.i, 0, !dbg !1898
  br i1 %tobool3.not.i, label %if.then4.i, label %test_ustring.exit, !dbg !1899

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1900
  %gcov_ctr8.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 1), align 8, !dbg !1900
  %15 = add i64 %gcov_ctr8.i, 1, !dbg !1900
  store i64 %15, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 1), align 8, !dbg !1900
  br label %if.then, !dbg !1900

test_ustring.exit:                                ; preds = %do.body.i
  %gcov_ctr9.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 2), align 16, !dbg !1901
  %16 = add i64 %gcov_ctr9.i, 1, !dbg !1901
  store i64 %16, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 2), align 16, !dbg !1901
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i), !dbg !1902
  %tobool.not = icmp eq i32 %add.i, 0, !dbg !1902
  br i1 %tobool.not, label %test_ustring.exit.if.then_crit_edge, label %if.end, !dbg !1903

test_ustring.exit.if.then_crit_edge:              ; preds = %test_ustring.exit
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1903
  br label %if.then, !dbg !1903

if.then:                                          ; preds = %test_ustring.exit.if.then_crit_edge, %if.then4.i, %if.then.i
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.154, align 8, !dbg !1904
  %17 = add i64 %gcov_ctr, 1, !dbg !1904
  store i64 %17, ptr @__llvm_gcov_ctr.154, align 8, !dbg !1904
  br label %cleanup, !dbg !1904

if.end:                                           ; preds = %test_ustring.exit
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1905
  %gcov_ctr3 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 1), align 8, !dbg !1905
  %18 = add i64 %gcov_ctr3, 1, !dbg !1905
  store i64 %18, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 1), align 8, !dbg !1905
  %gcov_ctr.i6 = load i64, ptr @__llvm_gcov_ctr.165, align 8
  %19 = add i64 %gcov_ctr.i6, 1
  store i64 %19, ptr @__llvm_gcov_ctr.165, align 8
  %call.i = tail call i32 @strlen(ptr noundef nonnull %14) #26, !dbg !1906
  %add.i7 = add i32 %call.i, 1, !dbg !1909
  %regex.i = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 2, !dbg !1910
  %match1.i = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 2, i32 3, !dbg !1911
  %20 = ptrtoint ptr %match1.i to i32, !dbg !1911
  call void @__asan_load4_noabort(i32 %20), !dbg !1911
  %21 = load ptr, ptr %match1.i, align 8, !dbg !1911
  %call3.i = tail call i32 %21(ptr noundef nonnull %14, ptr noundef %regex.i, i32 noundef %add.i7) #24, !dbg !1912
  %not.i = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 6, !dbg !1913
  %22 = ptrtoint ptr %not.i to i32, !dbg !1913
  call void @__asan_load4_noabort(i32 %22), !dbg !1913
  %23 = load i32, ptr %not.i, align 8, !dbg !1913
  %xor.i = xor i32 %23, %call3.i, !dbg !1914
  br label %cleanup, !dbg !1915

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %xor.i, %if.end ], [ 0, %if.then ], !dbg !1916
  ret i32 %retval.0, !dbg !1917
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filter_pred_pchar(ptr noundef %pred, ptr nocapture noundef readonly %event) #3 align 64 !dbg !1918 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1919
  %0 = load ptr, ptr @ustring_per_cpu, align 4, !dbg !1920
  %tobool.not.i = icmp eq ptr %0, null, !dbg !1920
  br i1 %tobool.not.i, label %if.then.i, label %do.body.i, !dbg !1923

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1924
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.166, align 16, !dbg !1924
  %1 = add i64 %gcov_ctr.i, 1, !dbg !1924
  store i64 %1, ptr @__llvm_gcov_ctr.166, align 16, !dbg !1924
  br label %if.then, !dbg !1924

do.body.i:                                        ; preds = %entry
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !1925
  %2 = ptrtoint ptr %offset to i32, !dbg !1925
  call void @__asan_load4_noabort(i32 %2), !dbg !1925
  %3 = load i32, ptr %offset, align 4, !dbg !1925
  %add.ptr = getelementptr i8, ptr %event, i32 %3, !dbg !1926
  %4 = ptrtoint ptr %add.ptr to i32, !dbg !1927
  call void @__asan_load4_noabort(i32 %4), !dbg !1927
  %5 = load ptr, ptr %add.ptr, align 4, !dbg !1927
  %6 = ptrtoint ptr %0 to i32, !dbg !1928
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.163, align 8, !dbg !1929
  %7 = add i64 %gcov_ctr.i.i, 1, !dbg !1929
  store i64 %7, ptr @__llvm_gcov_ctr.163, align 8, !dbg !1929
  %8 = tail call i32 @llvm.read_register.i32(metadata !189) #24, !dbg !1929
  %and.i.i = and i32 %8, -16384, !dbg !1931
  %9 = inttoptr i32 %and.i.i to ptr, !dbg !1932
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3, !dbg !1928
  %10 = ptrtoint ptr %cpu.i to i32, !dbg !1928
  call void @__asan_load4_noabort(i32 %10), !dbg !1928
  %11 = load i32, ptr %cpu.i, align 4, !dbg !1928
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11, !dbg !1928
  %12 = ptrtoint ptr %arrayidx.i to i32, !dbg !1928
  call void @__asan_load4_noabort(i32 %12), !dbg !1928
  %13 = load i32, ptr %arrayidx.i, align 4, !dbg !1928
  %add.i = add i32 %13, %6, !dbg !1928
  %14 = inttoptr i32 %add.i to ptr, !dbg !1928
  %call2.i = tail call i32 @strncpy_from_kernel_nofault(ptr noundef %14, ptr noundef %5, i32 noundef 1024) #24, !dbg !1933
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i), !dbg !1933
  %tobool3.not.i = icmp eq i32 %call2.i, 0, !dbg !1933
  br i1 %tobool3.not.i, label %if.then4.i, label %test_string.exit, !dbg !1934

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1935
  %gcov_ctr7.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.166, i32 0, i32 1), align 8, !dbg !1935
  %15 = add i64 %gcov_ctr7.i, 1, !dbg !1935
  store i64 %15, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.166, i32 0, i32 1), align 8, !dbg !1935
  br label %if.then, !dbg !1935

test_string.exit:                                 ; preds = %do.body.i
  %gcov_ctr8.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.166, i32 0, i32 2), align 16, !dbg !1936
  %16 = add i64 %gcov_ctr8.i, 1, !dbg !1936
  store i64 %16, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.166, i32 0, i32 2), align 16, !dbg !1936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i), !dbg !1937
  %tobool.not = icmp eq i32 %add.i, 0, !dbg !1937
  br i1 %tobool.not, label %test_string.exit.if.then_crit_edge, label %if.end, !dbg !1938

test_string.exit.if.then_crit_edge:               ; preds = %test_string.exit
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1938
  br label %if.then, !dbg !1938

if.then:                                          ; preds = %test_string.exit.if.then_crit_edge, %if.then4.i, %if.then.i
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.155, align 8, !dbg !1939
  %17 = add i64 %gcov_ctr, 1, !dbg !1939
  store i64 %17, ptr @__llvm_gcov_ctr.155, align 8, !dbg !1939
  br label %cleanup, !dbg !1939

if.end:                                           ; preds = %test_string.exit
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1940
  %gcov_ctr3 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.155, i32 0, i32 1), align 8, !dbg !1940
  %18 = add i64 %gcov_ctr3, 1, !dbg !1940
  store i64 %18, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.155, i32 0, i32 1), align 8, !dbg !1940
  %gcov_ctr.i6 = load i64, ptr @__llvm_gcov_ctr.165, align 8
  %19 = add i64 %gcov_ctr.i6, 1
  store i64 %19, ptr @__llvm_gcov_ctr.165, align 8
  %call.i = tail call i32 @strlen(ptr noundef nonnull %14) #26, !dbg !1941
  %add.i7 = add i32 %call.i, 1, !dbg !1943
  %regex.i = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 2, !dbg !1944
  %match1.i = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 2, i32 3, !dbg !1945
  %20 = ptrtoint ptr %match1.i to i32, !dbg !1945
  call void @__asan_load4_noabort(i32 %20), !dbg !1945
  %21 = load ptr, ptr %match1.i, align 8, !dbg !1945
  %call3.i = tail call i32 %21(ptr noundef nonnull %14, ptr noundef %regex.i, i32 noundef %add.i7) #24, !dbg !1946
  %not.i = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 6, !dbg !1947
  %22 = ptrtoint ptr %not.i to i32, !dbg !1947
  call void @__asan_load4_noabort(i32 %22), !dbg !1947
  %23 = load i32, ptr %not.i, align 8, !dbg !1947
  %xor.i = xor i32 %23, %call3.i, !dbg !1948
  br label %cleanup, !dbg !1949

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %xor.i, %if.end ], [ 0, %if.then ], !dbg !1950
  ret i32 %retval.0, !dbg !1951
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_cpu(ptr nocapture noundef readonly %pred, ptr nocapture noundef readnone %event) #5 align 64 !dbg !1952 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1953
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.163, align 8, !dbg !1954
  %0 = add i64 %gcov_ctr.i, 1, !dbg !1954
  store i64 %0, ptr @__llvm_gcov_ctr.163, align 8, !dbg !1954
  %1 = tail call i32 @llvm.read_register.i32(metadata !189) #24, !dbg !1954
  %and.i = and i32 %1, -16384, !dbg !1956
  %2 = inttoptr i32 %and.i to ptr, !dbg !1957
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3, !dbg !1958
  %3 = ptrtoint ptr %cpu1 to i32, !dbg !1958
  call void @__asan_load4_noabort(i32 %3), !dbg !1958
  %4 = load i32, ptr %cpu1, align 4, !dbg !1958
  %val = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !1959
  %5 = ptrtoint ptr %val to i32, !dbg !1959
  call void @__asan_load8_noabort(i32 %5), !dbg !1959
  %6 = load i64, ptr %val, align 8, !dbg !1959
  %conv = trunc i64 %6 to i32, !dbg !1960
  %op = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 7, !dbg !1961
  %7 = ptrtoint ptr %op to i32, !dbg !1961
  call void @__asan_load4_noabort(i32 %7), !dbg !1961
  %8 = load i32, ptr %op, align 4, !dbg !1961
  %9 = zext i32 %8 to i64, !dbg !1962
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.248), !dbg !1962
  switch i32 %8, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb4
    i32 4, label %sw.bb7
    i32 3, label %sw.bb10
    i32 6, label %sw.bb13
    i32 5, label %sw.bb16
  ], !dbg !1962

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1963
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.156, align 16, !dbg !1963
  %10 = add i64 %gcov_ctr, 1, !dbg !1963
  store i64 %10, ptr @__llvm_gcov_ctr.156, align 16, !dbg !1963
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv), !dbg !1964
  %cmp2 = icmp eq i32 %4, %conv, !dbg !1964
  br label %cleanup, !dbg !1965

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1966
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.156, i32 0, i32 1), align 8, !dbg !1966
  %11 = add i64 %gcov_ctr20, 1, !dbg !1966
  store i64 %11, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.156, i32 0, i32 1), align 8, !dbg !1966
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv), !dbg !1967
  %cmp5 = icmp ne i32 %4, %conv, !dbg !1967
  br label %cleanup, !dbg !1968

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1969
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.156, i32 0, i32 2), align 16, !dbg !1969
  %12 = add i64 %gcov_ctr21, 1, !dbg !1969
  store i64 %12, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.156, i32 0, i32 2), align 16, !dbg !1969
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv), !dbg !1970
  %cmp8 = icmp slt i32 %4, %conv, !dbg !1970
  br label %cleanup, !dbg !1971

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1972
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.156, i32 0, i32 3), align 8, !dbg !1972
  %13 = add i64 %gcov_ctr22, 1, !dbg !1972
  store i64 %13, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.156, i32 0, i32 3), align 8, !dbg !1972
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv), !dbg !1973
  %cmp11 = icmp sle i32 %4, %conv, !dbg !1973
  br label %cleanup, !dbg !1974

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1975
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.156, i32 0, i32 4), align 16, !dbg !1975
  %14 = add i64 %gcov_ctr23, 1, !dbg !1975
  store i64 %14, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.156, i32 0, i32 4), align 16, !dbg !1975
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv), !dbg !1976
  %cmp14 = icmp sgt i32 %4, %conv, !dbg !1976
  br label %cleanup, !dbg !1977

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1978
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.156, i32 0, i32 5), align 8, !dbg !1978
  %15 = add i64 %gcov_ctr24, 1, !dbg !1978
  store i64 %15, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.156, i32 0, i32 5), align 8, !dbg !1978
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv), !dbg !1979
  %cmp17 = icmp sge i32 %4, %conv, !dbg !1979
  br label %cleanup, !dbg !1980

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1981
  %gcov_ctr25 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.156, i32 0, i32 6), align 16, !dbg !1981
  %16 = add i64 %gcov_ctr25, 1, !dbg !1981
  store i64 %16, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.156, i32 0, i32 6), align 16, !dbg !1981
  br label %cleanup, !dbg !1981

cleanup:                                          ; preds = %sw.default, %sw.bb16, %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb
  %retval.0.shrunk = phi i1 [ false, %sw.default ], [ %cmp17, %sw.bb16 ], [ %cmp14, %sw.bb13 ], [ %cmp11, %sw.bb10 ], [ %cmp8, %sw.bb7 ], [ %cmp5, %sw.bb4 ], [ %cmp2, %sw.bb ]
  %retval.0 = zext i1 %retval.0.shrunk to i32, !dbg !1982
  ret i32 %retval.0, !dbg !1983
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @select_comparison_fn(i32 noundef %op, i32 noundef %field_size, i32 noundef %field_is_signed) unnamed_addr #3 align 64 !dbg !1984 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1985
  %op.off = add i32 %op, -1, !dbg !1986
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %op.off), !dbg !1986
  %switch = icmp ult i32 %op.off, 2, !dbg !1986
  br i1 %switch, label %entry.sw.epilog_crit_edge, label %sw.default, !dbg !1986

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1986
  br label %sw.epilog, !dbg !1986

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %op), !dbg !1987
  %cmp = icmp ult i32 %op, 3, !dbg !1987
  br i1 %cmp, label %land.rhs, label %if.end37, !dbg !1987

land.rhs:                                         ; preds = %sw.default
  %gcov_ctr139 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 1), align 8, !dbg !1987
  %0 = add i64 %gcov_ctr139, 1, !dbg !1987
  store i64 %0, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 1), align 8, !dbg !1987
  %.b183 = load i1, ptr @select_comparison_fn.__already_done, align 1, !dbg !1987
  br i1 %.b183, label %land.rhs.if.then36_crit_edge, label %if.then, !dbg !1987, !prof !381

land.rhs.if.then36_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1987
  br label %if.then36, !dbg !1987

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1987
  store i1 true, ptr @select_comparison_fn.__already_done, align 1, !dbg !1987
  %gcov_ctr140 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 2), align 16, !dbg !1987
  %1 = add i64 %gcov_ctr140, 1, !dbg !1987
  store i64 %1, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 2), align 16, !dbg !1987
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1203, i32 noundef 9, ptr noundef null) #24, !dbg !1987
  %gcov_ctr141 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 3), align 8, !dbg !1987
  %2 = add i64 %gcov_ctr141, 1, !dbg !1987
  store i64 %2, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 3), align 8, !dbg !1987
  br label %if.then36, !dbg !1987

if.then36:                                        ; preds = %if.then, %land.rhs.if.then36_crit_edge
  %gcov_ctr142 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 4), align 16, !dbg !1988
  %3 = add i64 %gcov_ctr142, 1, !dbg !1988
  store i64 %3, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 4), align 16, !dbg !1988
  br label %cleanup, !dbg !1988

if.end37:                                         ; preds = %sw.default
  %sub = add i32 %op, -3, !dbg !1989
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub), !dbg !1990
  %cmp39 = icmp sgt i32 %sub, 4, !dbg !1990
  br i1 %cmp39, label %land.rhs46, label %if.end37.sw.epilog_crit_edge, !dbg !1990

if.end37.sw.epilog_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1990
  br label %sw.epilog, !dbg !1990

land.rhs46:                                       ; preds = %if.end37
  %gcov_ctr143 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 5), align 8, !dbg !1990
  %4 = add i64 %gcov_ctr143, 1, !dbg !1990
  store i64 %4, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 5), align 8, !dbg !1990
  %.b181182 = load i1, ptr @select_comparison_fn.__already_done.21, align 1, !dbg !1990
  br i1 %.b181182, label %land.rhs46.if.then93_crit_edge, label %if.then57, !dbg !1990, !prof !381

land.rhs46.if.then93_crit_edge:                   ; preds = %land.rhs46
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1990
  br label %if.then93, !dbg !1990

if.then57:                                        ; preds = %land.rhs46
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1990
  store i1 true, ptr @select_comparison_fn.__already_done.21, align 1, !dbg !1990
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1206, i32 noundef 9, ptr noundef null) #24, !dbg !1990
  %gcov_ctr144 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 6), align 16, !dbg !1990
  %5 = add i64 %gcov_ctr144, 1, !dbg !1990
  store i64 %5, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 6), align 16, !dbg !1990
  %gcov_ctr145 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 7), align 8, !dbg !1990
  %6 = add i64 %gcov_ctr145, 1, !dbg !1990
  store i64 %6, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 7), align 8, !dbg !1990
  br label %if.then93, !dbg !1990

if.then93:                                        ; preds = %if.then57, %land.rhs46.if.then93_crit_edge
  %gcov_ctr147 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 9), align 8, !dbg !1991
  %7 = add i64 %gcov_ctr147, 1, !dbg !1991
  store i64 %7, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 9), align 8, !dbg !1991
  br label %cleanup, !dbg !1991

sw.epilog:                                        ; preds = %if.end37.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %.sink = phi ptr [ @__llvm_gcov_ctr.157, %entry.sw.epilog_crit_edge ], [ getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 8), %if.end37.sw.epilog_crit_edge ]
  %pred_func_index.0 = phi i32 [ -1, %entry.sw.epilog_crit_edge ], [ %sub, %if.end37.sw.epilog_crit_edge ], !dbg !1992
  %8 = ptrtoint ptr %.sink to i32, !dbg !1992
  call void @__asan_load8_noabort(i32 %8), !dbg !1992
  %gcov_ctr146 = load i64, ptr %.sink, align 16, !dbg !1992
  %9 = add i64 %gcov_ctr146, 1, !dbg !1992
  store i64 %9, ptr %.sink, align 16, !dbg !1992
  %10 = zext i32 %field_size to i64, !dbg !1993
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.249), !dbg !1993
  switch i32 %field_size, label %sw.epilog.cleanup_crit_edge [
    i32 8, label %sw.bb95
    i32 4, label %sw.bb104
    i32 2, label %sw.bb115
    i32 1, label %sw.bb126
  ], !dbg !1993

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1993
  br label %cleanup, !dbg !1993

sw.bb95:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pred_func_index.0), !dbg !1994
  %cmp96 = icmp slt i32 %pred_func_index.0, 0, !dbg !1994
  br i1 %cmp96, label %if.then97, label %if.else, !dbg !1995

if.then97:                                        ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1996
  %gcov_ctr148 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 10), align 16, !dbg !1996
  %11 = add i64 %gcov_ctr148, 1, !dbg !1996
  store i64 %11, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 10), align 16, !dbg !1996
  br label %cleanup, !dbg !1997

if.else:                                          ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %field_is_signed), !dbg !1998
  %tobool98.not = icmp eq i32 %field_is_signed, 0, !dbg !1998
  br i1 %tobool98.not, label %if.else100, label %if.then99, !dbg !1998

if.then99:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22, !dbg !1999
  %gcov_ctr150 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 12), align 16, !dbg !1999
  %12 = add i64 %gcov_ctr150, 1, !dbg !1999
  store i64 %12, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 12), align 16, !dbg !1999
  %arrayidx = getelementptr [5 x ptr], ptr @pred_funcs_s64, i32 0, i32 %pred_func_index.0, !dbg !2000
  %13 = ptrtoint ptr %arrayidx to i32, !dbg !2000
  call void @__asan_load4_noabort(i32 %13), !dbg !2000
  %14 = load ptr, ptr %arrayidx, align 4, !dbg !2000
  br label %cleanup, !dbg !2001

if.else100:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2002
  %gcov_ctr149 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 11), align 8, !dbg !2002
  %15 = add i64 %gcov_ctr149, 1, !dbg !2002
  store i64 %15, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 11), align 8, !dbg !2002
  %arrayidx101 = getelementptr [5 x ptr], ptr @pred_funcs_u64, i32 0, i32 %pred_func_index.0, !dbg !2003
  %16 = ptrtoint ptr %arrayidx101 to i32, !dbg !2003
  call void @__asan_load4_noabort(i32 %16), !dbg !2003
  %17 = load ptr, ptr %arrayidx101, align 4, !dbg !2003
  br label %cleanup

sw.bb104:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pred_func_index.0), !dbg !2004
  %cmp105 = icmp slt i32 %pred_func_index.0, 0, !dbg !2004
  br i1 %cmp105, label %if.then106, label %if.else107, !dbg !2005

if.then106:                                       ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2006
  %gcov_ctr151 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 13), align 8, !dbg !2006
  %18 = add i64 %gcov_ctr151, 1, !dbg !2006
  store i64 %18, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 13), align 8, !dbg !2006
  br label %cleanup, !dbg !2007

if.else107:                                       ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %field_is_signed), !dbg !2008
  %tobool108.not = icmp eq i32 %field_is_signed, 0, !dbg !2008
  br i1 %tobool108.not, label %if.else111, label %if.then109, !dbg !2008

if.then109:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2009
  %gcov_ctr153 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 15), align 8, !dbg !2009
  %19 = add i64 %gcov_ctr153, 1, !dbg !2009
  store i64 %19, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 15), align 8, !dbg !2009
  %arrayidx110 = getelementptr [5 x ptr], ptr @pred_funcs_s32, i32 0, i32 %pred_func_index.0, !dbg !2010
  %20 = ptrtoint ptr %arrayidx110 to i32, !dbg !2010
  call void @__asan_load4_noabort(i32 %20), !dbg !2010
  %21 = load ptr, ptr %arrayidx110, align 4, !dbg !2010
  br label %cleanup, !dbg !2011

if.else111:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2012
  %gcov_ctr152 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 14), align 16, !dbg !2012
  %22 = add i64 %gcov_ctr152, 1, !dbg !2012
  store i64 %22, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 14), align 16, !dbg !2012
  %arrayidx112 = getelementptr [5 x ptr], ptr @pred_funcs_u32, i32 0, i32 %pred_func_index.0, !dbg !2013
  %23 = ptrtoint ptr %arrayidx112 to i32, !dbg !2013
  call void @__asan_load4_noabort(i32 %23), !dbg !2013
  %24 = load ptr, ptr %arrayidx112, align 4, !dbg !2013
  br label %cleanup

sw.bb115:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pred_func_index.0), !dbg !2014
  %cmp116 = icmp slt i32 %pred_func_index.0, 0, !dbg !2014
  br i1 %cmp116, label %if.then117, label %if.else118, !dbg !2015

if.then117:                                       ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2016
  %gcov_ctr154 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 16), align 16, !dbg !2016
  %25 = add i64 %gcov_ctr154, 1, !dbg !2016
  store i64 %25, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 16), align 16, !dbg !2016
  br label %cleanup, !dbg !2017

if.else118:                                       ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %field_is_signed), !dbg !2018
  %tobool119.not = icmp eq i32 %field_is_signed, 0, !dbg !2018
  br i1 %tobool119.not, label %if.else122, label %if.then120, !dbg !2018

if.then120:                                       ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2019
  %gcov_ctr156 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 18), align 16, !dbg !2019
  %26 = add i64 %gcov_ctr156, 1, !dbg !2019
  store i64 %26, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 18), align 16, !dbg !2019
  %arrayidx121 = getelementptr [5 x ptr], ptr @pred_funcs_s16, i32 0, i32 %pred_func_index.0, !dbg !2020
  %27 = ptrtoint ptr %arrayidx121 to i32, !dbg !2020
  call void @__asan_load4_noabort(i32 %27), !dbg !2020
  %28 = load ptr, ptr %arrayidx121, align 4, !dbg !2020
  br label %cleanup, !dbg !2021

if.else122:                                       ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2022
  %gcov_ctr155 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 17), align 8, !dbg !2022
  %29 = add i64 %gcov_ctr155, 1, !dbg !2022
  store i64 %29, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 17), align 8, !dbg !2022
  %arrayidx123 = getelementptr [5 x ptr], ptr @pred_funcs_u16, i32 0, i32 %pred_func_index.0, !dbg !2023
  %30 = ptrtoint ptr %arrayidx123 to i32, !dbg !2023
  call void @__asan_load4_noabort(i32 %30), !dbg !2023
  %31 = load ptr, ptr %arrayidx123, align 4, !dbg !2023
  br label %cleanup

sw.bb126:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pred_func_index.0), !dbg !2024
  %cmp127 = icmp slt i32 %pred_func_index.0, 0, !dbg !2024
  br i1 %cmp127, label %if.then128, label %if.else129, !dbg !2025

if.then128:                                       ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2026
  %gcov_ctr157 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 19), align 8, !dbg !2026
  %32 = add i64 %gcov_ctr157, 1, !dbg !2026
  store i64 %32, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 19), align 8, !dbg !2026
  br label %cleanup, !dbg !2027

if.else129:                                       ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %field_is_signed), !dbg !2028
  %tobool130.not = icmp eq i32 %field_is_signed, 0, !dbg !2028
  br i1 %tobool130.not, label %if.else133, label %if.then131, !dbg !2028

if.then131:                                       ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2029
  %gcov_ctr159 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 21), align 8, !dbg !2029
  %33 = add i64 %gcov_ctr159, 1, !dbg !2029
  store i64 %33, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 21), align 8, !dbg !2029
  %arrayidx132 = getelementptr [5 x ptr], ptr @pred_funcs_s8, i32 0, i32 %pred_func_index.0, !dbg !2030
  %34 = ptrtoint ptr %arrayidx132 to i32, !dbg !2030
  call void @__asan_load4_noabort(i32 %34), !dbg !2030
  %35 = load ptr, ptr %arrayidx132, align 4, !dbg !2030
  br label %cleanup, !dbg !2031

if.else133:                                       ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2032
  %gcov_ctr158 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 20), align 16, !dbg !2032
  %36 = add i64 %gcov_ctr158, 1, !dbg !2032
  store i64 %36, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.157, i32 0, i32 20), align 16, !dbg !2032
  %arrayidx134 = getelementptr [5 x ptr], ptr @pred_funcs_u8, i32 0, i32 %pred_func_index.0, !dbg !2033
  %37 = ptrtoint ptr %arrayidx134 to i32, !dbg !2033
  call void @__asan_load4_noabort(i32 %37), !dbg !2033
  %38 = load ptr, ptr %arrayidx134, align 4, !dbg !2033
  br label %cleanup

cleanup:                                          ; preds = %if.else133, %if.then131, %if.then128, %if.else122, %if.then120, %if.then117, %if.else111, %if.then109, %if.then106, %if.else100, %if.then99, %if.then97, %sw.epilog.cleanup_crit_edge, %if.then93, %if.then36
  %retval.0 = phi ptr [ null, %if.then36 ], [ null, %if.then93 ], [ null, %sw.epilog.cleanup_crit_edge ], [ @filter_pred_8, %if.then128 ], [ %35, %if.then131 ], [ %38, %if.else133 ], [ @filter_pred_16, %if.then117 ], [ %28, %if.then120 ], [ %31, %if.else122 ], [ @filter_pred_32, %if.then106 ], [ %21, %if.then109 ], [ %24, %if.else111 ], [ @filter_pred_64, %if.then97 ], [ %14, %if.then99 ], [ %17, %if.else100 ], !dbg !1992
  ret ptr %retval.0, !dbg !2034
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @regex_match_full(ptr nocapture noundef readonly %str, ptr nocapture noundef readonly %r, i32 noundef %len) #5 align 64 !dbg !2035 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2036
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len), !dbg !2037
  %tobool.not = icmp eq i32 %len, 0, !dbg !2037
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !2038

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2039
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.158, align 8, !dbg !2039
  %0 = add i64 %gcov_ctr, 1, !dbg !2039
  store i64 %0, ptr @__llvm_gcov_ctr.158, align 8, !dbg !2039
  %call = tail call i32 @strcmp(ptr noundef %str, ptr noundef %r) #23, !dbg !2040
  br label %return, !dbg !2041

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2042
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.158, i32 0, i32 1), align 8, !dbg !2042
  %1 = add i64 %gcov_ctr6, 1, !dbg !2042
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.158, i32 0, i32 1), align 8, !dbg !2042
  %call3 = tail call i32 @strncmp(ptr noundef %str, ptr noundef %r, i32 noundef %len), !dbg !2043
  br label %return, !dbg !2044

return:                                           ; preds = %if.end, %if.then
  %retval.0.in.in = phi i32 [ %call3, %if.end ], [ %call, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in.in), !dbg !2045
  %retval.0.in = icmp eq i32 %retval.0.in.in, 0, !dbg !2045
  %retval.0 = zext i1 %retval.0.in to i32, !dbg !2045
  ret i32 %retval.0, !dbg !2046
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @regex_match_front(ptr nocapture noundef readonly %str, ptr nocapture noundef readonly %r, i32 noundef %len) #5 align 64 !dbg !2047 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len), !dbg !2049
  %tobool.not = icmp eq i32 %len, 0, !dbg !2049
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true, !dbg !2050

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2050
  br label %if.end, !dbg !2050

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.159, align 16, !dbg !2051
  %0 = add i64 %gcov_ctr, 1, !dbg !2051
  store i64 %0, ptr @__llvm_gcov_ctr.159, align 16, !dbg !2051
  %len1 = getelementptr inbounds %struct.regex, ptr %r, i32 0, i32 1, !dbg !2052
  %1 = ptrtoint ptr %len1 to i32, !dbg !2052
  call void @__asan_load4_noabort(i32 %1), !dbg !2052
  %2 = load i32, ptr %len1, align 4, !dbg !2052
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %len), !dbg !2053
  %cmp = icmp sgt i32 %2, %len, !dbg !2053
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge, !dbg !2049

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2049
  br label %if.end, !dbg !2049

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2054
  %gcov_ctr4 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.159, i32 0, i32 1), align 8, !dbg !2054
  %3 = add i64 %gcov_ctr4, 1, !dbg !2054
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.159, i32 0, i32 1), align 8, !dbg !2054
  br label %return, !dbg !2054

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %gcov_ctr5 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.159, i32 0, i32 2), align 16, !dbg !2055
  %4 = add i64 %gcov_ctr5, 1, !dbg !2055
  store i64 %4, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.159, i32 0, i32 2), align 16, !dbg !2055
  %len2 = getelementptr inbounds %struct.regex, ptr %r, i32 0, i32 1, !dbg !2056
  %5 = ptrtoint ptr %len2 to i32, !dbg !2056
  call void @__asan_load4_noabort(i32 %5), !dbg !2056
  %6 = load i32, ptr %len2, align 4, !dbg !2056
  %call = tail call i32 @strncmp(ptr noundef %str, ptr noundef %r, i32 noundef %6), !dbg !2057
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !2058
  %cmp3 = icmp eq i32 %call, 0, !dbg !2058
  %conv = zext i1 %cmp3 to i32, !dbg !2058
  br label %return, !dbg !2059

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %conv, %if.end ], !dbg !2060
  ret i32 %retval.0, !dbg !2061
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regex_match_middle(ptr noundef %str, ptr noundef %r, i32 noundef %len) #3 align 64 !dbg !2062 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2063
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len), !dbg !2064
  %tobool.not = icmp eq i32 %len, 0, !dbg !2064
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !2065

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2066
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.160, align 8, !dbg !2066
  %0 = add i64 %gcov_ctr, 1, !dbg !2066
  store i64 %0, ptr @__llvm_gcov_ctr.160, align 8, !dbg !2066
  %call = tail call ptr @strstr(ptr noundef %str, ptr noundef %r), !dbg !2067
  br label %return, !dbg !2068

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2069
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.160, i32 0, i32 1), align 8, !dbg !2069
  %1 = add i64 %gcov_ctr6, 1, !dbg !2069
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.160, i32 0, i32 1), align 8, !dbg !2069
  %call3 = tail call ptr @strnstr(ptr noundef %str, ptr noundef %r, i32 noundef %len) #24, !dbg !2070
  br label %return, !dbg !2071

return:                                           ; preds = %if.end, %if.then
  %retval.0.in.in = phi ptr [ %call3, %if.end ], [ %call, %if.then ]
  %retval.0.in = icmp ne ptr %retval.0.in.in, null, !dbg !2072
  %retval.0 = zext i1 %retval.0.in to i32, !dbg !2072
  ret i32 %retval.0, !dbg !2073
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @regex_match_end(ptr nocapture noundef readonly %str, ptr nocapture noundef readonly %r, i32 noundef %len) #5 align 64 !dbg !2074 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2075
  %sub = add i32 %len, -1, !dbg !2076
  %len1 = getelementptr inbounds %struct.regex, ptr %r, i32 0, i32 1, !dbg !2077
  %0 = ptrtoint ptr %len1 to i32, !dbg !2077
  call void @__asan_load4_noabort(i32 %0), !dbg !2077
  %1 = load i32, ptr %len1, align 4, !dbg !2077
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %1), !dbg !2078
  %cmp.not = icmp slt i32 %sub, %1, !dbg !2078
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true, !dbg !2079

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2079
  br label %if.end, !dbg !2079

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.161, align 16, !dbg !2080
  %2 = add i64 %gcov_ctr, 1, !dbg !2080
  store i64 %2, ptr @__llvm_gcov_ctr.161, align 16, !dbg !2080
  %add.ptr = getelementptr i8, ptr %str, i32 %sub, !dbg !2081
  %idx.neg = sub i32 0, %1, !dbg !2082
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %idx.neg, !dbg !2082
  %bcmp = tail call i32 @bcmp(ptr %add.ptr3, ptr %r, i32 %1) #23, !dbg !2083
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp), !dbg !2084
  %cmp5 = icmp eq i32 %bcmp, 0, !dbg !2084
  br i1 %cmp5, label %if.then, label %land.lhs.true.if.end_crit_edge, !dbg !2085

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2085
  br label %if.end, !dbg !2085

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2086
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.161, i32 0, i32 1), align 8, !dbg !2086
  %3 = add i64 %gcov_ctr6, 1, !dbg !2086
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.161, i32 0, i32 1), align 8, !dbg !2086
  br label %cleanup, !dbg !2086

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %gcov_ctr7 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.161, i32 0, i32 2), align 16, !dbg !2087
  %4 = add i64 %gcov_ctr7, 1, !dbg !2087
  store i64 %4, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.161, i32 0, i32 2), align 16, !dbg !2087
  br label %cleanup, !dbg !2087

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end ], !dbg !2088
  ret i32 %retval.0, !dbg !2089
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @regex_match_glob(ptr noundef %str, ptr noundef %r, i32 noundef %len) #5 align 64 !dbg !2090 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2091
  %call = tail call zeroext i1 @glob_match(ptr noundef %r, ptr noundef %str) #29, !dbg !2092
  %__llvm_gcov_ctr.162. = select i1 %call, ptr @__llvm_gcov_ctr.162, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.162, i32 0, i32 1), !dbg !2093
  %. = zext i1 %call to i32, !dbg !2093
  %0 = ptrtoint ptr %__llvm_gcov_ctr.162. to i32, !dbg !2093
  call void @__asan_load8_noabort(i32 %0), !dbg !2093
  %gcov_ctr1 = load i64, ptr %__llvm_gcov_ctr.162., align 8, !dbg !2093
  %1 = add i64 %gcov_ctr1, 1, !dbg !2093
  store i64 %1, ptr %__llvm_gcov_ctr.162., align 8, !dbg !2093
  ret i32 %., !dbg !2094
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnstr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local zeroext i1 @glob_match(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_64(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2095 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2096
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.167, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.167, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2097
  %1 = ptrtoint ptr %offset to i32, !dbg !2097
  call void @__asan_load4_noabort(i32 %1), !dbg !2097
  %2 = load i32, ptr %offset, align 4, !dbg !2097
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2097
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2097
  %3 = ptrtoint ptr %val1 to i32, !dbg !2097
  call void @__asan_load8_noabort(i32 %3), !dbg !2097
  %4 = load i64, ptr %val1, align 8, !dbg !2097
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2097
  call void @__asan_load8_noabort(i32 %5), !dbg !2097
  %6 = load i64, ptr %add.ptr, align 8, !dbg !2097
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %6), !dbg !2097
  %cmp = icmp eq i64 %4, %6, !dbg !2097
  %conv = zext i1 %cmp to i32, !dbg !2097
  %not = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 6, !dbg !2097
  %7 = ptrtoint ptr %not to i32, !dbg !2097
  call void @__asan_load4_noabort(i32 %7), !dbg !2097
  %8 = load i32, ptr %not, align 8, !dbg !2097
  %xor = xor i32 %8, %conv, !dbg !2097
  ret i32 %xor, !dbg !2097
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_32(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2098 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2099
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.168, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.168, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2100
  %1 = ptrtoint ptr %offset to i32, !dbg !2100
  call void @__asan_load4_noabort(i32 %1), !dbg !2100
  %2 = load i32, ptr %offset, align 4, !dbg !2100
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2100
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2100
  %3 = ptrtoint ptr %val1 to i32, !dbg !2100
  call void @__asan_load8_noabort(i32 %3), !dbg !2100
  %4 = load i64, ptr %val1, align 8, !dbg !2100
  %conv = trunc i64 %4 to i32, !dbg !2100
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2100
  call void @__asan_load4_noabort(i32 %5), !dbg !2100
  %6 = load i32, ptr %add.ptr, align 4, !dbg !2100
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv), !dbg !2100
  %cmp = icmp eq i32 %6, %conv, !dbg !2100
  %conv2 = zext i1 %cmp to i32, !dbg !2100
  %not = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 6, !dbg !2100
  %7 = ptrtoint ptr %not to i32, !dbg !2100
  call void @__asan_load4_noabort(i32 %7), !dbg !2100
  %8 = load i32, ptr %not, align 8, !dbg !2100
  %xor = xor i32 %8, %conv2, !dbg !2100
  ret i32 %xor, !dbg !2100
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_16(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2101 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2102
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.169, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.169, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2103
  %1 = ptrtoint ptr %offset to i32, !dbg !2103
  call void @__asan_load4_noabort(i32 %1), !dbg !2103
  %2 = load i32, ptr %offset, align 4, !dbg !2103
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2103
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2103
  %3 = ptrtoint ptr %val1 to i32, !dbg !2103
  call void @__asan_load8_noabort(i32 %3), !dbg !2103
  %4 = load i64, ptr %val1, align 8, !dbg !2103
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2103
  call void @__asan_load2_noabort(i32 %5), !dbg !2103
  %6 = load i16, ptr %add.ptr, align 2, !dbg !2103
  %7 = trunc i64 %4 to i16, !dbg !2103
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %7), !dbg !2103
  %cmp = icmp eq i16 %6, %7, !dbg !2103
  %conv4 = zext i1 %cmp to i32, !dbg !2103
  %not = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 6, !dbg !2103
  %8 = ptrtoint ptr %not to i32, !dbg !2103
  call void @__asan_load4_noabort(i32 %8), !dbg !2103
  %9 = load i32, ptr %not, align 8, !dbg !2103
  %xor = xor i32 %9, %conv4, !dbg !2103
  ret i32 %xor, !dbg !2103
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_8(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2104 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2105
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.170, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.170, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2106
  %1 = ptrtoint ptr %offset to i32, !dbg !2106
  call void @__asan_load4_noabort(i32 %1), !dbg !2106
  %2 = load i32, ptr %offset, align 4, !dbg !2106
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2106
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2106
  %3 = ptrtoint ptr %val1 to i32, !dbg !2106
  call void @__asan_load8_noabort(i32 %3), !dbg !2106
  %4 = load i64, ptr %val1, align 8, !dbg !2106
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2106
  call void @__asan_load1_noabort(i32 %5), !dbg !2106
  %6 = load i8, ptr %add.ptr, align 1, !dbg !2106
  %7 = trunc i64 %4 to i8, !dbg !2106
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %7), !dbg !2106
  %cmp = icmp eq i8 %6, %7, !dbg !2106
  %conv4 = zext i1 %cmp to i32, !dbg !2106
  %not = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 6, !dbg !2106
  %8 = ptrtoint ptr %not to i32, !dbg !2106
  call void @__asan_load4_noabort(i32 %8), !dbg !2106
  %9 = load i32, ptr %not, align 8, !dbg !2106
  %xor = xor i32 %9, %conv4, !dbg !2106
  ret i32 %xor, !dbg !2106
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LE_s64(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2107 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2108
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.171, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.171, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2109
  %1 = ptrtoint ptr %offset to i32, !dbg !2109
  call void @__asan_load4_noabort(i32 %1), !dbg !2109
  %2 = load i32, ptr %offset, align 4, !dbg !2109
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2109
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2109
  %3 = ptrtoint ptr %val1 to i32, !dbg !2109
  call void @__asan_load8_noabort(i32 %3), !dbg !2109
  %4 = load i64, ptr %val1, align 8, !dbg !2109
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2109
  call void @__asan_load8_noabort(i32 %5), !dbg !2109
  %6 = load i64, ptr %add.ptr, align 8, !dbg !2109
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %4), !dbg !2109
  %cmp = icmp sle i64 %6, %4, !dbg !2109
  %conv = zext i1 %cmp to i32, !dbg !2109
  ret i32 %conv, !dbg !2109
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LT_s64(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2110 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2111
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.172, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.172, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2112
  %1 = ptrtoint ptr %offset to i32, !dbg !2112
  call void @__asan_load4_noabort(i32 %1), !dbg !2112
  %2 = load i32, ptr %offset, align 4, !dbg !2112
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2112
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2112
  %3 = ptrtoint ptr %val1 to i32, !dbg !2112
  call void @__asan_load8_noabort(i32 %3), !dbg !2112
  %4 = load i64, ptr %val1, align 8, !dbg !2112
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2112
  call void @__asan_load8_noabort(i32 %5), !dbg !2112
  %6 = load i64, ptr %add.ptr, align 8, !dbg !2112
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %4), !dbg !2112
  %cmp = icmp slt i64 %6, %4, !dbg !2112
  %conv = zext i1 %cmp to i32, !dbg !2112
  ret i32 %conv, !dbg !2112
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GE_s64(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2113 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2114
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.173, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.173, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2115
  %1 = ptrtoint ptr %offset to i32, !dbg !2115
  call void @__asan_load4_noabort(i32 %1), !dbg !2115
  %2 = load i32, ptr %offset, align 4, !dbg !2115
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2115
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2115
  %3 = ptrtoint ptr %val1 to i32, !dbg !2115
  call void @__asan_load8_noabort(i32 %3), !dbg !2115
  %4 = load i64, ptr %val1, align 8, !dbg !2115
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2115
  call void @__asan_load8_noabort(i32 %5), !dbg !2115
  %6 = load i64, ptr %add.ptr, align 8, !dbg !2115
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %4), !dbg !2115
  %cmp = icmp sge i64 %6, %4, !dbg !2115
  %conv = zext i1 %cmp to i32, !dbg !2115
  ret i32 %conv, !dbg !2115
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GT_s64(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2116 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2117
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.174, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.174, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2118
  %1 = ptrtoint ptr %offset to i32, !dbg !2118
  call void @__asan_load4_noabort(i32 %1), !dbg !2118
  %2 = load i32, ptr %offset, align 4, !dbg !2118
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2118
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2118
  %3 = ptrtoint ptr %val1 to i32, !dbg !2118
  call void @__asan_load8_noabort(i32 %3), !dbg !2118
  %4 = load i64, ptr %val1, align 8, !dbg !2118
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2118
  call void @__asan_load8_noabort(i32 %5), !dbg !2118
  %6 = load i64, ptr %add.ptr, align 8, !dbg !2118
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %4), !dbg !2118
  %cmp = icmp sgt i64 %6, %4, !dbg !2118
  %conv = zext i1 %cmp to i32, !dbg !2118
  ret i32 %conv, !dbg !2118
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_BAND_s64(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2119 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2120
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.175, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.175, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2121
  %1 = ptrtoint ptr %offset to i32, !dbg !2121
  call void @__asan_load4_noabort(i32 %1), !dbg !2121
  %2 = load i32, ptr %offset, align 4, !dbg !2121
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2121
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2121
  %3 = ptrtoint ptr %val1 to i32, !dbg !2121
  call void @__asan_load8_noabort(i32 %3), !dbg !2121
  %4 = load i64, ptr %val1, align 8, !dbg !2121
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2121
  call void @__asan_load8_noabort(i32 %5), !dbg !2121
  %6 = load i64, ptr %add.ptr, align 8, !dbg !2121
  %and = and i64 %6, %4, !dbg !2121
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and), !dbg !2121
  %tobool = icmp ne i64 %and, 0, !dbg !2121
  %lnot.ext = zext i1 %tobool to i32, !dbg !2121
  ret i32 %lnot.ext, !dbg !2121
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LE_u64(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2122 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2123
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.176, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.176, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2124
  %1 = ptrtoint ptr %offset to i32, !dbg !2124
  call void @__asan_load4_noabort(i32 %1), !dbg !2124
  %2 = load i32, ptr %offset, align 4, !dbg !2124
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2124
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2124
  %3 = ptrtoint ptr %val1 to i32, !dbg !2124
  call void @__asan_load8_noabort(i32 %3), !dbg !2124
  %4 = load i64, ptr %val1, align 8, !dbg !2124
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2124
  call void @__asan_load8_noabort(i32 %5), !dbg !2124
  %6 = load i64, ptr %add.ptr, align 8, !dbg !2124
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %4), !dbg !2124
  %cmp = icmp ule i64 %6, %4, !dbg !2124
  %conv = zext i1 %cmp to i32, !dbg !2124
  ret i32 %conv, !dbg !2124
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LT_u64(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2125 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2126
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.177, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.177, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2127
  %1 = ptrtoint ptr %offset to i32, !dbg !2127
  call void @__asan_load4_noabort(i32 %1), !dbg !2127
  %2 = load i32, ptr %offset, align 4, !dbg !2127
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2127
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2127
  %3 = ptrtoint ptr %val1 to i32, !dbg !2127
  call void @__asan_load8_noabort(i32 %3), !dbg !2127
  %4 = load i64, ptr %val1, align 8, !dbg !2127
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2127
  call void @__asan_load8_noabort(i32 %5), !dbg !2127
  %6 = load i64, ptr %add.ptr, align 8, !dbg !2127
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %4), !dbg !2127
  %cmp = icmp ult i64 %6, %4, !dbg !2127
  %conv = zext i1 %cmp to i32, !dbg !2127
  ret i32 %conv, !dbg !2127
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GE_u64(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2128 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2129
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.178, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.178, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2130
  %1 = ptrtoint ptr %offset to i32, !dbg !2130
  call void @__asan_load4_noabort(i32 %1), !dbg !2130
  %2 = load i32, ptr %offset, align 4, !dbg !2130
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2130
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2130
  %3 = ptrtoint ptr %val1 to i32, !dbg !2130
  call void @__asan_load8_noabort(i32 %3), !dbg !2130
  %4 = load i64, ptr %val1, align 8, !dbg !2130
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2130
  call void @__asan_load8_noabort(i32 %5), !dbg !2130
  %6 = load i64, ptr %add.ptr, align 8, !dbg !2130
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %4), !dbg !2130
  %cmp = icmp uge i64 %6, %4, !dbg !2130
  %conv = zext i1 %cmp to i32, !dbg !2130
  ret i32 %conv, !dbg !2130
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GT_u64(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2131 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2132
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.179, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.179, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2133
  %1 = ptrtoint ptr %offset to i32, !dbg !2133
  call void @__asan_load4_noabort(i32 %1), !dbg !2133
  %2 = load i32, ptr %offset, align 4, !dbg !2133
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2133
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2133
  %3 = ptrtoint ptr %val1 to i32, !dbg !2133
  call void @__asan_load8_noabort(i32 %3), !dbg !2133
  %4 = load i64, ptr %val1, align 8, !dbg !2133
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2133
  call void @__asan_load8_noabort(i32 %5), !dbg !2133
  %6 = load i64, ptr %add.ptr, align 8, !dbg !2133
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %4), !dbg !2133
  %cmp = icmp ugt i64 %6, %4, !dbg !2133
  %conv = zext i1 %cmp to i32, !dbg !2133
  ret i32 %conv, !dbg !2133
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_BAND_u64(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2134 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2135
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.180, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.180, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2136
  %1 = ptrtoint ptr %offset to i32, !dbg !2136
  call void @__asan_load4_noabort(i32 %1), !dbg !2136
  %2 = load i32, ptr %offset, align 4, !dbg !2136
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2136
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2136
  %3 = ptrtoint ptr %val1 to i32, !dbg !2136
  call void @__asan_load8_noabort(i32 %3), !dbg !2136
  %4 = load i64, ptr %val1, align 8, !dbg !2136
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2136
  call void @__asan_load8_noabort(i32 %5), !dbg !2136
  %6 = load i64, ptr %add.ptr, align 8, !dbg !2136
  %and = and i64 %6, %4, !dbg !2136
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and), !dbg !2136
  %tobool = icmp ne i64 %and, 0, !dbg !2136
  %lnot.ext = zext i1 %tobool to i32, !dbg !2136
  ret i32 %lnot.ext, !dbg !2136
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LE_s32(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2137 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2138
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.181, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.181, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2139
  %1 = ptrtoint ptr %offset to i32, !dbg !2139
  call void @__asan_load4_noabort(i32 %1), !dbg !2139
  %2 = load i32, ptr %offset, align 4, !dbg !2139
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2139
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2139
  %3 = ptrtoint ptr %val1 to i32, !dbg !2139
  call void @__asan_load8_noabort(i32 %3), !dbg !2139
  %4 = load i64, ptr %val1, align 8, !dbg !2139
  %conv = trunc i64 %4 to i32, !dbg !2139
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2139
  call void @__asan_load4_noabort(i32 %5), !dbg !2139
  %6 = load i32, ptr %add.ptr, align 4, !dbg !2139
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv), !dbg !2139
  %cmp = icmp sle i32 %6, %conv, !dbg !2139
  %conv2 = zext i1 %cmp to i32, !dbg !2139
  ret i32 %conv2, !dbg !2139
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LT_s32(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2140 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2141
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.182, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.182, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2142
  %1 = ptrtoint ptr %offset to i32, !dbg !2142
  call void @__asan_load4_noabort(i32 %1), !dbg !2142
  %2 = load i32, ptr %offset, align 4, !dbg !2142
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2142
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2142
  %3 = ptrtoint ptr %val1 to i32, !dbg !2142
  call void @__asan_load8_noabort(i32 %3), !dbg !2142
  %4 = load i64, ptr %val1, align 8, !dbg !2142
  %conv = trunc i64 %4 to i32, !dbg !2142
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2142
  call void @__asan_load4_noabort(i32 %5), !dbg !2142
  %6 = load i32, ptr %add.ptr, align 4, !dbg !2142
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv), !dbg !2142
  %cmp = icmp slt i32 %6, %conv, !dbg !2142
  %conv2 = zext i1 %cmp to i32, !dbg !2142
  ret i32 %conv2, !dbg !2142
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GE_s32(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2143 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2144
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.183, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.183, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2145
  %1 = ptrtoint ptr %offset to i32, !dbg !2145
  call void @__asan_load4_noabort(i32 %1), !dbg !2145
  %2 = load i32, ptr %offset, align 4, !dbg !2145
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2145
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2145
  %3 = ptrtoint ptr %val1 to i32, !dbg !2145
  call void @__asan_load8_noabort(i32 %3), !dbg !2145
  %4 = load i64, ptr %val1, align 8, !dbg !2145
  %conv = trunc i64 %4 to i32, !dbg !2145
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2145
  call void @__asan_load4_noabort(i32 %5), !dbg !2145
  %6 = load i32, ptr %add.ptr, align 4, !dbg !2145
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv), !dbg !2145
  %cmp = icmp sge i32 %6, %conv, !dbg !2145
  %conv2 = zext i1 %cmp to i32, !dbg !2145
  ret i32 %conv2, !dbg !2145
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GT_s32(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2146 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2147
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.184, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.184, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2148
  %1 = ptrtoint ptr %offset to i32, !dbg !2148
  call void @__asan_load4_noabort(i32 %1), !dbg !2148
  %2 = load i32, ptr %offset, align 4, !dbg !2148
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2148
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2148
  %3 = ptrtoint ptr %val1 to i32, !dbg !2148
  call void @__asan_load8_noabort(i32 %3), !dbg !2148
  %4 = load i64, ptr %val1, align 8, !dbg !2148
  %conv = trunc i64 %4 to i32, !dbg !2148
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2148
  call void @__asan_load4_noabort(i32 %5), !dbg !2148
  %6 = load i32, ptr %add.ptr, align 4, !dbg !2148
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv), !dbg !2148
  %cmp = icmp sgt i32 %6, %conv, !dbg !2148
  %conv2 = zext i1 %cmp to i32, !dbg !2148
  ret i32 %conv2, !dbg !2148
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_BAND_s32(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2149 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2150
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.185, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.185, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2151
  %1 = ptrtoint ptr %offset to i32, !dbg !2151
  call void @__asan_load4_noabort(i32 %1), !dbg !2151
  %2 = load i32, ptr %offset, align 4, !dbg !2151
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2151
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2151
  %3 = ptrtoint ptr %val1 to i32, !dbg !2151
  call void @__asan_load8_noabort(i32 %3), !dbg !2151
  %4 = load i64, ptr %val1, align 8, !dbg !2151
  %conv = trunc i64 %4 to i32, !dbg !2151
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2151
  call void @__asan_load4_noabort(i32 %5), !dbg !2151
  %6 = load i32, ptr %add.ptr, align 4, !dbg !2151
  %and = and i32 %6, %conv, !dbg !2151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !2151
  %tobool = icmp ne i32 %and, 0, !dbg !2151
  %lnot.ext = zext i1 %tobool to i32, !dbg !2151
  ret i32 %lnot.ext, !dbg !2151
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LE_u32(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2152 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2153
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.186, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.186, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2154
  %1 = ptrtoint ptr %offset to i32, !dbg !2154
  call void @__asan_load4_noabort(i32 %1), !dbg !2154
  %2 = load i32, ptr %offset, align 4, !dbg !2154
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2154
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2154
  %3 = ptrtoint ptr %val1 to i32, !dbg !2154
  call void @__asan_load8_noabort(i32 %3), !dbg !2154
  %4 = load i64, ptr %val1, align 8, !dbg !2154
  %conv = trunc i64 %4 to i32, !dbg !2154
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2154
  call void @__asan_load4_noabort(i32 %5), !dbg !2154
  %6 = load i32, ptr %add.ptr, align 4, !dbg !2154
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv), !dbg !2154
  %cmp = icmp ule i32 %6, %conv, !dbg !2154
  %conv2 = zext i1 %cmp to i32, !dbg !2154
  ret i32 %conv2, !dbg !2154
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LT_u32(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2155 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2156
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.187, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.187, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2157
  %1 = ptrtoint ptr %offset to i32, !dbg !2157
  call void @__asan_load4_noabort(i32 %1), !dbg !2157
  %2 = load i32, ptr %offset, align 4, !dbg !2157
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2157
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2157
  %3 = ptrtoint ptr %val1 to i32, !dbg !2157
  call void @__asan_load8_noabort(i32 %3), !dbg !2157
  %4 = load i64, ptr %val1, align 8, !dbg !2157
  %conv = trunc i64 %4 to i32, !dbg !2157
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2157
  call void @__asan_load4_noabort(i32 %5), !dbg !2157
  %6 = load i32, ptr %add.ptr, align 4, !dbg !2157
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv), !dbg !2157
  %cmp = icmp ult i32 %6, %conv, !dbg !2157
  %conv2 = zext i1 %cmp to i32, !dbg !2157
  ret i32 %conv2, !dbg !2157
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GE_u32(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2158 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2159
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.188, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.188, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2160
  %1 = ptrtoint ptr %offset to i32, !dbg !2160
  call void @__asan_load4_noabort(i32 %1), !dbg !2160
  %2 = load i32, ptr %offset, align 4, !dbg !2160
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2160
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2160
  %3 = ptrtoint ptr %val1 to i32, !dbg !2160
  call void @__asan_load8_noabort(i32 %3), !dbg !2160
  %4 = load i64, ptr %val1, align 8, !dbg !2160
  %conv = trunc i64 %4 to i32, !dbg !2160
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2160
  call void @__asan_load4_noabort(i32 %5), !dbg !2160
  %6 = load i32, ptr %add.ptr, align 4, !dbg !2160
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv), !dbg !2160
  %cmp = icmp uge i32 %6, %conv, !dbg !2160
  %conv2 = zext i1 %cmp to i32, !dbg !2160
  ret i32 %conv2, !dbg !2160
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GT_u32(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2161 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2162
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.189, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.189, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2163
  %1 = ptrtoint ptr %offset to i32, !dbg !2163
  call void @__asan_load4_noabort(i32 %1), !dbg !2163
  %2 = load i32, ptr %offset, align 4, !dbg !2163
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2163
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2163
  %3 = ptrtoint ptr %val1 to i32, !dbg !2163
  call void @__asan_load8_noabort(i32 %3), !dbg !2163
  %4 = load i64, ptr %val1, align 8, !dbg !2163
  %conv = trunc i64 %4 to i32, !dbg !2163
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2163
  call void @__asan_load4_noabort(i32 %5), !dbg !2163
  %6 = load i32, ptr %add.ptr, align 4, !dbg !2163
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv), !dbg !2163
  %cmp = icmp ugt i32 %6, %conv, !dbg !2163
  %conv2 = zext i1 %cmp to i32, !dbg !2163
  ret i32 %conv2, !dbg !2163
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_BAND_u32(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2164 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2165
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.190, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.190, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2166
  %1 = ptrtoint ptr %offset to i32, !dbg !2166
  call void @__asan_load4_noabort(i32 %1), !dbg !2166
  %2 = load i32, ptr %offset, align 4, !dbg !2166
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2166
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2166
  %3 = ptrtoint ptr %val1 to i32, !dbg !2166
  call void @__asan_load8_noabort(i32 %3), !dbg !2166
  %4 = load i64, ptr %val1, align 8, !dbg !2166
  %conv = trunc i64 %4 to i32, !dbg !2166
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2166
  call void @__asan_load4_noabort(i32 %5), !dbg !2166
  %6 = load i32, ptr %add.ptr, align 4, !dbg !2166
  %and = and i32 %6, %conv, !dbg !2166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !2166
  %tobool = icmp ne i32 %and, 0, !dbg !2166
  %lnot.ext = zext i1 %tobool to i32, !dbg !2166
  ret i32 %lnot.ext, !dbg !2166
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LE_s16(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2167 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2168
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.191, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.191, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2169
  %1 = ptrtoint ptr %offset to i32, !dbg !2169
  call void @__asan_load4_noabort(i32 %1), !dbg !2169
  %2 = load i32, ptr %offset, align 4, !dbg !2169
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2169
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2169
  %3 = ptrtoint ptr %val1 to i32, !dbg !2169
  call void @__asan_load8_noabort(i32 %3), !dbg !2169
  %4 = load i64, ptr %val1, align 8, !dbg !2169
  %conv = trunc i64 %4 to i32, !dbg !2169
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2169
  call void @__asan_load2_noabort(i32 %5), !dbg !2169
  %6 = load i16, ptr %add.ptr, align 2, !dbg !2169
  %conv2 = sext i16 %6 to i32, !dbg !2169
  %sext = shl i32 %conv, 16, !dbg !2169
  %conv3 = ashr exact i32 %sext, 16, !dbg !2169
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv2), !dbg !2169
  %cmp = icmp sge i32 %conv3, %conv2, !dbg !2169
  %conv4 = zext i1 %cmp to i32, !dbg !2169
  ret i32 %conv4, !dbg !2169
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LT_s16(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2170 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2171
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.192, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.192, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2172
  %1 = ptrtoint ptr %offset to i32, !dbg !2172
  call void @__asan_load4_noabort(i32 %1), !dbg !2172
  %2 = load i32, ptr %offset, align 4, !dbg !2172
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2172
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2172
  %3 = ptrtoint ptr %val1 to i32, !dbg !2172
  call void @__asan_load8_noabort(i32 %3), !dbg !2172
  %4 = load i64, ptr %val1, align 8, !dbg !2172
  %conv = trunc i64 %4 to i32, !dbg !2172
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2172
  call void @__asan_load2_noabort(i32 %5), !dbg !2172
  %6 = load i16, ptr %add.ptr, align 2, !dbg !2172
  %conv2 = sext i16 %6 to i32, !dbg !2172
  %sext = shl i32 %conv, 16, !dbg !2172
  %conv3 = ashr exact i32 %sext, 16, !dbg !2172
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv2), !dbg !2172
  %cmp = icmp sgt i32 %conv3, %conv2, !dbg !2172
  %conv4 = zext i1 %cmp to i32, !dbg !2172
  ret i32 %conv4, !dbg !2172
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GE_s16(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2173 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2174
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.193, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.193, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2175
  %1 = ptrtoint ptr %offset to i32, !dbg !2175
  call void @__asan_load4_noabort(i32 %1), !dbg !2175
  %2 = load i32, ptr %offset, align 4, !dbg !2175
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2175
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2175
  %3 = ptrtoint ptr %val1 to i32, !dbg !2175
  call void @__asan_load8_noabort(i32 %3), !dbg !2175
  %4 = load i64, ptr %val1, align 8, !dbg !2175
  %conv = trunc i64 %4 to i32, !dbg !2175
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2175
  call void @__asan_load2_noabort(i32 %5), !dbg !2175
  %6 = load i16, ptr %add.ptr, align 2, !dbg !2175
  %conv2 = sext i16 %6 to i32, !dbg !2175
  %sext = shl i32 %conv, 16, !dbg !2175
  %conv3 = ashr exact i32 %sext, 16, !dbg !2175
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv2), !dbg !2175
  %cmp = icmp sle i32 %conv3, %conv2, !dbg !2175
  %conv4 = zext i1 %cmp to i32, !dbg !2175
  ret i32 %conv4, !dbg !2175
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GT_s16(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2176 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2177
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.194, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.194, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2178
  %1 = ptrtoint ptr %offset to i32, !dbg !2178
  call void @__asan_load4_noabort(i32 %1), !dbg !2178
  %2 = load i32, ptr %offset, align 4, !dbg !2178
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2178
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2178
  %3 = ptrtoint ptr %val1 to i32, !dbg !2178
  call void @__asan_load8_noabort(i32 %3), !dbg !2178
  %4 = load i64, ptr %val1, align 8, !dbg !2178
  %conv = trunc i64 %4 to i32, !dbg !2178
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2178
  call void @__asan_load2_noabort(i32 %5), !dbg !2178
  %6 = load i16, ptr %add.ptr, align 2, !dbg !2178
  %conv2 = sext i16 %6 to i32, !dbg !2178
  %sext = shl i32 %conv, 16, !dbg !2178
  %conv3 = ashr exact i32 %sext, 16, !dbg !2178
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv2), !dbg !2178
  %cmp = icmp slt i32 %conv3, %conv2, !dbg !2178
  %conv4 = zext i1 %cmp to i32, !dbg !2178
  ret i32 %conv4, !dbg !2178
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_BAND_s16(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2179 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2180
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.195, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.195, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2181
  %1 = ptrtoint ptr %offset to i32, !dbg !2181
  call void @__asan_load4_noabort(i32 %1), !dbg !2181
  %2 = load i32, ptr %offset, align 4, !dbg !2181
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2181
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2181
  %3 = ptrtoint ptr %val1 to i32, !dbg !2181
  call void @__asan_load8_noabort(i32 %3), !dbg !2181
  %4 = load i64, ptr %val1, align 8, !dbg !2181
  %conv = trunc i64 %4 to i32, !dbg !2181
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2181
  call void @__asan_load2_noabort(i32 %5), !dbg !2181
  %6 = load i16, ptr %add.ptr, align 2, !dbg !2181
  %conv2 = sext i16 %6 to i32, !dbg !2181
  %sext = shl i32 %conv, 16, !dbg !2181
  %conv3 = ashr exact i32 %sext, 16, !dbg !2181
  %and = and i32 %conv3, %conv2, !dbg !2181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !2181
  %tobool = icmp ne i32 %and, 0, !dbg !2181
  %lnot.ext = zext i1 %tobool to i32, !dbg !2181
  ret i32 %lnot.ext, !dbg !2181
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LE_u16(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2182 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2183
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.196, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.196, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2184
  %1 = ptrtoint ptr %offset to i32, !dbg !2184
  call void @__asan_load4_noabort(i32 %1), !dbg !2184
  %2 = load i32, ptr %offset, align 4, !dbg !2184
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2184
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2184
  %3 = ptrtoint ptr %val1 to i32, !dbg !2184
  call void @__asan_load8_noabort(i32 %3), !dbg !2184
  %4 = load i64, ptr %val1, align 8, !dbg !2184
  %conv = trunc i64 %4 to i32, !dbg !2184
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2184
  call void @__asan_load2_noabort(i32 %5), !dbg !2184
  %6 = load i16, ptr %add.ptr, align 2, !dbg !2184
  %conv2 = zext i16 %6 to i32, !dbg !2184
  %conv3 = and i32 %conv, 65535, !dbg !2184
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv2), !dbg !2184
  %cmp = icmp uge i32 %conv3, %conv2, !dbg !2184
  %conv4 = zext i1 %cmp to i32, !dbg !2184
  ret i32 %conv4, !dbg !2184
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LT_u16(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2185 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2186
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.197, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.197, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2187
  %1 = ptrtoint ptr %offset to i32, !dbg !2187
  call void @__asan_load4_noabort(i32 %1), !dbg !2187
  %2 = load i32, ptr %offset, align 4, !dbg !2187
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2187
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2187
  %3 = ptrtoint ptr %val1 to i32, !dbg !2187
  call void @__asan_load8_noabort(i32 %3), !dbg !2187
  %4 = load i64, ptr %val1, align 8, !dbg !2187
  %conv = trunc i64 %4 to i32, !dbg !2187
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2187
  call void @__asan_load2_noabort(i32 %5), !dbg !2187
  %6 = load i16, ptr %add.ptr, align 2, !dbg !2187
  %conv2 = zext i16 %6 to i32, !dbg !2187
  %conv3 = and i32 %conv, 65535, !dbg !2187
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv2), !dbg !2187
  %cmp = icmp ugt i32 %conv3, %conv2, !dbg !2187
  %conv4 = zext i1 %cmp to i32, !dbg !2187
  ret i32 %conv4, !dbg !2187
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GE_u16(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2188 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2189
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.198, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.198, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2190
  %1 = ptrtoint ptr %offset to i32, !dbg !2190
  call void @__asan_load4_noabort(i32 %1), !dbg !2190
  %2 = load i32, ptr %offset, align 4, !dbg !2190
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2190
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2190
  %3 = ptrtoint ptr %val1 to i32, !dbg !2190
  call void @__asan_load8_noabort(i32 %3), !dbg !2190
  %4 = load i64, ptr %val1, align 8, !dbg !2190
  %conv = trunc i64 %4 to i32, !dbg !2190
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2190
  call void @__asan_load2_noabort(i32 %5), !dbg !2190
  %6 = load i16, ptr %add.ptr, align 2, !dbg !2190
  %conv2 = zext i16 %6 to i32, !dbg !2190
  %conv3 = and i32 %conv, 65535, !dbg !2190
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv2), !dbg !2190
  %cmp = icmp ule i32 %conv3, %conv2, !dbg !2190
  %conv4 = zext i1 %cmp to i32, !dbg !2190
  ret i32 %conv4, !dbg !2190
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GT_u16(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2191 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2192
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.199, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.199, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2193
  %1 = ptrtoint ptr %offset to i32, !dbg !2193
  call void @__asan_load4_noabort(i32 %1), !dbg !2193
  %2 = load i32, ptr %offset, align 4, !dbg !2193
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2193
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2193
  %3 = ptrtoint ptr %val1 to i32, !dbg !2193
  call void @__asan_load8_noabort(i32 %3), !dbg !2193
  %4 = load i64, ptr %val1, align 8, !dbg !2193
  %conv = trunc i64 %4 to i32, !dbg !2193
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2193
  call void @__asan_load2_noabort(i32 %5), !dbg !2193
  %6 = load i16, ptr %add.ptr, align 2, !dbg !2193
  %conv2 = zext i16 %6 to i32, !dbg !2193
  %conv3 = and i32 %conv, 65535, !dbg !2193
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv2), !dbg !2193
  %cmp = icmp ult i32 %conv3, %conv2, !dbg !2193
  %conv4 = zext i1 %cmp to i32, !dbg !2193
  ret i32 %conv4, !dbg !2193
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_BAND_u16(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2194 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2195
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.200, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.200, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2196
  %1 = ptrtoint ptr %offset to i32, !dbg !2196
  call void @__asan_load4_noabort(i32 %1), !dbg !2196
  %2 = load i32, ptr %offset, align 4, !dbg !2196
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2196
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2196
  %3 = ptrtoint ptr %val1 to i32, !dbg !2196
  call void @__asan_load8_noabort(i32 %3), !dbg !2196
  %4 = load i64, ptr %val1, align 8, !dbg !2196
  %conv = trunc i64 %4 to i32, !dbg !2196
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2196
  call void @__asan_load2_noabort(i32 %5), !dbg !2196
  %6 = load i16, ptr %add.ptr, align 2, !dbg !2196
  %conv2 = zext i16 %6 to i32, !dbg !2196
  %and = and i32 %conv2, %conv, !dbg !2196
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !2196
  %tobool = icmp ne i32 %and, 0, !dbg !2196
  %lnot.ext = zext i1 %tobool to i32, !dbg !2196
  ret i32 %lnot.ext, !dbg !2196
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LE_s8(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2197 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2198
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.201, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.201, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2199
  %1 = ptrtoint ptr %offset to i32, !dbg !2199
  call void @__asan_load4_noabort(i32 %1), !dbg !2199
  %2 = load i32, ptr %offset, align 4, !dbg !2199
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2199
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2199
  %3 = ptrtoint ptr %val1 to i32, !dbg !2199
  call void @__asan_load8_noabort(i32 %3), !dbg !2199
  %4 = load i64, ptr %val1, align 8, !dbg !2199
  %conv = trunc i64 %4 to i32, !dbg !2199
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2199
  call void @__asan_load1_noabort(i32 %5), !dbg !2199
  %6 = load i8, ptr %add.ptr, align 1, !dbg !2199
  %conv2 = sext i8 %6 to i32, !dbg !2199
  %sext = shl i32 %conv, 24, !dbg !2199
  %conv3 = ashr exact i32 %sext, 24, !dbg !2199
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv2), !dbg !2199
  %cmp = icmp sge i32 %conv3, %conv2, !dbg !2199
  %conv4 = zext i1 %cmp to i32, !dbg !2199
  ret i32 %conv4, !dbg !2199
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LT_s8(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2200 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2201
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.202, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.202, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2202
  %1 = ptrtoint ptr %offset to i32, !dbg !2202
  call void @__asan_load4_noabort(i32 %1), !dbg !2202
  %2 = load i32, ptr %offset, align 4, !dbg !2202
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2202
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2202
  %3 = ptrtoint ptr %val1 to i32, !dbg !2202
  call void @__asan_load8_noabort(i32 %3), !dbg !2202
  %4 = load i64, ptr %val1, align 8, !dbg !2202
  %conv = trunc i64 %4 to i32, !dbg !2202
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2202
  call void @__asan_load1_noabort(i32 %5), !dbg !2202
  %6 = load i8, ptr %add.ptr, align 1, !dbg !2202
  %conv2 = sext i8 %6 to i32, !dbg !2202
  %sext = shl i32 %conv, 24, !dbg !2202
  %conv3 = ashr exact i32 %sext, 24, !dbg !2202
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv2), !dbg !2202
  %cmp = icmp sgt i32 %conv3, %conv2, !dbg !2202
  %conv4 = zext i1 %cmp to i32, !dbg !2202
  ret i32 %conv4, !dbg !2202
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GE_s8(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2203 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2204
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.203, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.203, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2205
  %1 = ptrtoint ptr %offset to i32, !dbg !2205
  call void @__asan_load4_noabort(i32 %1), !dbg !2205
  %2 = load i32, ptr %offset, align 4, !dbg !2205
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2205
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2205
  %3 = ptrtoint ptr %val1 to i32, !dbg !2205
  call void @__asan_load8_noabort(i32 %3), !dbg !2205
  %4 = load i64, ptr %val1, align 8, !dbg !2205
  %conv = trunc i64 %4 to i32, !dbg !2205
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2205
  call void @__asan_load1_noabort(i32 %5), !dbg !2205
  %6 = load i8, ptr %add.ptr, align 1, !dbg !2205
  %conv2 = sext i8 %6 to i32, !dbg !2205
  %sext = shl i32 %conv, 24, !dbg !2205
  %conv3 = ashr exact i32 %sext, 24, !dbg !2205
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv2), !dbg !2205
  %cmp = icmp sle i32 %conv3, %conv2, !dbg !2205
  %conv4 = zext i1 %cmp to i32, !dbg !2205
  ret i32 %conv4, !dbg !2205
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GT_s8(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2206 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2207
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.204, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.204, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2208
  %1 = ptrtoint ptr %offset to i32, !dbg !2208
  call void @__asan_load4_noabort(i32 %1), !dbg !2208
  %2 = load i32, ptr %offset, align 4, !dbg !2208
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2208
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2208
  %3 = ptrtoint ptr %val1 to i32, !dbg !2208
  call void @__asan_load8_noabort(i32 %3), !dbg !2208
  %4 = load i64, ptr %val1, align 8, !dbg !2208
  %conv = trunc i64 %4 to i32, !dbg !2208
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2208
  call void @__asan_load1_noabort(i32 %5), !dbg !2208
  %6 = load i8, ptr %add.ptr, align 1, !dbg !2208
  %conv2 = sext i8 %6 to i32, !dbg !2208
  %sext = shl i32 %conv, 24, !dbg !2208
  %conv3 = ashr exact i32 %sext, 24, !dbg !2208
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv2), !dbg !2208
  %cmp = icmp slt i32 %conv3, %conv2, !dbg !2208
  %conv4 = zext i1 %cmp to i32, !dbg !2208
  ret i32 %conv4, !dbg !2208
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_BAND_s8(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2209 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2210
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.205, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.205, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2211
  %1 = ptrtoint ptr %offset to i32, !dbg !2211
  call void @__asan_load4_noabort(i32 %1), !dbg !2211
  %2 = load i32, ptr %offset, align 4, !dbg !2211
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2211
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2211
  %3 = ptrtoint ptr %val1 to i32, !dbg !2211
  call void @__asan_load8_noabort(i32 %3), !dbg !2211
  %4 = load i64, ptr %val1, align 8, !dbg !2211
  %conv = trunc i64 %4 to i32, !dbg !2211
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2211
  call void @__asan_load1_noabort(i32 %5), !dbg !2211
  %6 = load i8, ptr %add.ptr, align 1, !dbg !2211
  %conv2 = sext i8 %6 to i32, !dbg !2211
  %sext = shl i32 %conv, 24, !dbg !2211
  %conv3 = ashr exact i32 %sext, 24, !dbg !2211
  %and = and i32 %conv3, %conv2, !dbg !2211
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !2211
  %tobool = icmp ne i32 %and, 0, !dbg !2211
  %lnot.ext = zext i1 %tobool to i32, !dbg !2211
  ret i32 %lnot.ext, !dbg !2211
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LE_u8(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2212 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2213
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.206, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.206, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2214
  %1 = ptrtoint ptr %offset to i32, !dbg !2214
  call void @__asan_load4_noabort(i32 %1), !dbg !2214
  %2 = load i32, ptr %offset, align 4, !dbg !2214
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2214
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2214
  %3 = ptrtoint ptr %val1 to i32, !dbg !2214
  call void @__asan_load8_noabort(i32 %3), !dbg !2214
  %4 = load i64, ptr %val1, align 8, !dbg !2214
  %conv = trunc i64 %4 to i32, !dbg !2214
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2214
  call void @__asan_load1_noabort(i32 %5), !dbg !2214
  %6 = load i8, ptr %add.ptr, align 1, !dbg !2214
  %conv2 = zext i8 %6 to i32, !dbg !2214
  %conv3 = and i32 %conv, 255, !dbg !2214
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv2), !dbg !2214
  %cmp = icmp uge i32 %conv3, %conv2, !dbg !2214
  %conv4 = zext i1 %cmp to i32, !dbg !2214
  ret i32 %conv4, !dbg !2214
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LT_u8(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2215 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2216
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.207, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.207, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2217
  %1 = ptrtoint ptr %offset to i32, !dbg !2217
  call void @__asan_load4_noabort(i32 %1), !dbg !2217
  %2 = load i32, ptr %offset, align 4, !dbg !2217
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2217
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2217
  %3 = ptrtoint ptr %val1 to i32, !dbg !2217
  call void @__asan_load8_noabort(i32 %3), !dbg !2217
  %4 = load i64, ptr %val1, align 8, !dbg !2217
  %conv = trunc i64 %4 to i32, !dbg !2217
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2217
  call void @__asan_load1_noabort(i32 %5), !dbg !2217
  %6 = load i8, ptr %add.ptr, align 1, !dbg !2217
  %conv2 = zext i8 %6 to i32, !dbg !2217
  %conv3 = and i32 %conv, 255, !dbg !2217
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv2), !dbg !2217
  %cmp = icmp ugt i32 %conv3, %conv2, !dbg !2217
  %conv4 = zext i1 %cmp to i32, !dbg !2217
  ret i32 %conv4, !dbg !2217
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GE_u8(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2218 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2219
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.208, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.208, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2220
  %1 = ptrtoint ptr %offset to i32, !dbg !2220
  call void @__asan_load4_noabort(i32 %1), !dbg !2220
  %2 = load i32, ptr %offset, align 4, !dbg !2220
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2220
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2220
  %3 = ptrtoint ptr %val1 to i32, !dbg !2220
  call void @__asan_load8_noabort(i32 %3), !dbg !2220
  %4 = load i64, ptr %val1, align 8, !dbg !2220
  %conv = trunc i64 %4 to i32, !dbg !2220
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2220
  call void @__asan_load1_noabort(i32 %5), !dbg !2220
  %6 = load i8, ptr %add.ptr, align 1, !dbg !2220
  %conv2 = zext i8 %6 to i32, !dbg !2220
  %conv3 = and i32 %conv, 255, !dbg !2220
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv2), !dbg !2220
  %cmp = icmp ule i32 %conv3, %conv2, !dbg !2220
  %conv4 = zext i1 %cmp to i32, !dbg !2220
  ret i32 %conv4, !dbg !2220
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GT_u8(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2221 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2222
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.209, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.209, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2223
  %1 = ptrtoint ptr %offset to i32, !dbg !2223
  call void @__asan_load4_noabort(i32 %1), !dbg !2223
  %2 = load i32, ptr %offset, align 4, !dbg !2223
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2223
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2223
  %3 = ptrtoint ptr %val1 to i32, !dbg !2223
  call void @__asan_load8_noabort(i32 %3), !dbg !2223
  %4 = load i64, ptr %val1, align 8, !dbg !2223
  %conv = trunc i64 %4 to i32, !dbg !2223
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2223
  call void @__asan_load1_noabort(i32 %5), !dbg !2223
  %6 = load i8, ptr %add.ptr, align 1, !dbg !2223
  %conv2 = zext i8 %6 to i32, !dbg !2223
  %conv3 = and i32 %conv, 255, !dbg !2223
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv2), !dbg !2223
  %cmp = icmp ult i32 %conv3, %conv2, !dbg !2223
  %conv4 = zext i1 %cmp to i32, !dbg !2223
  ret i32 %conv4, !dbg !2223
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_BAND_u8(ptr nocapture noundef readonly %pred, ptr nocapture noundef readonly %event) #10 align 64 !dbg !2224 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2225
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.210, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.210, align 8
  %offset = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 5, !dbg !2226
  %1 = ptrtoint ptr %offset to i32, !dbg !2226
  call void @__asan_load4_noabort(i32 %1), !dbg !2226
  %2 = load i32, ptr %offset, align 4, !dbg !2226
  %add.ptr = getelementptr i8, ptr %event, i32 %2, !dbg !2226
  %val1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 1, !dbg !2226
  %3 = ptrtoint ptr %val1 to i32, !dbg !2226
  call void @__asan_load8_noabort(i32 %3), !dbg !2226
  %4 = load i64, ptr %val1, align 8, !dbg !2226
  %conv = trunc i64 %4 to i32, !dbg !2226
  %5 = ptrtoint ptr %add.ptr to i32, !dbg !2226
  call void @__asan_load1_noabort(i32 %5), !dbg !2226
  %6 = load i8, ptr %add.ptr, align 1, !dbg !2226
  %conv2 = zext i8 %6 to i32, !dbg !2226
  %and = and i32 %conv2, %conv, !dbg !2226
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !2226
  %tobool = icmp ne i32 %and, 0, !dbg !2226
  %lnot.ext = zext i1 %tobool to i32, !dbg !2226
  ret i32 %lnot.ext, !dbg !2226
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_log_err(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_buffered_event_disable() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_buffered_event_enable() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @argv_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @argv_split(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ftrace_set_filter(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ftrace_set_notrace(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ftrace_test_filter(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #3 align 64 !dbg !2227 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2228
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16, !dbg !2229
  %0 = ptrtoint ptr %ent to i32, !dbg !2229
  call void @__asan_load4_noabort(i32 %0), !dbg !2229
  %1 = load ptr, ptr %ent, align 8, !dbg !2229
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #24, !dbg !2229
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call), !dbg !2229
  %cmp.not = icmp eq i32 %call, 1, !dbg !2229
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2229
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.231, align 8, !dbg !2229
  %2 = add i64 %gcov_ctr, 1, !dbg !2229
  store i64 %2, ptr @__llvm_gcov_ctr.231, align 8, !dbg !2229
  br label %cleanup, !dbg !2229

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2229
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15, !dbg !2229
  %gcov_ctr5 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.231, i32 0, i32 1), align 8, !dbg !2229
  %3 = add i64 %gcov_ctr5, 1, !dbg !2229
  store i64 %3, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.231, i32 0, i32 1), align 8, !dbg !2229
  %a = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %1, i32 0, i32 1, !dbg !2229
  %4 = ptrtoint ptr %a to i32, !dbg !2229
  call void @__asan_load4_noabort(i32 %4), !dbg !2229
  %5 = load i32, ptr %a, align 4, !dbg !2229
  %b = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %1, i32 0, i32 2, !dbg !2229
  %6 = ptrtoint ptr %b to i32, !dbg !2229
  call void @__asan_load4_noabort(i32 %6), !dbg !2229
  %7 = load i32, ptr %b, align 4, !dbg !2229
  %c = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %1, i32 0, i32 3, !dbg !2229
  %8 = ptrtoint ptr %c to i32, !dbg !2229
  call void @__asan_load4_noabort(i32 %8), !dbg !2229
  %9 = load i32, ptr %c, align 4, !dbg !2229
  %d = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %1, i32 0, i32 4, !dbg !2229
  %10 = ptrtoint ptr %d to i32, !dbg !2229
  call void @__asan_load4_noabort(i32 %10), !dbg !2229
  %11 = load i32, ptr %d, align 4, !dbg !2229
  %e = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %1, i32 0, i32 5, !dbg !2229
  %12 = ptrtoint ptr %e to i32, !dbg !2229
  call void @__asan_load4_noabort(i32 %12), !dbg !2229
  %13 = load i32, ptr %e, align 4, !dbg !2229
  %f = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %1, i32 0, i32 6, !dbg !2229
  %14 = ptrtoint ptr %f to i32, !dbg !2229
  call void @__asan_load4_noabort(i32 %14), !dbg !2229
  %15 = load i32, ptr %f, align 4, !dbg !2229
  %g = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %1, i32 0, i32 7, !dbg !2229
  %16 = ptrtoint ptr %g to i32, !dbg !2229
  call void @__asan_load4_noabort(i32 %16), !dbg !2229
  %17 = load i32, ptr %g, align 4, !dbg !2229
  %h = getelementptr inbounds %struct.trace_event_raw_ftrace_test_filter, ptr %1, i32 0, i32 8, !dbg !2229
  %18 = ptrtoint ptr %h to i32, !dbg !2229
  call void @__asan_load4_noabort(i32 %18), !dbg !2229
  %19 = load i32, ptr %h, align 4, !dbg !2229
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.55, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #24, !dbg !2229
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #24, !dbg !2229
  br label %cleanup, !dbg !2229

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end ], !dbg !2229
  ret i32 %retval.0, !dbg !2229
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run8(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #16

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_pred_visited_fn(ptr nocapture noundef readonly %pred, ptr nocapture noundef readnone %event) #3 align 64 !dbg !2230 {
entry:
  call void @__sanitizer_cov_trace_pc() #22, !dbg !2231
  %field1 = getelementptr inbounds %struct.filter_pred, ptr %pred, i32 0, i32 4, !dbg !2232
  %0 = ptrtoint ptr %field1 to i32, !dbg !2232
  call void @__asan_load4_noabort(i32 %0), !dbg !2232
  %1 = load ptr, ptr %field1, align 8, !dbg !2232
  store i1 true, ptr @test_pred_visited, align 4, !dbg !2233
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.239, align 8, !dbg !2234
  %2 = add i64 %gcov_ctr, 1, !dbg !2234
  store i64 %2, ptr @__llvm_gcov_ctr.239, align 8, !dbg !2234
  %name = getelementptr inbounds %struct.ftrace_event_field, ptr %1, i32 0, i32 1, !dbg !2234
  %3 = ptrtoint ptr %name to i32, !dbg !2234
  call void @__asan_load4_noabort(i32 %3), !dbg !2234
  %4 = load ptr, ptr %name, align 4, !dbg !2234
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %4) #27, !dbg !2234
  ret i32 1, !dbg !2235
}

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #17 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 1756011473) #24
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #24
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #24
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 150
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #22
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @llvm_gcda_summary_info() #24
  tail call void @llvm_gcda_end_file() #24
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #18 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @__llvm_gcov_ctr, i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.91, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.92, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.93, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.94, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.95, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.96, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.97, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr.98, i8 0, i64 72, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.99, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.100, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.101, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.102, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.103, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.104, align 8
  store i64 0, ptr @__llvm_gcov_ctr.105, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.106, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.107, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.108, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.109, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.110, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.111, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.112, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.113, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.114, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.115, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.116, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.117, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.118, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.119, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr.120, i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.121, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) @__llvm_gcov_ctr.122, i8 0, i64 96, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.123, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr.124, i8 0, i64 72, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.125, align 8
  store i64 0, ptr @__llvm_gcov_ctr.126, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.127, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.128, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @__llvm_gcov_ctr.129, i8 0, i64 216, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.130, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.131, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.132, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.133, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) @__llvm_gcov_ctr.134, i8 0, i64 176, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.135, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(280) @__llvm_gcov_ctr.136, i8 0, i64 280, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(456) @__llvm_gcov_ctr.137, i8 0, i64 456, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.138, align 8
  store i64 0, ptr @__llvm_gcov_ctr.139, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.140, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.141, align 8
  store i64 0, ptr @__llvm_gcov_ctr.142, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.143, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.144, align 8
  store i64 0, ptr @__llvm_gcov_ctr.145, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.146, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.147, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.148, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.149, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.150, align 8
  store i64 0, ptr @__llvm_gcov_ctr.151, align 8
  store i64 0, ptr @__llvm_gcov_ctr.152, align 8
  store i64 0, ptr @__llvm_gcov_ctr.153, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.154, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.155, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.156, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) @__llvm_gcov_ctr.157, i8 0, i64 176, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.158, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.159, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.160, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.161, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.162, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.163, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.164, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.165, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.166, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.167, align 8
  store i64 0, ptr @__llvm_gcov_ctr.168, align 8
  store i64 0, ptr @__llvm_gcov_ctr.169, align 8
  store i64 0, ptr @__llvm_gcov_ctr.170, align 8
  store i64 0, ptr @__llvm_gcov_ctr.171, align 8
  store i64 0, ptr @__llvm_gcov_ctr.172, align 8
  store i64 0, ptr @__llvm_gcov_ctr.173, align 8
  store i64 0, ptr @__llvm_gcov_ctr.174, align 8
  store i64 0, ptr @__llvm_gcov_ctr.175, align 8
  store i64 0, ptr @__llvm_gcov_ctr.176, align 8
  store i64 0, ptr @__llvm_gcov_ctr.177, align 8
  store i64 0, ptr @__llvm_gcov_ctr.178, align 8
  store i64 0, ptr @__llvm_gcov_ctr.179, align 8
  store i64 0, ptr @__llvm_gcov_ctr.180, align 8
  store i64 0, ptr @__llvm_gcov_ctr.181, align 8
  store i64 0, ptr @__llvm_gcov_ctr.182, align 8
  store i64 0, ptr @__llvm_gcov_ctr.183, align 8
  store i64 0, ptr @__llvm_gcov_ctr.184, align 8
  store i64 0, ptr @__llvm_gcov_ctr.185, align 8
  store i64 0, ptr @__llvm_gcov_ctr.186, align 8
  store i64 0, ptr @__llvm_gcov_ctr.187, align 8
  store i64 0, ptr @__llvm_gcov_ctr.188, align 8
  store i64 0, ptr @__llvm_gcov_ctr.189, align 8
  store i64 0, ptr @__llvm_gcov_ctr.190, align 8
  store i64 0, ptr @__llvm_gcov_ctr.191, align 8
  store i64 0, ptr @__llvm_gcov_ctr.192, align 8
  store i64 0, ptr @__llvm_gcov_ctr.193, align 8
  store i64 0, ptr @__llvm_gcov_ctr.194, align 8
  store i64 0, ptr @__llvm_gcov_ctr.195, align 8
  store i64 0, ptr @__llvm_gcov_ctr.196, align 8
  store i64 0, ptr @__llvm_gcov_ctr.197, align 8
  store i64 0, ptr @__llvm_gcov_ctr.198, align 8
  store i64 0, ptr @__llvm_gcov_ctr.199, align 8
  store i64 0, ptr @__llvm_gcov_ctr.200, align 8
  store i64 0, ptr @__llvm_gcov_ctr.201, align 8
  store i64 0, ptr @__llvm_gcov_ctr.202, align 8
  store i64 0, ptr @__llvm_gcov_ctr.203, align 8
  store i64 0, ptr @__llvm_gcov_ctr.204, align 8
  store i64 0, ptr @__llvm_gcov_ctr.205, align 8
  store i64 0, ptr @__llvm_gcov_ctr.206, align 8
  store i64 0, ptr @__llvm_gcov_ctr.207, align 8
  store i64 0, ptr @__llvm_gcov_ctr.208, align 8
  store i64 0, ptr @__llvm_gcov_ctr.209, align 8
  store i64 0, ptr @__llvm_gcov_ctr.210, align 8
  store i64 0, ptr @__llvm_gcov_ctr.211, align 8
  store i64 0, ptr @__llvm_gcov_ctr.212, align 8
  store i64 0, ptr @__llvm_gcov_ctr.213, align 8
  store i64 0, ptr @__llvm_gcov_ctr.214, align 8
  store i64 0, ptr @__llvm_gcov_ctr.215, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) @__llvm_gcov_ctr.216, i8 0, i64 96, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.217, align 8
  store i64 0, ptr @__llvm_gcov_ctr.218, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.219, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.220, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.221, align 8
  store i64 0, ptr @__llvm_gcov_ctr.222, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.223, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.224, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.225, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.226, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.227, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.228, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.229, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.230, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.231, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.232, align 8
  store i64 0, ptr @__llvm_gcov_ctr.233, align 8
  store i64 0, ptr @__llvm_gcov_ctr.234, align 8
  store i64 0, ptr @__llvm_gcov_ctr.235, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) @__llvm_gcov_ctr.236, i8 0, i64 120, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.237, align 8
  store i64 0, ptr @__llvm_gcov_ctr.238, align 8
  store i64 0, ptr @__llvm_gcov_ctr.239, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #17 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #24
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @memchr(ptr, i32, i32) local_unnamed_addr #20

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #20

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #21 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #21 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 106)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind readonly }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { noinline nounwind uwtable(sync) }
attributes #18 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #19 = { argmemonly nofree nounwind willreturn writeonly }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { nounwind uwtable(sync) }
attributes #22 = { nomerge }
attributes #23 = { nobuiltin }
attributes #24 = { nounwind }
attributes #25 = { nounwind allocsize(2) }
attributes #26 = { nobuiltin nounwind }
attributes #27 = { cold nounwind }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !48, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !106, !108, !109, !110, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !151, !153, !155, !156, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !177, !179, !181, !182, !184, !185, !186, !187}
!llvm.named.register.sp = !{!189}
!llvm.module.flags = !{!190, !191, !192, !193, !194, !195, !196, !197}
!llvm.gcov = !{!198}
!llvm.ident = !{!199}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_events_filter.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/trace/trace_events_filter.c", i32 946, i32 21}
!4 = !{ptr @__ksymtab_filter_match_preds, !5, !"__ksymtab_filter_match_preds", i1 false, i1 false}
!5 = !{!"../kernel/trace/trace_events_filter.c", i32 1012, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/trace/trace_events_filter.c", i32 1081, i32 23}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/trace/trace_events_filter.c", i32 1083, i32 21}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/trace/trace_events_filter.c", i32 1096, i32 21}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/trace/trace_events_filter.c", i32 1177, i32 19}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/trace/trace_events_filter.c", i32 1177, i32 49}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/trace/trace_events_filter.c", i32 1180, i32 19}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/trace/trace_events_filter.c", i32 1186, i32 19}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/trace/trace_events_filter.c", i32 1186, i32 50}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/trace/trace_events_filter.c", i32 1903, i32 39}
!24 = !{ptr @__tracepoint_ftrace_test_filter, !25, !"__tracepoint_ftrace_test_filter", i1 false, i1 false}
!25 = !{!"../kernel/trace/./trace_events_filter_test.h", i32 10, i32 1}
!26 = !{ptr @__tracepoint_ptr_ftrace_test_filter, !25, !"__tracepoint_ptr_ftrace_test_filter", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_ftrace_test_filter, !25, !"__SCK__tp_func_ftrace_test_filter", i1 false, i1 false}
!28 = !{ptr @event_class_ftrace_test_filter, !25, !"event_class_ftrace_test_filter", i1 false, i1 false}
!29 = !{ptr @event_ftrace_test_filter, !25, !"event_ftrace_test_filter", i1 false, i1 false}
!30 = !{ptr @__event_ftrace_test_filter, !25, !"__event_ftrace_test_filter", i1 false, i1 false}
!31 = !{ptr @__bpf_trace_tp_map_ftrace_test_filter, !25, !"__bpf_trace_tp_map_ftrace_test_filter", i1 false, i1 false}
!32 = !{ptr @__initcall__kmod_trace_events_filter__278_2373_ftrace_test_event_filter7, !33, !"__initcall__kmod_trace_events_filter__278_2373_ftrace_test_event_filter7", i1 false, i1 false}
!33 = !{!"../kernel/trace/trace_events_filter.c", i32 2373, i32 1}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/trace/trace_events_filter.c", i32 1842, i32 6}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../kernel/trace/trace_events_filter.c", i32 1785, i32 6}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../kernel/trace/trace_events_filter.c", i32 1294, i32 37}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/trace/trace_events_filter.c", i32 1337, i32 27}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/trace/trace_events_filter.c", i32 44, i32 31}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ops, !52, !"ops", i1 false, i1 false}
!52 = !{!"../kernel/trace/trace_events_filter.c", i32 44, i32 21}
!53 = !{ptr @ustring_per_cpu, !54, !"ustring_per_cpu", i1 false, i1 false}
!54 = !{!"../kernel/trace/trace_events_filter.c", i32 665, i32 40}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../kernel/trace/trace_events_filter.c", i32 1203, i32 7}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../kernel/trace/trace_events_filter.c", i32 1206, i32 7}
!59 = !{ptr @pred_funcs_s64, !60, !"pred_funcs_s64", i1 false, i1 false}
!60 = !{!"../kernel/trace/trace_events_filter.c", i32 644, i32 1}
!61 = !{ptr @pred_funcs_u64, !62, !"pred_funcs_u64", i1 false, i1 false}
!62 = !{!"../kernel/trace/trace_events_filter.c", i32 645, i32 1}
!63 = !{ptr @pred_funcs_s32, !64, !"pred_funcs_s32", i1 false, i1 false}
!64 = !{!"../kernel/trace/trace_events_filter.c", i32 646, i32 1}
!65 = !{ptr @pred_funcs_u32, !66, !"pred_funcs_u32", i1 false, i1 false}
!66 = !{!"../kernel/trace/trace_events_filter.c", i32 647, i32 1}
!67 = !{ptr @pred_funcs_s16, !68, !"pred_funcs_s16", i1 false, i1 false}
!68 = !{!"../kernel/trace/trace_events_filter.c", i32 648, i32 1}
!69 = !{ptr @pred_funcs_u16, !70, !"pred_funcs_u16", i1 false, i1 false}
!70 = !{!"../kernel/trace/trace_events_filter.c", i32 649, i32 1}
!71 = !{ptr @pred_funcs_s8, !72, !"pred_funcs_s8", i1 false, i1 false}
!72 = !{!"../kernel/trace/trace_events_filter.c", i32 650, i32 1}
!73 = !{ptr @pred_funcs_u8, !74, !"pred_funcs_u8", i1 false, i1 false}
!74 = !{!"../kernel/trace/trace_events_filter.c", i32 651, i32 1}
!75 = !{ptr @.str.22, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../kernel/trace/trace_events_filter.c", i32 1050, i32 23}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../kernel/trace/trace_events_filter.c", i32 1050, i32 37}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../kernel/trace/trace_events_filter.c", i32 1051, i32 23}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../kernel/trace/trace_events_filter.c", i32 1052, i32 23}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../kernel/trace/trace_events_filter.c", i32 1056, i32 23}
!85 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../kernel/trace/trace_events_filter.c", i32 81, i32 35}
!87 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @err_text, !105, !"err_text", i1 false, i1 false}
!105 = !{!"../kernel/trace/trace_events_filter.c", i32 81, i32 20}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../kernel/trace/trace_events_filter.c", i32 2128, i32 28}
!108 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @__tpstrtab_ftrace_test_filter, !25, !"__tpstrtab_ftrace_test_filter", i1 false, i1 false}
!110 = !{ptr @str__test__trace_system_name, !111, !"str__test__trace_system_name", i1 false, i1 false}
!111 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!112 = !{ptr @.str.46, !25, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.47, !25, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.48, !25, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.49, !25, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.50, !25, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.51, !25, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.52, !25, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.53, !25, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.54, !25, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @trace_event_fields_ftrace_test_filter, !25, !"trace_event_fields_ftrace_test_filter", i1 false, i1 false}
!122 = !{ptr @trace_event_type_funcs_ftrace_test_filter, !25, !"trace_event_type_funcs_ftrace_test_filter", i1 false, i1 false}
!123 = !{ptr @.str.55, !25, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @print_fmt_ftrace_test_filter, !25, !"print_fmt_ftrace_test_filter", i1 false, i1 false}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../kernel/trace/trace_events_filter.c", i32 2317, i32 2}
!127 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ftrace_test_event_filter._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @ftrace_test_event_filter._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../kernel/trace/trace_events_filter.c", i32 2327, i32 4}
!132 = !{ptr @ftrace_test_event_filter._entry.58, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @ftrace_test_event_filter._entry_ptr.60, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../kernel/trace/trace_events_filter.c", i32 2353, i32 4}
!136 = !{ptr @ftrace_test_event_filter._entry.61, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @ftrace_test_event_filter._entry_ptr.63, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../kernel/trace/trace_events_filter.c", i32 2360, i32 4}
!140 = !{ptr @ftrace_test_event_filter._entry.64, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @ftrace_test_event_filter._entry_ptr.66, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../kernel/trace/trace_events_filter.c", i32 2368, i32 3}
!144 = !{ptr @ftrace_test_event_filter._entry.67, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @ftrace_test_event_filter._entry_ptr.69, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../kernel/trace/trace_events_filter.c", i32 2223, i32 2}
!148 = !{ptr @.str.71, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../kernel/trace/trace_events_filter.c", i32 2224, i32 2}
!151 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../kernel/trace/trace_events_filter.c", i32 2229, i32 2}
!153 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../kernel/trace/trace_events_filter.c", i32 2235, i32 2}
!155 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../kernel/trace/trace_events_filter.c", i32 2237, i32 2}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../kernel/trace/trace_events_filter.c", i32 2242, i32 2}
!160 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.79, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../kernel/trace/trace_events_filter.c", i32 2248, i32 2}
!163 = !{ptr @.str.80, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../kernel/trace/trace_events_filter.c", i32 2254, i32 2}
!166 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../kernel/trace/trace_events_filter.c", i32 2260, i32 2}
!169 = !{ptr @.str.84, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../kernel/trace/trace_events_filter.c", i32 2266, i32 2}
!172 = !{ptr @.str.86, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @test_filter_data, !174, !"test_filter_data", i1 false, i1 false}
!174 = !{!"../kernel/trace/trace_events_filter.c", i32 2220, i32 3}
!175 = distinct !{null, !176, !"__warned", i1 false, i1 false}
!176 = !{!"../kernel/trace/trace_events_filter.c", i32 2291, i32 28}
!177 = distinct !{null, !178, !"__already_done", i1 false, i1 false}
!178 = !{!"../kernel/trace/trace_events_filter.c", i32 2299, i32 3}
!179 = distinct !{null, !180, !"__already_done", i1 false, i1 false}
!180 = !{!"../kernel/trace/trace_events_filter.c", i32 2302, i32 4}
!181 = !{ptr @.str.88, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.89, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../kernel/trace/trace_events_filter.c", i32 2285, i32 2}
!184 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @test_pred_visited_fn._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @test_pred_visited_fn._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = distinct !{null, !188, !"test_pred_visited", i1 false, i1 false}
!188 = !{!"../kernel/trace/trace_events_filter.c", i32 2278, i32 12}
!189 = !{!"sp"}
!190 = !{i32 2, !"Debug Info Version", i32 3}
!191 = !{i32 1, !"wchar_size", i32 2}
!192 = !{i32 1, !"min_enum_size", i32 4}
!193 = !{i32 8, !"branch-target-enforcement", i32 0}
!194 = !{i32 8, !"sign-return-address", i32 0}
!195 = !{i32 8, !"sign-return-address-all", i32 0}
!196 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!197 = !{i32 7, !"uwtable", i32 1}
!198 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_events_filter.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_events_filter.gcda", !0}
!199 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!200 = distinct !DISubprogram(name: "filter_parse_regex", scope: !1, file: !1, line: 915, type: !201, scopeLine: 916, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!201 = !DISubroutineType(types: !202)
!202 = !{}
!203 = !DILocation(line: 916, scope: !200)
!204 = !DILocation(line: 920, column: 6, scope: !200)
!205 = !DILocation(line: 920, column: 14, scope: !200)
!206 = !DILocation(line: 921, column: 4, scope: !200)
!207 = !DILocation(line: 921, column: 8, scope: !200)
!208 = !DILocation(line: 922, column: 7, scope: !200)
!209 = !DILocation(line: 923, column: 6, scope: !200)
!210 = !DILocation(line: 924, column: 2, scope: !200)
!211 = !DILocation(line: 925, column: 4, scope: !200)
!212 = !DILocation(line: 925, column: 8, scope: !200)
!213 = !DILocation(line: 927, column: 10, scope: !200)
!214 = !DILocation(line: 929, column: 14, scope: !200)
!215 = !DILocation(line: 45, column: 13, scope: !216, inlinedAt: !218)
!216 = distinct !DISubprogram(name: "isdigit", scope: !217, file: !217, line: 43, type: !201, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!217 = !DIFile(filename: "../include/linux/ctype.h", directory: "/llk/linux-5.17/build_arm_allyes")
!218 = distinct !DILocation(line: 929, column: 6, scope: !200)
!219 = !DILocation(line: 45, column: 18, scope: !216, inlinedAt: !218)
!220 = !DILocation(line: 45, column: 21, scope: !216, inlinedAt: !218)
!221 = !DILocation(line: 45, column: 23, scope: !216, inlinedAt: !218)
!222 = !DILocation(line: 929, column: 6, scope: !200)
!223 = !DILocation(line: 932, column: 16, scope: !200)
!224 = !DILocation(line: 932, column: 2, scope: !200)
!225 = !DILocation(line: 933, column: 7, scope: !200)
!226 = !DILocation(line: 933, column: 15, scope: !200)
!227 = !DILocation(line: 934, column: 9, scope: !200)
!228 = !DILocation(line: 934, column: 8, scope: !200)
!229 = !DILocation(line: 936, column: 24, scope: !200)
!230 = !DILocation(line: 936, column: 17, scope: !200)
!231 = !DILocation(line: 936, column: 15, scope: !200)
!232 = !DILocation(line: 937, column: 14, scope: !200)
!233 = !DILocation(line: 937, column: 9, scope: !200)
!234 = !DILocation(line: 938, column: 11, scope: !200)
!235 = !DILocation(line: 938, column: 6, scope: !200)
!236 = !DILocation(line: 940, column: 11, scope: !200)
!237 = !DILocation(line: 0, scope: !200)
!238 = !DILocation(line: 941, column: 13, scope: !200)
!239 = !DILocation(line: 942, column: 5, scope: !200)
!240 = !DILocation(line: 944, column: 5, scope: !200)
!241 = !DILocation(line: 946, column: 14, scope: !200)
!242 = !DILocation(line: 947, column: 4, scope: !200)
!243 = !DILocation(line: 932, column: 24, scope: !200)
!244 = distinct !{!244, !224, !245}
!245 = !DILocation(line: 949, column: 2, scope: !200)
!246 = !DILocation(line: 950, column: 6, scope: !200)
!247 = !DILocation(line: 950, column: 14, scope: !200)
!248 = !DILocation(line: 951, column: 13, scope: !200)
!249 = !DILocation(line: 951, column: 18, scope: !200)
!250 = !DILocation(line: 951, column: 11, scope: !200)
!251 = !DILocation(line: 951, column: 3, scope: !200)
!252 = !DILocation(line: 953, column: 9, scope: !200)
!253 = !DILocation(line: 953, column: 2, scope: !200)
!254 = !DILocation(line: 954, column: 1, scope: !200)
!255 = distinct !DISubprogram(name: "filter_match_preds", scope: !1, file: !1, line: 990, type: !201, scopeLine: 991, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!256 = !DILocation(line: 991, scope: !255)
!257 = !DILocation(line: 996, column: 7, scope: !255)
!258 = !DILocation(line: 996, column: 6, scope: !255)
!259 = !DILocation(line: 997, column: 3, scope: !255)
!260 = !DILocation(line: 1000, column: 9, scope: !255)
!261 = !DILocation(line: 1001, column: 7, scope: !255)
!262 = !DILocation(line: 1001, column: 6, scope: !255)
!263 = !DILocation(line: 1004, column: 22, scope: !255)
!264 = !DILocation(line: 1004, column: 2, scope: !255)
!265 = !DILocation(line: 1002, column: 3, scope: !255)
!266 = !DILocation(line: 1005, column: 3, scope: !255)
!267 = !DILocation(line: 1005, column: 38, scope: !255)
!268 = !DILocation(line: 1006, column: 21, scope: !255)
!269 = !DILocation(line: 1006, column: 15, scope: !255)
!270 = !DILocation(line: 1007, column: 24, scope: !255)
!271 = !DILocation(line: 1007, column: 13, scope: !255)
!272 = !DILocation(line: 1007, column: 7, scope: !255)
!273 = !DILocation(line: 1008, column: 8, scope: !255)
!274 = !DILocation(line: 1008, column: 16, scope: !255)
!275 = !DILocation(line: 1008, column: 4, scope: !255)
!276 = !DILocation(line: 0, scope: !255)
!277 = !DILocation(line: 1004, column: 29, scope: !255)
!278 = !DILocation(line: 1004, column: 14, scope: !255)
!279 = distinct !{!279, !264, !280}
!280 = !DILocation(line: 1009, column: 2, scope: !255)
!281 = !DILocation(line: 1010, column: 9, scope: !255)
!282 = !DILocation(line: 1010, column: 17, scope: !255)
!283 = !DILocation(line: 1010, column: 2, scope: !255)
!284 = !DILocation(line: 1011, column: 1, scope: !255)
!285 = distinct !DISubprogram(name: "print_event_filter", scope: !1, file: !1, line: 1076, type: !201, scopeLine: 1077, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!286 = !DILocation(line: 1077, scope: !285)
!287 = !DILocation(line: 1072, column: 15, scope: !288, inlinedAt: !289)
!288 = distinct !DISubprogram(name: "event_filter", scope: !1, file: !1, line: 1070, type: !201, scopeLine: 1071, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!289 = distinct !DILocation(line: 1078, column: 32, scope: !285)
!290 = !DILocation(line: 1080, column: 6, scope: !285)
!291 = !DILocation(line: 1080, column: 13, scope: !285)
!292 = !DILocation(line: 1080, column: 16, scope: !285)
!293 = !DILocation(line: 1080, column: 24, scope: !285)
!294 = !DILocation(line: 1081, column: 20, scope: !285)
!295 = !DILocation(line: 1081, column: 39, scope: !285)
!296 = !DILocation(line: 1081, column: 3, scope: !285)
!297 = !DILocation(line: 1083, column: 18, scope: !285)
!298 = !DILocation(line: 1083, column: 3, scope: !285)
!299 = !DILocation(line: 1084, column: 1, scope: !285)
!300 = distinct !DISubprogram(name: "print_subsystem_event_filter", scope: !1, file: !1, line: 1086, type: !201, scopeLine: 1088, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!301 = !DILocation(line: 1088, scope: !300)
!302 = !DILocation(line: 1091, column: 2, scope: !300)
!303 = !DILocation(line: 1092, column: 19, scope: !300)
!304 = !DILocation(line: 1093, column: 6, scope: !300)
!305 = !DILocation(line: 1093, column: 13, scope: !300)
!306 = !DILocation(line: 1093, column: 16, scope: !300)
!307 = !DILocation(line: 1093, column: 24, scope: !300)
!308 = !DILocation(line: 1094, column: 20, scope: !300)
!309 = !DILocation(line: 1094, column: 39, scope: !300)
!310 = !DILocation(line: 1094, column: 3, scope: !300)
!311 = !DILocation(line: 1096, column: 18, scope: !300)
!312 = !DILocation(line: 1096, column: 3, scope: !300)
!313 = !DILocation(line: 1097, column: 2, scope: !300)
!314 = !DILocation(line: 1098, column: 1, scope: !300)
!315 = distinct !DISubprogram(name: "free_event_filter", scope: !1, file: !1, line: 1134, type: !201, scopeLine: 1135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!316 = !DILocation(line: 1135, scope: !315)
!317 = !DILocation(line: 1136, column: 2, scope: !315)
!318 = !DILocation(line: 1137, column: 1, scope: !315)
!319 = distinct !DISubprogram(name: "__free_filter", scope: !1, file: !1, line: 1124, type: !201, scopeLine: 1125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!320 = !DILocation(line: 1125, scope: !319)
!321 = !DILocation(line: 1126, column: 7, scope: !319)
!322 = !DILocation(line: 1126, column: 6, scope: !319)
!323 = !DILocation(line: 1127, column: 3, scope: !319)
!324 = !DILocation(line: 1129, column: 12, scope: !319)
!325 = !DILocation(line: 1105, column: 9, scope: !326, inlinedAt: !327)
!326 = distinct !DISubprogram(name: "free_prog", scope: !1, file: !1, line: 1100, type: !201, scopeLine: 1101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!327 = distinct !DILocation(line: 1129, column: 2, scope: !319)
!328 = !DILocation(line: 1106, column: 7, scope: !326, inlinedAt: !327)
!329 = !DILocation(line: 1106, column: 6, scope: !326, inlinedAt: !327)
!330 = !DILocation(line: 1109, column: 22, scope: !326, inlinedAt: !327)
!331 = !DILocation(line: 1109, column: 2, scope: !326, inlinedAt: !327)
!332 = !DILocation(line: 0, scope: !319)
!333 = !DILocation(line: 1107, column: 3, scope: !326, inlinedAt: !327)
!334 = !DILocation(line: 1110, column: 3, scope: !326, inlinedAt: !327)
!335 = !DILocation(line: 1109, column: 29, scope: !326, inlinedAt: !327)
!336 = distinct !{!336, !331, !337}
!337 = !DILocation(line: 1110, column: 21, scope: !326, inlinedAt: !327)
!338 = !DILocation(line: 1111, column: 8, scope: !326, inlinedAt: !327)
!339 = !DILocation(line: 1111, column: 2, scope: !326, inlinedAt: !327)
!340 = !DILocation(line: 1112, column: 1, scope: !326, inlinedAt: !327)
!341 = !DILocation(line: 1130, column: 16, scope: !319)
!342 = !DILocation(line: 1130, column: 2, scope: !319)
!343 = !DILocation(line: 1131, column: 2, scope: !319)
!344 = !DILocation(line: 1132, column: 1, scope: !319)
!345 = distinct !DISubprogram(name: "filter_assign_type", scope: !1, file: !1, line: 1175, type: !201, scopeLine: 1176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!346 = !DILocation(line: 1176, scope: !345)
!347 = !DILocation(line: 1177, column: 6, scope: !345)
!348 = !DILocation(line: 1177, column: 33, scope: !345)
!349 = !DILocation(line: 1177, column: 43, scope: !345)
!350 = !DILocation(line: 1177, column: 36, scope: !345)
!351 = !DILocation(line: 1178, column: 3, scope: !345)
!352 = !DILocation(line: 1180, column: 6, scope: !345)
!353 = !DILocation(line: 1180, column: 32, scope: !345)
!354 = !DILocation(line: 1180, column: 42, scope: !345)
!355 = !DILocation(line: 1180, column: 35, scope: !345)
!356 = !DILocation(line: 1181, column: 3, scope: !345)
!357 = !DILocation(line: 1183, column: 6, scope: !345)
!358 = !DILocation(line: 1183, column: 24, scope: !345)
!359 = !DILocation(line: 1183, column: 34, scope: !345)
!360 = !DILocation(line: 1183, column: 27, scope: !345)
!361 = !DILocation(line: 1184, column: 3, scope: !345)
!362 = !DILocation(line: 1186, column: 6, scope: !345)
!363 = !DILocation(line: 1186, column: 29, scope: !345)
!364 = !DILocation(line: 1186, column: 34, scope: !345)
!365 = !DILocation(line: 1186, column: 44, scope: !345)
!366 = !DILocation(line: 1186, column: 37, scope: !345)
!367 = !DILocation(line: 1186, column: 66, scope: !345)
!368 = !DILocation(line: 1187, column: 3, scope: !345)
!369 = !DILocation(line: 1189, column: 2, scope: !345)
!370 = !DILocation(line: 0, scope: !345)
!371 = !DILocation(line: 1190, column: 1, scope: !345)
!372 = distinct !DISubprogram(name: "create_event_filter", scope: !1, file: !1, line: 1857, type: !201, scopeLine: 1861, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!373 = !DILocation(line: 1861, scope: !372)
!374 = !DILocation(line: 1862, column: 9, scope: !372)
!375 = !DILocation(line: 1862, column: 2, scope: !372)
!376 = distinct !DISubprogram(name: "create_filter", scope: !1, file: !1, line: 1833, type: !201, scopeLine: 1837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!377 = !DILocation(line: 1837, scope: !376)
!378 = !DILocation(line: 1838, column: 2, scope: !376)
!379 = !DILocation(line: 1838, column: 29, scope: !376)
!380 = !DILocation(line: 1842, column: 6, scope: !376)
!381 = !{!"branch_weights", i32 2000, i32 1}
!382 = !DILocation(line: 1843, column: 4, scope: !376)
!383 = !DILocation(line: 1843, column: 12, scope: !376)
!384 = !DILocation(line: 1843, column: 3, scope: !376)
!385 = !DILocation(line: 1845, column: 8, scope: !376)
!386 = !DILocation(line: 1846, column: 6, scope: !376)
!387 = !DILocation(line: 1847, column: 10, scope: !376)
!388 = !DILocation(line: 1847, column: 3, scope: !376)
!389 = !DILocation(line: 1849, column: 43, scope: !376)
!390 = !DILocation(line: 1849, column: 53, scope: !376)
!391 = !DILocation(line: 1849, column: 8, scope: !376)
!392 = !DILocation(line: 1850, column: 6, scope: !376)
!393 = !DILocation(line: 1850, column: 10, scope: !376)
!394 = !DILocation(line: 1850, column: 13, scope: !376)
!395 = !DILocation(line: 1851, column: 21, scope: !376)
!396 = !DILocation(line: 1851, column: 29, scope: !376)
!397 = !DILocation(line: 1851, column: 3, scope: !376)
!398 = !DILocation(line: 1852, column: 23, scope: !376)
!399 = !DILocation(line: 1812, column: 2, scope: !400, inlinedAt: !401)
!400 = distinct !DISubprogram(name: "create_filter_finish", scope: !1, file: !1, line: 1810, type: !201, scopeLine: 1811, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!401 = distinct !DILocation(line: 1852, column: 2, scope: !376)
!402 = !DILocation(line: 1854, column: 2, scope: !376)
!403 = !DILocation(line: 0, scope: !376)
!404 = !DILocation(line: 1855, column: 1, scope: !376)
!405 = distinct !DISubprogram(name: "apply_event_filter", scope: !1, file: !1, line: 1897, type: !201, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!406 = !DILocation(line: 1898, scope: !405)
!407 = !DILocation(line: 1899, column: 40, scope: !405)
!408 = !DILocation(line: 1900, column: 2, scope: !405)
!409 = !DILocation(line: 1900, column: 23, scope: !405)
!410 = !DILocation(line: 78, column: 9, scope: !411, inlinedAt: !413)
!411 = distinct !DISubprogram(name: "strstrip", scope: !412, file: !412, line: 76, type: !201, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!412 = !DIFile(filename: "../include/linux/string.h", directory: "/llk/linux-5.17/build_arm_allyes")
!413 = distinct !DILocation(line: 1903, column: 14, scope: !405)
!414 = !DILocation(line: 1903, column: 7, scope: !405)
!415 = !DILocation(line: 1903, column: 6, scope: !405)
!416 = !DILocation(line: 1116, column: 34, scope: !417, inlinedAt: !418)
!417 = distinct !DISubprogram(name: "filter_disable", scope: !1, file: !1, line: 1114, type: !201, scopeLine: 1115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!418 = distinct !DILocation(line: 1904, column: 3, scope: !405)
!419 = !DILocation(line: 1118, column: 14, scope: !417, inlinedAt: !418)
!420 = !DILocation(line: 1120, column: 16, scope: !417, inlinedAt: !418)
!421 = !DILocation(line: 1120, column: 6, scope: !417, inlinedAt: !418)
!422 = !DILocation(line: 1121, column: 3, scope: !417, inlinedAt: !418)
!423 = !DILocation(line: 1072, column: 15, scope: !288, inlinedAt: !424)
!424 = distinct !DILocation(line: 1905, column: 12, scope: !405)
!425 = !DILocation(line: 1907, column: 8, scope: !405)
!426 = !DILocation(line: 1907, column: 7, scope: !405)
!427 = !DILocation(line: 1908, column: 4, scope: !405)
!428 = !DILocation(line: 1910, column: 22, scope: !405)
!429 = !DILocation(line: 1682, column: 2, scope: !430, inlinedAt: !431)
!430 = distinct !DISubprogram(name: "event_clear_filter", scope: !1, file: !1, line: 1680, type: !201, scopeLine: 1681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!431 = distinct !DILocation(line: 1910, column: 3, scope: !405)
!432 = !DILocation(line: 93, column: 2, scope: !433, inlinedAt: !435)
!433 = distinct !DISubprogram(name: "tracepoint_synchronize_unregister", scope: !434, file: !434, line: 91, type: !201, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!434 = !DIFile(filename: "../include/linux/tracepoint.h", directory: "/llk/linux-5.17/build_arm_allyes")
!435 = distinct !DILocation(line: 1913, column: 3, scope: !405)
!436 = !DILocation(line: 94, column: 2, scope: !433, inlinedAt: !435)
!437 = !DILocation(line: 1914, column: 3, scope: !405)
!438 = !DILocation(line: 1916, column: 3, scope: !405)
!439 = !DILocation(line: 1919, column: 22, scope: !405)
!440 = !DILocation(line: 1919, column: 28, scope: !405)
!441 = !DILocation(line: 1919, column: 8, scope: !405)
!442 = !DILocation(line: 1927, column: 6, scope: !405)
!443 = !DILocation(line: 1072, column: 15, scope: !288, inlinedAt: !444)
!444 = distinct !DILocation(line: 1930, column: 9, scope: !405)
!445 = !DILocation(line: 1931, column: 8, scope: !405)
!446 = !DILocation(line: 1931, column: 7, scope: !405)
!447 = !DILocation(line: 1932, column: 28, scope: !405)
!448 = !DILocation(line: 1666, column: 34, scope: !449, inlinedAt: !450)
!449 = distinct !DISubprogram(name: "event_set_filtered_flag", scope: !1, file: !1, line: 1664, type: !201, scopeLine: 1665, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!450 = distinct !DILocation(line: 1932, column: 4, scope: !405)
!451 = !DILocation(line: 1668, column: 14, scope: !449, inlinedAt: !450)
!452 = !DILocation(line: 1670, column: 16, scope: !449, inlinedAt: !450)
!453 = !DILocation(line: 1670, column: 6, scope: !449, inlinedAt: !450)
!454 = !DILocation(line: 1671, column: 3, scope: !449, inlinedAt: !450)
!455 = !DILocation(line: 1934, column: 19, scope: !405)
!456 = !DILocation(line: 1116, column: 34, scope: !417, inlinedAt: !457)
!457 = distinct !DILocation(line: 1934, column: 4, scope: !405)
!458 = !DILocation(line: 1118, column: 14, scope: !417, inlinedAt: !457)
!459 = !DILocation(line: 1120, column: 16, scope: !417, inlinedAt: !457)
!460 = !DILocation(line: 1120, column: 6, scope: !417, inlinedAt: !457)
!461 = !DILocation(line: 1121, column: 3, scope: !417, inlinedAt: !457)
!462 = !DILocation(line: 1677, column: 2, scope: !463, inlinedAt: !464)
!463 = distinct !DISubprogram(name: "event_set_filter", scope: !1, file: !1, line: 1674, type: !201, scopeLine: 1676, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!464 = distinct !DILocation(line: 1936, column: 3, scope: !405)
!465 = !{i64 2155380377}
!466 = !DILocation(line: 1938, column: 7, scope: !405)
!467 = !DILocation(line: 1940, column: 4, scope: !405)
!468 = !DILocation(line: 93, column: 2, scope: !433, inlinedAt: !469)
!469 = distinct !DILocation(line: 1940, column: 4, scope: !405)
!470 = !DILocation(line: 94, column: 2, scope: !433, inlinedAt: !469)
!471 = !DILocation(line: 1941, column: 4, scope: !405)
!472 = !DILocation(line: 1942, column: 3, scope: !405)
!473 = !DILocation(line: 0, scope: !405)
!474 = !DILocation(line: 1946, column: 1, scope: !405)
!475 = distinct !DISubprogram(name: "apply_subsystem_event_filter", scope: !1, file: !1, line: 1948, type: !201, scopeLine: 1950, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!476 = !DILocation(line: 1950, scope: !475)
!477 = !DILocation(line: 1951, column: 40, scope: !475)
!478 = !DILocation(line: 1952, column: 32, scope: !475)
!479 = !DILocation(line: 1953, column: 2, scope: !475)
!480 = !DILocation(line: 1953, column: 23, scope: !475)
!481 = !DILocation(line: 1956, column: 2, scope: !475)
!482 = !DILocation(line: 1959, column: 12, scope: !475)
!483 = !DILocation(line: 1959, column: 7, scope: !475)
!484 = !DILocation(line: 1959, column: 6, scope: !475)
!485 = !DILocation(line: 1960, column: 7, scope: !475)
!486 = !DILocation(line: 1961, column: 3, scope: !475)
!487 = !DILocation(line: 78, column: 9, scope: !411, inlinedAt: !488)
!488 = distinct !DILocation(line: 1964, column: 14, scope: !475)
!489 = !DILocation(line: 1964, column: 7, scope: !475)
!490 = !DILocation(line: 1964, column: 6, scope: !475)
!491 = !DILocation(line: 1965, column: 31, scope: !475)
!492 = !DILocation(line: 1150, column: 2, scope: !493, inlinedAt: !494)
!493 = distinct !DISubprogram(name: "filter_free_subsystem_preds", scope: !1, file: !1, line: 1145, type: !201, scopeLine: 1147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!494 = distinct !DILocation(line: 1965, column: 3, scope: !475)
!495 = !DILocation(line: 1151, column: 13, scope: !493, inlinedAt: !494)
!496 = !DILocation(line: 1151, column: 20, scope: !493, inlinedAt: !494)
!497 = !DILocation(line: 1151, column: 7, scope: !493, inlinedAt: !494)
!498 = !DILocation(line: 1152, column: 4, scope: !493, inlinedAt: !494)
!499 = !DILocation(line: 1153, column: 19, scope: !493, inlinedAt: !494)
!500 = !DILocation(line: 1116, column: 34, scope: !417, inlinedAt: !501)
!501 = distinct !DILocation(line: 1141, column: 2, scope: !502, inlinedAt: !503)
!502 = distinct !DISubprogram(name: "__remove_filter", scope: !1, file: !1, line: 1139, type: !201, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!503 = distinct !DILocation(line: 1153, column: 3, scope: !493, inlinedAt: !494)
!504 = !DILocation(line: 1118, column: 14, scope: !417, inlinedAt: !501)
!505 = !DILocation(line: 1120, column: 16, scope: !417, inlinedAt: !501)
!506 = !DILocation(line: 1120, column: 6, scope: !417, inlinedAt: !501)
!507 = !DILocation(line: 1121, column: 3, scope: !417, inlinedAt: !501)
!508 = !DILocation(line: 1142, column: 29, scope: !502, inlinedAt: !503)
!509 = !DILocation(line: 1016, column: 7, scope: !510, inlinedAt: !511)
!510 = distinct !DISubprogram(name: "remove_filter_string", scope: !1, file: !1, line: 1014, type: !201, scopeLine: 1015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!511 = distinct !DILocation(line: 1142, column: 2, scope: !502, inlinedAt: !503)
!512 = !DILocation(line: 1016, column: 6, scope: !510, inlinedAt: !511)
!513 = !DILocation(line: 1017, column: 3, scope: !510, inlinedAt: !511)
!514 = !DILocation(line: 1019, column: 8, scope: !510, inlinedAt: !511)
!515 = !DILocation(line: 1019, column: 16, scope: !510, inlinedAt: !511)
!516 = !DILocation(line: 1019, column: 2, scope: !510, inlinedAt: !511)
!517 = !DILocation(line: 1020, column: 24, scope: !510, inlinedAt: !511)
!518 = !DILocation(line: 1021, column: 1, scope: !510, inlinedAt: !511)
!519 = distinct !{!519, !492, !520}
!520 = !DILocation(line: 1154, column: 2, scope: !493, inlinedAt: !494)
!521 = !DILocation(line: 1966, column: 32, scope: !475)
!522 = !DILocation(line: 1016, column: 7, scope: !510, inlinedAt: !523)
!523 = distinct !DILocation(line: 1966, column: 3, scope: !475)
!524 = !DILocation(line: 1016, column: 6, scope: !510, inlinedAt: !523)
!525 = !DILocation(line: 1017, column: 3, scope: !510, inlinedAt: !523)
!526 = !DILocation(line: 1019, column: 8, scope: !510, inlinedAt: !523)
!527 = !DILocation(line: 1019, column: 16, scope: !510, inlinedAt: !523)
!528 = !DILocation(line: 1019, column: 2, scope: !510, inlinedAt: !523)
!529 = !DILocation(line: 1020, column: 24, scope: !510, inlinedAt: !523)
!530 = !DILocation(line: 1021, column: 1, scope: !510, inlinedAt: !523)
!531 = !DILocation(line: 1967, column: 20, scope: !475)
!532 = !DILocation(line: 1968, column: 18, scope: !475)
!533 = !DILocation(line: 93, column: 2, scope: !433, inlinedAt: !534)
!534 = distinct !DILocation(line: 1970, column: 3, scope: !475)
!535 = !DILocation(line: 94, column: 2, scope: !433, inlinedAt: !534)
!536 = !DILocation(line: 1168, column: 2, scope: !537, inlinedAt: !538)
!537 = distinct !DISubprogram(name: "filter_free_subsystem_filters", scope: !1, file: !1, line: 1163, type: !201, scopeLine: 1165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!538 = distinct !DILocation(line: 1971, column: 3, scope: !475)
!539 = !DILocation(line: 1169, column: 13, scope: !537, inlinedAt: !538)
!540 = !DILocation(line: 1169, column: 20, scope: !537, inlinedAt: !538)
!541 = !DILocation(line: 1169, column: 7, scope: !537, inlinedAt: !538)
!542 = !DILocation(line: 1170, column: 4, scope: !537, inlinedAt: !538)
!543 = !DILocation(line: 1171, column: 27, scope: !537, inlinedAt: !538)
!544 = !DILocation(line: 1159, column: 22, scope: !545, inlinedAt: !546)
!545 = distinct !DISubprogram(name: "__free_subsystem_filter", scope: !1, file: !1, line: 1157, type: !201, scopeLine: 1158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!546 = distinct !DILocation(line: 1171, column: 3, scope: !537, inlinedAt: !538)
!547 = !DILocation(line: 1159, column: 2, scope: !545, inlinedAt: !546)
!548 = !DILocation(line: 1160, column: 15, scope: !545, inlinedAt: !546)
!549 = !DILocation(line: 1172, column: 2, scope: !537, inlinedAt: !538)
!550 = distinct !{!550, !536, !549}
!551 = !DILocation(line: 1972, column: 3, scope: !475)
!552 = !DILocation(line: 1973, column: 3, scope: !475)
!553 = !DILocation(line: 1877, column: 2, scope: !554, inlinedAt: !555)
!554 = distinct !DISubprogram(name: "create_system_filter", scope: !1, file: !1, line: 1874, type: !201, scopeLine: 1876, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!555 = distinct !DILocation(line: 1976, column: 8, scope: !475)
!556 = !DILocation(line: 1877, column: 29, scope: !554, inlinedAt: !555)
!557 = !DILocation(line: 1880, column: 8, scope: !554, inlinedAt: !555)
!558 = !DILocation(line: 1881, column: 7, scope: !554, inlinedAt: !555)
!559 = !DILocation(line: 1881, column: 6, scope: !554, inlinedAt: !555)
!560 = !DILocation(line: 1882, column: 40, scope: !554, inlinedAt: !555)
!561 = !DILocation(line: 1882, column: 44, scope: !554, inlinedAt: !555)
!562 = !DILocation(line: 1699, column: 2, scope: !563, inlinedAt: !564)
!563 = distinct !DISubprogram(name: "process_system_preds", scope: !1, file: !1, line: 1690, type: !201, scopeLine: 1694, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!564 = distinct !DILocation(line: 1882, column: 9, scope: !554, inlinedAt: !555)
!565 = !DILocation(line: 1703, column: 2, scope: !563, inlinedAt: !564)
!566 = !DILocation(line: 1705, column: 13, scope: !563, inlinedAt: !564)
!567 = !DILocation(line: 1705, column: 20, scope: !563, inlinedAt: !564)
!568 = !DILocation(line: 1705, column: 7, scope: !563, inlinedAt: !564)
!569 = !DILocation(line: 376, column: 3, scope: !570, inlinedAt: !572)
!570 = distinct !DISubprogram(name: "__kmalloc_index", scope: !571, file: !571, line: 369, type: !201, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!571 = !DIFile(filename: "../include/linux/slab.h", directory: "/llk/linux-5.17/build_arm_allyes")
!572 = distinct !DILocation(line: 576, column: 11, scope: !573, inlinedAt: !574)
!573 = distinct !DISubprogram(name: "kmalloc", scope: !571, file: !571, line: 567, type: !201, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!574 = distinct !DILocation(line: 714, column: 9, scope: !575, inlinedAt: !576)
!575 = distinct !DISubprogram(name: "kzalloc", scope: !571, file: !571, line: 712, type: !201, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!576 = distinct !DILocation(line: 1708, column: 12, scope: !563, inlinedAt: !564)
!577 = !DILocation(line: 582, column: 33, scope: !573, inlinedAt: !574)
!578 = !DILocation(line: 339, column: 3, scope: !579, inlinedAt: !580)
!579 = distinct !DISubprogram(name: "kmalloc_type", scope: !571, file: !571, line: 332, type: !201, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!580 = distinct !DILocation(line: 582, column: 20, scope: !573, inlinedAt: !574)
!581 = !DILocation(line: 582, column: 5, scope: !573, inlinedAt: !574)
!582 = !DILocation(line: 581, column: 10, scope: !573, inlinedAt: !574)
!583 = !DILocation(line: 1709, column: 8, scope: !563, inlinedAt: !564)
!584 = !DILocation(line: 1709, column: 7, scope: !563, inlinedAt: !564)
!585 = !DILocation(line: 1710, column: 4, scope: !563, inlinedAt: !564)
!586 = !DILocation(line: 1712, column: 27, scope: !563, inlinedAt: !564)
!587 = !DILocation(line: 1712, column: 11, scope: !563, inlinedAt: !564)
!588 = !DILocation(line: 1712, column: 25, scope: !563, inlinedAt: !564)
!589 = !DILocation(line: 1713, column: 8, scope: !563, inlinedAt: !564)
!590 = !DILocation(line: 1713, column: 7, scope: !563, inlinedAt: !564)
!591 = !DILocation(line: 1714, column: 4, scope: !563, inlinedAt: !564)
!592 = !DILocation(line: 1716, column: 29, scope: !563, inlinedAt: !564)
!593 = !DILocation(line: 1716, column: 9, scope: !563, inlinedAt: !564)
!594 = !DILocation(line: 1717, column: 7, scope: !563, inlinedAt: !564)
!595 = !DILocation(line: 1718, column: 19, scope: !563, inlinedAt: !564)
!596 = !DILocation(line: 1116, column: 34, scope: !417, inlinedAt: !597)
!597 = distinct !DILocation(line: 1718, column: 4, scope: !563, inlinedAt: !564)
!598 = !DILocation(line: 1118, column: 14, scope: !417, inlinedAt: !597)
!599 = !DILocation(line: 1120, column: 16, scope: !417, inlinedAt: !597)
!600 = !DILocation(line: 1120, column: 6, scope: !417, inlinedAt: !597)
!601 = !DILocation(line: 1121, column: 3, scope: !417, inlinedAt: !597)
!602 = !DILocation(line: 136, column: 14, scope: !603, inlinedAt: !604)
!603 = distinct !DISubprogram(name: "parse_error", scope: !1, file: !1, line: 134, type: !201, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!604 = distinct !DILocation(line: 1719, column: 4, scope: !563, inlinedAt: !564)
!605 = !DILocation(line: 137, column: 18, scope: !603, inlinedAt: !604)
!606 = !DILocation(line: 1720, column: 4, scope: !563, inlinedAt: !564)
!607 = !DILocation(line: 1721, column: 3, scope: !563, inlinedAt: !564)
!608 = !DILocation(line: 1722, column: 28, scope: !563, inlinedAt: !564)
!609 = !DILocation(line: 1666, column: 34, scope: !449, inlinedAt: !610)
!610 = distinct !DILocation(line: 1722, column: 4, scope: !563, inlinedAt: !564)
!611 = !DILocation(line: 1668, column: 14, scope: !449, inlinedAt: !610)
!612 = !DILocation(line: 1670, column: 16, scope: !449, inlinedAt: !610)
!613 = !DILocation(line: 1670, column: 6, scope: !449, inlinedAt: !610)
!614 = !DILocation(line: 1671, column: 3, scope: !449, inlinedAt: !610)
!615 = !DILocation(line: 376, column: 3, scope: !570, inlinedAt: !616)
!616 = distinct !DILocation(line: 576, column: 11, scope: !573, inlinedAt: !617)
!617 = distinct !DILocation(line: 714, column: 9, scope: !575, inlinedAt: !618)
!618 = distinct !DILocation(line: 1725, column: 17, scope: !563, inlinedAt: !564)
!619 = !DILocation(line: 582, column: 33, scope: !573, inlinedAt: !617)
!620 = !DILocation(line: 339, column: 3, scope: !579, inlinedAt: !621)
!621 = distinct !DILocation(line: 582, column: 20, scope: !573, inlinedAt: !617)
!622 = !DILocation(line: 582, column: 5, scope: !573, inlinedAt: !617)
!623 = !DILocation(line: 581, column: 10, scope: !573, inlinedAt: !617)
!624 = !DILocation(line: 1726, column: 8, scope: !563, inlinedAt: !564)
!625 = !DILocation(line: 1726, column: 7, scope: !563, inlinedAt: !564)
!626 = !DILocation(line: 1727, column: 4, scope: !563, inlinedAt: !564)
!627 = !DILocation(line: 102, column: 24, scope: !628, inlinedAt: !630)
!628 = distinct !DISubprogram(name: "list_add_tail", scope: !629, file: !629, line: 100, type: !201, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!629 = !DIFile(filename: "../include/linux/list.h", directory: "/llk/linux-5.17/build_arm_allyes")
!630 = distinct !DILocation(line: 1729, column: 3, scope: !563, inlinedAt: !564)
!631 = !DILocation(line: 69, column: 7, scope: !632, inlinedAt: !633)
!632 = distinct !DISubprogram(name: "__list_add", scope: !629, file: !629, line: 65, type: !201, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!633 = distinct !DILocation(line: 102, column: 2, scope: !628, inlinedAt: !630)
!634 = !DILocation(line: 69, column: 6, scope: !632, inlinedAt: !633)
!635 = !DILocation(line: 72, column: 13, scope: !632, inlinedAt: !633)
!636 = !DILocation(line: 73, column: 12, scope: !632, inlinedAt: !633)
!637 = !DILocation(line: 74, column: 7, scope: !632, inlinedAt: !633)
!638 = !DILocation(line: 74, column: 12, scope: !632, inlinedAt: !633)
!639 = !DILocation(line: 75, column: 2, scope: !632, inlinedAt: !633)
!640 = !DILocation(line: 1706, column: 4, scope: !563, inlinedAt: !564)
!641 = distinct !{!641, !565, !642}
!642 = !DILocation(line: 1739, column: 2, scope: !563, inlinedAt: !564)
!643 = !DILocation(line: 0, scope: !632, inlinedAt: !633)
!644 = !DILocation(line: 1072, column: 15, scope: !288, inlinedAt: !645)
!645 = distinct !DILocation(line: 1734, column: 25, scope: !563, inlinedAt: !564)
!646 = !DILocation(line: 1734, column: 16, scope: !563, inlinedAt: !564)
!647 = !DILocation(line: 1734, column: 23, scope: !563, inlinedAt: !564)
!648 = !DILocation(line: 1677, column: 2, scope: !463, inlinedAt: !649)
!649 = distinct !DILocation(line: 1735, column: 3, scope: !563, inlinedAt: !564)
!650 = distinct !{!650, !565, !642}
!651 = !DILocation(line: 1741, column: 6, scope: !563, inlinedAt: !564)
!652 = !DILocation(line: 93, column: 2, scope: !433, inlinedAt: !653)
!653 = distinct !DILocation(line: 1749, column: 2, scope: !563, inlinedAt: !564)
!654 = !DILocation(line: 94, column: 2, scope: !433, inlinedAt: !653)
!655 = !DILocation(line: 1750, column: 2, scope: !563, inlinedAt: !564)
!656 = !DILocation(line: 1751, column: 30, scope: !563, inlinedAt: !564)
!657 = !DILocation(line: 1751, column: 3, scope: !563, inlinedAt: !564)
!658 = !DILocation(line: 134, column: 7, scope: !659, inlinedAt: !660)
!659 = distinct !DISubprogram(name: "__list_del_entry", scope: !629, file: !629, line: 132, type: !201, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!660 = distinct !DILocation(line: 148, column: 2, scope: !661, inlinedAt: !662)
!661 = distinct !DISubprogram(name: "list_del", scope: !629, file: !629, line: 146, type: !201, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!662 = distinct !DILocation(line: 1752, column: 3, scope: !563, inlinedAt: !564)
!663 = !DILocation(line: 134, column: 6, scope: !659, inlinedAt: !660)
!664 = !DILocation(line: 135, column: 3, scope: !659, inlinedAt: !660)
!665 = !DILocation(line: 137, column: 13, scope: !659, inlinedAt: !660)
!666 = !DILocation(line: 137, column: 20, scope: !659, inlinedAt: !660)
!667 = !DILocation(line: 137, column: 33, scope: !659, inlinedAt: !660)
!668 = !DILocation(line: 114, column: 8, scope: !669, inlinedAt: !670)
!669 = distinct !DISubprogram(name: "__list_del", scope: !629, file: !629, line: 112, type: !201, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!670 = distinct !DILocation(line: 137, column: 2, scope: !659, inlinedAt: !660)
!671 = !DILocation(line: 114, column: 13, scope: !669, inlinedAt: !670)
!672 = !DILocation(line: 115, column: 2, scope: !669, inlinedAt: !670)
!673 = !DILocation(line: 138, column: 1, scope: !659, inlinedAt: !660)
!674 = !DILocation(line: 149, column: 14, scope: !661, inlinedAt: !662)
!675 = !DILocation(line: 150, column: 9, scope: !661, inlinedAt: !662)
!676 = !DILocation(line: 150, column: 14, scope: !661, inlinedAt: !662)
!677 = !DILocation(line: 1753, column: 3, scope: !563, inlinedAt: !564)
!678 = distinct !{!678, !655, !679}
!679 = !DILocation(line: 1754, column: 2, scope: !563, inlinedAt: !564)
!680 = !DILocation(line: 1758, column: 2, scope: !563, inlinedAt: !564)
!681 = !DILocation(line: 134, column: 7, scope: !659, inlinedAt: !682)
!682 = distinct !DILocation(line: 148, column: 2, scope: !661, inlinedAt: !683)
!683 = distinct !DILocation(line: 1759, column: 3, scope: !563, inlinedAt: !564)
!684 = !DILocation(line: 134, column: 6, scope: !659, inlinedAt: !682)
!685 = !DILocation(line: 135, column: 3, scope: !659, inlinedAt: !682)
!686 = !DILocation(line: 137, column: 13, scope: !659, inlinedAt: !682)
!687 = !DILocation(line: 137, column: 20, scope: !659, inlinedAt: !682)
!688 = !DILocation(line: 137, column: 33, scope: !659, inlinedAt: !682)
!689 = !DILocation(line: 114, column: 8, scope: !669, inlinedAt: !690)
!690 = distinct !DILocation(line: 137, column: 2, scope: !659, inlinedAt: !682)
!691 = !DILocation(line: 114, column: 13, scope: !669, inlinedAt: !690)
!692 = !DILocation(line: 115, column: 2, scope: !669, inlinedAt: !690)
!693 = !DILocation(line: 138, column: 1, scope: !659, inlinedAt: !682)
!694 = !DILocation(line: 149, column: 14, scope: !661, inlinedAt: !683)
!695 = !DILocation(line: 150, column: 9, scope: !661, inlinedAt: !683)
!696 = !DILocation(line: 150, column: 14, scope: !661, inlinedAt: !683)
!697 = !DILocation(line: 1760, column: 3, scope: !563, inlinedAt: !564)
!698 = distinct !{!698, !680, !699}
!699 = !DILocation(line: 1761, column: 2, scope: !563, inlinedAt: !564)
!700 = !DILocation(line: 1762, column: 14, scope: !563, inlinedAt: !564)
!701 = !DILocation(line: 136, column: 14, scope: !603, inlinedAt: !702)
!702 = distinct !DILocation(line: 1762, column: 2, scope: !563, inlinedAt: !564)
!703 = !DILocation(line: 137, column: 6, scope: !603, inlinedAt: !702)
!704 = !DILocation(line: 137, column: 18, scope: !603, inlinedAt: !702)
!705 = !DILocation(line: 1763, column: 2, scope: !563, inlinedAt: !564)
!706 = !DILocation(line: 1765, column: 2, scope: !563, inlinedAt: !564)
!707 = !DILocation(line: 1767, column: 6, scope: !563, inlinedAt: !564)
!708 = !DILocation(line: 1768, column: 3, scope: !563, inlinedAt: !564)
!709 = !DILocation(line: 93, column: 2, scope: !433, inlinedAt: !710)
!710 = distinct !DILocation(line: 1768, column: 3, scope: !563, inlinedAt: !564)
!711 = !DILocation(line: 94, column: 2, scope: !433, inlinedAt: !710)
!712 = !DILocation(line: 1769, column: 2, scope: !563, inlinedAt: !564)
!713 = !DILocation(line: 1770, column: 30, scope: !563, inlinedAt: !564)
!714 = !DILocation(line: 1770, column: 3, scope: !563, inlinedAt: !564)
!715 = !DILocation(line: 134, column: 7, scope: !659, inlinedAt: !716)
!716 = distinct !DILocation(line: 148, column: 2, scope: !661, inlinedAt: !717)
!717 = distinct !DILocation(line: 1771, column: 3, scope: !563, inlinedAt: !564)
!718 = !DILocation(line: 134, column: 6, scope: !659, inlinedAt: !716)
!719 = !DILocation(line: 135, column: 3, scope: !659, inlinedAt: !716)
!720 = !DILocation(line: 137, column: 13, scope: !659, inlinedAt: !716)
!721 = !DILocation(line: 137, column: 20, scope: !659, inlinedAt: !716)
!722 = !DILocation(line: 137, column: 33, scope: !659, inlinedAt: !716)
!723 = !DILocation(line: 114, column: 8, scope: !669, inlinedAt: !724)
!724 = distinct !DILocation(line: 137, column: 2, scope: !659, inlinedAt: !716)
!725 = !DILocation(line: 114, column: 13, scope: !669, inlinedAt: !724)
!726 = !DILocation(line: 115, column: 2, scope: !669, inlinedAt: !724)
!727 = !DILocation(line: 138, column: 1, scope: !659, inlinedAt: !716)
!728 = !DILocation(line: 149, column: 14, scope: !661, inlinedAt: !717)
!729 = !DILocation(line: 150, column: 9, scope: !661, inlinedAt: !717)
!730 = !DILocation(line: 150, column: 14, scope: !661, inlinedAt: !717)
!731 = !DILocation(line: 1772, column: 3, scope: !563, inlinedAt: !564)
!732 = distinct !{!732, !712, !733}
!733 = !DILocation(line: 1773, column: 2, scope: !563, inlinedAt: !564)
!734 = !DILocation(line: 1755, column: 2, scope: !563, inlinedAt: !564)
!735 = !DILocation(line: 1775, column: 1, scope: !563, inlinedAt: !564)
!736 = !DILocation(line: 1885, column: 12, scope: !554, inlinedAt: !555)
!737 = !DILocation(line: 1885, column: 11, scope: !554, inlinedAt: !555)
!738 = !DILocation(line: 1885, column: 22, scope: !554, inlinedAt: !555)
!739 = !DILocation(line: 1885, column: 4, scope: !554, inlinedAt: !555)
!740 = !DILocation(line: 1886, column: 30, scope: !554, inlinedAt: !555)
!741 = !DILocation(line: 1887, column: 3, scope: !554, inlinedAt: !555)
!742 = !DILocation(line: 1888, column: 22, scope: !554, inlinedAt: !555)
!743 = !DILocation(line: 1888, column: 27, scope: !554, inlinedAt: !555)
!744 = !DILocation(line: 1888, column: 31, scope: !554, inlinedAt: !555)
!745 = !DILocation(line: 1888, column: 35, scope: !554, inlinedAt: !555)
!746 = !DILocation(line: 1888, column: 4, scope: !554, inlinedAt: !555)
!747 = !DILocation(line: 0, scope: !554, inlinedAt: !555)
!748 = !DILocation(line: 1891, column: 23, scope: !554, inlinedAt: !555)
!749 = !DILocation(line: 1812, column: 2, scope: !400, inlinedAt: !750)
!750 = distinct !DILocation(line: 1891, column: 2, scope: !554, inlinedAt: !555)
!751 = !DILocation(line: 1894, column: 1, scope: !554, inlinedAt: !555)
!752 = !DILocation(line: 1977, column: 6, scope: !475)
!753 = !DILocation(line: 1982, column: 17, scope: !475)
!754 = !DILocation(line: 1982, column: 25, scope: !475)
!755 = !DILocation(line: 1982, column: 3, scope: !475)
!756 = !DILocation(line: 1983, column: 18, scope: !475)
!757 = !DILocation(line: 1984, column: 2, scope: !475)
!758 = !DILocation(line: 0, scope: !475)
!759 = !DILocation(line: 1986, column: 2, scope: !475)
!760 = !DILocation(line: 1989, column: 1, scope: !475)
!761 = !DILocation(line: 1988, column: 2, scope: !475)
!762 = distinct !DISubprogram(name: "ftrace_profile_free_filter", scope: !1, file: !1, line: 1993, type: !201, scopeLine: 1994, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!763 = !DILocation(line: 1994, scope: !762)
!764 = !DILocation(line: 1995, column: 39, scope: !762)
!765 = !DILocation(line: 1997, column: 16, scope: !762)
!766 = !DILocation(line: 1998, column: 2, scope: !762)
!767 = !DILocation(line: 1999, column: 1, scope: !762)
!768 = distinct !DISubprogram(name: "ftrace_profile_set_filter", scope: !1, file: !1, line: 2156, type: !201, scopeLine: 2158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!769 = !DILocation(line: 2158, scope: !768)
!770 = !DILocation(line: 2160, column: 2, scope: !768)
!771 = !DILocation(line: 2160, column: 23, scope: !768)
!772 = !DILocation(line: 2163, column: 2, scope: !768)
!773 = !DILocation(line: 2165, column: 16, scope: !768)
!774 = !DILocation(line: 2168, column: 7, scope: !768)
!775 = !DILocation(line: 2168, column: 6, scope: !768)
!776 = !DILocation(line: 2169, column: 3, scope: !768)
!777 = !DILocation(line: 2172, column: 13, scope: !768)
!778 = !DILocation(line: 2172, column: 6, scope: !768)
!779 = !DILocation(line: 2173, column: 3, scope: !768)
!780 = !DILocation(line: 2175, column: 8, scope: !768)
!781 = !DILocation(line: 2176, column: 6, scope: !768)
!782 = !DILocation(line: 2177, column: 3, scope: !768)
!783 = !DILocation(line: 2185, column: 10, scope: !768)
!784 = !DILocation(line: 2179, column: 6, scope: !768)
!785 = !DILocation(line: 2180, column: 36, scope: !768)
!786 = !DILocation(line: 2180, column: 43, scope: !768)
!787 = !DILocation(line: 283, column: 9, scope: !788, inlinedAt: !790)
!788 = distinct !DISubprogram(name: "lock_is_held", scope: !789, file: !789, line: 281, type: !201, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!789 = !DIFile(filename: "../include/linux/lockdep.h", directory: "/llk/linux-5.17/build_arm_allyes")
!790 = distinct !DILocation(line: 2128, column: 28, scope: !791, inlinedAt: !792)
!791 = distinct !DISubprogram(name: "ftrace_function_set_filter", scope: !1, file: !1, line: 2125, type: !201, scopeLine: 2127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!792 = distinct !DILocation(line: 2180, column: 9, scope: !768)
!793 = !DILocation(line: 2128, column: 28, scope: !791, inlinedAt: !792)
!794 = !DILocation(line: 2130, column: 2, scope: !791, inlinedAt: !792)
!795 = !DILocation(line: 2133, column: 28, scope: !791, inlinedAt: !792)
!796 = !DILocation(line: 2130, column: 37, scope: !791, inlinedAt: !792)
!797 = !DILocation(line: 2137, column: 22, scope: !791, inlinedAt: !792)
!798 = !DILocation(line: 2137, column: 2, scope: !791, inlinedAt: !792)
!799 = !DILocation(line: 2116, column: 11, scope: !800, inlinedAt: !801)
!800 = distinct !DISubprogram(name: "is_or", scope: !1, file: !1, line: 2107, type: !201, scopeLine: 2108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!801 = distinct !DILocation(line: 2140, column: 8, scope: !791, inlinedAt: !792)
!802 = !DILocation(line: 2116, column: 19, scope: !800, inlinedAt: !801)
!803 = !DILocation(line: 2116, column: 26, scope: !800, inlinedAt: !801)
!804 = !DILocation(line: 2118, column: 19, scope: !800, inlinedAt: !801)
!805 = !DILocation(line: 2118, column: 6, scope: !800, inlinedAt: !801)
!806 = !DILocation(line: 2119, column: 3, scope: !800, inlinedAt: !801)
!807 = !DILocation(line: 2140, column: 7, scope: !791, inlinedAt: !792)
!808 = !DILocation(line: 2122, column: 9, scope: !800, inlinedAt: !801)
!809 = !DILocation(line: 2122, column: 17, scope: !800, inlinedAt: !801)
!810 = !DILocation(line: 2122, column: 48, scope: !800, inlinedAt: !801)
!811 = !DILocation(line: 2122, column: 32, scope: !800, inlinedAt: !801)
!812 = !DILocation(line: 2141, column: 4, scope: !791, inlinedAt: !792)
!813 = !DILocation(line: 2075, column: 43, scope: !814, inlinedAt: !815)
!814 = distinct !DISubprogram(name: "ftrace_function_check_pred", scope: !1, file: !1, line: 2073, type: !201, scopeLine: 2074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!815 = distinct !DILocation(line: 2097, column: 8, scope: !816, inlinedAt: !817)
!816 = distinct !DISubprogram(name: "ftrace_function_set_filter_pred", scope: !1, file: !1, line: 2091, type: !201, scopeLine: 2093, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!817 = distinct !DILocation(line: 2143, column: 7, scope: !791, inlinedAt: !792)
!818 = !DILocation(line: 2082, column: 13, scope: !814, inlinedAt: !815)
!819 = !DILocation(line: 2082, column: 16, scope: !814, inlinedAt: !815)
!820 = !DILocation(line: 2082, column: 26, scope: !814, inlinedAt: !815)
!821 = !DILocation(line: 2082, column: 30, scope: !814, inlinedAt: !815)
!822 = !DILocation(line: 2082, column: 39, scope: !814, inlinedAt: !815)
!823 = !DILocation(line: 2082, column: 6, scope: !814, inlinedAt: !815)
!824 = !DILocation(line: 2083, column: 3, scope: !814, inlinedAt: !815)
!825 = !DILocation(line: 2085, column: 20, scope: !814, inlinedAt: !815)
!826 = !DILocation(line: 2085, column: 6, scope: !814, inlinedAt: !815)
!827 = !DILocation(line: 2086, column: 3, scope: !814, inlinedAt: !815)
!828 = !DILocation(line: 2099, column: 10, scope: !816, inlinedAt: !817)
!829 = !DILocation(line: 2143, column: 7, scope: !791, inlinedAt: !792)
!830 = !DILocation(line: 2088, column: 2, scope: !814, inlinedAt: !815)
!831 = !DILocation(line: 2101, column: 38, scope: !816, inlinedAt: !817)
!832 = !DILocation(line: 2102, column: 16, scope: !816, inlinedAt: !817)
!833 = !DILocation(line: 2103, column: 22, scope: !816, inlinedAt: !817)
!834 = !DILocation(line: 2044, column: 2, scope: !835, inlinedAt: !836)
!835 = distinct !DISubprogram(name: "__ftrace_function_set_filter", scope: !1, file: !1, line: 2041, type: !201, scopeLine: 2043, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!836 = distinct !DILocation(line: 2101, column: 9, scope: !816, inlinedAt: !817)
!837 = !DILocation(line: 2044, column: 9, scope: !835, inlinedAt: !836)
!838 = !{!"auto-init"}
!839 = !DILocation(line: 2048, column: 10, scope: !835, inlinedAt: !836)
!840 = !DILocation(line: 2048, column: 42, scope: !835, inlinedAt: !836)
!841 = !DILocation(line: 2013, column: 8, scope: !842, inlinedAt: !843)
!842 = distinct !DISubprogram(name: "ftrace_function_filter_re", scope: !1, file: !1, line: 2009, type: !201, scopeLine: 2010, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!843 = distinct !DILocation(line: 2055, column: 7, scope: !835, inlinedAt: !836)
!844 = !DILocation(line: 2014, column: 7, scope: !842, inlinedAt: !843)
!845 = !DILocation(line: 2014, column: 6, scope: !842, inlinedAt: !843)
!846 = !DILocation(line: 2015, column: 3, scope: !842, inlinedAt: !843)
!847 = !DILocation(line: 2056, column: 6, scope: !835, inlinedAt: !836)
!848 = !DILocation(line: 2021, column: 13, scope: !842, inlinedAt: !843)
!849 = !DILocation(line: 2021, column: 2, scope: !842, inlinedAt: !843)
!850 = !DILocation(line: 2023, column: 7, scope: !842, inlinedAt: !843)
!851 = !DILocation(line: 2024, column: 2, scope: !842, inlinedAt: !843)
!852 = !DILocation(line: 2056, column: 7, scope: !835, inlinedAt: !836)
!853 = !DILocation(line: 2057, column: 3, scope: !835, inlinedAt: !836)
!854 = !DILocation(line: 2071, column: 1, scope: !835, inlinedAt: !836)
!855 = !DILocation(line: 2059, column: 9, scope: !835, inlinedAt: !836)
!856 = !DILocation(line: 2059, column: 18, scope: !835, inlinedAt: !836)
!857 = !DILocation(line: 2059, column: 16, scope: !835, inlinedAt: !836)
!858 = !DILocation(line: 2059, column: 2, scope: !835, inlinedAt: !836)
!859 = !DILocation(line: 2069, column: 2, scope: !835, inlinedAt: !836)
!860 = !DILocation(line: 2060, column: 55, scope: !835, inlinedAt: !836)
!861 = !DILocation(line: 2061, column: 8, scope: !835, inlinedAt: !836)
!862 = !DILocation(line: 2061, column: 15, scope: !835, inlinedAt: !836)
!863 = !DILocation(line: 2033, column: 6, scope: !864, inlinedAt: !865)
!864 = distinct !DISubprogram(name: "ftrace_function_set_regexp", scope: !1, file: !1, line: 2028, type: !201, scopeLine: 2030, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!865 = distinct !DILocation(line: 2060, column: 9, scope: !835, inlinedAt: !836)
!866 = !DILocation(line: 2034, column: 27, scope: !864, inlinedAt: !865)
!867 = !DILocation(line: 2034, column: 9, scope: !864, inlinedAt: !865)
!868 = !DILocation(line: 2034, column: 3, scope: !864, inlinedAt: !865)
!869 = !DILocation(line: 2036, column: 28, scope: !864, inlinedAt: !865)
!870 = !DILocation(line: 2036, column: 9, scope: !864, inlinedAt: !865)
!871 = !DILocation(line: 0, scope: !864, inlinedAt: !865)
!872 = !DILocation(line: 2062, column: 7, scope: !835, inlinedAt: !836)
!873 = !DILocation(line: 2065, column: 7, scope: !835, inlinedAt: !836)
!874 = !DILocation(line: 2066, column: 5, scope: !835, inlinedAt: !836)
!875 = !DILocation(line: 2066, column: 11, scope: !835, inlinedAt: !836)
!876 = !DILocation(line: 2066, column: 4, scope: !835, inlinedAt: !836)
!877 = !DILocation(line: 2059, column: 27, scope: !835, inlinedAt: !836)
!878 = distinct !{!878, !858, !879}
!879 = !DILocation(line: 2067, column: 2, scope: !835, inlinedAt: !836)
!880 = !DILocation(line: 2063, column: 4, scope: !835, inlinedAt: !836)
!881 = !DILocation(line: 2143, column: 52, scope: !791, inlinedAt: !792)
!882 = !DILocation(line: 2144, column: 4, scope: !791, inlinedAt: !792)
!883 = !DILocation(line: 2145, column: 2, scope: !791, inlinedAt: !792)
!884 = !DILocation(line: 2137, column: 29, scope: !791, inlinedAt: !792)
!885 = distinct !{!885, !798, !883}
!886 = !DILocation(line: 2182, column: 19, scope: !768)
!887 = !DILocation(line: 2182, column: 17, scope: !768)
!888 = !DILocation(line: 2147, column: 1, scope: !791, inlinedAt: !792)
!889 = !DILocation(line: 2146, column: 2, scope: !791, inlinedAt: !792)
!890 = !DILocation(line: 2185, column: 38, scope: !768)
!891 = !DILocation(line: 2185, column: 13, scope: !768)
!892 = !DILocation(line: 2185, column: 6, scope: !768)
!893 = !DILocation(line: 2186, column: 17, scope: !768)
!894 = !DILocation(line: 2186, column: 3, scope: !768)
!895 = !DILocation(line: 0, scope: !768)
!896 = !DILocation(line: 2189, column: 2, scope: !768)
!897 = !DILocation(line: 2192, column: 1, scope: !768)
!898 = !DILocation(line: 2191, column: 2, scope: !768)
!899 = distinct !DISubprogram(name: "__traceiter_ftrace_test_filter", scope: !900, file: !900, line: 10, type: !201, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!900 = !DIFile(filename: "../kernel/trace/./trace_events_filter_test.h", directory: "/llk/linux-5.17/build_arm_allyes")
!901 = !DILocation(line: 10, scope: !899)
!902 = !DILocation(line: 10, column: 1, scope: !899)
!903 = distinct !{!903, !902, !902}
!904 = distinct !DISubprogram(name: "trace_event_raw_event_ftrace_test_filter", scope: !900, file: !900, line: 10, type: !201, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!905 = !DILocation(line: 10, scope: !904)
!906 = !DILocation(line: 10, column: 1, scope: !904)
!907 = !DILocation(line: 716, column: 31, scope: !908, inlinedAt: !910)
!908 = distinct !DISubprogram(name: "trace_trigger_soft_disabled", scope: !909, file: !909, line: 714, type: !201, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!909 = !DIFile(filename: "../include/linux/trace_events.h", directory: "/llk/linux-5.17/build_arm_allyes")
!910 = distinct !DILocation(line: 10, column: 1, scope: !904)
!911 = !DILocation(line: 718, column: 6, scope: !908, inlinedAt: !910)
!912 = !DILocation(line: 723, column: 6, scope: !908, inlinedAt: !910)
!913 = !{!"branch_weights", i32 1, i32 2000}
!914 = !DILocation(line: 726, column: 39, scope: !908, inlinedAt: !910)
!915 = !DILocation(line: 726, column: 9, scope: !908, inlinedAt: !910)
!916 = !DILocation(line: 0, scope: !904)
!917 = !DILocation(line: 0, scope: !908, inlinedAt: !910)
!918 = distinct !DISubprogram(name: "perf_trace_ftrace_test_filter", scope: !900, file: !900, line: 10, type: !201, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!919 = !DILocation(line: 10, scope: !918)
!920 = !DILocation(line: 10, column: 1, scope: !918)
!921 = !DILocation(line: 104, column: 4, scope: !922, inlinedAt: !924)
!922 = distinct !DISubprogram(name: "current_thread_info", scope: !923, file: !923, line: 101, type: !201, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!923 = !DIFile(filename: "../arch/arm/include/asm/thread_info.h", directory: "/llk/linux-5.17/build_arm_allyes")
!924 = distinct !DILocation(line: 10, column: 1, scope: !918)
!925 = !DILocation(line: 104, column: 26, scope: !922, inlinedAt: !924)
!926 = !DILocation(line: 103, column: 9, scope: !922, inlinedAt: !924)
!927 = !DILocation(line: 436, column: 11, scope: !928, inlinedAt: !929)
!928 = distinct !DISubprogram(name: "bpf_prog_array_valid", scope: !909, file: !909, line: 417, type: !201, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!929 = distinct !DILocation(line: 10, column: 1, scope: !918)
!930 = !DILocation(line: 436, column: 10, scope: !928, inlinedAt: !929)
!931 = !DILocation(line: 840, column: 10, scope: !932, inlinedAt: !933)
!932 = distinct !DISubprogram(name: "hlist_empty", scope: !629, file: !629, line: 838, type: !201, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!933 = distinct !DILocation(line: 10, column: 1, scope: !918)
!934 = !DILocation(line: 840, column: 9, scope: !932, inlinedAt: !933)
!935 = !DILocation(line: 0, scope: !918)
!936 = !DILocation(line: 1171, column: 2, scope: !937, inlinedAt: !939)
!937 = distinct !DISubprogram(name: "perf_fetch_caller_regs", scope: !938, file: !938, line: 1169, type: !201, scopeLine: 1170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!938 = !DIFile(filename: "../include/linux/perf_event.h", directory: "/llk/linux-5.17/build_arm_allyes")
!939 = distinct !DILocation(line: 10, column: 1, scope: !918)
!940 = distinct !DISubprogram(name: "__bpf_trace_ftrace_test_filter", scope: !900, file: !900, line: 10, type: !201, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!941 = !DILocation(line: 10, scope: !940)
!942 = !DILocation(line: 10, column: 1, scope: !940)
!943 = distinct !DISubprogram(name: "ftrace_test_event_filter", scope: !1, file: !1, line: 2313, type: !201, scopeLine: 2314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!944 = !DILocation(line: 2314, scope: !943)
!945 = !DILocation(line: 2317, column: 2, scope: !943)
!946 = !DILocation(line: 2319, column: 2, scope: !943)
!947 = !DILocation(line: 2320, column: 3, scope: !943)
!948 = !DILocation(line: 2320, column: 24, scope: !943)
!949 = !DILocation(line: 2321, column: 35, scope: !943)
!950 = !DILocation(line: 2325, column: 12, scope: !943)
!951 = !DILocation(line: 2324, column: 9, scope: !943)
!952 = !DILocation(line: 2326, column: 7, scope: !943)
!953 = !DILocation(line: 2327, column: 4, scope: !943)
!954 = !DILocation(line: 2330, column: 18, scope: !943)
!955 = !DILocation(line: 2330, column: 4, scope: !943)
!956 = !DILocation(line: 2331, column: 4, scope: !943)
!957 = !DILocation(line: 2335, column: 3, scope: !943)
!958 = !DILocation(line: 16, column: 10, scope: !959, inlinedAt: !961)
!959 = distinct !DISubprogram(name: "preempt_count_ptr", scope: !960, file: !960, line: 14, type: !201, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!960 = !DIFile(filename: "../include/asm-generic/preempt.h", directory: "/llk/linux-5.17/build_arm_allyes")
!961 = distinct !DILocation(line: 54, column: 3, scope: !962, inlinedAt: !963)
!962 = distinct !DISubprogram(name: "__preempt_count_add", scope: !960, file: !960, line: 52, type: !201, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!963 = distinct !DILocation(line: 2340, column: 3, scope: !943)
!964 = !DILocation(line: 104, column: 4, scope: !922, inlinedAt: !965)
!965 = distinct !DILocation(line: 16, column: 10, scope: !959, inlinedAt: !961)
!966 = !DILocation(line: 104, column: 26, scope: !922, inlinedAt: !965)
!967 = !DILocation(line: 103, column: 9, scope: !922, inlinedAt: !965)
!968 = !DILocation(line: 16, column: 33, scope: !959, inlinedAt: !961)
!969 = !DILocation(line: 54, column: 23, scope: !962, inlinedAt: !963)
!970 = !DILocation(line: 2340, column: 3, scope: !943)
!971 = !{i64 2155810498}
!972 = !DILocation(line: 2341, column: 11, scope: !943)
!973 = !DILocation(line: 2341, column: 7, scope: !943)
!974 = !DILocation(line: 2342, column: 19, scope: !943)
!975 = !DILocation(line: 283, column: 9, scope: !788, inlinedAt: !976)
!976 = distinct !DILocation(line: 2291, column: 28, scope: !977, inlinedAt: !978)
!977 = distinct !DISubprogram(name: "update_pred_fn", scope: !1, file: !1, line: 2289, type: !201, scopeLine: 2290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!978 = distinct !DILocation(line: 2342, column: 4, scope: !943)
!979 = !DILocation(line: 2291, column: 28, scope: !977, inlinedAt: !978)
!980 = !DILocation(line: 2295, column: 22, scope: !977, inlinedAt: !978)
!981 = !DILocation(line: 2295, column: 2, scope: !977, inlinedAt: !978)
!982 = !DILocation(line: 2297, column: 44, scope: !977, inlinedAt: !978)
!983 = !DILocation(line: 2299, column: 3, scope: !977, inlinedAt: !978)
!984 = !DILocation(line: 2301, column: 8, scope: !977, inlinedAt: !978)
!985 = !DILocation(line: 2301, column: 7, scope: !977, inlinedAt: !978)
!986 = !DILocation(line: 2302, column: 4, scope: !977, inlinedAt: !978)
!987 = !DILocation(line: 2306, column: 31, scope: !977, inlinedAt: !978)
!988 = !DILocation(line: 2306, column: 23, scope: !977, inlinedAt: !978)
!989 = !DILocation(line: 2306, column: 8, scope: !977, inlinedAt: !978)
!990 = !DILocation(line: 2306, column: 7, scope: !977, inlinedAt: !978)
!991 = !DILocation(line: 2309, column: 3, scope: !977, inlinedAt: !978)
!992 = !DILocation(line: 2309, column: 12, scope: !977, inlinedAt: !978)
!993 = !DILocation(line: 2310, column: 2, scope: !977, inlinedAt: !978)
!994 = !DILocation(line: 2295, column: 29, scope: !977, inlinedAt: !978)
!995 = distinct !{!995, !981, !993}
!996 = !DILocation(line: 2344, column: 21, scope: !943)
!997 = !DILocation(line: 2345, column: 28, scope: !943)
!998 = !DILocation(line: 2345, column: 40, scope: !943)
!999 = !DILocation(line: 2345, column: 9, scope: !943)
!1000 = !DILocation(line: 2346, column: 3, scope: !943)
!1001 = !{i64 2155810595}
!1002 = !DILocation(line: 16, column: 10, scope: !959, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 59, column: 3, scope: !1004, inlinedAt: !1005)
!1004 = distinct !DISubprogram(name: "__preempt_count_sub", scope: !960, file: !960, line: 57, type: !201, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1005 = distinct !DILocation(line: 2346, column: 3, scope: !943)
!1006 = !DILocation(line: 104, column: 4, scope: !922, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 16, column: 10, scope: !959, inlinedAt: !1003)
!1008 = !DILocation(line: 104, column: 26, scope: !922, inlinedAt: !1007)
!1009 = !DILocation(line: 103, column: 9, scope: !922, inlinedAt: !1007)
!1010 = !DILocation(line: 16, column: 33, scope: !959, inlinedAt: !1003)
!1011 = !DILocation(line: 59, column: 23, scope: !1004, inlinedAt: !1005)
!1012 = !DILocation(line: 2348, column: 3, scope: !943)
!1013 = !DILocation(line: 2350, column: 3, scope: !943)
!1014 = !DILocation(line: 2352, column: 7, scope: !943)
!1015 = !DILocation(line: 2353, column: 4, scope: !943)
!1016 = !DILocation(line: 2356, column: 4, scope: !943)
!1017 = !DILocation(line: 2359, column: 17, scope: !943)
!1018 = !DILocation(line: 2359, column: 11, scope: !943)
!1019 = !DILocation(line: 2359, column: 7, scope: !943)
!1020 = !DILocation(line: 2360, column: 4, scope: !943)
!1021 = !DILocation(line: 2363, column: 4, scope: !943)
!1022 = !DILocation(line: 2365, column: 2, scope: !943)
!1023 = !DILocation(line: 2319, column: 29, scope: !943)
!1024 = !DILocation(line: 2319, column: 16, scope: !943)
!1025 = distinct !{!1025, !946, !1022}
!1026 = !DILocation(line: 2367, column: 8, scope: !943)
!1027 = !DILocation(line: 2367, column: 6, scope: !943)
!1028 = !DILocation(line: 2368, column: 3, scope: !943)
!1029 = !DILocation(line: 2370, column: 2, scope: !943)
!1030 = distinct !DISubprogram(name: "create_filter_start", scope: !1, file: !1, line: 1777, type: !201, scopeLine: 1780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1031 = !DILocation(line: 1780, scope: !1030)
!1032 = !DILocation(line: 1785, column: 6, scope: !1030)
!1033 = !DILocation(line: 1786, column: 3, scope: !1030)
!1034 = !DILocation(line: 376, column: 3, scope: !570, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 576, column: 11, scope: !573, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 714, column: 9, scope: !575, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 1788, column: 11, scope: !1030)
!1038 = !DILocation(line: 582, column: 33, scope: !573, inlinedAt: !1036)
!1039 = !DILocation(line: 339, column: 3, scope: !579, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 582, column: 20, scope: !573, inlinedAt: !1036)
!1041 = !DILocation(line: 582, column: 5, scope: !573, inlinedAt: !1036)
!1042 = !DILocation(line: 581, column: 10, scope: !573, inlinedAt: !1036)
!1043 = !DILocation(line: 1789, column: 6, scope: !1030)
!1044 = !DILocation(line: 1789, column: 13, scope: !1030)
!1045 = !DILocation(line: 1789, column: 16, scope: !1030)
!1046 = !DILocation(line: 1790, column: 27, scope: !1030)
!1047 = !DILocation(line: 1790, column: 11, scope: !1030)
!1048 = !DILocation(line: 1790, column: 25, scope: !1030)
!1049 = !DILocation(line: 1791, column: 8, scope: !1030)
!1050 = !DILocation(line: 1791, column: 7, scope: !1030)
!1051 = !DILocation(line: 1792, column: 8, scope: !1030)
!1052 = !DILocation(line: 1792, column: 4, scope: !1030)
!1053 = !DILocation(line: 0, scope: !1030)
!1054 = !DILocation(line: 1793, column: 2, scope: !1030)
!1055 = !DILocation(line: 1783, column: 6, scope: !1030)
!1056 = !DILocation(line: 376, column: 3, scope: !570, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 576, column: 11, scope: !573, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 714, column: 9, scope: !575, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 1795, column: 7, scope: !1030)
!1060 = !DILocation(line: 582, column: 33, scope: !573, inlinedAt: !1058)
!1061 = !DILocation(line: 339, column: 3, scope: !579, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 582, column: 20, scope: !573, inlinedAt: !1058)
!1063 = !DILocation(line: 582, column: 5, scope: !573, inlinedAt: !1058)
!1064 = !DILocation(line: 581, column: 10, scope: !573, inlinedAt: !1058)
!1065 = !DILocation(line: 1797, column: 14, scope: !1030)
!1066 = !DILocation(line: 1797, column: 18, scope: !1030)
!1067 = !DILocation(line: 1797, column: 21, scope: !1030)
!1068 = !DILocation(line: 1797, column: 24, scope: !1030)
!1069 = !DILocation(line: 1797, column: 6, scope: !1030)
!1070 = !DILocation(line: 1798, column: 9, scope: !1030)
!1071 = !DILocation(line: 1798, column: 3, scope: !1030)
!1072 = !DILocation(line: 1799, column: 3, scope: !1030)
!1073 = !DILocation(line: 1800, column: 3, scope: !1030)
!1074 = !DILocation(line: 1804, column: 13, scope: !1030)
!1075 = !DILocation(line: 1804, column: 11, scope: !1030)
!1076 = !DILocation(line: 1805, column: 7, scope: !1030)
!1077 = !DILocation(line: 1807, column: 2, scope: !1030)
!1078 = !DILocation(line: 1808, column: 1, scope: !1030)
!1079 = distinct !DISubprogram(name: "process_preds", scope: !1, file: !1, line: 1626, type: !201, scopeLine: 1630, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1080 = !DILocation(line: 1630, scope: !1079)
!1081 = !DILocation(line: 1541, column: 14, scope: !1082, inlinedAt: !1083)
!1082 = distinct !DISubprogram(name: "calc_stack", scope: !1, file: !1, line: 1529, type: !201, scopeLine: 1530, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1083 = distinct !DILocation(line: 1637, column: 8, scope: !1079)
!1084 = !DILocation(line: 1541, column: 2, scope: !1082, inlinedAt: !1083)
!1085 = !DILocation(line: 1621, column: 12, scope: !1082, inlinedAt: !1083)
!1086 = !DILocation(line: 1652, column: 6, scope: !1079)
!1087 = !DILocation(line: 1542, column: 7, scope: !1082, inlinedAt: !1083)
!1088 = !DILocation(line: 1543, column: 4, scope: !1082, inlinedAt: !1083)
!1089 = !DILocation(line: 1544, column: 7, scope: !1082, inlinedAt: !1083)
!1090 = !DILocation(line: 1545, column: 8, scope: !1082, inlinedAt: !1083)
!1091 = !DILocation(line: 1545, column: 15, scope: !1082, inlinedAt: !1083)
!1092 = !DILocation(line: 1546, column: 17, scope: !1082, inlinedAt: !1083)
!1093 = !DILocation(line: 1546, column: 11, scope: !1082, inlinedAt: !1083)
!1094 = !DILocation(line: 1550, column: 3, scope: !1082, inlinedAt: !1083)
!1095 = !DILocation(line: 1553, column: 12, scope: !1082, inlinedAt: !1083)
!1096 = !DILocation(line: 1555, column: 4, scope: !1082, inlinedAt: !1083)
!1097 = !DILocation(line: 1558, column: 13, scope: !1082, inlinedAt: !1083)
!1098 = !DILocation(line: 1558, column: 8, scope: !1082, inlinedAt: !1083)
!1099 = !DILocation(line: 1558, column: 17, scope: !1082, inlinedAt: !1083)
!1100 = !DILocation(line: 1559, column: 5, scope: !1082, inlinedAt: !1083)
!1101 = !DILocation(line: 1560, column: 12, scope: !1082, inlinedAt: !1083)
!1102 = !DILocation(line: 1561, column: 4, scope: !1082, inlinedAt: !1083)
!1103 = !DILocation(line: 1563, column: 12, scope: !1082, inlinedAt: !1083)
!1104 = !DILocation(line: 1564, column: 8, scope: !1082, inlinedAt: !1083)
!1105 = !DILocation(line: 1565, column: 13, scope: !1082, inlinedAt: !1083)
!1106 = !DILocation(line: 1565, column: 8, scope: !1082, inlinedAt: !1083)
!1107 = !DILocation(line: 1566, column: 16, scope: !1082, inlinedAt: !1083)
!1108 = !DILocation(line: 1566, column: 5, scope: !1082, inlinedAt: !1083)
!1109 = !DILocation(line: 1570, column: 13, scope: !1082, inlinedAt: !1083)
!1110 = !DILocation(line: 1570, column: 8, scope: !1082, inlinedAt: !1083)
!1111 = !DILocation(line: 1574, column: 8, scope: !1082, inlinedAt: !1083)
!1112 = !DILocation(line: 1575, column: 4, scope: !1082, inlinedAt: !1083)
!1113 = !DILocation(line: 0, scope: !1082, inlinedAt: !1083)
!1114 = !DILocation(line: 1577, column: 7, scope: !1082, inlinedAt: !1083)
!1115 = !DILocation(line: 1578, column: 12, scope: !1082, inlinedAt: !1083)
!1116 = !DILocation(line: 1580, column: 3, scope: !1082, inlinedAt: !1083)
!1117 = !DILocation(line: 1581, column: 2, scope: !1082, inlinedAt: !1083)
!1118 = !DILocation(line: 1532, column: 6, scope: !1082, inlinedAt: !1083)
!1119 = !DILocation(line: 1534, column: 6, scope: !1082, inlinedAt: !1083)
!1120 = !DILocation(line: 1541, column: 23, scope: !1082, inlinedAt: !1083)
!1121 = distinct !{!1121, !1084, !1117}
!1122 = !DILocation(line: 1583, column: 6, scope: !1082, inlinedAt: !1083)
!1123 = !DILocation(line: 1588, column: 11, scope: !1082, inlinedAt: !1083)
!1124 = !DILocation(line: 1588, column: 6, scope: !1082, inlinedAt: !1083)
!1125 = !DILocation(line: 1592, column: 3, scope: !1082, inlinedAt: !1083)
!1126 = !DILocation(line: 1593, column: 8, scope: !1082, inlinedAt: !1083)
!1127 = !DILocation(line: 1594, column: 9, scope: !1082, inlinedAt: !1083)
!1128 = !DILocation(line: 1594, column: 16, scope: !1082, inlinedAt: !1083)
!1129 = !DILocation(line: 1595, column: 12, scope: !1082, inlinedAt: !1083)
!1130 = !DILocation(line: 1595, column: 6, scope: !1082, inlinedAt: !1083)
!1131 = !DILocation(line: 1596, column: 5, scope: !1082, inlinedAt: !1083)
!1132 = !DILocation(line: 1598, column: 4, scope: !1082, inlinedAt: !1083)
!1133 = !DILocation(line: 1600, column: 15, scope: !1082, inlinedAt: !1083)
!1134 = !DILocation(line: 1600, column: 9, scope: !1082, inlinedAt: !1083)
!1135 = !DILocation(line: 1601, column: 13, scope: !1082, inlinedAt: !1083)
!1136 = !DILocation(line: 1602, column: 6, scope: !1082, inlinedAt: !1083)
!1137 = !DILocation(line: 1604, column: 10, scope: !1082, inlinedAt: !1083)
!1138 = !DILocation(line: 1605, column: 5, scope: !1082, inlinedAt: !1083)
!1139 = !DILocation(line: 1607, column: 10, scope: !1082, inlinedAt: !1083)
!1140 = !DILocation(line: 1608, column: 5, scope: !1082, inlinedAt: !1083)
!1141 = !DILocation(line: 1611, column: 13, scope: !1082, inlinedAt: !1083)
!1142 = !DILocation(line: 1612, column: 5, scope: !1082, inlinedAt: !1083)
!1143 = !DILocation(line: 1614, column: 3, scope: !1082, inlinedAt: !1083)
!1144 = !DILocation(line: 1589, column: 7, scope: !1082, inlinedAt: !1083)
!1145 = distinct !{!1145, !1125, !1143}
!1146 = !DILocation(line: 1616, column: 4, scope: !1082, inlinedAt: !1083)
!1147 = !DILocation(line: 1617, column: 3, scope: !1082, inlinedAt: !1083)
!1148 = !DILocation(line: 1584, column: 10, scope: !1082, inlinedAt: !1083)
!1149 = !DILocation(line: 1641, column: 16, scope: !1079)
!1150 = !DILocation(line: 136, column: 14, scope: !603, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 1641, column: 4, scope: !1079)
!1152 = !DILocation(line: 137, column: 6, scope: !603, inlinedAt: !1151)
!1153 = !DILocation(line: 137, column: 18, scope: !603, inlinedAt: !1151)
!1154 = !DILocation(line: 1642, column: 4, scope: !1079)
!1155 = !DILocation(line: 1644, column: 16, scope: !1079)
!1156 = !DILocation(line: 136, column: 14, scope: !603, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 1644, column: 4, scope: !1079)
!1158 = !DILocation(line: 137, column: 6, scope: !603, inlinedAt: !1157)
!1159 = !DILocation(line: 137, column: 18, scope: !603, inlinedAt: !1157)
!1160 = !DILocation(line: 1645, column: 4, scope: !1079)
!1161 = !DILocation(line: 1571, column: 12, scope: !1082, inlinedAt: !1083)
!1162 = !DILocation(line: 1647, column: 16, scope: !1079)
!1163 = !DILocation(line: 136, column: 14, scope: !603, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 1647, column: 4, scope: !1079)
!1165 = !DILocation(line: 137, column: 6, scope: !603, inlinedAt: !1164)
!1166 = !DILocation(line: 137, column: 18, scope: !603, inlinedAt: !1164)
!1167 = !DILocation(line: 1648, column: 3, scope: !1079)
!1168 = !DILocation(line: 1652, column: 7, scope: !1079)
!1169 = !DILocation(line: 1653, column: 3, scope: !1079)
!1170 = !DILocation(line: 427, column: 11, scope: !1171, inlinedAt: !1172)
!1171 = distinct !DISubprogram(name: "predicate_parse", scope: !1, file: !1, line: 411, type: !201, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1172 = distinct !DILocation(line: 1655, column: 9, scope: !1079)
!1173 = !DILocation(line: 617, column: 6, scope: !1174, inlinedAt: !1175)
!1174 = distinct !DISubprogram(name: "kmalloc_array", scope: !571, file: !571, line: 613, type: !201, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1175 = distinct !DILocation(line: 429, column: 13, scope: !1171, inlinedAt: !1172)
!1176 = !DILocation(line: 618, column: 3, scope: !1174, inlinedAt: !1175)
!1177 = !DILocation(line: 430, column: 6, scope: !1171, inlinedAt: !1172)
!1178 = !DILocation(line: 621, column: 19, scope: !1174, inlinedAt: !1175)
!1179 = !DILocation(line: 621, column: 9, scope: !1174, inlinedAt: !1175)
!1180 = !DILocation(line: 430, column: 7, scope: !1171, inlinedAt: !1172)
!1181 = !DILocation(line: 431, column: 10, scope: !1171, inlinedAt: !1172)
!1182 = !DILocation(line: 1657, column: 6, scope: !1079)
!1183 = !DILocation(line: 617, column: 6, scope: !1174, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 652, column: 9, scope: !1185, inlinedAt: !1186)
!1185 = distinct !DISubprogram(name: "kcalloc", scope: !571, file: !571, line: 650, type: !201, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1186 = distinct !DILocation(line: 432, column: 15, scope: !1171, inlinedAt: !1172)
!1187 = !DILocation(line: 618, column: 3, scope: !1174, inlinedAt: !1184)
!1188 = !DILocation(line: 433, column: 6, scope: !1171, inlinedAt: !1172)
!1189 = !DILocation(line: 621, column: 19, scope: !1174, inlinedAt: !1184)
!1190 = !DILocation(line: 621, column: 9, scope: !1174, inlinedAt: !1184)
!1191 = !DILocation(line: 433, column: 7, scope: !1171, inlinedAt: !1172)
!1192 = !DILocation(line: 434, column: 15, scope: !1171, inlinedAt: !1172)
!1193 = !DILocation(line: 136, column: 14, scope: !603, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 434, column: 3, scope: !1171, inlinedAt: !1172)
!1195 = !DILocation(line: 137, column: 6, scope: !603, inlinedAt: !1194)
!1196 = !DILocation(line: 137, column: 18, scope: !603, inlinedAt: !1194)
!1197 = !DILocation(line: 435, column: 3, scope: !1171, inlinedAt: !1172)
!1198 = !DILocation(line: 621, column: 19, scope: !1174, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 437, column: 12, scope: !1171, inlinedAt: !1172)
!1200 = !DILocation(line: 621, column: 9, scope: !1174, inlinedAt: !1199)
!1201 = !DILocation(line: 438, column: 7, scope: !1171, inlinedAt: !1172)
!1202 = !DILocation(line: 438, column: 6, scope: !1171, inlinedAt: !1172)
!1203 = !DILocation(line: 439, column: 15, scope: !1171, inlinedAt: !1172)
!1204 = !DILocation(line: 136, column: 14, scope: !603, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 439, column: 3, scope: !1171, inlinedAt: !1172)
!1206 = !DILocation(line: 137, column: 6, scope: !603, inlinedAt: !1205)
!1207 = !DILocation(line: 137, column: 18, scope: !603, inlinedAt: !1205)
!1208 = !DILocation(line: 440, column: 3, scope: !1171, inlinedAt: !1172)
!1209 = !DILocation(line: 443, column: 8, scope: !1171, inlinedAt: !1172)
!1210 = !DILocation(line: 445, column: 7, scope: !1171, inlinedAt: !1172)
!1211 = !DILocation(line: 448, column: 9, scope: !1171, inlinedAt: !1172)
!1212 = !DILocation(line: 448, column: 2, scope: !1171, inlinedAt: !1172)
!1213 = !DILocation(line: 449, column: 25, scope: !1171, inlinedAt: !1172)
!1214 = !DILocation(line: 451, column: 7, scope: !1171, inlinedAt: !1172)
!1215 = !DILocation(line: 0, scope: !1079)
!1216 = !DILocation(line: 452, column: 4, scope: !1171, inlinedAt: !1172)
!1217 = distinct !{!1217, !1212, !1218}
!1218 = !DILocation(line: 539, column: 2, scope: !1171, inlinedAt: !1172)
!1219 = !DILocation(line: 454, column: 3, scope: !1171, inlinedAt: !1172)
!1220 = !DILocation(line: 456, column: 12, scope: !1171, inlinedAt: !1172)
!1221 = !DILocation(line: 456, column: 23, scope: !1171, inlinedAt: !1172)
!1222 = !DILocation(line: 456, column: 8, scope: !1171, inlinedAt: !1172)
!1223 = !DILocation(line: 457, column: 9, scope: !1171, inlinedAt: !1172)
!1224 = !DILocation(line: 458, column: 5, scope: !1171, inlinedAt: !1172)
!1225 = !DILocation(line: 460, column: 15, scope: !1171, inlinedAt: !1172)
!1226 = !DILocation(line: 460, column: 6, scope: !1171, inlinedAt: !1172)
!1227 = !DILocation(line: 460, column: 13, scope: !1171, inlinedAt: !1172)
!1228 = !DILocation(line: 461, column: 4, scope: !1171, inlinedAt: !1172)
!1229 = distinct !{!1229, !1212, !1218}
!1230 = !DILocation(line: 86, column: 10, scope: !1231, inlinedAt: !1232)
!1231 = distinct !DISubprogram(name: "is_not", scope: !1, file: !1, line: 84, type: !201, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1232 = distinct !DILocation(line: 463, column: 9, scope: !1171, inlinedAt: !1172)
!1233 = !DILocation(line: 86, column: 2, scope: !1231, inlinedAt: !1232)
!1234 = !DILocation(line: 0, scope: !1231, inlinedAt: !1232)
!1235 = !DILocation(line: 464, column: 5, scope: !1171, inlinedAt: !1172)
!1236 = !DILocation(line: 465, column: 14, scope: !1171, inlinedAt: !1172)
!1237 = !DILocation(line: 465, column: 13, scope: !1171, inlinedAt: !1172)
!1238 = !DILocation(line: 466, column: 4, scope: !1171, inlinedAt: !1172)
!1239 = distinct !{!1239, !1212, !1218}
!1240 = !DILocation(line: 469, column: 9, scope: !1171, inlinedAt: !1172)
!1241 = !DILocation(line: 469, column: 7, scope: !1171, inlinedAt: !1172)
!1242 = !DILocation(line: 470, column: 16, scope: !1171, inlinedAt: !1172)
!1243 = !DILocation(line: 470, column: 50, scope: !1171, inlinedAt: !1172)
!1244 = !DILocation(line: 136, column: 14, scope: !603, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 470, column: 4, scope: !1171, inlinedAt: !1172)
!1246 = !DILocation(line: 137, column: 6, scope: !603, inlinedAt: !1245)
!1247 = !DILocation(line: 137, column: 18, scope: !603, inlinedAt: !1245)
!1248 = !DILocation(line: 471, column: 4, scope: !1171, inlinedAt: !1172)
!1249 = !DILocation(line: 474, column: 16, scope: !1171, inlinedAt: !1172)
!1250 = !DILocation(line: 474, column: 3, scope: !1171, inlinedAt: !1172)
!1251 = !DILocation(line: 474, column: 14, scope: !1171, inlinedAt: !1172)
!1252 = !DILocation(line: 475, column: 21, scope: !1171, inlinedAt: !1172)
!1253 = !DILocation(line: 475, column: 3, scope: !1171, inlinedAt: !1172)
!1254 = !DILocation(line: 475, column: 18, scope: !1171, inlinedAt: !1172)
!1255 = !DILocation(line: 477, column: 56, scope: !1171, inlinedAt: !1172)
!1256 = !DILocation(line: 1256, column: 2, scope: !1257, inlinedAt: !1258)
!1257 = distinct !DISubprogram(name: "parse_pred", scope: !1, file: !1, line: 1249, type: !201, scopeLine: 1252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1258 = distinct !DILocation(line: 477, column: 9, scope: !1171, inlinedAt: !1172)
!1259 = !DILocation(line: 1256, column: 7, scope: !1257, inlinedAt: !1258)
!1260 = !DILocation(line: 1260, column: 2, scope: !1257, inlinedAt: !1258)
!1261 = !DILocation(line: 1260, column: 6, scope: !1257, inlinedAt: !1258)
!1262 = !DILocation(line: 1268, column: 9, scope: !1257, inlinedAt: !1258)
!1263 = !DILocation(line: 1268, column: 2, scope: !1257, inlinedAt: !1258)
!1264 = !DILocation(line: 1272, column: 2, scope: !1257, inlinedAt: !1258)
!1265 = !DILocation(line: 1269, column: 4, scope: !1257, inlinedAt: !1258)
!1266 = distinct !{!1266, !1263, !1265}
!1267 = !DILocation(line: 0, scope: !1257, inlinedAt: !1258)
!1268 = !DILocation(line: 1272, column: 9, scope: !1257, inlinedAt: !1258)
!1269 = !DILocation(line: 1272, column: 25, scope: !1257, inlinedAt: !1258)
!1270 = !DILocation(line: 1272, column: 28, scope: !1257, inlinedAt: !1258)
!1271 = !DILocation(line: 1272, column: 35, scope: !1257, inlinedAt: !1258)
!1272 = !DILocation(line: 1273, column: 4, scope: !1257, inlinedAt: !1258)
!1273 = distinct !{!1273, !1264, !1272}
!1274 = !DILocation(line: 1277, column: 7, scope: !1257, inlinedAt: !1258)
!1275 = !DILocation(line: 1277, column: 6, scope: !1257, inlinedAt: !1258)
!1276 = !DILocation(line: 1278, column: 3, scope: !1257, inlinedAt: !1258)
!1277 = !DILocation(line: 1275, column: 10, scope: !1257, inlinedAt: !1258)
!1278 = !DILocation(line: 1280, column: 15, scope: !1257, inlinedAt: !1258)
!1279 = !DILocation(line: 1281, column: 7, scope: !1257, inlinedAt: !1258)
!1280 = !DILocation(line: 1281, column: 6, scope: !1257, inlinedAt: !1258)
!1281 = !DILocation(line: 1282, column: 3, scope: !1257, inlinedAt: !1258)
!1282 = !DILocation(line: 1286, column: 10, scope: !1257, inlinedAt: !1258)
!1283 = !DILocation(line: 1287, column: 2, scope: !1257, inlinedAt: !1258)
!1284 = !DILocation(line: 1288, column: 7, scope: !1257, inlinedAt: !1258)
!1285 = !DILocation(line: 1288, column: 6, scope: !1257, inlinedAt: !1258)
!1286 = !DILocation(line: 477, column: 36, scope: !1171, inlinedAt: !1172)
!1287 = !DILocation(line: 1289, column: 15, scope: !1257, inlinedAt: !1258)
!1288 = !DILocation(line: 1289, column: 49, scope: !1257, inlinedAt: !1258)
!1289 = !DILocation(line: 136, column: 14, scope: !603, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 1289, column: 3, scope: !1257, inlinedAt: !1258)
!1291 = !DILocation(line: 137, column: 6, scope: !603, inlinedAt: !1290)
!1292 = !DILocation(line: 137, column: 18, scope: !603, inlinedAt: !1290)
!1293 = !DILocation(line: 1290, column: 3, scope: !1257, inlinedAt: !1258)
!1294 = !DILocation(line: 312, column: 9, scope: !1295, inlinedAt: !1296)
!1295 = distinct !DISubprogram(name: "str_has_prefix", scope: !412, file: !412, line: 309, type: !201, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1296 = distinct !DILocation(line: 1294, column: 13, scope: !1257, inlinedAt: !1258)
!1297 = !DILocation(line: 312, column: 35, scope: !1295, inlinedAt: !1296)
!1298 = !DILocation(line: 0, scope: !1295, inlinedAt: !1296)
!1299 = !DILocation(line: 1294, column: 6, scope: !1257, inlinedAt: !1258)
!1300 = !DILocation(line: 1295, column: 11, scope: !1257, inlinedAt: !1258)
!1301 = !DILocation(line: 1296, column: 5, scope: !1257, inlinedAt: !1258)
!1302 = !DILocation(line: 1297, column: 2, scope: !1257, inlinedAt: !1258)
!1303 = !DILocation(line: 1299, column: 9, scope: !1257, inlinedAt: !1258)
!1304 = !DILocation(line: 1299, column: 2, scope: !1257, inlinedAt: !1258)
!1305 = !DILocation(line: 1305, column: 7, scope: !1257, inlinedAt: !1258)
!1306 = !DILocation(line: 1305, column: 50, scope: !1257, inlinedAt: !1258)
!1307 = !DILocation(line: 1300, column: 4, scope: !1257, inlinedAt: !1258)
!1308 = distinct !{!1308, !1304, !1307}
!1309 = !DILocation(line: 1303, column: 26, scope: !1257, inlinedAt: !1258)
!1310 = !DILocation(line: 1310, column: 15, scope: !1257, inlinedAt: !1258)
!1311 = !DILocation(line: 1311, column: 3, scope: !1257, inlinedAt: !1258)
!1312 = !DILocation(line: 1306, column: 4, scope: !1257, inlinedAt: !1258)
!1313 = !DILocation(line: 1309, column: 7, scope: !1257, inlinedAt: !1258)
!1314 = !DILocation(line: 1314, column: 7, scope: !1257, inlinedAt: !1258)
!1315 = !DILocation(line: 1314, column: 4, scope: !1257, inlinedAt: !1258)
!1316 = !DILocation(line: 1316, column: 9, scope: !1257, inlinedAt: !1258)
!1317 = !DILocation(line: 1316, column: 2, scope: !1257, inlinedAt: !1258)
!1318 = !DILocation(line: 1317, column: 4, scope: !1257, inlinedAt: !1258)
!1319 = distinct !{!1319, !1317, !1318}
!1320 = !DILocation(line: 388, column: 26, scope: !570, inlinedAt: !1321)
!1321 = distinct !DILocation(line: 576, column: 11, scope: !573, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 714, column: 9, scope: !575, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 1321, column: 9, scope: !1257, inlinedAt: !1258)
!1324 = !DILocation(line: 582, column: 33, scope: !573, inlinedAt: !1322)
!1325 = !DILocation(line: 339, column: 3, scope: !579, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 582, column: 20, scope: !573, inlinedAt: !1322)
!1327 = !DILocation(line: 582, column: 5, scope: !573, inlinedAt: !1322)
!1328 = !DILocation(line: 581, column: 10, scope: !573, inlinedAt: !1322)
!1329 = !DILocation(line: 1322, column: 7, scope: !1257, inlinedAt: !1258)
!1330 = !DILocation(line: 1322, column: 6, scope: !1257, inlinedAt: !1258)
!1331 = !DILocation(line: 1323, column: 3, scope: !1257, inlinedAt: !1258)
!1332 = !DILocation(line: 1325, column: 8, scope: !1257, inlinedAt: !1258)
!1333 = !DILocation(line: 1325, column: 14, scope: !1257, inlinedAt: !1258)
!1334 = !DILocation(line: 1326, column: 24, scope: !1257, inlinedAt: !1258)
!1335 = !DILocation(line: 1326, column: 8, scope: !1257, inlinedAt: !1258)
!1336 = !DILocation(line: 1326, column: 15, scope: !1257, inlinedAt: !1258)
!1337 = !DILocation(line: 1327, column: 8, scope: !1257, inlinedAt: !1258)
!1338 = !DILocation(line: 1327, column: 11, scope: !1257, inlinedAt: !1258)
!1339 = !DILocation(line: 1329, column: 6, scope: !1257, inlinedAt: !1258)
!1340 = !DILocation(line: 1337, column: 21, scope: !1257, inlinedAt: !1258)
!1341 = !DILocation(line: 1337, column: 7, scope: !1257, inlinedAt: !1258)
!1342 = !DILocation(line: 1337, column: 33, scope: !1257, inlinedAt: !1258)
!1343 = !DILocation(line: 1338, column: 16, scope: !1257, inlinedAt: !1258)
!1344 = !DILocation(line: 1339, column: 4, scope: !1257, inlinedAt: !1258)
!1345 = !DILocation(line: 1341, column: 12, scope: !1257, inlinedAt: !1258)
!1346 = !DILocation(line: 1347, column: 7, scope: !1257, inlinedAt: !1258)
!1347 = !DILocation(line: 1347, column: 14, scope: !1257, inlinedAt: !1258)
!1348 = !DILocation(line: 1347, column: 22, scope: !1257, inlinedAt: !1258)
!1349 = !DILocation(line: 1347, column: 25, scope: !1257, inlinedAt: !1258)
!1350 = !DILocation(line: 1347, column: 32, scope: !1257, inlinedAt: !1258)
!1351 = !DILocation(line: 1348, column: 8, scope: !1257, inlinedAt: !1258)
!1352 = !DILocation(line: 1348, column: 4, scope: !1257, inlinedAt: !1258)
!1353 = !DILocation(line: 1350, column: 6, scope: !1257, inlinedAt: !1258)
!1354 = !DILocation(line: 1352, column: 9, scope: !1257, inlinedAt: !1258)
!1355 = !DILocation(line: 1352, column: 13, scope: !1257, inlinedAt: !1258)
!1356 = !DILocation(line: 1352, column: 3, scope: !1257, inlinedAt: !1258)
!1357 = !DILocation(line: 1353, column: 10, scope: !1257, inlinedAt: !1258)
!1358 = !DILocation(line: 1353, column: 13, scope: !1257, inlinedAt: !1258)
!1359 = !DILocation(line: 1353, column: 20, scope: !1257, inlinedAt: !1258)
!1360 = !DILocation(line: 1353, column: 8, scope: !1257, inlinedAt: !1258)
!1361 = !DILocation(line: 1354, column: 5, scope: !1257, inlinedAt: !1258)
!1362 = !DILocation(line: 1360, column: 7, scope: !1257, inlinedAt: !1258)
!1363 = !DILocation(line: 1355, column: 15, scope: !1257, inlinedAt: !1258)
!1364 = !DILocation(line: 1355, column: 22, scope: !1257, inlinedAt: !1258)
!1365 = !DILocation(line: 1355, column: 29, scope: !1257, inlinedAt: !1258)
!1366 = !DILocation(line: 1355, column: 32, scope: !1257, inlinedAt: !1258)
!1367 = !DILocation(line: 1355, column: 39, scope: !1257, inlinedAt: !1258)
!1368 = !DILocation(line: 1355, column: 46, scope: !1257, inlinedAt: !1258)
!1369 = !DILocation(line: 1356, column: 8, scope: !1257, inlinedAt: !1258)
!1370 = !DILocation(line: 1356, column: 15, scope: !1257, inlinedAt: !1258)
!1371 = !DILocation(line: 1355, column: 8, scope: !1257, inlinedAt: !1258)
!1372 = !DILocation(line: 1352, column: 22, scope: !1257, inlinedAt: !1258)
!1373 = distinct !{!1373, !1356, !1374}
!1374 = !DILocation(line: 1358, column: 3, scope: !1257, inlinedAt: !1258)
!1375 = !DILocation(line: 1362, column: 11, scope: !1257, inlinedAt: !1258)
!1376 = !DILocation(line: 1363, column: 11, scope: !1257, inlinedAt: !1258)
!1377 = !DILocation(line: 1363, column: 7, scope: !1257, inlinedAt: !1258)
!1378 = !DILocation(line: 1364, column: 16, scope: !1257, inlinedAt: !1258)
!1379 = !DILocation(line: 1365, column: 4, scope: !1257, inlinedAt: !1258)
!1380 = !DILocation(line: 1368, column: 21, scope: !1257, inlinedAt: !1258)
!1381 = !DILocation(line: 1368, column: 9, scope: !1257, inlinedAt: !1258)
!1382 = !DILocation(line: 1368, column: 15, scope: !1257, inlinedAt: !1258)
!1383 = !DILocation(line: 1368, column: 19, scope: !1257, inlinedAt: !1258)
!1384 = !DILocation(line: 1369, column: 36, scope: !1257, inlinedAt: !1258)
!1385 = !DILocation(line: 1369, column: 3, scope: !1257, inlinedAt: !1258)
!1386 = !DILocation(line: 1370, column: 3, scope: !1257, inlinedAt: !1258)
!1387 = !DILocation(line: 1370, column: 28, scope: !1257, inlinedAt: !1258)
!1388 = !DILocation(line: 1373, column: 2, scope: !1257, inlinedAt: !1258)
!1389 = !DILocation(line: 1373, column: 13, scope: !1257, inlinedAt: !1258)
!1390 = !DILocation(line: 1373, column: 20, scope: !1257, inlinedAt: !1258)
!1391 = !DILocation(line: 1373, column: 28, scope: !1257, inlinedAt: !1258)
!1392 = !DILocation(line: 1373, column: 31, scope: !1257, inlinedAt: !1258)
!1393 = !DILocation(line: 1373, column: 38, scope: !1257, inlinedAt: !1258)
!1394 = !DILocation(line: 1374, column: 12, scope: !1257, inlinedAt: !1258)
!1395 = !DILocation(line: 1377, column: 3, scope: !1257, inlinedAt: !1258)
!1396 = !DILocation(line: 1379, column: 4, scope: !1257, inlinedAt: !1258)
!1397 = !DILocation(line: 1379, column: 10, scope: !1257, inlinedAt: !1258)
!1398 = !DILocation(line: 1379, column: 14, scope: !1257, inlinedAt: !1258)
!1399 = !DILocation(line: 1385, column: 16, scope: !1257, inlinedAt: !1258)
!1400 = !DILocation(line: 1386, column: 4, scope: !1257, inlinedAt: !1258)
!1401 = !DILocation(line: 1390, column: 8, scope: !1257, inlinedAt: !1258)
!1402 = !DILocation(line: 1390, column: 7, scope: !1257, inlinedAt: !1258)
!1403 = !DILocation(line: 1391, column: 16, scope: !1257, inlinedAt: !1258)
!1404 = !DILocation(line: 1392, column: 4, scope: !1257, inlinedAt: !1258)
!1405 = !DILocation(line: 1395, column: 9, scope: !1257, inlinedAt: !1258)
!1406 = !DILocation(line: 1395, column: 13, scope: !1257, inlinedAt: !1258)
!1407 = !DILocation(line: 1395, column: 3, scope: !1257, inlinedAt: !1258)
!1408 = !DILocation(line: 1396, column: 15, scope: !1257, inlinedAt: !1258)
!1409 = !DILocation(line: 1396, column: 8, scope: !1257, inlinedAt: !1258)
!1410 = !DILocation(line: 1398, column: 3, scope: !1257, inlinedAt: !1258)
!1411 = !DILocation(line: 1395, column: 22, scope: !1257, inlinedAt: !1258)
!1412 = distinct !{!1412, !1407, !1410}
!1413 = !DILocation(line: 1397, column: 5, scope: !1257, inlinedAt: !1258)
!1414 = !DILocation(line: 1399, column: 8, scope: !1257, inlinedAt: !1258)
!1415 = !DILocation(line: 1399, column: 7, scope: !1257, inlinedAt: !1258)
!1416 = !DILocation(line: 1400, column: 16, scope: !1257, inlinedAt: !1258)
!1417 = !DILocation(line: 1401, column: 4, scope: !1257, inlinedAt: !1258)
!1418 = !DILocation(line: 1406, column: 11, scope: !1257, inlinedAt: !1258)
!1419 = !DILocation(line: 1407, column: 11, scope: !1257, inlinedAt: !1258)
!1420 = !DILocation(line: 1407, column: 7, scope: !1257, inlinedAt: !1258)
!1421 = !DILocation(line: 1408, column: 16, scope: !1257, inlinedAt: !1258)
!1422 = !DILocation(line: 1409, column: 4, scope: !1257, inlinedAt: !1258)
!1423 = !DILocation(line: 1412, column: 9, scope: !1257, inlinedAt: !1258)
!1424 = !DILocation(line: 1412, column: 15, scope: !1257, inlinedAt: !1258)
!1425 = !DILocation(line: 1412, column: 19, scope: !1257, inlinedAt: !1258)
!1426 = !DILocation(line: 1413, column: 3, scope: !1257, inlinedAt: !1258)
!1427 = !DILocation(line: 1414, column: 3, scope: !1257, inlinedAt: !1258)
!1428 = !DILocation(line: 1414, column: 28, scope: !1257, inlinedAt: !1258)
!1429 = !DILocation(line: 1416, column: 3, scope: !1257, inlinedAt: !1258)
!1430 = !DILocation(line: 1418, column: 14, scope: !1257, inlinedAt: !1258)
!1431 = !DILocation(line: 1418, column: 7, scope: !1257, inlinedAt: !1258)
!1432 = !DILocation(line: 1419, column: 4, scope: !1257, inlinedAt: !1258)
!1433 = !DILocation(line: 1419, column: 13, scope: !1257, inlinedAt: !1258)
!1434 = !DILocation(line: 1421, column: 3, scope: !1257, inlinedAt: !1258)
!1435 = !DILocation(line: 1422, column: 4, scope: !1257, inlinedAt: !1258)
!1436 = !DILocation(line: 1422, column: 13, scope: !1257, inlinedAt: !1258)
!1437 = !DILocation(line: 1423, column: 35, scope: !1257, inlinedAt: !1258)
!1438 = !DILocation(line: 1423, column: 16, scope: !1257, inlinedAt: !1258)
!1439 = !DILocation(line: 1423, column: 26, scope: !1257, inlinedAt: !1258)
!1440 = !DILocation(line: 1425, column: 3, scope: !1257, inlinedAt: !1258)
!1441 = !DILocation(line: 1426, column: 4, scope: !1257, inlinedAt: !1258)
!1442 = !DILocation(line: 1426, column: 13, scope: !1257, inlinedAt: !1258)
!1443 = !DILocation(line: 1427, column: 3, scope: !1257, inlinedAt: !1258)
!1444 = !DILocation(line: 1428, column: 4, scope: !1257, inlinedAt: !1258)
!1445 = !DILocation(line: 1428, column: 13, scope: !1257, inlinedAt: !1258)
!1446 = !DILocation(line: 1431, column: 9, scope: !1257, inlinedAt: !1258)
!1447 = !DILocation(line: 1431, column: 8, scope: !1257, inlinedAt: !1258)
!1448 = !DILocation(line: 1433, column: 23, scope: !1257, inlinedAt: !1258)
!1449 = !DILocation(line: 1433, column: 21, scope: !1257, inlinedAt: !1258)
!1450 = !DILocation(line: 1434, column: 10, scope: !1257, inlinedAt: !1258)
!1451 = !DILocation(line: 1434, column: 9, scope: !1257, inlinedAt: !1258)
!1452 = !DILocation(line: 1436, column: 4, scope: !1257, inlinedAt: !1258)
!1453 = !DILocation(line: 1438, column: 8, scope: !1257, inlinedAt: !1258)
!1454 = !DILocation(line: 1439, column: 5, scope: !1257, inlinedAt: !1258)
!1455 = !DILocation(line: 1439, column: 14, scope: !1257, inlinedAt: !1258)
!1456 = !DILocation(line: 1441, column: 5, scope: !1257, inlinedAt: !1258)
!1457 = !DILocation(line: 1441, column: 14, scope: !1257, inlinedAt: !1258)
!1458 = !DILocation(line: 1444, column: 4, scope: !1257, inlinedAt: !1258)
!1459 = !DILocation(line: 1446, column: 2, scope: !1257, inlinedAt: !1258)
!1460 = !DILocation(line: 45, column: 13, scope: !216, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 1446, column: 13, scope: !1257, inlinedAt: !1258)
!1462 = !DILocation(line: 45, column: 18, scope: !216, inlinedAt: !1461)
!1463 = !DILocation(line: 45, column: 21, scope: !216, inlinedAt: !1461)
!1464 = !DILocation(line: 45, column: 23, scope: !216, inlinedAt: !1461)
!1465 = !DILocation(line: 1446, column: 29, scope: !1257, inlinedAt: !1258)
!1466 = !DILocation(line: 1446, column: 32, scope: !1257, inlinedAt: !1258)
!1467 = !DILocation(line: 1446, column: 39, scope: !1257, inlinedAt: !1258)
!1468 = !DILocation(line: 1446, column: 13, scope: !1257, inlinedAt: !1258)
!1469 = !DILocation(line: 1449, column: 7, scope: !1257, inlinedAt: !1258)
!1470 = !DILocation(line: 1450, column: 16, scope: !1257, inlinedAt: !1258)
!1471 = !DILocation(line: 1451, column: 4, scope: !1257, inlinedAt: !1258)
!1472 = !DILocation(line: 1454, column: 7, scope: !1257, inlinedAt: !1258)
!1473 = !DILocation(line: 1455, column: 16, scope: !1257, inlinedAt: !1258)
!1474 = !DILocation(line: 1456, column: 4, scope: !1257, inlinedAt: !1258)
!1475 = !DILocation(line: 1459, column: 7, scope: !1257, inlinedAt: !1258)
!1476 = !DILocation(line: 1459, column: 14, scope: !1257, inlinedAt: !1258)
!1477 = !DILocation(line: 1460, column: 5, scope: !1257, inlinedAt: !1258)
!1478 = !DILocation(line: 1460, column: 4, scope: !1257, inlinedAt: !1258)
!1479 = !DILocation(line: 1463, column: 10, scope: !1257, inlinedAt: !1258)
!1480 = !DILocation(line: 1463, column: 3, scope: !1257, inlinedAt: !1258)
!1481 = !DILocation(line: 1464, column: 5, scope: !1257, inlinedAt: !1258)
!1482 = distinct !{!1482, !1480, !1481}
!1483 = !DILocation(line: 1466, column: 11, scope: !1257, inlinedAt: !1258)
!1484 = !DILocation(line: 1468, column: 11, scope: !1257, inlinedAt: !1258)
!1485 = !DILocation(line: 1468, column: 7, scope: !1257, inlinedAt: !1258)
!1486 = !DILocation(line: 1469, column: 16, scope: !1257, inlinedAt: !1258)
!1487 = !DILocation(line: 1470, column: 4, scope: !1257, inlinedAt: !1258)
!1488 = !DILocation(line: 1473, column: 3, scope: !1257, inlinedAt: !1258)
!1489 = !DILocation(line: 1474, column: 3, scope: !1257, inlinedAt: !1258)
!1490 = !DILocation(line: 1474, column: 16, scope: !1257, inlinedAt: !1258)
!1491 = !DILocation(line: 1477, column: 14, scope: !1257, inlinedAt: !1258)
!1492 = !DILocation(line: 1477, column: 7, scope: !1257, inlinedAt: !1258)
!1493 = !DILocation(line: 1478, column: 10, scope: !1257, inlinedAt: !1258)
!1494 = !DILocation(line: 1478, column: 4, scope: !1257, inlinedAt: !1258)
!1495 = !DILocation(line: 1480, column: 20, scope: !1257, inlinedAt: !1258)
!1496 = !DILocation(line: 1480, column: 10, scope: !1257, inlinedAt: !1258)
!1497 = !DILocation(line: 1481, column: 7, scope: !1257, inlinedAt: !1258)
!1498 = !DILocation(line: 1482, column: 16, scope: !1257, inlinedAt: !1258)
!1499 = !DILocation(line: 1483, column: 4, scope: !1257, inlinedAt: !1258)
!1500 = !DILocation(line: 1486, column: 15, scope: !1257, inlinedAt: !1258)
!1501 = !DILocation(line: 1486, column: 9, scope: !1257, inlinedAt: !1258)
!1502 = !DILocation(line: 1486, column: 13, scope: !1257, inlinedAt: !1258)
!1503 = !DILocation(line: 1488, column: 14, scope: !1257, inlinedAt: !1258)
!1504 = !DILocation(line: 1488, column: 26, scope: !1257, inlinedAt: !1258)
!1505 = !DILocation(line: 1488, column: 7, scope: !1257, inlinedAt: !1258)
!1506 = !DILocation(line: 1489, column: 4, scope: !1257, inlinedAt: !1258)
!1507 = !DILocation(line: 1489, column: 13, scope: !1257, inlinedAt: !1258)
!1508 = !DILocation(line: 1491, column: 42, scope: !1257, inlinedAt: !1258)
!1509 = !DILocation(line: 1491, column: 53, scope: !1257, inlinedAt: !1258)
!1510 = !DILocation(line: 1492, column: 15, scope: !1257, inlinedAt: !1258)
!1511 = !DILocation(line: 1491, column: 15, scope: !1257, inlinedAt: !1258)
!1512 = !DILocation(line: 1491, column: 13, scope: !1257, inlinedAt: !1258)
!1513 = !DILocation(line: 1493, column: 14, scope: !1257, inlinedAt: !1258)
!1514 = !DILocation(line: 1493, column: 17, scope: !1257, inlinedAt: !1258)
!1515 = !DILocation(line: 1493, column: 8, scope: !1257, inlinedAt: !1258)
!1516 = !DILocation(line: 1494, column: 5, scope: !1257, inlinedAt: !1258)
!1517 = !DILocation(line: 1494, column: 11, scope: !1257, inlinedAt: !1258)
!1518 = !DILocation(line: 1494, column: 15, scope: !1257, inlinedAt: !1258)
!1519 = !DILocation(line: 1498, column: 15, scope: !1257, inlinedAt: !1258)
!1520 = !DILocation(line: 1499, column: 3, scope: !1257, inlinedAt: !1258)
!1521 = !DILocation(line: 1506, column: 8, scope: !1257, inlinedAt: !1258)
!1522 = !DILocation(line: 1506, column: 2, scope: !1257, inlinedAt: !1258)
!1523 = !DILocation(line: 1507, column: 2, scope: !1257, inlinedAt: !1258)
!1524 = !DILocation(line: 1509, column: 8, scope: !1257, inlinedAt: !1258)
!1525 = !DILocation(line: 1509, column: 2, scope: !1257, inlinedAt: !1258)
!1526 = !DILocation(line: 1510, column: 2, scope: !1257, inlinedAt: !1258)
!1527 = !DILocation(line: 1511, column: 1, scope: !1257, inlinedAt: !1258)
!1528 = !DILocation(line: 478, column: 7, scope: !1171, inlinedAt: !1172)
!1529 = !DILocation(line: 1502, column: 12, scope: !1257, inlinedAt: !1258)
!1530 = !DILocation(line: 478, column: 11, scope: !1171, inlinedAt: !1172)
!1531 = !DILocation(line: 479, column: 10, scope: !1171, inlinedAt: !1172)
!1532 = !DILocation(line: 480, column: 4, scope: !1171, inlinedAt: !1172)
!1533 = !DILocation(line: 482, column: 14, scope: !1171, inlinedAt: !1172)
!1534 = !DILocation(line: 484, column: 4, scope: !1171, inlinedAt: !1172)
!1535 = !DILocation(line: 487, column: 3, scope: !1171, inlinedAt: !1172)
!1536 = !DILocation(line: 488, column: 14, scope: !1171, inlinedAt: !1172)
!1537 = !DILocation(line: 489, column: 8, scope: !1171, inlinedAt: !1172)
!1538 = !DILocation(line: 490, column: 5, scope: !1171, inlinedAt: !1172)
!1539 = distinct !{!1539, !1535, !1540}
!1540 = !DILocation(line: 538, column: 3, scope: !1171, inlinedAt: !1172)
!1541 = !DILocation(line: 0, scope: !1171, inlinedAt: !1172)
!1542 = !DILocation(line: 492, column: 4, scope: !1171, inlinedAt: !1172)
!1543 = !DILocation(line: 495, column: 5, scope: !1171, inlinedAt: !1172)
!1544 = !DILocation(line: 499, column: 9, scope: !1171, inlinedAt: !1172)
!1545 = !DILocation(line: 499, column: 17, scope: !1171, inlinedAt: !1172)
!1546 = !DILocation(line: 500, column: 9, scope: !1171, inlinedAt: !1172)
!1547 = !DILocation(line: 501, column: 6, scope: !1171, inlinedAt: !1172)
!1548 = !DILocation(line: 499, column: 26, scope: !1171, inlinedAt: !1172)
!1549 = !DILocation(line: 505, column: 17, scope: !1171, inlinedAt: !1172)
!1550 = !DILocation(line: 506, column: 15, scope: !1171, inlinedAt: !1172)
!1551 = !DILocation(line: 136, column: 14, scope: !603, inlinedAt: !1552)
!1552 = distinct !DILocation(line: 505, column: 5, scope: !1171, inlinedAt: !1172)
!1553 = !DILocation(line: 137, column: 6, scope: !603, inlinedAt: !1552)
!1554 = !DILocation(line: 137, column: 18, scope: !603, inlinedAt: !1552)
!1555 = !DILocation(line: 507, column: 5, scope: !1171, inlinedAt: !1172)
!1556 = !DILocation(line: 510, column: 13, scope: !1171, inlinedAt: !1172)
!1557 = !DILocation(line: 510, column: 18, scope: !1171, inlinedAt: !1172)
!1558 = !DILocation(line: 512, column: 13, scope: !1171, inlinedAt: !1172)
!1559 = !DILocation(line: 512, column: 8, scope: !1171, inlinedAt: !1172)
!1560 = !DILocation(line: 513, column: 18, scope: !1171, inlinedAt: !1172)
!1561 = !DILocation(line: 122, column: 14, scope: !1562, inlinedAt: !1563)
!1562 = distinct !DISubprogram(name: "update_preds", scope: !1, file: !1, line: 118, type: !201, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1563 = distinct !DILocation(line: 513, column: 5, scope: !1171, inlinedAt: !1172)
!1564 = !DILocation(line: 123, column: 6, scope: !1562, inlinedAt: !1563)
!1565 = !DILocation(line: 123, column: 14, scope: !1562, inlinedAt: !1563)
!1566 = !DILocation(line: 124, column: 10, scope: !1562, inlinedAt: !1563)
!1567 = !DILocation(line: 124, column: 25, scope: !1562, inlinedAt: !1563)
!1568 = !DILocation(line: 125, column: 17, scope: !1562, inlinedAt: !1563)
!1569 = !DILocation(line: 126, column: 17, scope: !1562, inlinedAt: !1563)
!1570 = !DILocation(line: 514, column: 10, scope: !1171, inlinedAt: !1172)
!1571 = !DILocation(line: 515, column: 4, scope: !1171, inlinedAt: !1172)
!1572 = !DILocation(line: 516, column: 8, scope: !1171, inlinedAt: !1172)
!1573 = !DILocation(line: 516, column: 14, scope: !1171, inlinedAt: !1172)
!1574 = !DILocation(line: 520, column: 8, scope: !1171, inlinedAt: !1172)
!1575 = !DILocation(line: 520, column: 13, scope: !1171, inlinedAt: !1172)
!1576 = !DILocation(line: 521, column: 18, scope: !1171, inlinedAt: !1172)
!1577 = !DILocation(line: 521, column: 31, scope: !1171, inlinedAt: !1172)
!1578 = !DILocation(line: 122, column: 14, scope: !1562, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 521, column: 5, scope: !1171, inlinedAt: !1172)
!1580 = !DILocation(line: 123, column: 6, scope: !1562, inlinedAt: !1579)
!1581 = !DILocation(line: 123, column: 14, scope: !1562, inlinedAt: !1579)
!1582 = !DILocation(line: 124, column: 10, scope: !1562, inlinedAt: !1579)
!1583 = !DILocation(line: 124, column: 25, scope: !1562, inlinedAt: !1579)
!1584 = !DILocation(line: 125, column: 17, scope: !1562, inlinedAt: !1579)
!1585 = !DILocation(line: 126, column: 17, scope: !1562, inlinedAt: !1579)
!1586 = !DILocation(line: 522, column: 10, scope: !1171, inlinedAt: !1172)
!1587 = !DILocation(line: 523, column: 4, scope: !1171, inlinedAt: !1172)
!1588 = !DILocation(line: 524, column: 8, scope: !1171, inlinedAt: !1172)
!1589 = !DILocation(line: 531, column: 12, scope: !1171, inlinedAt: !1172)
!1590 = !DILocation(line: 531, column: 8, scope: !1171, inlinedAt: !1172)
!1591 = !DILocation(line: 532, column: 9, scope: !1171, inlinedAt: !1172)
!1592 = !DILocation(line: 534, column: 50, scope: !1171, inlinedAt: !1172)
!1593 = !DILocation(line: 136, column: 14, scope: !603, inlinedAt: !1594)
!1594 = distinct !DILocation(line: 534, column: 5, scope: !1171, inlinedAt: !1172)
!1595 = !DILocation(line: 137, column: 6, scope: !603, inlinedAt: !1594)
!1596 = !DILocation(line: 137, column: 18, scope: !603, inlinedAt: !1594)
!1597 = !DILocation(line: 535, column: 5, scope: !1171, inlinedAt: !1172)
!1598 = !DILocation(line: 537, column: 7, scope: !1171, inlinedAt: !1172)
!1599 = distinct !{!1599, !1535, !1540}
!1600 = distinct !{!1600, !1212, !1218}
!1601 = !DILocation(line: 443, column: 6, scope: !1171, inlinedAt: !1172)
!1602 = !DILocation(line: 422, column: 6, scope: !1171, inlinedAt: !1172)
!1603 = !DILocation(line: 424, column: 6, scope: !1171, inlinedAt: !1172)
!1604 = !DILocation(line: 541, column: 10, scope: !1171, inlinedAt: !1172)
!1605 = !DILocation(line: 541, column: 6, scope: !1171, inlinedAt: !1172)
!1606 = !DILocation(line: 543, column: 15, scope: !1171, inlinedAt: !1172)
!1607 = !DILocation(line: 543, column: 47, scope: !1171, inlinedAt: !1172)
!1608 = !DILocation(line: 136, column: 14, scope: !603, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 543, column: 3, scope: !1171, inlinedAt: !1172)
!1610 = !DILocation(line: 137, column: 6, scope: !603, inlinedAt: !1609)
!1611 = !DILocation(line: 137, column: 18, scope: !603, inlinedAt: !1609)
!1612 = !DILocation(line: 544, column: 3, scope: !1171, inlinedAt: !1172)
!1613 = !DILocation(line: 547, column: 7, scope: !1171, inlinedAt: !1172)
!1614 = !DILocation(line: 547, column: 6, scope: !1171, inlinedAt: !1172)
!1615 = !DILocation(line: 549, column: 7, scope: !1171, inlinedAt: !1172)
!1616 = !DILocation(line: 550, column: 43, scope: !1171, inlinedAt: !1172)
!1617 = !DILocation(line: 136, column: 14, scope: !603, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 550, column: 3, scope: !1171, inlinedAt: !1172)
!1619 = !DILocation(line: 137, column: 6, scope: !603, inlinedAt: !1618)
!1620 = !DILocation(line: 137, column: 18, scope: !603, inlinedAt: !1618)
!1621 = !DILocation(line: 551, column: 3, scope: !1171, inlinedAt: !1172)
!1622 = !DILocation(line: 554, column: 2, scope: !1171, inlinedAt: !1172)
!1623 = !DILocation(line: 554, column: 10, scope: !1171, inlinedAt: !1172)
!1624 = !DILocation(line: 554, column: 15, scope: !1171, inlinedAt: !1172)
!1625 = !DILocation(line: 555, column: 17, scope: !1171, inlinedAt: !1172)
!1626 = !DILocation(line: 556, column: 8, scope: !1171, inlinedAt: !1172)
!1627 = !DILocation(line: 556, column: 2, scope: !1171, inlinedAt: !1172)
!1628 = !DILocation(line: 556, column: 12, scope: !1171, inlinedAt: !1172)
!1629 = !DILocation(line: 556, column: 17, scope: !1171, inlinedAt: !1172)
!1630 = !DILocation(line: 557, column: 19, scope: !1171, inlinedAt: !1172)
!1631 = !DILocation(line: 558, column: 8, scope: !1171, inlinedAt: !1172)
!1632 = !DILocation(line: 558, column: 2, scope: !1171, inlinedAt: !1172)
!1633 = !DILocation(line: 558, column: 19, scope: !1171, inlinedAt: !1172)
!1634 = !DILocation(line: 559, column: 12, scope: !1171, inlinedAt: !1172)
!1635 = !DILocation(line: 559, column: 27, scope: !1171, inlinedAt: !1172)
!1636 = !DILocation(line: 562, column: 2, scope: !1171, inlinedAt: !1172)
!1637 = !DILocation(line: 569, column: 2, scope: !1171, inlinedAt: !1172)
!1638 = !DILocation(line: 562, column: 18, scope: !1171, inlinedAt: !1172)
!1639 = !DILocation(line: 566, column: 2, scope: !1171, inlinedAt: !1172)
!1640 = !DILocation(line: 569, column: 16, scope: !1171, inlinedAt: !1172)
!1641 = !DILocation(line: 563, column: 16, scope: !1171, inlinedAt: !1172)
!1642 = !DILocation(line: 563, column: 24, scope: !1171, inlinedAt: !1172)
!1643 = !DILocation(line: 564, column: 15, scope: !1171, inlinedAt: !1172)
!1644 = !DILocation(line: 564, column: 46, scope: !1171, inlinedAt: !1172)
!1645 = !DILocation(line: 564, column: 30, scope: !1171, inlinedAt: !1172)
!1646 = !DILocation(line: 564, column: 7, scope: !1171, inlinedAt: !1172)
!1647 = !DILocation(line: 564, column: 33, scope: !1171, inlinedAt: !1172)
!1648 = !DILocation(line: 565, column: 21, scope: !1171, inlinedAt: !1172)
!1649 = !DILocation(line: 565, column: 34, scope: !1171, inlinedAt: !1172)
!1650 = !DILocation(line: 565, column: 19, scope: !1171, inlinedAt: !1172)
!1651 = !DILocation(line: 565, column: 4, scope: !1171, inlinedAt: !1172)
!1652 = distinct !{!1652, !1636, !1639}
!1653 = !DILocation(line: 570, column: 12, scope: !1171, inlinedAt: !1172)
!1654 = !DILocation(line: 570, column: 25, scope: !1171, inlinedAt: !1172)
!1655 = !DILocation(line: 570, column: 33, scope: !1171, inlinedAt: !1172)
!1656 = !DILocation(line: 570, column: 23, scope: !1171, inlinedAt: !1172)
!1657 = !DILocation(line: 571, column: 26, scope: !1171, inlinedAt: !1172)
!1658 = !DILocation(line: 573, column: 7, scope: !1171, inlinedAt: !1172)
!1659 = !DILocation(line: 574, column: 8, scope: !1171, inlinedAt: !1172)
!1660 = !DILocation(line: 575, column: 4, scope: !1171, inlinedAt: !1172)
!1661 = !DILocation(line: 569, column: 22, scope: !1171, inlinedAt: !1172)
!1662 = distinct !{!1662, !1637, !1663}
!1663 = !DILocation(line: 577, column: 2, scope: !1171, inlinedAt: !1172)
!1664 = !DILocation(line: 579, column: 8, scope: !1171, inlinedAt: !1172)
!1665 = !DILocation(line: 579, column: 2, scope: !1171, inlinedAt: !1172)
!1666 = !DILocation(line: 580, column: 2, scope: !1171, inlinedAt: !1172)
!1667 = !DILocation(line: 581, column: 2, scope: !1171, inlinedAt: !1172)
!1668 = !DILocation(line: 583, column: 2, scope: !1171, inlinedAt: !1172)
!1669 = !DILocation(line: 584, column: 2, scope: !1171, inlinedAt: !1172)
!1670 = !DILocation(line: 585, column: 6, scope: !1171, inlinedAt: !1172)
!1671 = !DILocation(line: 586, column: 29, scope: !1171, inlinedAt: !1172)
!1672 = !DILocation(line: 586, column: 3, scope: !1171, inlinedAt: !1172)
!1673 = !DILocation(line: 587, column: 4, scope: !1171, inlinedAt: !1172)
!1674 = !DILocation(line: 586, column: 36, scope: !1171, inlinedAt: !1172)
!1675 = distinct !{!1675, !1672, !1676}
!1676 = !DILocation(line: 587, column: 28, scope: !1171, inlinedAt: !1172)
!1677 = !DILocation(line: 588, column: 9, scope: !1171, inlinedAt: !1172)
!1678 = !DILocation(line: 588, column: 3, scope: !1171, inlinedAt: !1172)
!1679 = !DILocation(line: 589, column: 2, scope: !1171, inlinedAt: !1172)
!1680 = !DILocation(line: 590, column: 17, scope: !1171, inlinedAt: !1172)
!1681 = !DILocation(line: 26, column: 9, scope: !1682, inlinedAt: !1684)
!1682 = distinct !DISubprogram(name: "ERR_PTR", scope: !1683, file: !1683, line: 24, type: !201, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1683 = !DIFile(filename: "../include/linux/err.h", directory: "/llk/linux-5.17/build_arm_allyes")
!1684 = distinct !DILocation(line: 590, column: 9, scope: !1171, inlinedAt: !1172)
!1685 = !DILocation(line: 590, column: 2, scope: !1171, inlinedAt: !1172)
!1686 = !DILocation(line: 36, column: 9, scope: !1687, inlinedAt: !1688)
!1687 = distinct !DISubprogram(name: "IS_ERR", scope: !1683, file: !1683, line: 34, type: !201, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1688 = distinct !DILocation(line: 1657, column: 6, scope: !1079)
!1689 = !DILocation(line: 1658, column: 18, scope: !1079)
!1690 = !DILocation(line: 31, column: 9, scope: !1691, inlinedAt: !1692)
!1691 = distinct !DISubprogram(name: "PTR_ERR", scope: !1683, file: !1683, line: 29, type: !201, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1692 = distinct !DILocation(line: 1658, column: 10, scope: !1079)
!1693 = !DILocation(line: 1658, column: 3, scope: !1079)
!1694 = !DILocation(line: 1660, column: 2, scope: !1079)
!1695 = !{i64 2155372555}
!1696 = !DILocation(line: 1661, column: 2, scope: !1079)
!1697 = !DILocation(line: 1662, column: 1, scope: !1079)
!1698 = distinct !DISubprogram(name: "append_filter_err", scope: !1, file: !1, line: 1023, type: !201, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1699 = !DILocation(line: 1026, scope: !1698)
!1700 = !DILocation(line: 1028, column: 16, scope: !1698)
!1701 = !DILocation(line: 1032, column: 6, scope: !1698)
!1702 = !DILocation(line: 1033, column: 3, scope: !1698)
!1703 = !DILocation(line: 392, column: 26, scope: !570, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 576, column: 11, scope: !573, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 1035, column: 6, scope: !1698)
!1706 = !DILocation(line: 582, column: 33, scope: !573, inlinedAt: !1705)
!1707 = !DILocation(line: 339, column: 3, scope: !579, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 582, column: 20, scope: !573, inlinedAt: !1705)
!1709 = !DILocation(line: 582, column: 5, scope: !573, inlinedAt: !1705)
!1710 = !DILocation(line: 581, column: 10, scope: !573, inlinedAt: !1705)
!1711 = !DILocation(line: 1036, column: 7, scope: !1698)
!1712 = !DILocation(line: 1036, column: 6, scope: !1698)
!1713 = !DILocation(line: 0, scope: !1698)
!1714 = !DILocation(line: 1037, column: 3, scope: !1698)
!1715 = !DILocation(line: 23, column: 19, scope: !1716, inlinedAt: !1718)
!1716 = distinct !DISubprogram(name: "trace_seq_init", scope: !1717, file: !1717, line: 21, type: !201, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1717 = !DIFile(filename: "../include/linux/trace_seq.h", directory: "/llk/linux-5.17/build_arm_allyes")
!1718 = distinct !DILocation(line: 1038, column: 2, scope: !1698)
!1719 = !DILocation(line: 35, column: 12, scope: !1720, inlinedAt: !1722)
!1720 = distinct !DISubprogram(name: "seq_buf_init", scope: !1721, file: !1721, line: 33, type: !201, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1721 = !DIFile(filename: "../include/linux/seq_buf.h", directory: "/llk/linux-5.17/build_arm_allyes")
!1722 = distinct !DILocation(line: 23, column: 2, scope: !1716, inlinedAt: !1718)
!1723 = !DILocation(line: 36, column: 5, scope: !1720, inlinedAt: !1722)
!1724 = !DILocation(line: 36, column: 10, scope: !1720, inlinedAt: !1722)
!1725 = !DILocation(line: 28, column: 5, scope: !1726, inlinedAt: !1727)
!1726 = distinct !DISubprogram(name: "seq_buf_clear", scope: !1721, file: !1721, line: 26, type: !201, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1727 = distinct !DILocation(line: 37, column: 2, scope: !1720, inlinedAt: !1722)
!1728 = !DILocation(line: 28, column: 9, scope: !1726, inlinedAt: !1727)
!1729 = !DILocation(line: 29, column: 5, scope: !1726, inlinedAt: !1727)
!1730 = !DILocation(line: 29, column: 13, scope: !1726, inlinedAt: !1727)
!1731 = !DILocation(line: 24, column: 5, scope: !1716, inlinedAt: !1718)
!1732 = !DILocation(line: 24, column: 10, scope: !1716, inlinedAt: !1718)
!1733 = !DILocation(line: 1040, column: 23, scope: !1698)
!1734 = !DILocation(line: 1040, column: 8, scope: !1698)
!1735 = !DILocation(line: 1041, column: 10, scope: !1698)
!1736 = !DILocation(line: 1041, column: 6, scope: !1698)
!1737 = !DILocation(line: 1042, column: 9, scope: !1698)
!1738 = !DILocation(line: 1042, column: 3, scope: !1698)
!1739 = !DILocation(line: 1045, column: 6, scope: !1698)
!1740 = !DILocation(line: 1046, column: 6, scope: !1698)
!1741 = !DILocation(line: 1046, column: 3, scope: !1698)
!1742 = !DILocation(line: 1048, column: 28, scope: !1698)
!1743 = !DILocation(line: 1048, column: 2, scope: !1698)
!1744 = !DILocation(line: 1049, column: 10, scope: !1698)
!1745 = !DILocation(line: 1049, column: 18, scope: !1698)
!1746 = !DILocation(line: 1049, column: 6, scope: !1698)
!1747 = !DILocation(line: 1050, column: 20, scope: !1698)
!1748 = !DILocation(line: 1050, column: 3, scope: !1698)
!1749 = !DILocation(line: 1051, column: 59, scope: !1698)
!1750 = !DILocation(line: 1051, column: 46, scope: !1698)
!1751 = !DILocation(line: 1051, column: 3, scope: !1698)
!1752 = !DILocation(line: 1053, column: 13, scope: !1698)
!1753 = !DILocation(line: 1054, column: 9, scope: !1698)
!1754 = !DILocation(line: 1054, column: 5, scope: !1698)
!1755 = !DILocation(line: 1054, column: 22, scope: !1698)
!1756 = !DILocation(line: 1054, column: 18, scope: !1698)
!1757 = !DILocation(line: 1052, column: 3, scope: !1698)
!1758 = !DILocation(line: 1055, column: 2, scope: !1698)
!1759 = !DILocation(line: 1056, column: 20, scope: !1698)
!1760 = !DILocation(line: 1056, column: 46, scope: !1698)
!1761 = !DILocation(line: 1056, column: 3, scope: !1698)
!1762 = !DILocation(line: 1058, column: 13, scope: !1698)
!1763 = !DILocation(line: 1057, column: 3, scope: !1698)
!1764 = !DILocation(line: 1061, column: 2, scope: !1698)
!1765 = !DILocation(line: 1062, column: 38, scope: !1698)
!1766 = !DILocation(line: 1062, column: 8, scope: !1698)
!1767 = !DILocation(line: 1063, column: 6, scope: !1698)
!1768 = !DILocation(line: 1064, column: 9, scope: !1698)
!1769 = !DILocation(line: 1064, column: 17, scope: !1698)
!1770 = !DILocation(line: 1064, column: 3, scope: !1698)
!1771 = !DILocation(line: 1065, column: 25, scope: !1698)
!1772 = !DILocation(line: 1066, column: 2, scope: !1698)
!1773 = !DILocation(line: 1067, column: 2, scope: !1698)
!1774 = !DILocation(line: 1068, column: 1, scope: !1698)
!1775 = distinct !DISubprogram(name: "filter_pred_none", scope: !1, file: !1, line: 839, type: !201, scopeLine: 840, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1776 = !DILocation(line: 840, scope: !1775)
!1777 = !DILocation(line: 841, column: 2, scope: !1775)
!1778 = distinct !DISubprogram(name: "is_string_field", scope: !1779, file: !1779, line: 1469, type: !201, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1779 = !DIFile(filename: "../kernel/trace/trace.h", directory: "/llk/linux-5.17/build_arm_allyes")
!1780 = !DILocation(line: 1470, scope: !1778)
!1781 = !DILocation(line: 1471, column: 16, scope: !1778)
!1782 = !DILocation(line: 1471, column: 28, scope: !1778)
!1783 = !DILocation(line: 1471, column: 49, scope: !1778)
!1784 = !DILocation(line: 1472, column: 9, scope: !1778)
!1785 = !DILocation(line: 1472, column: 28, scope: !1778)
!1786 = !DILocation(line: 1472, column: 50, scope: !1778)
!1787 = !DILocation(line: 1473, column: 9, scope: !1778)
!1788 = !DILocation(line: 1473, column: 16, scope: !1778)
!1789 = !DILocation(line: 1473, column: 28, scope: !1778)
!1790 = !DILocation(line: 1473, column: 52, scope: !1778)
!1791 = !DILocation(line: 1474, column: 9, scope: !1778)
!1792 = !DILocation(line: 1474, column: 16, scope: !1778)
!1793 = !DILocation(line: 1474, column: 28, scope: !1778)
!1794 = !DILocation(line: 1474, column: 49, scope: !1778)
!1795 = !DILocation(line: 1475, column: 9, scope: !1778)
!1796 = !DILocation(line: 1475, column: 16, scope: !1778)
!1797 = !DILocation(line: 1475, column: 28, scope: !1778)
!1798 = !DILocation(line: 1471, column: 2, scope: !1778)
!1799 = distinct !DISubprogram(name: "filter_build_regex", scope: !1, file: !1, line: 956, type: !201, scopeLine: 957, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1800 = !DILocation(line: 957, scope: !1799)
!1801 = !DILocation(line: 959, column: 2, scope: !1799)
!1802 = !DILocation(line: 959, column: 8, scope: !1799)
!1803 = !DILocation(line: 962, column: 12, scope: !1799)
!1804 = !DILocation(line: 962, column: 15, scope: !1799)
!1805 = !DILocation(line: 962, column: 6, scope: !1799)
!1806 = !DILocation(line: 958, column: 27, scope: !1799)
!1807 = !DILocation(line: 963, column: 29, scope: !1799)
!1808 = !DILocation(line: 963, column: 44, scope: !1799)
!1809 = !DILocation(line: 963, column: 65, scope: !1799)
!1810 = !DILocation(line: 963, column: 10, scope: !1799)
!1811 = !DILocation(line: 964, column: 19, scope: !1799)
!1812 = !DILocation(line: 964, column: 12, scope: !1799)
!1813 = !DILocation(line: 964, column: 10, scope: !1799)
!1814 = !DILocation(line: 965, column: 37, scope: !1799)
!1815 = !DILocation(line: 965, column: 3, scope: !1799)
!1816 = !DILocation(line: 968, column: 2, scope: !1799)
!1817 = !DILocation(line: 972, column: 3, scope: !1799)
!1818 = !DILocation(line: 973, column: 3, scope: !1799)
!1819 = !DILocation(line: 975, column: 3, scope: !1799)
!1820 = !DILocation(line: 976, column: 3, scope: !1799)
!1821 = !DILocation(line: 978, column: 3, scope: !1799)
!1822 = !DILocation(line: 979, column: 3, scope: !1799)
!1823 = !DILocation(line: 981, column: 3, scope: !1799)
!1824 = !DILocation(line: 982, column: 3, scope: !1799)
!1825 = !DILocation(line: 984, column: 3, scope: !1799)
!1826 = !DILocation(line: 985, column: 3, scope: !1799)
!1827 = !DILocation(line: 0, scope: !1799)
!1828 = !DILocation(line: 987, column: 1, scope: !1799)
!1829 = distinct !DISubprogram(name: "filter_pred_comm", scope: !1, file: !1, line: 830, type: !201, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1830 = !DILocation(line: 831, scope: !1829)
!1831 = !DILocation(line: 834, column: 14, scope: !1829)
!1832 = !DILocation(line: 834, column: 20, scope: !1829)
!1833 = !DILocation(line: 104, column: 4, scope: !922, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 834, column: 26, scope: !1829)
!1835 = !DILocation(line: 104, column: 26, scope: !922, inlinedAt: !1834)
!1836 = !DILocation(line: 103, column: 9, scope: !922, inlinedAt: !1834)
!1837 = !DILocation(line: 834, column: 26, scope: !1829)
!1838 = !DILocation(line: 834, column: 35, scope: !1829)
!1839 = !DILocation(line: 834, column: 8, scope: !1829)
!1840 = !DILocation(line: 836, column: 21, scope: !1829)
!1841 = !DILocation(line: 836, column: 13, scope: !1829)
!1842 = !DILocation(line: 836, column: 2, scope: !1829)
!1843 = distinct !DISubprogram(name: "filter_pred_string", scope: !1, file: !1, line: 705, type: !201, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1844 = !DILocation(line: 706, scope: !1843)
!1845 = !DILocation(line: 707, column: 38, scope: !1843)
!1846 = !DILocation(line: 707, column: 30, scope: !1843)
!1847 = !DILocation(line: 710, column: 14, scope: !1843)
!1848 = !DILocation(line: 710, column: 20, scope: !1843)
!1849 = !DILocation(line: 710, column: 58, scope: !1843)
!1850 = !DILocation(line: 710, column: 8, scope: !1843)
!1851 = !DILocation(line: 712, column: 22, scope: !1843)
!1852 = !DILocation(line: 712, column: 14, scope: !1843)
!1853 = !DILocation(line: 714, column: 2, scope: !1843)
!1854 = distinct !DISubprogram(name: "filter_pred_strloc", scope: !1, file: !1, line: 765, type: !201, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1855 = !DILocation(line: 766, scope: !1854)
!1856 = !DILocation(line: 767, column: 40, scope: !1854)
!1857 = !DILocation(line: 767, column: 32, scope: !1854)
!1858 = !DILocation(line: 767, column: 17, scope: !1854)
!1859 = !DILocation(line: 768, column: 25, scope: !1854)
!1860 = !DILocation(line: 769, column: 25, scope: !1854)
!1861 = !DILocation(line: 770, column: 30, scope: !1854)
!1862 = !DILocation(line: 773, column: 14, scope: !1854)
!1863 = !DILocation(line: 773, column: 20, scope: !1854)
!1864 = !DILocation(line: 773, column: 8, scope: !1854)
!1865 = !DILocation(line: 775, column: 22, scope: !1854)
!1866 = !DILocation(line: 775, column: 14, scope: !1854)
!1867 = !DILocation(line: 777, column: 2, scope: !1854)
!1868 = distinct !DISubprogram(name: "filter_pred_strrelloc", scope: !1, file: !1, line: 787, type: !201, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1869 = !DILocation(line: 788, scope: !1868)
!1870 = !DILocation(line: 789, column: 36, scope: !1868)
!1871 = !DILocation(line: 789, column: 28, scope: !1868)
!1872 = !DILocation(line: 790, column: 17, scope: !1868)
!1873 = !DILocation(line: 791, column: 25, scope: !1868)
!1874 = !DILocation(line: 792, column: 25, scope: !1868)
!1875 = !DILocation(line: 793, column: 25, scope: !1868)
!1876 = !DILocation(line: 793, column: 34, scope: !1868)
!1877 = !DILocation(line: 796, column: 14, scope: !1868)
!1878 = !DILocation(line: 796, column: 20, scope: !1868)
!1879 = !DILocation(line: 796, column: 8, scope: !1868)
!1880 = !DILocation(line: 798, column: 22, scope: !1868)
!1881 = !DILocation(line: 798, column: 14, scope: !1868)
!1882 = !DILocation(line: 800, column: 2, scope: !1868)
!1883 = distinct !DISubprogram(name: "filter_pred_pchar_user", scope: !1, file: !1, line: 743, type: !201, scopeLine: 744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1884 = !DILocation(line: 744, scope: !1883)
!1885 = !DILocation(line: 690, column: 7, scope: !1886, inlinedAt: !1887)
!1886 = distinct !DISubprogram(name: "test_ustring", scope: !1, file: !1, line: 684, type: !201, scopeLine: 685, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1887 = distinct !DILocation(line: 748, column: 8, scope: !1883)
!1888 = !DILocation(line: 690, column: 6, scope: !1886, inlinedAt: !1887)
!1889 = !DILocation(line: 691, column: 3, scope: !1886, inlinedAt: !1887)
!1890 = !DILocation(line: 745, column: 40, scope: !1883)
!1891 = !DILocation(line: 745, column: 32, scope: !1883)
!1892 = !DILocation(line: 748, column: 21, scope: !1883)
!1893 = !DILocation(line: 693, column: 9, scope: !1886, inlinedAt: !1887)
!1894 = !DILocation(line: 104, column: 4, scope: !922, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 693, column: 9, scope: !1886, inlinedAt: !1887)
!1896 = !DILocation(line: 104, column: 26, scope: !922, inlinedAt: !1895)
!1897 = !DILocation(line: 103, column: 9, scope: !922, inlinedAt: !1895)
!1898 = !DILocation(line: 698, column: 7, scope: !1886, inlinedAt: !1887)
!1899 = !DILocation(line: 698, column: 6, scope: !1886, inlinedAt: !1887)
!1900 = !DILocation(line: 699, column: 3, scope: !1886, inlinedAt: !1887)
!1901 = !DILocation(line: 701, column: 9, scope: !1886, inlinedAt: !1887)
!1902 = !DILocation(line: 749, column: 7, scope: !1883)
!1903 = !DILocation(line: 749, column: 6, scope: !1883)
!1904 = !DILocation(line: 750, column: 3, scope: !1883)
!1905 = !DILocation(line: 752, column: 22, scope: !1883)
!1906 = !DILocation(line: 722, column: 8, scope: !1907, inlinedAt: !1908)
!1907 = distinct !DISubprogram(name: "filter_pchar", scope: !1, file: !1, line: 717, type: !201, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1908 = distinct !DILocation(line: 752, column: 9, scope: !1883)
!1909 = !DILocation(line: 722, column: 20, scope: !1907, inlinedAt: !1908)
!1910 = !DILocation(line: 723, column: 14, scope: !1907, inlinedAt: !1908)
!1911 = !DILocation(line: 723, column: 20, scope: !1907, inlinedAt: !1908)
!1912 = !DILocation(line: 723, column: 8, scope: !1907, inlinedAt: !1908)
!1913 = !DILocation(line: 725, column: 22, scope: !1907, inlinedAt: !1908)
!1914 = !DILocation(line: 725, column: 14, scope: !1907, inlinedAt: !1908)
!1915 = !DILocation(line: 752, column: 2, scope: !1883)
!1916 = !DILocation(line: 0, scope: !1883)
!1917 = !DILocation(line: 753, column: 1, scope: !1883)
!1918 = distinct !DISubprogram(name: "filter_pred_pchar", scope: !1, file: !1, line: 730, type: !201, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1919 = !DILocation(line: 731, scope: !1918)
!1920 = !DILocation(line: 672, column: 7, scope: !1921, inlinedAt: !1922)
!1921 = distinct !DISubprogram(name: "test_string", scope: !1, file: !1, line: 667, type: !201, scopeLine: 668, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1922 = distinct !DILocation(line: 735, column: 8, scope: !1918)
!1923 = !DILocation(line: 672, column: 6, scope: !1921, inlinedAt: !1922)
!1924 = !DILocation(line: 673, column: 3, scope: !1921, inlinedAt: !1922)
!1925 = !DILocation(line: 732, column: 40, scope: !1918)
!1926 = !DILocation(line: 732, column: 32, scope: !1918)
!1927 = !DILocation(line: 735, column: 20, scope: !1918)
!1928 = !DILocation(line: 675, column: 9, scope: !1921, inlinedAt: !1922)
!1929 = !DILocation(line: 104, column: 4, scope: !922, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 675, column: 9, scope: !1921, inlinedAt: !1922)
!1931 = !DILocation(line: 104, column: 26, scope: !922, inlinedAt: !1930)
!1932 = !DILocation(line: 103, column: 9, scope: !922, inlinedAt: !1930)
!1933 = !DILocation(line: 679, column: 7, scope: !1921, inlinedAt: !1922)
!1934 = !DILocation(line: 679, column: 6, scope: !1921, inlinedAt: !1922)
!1935 = !DILocation(line: 680, column: 3, scope: !1921, inlinedAt: !1922)
!1936 = !DILocation(line: 681, column: 9, scope: !1921, inlinedAt: !1922)
!1937 = !DILocation(line: 736, column: 7, scope: !1918)
!1938 = !DILocation(line: 736, column: 6, scope: !1918)
!1939 = !DILocation(line: 737, column: 3, scope: !1918)
!1940 = !DILocation(line: 739, column: 22, scope: !1918)
!1941 = !DILocation(line: 722, column: 8, scope: !1907, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 739, column: 9, scope: !1918)
!1943 = !DILocation(line: 722, column: 20, scope: !1907, inlinedAt: !1942)
!1944 = !DILocation(line: 723, column: 14, scope: !1907, inlinedAt: !1942)
!1945 = !DILocation(line: 723, column: 20, scope: !1907, inlinedAt: !1942)
!1946 = !DILocation(line: 723, column: 8, scope: !1907, inlinedAt: !1942)
!1947 = !DILocation(line: 725, column: 22, scope: !1907, inlinedAt: !1942)
!1948 = !DILocation(line: 725, column: 14, scope: !1907, inlinedAt: !1942)
!1949 = !DILocation(line: 739, column: 2, scope: !1918)
!1950 = !DILocation(line: 0, scope: !1918)
!1951 = !DILocation(line: 740, column: 1, scope: !1918)
!1952 = distinct !DISubprogram(name: "filter_pred_cpu", scope: !1, file: !1, line: 804, type: !201, scopeLine: 805, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1953 = !DILocation(line: 805, scope: !1952)
!1954 = !DILocation(line: 104, column: 4, scope: !922, inlinedAt: !1955)
!1955 = distinct !DILocation(line: 808, column: 8, scope: !1952)
!1956 = !DILocation(line: 104, column: 26, scope: !922, inlinedAt: !1955)
!1957 = !DILocation(line: 103, column: 9, scope: !922, inlinedAt: !1955)
!1958 = !DILocation(line: 808, column: 8, scope: !1952)
!1959 = !DILocation(line: 809, column: 14, scope: !1952)
!1960 = !DILocation(line: 809, column: 8, scope: !1952)
!1961 = !DILocation(line: 811, column: 16, scope: !1952)
!1962 = !DILocation(line: 811, column: 2, scope: !1952)
!1963 = !DILocation(line: 813, column: 10, scope: !1952)
!1964 = !DILocation(line: 813, column: 14, scope: !1952)
!1965 = !DILocation(line: 813, column: 3, scope: !1952)
!1966 = !DILocation(line: 815, column: 10, scope: !1952)
!1967 = !DILocation(line: 815, column: 14, scope: !1952)
!1968 = !DILocation(line: 815, column: 3, scope: !1952)
!1969 = !DILocation(line: 817, column: 10, scope: !1952)
!1970 = !DILocation(line: 817, column: 14, scope: !1952)
!1971 = !DILocation(line: 817, column: 3, scope: !1952)
!1972 = !DILocation(line: 819, column: 10, scope: !1952)
!1973 = !DILocation(line: 819, column: 14, scope: !1952)
!1974 = !DILocation(line: 819, column: 3, scope: !1952)
!1975 = !DILocation(line: 821, column: 10, scope: !1952)
!1976 = !DILocation(line: 821, column: 14, scope: !1952)
!1977 = !DILocation(line: 821, column: 3, scope: !1952)
!1978 = !DILocation(line: 823, column: 10, scope: !1952)
!1979 = !DILocation(line: 823, column: 14, scope: !1952)
!1980 = !DILocation(line: 823, column: 3, scope: !1952)
!1981 = !DILocation(line: 825, column: 3, scope: !1952)
!1982 = !DILocation(line: 0, scope: !1952)
!1983 = !DILocation(line: 827, column: 1, scope: !1952)
!1984 = distinct !DISubprogram(name: "select_comparison_fn", scope: !1, file: !1, line: 1192, type: !201, scopeLine: 1194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!1985 = !DILocation(line: 1194, scope: !1984)
!1986 = !DILocation(line: 1198, column: 2, scope: !1984)
!1987 = !DILocation(line: 1203, column: 7, scope: !1984)
!1988 = !DILocation(line: 1204, column: 4, scope: !1984)
!1989 = !DILocation(line: 1205, column: 24, scope: !1984)
!1990 = !DILocation(line: 1206, column: 7, scope: !1984)
!1991 = !DILocation(line: 1207, column: 4, scope: !1984)
!1992 = !DILocation(line: 0, scope: !1984)
!1993 = !DILocation(line: 1210, column: 2, scope: !1984)
!1994 = !DILocation(line: 1212, column: 23, scope: !1984)
!1995 = !DILocation(line: 1212, column: 7, scope: !1984)
!1996 = !DILocation(line: 1213, column: 7, scope: !1984)
!1997 = !DILocation(line: 1213, column: 4, scope: !1984)
!1998 = !DILocation(line: 1214, column: 12, scope: !1984)
!1999 = !DILocation(line: 1215, column: 24, scope: !1984)
!2000 = !DILocation(line: 1215, column: 9, scope: !1984)
!2001 = !DILocation(line: 1215, column: 4, scope: !1984)
!2002 = !DILocation(line: 1217, column: 24, scope: !1984)
!2003 = !DILocation(line: 1217, column: 9, scope: !1984)
!2004 = !DILocation(line: 1220, column: 23, scope: !1984)
!2005 = !DILocation(line: 1220, column: 7, scope: !1984)
!2006 = !DILocation(line: 1221, column: 7, scope: !1984)
!2007 = !DILocation(line: 1221, column: 4, scope: !1984)
!2008 = !DILocation(line: 1222, column: 12, scope: !1984)
!2009 = !DILocation(line: 1223, column: 24, scope: !1984)
!2010 = !DILocation(line: 1223, column: 9, scope: !1984)
!2011 = !DILocation(line: 1223, column: 4, scope: !1984)
!2012 = !DILocation(line: 1225, column: 24, scope: !1984)
!2013 = !DILocation(line: 1225, column: 9, scope: !1984)
!2014 = !DILocation(line: 1228, column: 23, scope: !1984)
!2015 = !DILocation(line: 1228, column: 7, scope: !1984)
!2016 = !DILocation(line: 1229, column: 7, scope: !1984)
!2017 = !DILocation(line: 1229, column: 4, scope: !1984)
!2018 = !DILocation(line: 1230, column: 12, scope: !1984)
!2019 = !DILocation(line: 1231, column: 24, scope: !1984)
!2020 = !DILocation(line: 1231, column: 9, scope: !1984)
!2021 = !DILocation(line: 1231, column: 4, scope: !1984)
!2022 = !DILocation(line: 1233, column: 24, scope: !1984)
!2023 = !DILocation(line: 1233, column: 9, scope: !1984)
!2024 = !DILocation(line: 1236, column: 23, scope: !1984)
!2025 = !DILocation(line: 1236, column: 7, scope: !1984)
!2026 = !DILocation(line: 1237, column: 7, scope: !1984)
!2027 = !DILocation(line: 1237, column: 4, scope: !1984)
!2028 = !DILocation(line: 1238, column: 12, scope: !1984)
!2029 = !DILocation(line: 1239, column: 23, scope: !1984)
!2030 = !DILocation(line: 1239, column: 9, scope: !1984)
!2031 = !DILocation(line: 1239, column: 4, scope: !1984)
!2032 = !DILocation(line: 1241, column: 23, scope: !1984)
!2033 = !DILocation(line: 1241, column: 9, scope: !1984)
!2034 = !DILocation(line: 1246, column: 1, scope: !1984)
!2035 = distinct !DISubprogram(name: "regex_match_full", scope: !1, file: !1, line: 856, type: !201, scopeLine: 857, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2036 = !DILocation(line: 857, scope: !2035)
!2037 = !DILocation(line: 859, column: 7, scope: !2035)
!2038 = !DILocation(line: 859, column: 6, scope: !2035)
!2039 = !DILocation(line: 860, column: 17, scope: !2035)
!2040 = !DILocation(line: 860, column: 10, scope: !2035)
!2041 = !DILocation(line: 860, column: 3, scope: !2035)
!2042 = !DILocation(line: 862, column: 17, scope: !2035)
!2043 = !DILocation(line: 862, column: 9, scope: !2035)
!2044 = !DILocation(line: 862, column: 2, scope: !2035)
!2045 = !DILocation(line: 0, scope: !2035)
!2046 = !DILocation(line: 863, column: 1, scope: !2035)
!2047 = distinct !DISubprogram(name: "regex_match_front", scope: !1, file: !1, line: 865, type: !201, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2048 = !DILocation(line: 866, scope: !2047)
!2049 = !DILocation(line: 867, column: 6, scope: !2047)
!2050 = !DILocation(line: 867, column: 10, scope: !2047)
!2051 = !DILocation(line: 867, column: 13, scope: !2047)
!2052 = !DILocation(line: 867, column: 22, scope: !2047)
!2053 = !DILocation(line: 867, column: 17, scope: !2047)
!2054 = !DILocation(line: 868, column: 3, scope: !2047)
!2055 = !DILocation(line: 870, column: 17, scope: !2047)
!2056 = !DILocation(line: 870, column: 37, scope: !2047)
!2057 = !DILocation(line: 870, column: 9, scope: !2047)
!2058 = !DILocation(line: 870, column: 42, scope: !2047)
!2059 = !DILocation(line: 870, column: 2, scope: !2047)
!2060 = !DILocation(line: 0, scope: !2047)
!2061 = !DILocation(line: 871, column: 1, scope: !2047)
!2062 = distinct !DISubprogram(name: "regex_match_middle", scope: !1, file: !1, line: 873, type: !201, scopeLine: 874, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2063 = !DILocation(line: 874, scope: !2062)
!2064 = !DILocation(line: 875, column: 7, scope: !2062)
!2065 = !DILocation(line: 875, column: 6, scope: !2062)
!2066 = !DILocation(line: 876, column: 17, scope: !2062)
!2067 = !DILocation(line: 876, column: 10, scope: !2062)
!2068 = !DILocation(line: 876, column: 3, scope: !2062)
!2069 = !DILocation(line: 878, column: 17, scope: !2062)
!2070 = !DILocation(line: 878, column: 9, scope: !2062)
!2071 = !DILocation(line: 878, column: 2, scope: !2062)
!2072 = !DILocation(line: 0, scope: !2062)
!2073 = !DILocation(line: 879, column: 1, scope: !2062)
!2074 = distinct !DISubprogram(name: "regex_match_end", scope: !1, file: !1, line: 881, type: !201, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2075 = !DILocation(line: 882, scope: !2074)
!2076 = !DILocation(line: 883, column: 19, scope: !2074)
!2077 = !DILocation(line: 885, column: 19, scope: !2074)
!2078 = !DILocation(line: 885, column: 13, scope: !2074)
!2079 = !DILocation(line: 885, column: 23, scope: !2074)
!2080 = !DILocation(line: 886, column: 13, scope: !2074)
!2081 = !DILocation(line: 886, column: 17, scope: !2074)
!2082 = !DILocation(line: 886, column: 26, scope: !2074)
!2083 = !DILocation(line: 886, column: 6, scope: !2074)
!2084 = !DILocation(line: 886, column: 56, scope: !2074)
!2085 = !DILocation(line: 885, column: 6, scope: !2074)
!2086 = !DILocation(line: 887, column: 3, scope: !2074)
!2087 = !DILocation(line: 888, column: 2, scope: !2074)
!2088 = !DILocation(line: 0, scope: !2074)
!2089 = !DILocation(line: 889, column: 1, scope: !2074)
!2090 = distinct !DISubprogram(name: "regex_match_glob", scope: !1, file: !1, line: 891, type: !201, scopeLine: 892, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2091 = !DILocation(line: 892, scope: !2090)
!2092 = !DILocation(line: 893, column: 6, scope: !2090)
!2093 = !DILocation(line: 0, scope: !2090)
!2094 = !DILocation(line: 896, column: 1, scope: !2090)
!2095 = distinct !DISubprogram(name: "filter_pred_64", scope: !1, file: !1, line: 653, type: !201, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2096 = !DILocation(line: 653, scope: !2095)
!2097 = !DILocation(line: 653, column: 1, scope: !2095)
!2098 = distinct !DISubprogram(name: "filter_pred_32", scope: !1, file: !1, line: 654, type: !201, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2099 = !DILocation(line: 654, scope: !2098)
!2100 = !DILocation(line: 654, column: 1, scope: !2098)
!2101 = distinct !DISubprogram(name: "filter_pred_16", scope: !1, file: !1, line: 655, type: !201, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2102 = !DILocation(line: 655, scope: !2101)
!2103 = !DILocation(line: 655, column: 1, scope: !2101)
!2104 = distinct !DISubprogram(name: "filter_pred_8", scope: !1, file: !1, line: 656, type: !201, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2105 = !DILocation(line: 656, scope: !2104)
!2106 = !DILocation(line: 656, column: 1, scope: !2104)
!2107 = distinct !DISubprogram(name: "filter_pred_LE_s64", scope: !1, file: !1, line: 644, type: !201, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2108 = !DILocation(line: 644, scope: !2107)
!2109 = !DILocation(line: 644, column: 1, scope: !2107)
!2110 = distinct !DISubprogram(name: "filter_pred_LT_s64", scope: !1, file: !1, line: 644, type: !201, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2111 = !DILocation(line: 644, scope: !2110)
!2112 = !DILocation(line: 644, column: 1, scope: !2110)
!2113 = distinct !DISubprogram(name: "filter_pred_GE_s64", scope: !1, file: !1, line: 644, type: !201, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2114 = !DILocation(line: 644, scope: !2113)
!2115 = !DILocation(line: 644, column: 1, scope: !2113)
!2116 = distinct !DISubprogram(name: "filter_pred_GT_s64", scope: !1, file: !1, line: 644, type: !201, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2117 = !DILocation(line: 644, scope: !2116)
!2118 = !DILocation(line: 644, column: 1, scope: !2116)
!2119 = distinct !DISubprogram(name: "filter_pred_BAND_s64", scope: !1, file: !1, line: 644, type: !201, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2120 = !DILocation(line: 644, scope: !2119)
!2121 = !DILocation(line: 644, column: 1, scope: !2119)
!2122 = distinct !DISubprogram(name: "filter_pred_LE_u64", scope: !1, file: !1, line: 645, type: !201, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2123 = !DILocation(line: 645, scope: !2122)
!2124 = !DILocation(line: 645, column: 1, scope: !2122)
!2125 = distinct !DISubprogram(name: "filter_pred_LT_u64", scope: !1, file: !1, line: 645, type: !201, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2126 = !DILocation(line: 645, scope: !2125)
!2127 = !DILocation(line: 645, column: 1, scope: !2125)
!2128 = distinct !DISubprogram(name: "filter_pred_GE_u64", scope: !1, file: !1, line: 645, type: !201, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2129 = !DILocation(line: 645, scope: !2128)
!2130 = !DILocation(line: 645, column: 1, scope: !2128)
!2131 = distinct !DISubprogram(name: "filter_pred_GT_u64", scope: !1, file: !1, line: 645, type: !201, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2132 = !DILocation(line: 645, scope: !2131)
!2133 = !DILocation(line: 645, column: 1, scope: !2131)
!2134 = distinct !DISubprogram(name: "filter_pred_BAND_u64", scope: !1, file: !1, line: 645, type: !201, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2135 = !DILocation(line: 645, scope: !2134)
!2136 = !DILocation(line: 645, column: 1, scope: !2134)
!2137 = distinct !DISubprogram(name: "filter_pred_LE_s32", scope: !1, file: !1, line: 646, type: !201, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2138 = !DILocation(line: 646, scope: !2137)
!2139 = !DILocation(line: 646, column: 1, scope: !2137)
!2140 = distinct !DISubprogram(name: "filter_pred_LT_s32", scope: !1, file: !1, line: 646, type: !201, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2141 = !DILocation(line: 646, scope: !2140)
!2142 = !DILocation(line: 646, column: 1, scope: !2140)
!2143 = distinct !DISubprogram(name: "filter_pred_GE_s32", scope: !1, file: !1, line: 646, type: !201, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2144 = !DILocation(line: 646, scope: !2143)
!2145 = !DILocation(line: 646, column: 1, scope: !2143)
!2146 = distinct !DISubprogram(name: "filter_pred_GT_s32", scope: !1, file: !1, line: 646, type: !201, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2147 = !DILocation(line: 646, scope: !2146)
!2148 = !DILocation(line: 646, column: 1, scope: !2146)
!2149 = distinct !DISubprogram(name: "filter_pred_BAND_s32", scope: !1, file: !1, line: 646, type: !201, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2150 = !DILocation(line: 646, scope: !2149)
!2151 = !DILocation(line: 646, column: 1, scope: !2149)
!2152 = distinct !DISubprogram(name: "filter_pred_LE_u32", scope: !1, file: !1, line: 647, type: !201, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2153 = !DILocation(line: 647, scope: !2152)
!2154 = !DILocation(line: 647, column: 1, scope: !2152)
!2155 = distinct !DISubprogram(name: "filter_pred_LT_u32", scope: !1, file: !1, line: 647, type: !201, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2156 = !DILocation(line: 647, scope: !2155)
!2157 = !DILocation(line: 647, column: 1, scope: !2155)
!2158 = distinct !DISubprogram(name: "filter_pred_GE_u32", scope: !1, file: !1, line: 647, type: !201, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2159 = !DILocation(line: 647, scope: !2158)
!2160 = !DILocation(line: 647, column: 1, scope: !2158)
!2161 = distinct !DISubprogram(name: "filter_pred_GT_u32", scope: !1, file: !1, line: 647, type: !201, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2162 = !DILocation(line: 647, scope: !2161)
!2163 = !DILocation(line: 647, column: 1, scope: !2161)
!2164 = distinct !DISubprogram(name: "filter_pred_BAND_u32", scope: !1, file: !1, line: 647, type: !201, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2165 = !DILocation(line: 647, scope: !2164)
!2166 = !DILocation(line: 647, column: 1, scope: !2164)
!2167 = distinct !DISubprogram(name: "filter_pred_LE_s16", scope: !1, file: !1, line: 648, type: !201, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2168 = !DILocation(line: 648, scope: !2167)
!2169 = !DILocation(line: 648, column: 1, scope: !2167)
!2170 = distinct !DISubprogram(name: "filter_pred_LT_s16", scope: !1, file: !1, line: 648, type: !201, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2171 = !DILocation(line: 648, scope: !2170)
!2172 = !DILocation(line: 648, column: 1, scope: !2170)
!2173 = distinct !DISubprogram(name: "filter_pred_GE_s16", scope: !1, file: !1, line: 648, type: !201, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2174 = !DILocation(line: 648, scope: !2173)
!2175 = !DILocation(line: 648, column: 1, scope: !2173)
!2176 = distinct !DISubprogram(name: "filter_pred_GT_s16", scope: !1, file: !1, line: 648, type: !201, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2177 = !DILocation(line: 648, scope: !2176)
!2178 = !DILocation(line: 648, column: 1, scope: !2176)
!2179 = distinct !DISubprogram(name: "filter_pred_BAND_s16", scope: !1, file: !1, line: 648, type: !201, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2180 = !DILocation(line: 648, scope: !2179)
!2181 = !DILocation(line: 648, column: 1, scope: !2179)
!2182 = distinct !DISubprogram(name: "filter_pred_LE_u16", scope: !1, file: !1, line: 649, type: !201, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2183 = !DILocation(line: 649, scope: !2182)
!2184 = !DILocation(line: 649, column: 1, scope: !2182)
!2185 = distinct !DISubprogram(name: "filter_pred_LT_u16", scope: !1, file: !1, line: 649, type: !201, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2186 = !DILocation(line: 649, scope: !2185)
!2187 = !DILocation(line: 649, column: 1, scope: !2185)
!2188 = distinct !DISubprogram(name: "filter_pred_GE_u16", scope: !1, file: !1, line: 649, type: !201, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2189 = !DILocation(line: 649, scope: !2188)
!2190 = !DILocation(line: 649, column: 1, scope: !2188)
!2191 = distinct !DISubprogram(name: "filter_pred_GT_u16", scope: !1, file: !1, line: 649, type: !201, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2192 = !DILocation(line: 649, scope: !2191)
!2193 = !DILocation(line: 649, column: 1, scope: !2191)
!2194 = distinct !DISubprogram(name: "filter_pred_BAND_u16", scope: !1, file: !1, line: 649, type: !201, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2195 = !DILocation(line: 649, scope: !2194)
!2196 = !DILocation(line: 649, column: 1, scope: !2194)
!2197 = distinct !DISubprogram(name: "filter_pred_LE_s8", scope: !1, file: !1, line: 650, type: !201, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2198 = !DILocation(line: 650, scope: !2197)
!2199 = !DILocation(line: 650, column: 1, scope: !2197)
!2200 = distinct !DISubprogram(name: "filter_pred_LT_s8", scope: !1, file: !1, line: 650, type: !201, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2201 = !DILocation(line: 650, scope: !2200)
!2202 = !DILocation(line: 650, column: 1, scope: !2200)
!2203 = distinct !DISubprogram(name: "filter_pred_GE_s8", scope: !1, file: !1, line: 650, type: !201, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2204 = !DILocation(line: 650, scope: !2203)
!2205 = !DILocation(line: 650, column: 1, scope: !2203)
!2206 = distinct !DISubprogram(name: "filter_pred_GT_s8", scope: !1, file: !1, line: 650, type: !201, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2207 = !DILocation(line: 650, scope: !2206)
!2208 = !DILocation(line: 650, column: 1, scope: !2206)
!2209 = distinct !DISubprogram(name: "filter_pred_BAND_s8", scope: !1, file: !1, line: 650, type: !201, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2210 = !DILocation(line: 650, scope: !2209)
!2211 = !DILocation(line: 650, column: 1, scope: !2209)
!2212 = distinct !DISubprogram(name: "filter_pred_LE_u8", scope: !1, file: !1, line: 651, type: !201, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2213 = !DILocation(line: 651, scope: !2212)
!2214 = !DILocation(line: 651, column: 1, scope: !2212)
!2215 = distinct !DISubprogram(name: "filter_pred_LT_u8", scope: !1, file: !1, line: 651, type: !201, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2216 = !DILocation(line: 651, scope: !2215)
!2217 = !DILocation(line: 651, column: 1, scope: !2215)
!2218 = distinct !DISubprogram(name: "filter_pred_GE_u8", scope: !1, file: !1, line: 651, type: !201, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2219 = !DILocation(line: 651, scope: !2218)
!2220 = !DILocation(line: 651, column: 1, scope: !2218)
!2221 = distinct !DISubprogram(name: "filter_pred_GT_u8", scope: !1, file: !1, line: 651, type: !201, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2222 = !DILocation(line: 651, scope: !2221)
!2223 = !DILocation(line: 651, column: 1, scope: !2221)
!2224 = distinct !DISubprogram(name: "filter_pred_BAND_u8", scope: !1, file: !1, line: 651, type: !201, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2225 = !DILocation(line: 651, scope: !2224)
!2226 = !DILocation(line: 651, column: 1, scope: !2224)
!2227 = distinct !DISubprogram(name: "trace_raw_output_ftrace_test_filter", scope: !900, file: !900, line: 10, type: !201, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2228 = !DILocation(line: 10, scope: !2227)
!2229 = !DILocation(line: 10, column: 1, scope: !2227)
!2230 = distinct !DISubprogram(name: "test_pred_visited_fn", scope: !1, file: !1, line: 2280, type: !201, scopeLine: 2281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!2231 = !DILocation(line: 2281, scope: !2230)
!2232 = !DILocation(line: 2282, column: 43, scope: !2230)
!2233 = !DILocation(line: 2284, column: 20, scope: !2230)
!2234 = !DILocation(line: 2285, column: 2, scope: !2230)
!2235 = !DILocation(line: 2286, column: 2, scope: !2230)
