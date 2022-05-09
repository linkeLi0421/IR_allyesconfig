; ModuleID = '/llk/IR_all_yes/kernel/trace/error_report-traces.c_pt.bc'
source_filename = "../kernel/trace/error_report-traces.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_error_report_end\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_error_report_end\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_error_report_end\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_error_report_end:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_error_report_end\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_error_report_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_error_report_end\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_error_report_end\09\09\09\09"
module asm "\09.long\09__crc___traceiter_error_report_end\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_error_report_end:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_error_report_end\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_error_report_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_error_report_end\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_error_report_end\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_error_report_end\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_error_report_end:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_error_report_end\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_error_report_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_print_flags = type { i32, ptr }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_error_report_template = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_error_report_end = internal constant [17 x i8] c"error_report_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_error_report_end = dso_local global %struct.static_call_key { ptr @__traceiter_error_report_end }, align 4
@__tracepoint_error_report_end = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_error_report_end, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_error_report_end, ptr null, ptr @__traceiter_error_report_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_error_report_end = internal constant ptr @__tracepoint_error_report_end, section "__tracepoints_ptrs", align 4
@str__error_report__trace_system_name = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"error_report\00", [19 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ERROR_DETECTOR_KFENCE\00", [42 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_ERROR_DETECTOR_KFENCE = internal global %struct.trace_eval_map { ptr @str__error_report__trace_system_name, ptr @.str, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_ERROR_DETECTOR_KFENCE = internal global ptr @__TRACE_SYSTEM_ERROR_DETECTOR_KFENCE, section "_ftrace_eval_map", align 4
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ERROR_DETECTOR_KASAN\00", [43 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_ERROR_DETECTOR_KASAN = internal global %struct.trace_eval_map { ptr @str__error_report__trace_system_name, ptr @.str.1, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_ERROR_DETECTOR_KASAN = internal global ptr @__TRACE_SYSTEM_ERROR_DETECTOR_KASAN, section "_ftrace_eval_map", align 4
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ERROR_DETECTOR_WARN\00", [44 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_ERROR_DETECTOR_WARN = internal global %struct.trace_eval_map { ptr @str__error_report__trace_system_name, ptr @.str.2, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_ERROR_DETECTOR_WARN = internal global ptr @__TRACE_SYSTEM_ERROR_DETECTOR_WARN, section "_ftrace_eval_map", align 4
@trace_event_fields_error_report_template = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.0 { %struct.anon { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_error_report_template = internal global %struct.trace_event_class { ptr @str__error_report__trace_system_name, ptr @trace_event_raw_event_error_report_template, ptr @perf_trace_error_report_template, ptr @trace_event_reg, ptr @trace_event_fields_error_report_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_error_report_template, i64 24), ptr getelementptr (i8, ptr @event_class_error_report_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_error_report_template = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_error_report_template, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_error_report_template = internal global { [167 x i8], [57 x i8] } { [167 x i8] c"\22[%s] %lx\22, __print_symbolic(REC->error_detector, { ERROR_DETECTOR_KFENCE, \22kfence\22 }, { ERROR_DETECTOR_KASAN, \22kasan\22 }, { ERROR_DETECTOR_WARN, \22warning\22 }), REC->id\00", [57 x i8] zeroinitializer }, align 32
@event_error_report_end = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_error_report_template, %union.anon.1 { ptr @__tracepoint_error_report_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_error_report_template }, ptr @print_fmt_error_report_template, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_error_report_end = internal global ptr @event_error_report_end, section "_ftrace_events", align 4
@__bpf_trace_tp_map_error_report_end = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_error_report_end, ptr @__bpf_trace_error_report_template, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__kstrtab___tracepoint_error_report_end = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_error_report_end = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_error_report_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_error_report_end to i32), ptr @__kstrtab___tracepoint_error_report_end, ptr @__kstrtabns___tracepoint_error_report_end }, section "___ksymtab_gpl+__tracepoint_error_report_end", align 4
@__kstrtab___traceiter_error_report_end = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_error_report_end = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_error_report_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_error_report_end to i32), ptr @__kstrtab___traceiter_error_report_end, ptr @__kstrtabns___traceiter_error_report_end }, section "___ksymtab_gpl+__traceiter_error_report_end", align 4
@__kstrtab___SCK__tp_func_error_report_end = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_error_report_end = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_error_report_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_error_report_end to i32), ptr @__kstrtab___SCK__tp_func_error_report_end, ptr @__kstrtabns___SCK__tp_func_error_report_end }, section "___ksymtab_gpl+__SCK__tp_func_error_report_end", align 4
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"enum error_detector\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"error_detector\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"[%s] %lx\0A\00", [22 x i8] zeroinitializer }, align 32
@trace_raw_output_error_report_template.symbols = internal constant { [4 x %struct.trace_print_flags], [32 x i8] } { [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.8 }, %struct.trace_print_flags { i32 1, ptr @.str.9 }, %struct.trace_print_flags { i32 2, ptr @.str.10 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kfence\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"kasan\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"warning\00", [24 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__llvm_gcov_ctr = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.11 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.12 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.13 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.14 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.15 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.16 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.17 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [1 x i64] zeroinitializer
@0 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/error_report-traces.gcda\00", [57 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [11 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 495984501, i32 -1366195103 }, %emit_function_args_ty { i32 1, i32 1068568873, i32 -1366195103 }, %emit_function_args_ty { i32 2, i32 -695306308, i32 -1366195103 }, %emit_function_args_ty { i32 3, i32 1335682722, i32 -1366195103 }, %emit_function_args_ty { i32 4, i32 858041679, i32 -1366195103 }, %emit_function_args_ty { i32 5, i32 1449425969, i32 -1366195103 }, %emit_function_args_ty { i32 6, i32 -1201849202, i32 -1366195103 }, %emit_function_args_ty { i32 7, i32 288547376, i32 -1366195103 }, %emit_function_args_ty { i32 8, i32 1710487500, i32 -1366195103 }, %emit_function_args_ty { i32 9, i32 -584910999, i32 -1366195103 }, %emit_function_args_ty { i32 10, i32 -31780534, i32 -1366195103 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [11 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.11 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.12 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.13 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.14 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.15 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.16 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.17 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.18 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.19 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.20 }]
@___asan_gen_ = private constant [38 x i8] c"../kernel/trace/error_report-traces.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [37 x i8] c"str__error_report__trace_system_name\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 36, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 38, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant [41 x i8] c"trace_event_fields_error_report_template\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [45 x i8] c"trace_event_type_funcs_error_report_template\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [32 x i8] c"print_fmt_error_report_template\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [23 x i8] c"event_error_report_end\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 69, i32 1 }
@___asan_gen_.60 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [39 x i8] c"../include/trace/events/error_report.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 49, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [31 x ptr] [ptr @TRACE_SYSTEM_ERROR_DETECTOR_KASAN, ptr @TRACE_SYSTEM_ERROR_DETECTOR_KFENCE, ptr @TRACE_SYSTEM_ERROR_DETECTOR_WARN, ptr @__TRACE_SYSTEM_ERROR_DETECTOR_KASAN, ptr @__TRACE_SYSTEM_ERROR_DETECTOR_KFENCE, ptr @__TRACE_SYSTEM_ERROR_DETECTOR_WARN, ptr @__bpf_trace_tp_map_error_report_end, ptr @__event_error_report_end, ptr @__ksymtab___SCK__tp_func_error_report_end, ptr @__ksymtab___traceiter_error_report_end, ptr @__ksymtab___tracepoint_error_report_end, ptr @__tracepoint_error_report_end, ptr @__tracepoint_ptr_error_report_end, ptr @event_class_error_report_template, ptr @event_error_report_end, ptr @str__error_report__trace_system_name, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @trace_event_fields_error_report_template, ptr @trace_event_type_funcs_error_report_template, ptr @print_fmt_error_report_template, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @trace_raw_output_error_report_template.symbols, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@1 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__error_report__trace_system_name to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_error_report_template to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_error_report_template to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_error_report_template to i32), i32 167, i32 224, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_error_report_end to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_error_report_template.symbols to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_error_report_end(ptr nocapture readnone %__data, i32 noundef %error_detector, i32 noundef %id) #0 align 64 !dbg !51 {
entry:
  call void @__sanitizer_cov_trace_pc() #9, !dbg !55
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 16, !dbg !56
  %0 = add i64 %gcov_ctr, 1, !dbg !56
  store i64 %0, ptr @__llvm_gcov_ctr, align 16, !dbg !56
  %1 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_error_report_end, i32 0, i32 7), align 4, !dbg !56
  %tobool.not = icmp eq ptr %1, null, !dbg !56
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge, !dbg !56

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2, !dbg !56

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9, !dbg !56
  br label %if.end, !dbg !56

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %1, %entry.do.body2_crit_edge ], !dbg !56
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !56
  %2 = add i64 %gcov_ctr11, 1, !dbg !56
  store i64 %2, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !56
  %3 = ptrtoint ptr %it_func_ptr.0 to i32, !dbg !56
  call void @__asan_load4_noabort(i32 %3), !dbg !56
  %4 = load volatile ptr, ptr %it_func_ptr.0, align 4, !dbg !56
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1, !dbg !56
  %5 = ptrtoint ptr %data to i32, !dbg !56
  call void @__asan_load4_noabort(i32 %5), !dbg !56
  %6 = load ptr, ptr %data, align 4, !dbg !56
  tail call void %4(ptr noundef %6, i32 noundef %error_detector, i32 noundef %id) #10, !dbg !56
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1, !dbg !56
  %7 = ptrtoint ptr %incdec.ptr to i32, !dbg !56
  call void @__asan_load4_noabort(i32 %7), !dbg !56
  %8 = load ptr, ptr %incdec.ptr, align 4, !dbg !56
  %tobool9.not = icmp eq ptr %8, null, !dbg !56
  br i1 %tobool9.not, label %do.end10, label %do.body2.do.body2_crit_edge, !dbg !56, !llvm.loop !57

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9, !dbg !56
  br label %do.body2, !dbg !56

do.end10:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9, !dbg !56
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !56
  %9 = add i64 %gcov_ctr12, 1, !dbg !56
  store i64 %9, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !56
  br label %if.end, !dbg !56

if.end:                                           ; preds = %do.end10, %entry.if.end_crit_edge
  ret i32 0, !dbg !56
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_error_report_template(ptr noundef %__data, i32 noundef %error_detector, i32 noundef %id) #0 align 64 !dbg !58 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9, !dbg !59
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10, !dbg !60
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7, !dbg !61
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24), !dbg !60
  %1 = ptrtoint ptr %flags.i to i32, !dbg !61
  call void @__asan_load4_noabort(i32 %1), !dbg !61
  %2 = load i32, ptr %flags.i, align 4, !dbg !61
  %and.i = and i32 %2, 704, !dbg !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !65
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !65
  br i1 %tobool.not.i, label %entry.if.end.sink.split_crit_edge, label %if.end.i, !dbg !65, !prof !66

entry.if.end.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9, !dbg !65
  br label %if.end.sink.split, !dbg !65

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256, !dbg !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i), !dbg !67
  %tobool5.not.i = icmp eq i32 %and4.i, 0, !dbg !67
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end.sink.split_crit_edge, !dbg !67, !prof !68

if.end.i.if.end.sink.split_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9, !dbg !67
  br label %if.end.sink.split, !dbg !67

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %gcov_ctr14.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 1), align 8, !dbg !69
  %3 = add i64 %gcov_ctr14.i, 1, !dbg !69
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 1), align 8, !dbg !69
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10, !dbg !70
  br i1 %call.i, label %if.then, label %trace_trigger_soft_disabled.exit.if.end_crit_edge, !dbg !60

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9, !dbg !60
  br label %if.end, !dbg !60

if.then:                                          ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9, !dbg !71
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.11, align 16
  %4 = add i64 %gcov_ctr, 1
  store i64 %4, ptr @__llvm_gcov_ctr.11, align 16
  br label %cleanup, !dbg !60

if.end.sink.split:                                ; preds = %if.end.i.if.end.sink.split_crit_edge, %entry.if.end.sink.split_crit_edge
  %.sink = phi ptr [ @__llvm_gcov_ctr.14, %entry.if.end.sink.split_crit_edge ], [ getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 2), %if.end.i.if.end.sink.split_crit_edge ]
  %5 = ptrtoint ptr %.sink to i32, !dbg !72
  call void @__asan_load8_noabort(i32 %5), !dbg !72
  %gcov_ctr15.i = load i64, ptr %.sink, align 16, !dbg !72
  %6 = add i64 %gcov_ctr15.i, 1, !dbg !72
  store i64 %6, ptr %.sink, align 16, !dbg !72
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %trace_trigger_soft_disabled.exit.if.end_crit_edge
  %gcov_ctr.i20 = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %7 = add i64 %gcov_ctr.i20, 1
  store i64 %7, ptr @__llvm_gcov_ctr.15, align 8
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #10, !dbg !60
  %tobool.not = icmp eq ptr %call3, null, !dbg !60
  br i1 %tobool.not, label %if.then4, label %if.end5, !dbg !60

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9, !dbg !71
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 1), align 8
  %8 = add i64 %gcov_ctr12, 1
  store i64 %8, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 1), align 8
  br label %cleanup, !dbg !60

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9, !dbg !60
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 2), align 16, !dbg !60
  %9 = add i64 %gcov_ctr13, 1, !dbg !60
  store i64 %9, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 2), align 16, !dbg !60
  %error_detector6 = getelementptr inbounds %struct.trace_event_raw_error_report_template, ptr %call3, i32 0, i32 1, !dbg !60
  %10 = ptrtoint ptr %error_detector6 to i32, !dbg !60
  call void @__asan_store4_noabort(i32 %10), !dbg !60
  store i32 %error_detector, ptr %error_detector6, align 4, !dbg !60
  %id7 = getelementptr inbounds %struct.trace_event_raw_error_report_template, ptr %call3, i32 0, i32 2, !dbg !60
  %11 = ptrtoint ptr %id7 to i32, !dbg !60
  call void @__asan_store4_noabort(i32 %11), !dbg !60
  store i32 %id, ptr %id7, align 4, !dbg !60
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10, !dbg !60
  br label %cleanup, !dbg !60

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10, !dbg !60
  ret void, !dbg !60
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_error_report_template(ptr noundef %__data, i32 noundef %error_detector, i32 noundef %id) #0 align 64 !dbg !73 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9, !dbg !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10, !dbg !75
  %0 = ptrtoint ptr %__regs to i32, !dbg !75
  call void @__asan_store4_noabort(i32 %0), !dbg !75
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !dbg !75, !annotation !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10, !dbg !75
  %1 = ptrtoint ptr %rctx to i32, !dbg !75
  call void @__asan_store4_noabort(i32 %1), !dbg !75
  store i32 -1, ptr %rctx, align 4, !dbg !75, !annotation !76
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.15, align 8
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10, !dbg !75
  %3 = ptrtoint ptr %perf_events to i32, !dbg !75
  call void @__asan_load4_noabort(i32 %3), !dbg !75
  %4 = load ptr, ptr %perf_events, align 4, !dbg !75
  %5 = ptrtoint ptr %4 to i32, !dbg !75
  %gcov_ctr.i46 = load i64, ptr @__llvm_gcov_ctr.17, align 8, !dbg !77
  %6 = add i64 %gcov_ctr.i46, 1, !dbg !77
  store i64 %6, ptr @__llvm_gcov_ctr.17, align 8, !dbg !77
  %7 = tail call i32 @llvm.read_register.i32(metadata !40) #10, !dbg !77
  %and.i = and i32 %7, -16384, !dbg !81
  %8 = inttoptr i32 %and.i to ptr, !dbg !82
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3, !dbg !75
  %9 = ptrtoint ptr %cpu to i32, !dbg !75
  call void @__asan_load4_noabort(i32 %9), !dbg !75
  %10 = load i32, ptr %cpu, align 4, !dbg !75
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10, !dbg !75
  %11 = ptrtoint ptr %arrayidx to i32, !dbg !75
  call void @__asan_load4_noabort(i32 %11), !dbg !75
  %12 = load i32, ptr %arrayidx, align 4, !dbg !75
  %add = add i32 %12, %5, !dbg !75
  %13 = inttoptr i32 %add to ptr, !dbg !75
  %gcov_ctr.i47 = load i64, ptr @__llvm_gcov_ctr.18, align 8
  %14 = add i64 %gcov_ctr.i47, 1
  store i64 %14, ptr @__llvm_gcov_ctr.18, align 8
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11, !dbg !83
  %15 = ptrtoint ptr %prog_array.i to i32, !dbg !83
  call void @__asan_load4_noabort(i32 %15), !dbg !83
  %16 = load volatile ptr, ptr %prog_array.i, align 4, !dbg !83
  %tobool.i.not = icmp eq ptr %16, null, !dbg !86
  br i1 %tobool.i.not, label %land.lhs.true, label %entry.if.end_crit_edge, !dbg !75

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9, !dbg !75
  br label %if.end, !dbg !75

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.12, align 16, !dbg !75
  %17 = add i64 %gcov_ctr, 1, !dbg !75
  store i64 %17, ptr @__llvm_gcov_ctr.12, align 16, !dbg !75
  %gcov_ctr28 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 1), align 8, !dbg !75
  %18 = add i64 %gcov_ctr28, 1, !dbg !75
  store i64 %18, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 1), align 8, !dbg !75
  %gcov_ctr29 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 2), align 16, !dbg !75
  %19 = add i64 %gcov_ctr29, 1, !dbg !75
  store i64 %19, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 2), align 16, !dbg !75
  %gcov_ctr.i48 = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %20 = add i64 %gcov_ctr.i48, 1
  store i64 %20, ptr @__llvm_gcov_ctr.19, align 8
  %21 = ptrtoint ptr %13 to i32, !dbg !87
  call void @__asan_load4_noabort(i32 %21), !dbg !87
  %22 = load volatile ptr, ptr %13, align 4, !dbg !87
  %tobool.not.i.not = icmp eq ptr %22, null, !dbg !91
  br i1 %tobool.not.i.not, label %if.then, label %land.lhs.true.if.end_crit_edge, !dbg !75

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9, !dbg !75
  br label %if.end, !dbg !75

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9, !dbg !92
  %gcov_ctr30 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 3), align 8
  %23 = add i64 %gcov_ctr30, 1
  store i64 %23, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 3), align 8
  br label %cleanup, !dbg !75

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10, !dbg !75
  %tobool14.not = icmp eq ptr %call13, null, !dbg !75
  br i1 %tobool14.not, label %if.then15, label %if.end16, !dbg !75

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9, !dbg !92
  %gcov_ctr31 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 4), align 16
  %24 = add i64 %gcov_ctr31, 1
  store i64 %24, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 4), align 16
  br label %cleanup, !dbg !75

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9, !dbg !75
  %gcov_ctr32 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 5), align 8, !dbg !75
  %25 = add i64 %gcov_ctr32, 1, !dbg !75
  store i64 %25, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 5), align 8, !dbg !75
  %26 = ptrtoint ptr %__regs to i32, !dbg !75
  call void @__asan_load4_noabort(i32 %26), !dbg !75
  %27 = load ptr, ptr %__regs, align 4, !dbg !75
  %gcov_ctr.i49 = load i64, ptr @__llvm_gcov_ctr.20, align 8
  %28 = add i64 %gcov_ctr.i49, 1
  store i64 %28, ptr @__llvm_gcov_ctr.20, align 8
  %29 = call ptr @llvm.returnaddress(i32 0) #10, !dbg !93
  %30 = ptrtoint ptr %29 to i32, !dbg !93
  %arrayidx.i = getelementptr [18 x i32], ptr %27, i32 0, i32 15, !dbg !93
  %31 = ptrtoint ptr %arrayidx.i to i32, !dbg !93
  call void @__asan_store4_noabort(i32 %31), !dbg !93
  store i32 %30, ptr %arrayidx.i, align 4, !dbg !93
  %32 = call ptr @llvm.frameaddress.p0(i32 0) #10, !dbg !93
  %33 = ptrtoint ptr %32 to i32, !dbg !93
  %arrayidx2.i = getelementptr [18 x i32], ptr %27, i32 0, i32 11, !dbg !93
  %34 = ptrtoint ptr %arrayidx2.i to i32, !dbg !93
  call void @__asan_store4_noabort(i32 %34), !dbg !93
  store i32 %33, ptr %arrayidx2.i, align 4, !dbg !93
  %35 = call i32 @llvm.read_register.i32(metadata !40) #10, !dbg !93
  %arrayidx4.i = getelementptr [18 x i32], ptr %27, i32 0, i32 13, !dbg !93
  %36 = ptrtoint ptr %arrayidx4.i to i32, !dbg !93
  call void @__asan_store4_noabort(i32 %36), !dbg !93
  store i32 %35, ptr %arrayidx4.i, align 4, !dbg !93
  %arrayidx6.i = getelementptr [18 x i32], ptr %27, i32 0, i32 16, !dbg !93
  %37 = ptrtoint ptr %arrayidx6.i to i32, !dbg !93
  call void @__asan_store4_noabort(i32 %37), !dbg !93
  store i32 19, ptr %arrayidx6.i, align 4, !dbg !93
  %error_detector17 = getelementptr inbounds %struct.trace_event_raw_error_report_template, ptr %call13, i32 0, i32 1, !dbg !75
  %38 = ptrtoint ptr %error_detector17 to i32, !dbg !75
  call void @__asan_store4_noabort(i32 %38), !dbg !75
  store i32 %error_detector, ptr %error_detector17, align 4, !dbg !75
  %id18 = getelementptr inbounds %struct.trace_event_raw_error_report_template, ptr %call13, i32 0, i32 2, !dbg !75
  %39 = ptrtoint ptr %id18 to i32, !dbg !75
  call void @__asan_store4_noabort(i32 %39), !dbg !75
  store i32 %id, ptr %id18, align 4, !dbg !75
  %40 = ptrtoint ptr %rctx to i32, !dbg !75
  call void @__asan_load4_noabort(i32 %40), !dbg !75
  %41 = load i32, ptr %rctx, align 4, !dbg !75
  %42 = ptrtoint ptr %__regs to i32, !dbg !75
  call void @__asan_load4_noabort(i32 %42), !dbg !75
  %43 = load ptr, ptr %__regs, align 4, !dbg !75
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %41, ptr noundef %__data, i64 noundef 1, ptr noundef %43, ptr noundef %13, ptr noundef null) #10, !dbg !75
  br label %cleanup, !dbg !75

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10, !dbg !75
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10, !dbg !75
  ret void, !dbg !75
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_error_report_template(ptr noundef %__data, i32 noundef %error_detector, i32 noundef %id) #0 align 64 !dbg !97 {
entry:
  call void @__sanitizer_cov_trace_pc() #9, !dbg !98
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.13, align 8
  %conv = zext i32 %error_detector to i64, !dbg !99
  %conv4 = zext i32 %id to i64, !dbg !99
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #10, !dbg !99
  ret void, !dbg !99
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_error_report_template(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 !dbg !100 {
entry:
  call void @__sanitizer_cov_trace_pc() #9, !dbg !101
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16, !dbg !102
  %0 = ptrtoint ptr %ent to i32, !dbg !102
  call void @__asan_load4_noabort(i32 %0), !dbg !102
  %1 = load ptr, ptr %ent, align 8, !dbg !102
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10, !dbg !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call), !dbg !102
  %cmp.not = icmp eq i32 %call, 1, !dbg !102
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !102

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9, !dbg !102
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.16, align 8, !dbg !102
  %2 = add i64 %gcov_ctr, 1, !dbg !102
  store i64 %2, ptr @__llvm_gcov_ctr.16, align 8, !dbg !102
  br label %cleanup, !dbg !102

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9, !dbg !102
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, !dbg !102
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15, !dbg !102
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8, !dbg !102
  %3 = add i64 %gcov_ctr6, 1, !dbg !102
  store i64 %3, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8, !dbg !102
  %error_detector = getelementptr inbounds %struct.trace_event_raw_error_report_template, ptr %1, i32 0, i32 1, !dbg !102
  %4 = ptrtoint ptr %error_detector to i32, !dbg !102
  call void @__asan_load4_noabort(i32 %4), !dbg !102
  %5 = load i32, ptr %error_detector, align 4, !dbg !102
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %5, ptr noundef nonnull @trace_raw_output_error_report_template.symbols) #10, !dbg !102
  %id = getelementptr inbounds %struct.trace_event_raw_error_report_template, ptr %1, i32 0, i32 2, !dbg !102
  %6 = ptrtoint ptr %id to i32, !dbg !102
  call void @__asan_load4_noabort(i32 %6), !dbg !102
  %7 = load i32, ptr %id, align 4, !dbg !102
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.7, ptr noundef %call1, i32 noundef %7) #10, !dbg !102
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #10, !dbg !102
  br label %cleanup, !dbg !102

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.end ], !dbg !102
  ret i32 %retval.0, !dbg !102
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #5 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 -1366195103) #10
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #10
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #10
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 11
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #9
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @llvm_gcda_summary_info() #10
  tail call void @llvm_gcda_end_file() #10
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #6 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.11, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.12, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.13, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.14, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.15, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.16, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.17, align 8
  store i64 0, ptr @__llvm_gcov_ctr.18, align 8
  store i64 0, ptr @__llvm_gcov_ctr.19, align 8
  store i64 0, ptr @__llvm_gcov_ctr.20, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #5 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #10
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { noinline nounwind uwtable(sync) }
attributes #6 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind uwtable(sync) }
attributes #9 = { nomerge }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !5, !6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!llvm.named.register.sp = !{!40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.gcov = !{!49}
!llvm.ident = !{!50}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/error_report-traces.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @__tracepoint_error_report_end, !3, !"__tracepoint_error_report_end", i1 false, i1 false}
!3 = !{!"../include/trace/events/error_report.h", i32 69, i32 1}
!4 = !{ptr @__tracepoint_ptr_error_report_end, !3, !"__tracepoint_ptr_error_report_end", i1 false, i1 false}
!5 = !{ptr @__SCK__tp_func_error_report_end, !3, !"__SCK__tp_func_error_report_end", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/trace/events/error_report.h", i32 38, i32 1}
!8 = !{ptr @__TRACE_SYSTEM_ERROR_DETECTOR_KFENCE, !7, !"__TRACE_SYSTEM_ERROR_DETECTOR_KFENCE", i1 false, i1 false}
!9 = !{ptr @TRACE_SYSTEM_ERROR_DETECTOR_KFENCE, !7, !"TRACE_SYSTEM_ERROR_DETECTOR_KFENCE", i1 false, i1 false}
!10 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__TRACE_SYSTEM_ERROR_DETECTOR_KASAN, !7, !"__TRACE_SYSTEM_ERROR_DETECTOR_KASAN", i1 false, i1 false}
!12 = !{ptr @TRACE_SYSTEM_ERROR_DETECTOR_KASAN, !7, !"TRACE_SYSTEM_ERROR_DETECTOR_KASAN", i1 false, i1 false}
!13 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__TRACE_SYSTEM_ERROR_DETECTOR_WARN, !7, !"__TRACE_SYSTEM_ERROR_DETECTOR_WARN", i1 false, i1 false}
!15 = !{ptr @TRACE_SYSTEM_ERROR_DETECTOR_WARN, !7, !"TRACE_SYSTEM_ERROR_DETECTOR_WARN", i1 false, i1 false}
!16 = !{ptr @event_class_error_report_template, !17, !"event_class_error_report_template", i1 false, i1 false}
!17 = !{!"../include/trace/events/error_report.h", i32 49, i32 1}
!18 = !{ptr @event_error_report_end, !3, !"event_error_report_end", i1 false, i1 false}
!19 = !{ptr @__event_error_report_end, !3, !"__event_error_report_end", i1 false, i1 false}
!20 = !{ptr @__bpf_trace_tp_map_error_report_end, !3, !"__bpf_trace_tp_map_error_report_end", i1 false, i1 false}
!21 = !{ptr @__ksymtab___tracepoint_error_report_end, !22, !"__ksymtab___tracepoint_error_report_end", i1 false, i1 false}
!22 = !{!"../kernel/trace/error_report-traces.c", i32 11, i32 1}
!23 = !{ptr @__ksymtab___traceiter_error_report_end, !22, !"__ksymtab___traceiter_error_report_end", i1 false, i1 false}
!24 = !{ptr @__ksymtab___SCK__tp_func_error_report_end, !22, !"__ksymtab___SCK__tp_func_error_report_end", i1 false, i1 false}
!25 = !{ptr @__tpstrtab_error_report_end, !3, !"__tpstrtab_error_report_end", i1 false, i1 false}
!26 = !{ptr @str__error_report__trace_system_name, !27, !"str__error_report__trace_system_name", i1 false, i1 false}
!27 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!28 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @trace_event_fields_error_report_template, !17, !"trace_event_fields_error_report_template", i1 false, i1 false}
!33 = !{ptr @trace_event_type_funcs_error_report_template, !17, !"trace_event_type_funcs_error_report_template", i1 false, i1 false}
!34 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @trace_raw_output_error_report_template.symbols, !17, !"symbols", i1 false, i1 false}
!39 = !{ptr @print_fmt_error_report_template, !17, !"print_fmt_error_report_template", i1 false, i1 false}
!40 = !{!"sp"}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/error_report-traces.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/error_report-traces.gcda", !0}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = distinct !DISubprogram(name: "__traceiter_error_report_end", scope: !52, file: !52, line: 69, type: !53, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !54)
!52 = !DIFile(filename: "../include/trace/events/error_report.h", directory: "/llk/linux-5.17/build_arm_allyes")
!53 = !DISubroutineType(types: !54)
!54 = !{}
!55 = !DILocation(line: 69, scope: !51)
!56 = !DILocation(line: 69, column: 1, scope: !51)
!57 = distinct !{!57, !56, !56}
!58 = distinct !DISubprogram(name: "trace_event_raw_event_error_report_template", scope: !52, file: !52, line: 49, type: !53, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !54)
!59 = !DILocation(line: 49, scope: !58)
!60 = !DILocation(line: 49, column: 1, scope: !58)
!61 = !DILocation(line: 716, column: 31, scope: !62, inlinedAt: !64)
!62 = distinct !DISubprogram(name: "trace_trigger_soft_disabled", scope: !63, file: !63, line: 714, type: !53, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !54)
!63 = !DIFile(filename: "../include/linux/trace_events.h", directory: "/llk/linux-5.17/build_arm_allyes")
!64 = distinct !DILocation(line: 49, column: 1, scope: !58)
!65 = !DILocation(line: 718, column: 6, scope: !62, inlinedAt: !64)
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !DILocation(line: 723, column: 6, scope: !62, inlinedAt: !64)
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !DILocation(line: 726, column: 39, scope: !62, inlinedAt: !64)
!70 = !DILocation(line: 726, column: 9, scope: !62, inlinedAt: !64)
!71 = !DILocation(line: 0, scope: !58)
!72 = !DILocation(line: 0, scope: !62, inlinedAt: !64)
!73 = distinct !DISubprogram(name: "perf_trace_error_report_template", scope: !52, file: !52, line: 49, type: !53, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !54)
!74 = !DILocation(line: 49, scope: !73)
!75 = !DILocation(line: 49, column: 1, scope: !73)
!76 = !{!"auto-init"}
!77 = !DILocation(line: 104, column: 4, scope: !78, inlinedAt: !80)
!78 = distinct !DISubprogram(name: "current_thread_info", scope: !79, file: !79, line: 101, type: !53, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !54)
!79 = !DIFile(filename: "../arch/arm/include/asm/thread_info.h", directory: "/llk/linux-5.17/build_arm_allyes")
!80 = distinct !DILocation(line: 49, column: 1, scope: !73)
!81 = !DILocation(line: 104, column: 26, scope: !78, inlinedAt: !80)
!82 = !DILocation(line: 103, column: 9, scope: !78, inlinedAt: !80)
!83 = !DILocation(line: 436, column: 11, scope: !84, inlinedAt: !85)
!84 = distinct !DISubprogram(name: "bpf_prog_array_valid", scope: !63, file: !63, line: 417, type: !53, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !54)
!85 = distinct !DILocation(line: 49, column: 1, scope: !73)
!86 = !DILocation(line: 436, column: 10, scope: !84, inlinedAt: !85)
!87 = !DILocation(line: 840, column: 10, scope: !88, inlinedAt: !90)
!88 = distinct !DISubprogram(name: "hlist_empty", scope: !89, file: !89, line: 838, type: !53, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !54)
!89 = !DIFile(filename: "../include/linux/list.h", directory: "/llk/linux-5.17/build_arm_allyes")
!90 = distinct !DILocation(line: 49, column: 1, scope: !73)
!91 = !DILocation(line: 840, column: 9, scope: !88, inlinedAt: !90)
!92 = !DILocation(line: 0, scope: !73)
!93 = !DILocation(line: 1171, column: 2, scope: !94, inlinedAt: !96)
!94 = distinct !DISubprogram(name: "perf_fetch_caller_regs", scope: !95, file: !95, line: 1169, type: !53, scopeLine: 1170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !54)
!95 = !DIFile(filename: "../include/linux/perf_event.h", directory: "/llk/linux-5.17/build_arm_allyes")
!96 = distinct !DILocation(line: 49, column: 1, scope: !73)
!97 = distinct !DISubprogram(name: "__bpf_trace_error_report_template", scope: !52, file: !52, line: 49, type: !53, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !54)
!98 = !DILocation(line: 49, scope: !97)
!99 = !DILocation(line: 49, column: 1, scope: !97)
!100 = distinct !DISubprogram(name: "trace_raw_output_error_report_template", scope: !52, file: !52, line: 49, type: !53, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !54)
!101 = !DILocation(line: 49, scope: !100)
!102 = !DILocation(line: 49, column: 1, scope: !100)
