; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_preemptirq.c_pt.bc'
source_filename = "../kernel/trace/trace_preemptirq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+trace_hardirqs_on_prepare\22, \22a\22\09"
module asm "\09.weak\09__crc_trace_hardirqs_on_prepare\09\09\09\09"
module asm "\09.long\09__crc_trace_hardirqs_on_prepare\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_hardirqs_on_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_hardirqs_on_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_trace_hardirqs_on_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+trace_hardirqs_on\22, \22a\22\09"
module asm "\09.weak\09__crc_trace_hardirqs_on\09\09\09\09"
module asm "\09.long\09__crc_trace_hardirqs_on\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_hardirqs_on:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_hardirqs_on\22\09\09\09\09\09"
module asm "__kstrtabns_trace_hardirqs_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+trace_hardirqs_off_finish\22, \22a\22\09"
module asm "\09.weak\09__crc_trace_hardirqs_off_finish\09\09\09\09"
module asm "\09.long\09__crc_trace_hardirqs_off_finish\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_hardirqs_off_finish:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_hardirqs_off_finish\22\09\09\09\09\09"
module asm "__kstrtabns_trace_hardirqs_off_finish:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+trace_hardirqs_off\22, \22a\22\09"
module asm "\09.weak\09__crc_trace_hardirqs_off\09\09\09\09"
module asm "\09.long\09__crc_trace_hardirqs_off\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_hardirqs_off:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_hardirqs_off\22\09\09\09\09\09"
module asm "__kstrtabns_trace_hardirqs_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+trace_hardirqs_on_caller\22, \22a\22\09"
module asm "\09.weak\09__crc_trace_hardirqs_on_caller\09\09\09\09"
module asm "\09.long\09__crc_trace_hardirqs_on_caller\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_hardirqs_on_caller:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_hardirqs_on_caller\22\09\09\09\09\09"
module asm "__kstrtabns_trace_hardirqs_on_caller:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+trace_hardirqs_off_caller\22, \22a\22\09"
module asm "\09.weak\09__crc_trace_hardirqs_off_caller\09\09\09\09"
module asm "\09.long\09__crc_trace_hardirqs_off_caller\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_hardirqs_off_caller:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_hardirqs_off_caller\22\09\09\09\09\09"
module asm "__kstrtabns_trace_hardirqs_off_caller:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.1, %struct.trace_event, ptr, ptr, %union.anon.98, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.1 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.98 = type { ptr }
%union.anon.99 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.100 = type { %struct.bpf_raw_event_map }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_preemptirq_template = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_irq_disable = internal constant [12 x i8] c"irq_disable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irq_disable = dso_local global %struct.static_call_key { ptr @__traceiter_irq_disable }, align 4
@__tracepoint_irq_disable = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irq_disable, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irq_disable, ptr null, ptr @__traceiter_irq_disable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irq_disable = internal constant ptr @__tracepoint_irq_disable, section "__tracepoints_ptrs", align 4
@__tpstrtab_irq_enable = internal constant [11 x i8] c"irq_enable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irq_enable = dso_local global %struct.static_call_key { ptr @__traceiter_irq_enable }, align 4
@__tracepoint_irq_enable = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irq_enable, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irq_enable, ptr null, ptr @__traceiter_irq_enable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irq_enable = internal constant ptr @__tracepoint_irq_enable, section "__tracepoints_ptrs", align 4
@str__preemptirq__trace_system_name = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"preemptirq\00", [21 x i8] zeroinitializer }, align 32
@trace_event_fields_preemptirq_template = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.2, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_preemptirq_template = internal global %struct.trace_event_class { ptr @str__preemptirq__trace_system_name, ptr @trace_event_raw_event_preemptirq_template, ptr @perf_trace_preemptirq_template, ptr @trace_event_reg, ptr @trace_event_fields_preemptirq_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_preemptirq_template, i64 24), ptr getelementptr (i8, ptr @event_class_preemptirq_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_preemptirq_template = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_preemptirq_template, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_preemptirq_template = internal global { [132 x i8], [60 x i8] } { [132 x i8] c"\22caller=%pS parent=%pS\22, (void *)((unsigned long)(_stext) + REC->caller_offs), (void *)((unsigned long)(_stext) + REC->parent_offs)\00", [60 x i8] zeroinitializer }, align 32
@event_irq_disable = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_preemptirq_template, %union.anon.1 { ptr @__tracepoint_irq_disable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_preemptirq_template }, ptr @print_fmt_preemptirq_template, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irq_disable = internal global ptr @event_irq_disable, section "_ftrace_events", align 4
@event_irq_enable = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_preemptirq_template, %union.anon.1 { ptr @__tracepoint_irq_enable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_preemptirq_template }, ptr @print_fmt_preemptirq_template, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irq_enable = internal global ptr @event_irq_enable, section "_ftrace_events", align 4
@__bpf_trace_tp_map_irq_disable = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_irq_disable, ptr @__bpf_trace_preemptirq_template, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irq_enable = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_irq_enable, ptr @__bpf_trace_preemptirq_template, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@tracing_irq_cpu = weak dso_local global i32 0, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_trace_hardirqs_on_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_hardirqs_on_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_hardirqs_on_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_hardirqs_on_prepare to i32), ptr @__kstrtab_trace_hardirqs_on_prepare, ptr @__kstrtabns_trace_hardirqs_on_prepare }, section "___ksymtab+trace_hardirqs_on_prepare", align 4
@_kbl_addr_trace_hardirqs_on_prepare = internal global i32 ptrtoint (ptr @trace_hardirqs_on_prepare to i32), section "_kprobe_blacklist", align 4
@__kstrtab_trace_hardirqs_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_hardirqs_on = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_hardirqs_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_hardirqs_on to i32), ptr @__kstrtab_trace_hardirqs_on, ptr @__kstrtabns_trace_hardirqs_on }, section "___ksymtab+trace_hardirqs_on", align 4
@_kbl_addr_trace_hardirqs_on = internal global i32 ptrtoint (ptr @trace_hardirqs_on to i32), section "_kprobe_blacklist", align 4
@__kstrtab_trace_hardirqs_off_finish = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_hardirqs_off_finish = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_hardirqs_off_finish = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_hardirqs_off_finish to i32), ptr @__kstrtab_trace_hardirqs_off_finish, ptr @__kstrtabns_trace_hardirqs_off_finish }, section "___ksymtab+trace_hardirqs_off_finish", align 4
@_kbl_addr_trace_hardirqs_off_finish = internal global i32 ptrtoint (ptr @trace_hardirqs_off_finish to i32), section "_kprobe_blacklist", align 4
@__kstrtab_trace_hardirqs_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_hardirqs_off = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_hardirqs_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_hardirqs_off to i32), ptr @__kstrtab_trace_hardirqs_off, ptr @__kstrtabns_trace_hardirqs_off }, section "___ksymtab+trace_hardirqs_off", align 4
@_kbl_addr_trace_hardirqs_off = internal global i32 ptrtoint (ptr @trace_hardirqs_off to i32), section "_kprobe_blacklist", align 4
@__kstrtab_trace_hardirqs_on_caller = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_hardirqs_on_caller = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_hardirqs_on_caller = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_hardirqs_on_caller to i32), ptr @__kstrtab_trace_hardirqs_on_caller, ptr @__kstrtabns_trace_hardirqs_on_caller }, section "___ksymtab+trace_hardirqs_on_caller", align 4
@_kbl_addr_trace_hardirqs_on_caller = internal global i32 ptrtoint (ptr @trace_hardirqs_on_caller to i32), section "_kprobe_blacklist", align 4
@__kstrtab_trace_hardirqs_off_caller = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_hardirqs_off_caller = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_hardirqs_off_caller = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_hardirqs_off_caller to i32), ptr @__kstrtab_trace_hardirqs_off_caller, ptr @__kstrtabns_trace_hardirqs_off_caller }, section "___ksymtab+trace_hardirqs_off_caller", align 4
@_kbl_addr_trace_hardirqs_off_caller = internal global i32 ptrtoint (ptr @trace_hardirqs_off_caller to i32), section "_kprobe_blacklist", align 4
@__pcpu_unique_tracing_irq_cpu = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@_stext = external dso_local global [0 x i8], align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s32\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"caller_offs\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"parent_offs\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"caller=%pS parent=%pS\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"include/trace/events/preemptirq.h\00", [62 x i8] zeroinitializer }, align 32
@trace_irq_enable.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_irq_enable_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@trace_irq_disable.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_irq_disable_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__llvm_gcov_ctr = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.7 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.8 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.9 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.10 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.11 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.12 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.13 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.14 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.15 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.16 = internal global [12 x i64] zeroinitializer
@__llvm_gcov_ctr.17 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.22 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.23 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.24 = internal global [12 x i64] zeroinitializer
@__llvm_gcov_ctr.25 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.26 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.27 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.28 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.29 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.30 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.31 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.32 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.33 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.34 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.35 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.36 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.37 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.38 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.39 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.40 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.41 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.42 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.43 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.44 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.45 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.46 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.47 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.48 = internal global [1 x i64] zeroinitializer
@0 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_preemptirq.gcda\00", [60 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [43 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 243579132, i32 -1843488436 }, %emit_function_args_ty { i32 1, i32 -1997550070, i32 -1843488436 }, %emit_function_args_ty { i32 2, i32 1096750447, i32 -1843488436 }, %emit_function_args_ty { i32 3, i32 1919399824, i32 -1843488436 }, %emit_function_args_ty { i32 4, i32 -1022308249, i32 -1843488436 }, %emit_function_args_ty { i32 5, i32 1882122577, i32 -1843488436 }, %emit_function_args_ty { i32 6, i32 -1567486560, i32 -1843488436 }, %emit_function_args_ty { i32 7, i32 288547376, i32 -1843488436 }, %emit_function_args_ty { i32 8, i32 1333844298, i32 -1843488436 }, %emit_function_args_ty { i32 9, i32 -1543658690, i32 -1843488436 }, %emit_function_args_ty { i32 10, i32 -1987980596, i32 -1843488436 }, %emit_function_args_ty { i32 11, i32 -932836547, i32 -1843488436 }, %emit_function_args_ty { i32 12, i32 1403380823, i32 -1843488436 }, %emit_function_args_ty { i32 13, i32 -743251458, i32 -1843488436 }, %emit_function_args_ty { i32 14, i32 -1208743970, i32 -1843488436 }, %emit_function_args_ty { i32 15, i32 -1045764165, i32 -1843488436 }, %emit_function_args_ty { i32 16, i32 -840725909, i32 -1843488436 }, %emit_function_args_ty { i32 17, i32 -1964668393, i32 -1843488436 }, %emit_function_args_ty { i32 18, i32 658646548, i32 -1843488436 }, %emit_function_args_ty { i32 19, i32 -15308951, i32 -1843488436 }, %emit_function_args_ty { i32 20, i32 -1266536928, i32 -1843488436 }, %emit_function_args_ty { i32 21, i32 -1720927441, i32 -1843488436 }, %emit_function_args_ty { i32 22, i32 72304356, i32 -1843488436 }, %emit_function_args_ty { i32 23, i32 858041679, i32 -1843488436 }, %emit_function_args_ty { i32 24, i32 -1803766960, i32 -1843488436 }, %emit_function_args_ty { i32 25, i32 -533336360, i32 -1843488436 }, %emit_function_args_ty { i32 26, i32 1710487500, i32 -1843488436 }, %emit_function_args_ty { i32 27, i32 -584910999, i32 -1843488436 }, %emit_function_args_ty { i32 28, i32 -31780534, i32 -1843488436 }, %emit_function_args_ty { i32 29, i32 -1111025999, i32 -1843488436 }, %emit_function_args_ty { i32 30, i32 1122552177, i32 -1843488436 }, %emit_function_args_ty { i32 31, i32 -1156383717, i32 -1843488436 }, %emit_function_args_ty { i32 32, i32 -1501263062, i32 -1843488436 }, %emit_function_args_ty { i32 33, i32 -1057468278, i32 -1843488436 }, %emit_function_args_ty { i32 34, i32 -570621114, i32 -1843488436 }, %emit_function_args_ty { i32 35, i32 -2043375099, i32 -1843488436 }, %emit_function_args_ty { i32 36, i32 491662117, i32 -1843488436 }, %emit_function_args_ty { i32 37, i32 -601403593, i32 -1843488436 }, %emit_function_args_ty { i32 38, i32 -1247584631, i32 -1843488436 }, %emit_function_args_ty { i32 39, i32 81157262, i32 -1843488436 }, %emit_function_args_ty { i32 40, i32 835031753, i32 -1843488436 }, %emit_function_args_ty { i32 41, i32 -1035986176, i32 -1843488436 }, %emit_function_args_ty { i32 42, i32 -724539043, i32 -1843488436 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [43 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.7 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.8 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.9 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.10 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.11 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.12 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.13 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.14 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.15 }, %emit_arcs_args_ty { i32 12, ptr @__llvm_gcov_ctr.16 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.17 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.18 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.19 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.20 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.21 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.22 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.23 }, %emit_arcs_args_ty { i32 12, ptr @__llvm_gcov_ctr.24 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.25 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.26 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.27 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.28 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.29 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.30 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.31 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.32 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.33 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.34 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.35 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.36 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.37 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.38 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.39 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.40 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.41 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.42 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.43 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.44 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.45 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.46 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.47 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.48 }]
@___asan_gen_ = private constant [35 x i8] c"../kernel/trace/trace_preemptirq.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [35 x i8] c"str__preemptirq__trace_system_name\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 36, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant [39 x i8] c"trace_event_fields_preemptirq_template\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_preemptirq_template\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [30 x i8] c"print_fmt_preemptirq_template\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"event_irq_disable\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 36, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"event_irq_enable\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 14, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant [37 x i8] c"../include/trace/events/preemptirq.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 40, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 108, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [34 x ptr] [ptr @__bpf_trace_tp_map_irq_disable, ptr @__bpf_trace_tp_map_irq_enable, ptr @__event_irq_disable, ptr @__event_irq_enable, ptr @__ksymtab_trace_hardirqs_off, ptr @__ksymtab_trace_hardirqs_off_caller, ptr @__ksymtab_trace_hardirqs_off_finish, ptr @__ksymtab_trace_hardirqs_on, ptr @__ksymtab_trace_hardirqs_on_caller, ptr @__ksymtab_trace_hardirqs_on_prepare, ptr @__tracepoint_irq_disable, ptr @__tracepoint_irq_enable, ptr @__tracepoint_ptr_irq_disable, ptr @__tracepoint_ptr_irq_enable, ptr @_kbl_addr_trace_hardirqs_off, ptr @_kbl_addr_trace_hardirqs_off_caller, ptr @_kbl_addr_trace_hardirqs_off_finish, ptr @_kbl_addr_trace_hardirqs_on, ptr @_kbl_addr_trace_hardirqs_on_caller, ptr @_kbl_addr_trace_hardirqs_on_prepare, ptr @event_class_preemptirq_template, ptr @event_irq_disable, ptr @event_irq_enable, ptr @str__preemptirq__trace_system_name, ptr @trace_event_fields_preemptirq_template, ptr @trace_event_type_funcs_preemptirq_template, ptr @print_fmt_preemptirq_template, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@1 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__preemptirq__trace_system_name to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_preemptirq_template to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_preemptirq_template to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_preemptirq_template to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irq_disable to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irq_enable to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_irq_disable(ptr nocapture readnone %__data, i32 noundef %ip, i32 noundef %parent_ip) #0 align 64 !dbg !78 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !82
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 16, !dbg !83
  %0 = add i64 %gcov_ctr, 1, !dbg !83
  store i64 %0, ptr @__llvm_gcov_ctr, align 16, !dbg !83
  %1 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irq_disable, i32 0, i32 7), align 4, !dbg !83
  %tobool.not = icmp eq ptr %1, null, !dbg !83
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge, !dbg !83

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2, !dbg !83

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !83
  br label %if.end, !dbg !83

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %1, %entry.do.body2_crit_edge ], !dbg !83
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !83
  %2 = add i64 %gcov_ctr11, 1, !dbg !83
  store i64 %2, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !83
  %3 = ptrtoint ptr %it_func_ptr.0 to i32, !dbg !83
  call void @__asan_load4_noabort(i32 %3), !dbg !83
  %4 = load volatile ptr, ptr %it_func_ptr.0, align 4, !dbg !83
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1, !dbg !83
  %5 = ptrtoint ptr %data to i32, !dbg !83
  call void @__asan_load4_noabort(i32 %5), !dbg !83
  %6 = load ptr, ptr %data, align 4, !dbg !83
  tail call void %4(ptr noundef %6, i32 noundef %ip, i32 noundef %parent_ip) #11, !dbg !83
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1, !dbg !83
  %7 = ptrtoint ptr %incdec.ptr to i32, !dbg !83
  call void @__asan_load4_noabort(i32 %7), !dbg !83
  %8 = load ptr, ptr %incdec.ptr, align 4, !dbg !83
  %tobool9.not = icmp eq ptr %8, null, !dbg !83
  br i1 %tobool9.not, label %do.end10, label %do.body2.do.body2_crit_edge, !dbg !83, !llvm.loop !84

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10, !dbg !83
  br label %do.body2, !dbg !83

do.end10:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10, !dbg !83
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !83
  %9 = add i64 %gcov_ctr12, 1, !dbg !83
  store i64 %9, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !83
  br label %if.end, !dbg !83

if.end:                                           ; preds = %do.end10, %entry.if.end_crit_edge
  ret i32 0, !dbg !83
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_irq_enable(ptr nocapture readnone %__data, i32 noundef %ip, i32 noundef %parent_ip) #0 align 64 !dbg !85 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !86
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.7, align 16, !dbg !87
  %0 = add i64 %gcov_ctr, 1, !dbg !87
  store i64 %0, ptr @__llvm_gcov_ctr.7, align 16, !dbg !87
  %1 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irq_enable, i32 0, i32 7), align 4, !dbg !87
  %tobool.not = icmp eq ptr %1, null, !dbg !87
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge, !dbg !87

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2, !dbg !87

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !87
  br label %if.end, !dbg !87

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %1, %entry.do.body2_crit_edge ], !dbg !87
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 1), align 8, !dbg !87
  %2 = add i64 %gcov_ctr11, 1, !dbg !87
  store i64 %2, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 1), align 8, !dbg !87
  %3 = ptrtoint ptr %it_func_ptr.0 to i32, !dbg !87
  call void @__asan_load4_noabort(i32 %3), !dbg !87
  %4 = load volatile ptr, ptr %it_func_ptr.0, align 4, !dbg !87
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1, !dbg !87
  %5 = ptrtoint ptr %data to i32, !dbg !87
  call void @__asan_load4_noabort(i32 %5), !dbg !87
  %6 = load ptr, ptr %data, align 4, !dbg !87
  tail call void %4(ptr noundef %6, i32 noundef %ip, i32 noundef %parent_ip) #11, !dbg !87
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1, !dbg !87
  %7 = ptrtoint ptr %incdec.ptr to i32, !dbg !87
  call void @__asan_load4_noabort(i32 %7), !dbg !87
  %8 = load ptr, ptr %incdec.ptr, align 4, !dbg !87
  %tobool9.not = icmp eq ptr %8, null, !dbg !87
  br i1 %tobool9.not, label %do.end10, label %do.body2.do.body2_crit_edge, !dbg !87, !llvm.loop !88

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10, !dbg !87
  br label %do.body2, !dbg !87

do.end10:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10, !dbg !87
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 2), align 16, !dbg !87
  %9 = add i64 %gcov_ctr12, 1, !dbg !87
  store i64 %9, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 2), align 16, !dbg !87
  br label %if.end, !dbg !87

if.end:                                           ; preds = %do.end10, %entry.if.end_crit_edge
  ret i32 0, !dbg !87
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_preemptirq_template(ptr noundef %__data, i32 noundef %ip, i32 noundef %parent_ip) #0 align 64 !dbg !89 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10, !dbg !90
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11, !dbg !91
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7, !dbg !92
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24), !dbg !91
  %1 = ptrtoint ptr %flags.i to i32, !dbg !92
  call void @__asan_load4_noabort(i32 %1), !dbg !92
  %2 = load i32, ptr %flags.i, align 4, !dbg !92
  %and.i = and i32 %2, 704, !dbg !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !96
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !96
  br i1 %tobool.not.i, label %entry.if.end.sink.split_crit_edge, label %if.end.i, !dbg !96, !prof !97

entry.if.end.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !96
  br label %if.end.sink.split, !dbg !96

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256, !dbg !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i), !dbg !98
  %tobool5.not.i = icmp eq i32 %and4.i, 0, !dbg !98
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end.sink.split_crit_edge, !dbg !98, !prof !99

if.end.i.if.end.sink.split_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !98
  br label %if.end.sink.split, !dbg !98

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %gcov_ctr14.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 1), align 8, !dbg !100
  %3 = add i64 %gcov_ctr14.i, 1, !dbg !100
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 1), align 8, !dbg !100
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11, !dbg !101
  br i1 %call.i, label %if.then, label %trace_trigger_soft_disabled.exit.if.end_crit_edge, !dbg !91

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10, !dbg !91
  br label %if.end, !dbg !91

if.then:                                          ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10, !dbg !102
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.8, align 16
  %4 = add i64 %gcov_ctr, 1
  store i64 %4, ptr @__llvm_gcov_ctr.8, align 16
  br label %cleanup, !dbg !91

if.end.sink.split:                                ; preds = %if.end.i.if.end.sink.split_crit_edge, %entry.if.end.sink.split_crit_edge
  %.sink = phi ptr [ @__llvm_gcov_ctr.29, %entry.if.end.sink.split_crit_edge ], [ getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 2), %if.end.i.if.end.sink.split_crit_edge ]
  %5 = ptrtoint ptr %.sink to i32, !dbg !103
  call void @__asan_load8_noabort(i32 %5), !dbg !103
  %gcov_ctr15.i = load i64, ptr %.sink, align 16, !dbg !103
  %6 = add i64 %gcov_ctr15.i, 1, !dbg !103
  store i64 %6, ptr %.sink, align 16, !dbg !103
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %trace_trigger_soft_disabled.exit.if.end_crit_edge
  %gcov_ctr.i19 = load i64, ptr @__llvm_gcov_ctr.30, align 8
  %7 = add i64 %gcov_ctr.i19, 1
  store i64 %7, ptr @__llvm_gcov_ctr.30, align 8
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #11, !dbg !91
  %tobool.not = icmp eq ptr %call3, null, !dbg !91
  br i1 %tobool.not, label %if.then4, label %if.end5, !dbg !91

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10, !dbg !102
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 1), align 8
  %8 = add i64 %gcov_ctr11, 1
  store i64 %8, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 1), align 8
  br label %cleanup, !dbg !91

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10, !dbg !91
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 2), align 16, !dbg !91
  %9 = add i64 %gcov_ctr12, 1, !dbg !91
  store i64 %9, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 2), align 16, !dbg !91
  %sub = sub i32 %ip, ptrtoint (ptr @_stext to i32), !dbg !91
  %caller_offs = getelementptr inbounds %struct.trace_event_raw_preemptirq_template, ptr %call3, i32 0, i32 1, !dbg !91
  %10 = ptrtoint ptr %caller_offs to i32, !dbg !91
  call void @__asan_store4_noabort(i32 %10), !dbg !91
  store i32 %sub, ptr %caller_offs, align 4, !dbg !91
  %sub6 = sub i32 %parent_ip, ptrtoint (ptr @_stext to i32), !dbg !91
  %parent_offs = getelementptr inbounds %struct.trace_event_raw_preemptirq_template, ptr %call3, i32 0, i32 2, !dbg !91
  %11 = ptrtoint ptr %parent_offs to i32, !dbg !91
  call void @__asan_store4_noabort(i32 %11), !dbg !91
  store i32 %sub6, ptr %parent_offs, align 4, !dbg !91
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11, !dbg !91
  br label %cleanup, !dbg !91

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11, !dbg !91
  ret void, !dbg !91
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_preemptirq_template(ptr noundef %__data, i32 noundef %ip, i32 noundef %parent_ip) #0 align 64 !dbg !104 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10, !dbg !105
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11, !dbg !106
  %0 = ptrtoint ptr %__regs to i32, !dbg !106
  call void @__asan_store4_noabort(i32 %0), !dbg !106
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !dbg !106, !annotation !107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11, !dbg !106
  %1 = ptrtoint ptr %rctx to i32, !dbg !106
  call void @__asan_store4_noabort(i32 %1), !dbg !106
  store i32 -1, ptr %rctx, align 4, !dbg !106, !annotation !107
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.30, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.30, align 8
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10, !dbg !106
  %3 = ptrtoint ptr %perf_events to i32, !dbg !106
  call void @__asan_load4_noabort(i32 %3), !dbg !106
  %4 = load ptr, ptr %perf_events, align 4, !dbg !106
  %5 = ptrtoint ptr %4 to i32, !dbg !106
  %gcov_ctr.i46 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !108
  %6 = add i64 %gcov_ctr.i46, 1, !dbg !108
  store i64 %6, ptr @__llvm_gcov_ctr.13, align 8, !dbg !108
  %7 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !108
  %and.i = and i32 %7, -16384, !dbg !112
  %8 = inttoptr i32 %and.i to ptr, !dbg !113
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3, !dbg !106
  %9 = ptrtoint ptr %cpu to i32, !dbg !106
  call void @__asan_load4_noabort(i32 %9), !dbg !106
  %10 = load i32, ptr %cpu, align 4, !dbg !106
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10, !dbg !106
  %11 = ptrtoint ptr %arrayidx to i32, !dbg !106
  call void @__asan_load4_noabort(i32 %11), !dbg !106
  %12 = load i32, ptr %arrayidx, align 4, !dbg !106
  %add = add i32 %12, %5, !dbg !106
  %13 = inttoptr i32 %add to ptr, !dbg !106
  %gcov_ctr.i47 = load i64, ptr @__llvm_gcov_ctr.32, align 8
  %14 = add i64 %gcov_ctr.i47, 1
  store i64 %14, ptr @__llvm_gcov_ctr.32, align 8
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11, !dbg !114
  %15 = ptrtoint ptr %prog_array.i to i32, !dbg !114
  call void @__asan_load4_noabort(i32 %15), !dbg !114
  %16 = load volatile ptr, ptr %prog_array.i, align 4, !dbg !114
  %tobool.i.not = icmp eq ptr %16, null, !dbg !117
  br i1 %tobool.i.not, label %land.lhs.true, label %entry.if.end_crit_edge, !dbg !106

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !106
  br label %if.end, !dbg !106

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.9, align 16, !dbg !106
  %17 = add i64 %gcov_ctr, 1, !dbg !106
  store i64 %17, ptr @__llvm_gcov_ctr.9, align 16, !dbg !106
  %gcov_ctr28 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 1), align 8, !dbg !106
  %18 = add i64 %gcov_ctr28, 1, !dbg !106
  store i64 %18, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 1), align 8, !dbg !106
  %gcov_ctr29 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 2), align 16, !dbg !106
  %19 = add i64 %gcov_ctr29, 1, !dbg !106
  store i64 %19, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 2), align 16, !dbg !106
  %gcov_ctr.i48 = load i64, ptr @__llvm_gcov_ctr.33, align 8
  %20 = add i64 %gcov_ctr.i48, 1
  store i64 %20, ptr @__llvm_gcov_ctr.33, align 8
  %21 = ptrtoint ptr %13 to i32, !dbg !118
  call void @__asan_load4_noabort(i32 %21), !dbg !118
  %22 = load volatile ptr, ptr %13, align 4, !dbg !118
  %tobool.not.i.not = icmp eq ptr %22, null, !dbg !122
  br i1 %tobool.not.i.not, label %if.then, label %land.lhs.true.if.end_crit_edge, !dbg !106

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10, !dbg !106
  br label %if.end, !dbg !106

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10, !dbg !123
  %gcov_ctr30 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 3), align 8
  %23 = add i64 %gcov_ctr30, 1
  store i64 %23, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 3), align 8
  br label %cleanup, !dbg !106

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11, !dbg !106
  %tobool14.not = icmp eq ptr %call13, null, !dbg !106
  br i1 %tobool14.not, label %if.then15, label %if.end16, !dbg !106

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10, !dbg !123
  %gcov_ctr31 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 4), align 16
  %24 = add i64 %gcov_ctr31, 1
  store i64 %24, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 4), align 16
  br label %cleanup, !dbg !106

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10, !dbg !106
  %gcov_ctr32 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 5), align 8, !dbg !106
  %25 = add i64 %gcov_ctr32, 1, !dbg !106
  store i64 %25, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 5), align 8, !dbg !106
  %26 = ptrtoint ptr %__regs to i32, !dbg !106
  call void @__asan_load4_noabort(i32 %26), !dbg !106
  %27 = load ptr, ptr %__regs, align 4, !dbg !106
  %gcov_ctr.i49 = load i64, ptr @__llvm_gcov_ctr.34, align 8
  %28 = add i64 %gcov_ctr.i49, 1
  store i64 %28, ptr @__llvm_gcov_ctr.34, align 8
  %29 = call ptr @llvm.returnaddress(i32 0) #11, !dbg !124
  %30 = ptrtoint ptr %29 to i32, !dbg !124
  %arrayidx.i = getelementptr [18 x i32], ptr %27, i32 0, i32 15, !dbg !124
  %31 = ptrtoint ptr %arrayidx.i to i32, !dbg !124
  call void @__asan_store4_noabort(i32 %31), !dbg !124
  store i32 %30, ptr %arrayidx.i, align 4, !dbg !124
  %32 = call ptr @llvm.frameaddress.p0(i32 0) #11, !dbg !124
  %33 = ptrtoint ptr %32 to i32, !dbg !124
  %arrayidx2.i = getelementptr [18 x i32], ptr %27, i32 0, i32 11, !dbg !124
  %34 = ptrtoint ptr %arrayidx2.i to i32, !dbg !124
  call void @__asan_store4_noabort(i32 %34), !dbg !124
  store i32 %33, ptr %arrayidx2.i, align 4, !dbg !124
  %35 = call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !124
  %arrayidx4.i = getelementptr [18 x i32], ptr %27, i32 0, i32 13, !dbg !124
  %36 = ptrtoint ptr %arrayidx4.i to i32, !dbg !124
  call void @__asan_store4_noabort(i32 %36), !dbg !124
  store i32 %35, ptr %arrayidx4.i, align 4, !dbg !124
  %arrayidx6.i = getelementptr [18 x i32], ptr %27, i32 0, i32 16, !dbg !124
  %37 = ptrtoint ptr %arrayidx6.i to i32, !dbg !124
  call void @__asan_store4_noabort(i32 %37), !dbg !124
  store i32 19, ptr %arrayidx6.i, align 4, !dbg !124
  %sub17 = sub i32 %ip, ptrtoint (ptr @_stext to i32), !dbg !106
  %caller_offs = getelementptr inbounds %struct.trace_event_raw_preemptirq_template, ptr %call13, i32 0, i32 1, !dbg !106
  %38 = ptrtoint ptr %caller_offs to i32, !dbg !106
  call void @__asan_store4_noabort(i32 %38), !dbg !106
  store i32 %sub17, ptr %caller_offs, align 4, !dbg !106
  %sub18 = sub i32 %parent_ip, ptrtoint (ptr @_stext to i32), !dbg !106
  %parent_offs = getelementptr inbounds %struct.trace_event_raw_preemptirq_template, ptr %call13, i32 0, i32 2, !dbg !106
  %39 = ptrtoint ptr %parent_offs to i32, !dbg !106
  call void @__asan_store4_noabort(i32 %39), !dbg !106
  store i32 %sub18, ptr %parent_offs, align 4, !dbg !106
  %40 = ptrtoint ptr %rctx to i32, !dbg !106
  call void @__asan_load4_noabort(i32 %40), !dbg !106
  %41 = load i32, ptr %rctx, align 4, !dbg !106
  %42 = ptrtoint ptr %__regs to i32, !dbg !106
  call void @__asan_load4_noabort(i32 %42), !dbg !106
  %43 = load ptr, ptr %__regs, align 4, !dbg !106
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %41, ptr noundef %__data, i64 noundef 1, ptr noundef %43, ptr noundef %13, ptr noundef null) #11, !dbg !106
  br label %cleanup, !dbg !106

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11, !dbg !106
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11, !dbg !106
  ret void, !dbg !106
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_preemptirq_template(ptr noundef %__data, i32 noundef %ip, i32 noundef %parent_ip) #0 align 64 !dbg !128 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !129
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.10, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.10, align 8
  %conv = zext i32 %ip to i64, !dbg !130
  %conv4 = zext i32 %parent_ip to i64, !dbg !130
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #11, !dbg !130
  ret void, !dbg !130
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trace_hardirqs_on_prepare() #0 align 64 !dbg !131 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !132
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.12, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.12, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !133
  %1 = add i64 %gcov_ctr.i.i, 1, !dbg !133
  store i64 %1, ptr @__llvm_gcov_ctr.35, align 8, !dbg !133
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !139
  %2 = add i64 %gcov_ctr.i.i.i, 1, !dbg !139
  store i64 %2, ptr @__llvm_gcov_ctr.13, align 8, !dbg !139
  %3 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !139
  %and.i.i.i = and i32 %3, -16384, !dbg !141
  %4 = inttoptr i32 %and.i.i.i to ptr, !dbg !142
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1, !dbg !143
  %5 = ptrtoint ptr %preempt_count.i.i to i32, !dbg !144
  call void @__asan_load4_noabort(i32 %5), !dbg !144
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4, !dbg !144
  %add.i = add i32 %6, 1, !dbg !144
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4, !dbg !144
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !145, !srcloc !146
  %gcov_ctr.i82 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !147
  %7 = add i64 %gcov_ctr.i82, 1, !dbg !147
  store i64 %7, ptr @__llvm_gcov_ctr.13, align 8, !dbg !147
  %8 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !147
  %and.i = and i32 %8, -16384, !dbg !149
  %9 = inttoptr i32 %and.i to ptr, !dbg !150
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3, !dbg !145
  %10 = ptrtoint ptr %cpu to i32, !dbg !145
  call void @__asan_load4_noabort(i32 %10), !dbg !145
  %11 = load i32, ptr %cpu, align 4, !dbg !145
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11, !dbg !145
  %12 = ptrtoint ptr %arrayidx to i32, !dbg !145
  call void @__asan_load4_noabort(i32 %12), !dbg !145
  %13 = load i32, ptr %arrayidx, align 4, !dbg !145
  %add = add i32 %13, ptrtoint (ptr @tracing_irq_cpu to i32), !dbg !145
  %14 = inttoptr i32 %add to ptr, !dbg !145
  %15 = ptrtoint ptr %14 to i32, !dbg !145
  call void @__asan_load4_noabort(i32 %15), !dbg !145
  %16 = load volatile i32, ptr %14, align 4, !dbg !145
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !145, !srcloc !151
  %gcov_ctr.i75 = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %17 = add i64 %gcov_ctr.i75, 1
  store i64 %17, ptr @__llvm_gcov_ctr.14, align 8
  %gcov_ctr.i.i76 = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !152
  %18 = add i64 %gcov_ctr.i.i76, 1, !dbg !152
  store i64 %18, ptr @__llvm_gcov_ctr.35, align 8, !dbg !152
  %gcov_ctr.i.i.i77 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !156
  %19 = add i64 %gcov_ctr.i.i.i77, 1, !dbg !156
  store i64 %19, ptr @__llvm_gcov_ctr.13, align 8, !dbg !156
  %20 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !156
  %and.i.i.i78 = and i32 %20, -16384, !dbg !158
  %21 = inttoptr i32 %and.i.i.i78 to ptr, !dbg !159
  %preempt_count.i.i79 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1, !dbg !160
  %22 = ptrtoint ptr %preempt_count.i.i79 to i32, !dbg !161
  call void @__asan_load4_noabort(i32 %22), !dbg !161
  %23 = load volatile i32, ptr %preempt_count.i.i79, align 4, !dbg !161
  %sub.i = add i32 %23, -1, !dbg !161
  store volatile i32 %sub.i, ptr %preempt_count.i.i79, align 4, !dbg !161
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.11, align 16, !dbg !145
  %24 = add i64 %gcov_ctr, 1, !dbg !145
  store i64 %24, ptr @__llvm_gcov_ctr.11, align 16, !dbg !145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16), !dbg !145
  %tobool.not = icmp eq i32 %16, 0, !dbg !145
  br i1 %tobool.not, label %entry.if.end71_crit_edge, label %if.then, !dbg !145

entry.if.end71_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !145
  br label %if.end71, !dbg !145

if.then:                                          ; preds = %entry
  %gcov_ctr.i80 = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %25 = add i64 %gcov_ctr.i80, 1
  store i64 %25, ptr @__llvm_gcov_ctr.15, align 8
  %gcov_ctr.i.i81 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !162
  %26 = add i64 %gcov_ctr.i.i81, 1, !dbg !162
  store i64 %26, ptr @__llvm_gcov_ctr.13, align 8, !dbg !162
  %27 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !162
  %and.i.i = and i32 %27, -16384, !dbg !166
  %28 = inttoptr i32 %and.i.i to ptr, !dbg !167
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1, !dbg !168
  %29 = ptrtoint ptr %preempt_count.i to i32, !dbg !168
  call void @__asan_load4_noabort(i32 %29), !dbg !168
  %30 = load volatile i32, ptr %preempt_count.i, align 4, !dbg !168
  %and = and i32 %30, 15728640, !dbg !169
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !169
  %tobool20.not = icmp eq i32 %and, 0, !dbg !169
  br i1 %tobool20.not, label %if.then21, label %if.then.if.end_crit_edge, !dbg !170

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10, !dbg !171
  %.pre = tail call ptr @llvm.returnaddress(i32 0), !dbg !171
  %.pre90 = ptrtoint ptr %.pre to i32, !dbg !171
  br label %if.end, !dbg !170

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10, !dbg !172
  %gcov_ctr72 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 1), align 8, !dbg !172
  %31 = add i64 %gcov_ctr72, 1, !dbg !172
  store i64 %31, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 1), align 8, !dbg !172
  %32 = tail call ptr @llvm.returnaddress(i32 0), !dbg !172
  %33 = ptrtoint ptr %32 to i32, !dbg !172
  %gcov_ctr.i83 = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %34 = add i64 %gcov_ctr.i83, 1
  store i64 %34, ptr @__llvm_gcov_ctr.17, align 8
  tail call fastcc void @trace_irq_enable(i32 noundef %33), !dbg !173
  br label %if.end, !dbg !173

if.end:                                           ; preds = %if.then21, %if.then.if.end_crit_edge
  %.pre-phi91 = phi i32 [ %.pre90, %if.then.if.end_crit_edge ], [ %33, %if.then21 ], !dbg !171
  %gcov_ctr.i84 = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %35 = add i64 %gcov_ctr.i84, 1
  store i64 %35, ptr @__llvm_gcov_ctr.17, align 8
  tail call void @tracer_hardirqs_on(i32 noundef %.pre-phi91, i32 noundef 0) #11, !dbg !174
  %gcov_ctr.i85 = load i64, ptr @__llvm_gcov_ctr.18, align 8
  %36 = add i64 %gcov_ctr.i85, 1
  store i64 %36, ptr @__llvm_gcov_ctr.18, align 8
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !dbg !175, !srcloc !179
  %38 = ptrtoint ptr %cpu to i32, !dbg !180
  call void @__asan_load4_noabort(i32 %38), !dbg !180
  %39 = load i32, ptr %cpu, align 4, !dbg !180
  %arrayidx45 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39, !dbg !180
  %40 = ptrtoint ptr %arrayidx45 to i32, !dbg !180
  call void @__asan_load4_noabort(i32 %40), !dbg !180
  %41 = load i32, ptr %arrayidx45, align 4, !dbg !180
  %add46 = add i32 %41, ptrtoint (ptr @tracing_irq_cpu to i32), !dbg !180
  %42 = inttoptr i32 %add46 to ptr, !dbg !180
  %43 = ptrtoint ptr %42 to i32, !dbg !180
  call void @__asan_store4_noabort(i32 %43), !dbg !180
  store i32 0, ptr %42, align 4, !dbg !180
  %gcov_ctr.i86 = load i64, ptr @__llvm_gcov_ctr.19, align 8, !dbg !181
  %44 = add i64 %gcov_ctr.i86, 1, !dbg !181
  store i64 %44, ptr @__llvm_gcov_ctr.19, align 8, !dbg !181
  %gcov_ctr.i.i87 = load i64, ptr @__llvm_gcov_ctr.46, align 8
  %45 = add i64 %gcov_ctr.i.i87, 1
  store i64 %45, ptr @__llvm_gcov_ctr.46, align 8
  %46 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !dbg !185, !srcloc !188
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %47 = add i64 %gcov_ctr.i2.i, 1
  store i64 %47, ptr @__llvm_gcov_ctr.45, align 8
  %and.i.i88 = and i32 %46, 128, !dbg !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i88), !dbg !180
  %tobool57.not = icmp eq i32 %and.i.i88, 0, !dbg !180
  br i1 %tobool57.not, label %if.then61, label %if.end.do.end64_crit_edge, !dbg !180, !prof !99

if.end.do.end64_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10, !dbg !180
  br label %do.end64, !dbg !180

if.then61:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10, !dbg !180
  %gcov_ctr73 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 2), align 16, !dbg !180
  %48 = add i64 %gcov_ctr73, 1, !dbg !180
  store i64 %48, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 2), align 16, !dbg !180
  tail call void @warn_bogus_irq_restore() #11, !dbg !180
  br label %do.end64, !dbg !180

do.end64:                                         ; preds = %if.then61, %if.end.do.end64_crit_edge
  %gcov_ctr.i89 = load i64, ptr @__llvm_gcov_ctr.20, align 8
  %49 = add i64 %gcov_ctr.i89, 1
  store i64 %49, ptr @__llvm_gcov_ctr.20, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %37) #11, !dbg !192, !srcloc !195
  %gcov_ctr74 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 3), align 8, !dbg !196
  %50 = add i64 %gcov_ctr74, 1, !dbg !196
  store i64 %50, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 3), align 8, !dbg !196
  br label %if.end71, !dbg !196

if.end71:                                         ; preds = %do.end64, %entry.if.end71_crit_edge
  ret void, !dbg !197
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_irq_enable(i32 noundef %ip) unnamed_addr #3 align 64 !dbg !198 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !199
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.16, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.16, align 16
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.36, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.36, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irq_enable, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_irq_enable, %do.body)) #11
          to label %if.end48 [label %do.body], !dbg !200, !srcloc !207

do.body:                                          ; preds = %entry
  %gcov_ctr1.i.i45 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !208
  %2 = add i64 %gcov_ctr1.i.i45, 1, !dbg !208
  store i64 %2, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !208
  %gcov_ctr.i8 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !209
  %3 = add i64 %gcov_ctr.i8, 1, !dbg !209
  store i64 %3, ptr @__llvm_gcov_ctr.13, align 8, !dbg !209
  %4 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !209
  %and.i = and i32 %4, -16384, !dbg !211
  %5 = inttoptr i32 %and.i to ptr, !dbg !212
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3, !dbg !213
  %6 = ptrtoint ptr %cpu to i32, !dbg !213
  call void @__asan_load4_noabort(i32 %6), !dbg !213
  %7 = load i32, ptr %cpu, align 4, !dbg !213
  %gcov_ctr.i9 = load i64, ptr @__llvm_gcov_ctr.37, align 8
  %8 = add i64 %gcov_ctr.i9, 1
  store i64 %8, ptr @__llvm_gcov_ctr.37, align 8
  %gcov_ctr.i.i10 = load i64, ptr @__llvm_gcov_ctr.41, align 8
  %9 = add i64 %gcov_ctr.i.i10, 1
  store i64 %9, ptr @__llvm_gcov_ctr.41, align 8
  %gcov_ctr.i1.i.i = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %10 = add i64 %gcov_ctr.i1.i.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.43, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !214
  %11 = load i32, ptr @nr_cpu_ids, align 4, !dbg !214
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.44, align 16
  %12 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.44, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7), !dbg !222
  %cmp.not.i.i.i.i = icmp ugt i32 %11, %7, !dbg !222
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i, !dbg !222

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10, !dbg !222
  br label %cpu_online.exit, !dbg !222

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %gcov_ctr35.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !222
  %13 = add i64 %gcov_ctr35.i.i.i.i, 1, !dbg !222
  store i64 %13, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !222
  %.b40.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !222
  br i1 %.b40.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !dbg !222, !prof !97

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !222
  br label %cpu_online.exit, !dbg !222

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !222
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !222
  %gcov_ctr36.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !222
  %14 = add i64 %gcov_ctr36.i.i.i.i, 1, !dbg !222
  store i64 %14, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !222
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #11, !dbg !222
  %gcov_ctr37.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !222
  %15 = add i64 %gcov_ctr37.i.i.i.i, 1, !dbg !222
  store i64 %15, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !222
  br label %cpu_online.exit, !dbg !222

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %gcov_ctr.i.i.i11 = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %16 = add i64 %gcov_ctr.i.i.i11, 1
  store i64 %16, ptr @__llvm_gcov_ctr.42, align 8
  %div1.i.i.i = lshr i32 %7, 5, !dbg !225
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i, !dbg !229
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32, !dbg !229
  call void @__asan_load4_noabort(i32 %17), !dbg !229
  %18 = load volatile i32, ptr %arrayidx.i.i.i, align 4, !dbg !229
  %and.i.i.i12 = and i32 %7, 31, !dbg !230
  %19 = shl nuw i32 1, %and.i.i.i12, !dbg !231
  %20 = and i32 %18, %19, !dbg !231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20), !dbg !231
  %tobool.i.not = icmp eq i32 %20, 0, !dbg !231
  br i1 %tobool.i.not, label %cleanup.thread, label %if.end31, !dbg !213

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10, !dbg !232
  %gcov_ctr70 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8
  %21 = add i64 %gcov_ctr70, 1
  store i64 %21, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %gcov_ctr.i2 = load i64, ptr @__llvm_gcov_ctr.12, align 8
  %22 = add i64 %gcov_ctr.i2, 1
  store i64 %22, ptr @__llvm_gcov_ctr.12, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !233
  %23 = add i64 %gcov_ctr.i.i, 1, !dbg !233
  store i64 %23, ptr @__llvm_gcov_ctr.35, align 8, !dbg !233
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !236
  %24 = add i64 %gcov_ctr.i.i.i, 1, !dbg !236
  store i64 %24, ptr @__llvm_gcov_ctr.13, align 8, !dbg !236
  %25 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !236
  %and.i.i.i = and i32 %25, -16384, !dbg !238
  %26 = inttoptr i32 %and.i.i.i to ptr, !dbg !239
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1, !dbg !240
  %27 = ptrtoint ptr %preempt_count.i.i to i32, !dbg !241
  call void @__asan_load4_noabort(i32 %27), !dbg !241
  %28 = load volatile i32, ptr %preempt_count.i.i, align 4, !dbg !241
  %add.i = add i32 %28, 1, !dbg !241
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4, !dbg !241
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !213, !srcloc !242
  %gcov_ctr.i13 = load i64, ptr @__llvm_gcov_ctr.7, align 16, !dbg !243
  %29 = add i64 %gcov_ctr.i13, 1, !dbg !243
  store i64 %29, ptr @__llvm_gcov_ctr.7, align 16, !dbg !243
  %30 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irq_enable, i32 0, i32 7), align 4, !dbg !243
  %tobool.not.i = icmp eq ptr %30, null, !dbg !243
  br i1 %tobool.not.i, label %if.end31.do.end47_crit_edge, label %if.end31.do.body2.i_crit_edge, !dbg !243

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i, !dbg !243

if.end31.do.end47_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10, !dbg !243
  br label %do.end47, !dbg !243

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %30, %if.end31.do.body2.i_crit_edge ], !dbg !243
  %gcov_ctr11.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 1), align 8, !dbg !243
  %31 = add i64 %gcov_ctr11.i, 1, !dbg !243
  store i64 %31, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 1), align 8, !dbg !243
  %32 = ptrtoint ptr %it_func_ptr.0.i to i32, !dbg !243
  call void @__asan_load4_noabort(i32 %32), !dbg !243
  %33 = load volatile ptr, ptr %it_func_ptr.0.i, align 4, !dbg !243
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1, !dbg !243
  %34 = ptrtoint ptr %data.i to i32, !dbg !243
  call void @__asan_load4_noabort(i32 %34), !dbg !243
  %35 = load ptr, ptr %data.i, align 4, !dbg !243
  tail call void %33(ptr noundef %35, i32 noundef %ip, i32 noundef 0) #11, !dbg !243
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1, !dbg !243
  %36 = ptrtoint ptr %incdec.ptr.i to i32, !dbg !243
  call void @__asan_load4_noabort(i32 %36), !dbg !243
  %37 = load ptr, ptr %incdec.ptr.i, align 4, !dbg !243
  %tobool9.not.i = icmp eq ptr %37, null, !dbg !243
  br i1 %tobool9.not.i, label %do.end10.i, label %do.body2.i.do.body2.i_crit_edge, !dbg !243, !llvm.loop !245

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !243
  br label %do.body2.i, !dbg !243

do.end10.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !243
  %gcov_ctr12.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 2), align 16, !dbg !243
  %38 = add i64 %gcov_ctr12.i, 1, !dbg !243
  store i64 %38, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 2), align 16, !dbg !243
  br label %do.end47, !dbg !243

do.end47:                                         ; preds = %do.end10.i, %if.end31.do.end47_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !213, !srcloc !246
  %gcov_ctr.i3 = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %39 = add i64 %gcov_ctr.i3, 1
  store i64 %39, ptr @__llvm_gcov_ctr.14, align 8
  %gcov_ctr.i.i4 = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !247
  %40 = add i64 %gcov_ctr.i.i4, 1, !dbg !247
  store i64 %40, ptr @__llvm_gcov_ctr.35, align 8, !dbg !247
  %gcov_ctr.i.i.i5 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !250
  %41 = add i64 %gcov_ctr.i.i.i5, 1, !dbg !250
  store i64 %41, ptr @__llvm_gcov_ctr.13, align 8, !dbg !250
  %42 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !250
  %and.i.i.i6 = and i32 %42, -16384, !dbg !252
  %43 = inttoptr i32 %and.i.i.i6 to ptr, !dbg !253
  %preempt_count.i.i7 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1, !dbg !254
  %44 = ptrtoint ptr %preempt_count.i.i7 to i32, !dbg !255
  call void @__asan_load4_noabort(i32 %44), !dbg !255
  %45 = load volatile i32, ptr %preempt_count.i.i7, align 4, !dbg !255
  %sub.i = add i32 %45, -1, !dbg !255
  store volatile i32 %sub.i, ptr %preempt_count.i.i7, align 4, !dbg !255
  %gcov_ctr74 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 5), align 8, !dbg !213
  %46 = add i64 %gcov_ctr74, 1, !dbg !213
  store i64 %46, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 5), align 8, !dbg !213
  br label %if.end48, !dbg !213

if.end48:                                         ; preds = %do.end47, %entry
  %__llvm_gcov_ctr.40.sink46 = phi ptr [ getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 7), %do.end47 ], [ @__llvm_gcov_ctr.40, %entry ]
  %47 = ptrtoint ptr %__llvm_gcov_ctr.40.sink46 to i32, !dbg !232
  call void @__asan_load8_noabort(i32 %47), !dbg !232
  %gcov_ctr1.i.i = load i64, ptr %__llvm_gcov_ctr.40.sink46, align 8, !dbg !232
  %48 = add i64 %gcov_ctr1.i.i, 1, !dbg !232
  store i64 %48, ptr %__llvm_gcov_ctr.40.sink46, align 8, !dbg !232
  %gcov_ctr.i14 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !256
  %49 = add i64 %gcov_ctr.i14, 1, !dbg !256
  store i64 %49, ptr @__llvm_gcov_ctr.13, align 8, !dbg !256
  %50 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !256
  %and.i15 = and i32 %50, -16384, !dbg !258
  %51 = inttoptr i32 %and.i15 to ptr, !dbg !259
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3, !dbg !213
  %52 = ptrtoint ptr %cpu50 to i32, !dbg !213
  call void @__asan_load4_noabort(i32 %52), !dbg !213
  %53 = load i32, ptr %cpu50, align 4, !dbg !213
  %gcov_ctr.i16 = load i64, ptr @__llvm_gcov_ctr.37, align 8
  %54 = add i64 %gcov_ctr.i16, 1
  store i64 %54, ptr @__llvm_gcov_ctr.37, align 8
  %gcov_ctr.i.i17 = load i64, ptr @__llvm_gcov_ctr.41, align 8
  %55 = add i64 %gcov_ctr.i.i17, 1
  store i64 %55, ptr @__llvm_gcov_ctr.41, align 8
  %gcov_ctr.i1.i.i18 = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %56 = add i64 %gcov_ctr.i1.i.i18, 1
  store i64 %56, ptr @__llvm_gcov_ctr.43, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !260
  %57 = load i32, ptr @nr_cpu_ids, align 4, !dbg !260
  %gcov_ctr.i.i.i.i19 = load i64, ptr @__llvm_gcov_ctr.44, align 16
  %58 = add i64 %gcov_ctr.i.i.i.i19, 1
  store i64 %58, ptr @__llvm_gcov_ctr.44, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %53), !dbg !264
  %cmp.not.i.i.i.i20 = icmp ugt i32 %57, %53, !dbg !264
  br i1 %cmp.not.i.i.i.i20, label %if.end48.cpu_online.exit32_crit_edge, label %land.rhs.i.i.i.i23, !dbg !264

if.end48.cpu_online.exit32_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10, !dbg !264
  br label %cpu_online.exit32, !dbg !264

land.rhs.i.i.i.i23:                               ; preds = %if.end48
  %gcov_ctr35.i.i.i.i21 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !264
  %59 = add i64 %gcov_ctr35.i.i.i.i21, 1, !dbg !264
  store i64 %59, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !264
  %.b40.i.i.i.i22 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !264
  br i1 %.b40.i.i.i.i22, label %land.rhs.i.i.i.i23.cpu_online.exit32_crit_edge, label %if.then.i.i.i.i26, !dbg !264, !prof !97

land.rhs.i.i.i.i23.cpu_online.exit32_crit_edge:   ; preds = %land.rhs.i.i.i.i23
  call void @__sanitizer_cov_trace_pc() #10, !dbg !264
  br label %cpu_online.exit32, !dbg !264

if.then.i.i.i.i26:                                ; preds = %land.rhs.i.i.i.i23
  call void @__sanitizer_cov_trace_pc() #10, !dbg !264
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !264
  %gcov_ctr36.i.i.i.i24 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !264
  %60 = add i64 %gcov_ctr36.i.i.i.i24, 1, !dbg !264
  store i64 %60, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !264
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #11, !dbg !264
  %gcov_ctr37.i.i.i.i25 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !264
  %61 = add i64 %gcov_ctr37.i.i.i.i25, 1, !dbg !264
  store i64 %61, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !264
  br label %cpu_online.exit32, !dbg !264

cpu_online.exit32:                                ; preds = %if.then.i.i.i.i26, %land.rhs.i.i.i.i23.cpu_online.exit32_crit_edge, %if.end48.cpu_online.exit32_crit_edge
  %gcov_ctr.i.i.i27 = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %62 = add i64 %gcov_ctr.i.i.i27, 1
  store i64 %62, ptr @__llvm_gcov_ctr.42, align 8
  %div1.i.i.i28 = lshr i32 %53, 5, !dbg !266
  %arrayidx.i.i.i29 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i28, !dbg !268
  %63 = ptrtoint ptr %arrayidx.i.i.i29 to i32, !dbg !268
  call void @__asan_load4_noabort(i32 %63), !dbg !268
  %64 = load volatile i32, ptr %arrayidx.i.i.i29, align 4, !dbg !268
  %and.i.i.i30 = and i32 %53, 31, !dbg !269
  %65 = shl nuw i32 1, %and.i.i.i30, !dbg !270
  %66 = and i32 %64, %65, !dbg !270
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66), !dbg !270
  %tobool.i31.not = icmp eq i32 %66, 0, !dbg !270
  br i1 %tobool.i31.not, label %cpu_online.exit32.if.end69_crit_edge, label %if.then52, !dbg !213

cpu_online.exit32.if.end69_crit_edge:             ; preds = %cpu_online.exit32
  call void @__sanitizer_cov_trace_pc() #10, !dbg !213
  br label %if.end69, !dbg !213

if.then52:                                        ; preds = %cpu_online.exit32
  %gcov_ctr.i33 = load i64, ptr @__llvm_gcov_ctr.38, align 8, !dbg !271
  %67 = add i64 %gcov_ctr.i33, 1, !dbg !271
  store i64 %67, ptr @__llvm_gcov_ctr.38, align 8, !dbg !271
  %gcov_ctr.i.i34 = load i64, ptr @__llvm_gcov_ctr.12, align 8
  %68 = add i64 %gcov_ctr.i.i34, 1
  store i64 %68, ptr @__llvm_gcov_ctr.12, align 8
  %gcov_ctr.i.i.i35 = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !275
  %69 = add i64 %gcov_ctr.i.i.i35, 1, !dbg !275
  store i64 %69, ptr @__llvm_gcov_ctr.35, align 8, !dbg !275
  %gcov_ctr.i.i.i.i36 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !278
  %70 = add i64 %gcov_ctr.i.i.i.i36, 1, !dbg !278
  store i64 %70, ptr @__llvm_gcov_ctr.13, align 8, !dbg !278
  %71 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !278
  %and.i.i.i.i = and i32 %71, -16384, !dbg !280
  %72 = inttoptr i32 %and.i.i.i.i to ptr, !dbg !281
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1, !dbg !282
  %73 = ptrtoint ptr %preempt_count.i.i.i to i32, !dbg !283
  call void @__asan_load4_noabort(i32 %73), !dbg !283
  %74 = load volatile i32, ptr %preempt_count.i.i.i, align 4, !dbg !283
  %add.i.i = add i32 %74, 1, !dbg !283
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4, !dbg !283
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !271, !srcloc !284
  %75 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irq_enable, i32 0, i32 7), align 4, !dbg !213
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11, !dbg !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58), !dbg !213
  %tobool59.not = icmp eq i32 %call58, 0, !dbg !213
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge, !dbg !213

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10, !dbg !213
  br label %do.end67, !dbg !213

land.lhs.true:                                    ; preds = %if.then52
  %gcov_ctr77 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 8), align 16, !dbg !213
  %76 = add i64 %gcov_ctr77, 1, !dbg !213
  store i64 %76, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 8), align 16, !dbg !213
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11, !dbg !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60), !dbg !213
  %tobool61.not = icmp eq i32 %call60, 0, !dbg !213
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62, !dbg !213

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10, !dbg !213
  br label %do.end67, !dbg !213

land.lhs.true62:                                  ; preds = %land.lhs.true
  %gcov_ctr78 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 9), align 8, !dbg !213
  %77 = add i64 %gcov_ctr78, 1, !dbg !213
  store i64 %77, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 9), align 8, !dbg !213
  %.b1 = load i1, ptr @trace_irq_enable.__warned, align 1, !dbg !213
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64, !dbg !213

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10, !dbg !213
  br label %do.end67, !dbg !213

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10, !dbg !213
  %gcov_ctr79 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 10), align 16, !dbg !213
  %78 = add i64 %gcov_ctr79, 1, !dbg !213
  store i64 %78, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 10), align 16, !dbg !213
  store i1 true, ptr @trace_irq_enable.__warned, align 1, !dbg !213
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 42, ptr noundef nonnull @.str.5) #11, !dbg !213
  br label %do.end67, !dbg !213

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  %gcov_ctr80 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 11), align 8, !dbg !213
  %79 = add i64 %gcov_ctr80, 1, !dbg !213
  store i64 %79, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 11), align 8, !dbg !213
  %gcov_ctr.i37 = load i64, ptr @__llvm_gcov_ctr.39, align 8, !dbg !285
  %80 = add i64 %gcov_ctr.i37, 1, !dbg !285
  store i64 %80, ptr @__llvm_gcov_ctr.39, align 8, !dbg !285
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !285, !srcloc !288
  %gcov_ctr.i.i38 = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %81 = add i64 %gcov_ctr.i.i38, 1
  store i64 %81, ptr @__llvm_gcov_ctr.14, align 8
  %gcov_ctr.i.i.i39 = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !289
  %82 = add i64 %gcov_ctr.i.i.i39, 1, !dbg !289
  store i64 %82, ptr @__llvm_gcov_ctr.35, align 8, !dbg !289
  %gcov_ctr.i.i.i.i40 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !292
  %83 = add i64 %gcov_ctr.i.i.i.i40, 1, !dbg !292
  store i64 %83, ptr @__llvm_gcov_ctr.13, align 8, !dbg !292
  %84 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !292
  %and.i.i.i.i41 = and i32 %84, -16384, !dbg !294
  %85 = inttoptr i32 %and.i.i.i.i41 to ptr, !dbg !295
  %preempt_count.i.i.i42 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 1, !dbg !296
  %86 = ptrtoint ptr %preempt_count.i.i.i42 to i32, !dbg !297
  call void @__asan_load4_noabort(i32 %86), !dbg !297
  %87 = load volatile i32, ptr %preempt_count.i.i.i42, align 4, !dbg !297
  %sub.i.i = add i32 %87, -1, !dbg !297
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i42, align 4, !dbg !297
  br label %if.end69, !dbg !213

if.end69:                                         ; preds = %do.end67, %cpu_online.exit32.if.end69_crit_edge, %cleanup.thread
  ret void, !dbg !213
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracer_hardirqs_on(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trace_hardirqs_on() #0 align 64 !dbg !298 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !299
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.12, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.12, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !300
  %1 = add i64 %gcov_ctr.i.i, 1, !dbg !300
  store i64 %1, ptr @__llvm_gcov_ctr.35, align 8, !dbg !300
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !303
  %2 = add i64 %gcov_ctr.i.i.i, 1, !dbg !303
  store i64 %2, ptr @__llvm_gcov_ctr.13, align 8, !dbg !303
  %3 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !303
  %and.i.i.i = and i32 %3, -16384, !dbg !305
  %4 = inttoptr i32 %and.i.i.i to ptr, !dbg !306
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1, !dbg !307
  %5 = ptrtoint ptr %preempt_count.i.i to i32, !dbg !308
  call void @__asan_load4_noabort(i32 %5), !dbg !308
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4, !dbg !308
  %add.i = add i32 %6, 1, !dbg !308
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4, !dbg !308
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !309, !srcloc !310
  %gcov_ctr.i82 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !311
  %7 = add i64 %gcov_ctr.i82, 1, !dbg !311
  store i64 %7, ptr @__llvm_gcov_ctr.13, align 8, !dbg !311
  %8 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !311
  %and.i = and i32 %8, -16384, !dbg !313
  %9 = inttoptr i32 %and.i to ptr, !dbg !314
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3, !dbg !309
  %10 = ptrtoint ptr %cpu to i32, !dbg !309
  call void @__asan_load4_noabort(i32 %10), !dbg !309
  %11 = load i32, ptr %cpu, align 4, !dbg !309
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11, !dbg !309
  %12 = ptrtoint ptr %arrayidx to i32, !dbg !309
  call void @__asan_load4_noabort(i32 %12), !dbg !309
  %13 = load i32, ptr %arrayidx, align 4, !dbg !309
  %add = add i32 %13, ptrtoint (ptr @tracing_irq_cpu to i32), !dbg !309
  %14 = inttoptr i32 %add to ptr, !dbg !309
  %15 = ptrtoint ptr %14 to i32, !dbg !309
  call void @__asan_load4_noabort(i32 %15), !dbg !309
  %16 = load volatile i32, ptr %14, align 4, !dbg !309
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !309, !srcloc !315
  %gcov_ctr.i75 = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %17 = add i64 %gcov_ctr.i75, 1
  store i64 %17, ptr @__llvm_gcov_ctr.14, align 8
  %gcov_ctr.i.i76 = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !316
  %18 = add i64 %gcov_ctr.i.i76, 1, !dbg !316
  store i64 %18, ptr @__llvm_gcov_ctr.35, align 8, !dbg !316
  %gcov_ctr.i.i.i77 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !319
  %19 = add i64 %gcov_ctr.i.i.i77, 1, !dbg !319
  store i64 %19, ptr @__llvm_gcov_ctr.13, align 8, !dbg !319
  %20 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !319
  %and.i.i.i78 = and i32 %20, -16384, !dbg !321
  %21 = inttoptr i32 %and.i.i.i78 to ptr, !dbg !322
  %preempt_count.i.i79 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1, !dbg !323
  %22 = ptrtoint ptr %preempt_count.i.i79 to i32, !dbg !324
  call void @__asan_load4_noabort(i32 %22), !dbg !324
  %23 = load volatile i32, ptr %preempt_count.i.i79, align 4, !dbg !324
  %sub.i = add i32 %23, -1, !dbg !324
  store volatile i32 %sub.i, ptr %preempt_count.i.i79, align 4, !dbg !324
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.21, align 16, !dbg !309
  %24 = add i64 %gcov_ctr, 1, !dbg !309
  store i64 %24, ptr @__llvm_gcov_ctr.21, align 16, !dbg !309
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16), !dbg !309
  %tobool.not = icmp eq i32 %16, 0, !dbg !309
  br i1 %tobool.not, label %entry.if.end71_crit_edge, label %if.then, !dbg !309

entry.if.end71_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !325
  %.pre = tail call ptr @llvm.returnaddress(i32 0), !dbg !325
  %.pre90 = ptrtoint ptr %.pre to i32, !dbg !325
  br label %if.end71, !dbg !309

if.then:                                          ; preds = %entry
  %gcov_ctr.i80 = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %25 = add i64 %gcov_ctr.i80, 1
  store i64 %25, ptr @__llvm_gcov_ctr.15, align 8
  %gcov_ctr.i.i81 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !326
  %26 = add i64 %gcov_ctr.i.i81, 1, !dbg !326
  store i64 %26, ptr @__llvm_gcov_ctr.13, align 8, !dbg !326
  %27 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !326
  %and.i.i = and i32 %27, -16384, !dbg !329
  %28 = inttoptr i32 %and.i.i to ptr, !dbg !330
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1, !dbg !331
  %29 = ptrtoint ptr %preempt_count.i to i32, !dbg !331
  call void @__asan_load4_noabort(i32 %29), !dbg !331
  %30 = load volatile i32, ptr %preempt_count.i, align 4, !dbg !331
  %and = and i32 %30, 15728640, !dbg !332
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !332
  %tobool20.not = icmp eq i32 %and, 0, !dbg !332
  br i1 %tobool20.not, label %if.then21, label %if.then.if.end_crit_edge, !dbg !333

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10, !dbg !334
  %.pre92 = tail call ptr @llvm.returnaddress(i32 0), !dbg !334
  %.pre94 = ptrtoint ptr %.pre92 to i32, !dbg !334
  br label %if.end, !dbg !333

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10, !dbg !335
  %gcov_ctr72 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 1), align 8, !dbg !335
  %31 = add i64 %gcov_ctr72, 1, !dbg !335
  store i64 %31, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 1), align 8, !dbg !335
  %32 = tail call ptr @llvm.returnaddress(i32 0), !dbg !335
  %33 = ptrtoint ptr %32 to i32, !dbg !335
  %gcov_ctr.i83 = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %34 = add i64 %gcov_ctr.i83, 1
  store i64 %34, ptr @__llvm_gcov_ctr.17, align 8
  tail call fastcc void @trace_irq_enable_rcuidle(i32 noundef %33, i32 noundef 0), !dbg !336
  br label %if.end, !dbg !336

if.end:                                           ; preds = %if.then21, %if.then.if.end_crit_edge
  %.pre-phi95 = phi i32 [ %.pre94, %if.then.if.end_crit_edge ], [ %33, %if.then21 ], !dbg !334
  %gcov_ctr.i84 = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %35 = add i64 %gcov_ctr.i84, 1
  store i64 %35, ptr @__llvm_gcov_ctr.17, align 8
  tail call void @tracer_hardirqs_on(i32 noundef %.pre-phi95, i32 noundef 0) #11, !dbg !337
  %gcov_ctr.i85 = load i64, ptr @__llvm_gcov_ctr.18, align 8
  %36 = add i64 %gcov_ctr.i85, 1
  store i64 %36, ptr @__llvm_gcov_ctr.18, align 8
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !dbg !338, !srcloc !179
  %38 = ptrtoint ptr %cpu to i32, !dbg !340
  call void @__asan_load4_noabort(i32 %38), !dbg !340
  %39 = load i32, ptr %cpu, align 4, !dbg !340
  %arrayidx45 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39, !dbg !340
  %40 = ptrtoint ptr %arrayidx45 to i32, !dbg !340
  call void @__asan_load4_noabort(i32 %40), !dbg !340
  %41 = load i32, ptr %arrayidx45, align 4, !dbg !340
  %add46 = add i32 %41, ptrtoint (ptr @tracing_irq_cpu to i32), !dbg !340
  %42 = inttoptr i32 %add46 to ptr, !dbg !340
  %43 = ptrtoint ptr %42 to i32, !dbg !340
  call void @__asan_store4_noabort(i32 %43), !dbg !340
  store i32 0, ptr %42, align 4, !dbg !340
  %gcov_ctr.i86 = load i64, ptr @__llvm_gcov_ctr.19, align 8, !dbg !341
  %44 = add i64 %gcov_ctr.i86, 1, !dbg !341
  store i64 %44, ptr @__llvm_gcov_ctr.19, align 8, !dbg !341
  %gcov_ctr.i.i87 = load i64, ptr @__llvm_gcov_ctr.46, align 8
  %45 = add i64 %gcov_ctr.i.i87, 1
  store i64 %45, ptr @__llvm_gcov_ctr.46, align 8
  %46 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !dbg !343, !srcloc !188
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %47 = add i64 %gcov_ctr.i2.i, 1
  store i64 %47, ptr @__llvm_gcov_ctr.45, align 8
  %and.i.i88 = and i32 %46, 128, !dbg !345
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i88), !dbg !340
  %tobool57.not = icmp eq i32 %and.i.i88, 0, !dbg !340
  br i1 %tobool57.not, label %if.then61, label %if.end.do.end64_crit_edge, !dbg !340, !prof !99

if.end.do.end64_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10, !dbg !340
  br label %do.end64, !dbg !340

if.then61:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10, !dbg !340
  %gcov_ctr73 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 2), align 16, !dbg !340
  %48 = add i64 %gcov_ctr73, 1, !dbg !340
  store i64 %48, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 2), align 16, !dbg !340
  tail call void @warn_bogus_irq_restore() #11, !dbg !340
  br label %do.end64, !dbg !340

do.end64:                                         ; preds = %if.then61, %if.end.do.end64_crit_edge
  %gcov_ctr.i89 = load i64, ptr @__llvm_gcov_ctr.20, align 8
  %49 = add i64 %gcov_ctr.i89, 1
  store i64 %49, ptr @__llvm_gcov_ctr.20, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %37) #11, !dbg !347, !srcloc !195
  %gcov_ctr74 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 3), align 8, !dbg !349
  %50 = add i64 %gcov_ctr74, 1, !dbg !349
  store i64 %50, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 3), align 8, !dbg !349
  br label %if.end71, !dbg !349

if.end71:                                         ; preds = %do.end64, %entry.if.end71_crit_edge
  %.pre-phi91 = phi i32 [ %.pre90, %entry.if.end71_crit_edge ], [ %.pre-phi95, %do.end64 ], !dbg !325
  tail call void @lockdep_hardirqs_on_prepare(i32 noundef %.pre-phi91) #11, !dbg !350
  tail call void @lockdep_hardirqs_on(i32 noundef %.pre-phi91) #11, !dbg !351
  ret void, !dbg !352
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_irq_enable_rcuidle(i32 noundef %ip, i32 noundef %parent_ip) unnamed_addr #3 align 64 !dbg !353 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !354
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.22, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.22, align 16
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.36, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.36, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irq_enable, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_irq_enable_rcuidle, %do.body)) #11
          to label %if.end53 [label %do.body], !dbg !355, !srcloc !207

do.body:                                          ; preds = %entry
  %gcov_ctr1.i.i82 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !358
  %2 = add i64 %gcov_ctr1.i.i82, 1, !dbg !358
  store i64 %2, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !358
  %gcov_ctr.i72 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !359
  %3 = add i64 %gcov_ctr.i72, 1, !dbg !359
  store i64 %3, ptr @__llvm_gcov_ctr.13, align 8, !dbg !359
  %4 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !359
  %and.i = and i32 %4, -16384, !dbg !361
  %5 = inttoptr i32 %and.i to ptr, !dbg !362
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3, !dbg !363
  %6 = ptrtoint ptr %cpu to i32, !dbg !363
  call void @__asan_load4_noabort(i32 %6), !dbg !363
  %7 = load i32, ptr %cpu, align 4, !dbg !363
  %gcov_ctr.i73 = load i64, ptr @__llvm_gcov_ctr.37, align 8
  %8 = add i64 %gcov_ctr.i73, 1
  store i64 %8, ptr @__llvm_gcov_ctr.37, align 8
  %gcov_ctr.i.i74 = load i64, ptr @__llvm_gcov_ctr.41, align 8
  %9 = add i64 %gcov_ctr.i.i74, 1
  store i64 %9, ptr @__llvm_gcov_ctr.41, align 8
  %gcov_ctr.i1.i.i = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %10 = add i64 %gcov_ctr.i1.i.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.43, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !364
  %11 = load i32, ptr @nr_cpu_ids, align 4, !dbg !364
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.44, align 16
  %12 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.44, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7), !dbg !368
  %cmp.not.i.i.i.i = icmp ugt i32 %11, %7, !dbg !368
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i, !dbg !368

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10, !dbg !368
  br label %cpu_online.exit, !dbg !368

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %gcov_ctr35.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !368
  %13 = add i64 %gcov_ctr35.i.i.i.i, 1, !dbg !368
  store i64 %13, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !368
  %.b40.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !368
  br i1 %.b40.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !dbg !368, !prof !97

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !368
  br label %cpu_online.exit, !dbg !368

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !368
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !368
  %gcov_ctr36.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !368
  %14 = add i64 %gcov_ctr36.i.i.i.i, 1, !dbg !368
  store i64 %14, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !368
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #11, !dbg !368
  %gcov_ctr37.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !368
  %15 = add i64 %gcov_ctr37.i.i.i.i, 1, !dbg !368
  store i64 %15, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !368
  br label %cpu_online.exit, !dbg !368

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %gcov_ctr.i.i.i75 = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %16 = add i64 %gcov_ctr.i.i.i75, 1
  store i64 %16, ptr @__llvm_gcov_ctr.42, align 8
  %div1.i.i.i = lshr i32 %7, 5, !dbg !370
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i, !dbg !372
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32, !dbg !372
  call void @__asan_load4_noabort(i32 %17), !dbg !372
  %18 = load volatile i32, ptr %arrayidx.i.i.i, align 4, !dbg !372
  %and.i.i.i76 = and i32 %7, 31, !dbg !373
  %19 = shl nuw i32 1, %and.i.i.i76, !dbg !374
  %20 = and i32 %18, %19, !dbg !374
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20), !dbg !374
  %tobool.i.not = icmp eq i32 %20, 0, !dbg !374
  br i1 %tobool.i.not, label %cpu_online.exit.if.end53_crit_edge, label %if.end, !dbg !363

cpu_online.exit.if.end53_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10, !dbg !363
  br label %if.end53, !dbg !363

if.end:                                           ; preds = %cpu_online.exit
  %gcov_ctr.i64 = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %21 = add i64 %gcov_ctr.i64, 1
  store i64 %21, ptr @__llvm_gcov_ctr.15, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !375
  %22 = add i64 %gcov_ctr.i.i, 1, !dbg !375
  store i64 %22, ptr @__llvm_gcov_ctr.13, align 8, !dbg !375
  %23 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !375
  %and.i.i = and i32 %23, -16384, !dbg !378
  %24 = inttoptr i32 %and.i.i to ptr, !dbg !379
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1, !dbg !380
  %25 = ptrtoint ptr %preempt_count.i to i32, !dbg !380
  call void @__asan_load4_noabort(i32 %25), !dbg !380
  %26 = load volatile i32, ptr %preempt_count.i, align 4, !dbg !380
  %and = and i32 %26, 15728640, !dbg !363
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !363
  %tobool.not = icmp eq i32 %and, 0, !dbg !363
  br i1 %tobool.not, label %if.end.if.end35_crit_edge, label %land.rhs, !dbg !363

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10, !dbg !363
  br label %if.end35, !dbg !363

land.rhs:                                         ; preds = %if.end
  %gcov_ctr55 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 2), align 16, !dbg !363
  %27 = add i64 %gcov_ctr55, 1, !dbg !363
  store i64 %27, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 2), align 16, !dbg !363
  %.b63 = load i1, ptr @trace_irq_enable_rcuidle.__already_done, align 1, !dbg !363
  br i1 %.b63, label %land.rhs.if.end35_crit_edge, label %if.then12, !dbg !363, !prof !97

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10, !dbg !363
  br label %if.end35, !dbg !363

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10, !dbg !363
  store i1 true, ptr @trace_irq_enable_rcuidle.__already_done, align 1, !dbg !363
  %gcov_ctr56 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 3), align 8, !dbg !363
  %28 = add i64 %gcov_ctr56, 1, !dbg !363
  store i64 %28, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 3), align 8, !dbg !363
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 42, i32 noundef 9, ptr noundef null) #11, !dbg !363
  %gcov_ctr57 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 4), align 16, !dbg !363
  %29 = add i64 %gcov_ctr57, 1, !dbg !363
  store i64 %29, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 4), align 16, !dbg !363
  br label %if.end35, !dbg !363

if.end35:                                         ; preds = %if.then12, %land.rhs.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %gcov_ctr.i65 = load i64, ptr @__llvm_gcov_ctr.12, align 8
  %30 = add i64 %gcov_ctr.i65, 1
  store i64 %30, ptr @__llvm_gcov_ctr.12, align 8
  %gcov_ctr.i.i66 = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !381
  %31 = add i64 %gcov_ctr.i.i66, 1, !dbg !381
  store i64 %31, ptr @__llvm_gcov_ctr.35, align 8, !dbg !381
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !384
  %32 = add i64 %gcov_ctr.i.i.i, 1, !dbg !384
  store i64 %32, ptr @__llvm_gcov_ctr.13, align 8, !dbg !384
  %33 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !384
  %and.i.i.i = and i32 %33, -16384, !dbg !386
  %34 = inttoptr i32 %and.i.i.i to ptr, !dbg !387
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1, !dbg !388
  %35 = ptrtoint ptr %preempt_count.i.i to i32, !dbg !389
  call void @__asan_load4_noabort(i32 %35), !dbg !389
  %36 = load volatile i32, ptr %preempt_count.i.i, align 4, !dbg !389
  %add.i = add i32 %36, 1, !dbg !389
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4, !dbg !389
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !363, !srcloc !390
  %gcov_ctr.i77 = load i64, ptr @__llvm_gcov_ctr.47, align 8
  %37 = add i64 %gcov_ctr.i77, 1
  store i64 %37, ptr @__llvm_gcov_ctr.47, align 8
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #11, !dbg !391
  tail call void @rcu_irq_enter_irqson() #11, !dbg !363
  %gcov_ctr.i78 = load i64, ptr @__llvm_gcov_ctr.7, align 16, !dbg !395
  %38 = add i64 %gcov_ctr.i78, 1, !dbg !395
  store i64 %38, ptr @__llvm_gcov_ctr.7, align 16, !dbg !395
  %39 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irq_enable, i32 0, i32 7), align 4, !dbg !395
  %tobool.not.i = icmp eq ptr %39, null, !dbg !395
  br i1 %tobool.not.i, label %if.end35.do.end52_crit_edge, label %if.end35.do.body2.i_crit_edge, !dbg !395

if.end35.do.body2.i_crit_edge:                    ; preds = %if.end35
  br label %do.body2.i, !dbg !395

if.end35.do.end52_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10, !dbg !395
  br label %do.end52, !dbg !395

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end35.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %39, %if.end35.do.body2.i_crit_edge ], !dbg !395
  %gcov_ctr11.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 1), align 8, !dbg !395
  %40 = add i64 %gcov_ctr11.i, 1, !dbg !395
  store i64 %40, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 1), align 8, !dbg !395
  %41 = ptrtoint ptr %it_func_ptr.0.i to i32, !dbg !395
  call void @__asan_load4_noabort(i32 %41), !dbg !395
  %42 = load volatile ptr, ptr %it_func_ptr.0.i, align 4, !dbg !395
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1, !dbg !395
  %43 = ptrtoint ptr %data.i to i32, !dbg !395
  call void @__asan_load4_noabort(i32 %43), !dbg !395
  %44 = load ptr, ptr %data.i, align 4, !dbg !395
  tail call void %42(ptr noundef %44, i32 noundef %ip, i32 noundef %parent_ip) #11, !dbg !395
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1, !dbg !395
  %45 = ptrtoint ptr %incdec.ptr.i to i32, !dbg !395
  call void @__asan_load4_noabort(i32 %45), !dbg !395
  %46 = load ptr, ptr %incdec.ptr.i, align 4, !dbg !395
  %tobool9.not.i = icmp eq ptr %46, null, !dbg !395
  br i1 %tobool9.not.i, label %do.end10.i, label %do.body2.i.do.body2.i_crit_edge, !dbg !395, !llvm.loop !397

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !395
  br label %do.body2.i, !dbg !395

do.end10.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !395
  %gcov_ctr12.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 2), align 16, !dbg !395
  %47 = add i64 %gcov_ctr12.i, 1, !dbg !395
  store i64 %47, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 2), align 16, !dbg !395
  br label %do.end52, !dbg !395

do.end52:                                         ; preds = %do.end10.i, %if.end35.do.end52_crit_edge
  tail call void @rcu_irq_exit_irqson() #11, !dbg !363
  %gcov_ctr.i79 = load i64, ptr @__llvm_gcov_ctr.48, align 8
  %48 = add i64 %gcov_ctr.i79, 1
  store i64 %48, ptr @__llvm_gcov_ctr.48, align 8
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %call.i) #11, !dbg !398
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !363, !srcloc !401
  %gcov_ctr.i67 = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %49 = add i64 %gcov_ctr.i67, 1
  store i64 %49, ptr @__llvm_gcov_ctr.14, align 8
  %gcov_ctr.i.i68 = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !402
  %50 = add i64 %gcov_ctr.i.i68, 1, !dbg !402
  store i64 %50, ptr @__llvm_gcov_ctr.35, align 8, !dbg !402
  %gcov_ctr.i.i.i69 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !405
  %51 = add i64 %gcov_ctr.i.i.i69, 1, !dbg !405
  store i64 %51, ptr @__llvm_gcov_ctr.13, align 8, !dbg !405
  %52 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !405
  %and.i.i.i70 = and i32 %52, -16384, !dbg !407
  %53 = inttoptr i32 %and.i.i.i70 to ptr, !dbg !408
  %preempt_count.i.i71 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1, !dbg !409
  %54 = ptrtoint ptr %preempt_count.i.i71 to i32, !dbg !410
  call void @__asan_load4_noabort(i32 %54), !dbg !410
  %55 = load volatile i32, ptr %preempt_count.i.i71, align 4, !dbg !410
  %sub.i = add i32 %55, -1, !dbg !410
  store volatile i32 %sub.i, ptr %preempt_count.i.i71, align 4, !dbg !410
  %gcov_ctr58 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 5), align 8, !dbg !363
  %56 = add i64 %gcov_ctr58, 1, !dbg !363
  store i64 %56, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 5), align 8, !dbg !363
  br label %if.end53, !dbg !363

if.end53:                                         ; preds = %do.end52, %cpu_online.exit.if.end53_crit_edge, %entry
  %.sink = phi ptr [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 7), %do.end52 ], [ @__llvm_gcov_ctr.40, %entry ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 1), %cpu_online.exit.if.end53_crit_edge ]
  %57 = ptrtoint ptr %.sink to i32
  call void @__asan_load8_noabort(i32 %57)
  %gcov_ctr54 = load i64, ptr %.sink, align 8
  %58 = add i64 %gcov_ctr54, 1
  store i64 %58, ptr %.sink, align 8
  ret void, !dbg !363
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_hardirqs_on_prepare(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_hardirqs_on(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trace_hardirqs_off_finish() #0 align 64 !dbg !411 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !412
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.12, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.12, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !413
  %1 = add i64 %gcov_ctr.i.i, 1, !dbg !413
  store i64 %1, ptr @__llvm_gcov_ctr.35, align 8, !dbg !413
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !416
  %2 = add i64 %gcov_ctr.i.i.i, 1, !dbg !416
  store i64 %2, ptr @__llvm_gcov_ctr.13, align 8, !dbg !416
  %3 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !416
  %and.i.i.i = and i32 %3, -16384, !dbg !418
  %4 = inttoptr i32 %and.i.i.i to ptr, !dbg !419
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1, !dbg !420
  %5 = ptrtoint ptr %preempt_count.i.i to i32, !dbg !421
  call void @__asan_load4_noabort(i32 %5), !dbg !421
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4, !dbg !421
  %add.i = add i32 %6, 1, !dbg !421
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4, !dbg !421
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !422, !srcloc !423
  %gcov_ctr.i82 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !424
  %7 = add i64 %gcov_ctr.i82, 1, !dbg !424
  store i64 %7, ptr @__llvm_gcov_ctr.13, align 8, !dbg !424
  %8 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !424
  %and.i = and i32 %8, -16384, !dbg !426
  %9 = inttoptr i32 %and.i to ptr, !dbg !427
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3, !dbg !422
  %10 = ptrtoint ptr %cpu to i32, !dbg !422
  call void @__asan_load4_noabort(i32 %10), !dbg !422
  %11 = load i32, ptr %cpu, align 4, !dbg !422
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11, !dbg !422
  %12 = ptrtoint ptr %arrayidx to i32, !dbg !422
  call void @__asan_load4_noabort(i32 %12), !dbg !422
  %13 = load i32, ptr %arrayidx, align 4, !dbg !422
  %add = add i32 %13, ptrtoint (ptr @tracing_irq_cpu to i32), !dbg !422
  %14 = inttoptr i32 %add to ptr, !dbg !422
  %15 = ptrtoint ptr %14 to i32, !dbg !422
  call void @__asan_load4_noabort(i32 %15), !dbg !422
  %16 = load volatile i32, ptr %14, align 4, !dbg !422
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !422, !srcloc !428
  %gcov_ctr.i75 = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %17 = add i64 %gcov_ctr.i75, 1
  store i64 %17, ptr @__llvm_gcov_ctr.14, align 8
  %gcov_ctr.i.i76 = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !429
  %18 = add i64 %gcov_ctr.i.i76, 1, !dbg !429
  store i64 %18, ptr @__llvm_gcov_ctr.35, align 8, !dbg !429
  %gcov_ctr.i.i.i77 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !432
  %19 = add i64 %gcov_ctr.i.i.i77, 1, !dbg !432
  store i64 %19, ptr @__llvm_gcov_ctr.13, align 8, !dbg !432
  %20 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !432
  %and.i.i.i78 = and i32 %20, -16384, !dbg !434
  %21 = inttoptr i32 %and.i.i.i78 to ptr, !dbg !435
  %preempt_count.i.i79 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1, !dbg !436
  %22 = ptrtoint ptr %preempt_count.i.i79 to i32, !dbg !437
  call void @__asan_load4_noabort(i32 %22), !dbg !437
  %23 = load volatile i32, ptr %preempt_count.i.i79, align 4, !dbg !437
  %sub.i = add i32 %23, -1, !dbg !437
  store volatile i32 %sub.i, ptr %preempt_count.i.i79, align 4, !dbg !437
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.23, align 16, !dbg !422
  %24 = add i64 %gcov_ctr, 1, !dbg !422
  store i64 %24, ptr @__llvm_gcov_ctr.23, align 16, !dbg !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16), !dbg !422
  %tobool.not = icmp eq i32 %16, 0, !dbg !422
  br i1 %tobool.not, label %do.body20, label %entry.if.end71_crit_edge, !dbg !438

entry.if.end71_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !438
  br label %if.end71, !dbg !438

do.body20:                                        ; preds = %entry
  %gcov_ctr.i83 = load i64, ptr @__llvm_gcov_ctr.18, align 8
  %25 = add i64 %gcov_ctr.i83, 1
  store i64 %25, ptr @__llvm_gcov_ctr.18, align 8
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !dbg !439, !srcloc !179
  %27 = ptrtoint ptr %cpu to i32, !dbg !441
  call void @__asan_load4_noabort(i32 %27), !dbg !441
  %28 = load i32, ptr %cpu, align 4, !dbg !441
  %arrayidx40 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28, !dbg !441
  %29 = ptrtoint ptr %arrayidx40 to i32, !dbg !441
  call void @__asan_load4_noabort(i32 %29), !dbg !441
  %30 = load i32, ptr %arrayidx40, align 4, !dbg !441
  %add41 = add i32 %30, ptrtoint (ptr @tracing_irq_cpu to i32), !dbg !441
  %31 = inttoptr i32 %add41 to ptr, !dbg !441
  %32 = ptrtoint ptr %31 to i32, !dbg !441
  call void @__asan_store4_noabort(i32 %32), !dbg !441
  store i32 1, ptr %31, align 4, !dbg !441
  %gcov_ctr.i84 = load i64, ptr @__llvm_gcov_ctr.19, align 8, !dbg !442
  %33 = add i64 %gcov_ctr.i84, 1, !dbg !442
  store i64 %33, ptr @__llvm_gcov_ctr.19, align 8, !dbg !442
  %gcov_ctr.i.i85 = load i64, ptr @__llvm_gcov_ctr.46, align 8
  %34 = add i64 %gcov_ctr.i.i85, 1
  store i64 %34, ptr @__llvm_gcov_ctr.46, align 8
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !dbg !444, !srcloc !188
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %36 = add i64 %gcov_ctr.i2.i, 1
  store i64 %36, ptr @__llvm_gcov_ctr.45, align 8
  %and.i.i86 = and i32 %35, 128, !dbg !446
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i86), !dbg !441
  %tobool52.not = icmp eq i32 %and.i.i86, 0, !dbg !441
  br i1 %tobool52.not, label %if.then56, label %do.body20.do.end58_crit_edge, !dbg !441, !prof !99

do.body20.do.end58_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10, !dbg !441
  br label %do.end58, !dbg !441

if.then56:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10, !dbg !441
  %gcov_ctr72 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.23, i32 0, i32 1), align 8, !dbg !441
  %37 = add i64 %gcov_ctr72, 1, !dbg !441
  store i64 %37, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.23, i32 0, i32 1), align 8, !dbg !441
  tail call void @warn_bogus_irq_restore() #11, !dbg !441
  br label %do.end58, !dbg !441

do.end58:                                         ; preds = %if.then56, %do.body20.do.end58_crit_edge
  %gcov_ctr.i87 = load i64, ptr @__llvm_gcov_ctr.20, align 8
  %38 = add i64 %gcov_ctr.i87, 1
  store i64 %38, ptr @__llvm_gcov_ctr.20, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #11, !dbg !448, !srcloc !195
  %39 = tail call ptr @llvm.returnaddress(i32 0), !dbg !450
  %40 = ptrtoint ptr %39 to i32, !dbg !450
  %gcov_ctr.i88 = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %41 = add i64 %gcov_ctr.i88, 1
  store i64 %41, ptr @__llvm_gcov_ctr.17, align 8
  tail call void @tracer_hardirqs_off(i32 noundef %40, i32 noundef 0) #11, !dbg !451
  %gcov_ctr.i80 = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %42 = add i64 %gcov_ctr.i80, 1
  store i64 %42, ptr @__llvm_gcov_ctr.15, align 8
  %gcov_ctr.i.i81 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !452
  %43 = add i64 %gcov_ctr.i.i81, 1, !dbg !452
  store i64 %43, ptr @__llvm_gcov_ctr.13, align 8, !dbg !452
  %44 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !452
  %and.i.i = and i32 %44, -16384, !dbg !455
  %45 = inttoptr i32 %and.i.i to ptr, !dbg !456
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1, !dbg !457
  %46 = ptrtoint ptr %preempt_count.i to i32, !dbg !457
  call void @__asan_load4_noabort(i32 %46), !dbg !457
  %47 = load volatile i32, ptr %preempt_count.i, align 4, !dbg !457
  %and = and i32 %47, 15728640, !dbg !458
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !458
  %tobool67.not = icmp eq i32 %and, 0, !dbg !458
  br i1 %tobool67.not, label %if.then68, label %do.end58.if.end70_crit_edge, !dbg !459

do.end58.if.end70_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #10, !dbg !459
  br label %if.end70, !dbg !459

if.then68:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #10, !dbg !460
  %gcov_ctr73 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.23, i32 0, i32 2), align 16, !dbg !460
  %48 = add i64 %gcov_ctr73, 1, !dbg !460
  store i64 %48, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.23, i32 0, i32 2), align 16, !dbg !460
  %gcov_ctr.i89 = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %49 = add i64 %gcov_ctr.i89, 1
  store i64 %49, ptr @__llvm_gcov_ctr.17, align 8
  tail call fastcc void @trace_irq_disable(i32 noundef %40), !dbg !461
  br label %if.end70, !dbg !461

if.end70:                                         ; preds = %if.then68, %do.end58.if.end70_crit_edge
  %gcov_ctr74 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.23, i32 0, i32 3), align 8, !dbg !462
  %50 = add i64 %gcov_ctr74, 1, !dbg !462
  store i64 %50, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.23, i32 0, i32 3), align 8, !dbg !462
  br label %if.end71, !dbg !462

if.end71:                                         ; preds = %if.end70, %entry.if.end71_crit_edge
  ret void, !dbg !463
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracer_hardirqs_off(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_irq_disable(i32 noundef %ip) unnamed_addr #3 align 64 !dbg !464 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !465
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.24, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.24, align 16
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.36, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.36, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irq_disable, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_irq_disable, %do.body)) #11
          to label %if.end48 [label %do.body], !dbg !466, !srcloc !207

do.body:                                          ; preds = %entry
  %gcov_ctr1.i.i45 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !469
  %2 = add i64 %gcov_ctr1.i.i45, 1, !dbg !469
  store i64 %2, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !469
  %gcov_ctr.i8 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !470
  %3 = add i64 %gcov_ctr.i8, 1, !dbg !470
  store i64 %3, ptr @__llvm_gcov_ctr.13, align 8, !dbg !470
  %4 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !470
  %and.i = and i32 %4, -16384, !dbg !472
  %5 = inttoptr i32 %and.i to ptr, !dbg !473
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3, !dbg !474
  %6 = ptrtoint ptr %cpu to i32, !dbg !474
  call void @__asan_load4_noabort(i32 %6), !dbg !474
  %7 = load i32, ptr %cpu, align 4, !dbg !474
  %gcov_ctr.i9 = load i64, ptr @__llvm_gcov_ctr.37, align 8
  %8 = add i64 %gcov_ctr.i9, 1
  store i64 %8, ptr @__llvm_gcov_ctr.37, align 8
  %gcov_ctr.i.i10 = load i64, ptr @__llvm_gcov_ctr.41, align 8
  %9 = add i64 %gcov_ctr.i.i10, 1
  store i64 %9, ptr @__llvm_gcov_ctr.41, align 8
  %gcov_ctr.i1.i.i = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %10 = add i64 %gcov_ctr.i1.i.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.43, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !475
  %11 = load i32, ptr @nr_cpu_ids, align 4, !dbg !475
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.44, align 16
  %12 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.44, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7), !dbg !479
  %cmp.not.i.i.i.i = icmp ugt i32 %11, %7, !dbg !479
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i, !dbg !479

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10, !dbg !479
  br label %cpu_online.exit, !dbg !479

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %gcov_ctr35.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !479
  %13 = add i64 %gcov_ctr35.i.i.i.i, 1, !dbg !479
  store i64 %13, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !479
  %.b40.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !479
  br i1 %.b40.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !dbg !479, !prof !97

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !479
  br label %cpu_online.exit, !dbg !479

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !479
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !479
  %gcov_ctr36.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !479
  %14 = add i64 %gcov_ctr36.i.i.i.i, 1, !dbg !479
  store i64 %14, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !479
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #11, !dbg !479
  %gcov_ctr37.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !479
  %15 = add i64 %gcov_ctr37.i.i.i.i, 1, !dbg !479
  store i64 %15, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !479
  br label %cpu_online.exit, !dbg !479

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %gcov_ctr.i.i.i11 = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %16 = add i64 %gcov_ctr.i.i.i11, 1
  store i64 %16, ptr @__llvm_gcov_ctr.42, align 8
  %div1.i.i.i = lshr i32 %7, 5, !dbg !481
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i, !dbg !483
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32, !dbg !483
  call void @__asan_load4_noabort(i32 %17), !dbg !483
  %18 = load volatile i32, ptr %arrayidx.i.i.i, align 4, !dbg !483
  %and.i.i.i12 = and i32 %7, 31, !dbg !484
  %19 = shl nuw i32 1, %and.i.i.i12, !dbg !485
  %20 = and i32 %18, %19, !dbg !485
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20), !dbg !485
  %tobool.i.not = icmp eq i32 %20, 0, !dbg !485
  br i1 %tobool.i.not, label %cleanup.thread, label %if.end31, !dbg !474

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10, !dbg !486
  %gcov_ctr70 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 1), align 8
  %21 = add i64 %gcov_ctr70, 1
  store i64 %21, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 1), align 8
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %gcov_ctr.i2 = load i64, ptr @__llvm_gcov_ctr.12, align 8
  %22 = add i64 %gcov_ctr.i2, 1
  store i64 %22, ptr @__llvm_gcov_ctr.12, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !487
  %23 = add i64 %gcov_ctr.i.i, 1, !dbg !487
  store i64 %23, ptr @__llvm_gcov_ctr.35, align 8, !dbg !487
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !490
  %24 = add i64 %gcov_ctr.i.i.i, 1, !dbg !490
  store i64 %24, ptr @__llvm_gcov_ctr.13, align 8, !dbg !490
  %25 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !490
  %and.i.i.i = and i32 %25, -16384, !dbg !492
  %26 = inttoptr i32 %and.i.i.i to ptr, !dbg !493
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1, !dbg !494
  %27 = ptrtoint ptr %preempt_count.i.i to i32, !dbg !495
  call void @__asan_load4_noabort(i32 %27), !dbg !495
  %28 = load volatile i32, ptr %preempt_count.i.i, align 4, !dbg !495
  %add.i = add i32 %28, 1, !dbg !495
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4, !dbg !495
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !474, !srcloc !496
  %gcov_ctr.i13 = load i64, ptr @__llvm_gcov_ctr, align 16, !dbg !497
  %29 = add i64 %gcov_ctr.i13, 1, !dbg !497
  store i64 %29, ptr @__llvm_gcov_ctr, align 16, !dbg !497
  %30 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irq_disable, i32 0, i32 7), align 4, !dbg !497
  %tobool.not.i = icmp eq ptr %30, null, !dbg !497
  br i1 %tobool.not.i, label %if.end31.do.end47_crit_edge, label %if.end31.do.body2.i_crit_edge, !dbg !497

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i, !dbg !497

if.end31.do.end47_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10, !dbg !497
  br label %do.end47, !dbg !497

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %30, %if.end31.do.body2.i_crit_edge ], !dbg !497
  %gcov_ctr11.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !497
  %31 = add i64 %gcov_ctr11.i, 1, !dbg !497
  store i64 %31, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !497
  %32 = ptrtoint ptr %it_func_ptr.0.i to i32, !dbg !497
  call void @__asan_load4_noabort(i32 %32), !dbg !497
  %33 = load volatile ptr, ptr %it_func_ptr.0.i, align 4, !dbg !497
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1, !dbg !497
  %34 = ptrtoint ptr %data.i to i32, !dbg !497
  call void @__asan_load4_noabort(i32 %34), !dbg !497
  %35 = load ptr, ptr %data.i, align 4, !dbg !497
  tail call void %33(ptr noundef %35, i32 noundef %ip, i32 noundef 0) #11, !dbg !497
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1, !dbg !497
  %36 = ptrtoint ptr %incdec.ptr.i to i32, !dbg !497
  call void @__asan_load4_noabort(i32 %36), !dbg !497
  %37 = load ptr, ptr %incdec.ptr.i, align 4, !dbg !497
  %tobool9.not.i = icmp eq ptr %37, null, !dbg !497
  br i1 %tobool9.not.i, label %do.end10.i, label %do.body2.i.do.body2.i_crit_edge, !dbg !497, !llvm.loop !499

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !497
  br label %do.body2.i, !dbg !497

do.end10.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !497
  %gcov_ctr12.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !497
  %38 = add i64 %gcov_ctr12.i, 1, !dbg !497
  store i64 %38, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !497
  br label %do.end47, !dbg !497

do.end47:                                         ; preds = %do.end10.i, %if.end31.do.end47_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !474, !srcloc !500
  %gcov_ctr.i3 = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %39 = add i64 %gcov_ctr.i3, 1
  store i64 %39, ptr @__llvm_gcov_ctr.14, align 8
  %gcov_ctr.i.i4 = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !501
  %40 = add i64 %gcov_ctr.i.i4, 1, !dbg !501
  store i64 %40, ptr @__llvm_gcov_ctr.35, align 8, !dbg !501
  %gcov_ctr.i.i.i5 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !504
  %41 = add i64 %gcov_ctr.i.i.i5, 1, !dbg !504
  store i64 %41, ptr @__llvm_gcov_ctr.13, align 8, !dbg !504
  %42 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !504
  %and.i.i.i6 = and i32 %42, -16384, !dbg !506
  %43 = inttoptr i32 %and.i.i.i6 to ptr, !dbg !507
  %preempt_count.i.i7 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1, !dbg !508
  %44 = ptrtoint ptr %preempt_count.i.i7 to i32, !dbg !509
  call void @__asan_load4_noabort(i32 %44), !dbg !509
  %45 = load volatile i32, ptr %preempt_count.i.i7, align 4, !dbg !509
  %sub.i = add i32 %45, -1, !dbg !509
  store volatile i32 %sub.i, ptr %preempt_count.i.i7, align 4, !dbg !509
  %gcov_ctr74 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 5), align 8, !dbg !474
  %46 = add i64 %gcov_ctr74, 1, !dbg !474
  store i64 %46, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 5), align 8, !dbg !474
  br label %if.end48, !dbg !474

if.end48:                                         ; preds = %do.end47, %entry
  %__llvm_gcov_ctr.40.sink46 = phi ptr [ getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 7), %do.end47 ], [ @__llvm_gcov_ctr.40, %entry ]
  %47 = ptrtoint ptr %__llvm_gcov_ctr.40.sink46 to i32, !dbg !486
  call void @__asan_load8_noabort(i32 %47), !dbg !486
  %gcov_ctr1.i.i = load i64, ptr %__llvm_gcov_ctr.40.sink46, align 8, !dbg !486
  %48 = add i64 %gcov_ctr1.i.i, 1, !dbg !486
  store i64 %48, ptr %__llvm_gcov_ctr.40.sink46, align 8, !dbg !486
  %gcov_ctr.i14 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !510
  %49 = add i64 %gcov_ctr.i14, 1, !dbg !510
  store i64 %49, ptr @__llvm_gcov_ctr.13, align 8, !dbg !510
  %50 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !510
  %and.i15 = and i32 %50, -16384, !dbg !512
  %51 = inttoptr i32 %and.i15 to ptr, !dbg !513
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3, !dbg !474
  %52 = ptrtoint ptr %cpu50 to i32, !dbg !474
  call void @__asan_load4_noabort(i32 %52), !dbg !474
  %53 = load i32, ptr %cpu50, align 4, !dbg !474
  %gcov_ctr.i16 = load i64, ptr @__llvm_gcov_ctr.37, align 8
  %54 = add i64 %gcov_ctr.i16, 1
  store i64 %54, ptr @__llvm_gcov_ctr.37, align 8
  %gcov_ctr.i.i17 = load i64, ptr @__llvm_gcov_ctr.41, align 8
  %55 = add i64 %gcov_ctr.i.i17, 1
  store i64 %55, ptr @__llvm_gcov_ctr.41, align 8
  %gcov_ctr.i1.i.i18 = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %56 = add i64 %gcov_ctr.i1.i.i18, 1
  store i64 %56, ptr @__llvm_gcov_ctr.43, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !514
  %57 = load i32, ptr @nr_cpu_ids, align 4, !dbg !514
  %gcov_ctr.i.i.i.i19 = load i64, ptr @__llvm_gcov_ctr.44, align 16
  %58 = add i64 %gcov_ctr.i.i.i.i19, 1
  store i64 %58, ptr @__llvm_gcov_ctr.44, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %53), !dbg !518
  %cmp.not.i.i.i.i20 = icmp ugt i32 %57, %53, !dbg !518
  br i1 %cmp.not.i.i.i.i20, label %if.end48.cpu_online.exit32_crit_edge, label %land.rhs.i.i.i.i23, !dbg !518

if.end48.cpu_online.exit32_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10, !dbg !518
  br label %cpu_online.exit32, !dbg !518

land.rhs.i.i.i.i23:                               ; preds = %if.end48
  %gcov_ctr35.i.i.i.i21 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !518
  %59 = add i64 %gcov_ctr35.i.i.i.i21, 1, !dbg !518
  store i64 %59, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !518
  %.b40.i.i.i.i22 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !518
  br i1 %.b40.i.i.i.i22, label %land.rhs.i.i.i.i23.cpu_online.exit32_crit_edge, label %if.then.i.i.i.i26, !dbg !518, !prof !97

land.rhs.i.i.i.i23.cpu_online.exit32_crit_edge:   ; preds = %land.rhs.i.i.i.i23
  call void @__sanitizer_cov_trace_pc() #10, !dbg !518
  br label %cpu_online.exit32, !dbg !518

if.then.i.i.i.i26:                                ; preds = %land.rhs.i.i.i.i23
  call void @__sanitizer_cov_trace_pc() #10, !dbg !518
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !518
  %gcov_ctr36.i.i.i.i24 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !518
  %60 = add i64 %gcov_ctr36.i.i.i.i24, 1, !dbg !518
  store i64 %60, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !518
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #11, !dbg !518
  %gcov_ctr37.i.i.i.i25 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !518
  %61 = add i64 %gcov_ctr37.i.i.i.i25, 1, !dbg !518
  store i64 %61, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !518
  br label %cpu_online.exit32, !dbg !518

cpu_online.exit32:                                ; preds = %if.then.i.i.i.i26, %land.rhs.i.i.i.i23.cpu_online.exit32_crit_edge, %if.end48.cpu_online.exit32_crit_edge
  %gcov_ctr.i.i.i27 = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %62 = add i64 %gcov_ctr.i.i.i27, 1
  store i64 %62, ptr @__llvm_gcov_ctr.42, align 8
  %div1.i.i.i28 = lshr i32 %53, 5, !dbg !520
  %arrayidx.i.i.i29 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i28, !dbg !522
  %63 = ptrtoint ptr %arrayidx.i.i.i29 to i32, !dbg !522
  call void @__asan_load4_noabort(i32 %63), !dbg !522
  %64 = load volatile i32, ptr %arrayidx.i.i.i29, align 4, !dbg !522
  %and.i.i.i30 = and i32 %53, 31, !dbg !523
  %65 = shl nuw i32 1, %and.i.i.i30, !dbg !524
  %66 = and i32 %64, %65, !dbg !524
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66), !dbg !524
  %tobool.i31.not = icmp eq i32 %66, 0, !dbg !524
  br i1 %tobool.i31.not, label %cpu_online.exit32.if.end69_crit_edge, label %if.then52, !dbg !474

cpu_online.exit32.if.end69_crit_edge:             ; preds = %cpu_online.exit32
  call void @__sanitizer_cov_trace_pc() #10, !dbg !474
  br label %if.end69, !dbg !474

if.then52:                                        ; preds = %cpu_online.exit32
  %gcov_ctr.i33 = load i64, ptr @__llvm_gcov_ctr.38, align 8, !dbg !525
  %67 = add i64 %gcov_ctr.i33, 1, !dbg !525
  store i64 %67, ptr @__llvm_gcov_ctr.38, align 8, !dbg !525
  %gcov_ctr.i.i34 = load i64, ptr @__llvm_gcov_ctr.12, align 8
  %68 = add i64 %gcov_ctr.i.i34, 1
  store i64 %68, ptr @__llvm_gcov_ctr.12, align 8
  %gcov_ctr.i.i.i35 = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !527
  %69 = add i64 %gcov_ctr.i.i.i35, 1, !dbg !527
  store i64 %69, ptr @__llvm_gcov_ctr.35, align 8, !dbg !527
  %gcov_ctr.i.i.i.i36 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !530
  %70 = add i64 %gcov_ctr.i.i.i.i36, 1, !dbg !530
  store i64 %70, ptr @__llvm_gcov_ctr.13, align 8, !dbg !530
  %71 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !530
  %and.i.i.i.i = and i32 %71, -16384, !dbg !532
  %72 = inttoptr i32 %and.i.i.i.i to ptr, !dbg !533
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1, !dbg !534
  %73 = ptrtoint ptr %preempt_count.i.i.i to i32, !dbg !535
  call void @__asan_load4_noabort(i32 %73), !dbg !535
  %74 = load volatile i32, ptr %preempt_count.i.i.i, align 4, !dbg !535
  %add.i.i = add i32 %74, 1, !dbg !535
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4, !dbg !535
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !525, !srcloc !284
  %75 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irq_disable, i32 0, i32 7), align 4, !dbg !474
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11, !dbg !474
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58), !dbg !474
  %tobool59.not = icmp eq i32 %call58, 0, !dbg !474
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge, !dbg !474

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10, !dbg !474
  br label %do.end67, !dbg !474

land.lhs.true:                                    ; preds = %if.then52
  %gcov_ctr77 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 8), align 16, !dbg !474
  %76 = add i64 %gcov_ctr77, 1, !dbg !474
  store i64 %76, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 8), align 16, !dbg !474
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11, !dbg !474
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60), !dbg !474
  %tobool61.not = icmp eq i32 %call60, 0, !dbg !474
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62, !dbg !474

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10, !dbg !474
  br label %do.end67, !dbg !474

land.lhs.true62:                                  ; preds = %land.lhs.true
  %gcov_ctr78 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 9), align 8, !dbg !474
  %77 = add i64 %gcov_ctr78, 1, !dbg !474
  store i64 %77, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 9), align 8, !dbg !474
  %.b1 = load i1, ptr @trace_irq_disable.__warned, align 1, !dbg !474
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64, !dbg !474

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10, !dbg !474
  br label %do.end67, !dbg !474

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10, !dbg !474
  %gcov_ctr79 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 10), align 16, !dbg !474
  %78 = add i64 %gcov_ctr79, 1, !dbg !474
  store i64 %78, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 10), align 16, !dbg !474
  store i1 true, ptr @trace_irq_disable.__warned, align 1, !dbg !474
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 38, ptr noundef nonnull @.str.5) #11, !dbg !474
  br label %do.end67, !dbg !474

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  %gcov_ctr80 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 11), align 8, !dbg !474
  %79 = add i64 %gcov_ctr80, 1, !dbg !474
  store i64 %79, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 11), align 8, !dbg !474
  %gcov_ctr.i37 = load i64, ptr @__llvm_gcov_ctr.39, align 8, !dbg !536
  %80 = add i64 %gcov_ctr.i37, 1, !dbg !536
  store i64 %80, ptr @__llvm_gcov_ctr.39, align 8, !dbg !536
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !536, !srcloc !288
  %gcov_ctr.i.i38 = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %81 = add i64 %gcov_ctr.i.i38, 1
  store i64 %81, ptr @__llvm_gcov_ctr.14, align 8
  %gcov_ctr.i.i.i39 = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !538
  %82 = add i64 %gcov_ctr.i.i.i39, 1, !dbg !538
  store i64 %82, ptr @__llvm_gcov_ctr.35, align 8, !dbg !538
  %gcov_ctr.i.i.i.i40 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !541
  %83 = add i64 %gcov_ctr.i.i.i.i40, 1, !dbg !541
  store i64 %83, ptr @__llvm_gcov_ctr.13, align 8, !dbg !541
  %84 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !541
  %and.i.i.i.i41 = and i32 %84, -16384, !dbg !543
  %85 = inttoptr i32 %and.i.i.i.i41 to ptr, !dbg !544
  %preempt_count.i.i.i42 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 1, !dbg !545
  %86 = ptrtoint ptr %preempt_count.i.i.i42 to i32, !dbg !546
  call void @__asan_load4_noabort(i32 %86), !dbg !546
  %87 = load volatile i32, ptr %preempt_count.i.i.i42, align 4, !dbg !546
  %sub.i.i = add i32 %87, -1, !dbg !546
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i42, align 4, !dbg !546
  br label %if.end69, !dbg !474

if.end69:                                         ; preds = %do.end67, %cpu_online.exit32.if.end69_crit_edge, %cleanup.thread
  ret void, !dbg !474
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trace_hardirqs_off() #0 align 64 !dbg !547 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !548
  %0 = tail call ptr @llvm.returnaddress(i32 0), !dbg !549
  %1 = ptrtoint ptr %0 to i32, !dbg !549
  tail call void @lockdep_hardirqs_off(i32 noundef %1) #11, !dbg !550
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.12, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.12, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !551
  %3 = add i64 %gcov_ctr.i.i, 1, !dbg !551
  store i64 %3, ptr @__llvm_gcov_ctr.35, align 8, !dbg !551
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !554
  %4 = add i64 %gcov_ctr.i.i.i, 1, !dbg !554
  store i64 %4, ptr @__llvm_gcov_ctr.13, align 8, !dbg !554
  %5 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !554
  %and.i.i.i = and i32 %5, -16384, !dbg !556
  %6 = inttoptr i32 %and.i.i.i to ptr, !dbg !557
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1, !dbg !558
  %7 = ptrtoint ptr %preempt_count.i.i to i32, !dbg !559
  call void @__asan_load4_noabort(i32 %7), !dbg !559
  %8 = load volatile i32, ptr %preempt_count.i.i, align 4, !dbg !559
  %add.i = add i32 %8, 1, !dbg !559
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4, !dbg !559
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !560, !srcloc !561
  %gcov_ctr.i82 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !562
  %9 = add i64 %gcov_ctr.i82, 1, !dbg !562
  store i64 %9, ptr @__llvm_gcov_ctr.13, align 8, !dbg !562
  %10 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !562
  %and.i = and i32 %10, -16384, !dbg !564
  %11 = inttoptr i32 %and.i to ptr, !dbg !565
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3, !dbg !560
  %12 = ptrtoint ptr %cpu to i32, !dbg !560
  call void @__asan_load4_noabort(i32 %12), !dbg !560
  %13 = load i32, ptr %cpu, align 4, !dbg !560
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13, !dbg !560
  %14 = ptrtoint ptr %arrayidx to i32, !dbg !560
  call void @__asan_load4_noabort(i32 %14), !dbg !560
  %15 = load i32, ptr %arrayidx, align 4, !dbg !560
  %add = add i32 %15, ptrtoint (ptr @tracing_irq_cpu to i32), !dbg !560
  %16 = inttoptr i32 %add to ptr, !dbg !560
  %17 = ptrtoint ptr %16 to i32, !dbg !560
  call void @__asan_load4_noabort(i32 %17), !dbg !560
  %18 = load volatile i32, ptr %16, align 4, !dbg !560
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !560, !srcloc !566
  %gcov_ctr.i75 = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %19 = add i64 %gcov_ctr.i75, 1
  store i64 %19, ptr @__llvm_gcov_ctr.14, align 8
  %gcov_ctr.i.i76 = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !567
  %20 = add i64 %gcov_ctr.i.i76, 1, !dbg !567
  store i64 %20, ptr @__llvm_gcov_ctr.35, align 8, !dbg !567
  %gcov_ctr.i.i.i77 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !570
  %21 = add i64 %gcov_ctr.i.i.i77, 1, !dbg !570
  store i64 %21, ptr @__llvm_gcov_ctr.13, align 8, !dbg !570
  %22 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !570
  %and.i.i.i78 = and i32 %22, -16384, !dbg !572
  %23 = inttoptr i32 %and.i.i.i78 to ptr, !dbg !573
  %preempt_count.i.i79 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1, !dbg !574
  %24 = ptrtoint ptr %preempt_count.i.i79 to i32, !dbg !575
  call void @__asan_load4_noabort(i32 %24), !dbg !575
  %25 = load volatile i32, ptr %preempt_count.i.i79, align 4, !dbg !575
  %sub.i = add i32 %25, -1, !dbg !575
  store volatile i32 %sub.i, ptr %preempt_count.i.i79, align 4, !dbg !575
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.25, align 16, !dbg !560
  %26 = add i64 %gcov_ctr, 1, !dbg !560
  store i64 %26, ptr @__llvm_gcov_ctr.25, align 16, !dbg !560
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18), !dbg !560
  %tobool.not = icmp eq i32 %18, 0, !dbg !560
  br i1 %tobool.not, label %do.body20, label %entry.if.end71_crit_edge, !dbg !576

entry.if.end71_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !576
  br label %if.end71, !dbg !576

do.body20:                                        ; preds = %entry
  %gcov_ctr.i83 = load i64, ptr @__llvm_gcov_ctr.18, align 8
  %27 = add i64 %gcov_ctr.i83, 1
  store i64 %27, ptr @__llvm_gcov_ctr.18, align 8
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !dbg !577, !srcloc !179
  %29 = ptrtoint ptr %cpu to i32, !dbg !579
  call void @__asan_load4_noabort(i32 %29), !dbg !579
  %30 = load i32, ptr %cpu, align 4, !dbg !579
  %arrayidx40 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30, !dbg !579
  %31 = ptrtoint ptr %arrayidx40 to i32, !dbg !579
  call void @__asan_load4_noabort(i32 %31), !dbg !579
  %32 = load i32, ptr %arrayidx40, align 4, !dbg !579
  %add41 = add i32 %32, ptrtoint (ptr @tracing_irq_cpu to i32), !dbg !579
  %33 = inttoptr i32 %add41 to ptr, !dbg !579
  %34 = ptrtoint ptr %33 to i32, !dbg !579
  call void @__asan_store4_noabort(i32 %34), !dbg !579
  store i32 1, ptr %33, align 4, !dbg !579
  %gcov_ctr.i84 = load i64, ptr @__llvm_gcov_ctr.19, align 8, !dbg !580
  %35 = add i64 %gcov_ctr.i84, 1, !dbg !580
  store i64 %35, ptr @__llvm_gcov_ctr.19, align 8, !dbg !580
  %gcov_ctr.i.i85 = load i64, ptr @__llvm_gcov_ctr.46, align 8
  %36 = add i64 %gcov_ctr.i.i85, 1
  store i64 %36, ptr @__llvm_gcov_ctr.46, align 8
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !dbg !582, !srcloc !188
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %38 = add i64 %gcov_ctr.i2.i, 1
  store i64 %38, ptr @__llvm_gcov_ctr.45, align 8
  %and.i.i86 = and i32 %37, 128, !dbg !584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i86), !dbg !579
  %tobool52.not = icmp eq i32 %and.i.i86, 0, !dbg !579
  br i1 %tobool52.not, label %if.then56, label %do.body20.do.end58_crit_edge, !dbg !579, !prof !99

do.body20.do.end58_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10, !dbg !579
  br label %do.end58, !dbg !579

if.then56:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10, !dbg !579
  %gcov_ctr72 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 1), align 8, !dbg !579
  %39 = add i64 %gcov_ctr72, 1, !dbg !579
  store i64 %39, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 1), align 8, !dbg !579
  tail call void @warn_bogus_irq_restore() #11, !dbg !579
  br label %do.end58, !dbg !579

do.end58:                                         ; preds = %if.then56, %do.body20.do.end58_crit_edge
  %gcov_ctr.i87 = load i64, ptr @__llvm_gcov_ctr.20, align 8
  %40 = add i64 %gcov_ctr.i87, 1
  store i64 %40, ptr @__llvm_gcov_ctr.20, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #11, !dbg !586, !srcloc !195
  %gcov_ctr.i88 = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %41 = add i64 %gcov_ctr.i88, 1
  store i64 %41, ptr @__llvm_gcov_ctr.17, align 8
  tail call void @tracer_hardirqs_off(i32 noundef %1, i32 noundef 0) #11, !dbg !588
  %gcov_ctr.i80 = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %42 = add i64 %gcov_ctr.i80, 1
  store i64 %42, ptr @__llvm_gcov_ctr.15, align 8
  %gcov_ctr.i.i81 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !589
  %43 = add i64 %gcov_ctr.i.i81, 1, !dbg !589
  store i64 %43, ptr @__llvm_gcov_ctr.13, align 8, !dbg !589
  %44 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !589
  %and.i.i = and i32 %44, -16384, !dbg !592
  %45 = inttoptr i32 %and.i.i to ptr, !dbg !593
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1, !dbg !594
  %46 = ptrtoint ptr %preempt_count.i to i32, !dbg !594
  call void @__asan_load4_noabort(i32 %46), !dbg !594
  %47 = load volatile i32, ptr %preempt_count.i, align 4, !dbg !594
  %and = and i32 %47, 15728640, !dbg !595
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !595
  %tobool67.not = icmp eq i32 %and, 0, !dbg !595
  br i1 %tobool67.not, label %if.then68, label %do.end58.if.end70_crit_edge, !dbg !596

do.end58.if.end70_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #10, !dbg !596
  br label %if.end70, !dbg !596

if.then68:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #10, !dbg !597
  %gcov_ctr73 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 2), align 16, !dbg !597
  %48 = add i64 %gcov_ctr73, 1, !dbg !597
  store i64 %48, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 2), align 16, !dbg !597
  %gcov_ctr.i89 = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %49 = add i64 %gcov_ctr.i89, 1
  store i64 %49, ptr @__llvm_gcov_ctr.17, align 8
  tail call fastcc void @trace_irq_disable_rcuidle(i32 noundef %1, i32 noundef 0), !dbg !598
  br label %if.end70, !dbg !598

if.end70:                                         ; preds = %if.then68, %do.end58.if.end70_crit_edge
  %gcov_ctr74 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 3), align 8, !dbg !599
  %50 = add i64 %gcov_ctr74, 1, !dbg !599
  store i64 %50, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 3), align 8, !dbg !599
  br label %if.end71, !dbg !599

if.end71:                                         ; preds = %if.end70, %entry.if.end71_crit_edge
  ret void, !dbg !600
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_hardirqs_off(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_irq_disable_rcuidle(i32 noundef %ip, i32 noundef %parent_ip) unnamed_addr #3 align 64 !dbg !601 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !602
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.26, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.26, align 16
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.36, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.36, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irq_disable, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_irq_disable_rcuidle, %do.body)) #11
          to label %if.end53 [label %do.body], !dbg !603, !srcloc !207

do.body:                                          ; preds = %entry
  %gcov_ctr1.i.i82 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !606
  %2 = add i64 %gcov_ctr1.i.i82, 1, !dbg !606
  store i64 %2, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !606
  %gcov_ctr.i72 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !607
  %3 = add i64 %gcov_ctr.i72, 1, !dbg !607
  store i64 %3, ptr @__llvm_gcov_ctr.13, align 8, !dbg !607
  %4 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !607
  %and.i = and i32 %4, -16384, !dbg !609
  %5 = inttoptr i32 %and.i to ptr, !dbg !610
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3, !dbg !611
  %6 = ptrtoint ptr %cpu to i32, !dbg !611
  call void @__asan_load4_noabort(i32 %6), !dbg !611
  %7 = load i32, ptr %cpu, align 4, !dbg !611
  %gcov_ctr.i73 = load i64, ptr @__llvm_gcov_ctr.37, align 8
  %8 = add i64 %gcov_ctr.i73, 1
  store i64 %8, ptr @__llvm_gcov_ctr.37, align 8
  %gcov_ctr.i.i74 = load i64, ptr @__llvm_gcov_ctr.41, align 8
  %9 = add i64 %gcov_ctr.i.i74, 1
  store i64 %9, ptr @__llvm_gcov_ctr.41, align 8
  %gcov_ctr.i1.i.i = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %10 = add i64 %gcov_ctr.i1.i.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.43, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !612
  %11 = load i32, ptr @nr_cpu_ids, align 4, !dbg !612
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.44, align 16
  %12 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.44, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7), !dbg !616
  %cmp.not.i.i.i.i = icmp ugt i32 %11, %7, !dbg !616
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i, !dbg !616

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10, !dbg !616
  br label %cpu_online.exit, !dbg !616

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %gcov_ctr35.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !616
  %13 = add i64 %gcov_ctr35.i.i.i.i, 1, !dbg !616
  store i64 %13, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !616
  %.b40.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !616
  br i1 %.b40.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !dbg !616, !prof !97

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !616
  br label %cpu_online.exit, !dbg !616

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !616
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !616
  %gcov_ctr36.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !616
  %14 = add i64 %gcov_ctr36.i.i.i.i, 1, !dbg !616
  store i64 %14, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !616
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #11, !dbg !616
  %gcov_ctr37.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !616
  %15 = add i64 %gcov_ctr37.i.i.i.i, 1, !dbg !616
  store i64 %15, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !616
  br label %cpu_online.exit, !dbg !616

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %gcov_ctr.i.i.i75 = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %16 = add i64 %gcov_ctr.i.i.i75, 1
  store i64 %16, ptr @__llvm_gcov_ctr.42, align 8
  %div1.i.i.i = lshr i32 %7, 5, !dbg !618
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i, !dbg !620
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32, !dbg !620
  call void @__asan_load4_noabort(i32 %17), !dbg !620
  %18 = load volatile i32, ptr %arrayidx.i.i.i, align 4, !dbg !620
  %and.i.i.i76 = and i32 %7, 31, !dbg !621
  %19 = shl nuw i32 1, %and.i.i.i76, !dbg !622
  %20 = and i32 %18, %19, !dbg !622
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20), !dbg !622
  %tobool.i.not = icmp eq i32 %20, 0, !dbg !622
  br i1 %tobool.i.not, label %cpu_online.exit.if.end53_crit_edge, label %if.end, !dbg !611

cpu_online.exit.if.end53_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10, !dbg !611
  br label %if.end53, !dbg !611

if.end:                                           ; preds = %cpu_online.exit
  %gcov_ctr.i64 = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %21 = add i64 %gcov_ctr.i64, 1
  store i64 %21, ptr @__llvm_gcov_ctr.15, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !623
  %22 = add i64 %gcov_ctr.i.i, 1, !dbg !623
  store i64 %22, ptr @__llvm_gcov_ctr.13, align 8, !dbg !623
  %23 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !623
  %and.i.i = and i32 %23, -16384, !dbg !626
  %24 = inttoptr i32 %and.i.i to ptr, !dbg !627
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1, !dbg !628
  %25 = ptrtoint ptr %preempt_count.i to i32, !dbg !628
  call void @__asan_load4_noabort(i32 %25), !dbg !628
  %26 = load volatile i32, ptr %preempt_count.i, align 4, !dbg !628
  %and = and i32 %26, 15728640, !dbg !611
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !611
  %tobool.not = icmp eq i32 %and, 0, !dbg !611
  br i1 %tobool.not, label %if.end.if.end35_crit_edge, label %land.rhs, !dbg !611

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10, !dbg !611
  br label %if.end35, !dbg !611

land.rhs:                                         ; preds = %if.end
  %gcov_ctr55 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 2), align 16, !dbg !611
  %27 = add i64 %gcov_ctr55, 1, !dbg !611
  store i64 %27, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 2), align 16, !dbg !611
  %.b63 = load i1, ptr @trace_irq_disable_rcuidle.__already_done, align 1, !dbg !611
  br i1 %.b63, label %land.rhs.if.end35_crit_edge, label %if.then12, !dbg !611, !prof !97

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10, !dbg !611
  br label %if.end35, !dbg !611

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10, !dbg !611
  store i1 true, ptr @trace_irq_disable_rcuidle.__already_done, align 1, !dbg !611
  %gcov_ctr56 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 3), align 8, !dbg !611
  %28 = add i64 %gcov_ctr56, 1, !dbg !611
  store i64 %28, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 3), align 8, !dbg !611
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 38, i32 noundef 9, ptr noundef null) #11, !dbg !611
  %gcov_ctr57 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 4), align 16, !dbg !611
  %29 = add i64 %gcov_ctr57, 1, !dbg !611
  store i64 %29, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 4), align 16, !dbg !611
  br label %if.end35, !dbg !611

if.end35:                                         ; preds = %if.then12, %land.rhs.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %gcov_ctr.i65 = load i64, ptr @__llvm_gcov_ctr.12, align 8
  %30 = add i64 %gcov_ctr.i65, 1
  store i64 %30, ptr @__llvm_gcov_ctr.12, align 8
  %gcov_ctr.i.i66 = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !629
  %31 = add i64 %gcov_ctr.i.i66, 1, !dbg !629
  store i64 %31, ptr @__llvm_gcov_ctr.35, align 8, !dbg !629
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !632
  %32 = add i64 %gcov_ctr.i.i.i, 1, !dbg !632
  store i64 %32, ptr @__llvm_gcov_ctr.13, align 8, !dbg !632
  %33 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !632
  %and.i.i.i = and i32 %33, -16384, !dbg !634
  %34 = inttoptr i32 %and.i.i.i to ptr, !dbg !635
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1, !dbg !636
  %35 = ptrtoint ptr %preempt_count.i.i to i32, !dbg !637
  call void @__asan_load4_noabort(i32 %35), !dbg !637
  %36 = load volatile i32, ptr %preempt_count.i.i, align 4, !dbg !637
  %add.i = add i32 %36, 1, !dbg !637
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4, !dbg !637
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !611, !srcloc !638
  %gcov_ctr.i77 = load i64, ptr @__llvm_gcov_ctr.47, align 8
  %37 = add i64 %gcov_ctr.i77, 1
  store i64 %37, ptr @__llvm_gcov_ctr.47, align 8
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #11, !dbg !639
  tail call void @rcu_irq_enter_irqson() #11, !dbg !611
  %gcov_ctr.i78 = load i64, ptr @__llvm_gcov_ctr, align 16, !dbg !641
  %38 = add i64 %gcov_ctr.i78, 1, !dbg !641
  store i64 %38, ptr @__llvm_gcov_ctr, align 16, !dbg !641
  %39 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irq_disable, i32 0, i32 7), align 4, !dbg !641
  %tobool.not.i = icmp eq ptr %39, null, !dbg !641
  br i1 %tobool.not.i, label %if.end35.do.end52_crit_edge, label %if.end35.do.body2.i_crit_edge, !dbg !641

if.end35.do.body2.i_crit_edge:                    ; preds = %if.end35
  br label %do.body2.i, !dbg !641

if.end35.do.end52_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10, !dbg !641
  br label %do.end52, !dbg !641

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end35.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %39, %if.end35.do.body2.i_crit_edge ], !dbg !641
  %gcov_ctr11.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !641
  %40 = add i64 %gcov_ctr11.i, 1, !dbg !641
  store i64 %40, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !641
  %41 = ptrtoint ptr %it_func_ptr.0.i to i32, !dbg !641
  call void @__asan_load4_noabort(i32 %41), !dbg !641
  %42 = load volatile ptr, ptr %it_func_ptr.0.i, align 4, !dbg !641
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1, !dbg !641
  %43 = ptrtoint ptr %data.i to i32, !dbg !641
  call void @__asan_load4_noabort(i32 %43), !dbg !641
  %44 = load ptr, ptr %data.i, align 4, !dbg !641
  tail call void %42(ptr noundef %44, i32 noundef %ip, i32 noundef %parent_ip) #11, !dbg !641
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1, !dbg !641
  %45 = ptrtoint ptr %incdec.ptr.i to i32, !dbg !641
  call void @__asan_load4_noabort(i32 %45), !dbg !641
  %46 = load ptr, ptr %incdec.ptr.i, align 4, !dbg !641
  %tobool9.not.i = icmp eq ptr %46, null, !dbg !641
  br i1 %tobool9.not.i, label %do.end10.i, label %do.body2.i.do.body2.i_crit_edge, !dbg !641, !llvm.loop !643

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !641
  br label %do.body2.i, !dbg !641

do.end10.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !641
  %gcov_ctr12.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !641
  %47 = add i64 %gcov_ctr12.i, 1, !dbg !641
  store i64 %47, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !641
  br label %do.end52, !dbg !641

do.end52:                                         ; preds = %do.end10.i, %if.end35.do.end52_crit_edge
  tail call void @rcu_irq_exit_irqson() #11, !dbg !611
  %gcov_ctr.i79 = load i64, ptr @__llvm_gcov_ctr.48, align 8
  %48 = add i64 %gcov_ctr.i79, 1
  store i64 %48, ptr @__llvm_gcov_ctr.48, align 8
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %call.i) #11, !dbg !644
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !611, !srcloc !646
  %gcov_ctr.i67 = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %49 = add i64 %gcov_ctr.i67, 1
  store i64 %49, ptr @__llvm_gcov_ctr.14, align 8
  %gcov_ctr.i.i68 = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !647
  %50 = add i64 %gcov_ctr.i.i68, 1, !dbg !647
  store i64 %50, ptr @__llvm_gcov_ctr.35, align 8, !dbg !647
  %gcov_ctr.i.i.i69 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !650
  %51 = add i64 %gcov_ctr.i.i.i69, 1, !dbg !650
  store i64 %51, ptr @__llvm_gcov_ctr.13, align 8, !dbg !650
  %52 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !650
  %and.i.i.i70 = and i32 %52, -16384, !dbg !652
  %53 = inttoptr i32 %and.i.i.i70 to ptr, !dbg !653
  %preempt_count.i.i71 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1, !dbg !654
  %54 = ptrtoint ptr %preempt_count.i.i71 to i32, !dbg !655
  call void @__asan_load4_noabort(i32 %54), !dbg !655
  %55 = load volatile i32, ptr %preempt_count.i.i71, align 4, !dbg !655
  %sub.i = add i32 %55, -1, !dbg !655
  store volatile i32 %sub.i, ptr %preempt_count.i.i71, align 4, !dbg !655
  %gcov_ctr58 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 5), align 8, !dbg !611
  %56 = add i64 %gcov_ctr58, 1, !dbg !611
  store i64 %56, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 5), align 8, !dbg !611
  br label %if.end53, !dbg !611

if.end53:                                         ; preds = %do.end52, %cpu_online.exit.if.end53_crit_edge, %entry
  %.sink = phi ptr [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 7), %do.end52 ], [ @__llvm_gcov_ctr.40, %entry ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 1), %cpu_online.exit.if.end53_crit_edge ]
  %57 = ptrtoint ptr %.sink to i32
  call void @__asan_load8_noabort(i32 %57)
  %gcov_ctr54 = load i64, ptr %.sink, align 8
  %58 = add i64 %gcov_ctr54, 1
  store i64 %58, ptr %.sink, align 8
  ret void, !dbg !611
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trace_hardirqs_on_caller(i32 noundef %caller_addr) #0 align 64 !dbg !656 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !657
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.12, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.12, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !658
  %1 = add i64 %gcov_ctr.i.i, 1, !dbg !658
  store i64 %1, ptr @__llvm_gcov_ctr.35, align 8, !dbg !658
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !661
  %2 = add i64 %gcov_ctr.i.i.i, 1, !dbg !661
  store i64 %2, ptr @__llvm_gcov_ctr.13, align 8, !dbg !661
  %3 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !661
  %and.i.i.i = and i32 %3, -16384, !dbg !663
  %4 = inttoptr i32 %and.i.i.i to ptr, !dbg !664
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1, !dbg !665
  %5 = ptrtoint ptr %preempt_count.i.i to i32, !dbg !666
  call void @__asan_load4_noabort(i32 %5), !dbg !666
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4, !dbg !666
  %add.i = add i32 %6, 1, !dbg !666
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4, !dbg !666
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !667, !srcloc !668
  %gcov_ctr.i81 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !669
  %7 = add i64 %gcov_ctr.i81, 1, !dbg !669
  store i64 %7, ptr @__llvm_gcov_ctr.13, align 8, !dbg !669
  %8 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !669
  %and.i = and i32 %8, -16384, !dbg !671
  %9 = inttoptr i32 %and.i to ptr, !dbg !672
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3, !dbg !667
  %10 = ptrtoint ptr %cpu to i32, !dbg !667
  call void @__asan_load4_noabort(i32 %10), !dbg !667
  %11 = load i32, ptr %cpu, align 4, !dbg !667
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11, !dbg !667
  %12 = ptrtoint ptr %arrayidx to i32, !dbg !667
  call void @__asan_load4_noabort(i32 %12), !dbg !667
  %13 = load i32, ptr %arrayidx, align 4, !dbg !667
  %add = add i32 %13, ptrtoint (ptr @tracing_irq_cpu to i32), !dbg !667
  %14 = inttoptr i32 %add to ptr, !dbg !667
  %15 = ptrtoint ptr %14 to i32, !dbg !667
  call void @__asan_load4_noabort(i32 %15), !dbg !667
  %16 = load volatile i32, ptr %14, align 4, !dbg !667
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !667, !srcloc !673
  %gcov_ctr.i74 = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %17 = add i64 %gcov_ctr.i74, 1
  store i64 %17, ptr @__llvm_gcov_ctr.14, align 8
  %gcov_ctr.i.i75 = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !674
  %18 = add i64 %gcov_ctr.i.i75, 1, !dbg !674
  store i64 %18, ptr @__llvm_gcov_ctr.35, align 8, !dbg !674
  %gcov_ctr.i.i.i76 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !677
  %19 = add i64 %gcov_ctr.i.i.i76, 1, !dbg !677
  store i64 %19, ptr @__llvm_gcov_ctr.13, align 8, !dbg !677
  %20 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !677
  %and.i.i.i77 = and i32 %20, -16384, !dbg !679
  %21 = inttoptr i32 %and.i.i.i77 to ptr, !dbg !680
  %preempt_count.i.i78 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1, !dbg !681
  %22 = ptrtoint ptr %preempt_count.i.i78 to i32, !dbg !682
  call void @__asan_load4_noabort(i32 %22), !dbg !682
  %23 = load volatile i32, ptr %preempt_count.i.i78, align 4, !dbg !682
  %sub.i = add i32 %23, -1, !dbg !682
  store volatile i32 %sub.i, ptr %preempt_count.i.i78, align 4, !dbg !682
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.27, align 16, !dbg !667
  %24 = add i64 %gcov_ctr, 1, !dbg !667
  store i64 %24, ptr @__llvm_gcov_ctr.27, align 16, !dbg !667
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16), !dbg !667
  %tobool.not = icmp eq i32 %16, 0, !dbg !667
  br i1 %tobool.not, label %entry.if.end69_crit_edge, label %if.then, !dbg !667

entry.if.end69_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !683
  %.pre = tail call ptr @llvm.returnaddress(i32 0), !dbg !683
  %.pre87 = ptrtoint ptr %.pre to i32, !dbg !683
  br label %if.end69, !dbg !667

if.then:                                          ; preds = %entry
  %gcov_ctr.i79 = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %25 = add i64 %gcov_ctr.i79, 1
  store i64 %25, ptr @__llvm_gcov_ctr.15, align 8
  %gcov_ctr.i.i80 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !684
  %26 = add i64 %gcov_ctr.i.i80, 1, !dbg !684
  store i64 %26, ptr @__llvm_gcov_ctr.13, align 8, !dbg !684
  %27 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !684
  %and.i.i = and i32 %27, -16384, !dbg !687
  %28 = inttoptr i32 %and.i.i to ptr, !dbg !688
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1, !dbg !689
  %29 = ptrtoint ptr %preempt_count.i to i32, !dbg !689
  call void @__asan_load4_noabort(i32 %29), !dbg !689
  %30 = load volatile i32, ptr %preempt_count.i, align 4, !dbg !689
  %and = and i32 %30, 15728640, !dbg !690
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !690
  %tobool20.not = icmp eq i32 %and, 0, !dbg !690
  br i1 %tobool20.not, label %if.then21, label %if.then.if.end_crit_edge, !dbg !691

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10, !dbg !692
  %.pre89 = tail call ptr @llvm.returnaddress(i32 0), !dbg !692
  %.pre91 = ptrtoint ptr %.pre89 to i32, !dbg !692
  br label %if.end, !dbg !691

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10, !dbg !693
  %gcov_ctr70 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 1), align 8, !dbg !693
  %31 = add i64 %gcov_ctr70, 1, !dbg !693
  store i64 %31, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 1), align 8, !dbg !693
  %32 = tail call ptr @llvm.returnaddress(i32 0), !dbg !693
  %33 = ptrtoint ptr %32 to i32, !dbg !693
  tail call fastcc void @trace_irq_enable_rcuidle(i32 noundef %33, i32 noundef %caller_addr), !dbg !694
  br label %if.end, !dbg !694

if.end:                                           ; preds = %if.then21, %if.then.if.end_crit_edge
  %.pre-phi92 = phi i32 [ %.pre91, %if.then.if.end_crit_edge ], [ %33, %if.then21 ], !dbg !692
  tail call void @tracer_hardirqs_on(i32 noundef %.pre-phi92, i32 noundef %caller_addr) #11, !dbg !695
  %gcov_ctr.i82 = load i64, ptr @__llvm_gcov_ctr.18, align 8
  %34 = add i64 %gcov_ctr.i82, 1
  store i64 %34, ptr @__llvm_gcov_ctr.18, align 8
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !dbg !696, !srcloc !179
  %36 = ptrtoint ptr %cpu to i32, !dbg !698
  call void @__asan_load4_noabort(i32 %36), !dbg !698
  %37 = load i32, ptr %cpu, align 4, !dbg !698
  %arrayidx43 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37, !dbg !698
  %38 = ptrtoint ptr %arrayidx43 to i32, !dbg !698
  call void @__asan_load4_noabort(i32 %38), !dbg !698
  %39 = load i32, ptr %arrayidx43, align 4, !dbg !698
  %add44 = add i32 %39, ptrtoint (ptr @tracing_irq_cpu to i32), !dbg !698
  %40 = inttoptr i32 %add44 to ptr, !dbg !698
  %41 = ptrtoint ptr %40 to i32, !dbg !698
  call void @__asan_store4_noabort(i32 %41), !dbg !698
  store i32 0, ptr %40, align 4, !dbg !698
  %gcov_ctr.i83 = load i64, ptr @__llvm_gcov_ctr.19, align 8, !dbg !699
  %42 = add i64 %gcov_ctr.i83, 1, !dbg !699
  store i64 %42, ptr @__llvm_gcov_ctr.19, align 8, !dbg !699
  %gcov_ctr.i.i84 = load i64, ptr @__llvm_gcov_ctr.46, align 8
  %43 = add i64 %gcov_ctr.i.i84, 1
  store i64 %43, ptr @__llvm_gcov_ctr.46, align 8
  %44 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !dbg !701, !srcloc !188
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %45 = add i64 %gcov_ctr.i2.i, 1
  store i64 %45, ptr @__llvm_gcov_ctr.45, align 8
  %and.i.i85 = and i32 %44, 128, !dbg !703
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i85), !dbg !698
  %tobool55.not = icmp eq i32 %and.i.i85, 0, !dbg !698
  br i1 %tobool55.not, label %if.then59, label %if.end.do.end62_crit_edge, !dbg !698, !prof !99

if.end.do.end62_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10, !dbg !698
  br label %do.end62, !dbg !698

if.then59:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10, !dbg !698
  %gcov_ctr71 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 2), align 16, !dbg !698
  %46 = add i64 %gcov_ctr71, 1, !dbg !698
  store i64 %46, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 2), align 16, !dbg !698
  tail call void @warn_bogus_irq_restore() #11, !dbg !698
  br label %do.end62, !dbg !698

do.end62:                                         ; preds = %if.then59, %if.end.do.end62_crit_edge
  %gcov_ctr.i86 = load i64, ptr @__llvm_gcov_ctr.20, align 8
  %47 = add i64 %gcov_ctr.i86, 1
  store i64 %47, ptr @__llvm_gcov_ctr.20, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #11, !dbg !705, !srcloc !195
  %gcov_ctr72 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 3), align 8, !dbg !707
  %48 = add i64 %gcov_ctr72, 1, !dbg !707
  store i64 %48, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 3), align 8, !dbg !707
  br label %if.end69, !dbg !707

if.end69:                                         ; preds = %do.end62, %entry.if.end69_crit_edge
  %.pre-phi88 = phi i32 [ %.pre87, %entry.if.end69_crit_edge ], [ %.pre-phi92, %do.end62 ], !dbg !683
  tail call void @lockdep_hardirqs_on_prepare(i32 noundef %.pre-phi88) #11, !dbg !708
  tail call void @lockdep_hardirqs_on(i32 noundef %.pre-phi88) #11, !dbg !709
  ret void, !dbg !710
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trace_hardirqs_off_caller(i32 noundef %caller_addr) #0 align 64 !dbg !711 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !712
  %0 = tail call ptr @llvm.returnaddress(i32 0), !dbg !713
  %1 = ptrtoint ptr %0 to i32, !dbg !713
  tail call void @lockdep_hardirqs_off(i32 noundef %1) #11, !dbg !714
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.12, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.12, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !715
  %3 = add i64 %gcov_ctr.i.i, 1, !dbg !715
  store i64 %3, ptr @__llvm_gcov_ctr.35, align 8, !dbg !715
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !718
  %4 = add i64 %gcov_ctr.i.i.i, 1, !dbg !718
  store i64 %4, ptr @__llvm_gcov_ctr.13, align 8, !dbg !718
  %5 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !718
  %and.i.i.i = and i32 %5, -16384, !dbg !720
  %6 = inttoptr i32 %and.i.i.i to ptr, !dbg !721
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1, !dbg !722
  %7 = ptrtoint ptr %preempt_count.i.i to i32, !dbg !723
  call void @__asan_load4_noabort(i32 %7), !dbg !723
  %8 = load volatile i32, ptr %preempt_count.i.i, align 4, !dbg !723
  %add.i = add i32 %8, 1, !dbg !723
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4, !dbg !723
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !724, !srcloc !725
  %gcov_ctr.i81 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !726
  %9 = add i64 %gcov_ctr.i81, 1, !dbg !726
  store i64 %9, ptr @__llvm_gcov_ctr.13, align 8, !dbg !726
  %10 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !726
  %and.i = and i32 %10, -16384, !dbg !728
  %11 = inttoptr i32 %and.i to ptr, !dbg !729
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3, !dbg !724
  %12 = ptrtoint ptr %cpu to i32, !dbg !724
  call void @__asan_load4_noabort(i32 %12), !dbg !724
  %13 = load i32, ptr %cpu, align 4, !dbg !724
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13, !dbg !724
  %14 = ptrtoint ptr %arrayidx to i32, !dbg !724
  call void @__asan_load4_noabort(i32 %14), !dbg !724
  %15 = load i32, ptr %arrayidx, align 4, !dbg !724
  %add = add i32 %15, ptrtoint (ptr @tracing_irq_cpu to i32), !dbg !724
  %16 = inttoptr i32 %add to ptr, !dbg !724
  %17 = ptrtoint ptr %16 to i32, !dbg !724
  call void @__asan_load4_noabort(i32 %17), !dbg !724
  %18 = load volatile i32, ptr %16, align 4, !dbg !724
  tail call void asm sideeffect "", "~{memory}"() #11, !dbg !724, !srcloc !730
  %gcov_ctr.i74 = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %19 = add i64 %gcov_ctr.i74, 1
  store i64 %19, ptr @__llvm_gcov_ctr.14, align 8
  %gcov_ctr.i.i75 = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !731
  %20 = add i64 %gcov_ctr.i.i75, 1, !dbg !731
  store i64 %20, ptr @__llvm_gcov_ctr.35, align 8, !dbg !731
  %gcov_ctr.i.i.i76 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !734
  %21 = add i64 %gcov_ctr.i.i.i76, 1, !dbg !734
  store i64 %21, ptr @__llvm_gcov_ctr.13, align 8, !dbg !734
  %22 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !734
  %and.i.i.i77 = and i32 %22, -16384, !dbg !736
  %23 = inttoptr i32 %and.i.i.i77 to ptr, !dbg !737
  %preempt_count.i.i78 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1, !dbg !738
  %24 = ptrtoint ptr %preempt_count.i.i78 to i32, !dbg !739
  call void @__asan_load4_noabort(i32 %24), !dbg !739
  %25 = load volatile i32, ptr %preempt_count.i.i78, align 4, !dbg !739
  %sub.i = add i32 %25, -1, !dbg !739
  store volatile i32 %sub.i, ptr %preempt_count.i.i78, align 4, !dbg !739
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.28, align 16, !dbg !724
  %26 = add i64 %gcov_ctr, 1, !dbg !724
  store i64 %26, ptr @__llvm_gcov_ctr.28, align 16, !dbg !724
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18), !dbg !724
  %tobool.not = icmp eq i32 %18, 0, !dbg !724
  br i1 %tobool.not, label %do.body20, label %entry.if.end69_crit_edge, !dbg !740

entry.if.end69_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !740
  br label %if.end69, !dbg !740

do.body20:                                        ; preds = %entry
  %gcov_ctr.i82 = load i64, ptr @__llvm_gcov_ctr.18, align 8
  %27 = add i64 %gcov_ctr.i82, 1
  store i64 %27, ptr @__llvm_gcov_ctr.18, align 8
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !dbg !741, !srcloc !179
  %29 = ptrtoint ptr %cpu to i32, !dbg !743
  call void @__asan_load4_noabort(i32 %29), !dbg !743
  %30 = load i32, ptr %cpu, align 4, !dbg !743
  %arrayidx40 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30, !dbg !743
  %31 = ptrtoint ptr %arrayidx40 to i32, !dbg !743
  call void @__asan_load4_noabort(i32 %31), !dbg !743
  %32 = load i32, ptr %arrayidx40, align 4, !dbg !743
  %add41 = add i32 %32, ptrtoint (ptr @tracing_irq_cpu to i32), !dbg !743
  %33 = inttoptr i32 %add41 to ptr, !dbg !743
  %34 = ptrtoint ptr %33 to i32, !dbg !743
  call void @__asan_store4_noabort(i32 %34), !dbg !743
  store i32 1, ptr %33, align 4, !dbg !743
  %gcov_ctr.i83 = load i64, ptr @__llvm_gcov_ctr.19, align 8, !dbg !744
  %35 = add i64 %gcov_ctr.i83, 1, !dbg !744
  store i64 %35, ptr @__llvm_gcov_ctr.19, align 8, !dbg !744
  %gcov_ctr.i.i84 = load i64, ptr @__llvm_gcov_ctr.46, align 8
  %36 = add i64 %gcov_ctr.i.i84, 1
  store i64 %36, ptr @__llvm_gcov_ctr.46, align 8
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !dbg !746, !srcloc !188
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %38 = add i64 %gcov_ctr.i2.i, 1
  store i64 %38, ptr @__llvm_gcov_ctr.45, align 8
  %and.i.i85 = and i32 %37, 128, !dbg !748
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i85), !dbg !743
  %tobool52.not = icmp eq i32 %and.i.i85, 0, !dbg !743
  br i1 %tobool52.not, label %if.then56, label %do.body20.do.end58_crit_edge, !dbg !743, !prof !99

do.body20.do.end58_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10, !dbg !743
  br label %do.end58, !dbg !743

if.then56:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10, !dbg !743
  %gcov_ctr70 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 1), align 8, !dbg !743
  %39 = add i64 %gcov_ctr70, 1, !dbg !743
  store i64 %39, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 1), align 8, !dbg !743
  tail call void @warn_bogus_irq_restore() #11, !dbg !743
  br label %do.end58, !dbg !743

do.end58:                                         ; preds = %if.then56, %do.body20.do.end58_crit_edge
  %gcov_ctr.i86 = load i64, ptr @__llvm_gcov_ctr.20, align 8
  %40 = add i64 %gcov_ctr.i86, 1
  store i64 %40, ptr @__llvm_gcov_ctr.20, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #11, !dbg !750, !srcloc !195
  tail call void @tracer_hardirqs_off(i32 noundef %1, i32 noundef %caller_addr) #11, !dbg !752
  %gcov_ctr.i79 = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %41 = add i64 %gcov_ctr.i79, 1
  store i64 %41, ptr @__llvm_gcov_ctr.15, align 8
  %gcov_ctr.i.i80 = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !753
  %42 = add i64 %gcov_ctr.i.i80, 1, !dbg !753
  store i64 %42, ptr @__llvm_gcov_ctr.13, align 8, !dbg !753
  %43 = tail call i32 @llvm.read_register.i32(metadata !67) #11, !dbg !753
  %and.i.i = and i32 %43, -16384, !dbg !756
  %44 = inttoptr i32 %and.i.i to ptr, !dbg !757
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1, !dbg !758
  %45 = ptrtoint ptr %preempt_count.i to i32, !dbg !758
  call void @__asan_load4_noabort(i32 %45), !dbg !758
  %46 = load volatile i32, ptr %preempt_count.i, align 4, !dbg !758
  %and = and i32 %46, 15728640, !dbg !759
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !759
  %tobool66.not = icmp eq i32 %and, 0, !dbg !759
  br i1 %tobool66.not, label %if.then67, label %do.end58.if.end68_crit_edge, !dbg !760

do.end58.if.end68_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #10, !dbg !760
  br label %if.end68, !dbg !760

if.then67:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #10, !dbg !761
  %gcov_ctr71 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 2), align 16, !dbg !761
  %47 = add i64 %gcov_ctr71, 1, !dbg !761
  store i64 %47, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 2), align 16, !dbg !761
  tail call fastcc void @trace_irq_disable_rcuidle(i32 noundef %1, i32 noundef %caller_addr), !dbg !762
  br label %if.end68, !dbg !762

if.end68:                                         ; preds = %if.then67, %do.end58.if.end68_crit_edge
  %gcov_ctr72 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 3), align 8, !dbg !763
  %48 = add i64 %gcov_ctr72, 1, !dbg !763
  store i64 %48, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 3), align 8, !dbg !763
  br label %if.end69, !dbg !763

if.end69:                                         ; preds = %if.end68, %entry.if.end69_crit_edge
  ret void, !dbg !764
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_preemptirq_template(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 !dbg !765 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !766
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16, !dbg !767
  %0 = ptrtoint ptr %ent to i32, !dbg !767
  call void @__asan_load4_noabort(i32 %0), !dbg !767
  %1 = load ptr, ptr %ent, align 8, !dbg !767
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11, !dbg !767
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call), !dbg !767
  %cmp.not = icmp eq i32 %call, 1, !dbg !767
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !767

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !767
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.31, align 8, !dbg !767
  %2 = add i64 %gcov_ctr, 1, !dbg !767
  store i64 %2, ptr @__llvm_gcov_ctr.31, align 8, !dbg !767
  br label %cleanup, !dbg !767

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !767
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15, !dbg !767
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.31, i32 0, i32 1), align 8, !dbg !767
  %3 = add i64 %gcov_ctr6, 1, !dbg !767
  store i64 %3, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.31, i32 0, i32 1), align 8, !dbg !767
  %caller_offs = getelementptr inbounds %struct.trace_event_raw_preemptirq_template, ptr %1, i32 0, i32 1, !dbg !767
  %4 = ptrtoint ptr %caller_offs to i32, !dbg !767
  call void @__asan_load4_noabort(i32 %4), !dbg !767
  %5 = load i32, ptr %caller_offs, align 4, !dbg !767
  %add = add i32 %5, ptrtoint (ptr @_stext to i32), !dbg !767
  %6 = inttoptr i32 %add to ptr, !dbg !767
  %parent_offs = getelementptr inbounds %struct.trace_event_raw_preemptirq_template, ptr %1, i32 0, i32 2, !dbg !767
  %7 = ptrtoint ptr %parent_offs to i32, !dbg !767
  call void @__asan_load4_noabort(i32 %7), !dbg !767
  %8 = load i32, ptr %parent_offs, align 4, !dbg !767
  %add1 = add i32 %8, ptrtoint (ptr @_stext to i32), !dbg !767
  %9 = inttoptr i32 %add1 to ptr, !dbg !767
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.3, ptr noundef %6, ptr noundef %9) #11, !dbg !767
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #11, !dbg !767
  br label %cleanup, !dbg !767

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.end ], !dbg !767
  ret i32 %retval.0, !dbg !767
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

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #6 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 -1843488436) #11
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #11
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #11
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 43
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #10
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @llvm_gcda_summary_info() #11
  tail call void @llvm_gcda_end_file() #11
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #7 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.7, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.8, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.9, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.10, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.11, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.12, align 8
  store i64 0, ptr @__llvm_gcov_ctr.13, align 8
  store i64 0, ptr @__llvm_gcov_ctr.14, align 8
  store i64 0, ptr @__llvm_gcov_ctr.15, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) @__llvm_gcov_ctr.16, i8 0, i64 96, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.17, align 8
  store i64 0, ptr @__llvm_gcov_ctr.18, align 8
  store i64 0, ptr @__llvm_gcov_ctr.19, align 8
  store i64 0, ptr @__llvm_gcov_ctr.20, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.21, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.22, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.23, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) @__llvm_gcov_ctr.24, i8 0, i64 96, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.25, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.26, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.27, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.28, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.29, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.30, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.31, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.32, align 8
  store i64 0, ptr @__llvm_gcov_ctr.33, align 8
  store i64 0, ptr @__llvm_gcov_ctr.34, align 8
  store i64 0, ptr @__llvm_gcov_ctr.35, align 8
  store i64 0, ptr @__llvm_gcov_ctr.36, align 8
  store i64 0, ptr @__llvm_gcov_ctr.37, align 8
  store i64 0, ptr @__llvm_gcov_ctr.38, align 8
  store i64 0, ptr @__llvm_gcov_ctr.39, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.40, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.41, align 8
  store i64 0, ptr @__llvm_gcov_ctr.42, align 8
  store i64 0, ptr @__llvm_gcov_ctr.43, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.44, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.45, align 8
  store i64 0, ptr @__llvm_gcov_ctr.46, align 8
  store i64 0, ptr @__llvm_gcov_ctr.47, align 8
  store i64 0, ptr @__llvm_gcov_ctr.48, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #6 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #11
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { noinline nounwind uwtable(sync) }
attributes #7 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind uwtable(sync) }
attributes #10 = { nomerge }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !62, !63, !64, !65, !66}
!llvm.named.register.sp = !{!67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.gcov = !{!76}
!llvm.ident = !{!77}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_preemptirq.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @__tracepoint_irq_disable, !3, !"__tracepoint_irq_disable", i1 false, i1 false}
!3 = !{!"../include/trace/events/preemptirq.h", i32 36, i32 1}
!4 = !{ptr @__tracepoint_ptr_irq_disable, !3, !"__tracepoint_ptr_irq_disable", i1 false, i1 false}
!5 = !{ptr @__SCK__tp_func_irq_disable, !3, !"__SCK__tp_func_irq_disable", i1 false, i1 false}
!6 = !{ptr @__tracepoint_irq_enable, !7, !"__tracepoint_irq_enable", i1 false, i1 false}
!7 = !{!"../include/trace/events/preemptirq.h", i32 40, i32 1}
!8 = !{ptr @__tracepoint_ptr_irq_enable, !7, !"__tracepoint_ptr_irq_enable", i1 false, i1 false}
!9 = !{ptr @__SCK__tp_func_irq_enable, !7, !"__SCK__tp_func_irq_enable", i1 false, i1 false}
!10 = !{ptr @event_class_preemptirq_template, !11, !"event_class_preemptirq_template", i1 false, i1 false}
!11 = !{!"../include/trace/events/preemptirq.h", i32 14, i32 1}
!12 = !{ptr @event_irq_disable, !3, !"event_irq_disable", i1 false, i1 false}
!13 = !{ptr @__event_irq_disable, !3, !"__event_irq_disable", i1 false, i1 false}
!14 = !{ptr @event_irq_enable, !7, !"event_irq_enable", i1 false, i1 false}
!15 = !{ptr @__event_irq_enable, !7, !"__event_irq_enable", i1 false, i1 false}
!16 = !{ptr @__bpf_trace_tp_map_irq_disable, !3, !"__bpf_trace_tp_map_irq_disable", i1 false, i1 false}
!17 = !{ptr @__bpf_trace_tp_map_irq_enable, !7, !"__bpf_trace_tp_map_irq_enable", i1 false, i1 false}
!18 = !{ptr @__ksymtab_trace_hardirqs_on_prepare, !19, !"__ksymtab_trace_hardirqs_on_prepare", i1 false, i1 false}
!19 = !{!"../kernel/trace/trace_preemptirq.c", i32 37, i32 1}
!20 = !{ptr @_kbl_addr_trace_hardirqs_on_prepare, !21, !"_kbl_addr_trace_hardirqs_on_prepare", i1 false, i1 false}
!21 = !{!"../kernel/trace/trace_preemptirq.c", i32 38, i32 1}
!22 = !{ptr @__ksymtab_trace_hardirqs_on, !23, !"__ksymtab_trace_hardirqs_on", i1 false, i1 false}
!23 = !{!"../kernel/trace/trace_preemptirq.c", i32 52, i32 1}
!24 = !{ptr @_kbl_addr_trace_hardirqs_on, !25, !"_kbl_addr_trace_hardirqs_on", i1 false, i1 false}
!25 = !{!"../kernel/trace/trace_preemptirq.c", i32 53, i32 1}
!26 = !{ptr @__ksymtab_trace_hardirqs_off_finish, !27, !"__ksymtab_trace_hardirqs_off_finish", i1 false, i1 false}
!27 = !{!"../kernel/trace/trace_preemptirq.c", i32 71, i32 1}
!28 = !{ptr @_kbl_addr_trace_hardirqs_off_finish, !29, !"_kbl_addr_trace_hardirqs_off_finish", i1 false, i1 false}
!29 = !{!"../kernel/trace/trace_preemptirq.c", i32 72, i32 1}
!30 = !{ptr @__ksymtab_trace_hardirqs_off, !31, !"__ksymtab_trace_hardirqs_off", i1 false, i1 false}
!31 = !{!"../kernel/trace/trace_preemptirq.c", i32 85, i32 1}
!32 = !{ptr @_kbl_addr_trace_hardirqs_off, !33, !"_kbl_addr_trace_hardirqs_off", i1 false, i1 false}
!33 = !{!"../kernel/trace/trace_preemptirq.c", i32 86, i32 1}
!34 = !{ptr @__ksymtab_trace_hardirqs_on_caller, !35, !"__ksymtab_trace_hardirqs_on_caller", i1 false, i1 false}
!35 = !{!"../kernel/trace/trace_preemptirq.c", i32 100, i32 1}
!36 = !{ptr @_kbl_addr_trace_hardirqs_on_caller, !37, !"_kbl_addr_trace_hardirqs_on_caller", i1 false, i1 false}
!37 = !{!"../kernel/trace/trace_preemptirq.c", i32 101, i32 1}
!38 = !{ptr @__ksymtab_trace_hardirqs_off_caller, !39, !"__ksymtab_trace_hardirqs_off_caller", i1 false, i1 false}
!39 = !{!"../kernel/trace/trace_preemptirq.c", i32 114, i32 1}
!40 = !{ptr @_kbl_addr_trace_hardirqs_off_caller, !41, !"_kbl_addr_trace_hardirqs_off_caller", i1 false, i1 false}
!41 = !{!"../kernel/trace/trace_preemptirq.c", i32 115, i32 1}
!42 = !{ptr @__pcpu_unique_tracing_irq_cpu, !43, !"__pcpu_unique_tracing_irq_cpu", i1 false, i1 false}
!43 = !{!"../kernel/trace/trace_preemptirq.c", i32 20, i32 8}
!44 = !{ptr @tracing_irq_cpu, !43, !"tracing_irq_cpu", i1 false, i1 false}
!45 = !{ptr @__tpstrtab_irq_disable, !3, !"__tpstrtab_irq_disable", i1 false, i1 false}
!46 = !{ptr @__tpstrtab_irq_enable, !7, !"__tpstrtab_irq_enable", i1 false, i1 false}
!47 = !{ptr @str__preemptirq__trace_system_name, !48, !"str__preemptirq__trace_system_name", i1 false, i1 false}
!48 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!49 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @trace_event_fields_preemptirq_template, !11, !"trace_event_fields_preemptirq_template", i1 false, i1 false}
!53 = !{ptr @trace_event_type_funcs_preemptirq_template, !11, !"trace_event_type_funcs_preemptirq_template", i1 false, i1 false}
!54 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @print_fmt_preemptirq_template, !11, !"print_fmt_preemptirq_template", i1 false, i1 false}
!56 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!57 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!59 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!62 = !{ptr @.str.6, !61, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!64 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!65 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!66 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!67 = !{!"sp"}
!68 = !{i32 2, !"Debug Info Version", i32 3}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_preemptirq.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_preemptirq.gcda", !0}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = distinct !DISubprogram(name: "__traceiter_irq_disable", scope: !79, file: !79, line: 36, type: !80, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!79 = !DIFile(filename: "../include/trace/events/preemptirq.h", directory: "/llk/linux-5.17/build_arm_allyes")
!80 = !DISubroutineType(types: !81)
!81 = !{}
!82 = !DILocation(line: 36, scope: !78)
!83 = !DILocation(line: 36, column: 1, scope: !78)
!84 = distinct !{!84, !83, !83}
!85 = distinct !DISubprogram(name: "__traceiter_irq_enable", scope: !79, file: !79, line: 40, type: !80, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!86 = !DILocation(line: 40, scope: !85)
!87 = !DILocation(line: 40, column: 1, scope: !85)
!88 = distinct !{!88, !87, !87}
!89 = distinct !DISubprogram(name: "trace_event_raw_event_preemptirq_template", scope: !79, file: !79, line: 14, type: !80, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!90 = !DILocation(line: 14, scope: !89)
!91 = !DILocation(line: 14, column: 1, scope: !89)
!92 = !DILocation(line: 716, column: 31, scope: !93, inlinedAt: !95)
!93 = distinct !DISubprogram(name: "trace_trigger_soft_disabled", scope: !94, file: !94, line: 714, type: !80, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!94 = !DIFile(filename: "../include/linux/trace_events.h", directory: "/llk/linux-5.17/build_arm_allyes")
!95 = distinct !DILocation(line: 14, column: 1, scope: !89)
!96 = !DILocation(line: 718, column: 6, scope: !93, inlinedAt: !95)
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !DILocation(line: 723, column: 6, scope: !93, inlinedAt: !95)
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !DILocation(line: 726, column: 39, scope: !93, inlinedAt: !95)
!101 = !DILocation(line: 726, column: 9, scope: !93, inlinedAt: !95)
!102 = !DILocation(line: 0, scope: !89)
!103 = !DILocation(line: 0, scope: !93, inlinedAt: !95)
!104 = distinct !DISubprogram(name: "perf_trace_preemptirq_template", scope: !79, file: !79, line: 14, type: !80, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!105 = !DILocation(line: 14, scope: !104)
!106 = !DILocation(line: 14, column: 1, scope: !104)
!107 = !{!"auto-init"}
!108 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !111)
!109 = distinct !DISubprogram(name: "current_thread_info", scope: !110, file: !110, line: 101, type: !80, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!110 = !DIFile(filename: "../arch/arm/include/asm/thread_info.h", directory: "/llk/linux-5.17/build_arm_allyes")
!111 = distinct !DILocation(line: 14, column: 1, scope: !104)
!112 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !111)
!113 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !111)
!114 = !DILocation(line: 436, column: 11, scope: !115, inlinedAt: !116)
!115 = distinct !DISubprogram(name: "bpf_prog_array_valid", scope: !94, file: !94, line: 417, type: !80, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!116 = distinct !DILocation(line: 14, column: 1, scope: !104)
!117 = !DILocation(line: 436, column: 10, scope: !115, inlinedAt: !116)
!118 = !DILocation(line: 840, column: 10, scope: !119, inlinedAt: !121)
!119 = distinct !DISubprogram(name: "hlist_empty", scope: !120, file: !120, line: 838, type: !80, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!120 = !DIFile(filename: "../include/linux/list.h", directory: "/llk/linux-5.17/build_arm_allyes")
!121 = distinct !DILocation(line: 14, column: 1, scope: !104)
!122 = !DILocation(line: 840, column: 9, scope: !119, inlinedAt: !121)
!123 = !DILocation(line: 0, scope: !104)
!124 = !DILocation(line: 1171, column: 2, scope: !125, inlinedAt: !127)
!125 = distinct !DISubprogram(name: "perf_fetch_caller_regs", scope: !126, file: !126, line: 1169, type: !80, scopeLine: 1170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!126 = !DIFile(filename: "../include/linux/perf_event.h", directory: "/llk/linux-5.17/build_arm_allyes")
!127 = distinct !DILocation(line: 14, column: 1, scope: !104)
!128 = distinct !DISubprogram(name: "__bpf_trace_preemptirq_template", scope: !79, file: !79, line: 14, type: !80, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!129 = !DILocation(line: 14, scope: !128)
!130 = !DILocation(line: 14, column: 1, scope: !128)
!131 = distinct !DISubprogram(name: "trace_hardirqs_on_prepare", scope: !1, file: !1, line: 28, type: !80, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!132 = !DILocation(line: 29, scope: !131)
!133 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !136)
!134 = distinct !DISubprogram(name: "preempt_count_ptr", scope: !135, file: !135, line: 14, type: !80, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!135 = !DIFile(filename: "../include/asm-generic/preempt.h", directory: "/llk/linux-5.17/build_arm_allyes")
!136 = distinct !DILocation(line: 54, column: 3, scope: !137, inlinedAt: !138)
!137 = distinct !DISubprogram(name: "__preempt_count_add", scope: !135, file: !135, line: 52, type: !80, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!138 = distinct !DILocation(line: 30, column: 6, scope: !131)
!139 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !140)
!140 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !136)
!141 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !140)
!142 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !140)
!143 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !136)
!144 = !DILocation(line: 54, column: 23, scope: !137, inlinedAt: !138)
!145 = !DILocation(line: 30, column: 6, scope: !131)
!146 = !{i64 2155765732}
!147 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !148)
!148 = distinct !DILocation(line: 30, column: 6, scope: !131)
!149 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !148)
!150 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !148)
!151 = !{i64 2155782360}
!152 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !153)
!153 = distinct !DILocation(line: 59, column: 3, scope: !154, inlinedAt: !155)
!154 = distinct !DISubprogram(name: "__preempt_count_sub", scope: !135, file: !135, line: 57, type: !80, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!155 = distinct !DILocation(line: 30, column: 6, scope: !131)
!156 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !157)
!157 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !153)
!158 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !157)
!159 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !157)
!160 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !153)
!161 = !DILocation(line: 59, column: 23, scope: !154, inlinedAt: !155)
!162 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !163)
!163 = distinct !DILocation(line: 11, column: 9, scope: !164, inlinedAt: !165)
!164 = distinct !DISubprogram(name: "preempt_count", scope: !135, file: !135, line: 9, type: !80, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!165 = distinct !DILocation(line: 31, column: 8, scope: !131)
!166 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !163)
!167 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !163)
!168 = !DILocation(line: 11, column: 9, scope: !164, inlinedAt: !165)
!169 = !DILocation(line: 31, column: 8, scope: !131)
!170 = !DILocation(line: 31, column: 7, scope: !131)
!171 = !DILocation(line: 33, column: 22, scope: !131)
!172 = !DILocation(line: 32, column: 21, scope: !131)
!173 = !DILocation(line: 32, column: 4, scope: !131)
!174 = !DILocation(line: 33, column: 3, scope: !131)
!175 = !DILocation(line: 29, column: 2, scope: !176, inlinedAt: !178)
!176 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !177, file: !177, line: 25, type: !80, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!177 = !DIFile(filename: "../arch/arm/include/asm/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!178 = distinct !DILocation(line: 34, column: 3, scope: !131)
!179 = !{i64 618504, i64 618565}
!180 = !DILocation(line: 34, column: 3, scope: !131)
!181 = !DILocation(line: 63, column: 34, scope: !182, inlinedAt: !184)
!182 = distinct !DISubprogram(name: "arch_irqs_disabled", scope: !183, file: !183, line: 61, type: !80, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!183 = !DIFile(filename: "../include/asm-generic/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!184 = distinct !DILocation(line: 34, column: 3, scope: !131)
!185 = !DILocation(line: 159, column: 2, scope: !186, inlinedAt: !187)
!186 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !177, file: !177, line: 156, type: !80, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!187 = distinct !DILocation(line: 63, column: 34, scope: !182, inlinedAt: !184)
!188 = !{i64 621236}
!189 = !DILocation(line: 181, column: 15, scope: !190, inlinedAt: !191)
!190 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !177, file: !177, line: 179, type: !80, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!191 = distinct !DILocation(line: 63, column: 9, scope: !182, inlinedAt: !184)
!192 = !DILocation(line: 171, column: 2, scope: !193, inlinedAt: !194)
!193 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !177, file: !177, line: 169, type: !80, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!194 = distinct !DILocation(line: 34, column: 3, scope: !131)
!195 = !{i64 621521}
!196 = !DILocation(line: 35, column: 2, scope: !131)
!197 = !DILocation(line: 36, column: 1, scope: !131)
!198 = distinct !DISubprogram(name: "trace_irq_enable", scope: !79, file: !79, line: 40, type: !80, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!199 = !DILocation(line: 40, scope: !198)
!200 = !DILocation(line: 14, column: 2, scope: !201, inlinedAt: !203)
!201 = distinct !DISubprogram(name: "arch_static_branch", scope: !202, file: !202, line: 12, type: !80, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!202 = !DIFile(filename: "../arch/arm/include/asm/jump_label.h", directory: "/llk/linux-5.17/build_arm_allyes")
!203 = distinct !DILocation(line: 212, column: 9, scope: !204, inlinedAt: !206)
!204 = distinct !DISubprogram(name: "static_key_false", scope: !205, file: !205, line: 210, type: !80, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!205 = !DIFile(filename: "../include/linux/jump_label.h", directory: "/llk/linux-5.17/build_arm_allyes")
!206 = distinct !DILocation(line: 40, column: 1, scope: !198)
!207 = !{i64 2148759664, i64 2148759669, i64 2148759682, i64 2148759726, i64 2148759760, i64 2148759781}
!208 = !DILocation(line: 0, scope: !201, inlinedAt: !203)
!209 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !210)
!210 = distinct !DILocation(line: 40, column: 1, scope: !198)
!211 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !210)
!212 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !210)
!213 = !DILocation(line: 40, column: 1, scope: !198)
!214 = !DILocation(line: 115, column: 25, scope: !215, inlinedAt: !217)
!215 = distinct !DISubprogram(name: "cpumask_check", scope: !216, file: !216, line: 113, type: !80, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!216 = !DIFile(filename: "../include/linux/cpumask.h", directory: "/llk/linux-5.17/build_arm_allyes")
!217 = distinct !DILocation(line: 379, column: 18, scope: !218, inlinedAt: !219)
!218 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !216, file: !216, line: 377, type: !80, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!219 = distinct !DILocation(line: 921, column: 9, scope: !220, inlinedAt: !221)
!220 = distinct !DISubprogram(name: "cpu_online", scope: !216, file: !216, line: 919, type: !80, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!221 = distinct !DILocation(line: 40, column: 1, scope: !198)
!222 = !DILocation(line: 108, column: 2, scope: !223, inlinedAt: !224)
!223 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !216, file: !216, line: 105, type: !80, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!224 = distinct !DILocation(line: 115, column: 2, scope: !215, inlinedAt: !217)
!225 = !DILocation(line: 118, column: 21, scope: !226, inlinedAt: !228)
!226 = distinct !DISubprogram(name: "arch_test_bit", scope: !227, file: !227, line: 116, type: !80, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!227 = !DIFile(filename: "../include/asm-generic/bitops/non-atomic.h", directory: "/llk/linux-5.17/build_arm_allyes")
!228 = distinct !DILocation(line: 379, column: 9, scope: !218, inlinedAt: !219)
!229 = !DILocation(line: 118, column: 16, scope: !226, inlinedAt: !228)
!230 = !DILocation(line: 118, column: 42, scope: !226, inlinedAt: !228)
!231 = !DILocation(line: 921, column: 9, scope: !220, inlinedAt: !221)
!232 = !DILocation(line: 0, scope: !198)
!233 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !234)
!234 = distinct !DILocation(line: 54, column: 3, scope: !137, inlinedAt: !235)
!235 = distinct !DILocation(line: 40, column: 1, scope: !198)
!236 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !237)
!237 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !234)
!238 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !237)
!239 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !237)
!240 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !234)
!241 = !DILocation(line: 54, column: 23, scope: !137, inlinedAt: !235)
!242 = !{i64 2155379343}
!243 = !DILocation(line: 40, column: 1, scope: !85, inlinedAt: !244)
!244 = distinct !DILocation(line: 40, column: 1, scope: !198)
!245 = distinct !{!245, !243, !243}
!246 = !{i64 2155379552}
!247 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !248)
!248 = distinct !DILocation(line: 59, column: 3, scope: !154, inlinedAt: !249)
!249 = distinct !DILocation(line: 40, column: 1, scope: !198)
!250 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !251)
!251 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !248)
!252 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !251)
!253 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !251)
!254 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !248)
!255 = !DILocation(line: 59, column: 23, scope: !154, inlinedAt: !249)
!256 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !257)
!257 = distinct !DILocation(line: 40, column: 1, scope: !198)
!258 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !257)
!259 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !257)
!260 = !DILocation(line: 115, column: 25, scope: !215, inlinedAt: !261)
!261 = distinct !DILocation(line: 379, column: 18, scope: !218, inlinedAt: !262)
!262 = distinct !DILocation(line: 921, column: 9, scope: !220, inlinedAt: !263)
!263 = distinct !DILocation(line: 40, column: 1, scope: !198)
!264 = !DILocation(line: 108, column: 2, scope: !223, inlinedAt: !265)
!265 = distinct !DILocation(line: 115, column: 2, scope: !215, inlinedAt: !261)
!266 = !DILocation(line: 118, column: 21, scope: !226, inlinedAt: !267)
!267 = distinct !DILocation(line: 379, column: 9, scope: !218, inlinedAt: !262)
!268 = !DILocation(line: 118, column: 16, scope: !226, inlinedAt: !267)
!269 = !DILocation(line: 118, column: 42, scope: !226, inlinedAt: !267)
!270 = !DILocation(line: 921, column: 9, scope: !220, inlinedAt: !263)
!271 = !DILocation(line: 794, column: 2, scope: !272, inlinedAt: !274)
!272 = distinct !DISubprogram(name: "rcu_read_lock_sched_notrace", scope: !273, file: !273, line: 792, type: !80, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!273 = !DIFile(filename: "../include/linux/rcupdate.h", directory: "/llk/linux-5.17/build_arm_allyes")
!274 = distinct !DILocation(line: 40, column: 1, scope: !198)
!275 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !276)
!276 = distinct !DILocation(line: 54, column: 3, scope: !137, inlinedAt: !277)
!277 = distinct !DILocation(line: 794, column: 2, scope: !272, inlinedAt: !274)
!278 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !279)
!279 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !276)
!280 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !279)
!281 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !279)
!282 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !276)
!283 = !DILocation(line: 54, column: 23, scope: !137, inlinedAt: !277)
!284 = !{i64 2149302763}
!285 = !DILocation(line: 816, column: 2, scope: !286, inlinedAt: !287)
!286 = distinct !DISubprogram(name: "rcu_read_unlock_sched_notrace", scope: !273, file: !273, line: 813, type: !80, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!287 = distinct !DILocation(line: 40, column: 1, scope: !198)
!288 = !{i64 2149303799}
!289 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !290)
!290 = distinct !DILocation(line: 59, column: 3, scope: !154, inlinedAt: !291)
!291 = distinct !DILocation(line: 816, column: 2, scope: !286, inlinedAt: !287)
!292 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !293)
!293 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !290)
!294 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !293)
!295 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !293)
!296 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !290)
!297 = !DILocation(line: 59, column: 23, scope: !154, inlinedAt: !291)
!298 = distinct !DISubprogram(name: "trace_hardirqs_on", scope: !1, file: !1, line: 40, type: !80, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!299 = !DILocation(line: 41, scope: !298)
!300 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !301)
!301 = distinct !DILocation(line: 54, column: 3, scope: !137, inlinedAt: !302)
!302 = distinct !DILocation(line: 42, column: 6, scope: !298)
!303 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !304)
!304 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !301)
!305 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !304)
!306 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !304)
!307 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !301)
!308 = !DILocation(line: 54, column: 23, scope: !137, inlinedAt: !302)
!309 = !DILocation(line: 42, column: 6, scope: !298)
!310 = !{i64 2155859377}
!311 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !312)
!312 = distinct !DILocation(line: 42, column: 6, scope: !298)
!313 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !312)
!314 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !312)
!315 = !{i64 2155876005}
!316 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !317)
!317 = distinct !DILocation(line: 59, column: 3, scope: !154, inlinedAt: !318)
!318 = distinct !DILocation(line: 42, column: 6, scope: !298)
!319 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !320)
!320 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !317)
!321 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !320)
!322 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !320)
!323 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !317)
!324 = !DILocation(line: 59, column: 23, scope: !154, inlinedAt: !318)
!325 = !DILocation(line: 49, column: 30, scope: !298)
!326 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !327)
!327 = distinct !DILocation(line: 11, column: 9, scope: !164, inlinedAt: !328)
!328 = distinct !DILocation(line: 43, column: 8, scope: !298)
!329 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !327)
!330 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !327)
!331 = !DILocation(line: 11, column: 9, scope: !164, inlinedAt: !328)
!332 = !DILocation(line: 43, column: 8, scope: !298)
!333 = !DILocation(line: 43, column: 7, scope: !298)
!334 = !DILocation(line: 45, column: 22, scope: !298)
!335 = !DILocation(line: 44, column: 29, scope: !298)
!336 = !DILocation(line: 44, column: 4, scope: !298)
!337 = !DILocation(line: 45, column: 3, scope: !298)
!338 = !DILocation(line: 29, column: 2, scope: !176, inlinedAt: !339)
!339 = distinct !DILocation(line: 46, column: 3, scope: !298)
!340 = !DILocation(line: 46, column: 3, scope: !298)
!341 = !DILocation(line: 63, column: 34, scope: !182, inlinedAt: !342)
!342 = distinct !DILocation(line: 46, column: 3, scope: !298)
!343 = !DILocation(line: 159, column: 2, scope: !186, inlinedAt: !344)
!344 = distinct !DILocation(line: 63, column: 34, scope: !182, inlinedAt: !342)
!345 = !DILocation(line: 181, column: 15, scope: !190, inlinedAt: !346)
!346 = distinct !DILocation(line: 63, column: 9, scope: !182, inlinedAt: !342)
!347 = !DILocation(line: 171, column: 2, scope: !193, inlinedAt: !348)
!348 = distinct !DILocation(line: 46, column: 3, scope: !298)
!349 = !DILocation(line: 47, column: 2, scope: !298)
!350 = !DILocation(line: 49, column: 2, scope: !298)
!351 = !DILocation(line: 50, column: 2, scope: !298)
!352 = !DILocation(line: 51, column: 1, scope: !298)
!353 = distinct !DISubprogram(name: "trace_irq_enable_rcuidle", scope: !79, file: !79, line: 40, type: !80, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!354 = !DILocation(line: 40, scope: !353)
!355 = !DILocation(line: 14, column: 2, scope: !201, inlinedAt: !356)
!356 = distinct !DILocation(line: 212, column: 9, scope: !204, inlinedAt: !357)
!357 = distinct !DILocation(line: 40, column: 1, scope: !353)
!358 = !DILocation(line: 0, scope: !201, inlinedAt: !356)
!359 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !360)
!360 = distinct !DILocation(line: 40, column: 1, scope: !353)
!361 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !360)
!362 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !360)
!363 = !DILocation(line: 40, column: 1, scope: !353)
!364 = !DILocation(line: 115, column: 25, scope: !215, inlinedAt: !365)
!365 = distinct !DILocation(line: 379, column: 18, scope: !218, inlinedAt: !366)
!366 = distinct !DILocation(line: 921, column: 9, scope: !220, inlinedAt: !367)
!367 = distinct !DILocation(line: 40, column: 1, scope: !353)
!368 = !DILocation(line: 108, column: 2, scope: !223, inlinedAt: !369)
!369 = distinct !DILocation(line: 115, column: 2, scope: !215, inlinedAt: !365)
!370 = !DILocation(line: 118, column: 21, scope: !226, inlinedAt: !371)
!371 = distinct !DILocation(line: 379, column: 9, scope: !218, inlinedAt: !366)
!372 = !DILocation(line: 118, column: 16, scope: !226, inlinedAt: !371)
!373 = !DILocation(line: 118, column: 42, scope: !226, inlinedAt: !371)
!374 = !DILocation(line: 921, column: 9, scope: !220, inlinedAt: !367)
!375 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !376)
!376 = distinct !DILocation(line: 11, column: 9, scope: !164, inlinedAt: !377)
!377 = distinct !DILocation(line: 40, column: 1, scope: !353)
!378 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !376)
!379 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !376)
!380 = !DILocation(line: 11, column: 9, scope: !164, inlinedAt: !377)
!381 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !382)
!382 = distinct !DILocation(line: 54, column: 3, scope: !137, inlinedAt: !383)
!383 = distinct !DILocation(line: 40, column: 1, scope: !353)
!384 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !385)
!385 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !382)
!386 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !385)
!387 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !385)
!388 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !382)
!389 = !DILocation(line: 54, column: 23, scope: !137, inlinedAt: !383)
!390 = !{i64 2155387966}
!391 = !DILocation(line: 175, column: 11, scope: !392, inlinedAt: !394)
!392 = distinct !DISubprogram(name: "srcu_read_lock_notrace", scope: !393, file: !393, line: 171, type: !80, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!393 = !DIFile(filename: "../include/linux/srcu.h", directory: "/llk/linux-5.17/build_arm_allyes")
!394 = distinct !DILocation(line: 40, column: 1, scope: !353)
!395 = !DILocation(line: 40, column: 1, scope: !85, inlinedAt: !396)
!396 = distinct !DILocation(line: 40, column: 1, scope: !353)
!397 = distinct !{!397, !395, !395}
!398 = !DILocation(line: 198, column: 2, scope: !399, inlinedAt: !400)
!399 = distinct !DISubprogram(name: "srcu_read_unlock_notrace", scope: !393, file: !393, line: 196, type: !80, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!400 = distinct !DILocation(line: 40, column: 1, scope: !353)
!401 = !{i64 2155388175}
!402 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !403)
!403 = distinct !DILocation(line: 59, column: 3, scope: !154, inlinedAt: !404)
!404 = distinct !DILocation(line: 40, column: 1, scope: !353)
!405 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !406)
!406 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !403)
!407 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !406)
!408 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !406)
!409 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !403)
!410 = !DILocation(line: 59, column: 23, scope: !154, inlinedAt: !404)
!411 = distinct !DISubprogram(name: "trace_hardirqs_off_finish", scope: !1, file: !1, line: 61, type: !80, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!412 = !DILocation(line: 62, scope: !411)
!413 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !414)
!414 = distinct !DILocation(line: 54, column: 3, scope: !137, inlinedAt: !415)
!415 = distinct !DILocation(line: 63, column: 7, scope: !411)
!416 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !417)
!417 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !414)
!418 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !417)
!419 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !417)
!420 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !414)
!421 = !DILocation(line: 54, column: 23, scope: !137, inlinedAt: !415)
!422 = !DILocation(line: 63, column: 7, scope: !411)
!423 = !{i64 2155948865}
!424 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !425)
!425 = distinct !DILocation(line: 63, column: 7, scope: !411)
!426 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !425)
!427 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !425)
!428 = !{i64 2155965493}
!429 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !430)
!430 = distinct !DILocation(line: 59, column: 3, scope: !154, inlinedAt: !431)
!431 = distinct !DILocation(line: 63, column: 7, scope: !411)
!432 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !433)
!433 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !430)
!434 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !433)
!435 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !433)
!436 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !430)
!437 = !DILocation(line: 59, column: 23, scope: !154, inlinedAt: !431)
!438 = !DILocation(line: 63, column: 6, scope: !411)
!439 = !DILocation(line: 29, column: 2, scope: !176, inlinedAt: !440)
!440 = distinct !DILocation(line: 64, column: 3, scope: !411)
!441 = !DILocation(line: 64, column: 3, scope: !411)
!442 = !DILocation(line: 63, column: 34, scope: !182, inlinedAt: !443)
!443 = distinct !DILocation(line: 64, column: 3, scope: !411)
!444 = !DILocation(line: 159, column: 2, scope: !186, inlinedAt: !445)
!445 = distinct !DILocation(line: 63, column: 34, scope: !182, inlinedAt: !443)
!446 = !DILocation(line: 181, column: 15, scope: !190, inlinedAt: !447)
!447 = distinct !DILocation(line: 63, column: 9, scope: !182, inlinedAt: !443)
!448 = !DILocation(line: 171, column: 2, scope: !193, inlinedAt: !449)
!449 = distinct !DILocation(line: 64, column: 3, scope: !411)
!450 = !DILocation(line: 65, column: 23, scope: !411)
!451 = !DILocation(line: 65, column: 3, scope: !411)
!452 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !453)
!453 = distinct !DILocation(line: 11, column: 9, scope: !164, inlinedAt: !454)
!454 = distinct !DILocation(line: 66, column: 8, scope: !411)
!455 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !453)
!456 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !453)
!457 = !DILocation(line: 11, column: 9, scope: !164, inlinedAt: !454)
!458 = !DILocation(line: 66, column: 8, scope: !411)
!459 = !DILocation(line: 66, column: 7, scope: !411)
!460 = !DILocation(line: 67, column: 22, scope: !411)
!461 = !DILocation(line: 67, column: 4, scope: !411)
!462 = !DILocation(line: 68, column: 2, scope: !411)
!463 = !DILocation(line: 70, column: 1, scope: !411)
!464 = distinct !DISubprogram(name: "trace_irq_disable", scope: !79, file: !79, line: 36, type: !80, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!465 = !DILocation(line: 36, scope: !464)
!466 = !DILocation(line: 14, column: 2, scope: !201, inlinedAt: !467)
!467 = distinct !DILocation(line: 212, column: 9, scope: !204, inlinedAt: !468)
!468 = distinct !DILocation(line: 36, column: 1, scope: !464)
!469 = !DILocation(line: 0, scope: !201, inlinedAt: !467)
!470 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !471)
!471 = distinct !DILocation(line: 36, column: 1, scope: !464)
!472 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !471)
!473 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !471)
!474 = !DILocation(line: 36, column: 1, scope: !464)
!475 = !DILocation(line: 115, column: 25, scope: !215, inlinedAt: !476)
!476 = distinct !DILocation(line: 379, column: 18, scope: !218, inlinedAt: !477)
!477 = distinct !DILocation(line: 921, column: 9, scope: !220, inlinedAt: !478)
!478 = distinct !DILocation(line: 36, column: 1, scope: !464)
!479 = !DILocation(line: 108, column: 2, scope: !223, inlinedAt: !480)
!480 = distinct !DILocation(line: 115, column: 2, scope: !215, inlinedAt: !476)
!481 = !DILocation(line: 118, column: 21, scope: !226, inlinedAt: !482)
!482 = distinct !DILocation(line: 379, column: 9, scope: !218, inlinedAt: !477)
!483 = !DILocation(line: 118, column: 16, scope: !226, inlinedAt: !482)
!484 = !DILocation(line: 118, column: 42, scope: !226, inlinedAt: !482)
!485 = !DILocation(line: 921, column: 9, scope: !220, inlinedAt: !478)
!486 = !DILocation(line: 0, scope: !464)
!487 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !488)
!488 = distinct !DILocation(line: 54, column: 3, scope: !137, inlinedAt: !489)
!489 = distinct !DILocation(line: 36, column: 1, scope: !464)
!490 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !491)
!491 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !488)
!492 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !491)
!493 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !491)
!494 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !488)
!495 = !DILocation(line: 54, column: 23, scope: !137, inlinedAt: !489)
!496 = !{i64 2155363228}
!497 = !DILocation(line: 36, column: 1, scope: !78, inlinedAt: !498)
!498 = distinct !DILocation(line: 36, column: 1, scope: !464)
!499 = distinct !{!499, !497, !497}
!500 = !{i64 2155363439}
!501 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !502)
!502 = distinct !DILocation(line: 59, column: 3, scope: !154, inlinedAt: !503)
!503 = distinct !DILocation(line: 36, column: 1, scope: !464)
!504 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !505)
!505 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !502)
!506 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !505)
!507 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !505)
!508 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !502)
!509 = !DILocation(line: 59, column: 23, scope: !154, inlinedAt: !503)
!510 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !511)
!511 = distinct !DILocation(line: 36, column: 1, scope: !464)
!512 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !511)
!513 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !511)
!514 = !DILocation(line: 115, column: 25, scope: !215, inlinedAt: !515)
!515 = distinct !DILocation(line: 379, column: 18, scope: !218, inlinedAt: !516)
!516 = distinct !DILocation(line: 921, column: 9, scope: !220, inlinedAt: !517)
!517 = distinct !DILocation(line: 36, column: 1, scope: !464)
!518 = !DILocation(line: 108, column: 2, scope: !223, inlinedAt: !519)
!519 = distinct !DILocation(line: 115, column: 2, scope: !215, inlinedAt: !515)
!520 = !DILocation(line: 118, column: 21, scope: !226, inlinedAt: !521)
!521 = distinct !DILocation(line: 379, column: 9, scope: !218, inlinedAt: !516)
!522 = !DILocation(line: 118, column: 16, scope: !226, inlinedAt: !521)
!523 = !DILocation(line: 118, column: 42, scope: !226, inlinedAt: !521)
!524 = !DILocation(line: 921, column: 9, scope: !220, inlinedAt: !517)
!525 = !DILocation(line: 794, column: 2, scope: !272, inlinedAt: !526)
!526 = distinct !DILocation(line: 36, column: 1, scope: !464)
!527 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !528)
!528 = distinct !DILocation(line: 54, column: 3, scope: !137, inlinedAt: !529)
!529 = distinct !DILocation(line: 794, column: 2, scope: !272, inlinedAt: !526)
!530 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !531)
!531 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !528)
!532 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !531)
!533 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !531)
!534 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !528)
!535 = !DILocation(line: 54, column: 23, scope: !137, inlinedAt: !529)
!536 = !DILocation(line: 816, column: 2, scope: !286, inlinedAt: !537)
!537 = distinct !DILocation(line: 36, column: 1, scope: !464)
!538 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !539)
!539 = distinct !DILocation(line: 59, column: 3, scope: !154, inlinedAt: !540)
!540 = distinct !DILocation(line: 816, column: 2, scope: !286, inlinedAt: !537)
!541 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !542)
!542 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !539)
!543 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !542)
!544 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !542)
!545 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !539)
!546 = !DILocation(line: 59, column: 23, scope: !154, inlinedAt: !540)
!547 = distinct !DISubprogram(name: "trace_hardirqs_off", scope: !1, file: !1, line: 74, type: !80, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!548 = !DILocation(line: 75, scope: !547)
!549 = !DILocation(line: 76, column: 23, scope: !547)
!550 = !DILocation(line: 76, column: 2, scope: !547)
!551 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !552)
!552 = distinct !DILocation(line: 54, column: 3, scope: !137, inlinedAt: !553)
!553 = distinct !DILocation(line: 78, column: 7, scope: !547)
!554 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !555)
!555 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !552)
!556 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !555)
!557 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !555)
!558 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !552)
!559 = !DILocation(line: 54, column: 23, scope: !137, inlinedAt: !553)
!560 = !DILocation(line: 78, column: 7, scope: !547)
!561 = !{i64 2156038517}
!562 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !563)
!563 = distinct !DILocation(line: 78, column: 7, scope: !547)
!564 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !563)
!565 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !563)
!566 = !{i64 2156055145}
!567 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !568)
!568 = distinct !DILocation(line: 59, column: 3, scope: !154, inlinedAt: !569)
!569 = distinct !DILocation(line: 78, column: 7, scope: !547)
!570 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !571)
!571 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !568)
!572 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !571)
!573 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !571)
!574 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !568)
!575 = !DILocation(line: 59, column: 23, scope: !154, inlinedAt: !569)
!576 = !DILocation(line: 78, column: 6, scope: !547)
!577 = !DILocation(line: 29, column: 2, scope: !176, inlinedAt: !578)
!578 = distinct !DILocation(line: 79, column: 3, scope: !547)
!579 = !DILocation(line: 79, column: 3, scope: !547)
!580 = !DILocation(line: 63, column: 34, scope: !182, inlinedAt: !581)
!581 = distinct !DILocation(line: 79, column: 3, scope: !547)
!582 = !DILocation(line: 159, column: 2, scope: !186, inlinedAt: !583)
!583 = distinct !DILocation(line: 63, column: 34, scope: !182, inlinedAt: !581)
!584 = !DILocation(line: 181, column: 15, scope: !190, inlinedAt: !585)
!585 = distinct !DILocation(line: 63, column: 9, scope: !182, inlinedAt: !581)
!586 = !DILocation(line: 171, column: 2, scope: !193, inlinedAt: !587)
!587 = distinct !DILocation(line: 79, column: 3, scope: !547)
!588 = !DILocation(line: 80, column: 3, scope: !547)
!589 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !590)
!590 = distinct !DILocation(line: 11, column: 9, scope: !164, inlinedAt: !591)
!591 = distinct !DILocation(line: 81, column: 8, scope: !547)
!592 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !590)
!593 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !590)
!594 = !DILocation(line: 11, column: 9, scope: !164, inlinedAt: !591)
!595 = !DILocation(line: 81, column: 8, scope: !547)
!596 = !DILocation(line: 81, column: 7, scope: !547)
!597 = !DILocation(line: 82, column: 30, scope: !547)
!598 = !DILocation(line: 82, column: 4, scope: !547)
!599 = !DILocation(line: 83, column: 2, scope: !547)
!600 = !DILocation(line: 84, column: 1, scope: !547)
!601 = distinct !DISubprogram(name: "trace_irq_disable_rcuidle", scope: !79, file: !79, line: 36, type: !80, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!602 = !DILocation(line: 36, scope: !601)
!603 = !DILocation(line: 14, column: 2, scope: !201, inlinedAt: !604)
!604 = distinct !DILocation(line: 212, column: 9, scope: !204, inlinedAt: !605)
!605 = distinct !DILocation(line: 36, column: 1, scope: !601)
!606 = !DILocation(line: 0, scope: !201, inlinedAt: !604)
!607 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !608)
!608 = distinct !DILocation(line: 36, column: 1, scope: !601)
!609 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !608)
!610 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !608)
!611 = !DILocation(line: 36, column: 1, scope: !601)
!612 = !DILocation(line: 115, column: 25, scope: !215, inlinedAt: !613)
!613 = distinct !DILocation(line: 379, column: 18, scope: !218, inlinedAt: !614)
!614 = distinct !DILocation(line: 921, column: 9, scope: !220, inlinedAt: !615)
!615 = distinct !DILocation(line: 36, column: 1, scope: !601)
!616 = !DILocation(line: 108, column: 2, scope: !223, inlinedAt: !617)
!617 = distinct !DILocation(line: 115, column: 2, scope: !215, inlinedAt: !613)
!618 = !DILocation(line: 118, column: 21, scope: !226, inlinedAt: !619)
!619 = distinct !DILocation(line: 379, column: 9, scope: !218, inlinedAt: !614)
!620 = !DILocation(line: 118, column: 16, scope: !226, inlinedAt: !619)
!621 = !DILocation(line: 118, column: 42, scope: !226, inlinedAt: !619)
!622 = !DILocation(line: 921, column: 9, scope: !220, inlinedAt: !615)
!623 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !624)
!624 = distinct !DILocation(line: 11, column: 9, scope: !164, inlinedAt: !625)
!625 = distinct !DILocation(line: 36, column: 1, scope: !601)
!626 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !624)
!627 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !624)
!628 = !DILocation(line: 11, column: 9, scope: !164, inlinedAt: !625)
!629 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !630)
!630 = distinct !DILocation(line: 54, column: 3, scope: !137, inlinedAt: !631)
!631 = distinct !DILocation(line: 36, column: 1, scope: !601)
!632 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !633)
!633 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !630)
!634 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !633)
!635 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !633)
!636 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !630)
!637 = !DILocation(line: 54, column: 23, scope: !137, inlinedAt: !631)
!638 = !{i64 2155371894}
!639 = !DILocation(line: 175, column: 11, scope: !392, inlinedAt: !640)
!640 = distinct !DILocation(line: 36, column: 1, scope: !601)
!641 = !DILocation(line: 36, column: 1, scope: !78, inlinedAt: !642)
!642 = distinct !DILocation(line: 36, column: 1, scope: !601)
!643 = distinct !{!643, !641, !641}
!644 = !DILocation(line: 198, column: 2, scope: !399, inlinedAt: !645)
!645 = distinct !DILocation(line: 36, column: 1, scope: !601)
!646 = !{i64 2155372105}
!647 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !648)
!648 = distinct !DILocation(line: 59, column: 3, scope: !154, inlinedAt: !649)
!649 = distinct !DILocation(line: 36, column: 1, scope: !601)
!650 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !651)
!651 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !648)
!652 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !651)
!653 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !651)
!654 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !648)
!655 = !DILocation(line: 59, column: 23, scope: !154, inlinedAt: !649)
!656 = distinct !DISubprogram(name: "trace_hardirqs_on_caller", scope: !1, file: !1, line: 88, type: !80, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!657 = !DILocation(line: 89, scope: !656)
!658 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !659)
!659 = distinct !DILocation(line: 54, column: 3, scope: !137, inlinedAt: !660)
!660 = distinct !DILocation(line: 90, column: 6, scope: !656)
!661 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !662)
!662 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !659)
!663 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !662)
!664 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !662)
!665 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !659)
!666 = !DILocation(line: 54, column: 23, scope: !137, inlinedAt: !660)
!667 = !DILocation(line: 90, column: 6, scope: !656)
!668 = !{i64 2156127898}
!669 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !670)
!670 = distinct !DILocation(line: 90, column: 6, scope: !656)
!671 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !670)
!672 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !670)
!673 = !{i64 2156144526}
!674 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !675)
!675 = distinct !DILocation(line: 59, column: 3, scope: !154, inlinedAt: !676)
!676 = distinct !DILocation(line: 90, column: 6, scope: !656)
!677 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !678)
!678 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !675)
!679 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !678)
!680 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !678)
!681 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !675)
!682 = !DILocation(line: 59, column: 23, scope: !154, inlinedAt: !676)
!683 = !DILocation(line: 97, column: 30, scope: !656)
!684 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !685)
!685 = distinct !DILocation(line: 11, column: 9, scope: !164, inlinedAt: !686)
!686 = distinct !DILocation(line: 91, column: 8, scope: !656)
!687 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !685)
!688 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !685)
!689 = !DILocation(line: 11, column: 9, scope: !164, inlinedAt: !686)
!690 = !DILocation(line: 91, column: 8, scope: !656)
!691 = !DILocation(line: 91, column: 7, scope: !656)
!692 = !DILocation(line: 93, column: 22, scope: !656)
!693 = !DILocation(line: 92, column: 29, scope: !656)
!694 = !DILocation(line: 92, column: 4, scope: !656)
!695 = !DILocation(line: 93, column: 3, scope: !656)
!696 = !DILocation(line: 29, column: 2, scope: !176, inlinedAt: !697)
!697 = distinct !DILocation(line: 94, column: 3, scope: !656)
!698 = !DILocation(line: 94, column: 3, scope: !656)
!699 = !DILocation(line: 63, column: 34, scope: !182, inlinedAt: !700)
!700 = distinct !DILocation(line: 94, column: 3, scope: !656)
!701 = !DILocation(line: 159, column: 2, scope: !186, inlinedAt: !702)
!702 = distinct !DILocation(line: 63, column: 34, scope: !182, inlinedAt: !700)
!703 = !DILocation(line: 181, column: 15, scope: !190, inlinedAt: !704)
!704 = distinct !DILocation(line: 63, column: 9, scope: !182, inlinedAt: !700)
!705 = !DILocation(line: 171, column: 2, scope: !193, inlinedAt: !706)
!706 = distinct !DILocation(line: 94, column: 3, scope: !656)
!707 = !DILocation(line: 95, column: 2, scope: !656)
!708 = !DILocation(line: 97, column: 2, scope: !656)
!709 = !DILocation(line: 98, column: 2, scope: !656)
!710 = !DILocation(line: 99, column: 1, scope: !656)
!711 = distinct !DISubprogram(name: "trace_hardirqs_off_caller", scope: !1, file: !1, line: 103, type: !80, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!712 = !DILocation(line: 104, scope: !711)
!713 = !DILocation(line: 105, column: 23, scope: !711)
!714 = !DILocation(line: 105, column: 2, scope: !711)
!715 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !716)
!716 = distinct !DILocation(line: 54, column: 3, scope: !137, inlinedAt: !717)
!717 = distinct !DILocation(line: 107, column: 7, scope: !711)
!718 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !719)
!719 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !716)
!720 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !719)
!721 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !719)
!722 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !716)
!723 = !DILocation(line: 54, column: 23, scope: !137, inlinedAt: !717)
!724 = !DILocation(line: 107, column: 7, scope: !711)
!725 = !{i64 2156217533}
!726 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !727)
!727 = distinct !DILocation(line: 107, column: 7, scope: !711)
!728 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !727)
!729 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !727)
!730 = !{i64 2156234161}
!731 = !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !732)
!732 = distinct !DILocation(line: 59, column: 3, scope: !154, inlinedAt: !733)
!733 = distinct !DILocation(line: 107, column: 7, scope: !711)
!734 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !735)
!735 = distinct !DILocation(line: 16, column: 10, scope: !134, inlinedAt: !732)
!736 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !735)
!737 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !735)
!738 = !DILocation(line: 16, column: 33, scope: !134, inlinedAt: !732)
!739 = !DILocation(line: 59, column: 23, scope: !154, inlinedAt: !733)
!740 = !DILocation(line: 107, column: 6, scope: !711)
!741 = !DILocation(line: 29, column: 2, scope: !176, inlinedAt: !742)
!742 = distinct !DILocation(line: 108, column: 3, scope: !711)
!743 = !DILocation(line: 108, column: 3, scope: !711)
!744 = !DILocation(line: 63, column: 34, scope: !182, inlinedAt: !745)
!745 = distinct !DILocation(line: 108, column: 3, scope: !711)
!746 = !DILocation(line: 159, column: 2, scope: !186, inlinedAt: !747)
!747 = distinct !DILocation(line: 63, column: 34, scope: !182, inlinedAt: !745)
!748 = !DILocation(line: 181, column: 15, scope: !190, inlinedAt: !749)
!749 = distinct !DILocation(line: 63, column: 9, scope: !182, inlinedAt: !745)
!750 = !DILocation(line: 171, column: 2, scope: !193, inlinedAt: !751)
!751 = distinct !DILocation(line: 108, column: 3, scope: !711)
!752 = !DILocation(line: 109, column: 3, scope: !711)
!753 = !DILocation(line: 104, column: 4, scope: !109, inlinedAt: !754)
!754 = distinct !DILocation(line: 11, column: 9, scope: !164, inlinedAt: !755)
!755 = distinct !DILocation(line: 110, column: 8, scope: !711)
!756 = !DILocation(line: 104, column: 26, scope: !109, inlinedAt: !754)
!757 = !DILocation(line: 103, column: 9, scope: !109, inlinedAt: !754)
!758 = !DILocation(line: 11, column: 9, scope: !164, inlinedAt: !755)
!759 = !DILocation(line: 110, column: 8, scope: !711)
!760 = !DILocation(line: 110, column: 7, scope: !711)
!761 = !DILocation(line: 111, column: 30, scope: !711)
!762 = !DILocation(line: 111, column: 4, scope: !711)
!763 = !DILocation(line: 112, column: 2, scope: !711)
!764 = !DILocation(line: 113, column: 1, scope: !711)
!765 = distinct !DISubprogram(name: "trace_raw_output_preemptirq_template", scope: !79, file: !79, line: 14, type: !80, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!766 = !DILocation(line: 14, scope: !765)
!767 = !DILocation(line: 14, column: 1, scope: !765)
