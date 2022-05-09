; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_irqsoff.c_pt.bc'
source_filename = "../kernel/trace/trace_irqsoff.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+start_critical_timings\22, \22a\22\09"
module asm "\09.weak\09__crc_start_critical_timings\09\09\09\09"
module asm "\09.long\09__crc_start_critical_timings\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_start_critical_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22start_critical_timings\22\09\09\09\09\09"
module asm "__kstrtabns_start_critical_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+stop_critical_timings\22, \22a\22\09"
module asm "\09.weak\09__crc_stop_critical_timings\09\09\09\09"
module asm "\09.long\09__crc_stop_critical_timings\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stop_critical_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22stop_critical_timings\22\09\09\09\09\09"
module asm "__kstrtabns_stop_critical_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracer = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_array = type { %struct.list_head, ptr, %struct.array_buffer, %struct.array_buffer, i8, i32, ptr, %struct.work_struct, %struct.irq_work, ptr, ptr, %struct.arch_spinlock_t, i32, i32, i32, [452 x ptr], [452 x ptr], i32, i32, i32, i8, i32, i32, ptr, i32, [32 x i8], i32, %struct.raw_spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.list_head, ptr, ptr }
%struct.array_buffer = type { ptr, ptr, ptr, i64, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_array_cpu = type { %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.kuid_t, [16 x i8], i32, i8 }
%struct.kuid_t = type { i32 }

@__kstrtab_start_critical_timings = external dso_local constant [0 x i8], align 1
@__kstrtabns_start_critical_timings = external dso_local constant [0 x i8], align 1
@__ksymtab_start_critical_timings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @start_critical_timings to i32), ptr @__kstrtab_start_critical_timings, ptr @__kstrtabns_start_critical_timings }, section "___ksymtab_gpl+start_critical_timings", align 4
@_kbl_addr_start_critical_timings = internal global i32 ptrtoint (ptr @start_critical_timings to i32), section "_kprobe_blacklist", align 4
@__kstrtab_stop_critical_timings = external dso_local constant [0 x i8], align 1
@__kstrtabns_stop_critical_timings = external dso_local constant [0 x i8], align 1
@__ksymtab_stop_critical_timings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stop_critical_timings to i32), ptr @__kstrtab_stop_critical_timings, ptr @__kstrtabns_stop_critical_timings }, section "___ksymtab_gpl+stop_critical_timings", align 4
@_kbl_addr_stop_critical_timings = internal global i32 ptrtoint (ptr @stop_critical_timings to i32), section "_kprobe_blacklist", align 4
@_kbl_addr_tracer_hardirqs_on = internal global i32 ptrtoint (ptr @tracer_hardirqs_on to i32), section "_kprobe_blacklist", align 4
@_kbl_addr_tracer_hardirqs_off = internal global i32 ptrtoint (ptr @tracer_hardirqs_off to i32), section "_kprobe_blacklist", align 4
@__initcall__kmod_trace_irqsoff__274_750_init_irqsoff_tracer1 = internal global ptr @init_irqsoff_tracer, section ".initcall1.init", align 4
@__pcpu_unique_tracing_cpu = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@tracing_cpu = weak dso_local global i32 0, section ".data..percpu", align 4
@trace_type = internal unnamed_addr global i1 false, section ".data..read_mostly", align 4
@irqsoff_trace = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@tracer_enabled = internal unnamed_addr global i1 false, section ".data..read_mostly", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@max_sequence = internal unnamed_addr global i32 0, section ".data..cacheline_aligned", align 128
@max_trace_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@tracing_thresh = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max_trace_lock\00", [17 x i8] zeroinitializer }, align 32
@irqsoff_tracer = internal global %struct.tracer { ptr @.str.1, ptr @irqsoff_tracer_init, ptr @irqsoff_tracer_reset, ptr @irqsoff_tracer_start, ptr @irqsoff_tracer_stop, ptr null, ptr @irqsoff_trace_open, ptr null, ptr @irqsoff_trace_close, ptr null, ptr null, ptr null, ptr @trace_selftest_startup_irqsoff, ptr @irqsoff_print_header, ptr @irqsoff_print_line, ptr null, ptr @irqsoff_flag_changed, ptr null, ptr null, i32 0, i8 1, i8 1, i8 1, i8 0 }, section ".data..read_mostly", align 4
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"irqsoff\00", [24 x i8] zeroinitializer }, align 32
@irqsoff_busy = internal global { i1, [31 x i8] } zeroinitializer, align 32
@save_flags = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__irqsoff_tracer_init._entry = internal constant %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 572, ptr null, ptr null }, align 1
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013failed to start irqsoff tracer\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__irqsoff_tracer_init\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"kernel/trace/trace_irqsoff.c\00", [35 x i8] zeroinitializer }, align 32
@__irqsoff_tracer_init._entry_ptr = internal global ptr @__irqsoff_tracer_init._entry, section ".printk_index", align 4
@function_enabled = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__llvm_gcov_ctr = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.5 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.6 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.7 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.8 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.9 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.10 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.11 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.12 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.13 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.14 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.15 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.16 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.17 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.22 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.23 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.24 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.25 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.26 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.27 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.28 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.29 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.30 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.31 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.32 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.33 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.34 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.35 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.36 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.37 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.38 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.39 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.40 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.41 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.42 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.43 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.44 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.45 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.46 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.47 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.48 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.49 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.50 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.51 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.52 = internal global [3 x i64] zeroinitializer
@0 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_irqsoff.gcda\00", [63 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [49 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 1088418336, i32 1625735087 }, %emit_function_args_ty { i32 1, i32 -1732454067, i32 1625735087 }, %emit_function_args_ty { i32 2, i32 139037035, i32 1625735087 }, %emit_function_args_ty { i32 3, i32 -932836547, i32 1625735087 }, %emit_function_args_ty { i32 4, i32 1590222835, i32 1625735087 }, %emit_function_args_ty { i32 5, i32 1673031759, i32 1625735087 }, %emit_function_args_ty { i32 6, i32 446842237, i32 1625735087 }, %emit_function_args_ty { i32 7, i32 636059304, i32 1625735087 }, %emit_function_args_ty { i32 8, i32 -520921361, i32 1625735087 }, %emit_function_args_ty { i32 9, i32 835031753, i32 1625735087 }, %emit_function_args_ty { i32 10, i32 81157262, i32 1625735087 }, %emit_function_args_ty { i32 11, i32 288547376, i32 1625735087 }, %emit_function_args_ty { i32 12, i32 -464218692, i32 1625735087 }, %emit_function_args_ty { i32 13, i32 -1584402539, i32 1625735087 }, %emit_function_args_ty { i32 14, i32 1249662737, i32 1625735087 }, %emit_function_args_ty { i32 15, i32 -1023618272, i32 1625735087 }, %emit_function_args_ty { i32 16, i32 1663674071, i32 1625735087 }, %emit_function_args_ty { i32 17, i32 -1672745738, i32 1625735087 }, %emit_function_args_ty { i32 18, i32 47165945, i32 1625735087 }, %emit_function_args_ty { i32 19, i32 1193399290, i32 1625735087 }, %emit_function_args_ty { i32 20, i32 1836136019, i32 1625735087 }, %emit_function_args_ty { i32 21, i32 -1846855200, i32 1625735087 }, %emit_function_args_ty { i32 22, i32 1044414937, i32 1625735087 }, %emit_function_args_ty { i32 23, i32 1311495864, i32 1625735087 }, %emit_function_args_ty { i32 24, i32 -169546425, i32 1625735087 }, %emit_function_args_ty { i32 25, i32 -1387015920, i32 1625735087 }, %emit_function_args_ty { i32 26, i32 2041027924, i32 1625735087 }, %emit_function_args_ty { i32 27, i32 240007401, i32 1625735087 }, %emit_function_args_ty { i32 28, i32 -1224931141, i32 1625735087 }, %emit_function_args_ty { i32 29, i32 121723724, i32 1625735087 }, %emit_function_args_ty { i32 30, i32 -1356808857, i32 1625735087 }, %emit_function_args_ty { i32 31, i32 1371187959, i32 1625735087 }, %emit_function_args_ty { i32 32, i32 -1169061699, i32 1625735087 }, %emit_function_args_ty { i32 33, i32 250122780, i32 1625735087 }, %emit_function_args_ty { i32 34, i32 252956930, i32 1625735087 }, %emit_function_args_ty { i32 35, i32 -1317038651, i32 1625735087 }, %emit_function_args_ty { i32 36, i32 1800691946, i32 1625735087 }, %emit_function_args_ty { i32 37, i32 749895266, i32 1625735087 }, %emit_function_args_ty { i32 38, i32 95847182, i32 1625735087 }, %emit_function_args_ty { i32 39, i32 -1543658690, i32 1625735087 }, %emit_function_args_ty { i32 40, i32 -1082265946, i32 1625735087 }, %emit_function_args_ty { i32 41, i32 -868360281, i32 1625735087 }, %emit_function_args_ty { i32 42, i32 -693354315, i32 1625735087 }, %emit_function_args_ty { i32 43, i32 1212846073, i32 1625735087 }, %emit_function_args_ty { i32 44, i32 -573374670, i32 1625735087 }, %emit_function_args_ty { i32 45, i32 -2081766496, i32 1625735087 }, %emit_function_args_ty { i32 46, i32 424661884, i32 1625735087 }, %emit_function_args_ty { i32 47, i32 -1280914545, i32 1625735087 }, %emit_function_args_ty { i32 48, i32 2037567387, i32 1625735087 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [49 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.5 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.6 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.7 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.8 }, %emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr.9 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.10 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.11 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.12 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.13 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.14 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.15 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.16 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.17 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.18 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.19 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.20 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.21 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.22 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.23 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.24 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.25 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.26 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.27 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.28 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.29 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.30 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.31 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.32 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.33 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.34 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.35 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.36 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.37 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.38 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.39 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.40 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.41 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.42 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.43 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.44 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.45 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.46 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.47 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.48 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.49 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.50 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.51 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.52 }]
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"max_trace_lock\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 29, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 636, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"irqsoff_busy\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [11 x i8] c"save_flags\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 38, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [32 x i8] c"../kernel/trace/trace_irqsoff.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 572, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"function_enabled\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @__initcall__kmod_trace_irqsoff__274_750_init_irqsoff_tracer1, ptr @__irqsoff_tracer_init._entry, ptr @__irqsoff_tracer_init._entry_ptr, ptr @__ksymtab_start_critical_timings, ptr @__ksymtab_stop_critical_timings, ptr @_kbl_addr_start_critical_timings, ptr @_kbl_addr_stop_critical_timings, ptr @_kbl_addr_tracer_hardirqs_off, ptr @_kbl_addr_tracer_hardirqs_on, ptr @max_trace_lock, ptr @.str, ptr @.str.1, ptr @irqsoff_busy, ptr @save_flags, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @function_enabled], section "llvm.metadata"
@1 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_trace_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqsoff_busy to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_flags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @function_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @start_critical_timings() #0 align 64 !dbg !57 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !60
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 8, !dbg !61
  %0 = add i64 %gcov_ctr, 1, !dbg !61
  store i64 %0, ptr @__llvm_gcov_ctr, align 8, !dbg !61
  %gcov_ctr.i3 = load i64, ptr @__llvm_gcov_ctr.5, align 8
  %1 = add i64 %gcov_ctr.i3, 1
  store i64 %1, ptr @__llvm_gcov_ctr.5, align 8
  %.b.i4 = load i1, ptr @trace_type, align 4, !dbg !62
  br i1 %.b.i4, label %irq_trace.exit, label %entry.if.end_crit_edge, !dbg !65

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !65
  br label %if.end, !dbg !65

irq_trace.exit:                                   ; preds = %entry
  %gcov_ctr.i.i5 = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %2 = add i64 %gcov_ctr.i.i5, 1
  store i64 %2, ptr @__llvm_gcov_ctr.13, align 8
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !dbg !66, !srcloc !70
  %gcov_ctr11.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 1), align 8, !dbg !71
  %4 = add i64 %gcov_ctr11.i, 1, !dbg !71
  store i64 %4, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 1), align 8, !dbg !71
  %gcov_ctr.i12.i = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %5 = add i64 %gcov_ctr.i12.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.14, align 8
  %6 = and i32 %3, 128, !dbg !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6), !dbg !61
  %tobool.not = icmp eq i32 %6, 0, !dbg !61
  br i1 %tobool.not, label %irq_trace.exit.if.end_crit_edge, label %if.then, !dbg !72

irq_trace.exit.if.end_crit_edge:                  ; preds = %irq_trace.exit
  call void @__sanitizer_cov_trace_pc() #13, !dbg !72
  br label %if.end, !dbg !72

if.then:                                          ; preds = %irq_trace.exit
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !73
  %7 = add i64 %gcov_ctr2, 1, !dbg !73
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !73
  %8 = tail call ptr @llvm.returnaddress(i32 0), !dbg !73
  %9 = ptrtoint ptr %8 to i32, !dbg !73
  %gcov_ctr.i7 = load i64, ptr @__llvm_gcov_ctr.7, align 8
  %10 = add i64 %gcov_ctr.i7, 1
  store i64 %10, ptr @__llvm_gcov_ctr.7, align 8
  %11 = load ptr, ptr @irqsoff_trace, align 4, !dbg !74
  %.b.i = load i1, ptr @tracer_enabled, align 4, !dbg !77
  br i1 %.b.i, label %lor.lhs.false.i, label %if.then.if.then.i_crit_edge, !dbg !78

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13, !dbg !78
  br label %if.then.i, !dbg !78

lor.lhs.false.i:                                  ; preds = %if.then
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.6, align 16, !dbg !79
  %12 = add i64 %gcov_ctr.i, 1, !dbg !79
  store i64 %12, ptr @__llvm_gcov_ctr.6, align 16, !dbg !79
  %call.i = tail call i32 @tracing_is_enabled() #14, !dbg !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !79
  %tobool1.not.i = icmp eq i32 %call.i, 0, !dbg !79
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i, !dbg !80

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !80
  br label %if.then.i, !dbg !80

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  %gcov_ctr43.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 1), align 8
  %13 = add i64 %gcov_ctr43.i, 1
  store i64 %13, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 1), align 8
  br label %if.end, !dbg !81

if.end.i:                                         ; preds = %lor.lhs.false.i
  %gcov_ctr.i72.i = load i64, ptr @__llvm_gcov_ctr.15, align 8, !dbg !82
  %14 = add i64 %gcov_ctr.i72.i, 1, !dbg !82
  store i64 %14, ptr @__llvm_gcov_ctr.15, align 8, !dbg !82
  %15 = tail call i32 @llvm.read_register.i32(metadata !46) #14, !dbg !82
  %and.i.i = and i32 %15, -16384, !dbg !86
  %16 = inttoptr i32 %and.i.i to ptr, !dbg !87
  %cpu3.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3, !dbg !88
  %17 = ptrtoint ptr %cpu3.i to i32, !dbg !88
  call void @__asan_load4_noabort(i32 %17), !dbg !88
  %18 = load i32, ptr %cpu3.i, align 4, !dbg !88
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18, !dbg !89
  %19 = ptrtoint ptr %arrayidx.i to i32, !dbg !89
  call void @__asan_load4_noabort(i32 %19), !dbg !89
  %20 = load i32, ptr %arrayidx.i, align 4, !dbg !89
  %add.i = add i32 %20, ptrtoint (ptr @tracing_cpu to i32), !dbg !89
  %21 = inttoptr i32 %add.i to ptr, !dbg !89
  %22 = ptrtoint ptr %21 to i32, !dbg !89
  call void @__asan_load4_noabort(i32 %22), !dbg !89
  %23 = load i32, ptr %21, align 4, !dbg !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23), !dbg !89
  %tobool5.not.i = icmp eq i32 %23, 0, !dbg !89
  br i1 %tobool5.not.i, label %do.body8.i, label %if.then6.i, !dbg !89

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !90
  %gcov_ctr44.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 2), align 16
  %24 = add i64 %gcov_ctr44.i, 1
  store i64 %24, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 2), align 16
  br label %if.end, !dbg !91

do.body8.i:                                       ; preds = %if.end.i
  %data14.i = getelementptr inbounds %struct.trace_array, ptr %11, i32 0, i32 2, i32 2, !dbg !92
  %25 = ptrtoint ptr %data14.i to i32, !dbg !92
  call void @__asan_load4_noabort(i32 %25), !dbg !92
  %26 = load ptr, ptr %data14.i, align 8, !dbg !92
  %27 = ptrtoint ptr %26 to i32, !dbg !92
  %add17.i = add i32 %20, %27, !dbg !92
  %28 = inttoptr i32 %add17.i to ptr, !dbg !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add17.i), !dbg !93
  %tobool18.not.i = icmp eq i32 %add17.i, 0, !dbg !93
  br i1 %tobool18.not.i, label %do.body8.i.if.then25.i_crit_edge, label %lor.lhs.false22.i, !dbg !94, !prof !95

do.body8.i.if.then25.i_crit_edge:                 ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !94
  br label %if.then25.i, !dbg !94

lor.lhs.false22.i:                                ; preds = %do.body8.i
  %gcov_ctr45.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 3), align 8, !dbg !96
  %29 = add i64 %gcov_ctr45.i, 1, !dbg !96
  store i64 %29, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 3), align 8, !dbg !96
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.16, align 8
  %30 = add i64 %gcov_ctr.i.i, 1
  store i64 %30, ptr @__llvm_gcov_ctr.16, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.20, align 8
  %31 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %31, ptr @__llvm_gcov_ctr.20, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %28, i32 noundef 4) #14, !dbg !97
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %32 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %32, ptr @__llvm_gcov_ctr.21, align 8
  %33 = ptrtoint ptr %28 to i32, !dbg !104
  call void @__asan_load4_noabort(i32 %33), !dbg !104
  %34 = load volatile i32, ptr %28, align 4, !dbg !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34), !dbg !105
  %tobool24.not.i = icmp eq i32 %34, 0, !dbg !105
  br i1 %tobool24.not.i, label %if.end26.i, label %lor.lhs.false22.i.if.then25.i_crit_edge, !dbg !93

lor.lhs.false22.i.if.then25.i_crit_edge:          ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !93
  br label %if.then25.i, !dbg !93

if.then25.i:                                      ; preds = %lor.lhs.false22.i.if.then25.i_crit_edge, %do.body8.i.if.then25.i_crit_edge
  %gcov_ctr46.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 4), align 16
  %35 = add i64 %gcov_ctr46.i, 1
  store i64 %35, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 4), align 16
  br label %if.end, !dbg !106

if.end26.i:                                       ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !90
  %gcov_ctr.i62.i = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %36 = add i64 %gcov_ctr.i62.i, 1
  store i64 %36, ptr @__llvm_gcov_ctr.17, align 8
  %gcov_ctr.i.i63.i = load i64, ptr @__llvm_gcov_ctr.22, align 8
  %37 = add i64 %gcov_ctr.i.i63.i, 1
  store i64 %37, ptr @__llvm_gcov_ctr.22, align 8
  %call.i.i64.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %28, i32 noundef 4) #14, !dbg !107
  %gcov_ctr.i.i.i65.i = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %38 = add i64 %gcov_ctr.i.i.i65.i, 1
  store i64 %38, ptr @__llvm_gcov_ctr.21, align 8
  %gcov_ctr.i2.i.i = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %39 = add i64 %gcov_ctr.i2.i.i, 1
  store i64 %39, ptr @__llvm_gcov_ctr.23, align 8
  %gcov_ctr.i.i3.i.i = load i64, ptr @__llvm_gcov_ctr.24, align 8
  %40 = add i64 %gcov_ctr.i.i3.i.i, 1
  store i64 %40, ptr @__llvm_gcov_ctr.24, align 8
  tail call void @llvm.prefetch.p0(ptr nonnull %28, i32 1, i32 3, i32 1) #14, !dbg !112
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %28, ptr nonnull %28, i32 1, ptr nonnull elementtype(i32) %28) #14, !dbg !112, !srcloc !119
  %42 = load i32, ptr @max_sequence, align 128, !dbg !120
  %critical_sequence.i = getelementptr inbounds %struct.trace_array_cpu, ptr %28, i32 0, i32 6, !dbg !121
  %43 = ptrtoint ptr %critical_sequence.i to i32, !dbg !122
  call void @__asan_store4_noabort(i32 %43), !dbg !122
  store i32 %42, ptr %critical_sequence.i, align 8, !dbg !122
  %call28.i = tail call i64 @ftrace_now(i32 noundef %18) #14, !dbg !123
  %preempt_timestamp.i = getelementptr inbounds %struct.trace_array_cpu, ptr %28, i32 0, i32 11, !dbg !124
  %44 = ptrtoint ptr %preempt_timestamp.i to i32, !dbg !125
  call void @__asan_store8_noabort(i32 %44), !dbg !125
  store i64 %call28.i, ptr %preempt_timestamp.i, align 8, !dbg !125
  %gcov_ctr48.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 6), align 16, !dbg !126
  %45 = add i64 %gcov_ctr48.i, 1, !dbg !126
  store i64 %45, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 6), align 16, !dbg !126
  %critical_start.i = getelementptr inbounds %struct.trace_array_cpu, ptr %28, i32 0, i32 4, !dbg !127
  %46 = ptrtoint ptr %critical_start.i to i32, !dbg !128
  call void @__asan_store4_noabort(i32 %46), !dbg !128
  store i32 %9, ptr %critical_start.i, align 8, !dbg !128
  %gcov_ctr.i73.i = load i64, ptr @__llvm_gcov_ctr.18, align 8, !dbg !129
  %47 = add i64 %gcov_ctr.i73.i, 1, !dbg !129
  store i64 %47, ptr @__llvm_gcov_ctr.18, align 8, !dbg !129
  %gcov_ctr.i.i74.i = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %48 = add i64 %gcov_ctr.i.i74.i, 1
  store i64 %48, ptr @__llvm_gcov_ctr.13, align 8
  %49 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !dbg !133, !srcloc !70
  %gcov_ctr.i2.i75.i = load i64, ptr @__llvm_gcov_ctr.25, align 8
  %50 = add i64 %gcov_ctr.i2.i75.i, 1
  store i64 %50, ptr @__llvm_gcov_ctr.25, align 8
  %gcov_ctr.i.i.i76.i = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %51 = add i64 %gcov_ctr.i.i.i76.i, 1
  store i64 %51, ptr @__llvm_gcov_ctr.14, align 8
  %and.i.i.i.i = lshr i32 %49, 7, !dbg !135
  %and.i.lobit.i.i.i = and i32 %and.i.i.i.i, 1, !dbg !135
  %call2.i.i.i = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %and.i.lobit.i.i.i) #14, !dbg !138
  tail call void @trace_function(ptr noundef %11, i32 noundef %9, i32 noundef 0, i32 noundef %call2.i.i.i) #14, !dbg !139
  %52 = ptrtoint ptr %arrayidx.i to i32, !dbg !140
  call void @__asan_load4_noabort(i32 %52), !dbg !140
  %53 = load i32, ptr %arrayidx.i, align 4, !dbg !140
  %add39.i = add i32 %53, ptrtoint (ptr @tracing_cpu to i32), !dbg !140
  %54 = inttoptr i32 %add39.i to ptr, !dbg !140
  %55 = ptrtoint ptr %54 to i32, !dbg !141
  call void @__asan_store4_noabort(i32 %55), !dbg !141
  store i32 1, ptr %54, align 4, !dbg !141
  %gcov_ctr.i66.i = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %56 = add i64 %gcov_ctr.i66.i, 1
  store i64 %56, ptr @__llvm_gcov_ctr.19, align 8
  %gcov_ctr.i.i67.i = load i64, ptr @__llvm_gcov_ctr.22, align 8
  %57 = add i64 %gcov_ctr.i.i67.i, 1
  store i64 %57, ptr @__llvm_gcov_ctr.22, align 8
  %call.i.i68.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %28, i32 noundef 4) #14, !dbg !142
  %gcov_ctr.i.i.i69.i = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %58 = add i64 %gcov_ctr.i.i.i69.i, 1
  store i64 %58, ptr @__llvm_gcov_ctr.21, align 8
  %gcov_ctr.i2.i70.i = load i64, ptr @__llvm_gcov_ctr.26, align 8
  %59 = add i64 %gcov_ctr.i2.i70.i, 1
  store i64 %59, ptr @__llvm_gcov_ctr.26, align 8
  %gcov_ctr.i.i3.i71.i = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %60 = add i64 %gcov_ctr.i.i3.i71.i, 1
  store i64 %60, ptr @__llvm_gcov_ctr.27, align 8
  tail call void @llvm.prefetch.p0(ptr nonnull %28, i32 1, i32 3, i32 1) #14, !dbg !146
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %28, ptr nonnull %28, i32 1, ptr nonnull elementtype(i32) %28) #14, !dbg !146, !srcloc !151
  br label %if.end, !dbg !152

if.end:                                           ; preds = %if.end26.i, %if.then25.i, %if.then6.i, %if.then.i, %irq_trace.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void, !dbg !153
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stop_critical_timings() #0 align 64 !dbg !154 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !155
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.8, align 8, !dbg !156
  %0 = add i64 %gcov_ctr, 1, !dbg !156
  store i64 %0, ptr @__llvm_gcov_ctr.8, align 8, !dbg !156
  %gcov_ctr.i3 = load i64, ptr @__llvm_gcov_ctr.5, align 8
  %1 = add i64 %gcov_ctr.i3, 1
  store i64 %1, ptr @__llvm_gcov_ctr.5, align 8
  %.b.i4 = load i1, ptr @trace_type, align 4, !dbg !157
  br i1 %.b.i4, label %irq_trace.exit, label %entry.if.end_crit_edge, !dbg !159

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !159
  br label %if.end, !dbg !159

irq_trace.exit:                                   ; preds = %entry
  %gcov_ctr.i.i5 = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %2 = add i64 %gcov_ctr.i.i5, 1
  store i64 %2, ptr @__llvm_gcov_ctr.13, align 8
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !dbg !160, !srcloc !70
  %gcov_ctr11.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 1), align 8, !dbg !162
  %4 = add i64 %gcov_ctr11.i, 1, !dbg !162
  store i64 %4, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 1), align 8, !dbg !162
  %gcov_ctr.i12.i = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %5 = add i64 %gcov_ctr.i12.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.14, align 8
  %6 = and i32 %3, 128, !dbg !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6), !dbg !156
  %tobool.not = icmp eq i32 %6, 0, !dbg !156
  br i1 %tobool.not, label %irq_trace.exit.if.end_crit_edge, label %if.then, !dbg !163

irq_trace.exit.if.end_crit_edge:                  ; preds = %irq_trace.exit
  call void @__sanitizer_cov_trace_pc() #13, !dbg !163
  br label %if.end, !dbg !163

if.then:                                          ; preds = %irq_trace.exit
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 1), align 8, !dbg !164
  %7 = add i64 %gcov_ctr2, 1, !dbg !164
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 1), align 8, !dbg !164
  %8 = tail call ptr @llvm.returnaddress(i32 0), !dbg !164
  %9 = ptrtoint ptr %8 to i32, !dbg !164
  %gcov_ctr.i7 = load i64, ptr @__llvm_gcov_ctr.7, align 8
  %10 = add i64 %gcov_ctr.i7, 1
  store i64 %10, ptr @__llvm_gcov_ctr.7, align 8
  %11 = load ptr, ptr @irqsoff_trace, align 4, !dbg !165
  %gcov_ctr.i84.i = load i64, ptr @__llvm_gcov_ctr.15, align 8, !dbg !168
  %12 = add i64 %gcov_ctr.i84.i, 1, !dbg !168
  store i64 %12, ptr @__llvm_gcov_ctr.15, align 8, !dbg !168
  %13 = tail call i32 @llvm.read_register.i32(metadata !46) #14, !dbg !168
  %and.i.i = and i32 %13, -16384, !dbg !170
  %14 = inttoptr i32 %and.i.i to ptr, !dbg !171
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3, !dbg !172
  %15 = ptrtoint ptr %cpu1.i to i32, !dbg !172
  call void @__asan_load4_noabort(i32 %15), !dbg !172
  %16 = load i32, ptr %cpu1.i, align 4, !dbg !172
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16, !dbg !173
  %17 = ptrtoint ptr %arrayidx.i to i32, !dbg !173
  call void @__asan_load4_noabort(i32 %17), !dbg !173
  %18 = load i32, ptr %arrayidx.i, align 4, !dbg !173
  %add.i = add i32 %18, ptrtoint (ptr @tracing_cpu to i32), !dbg !173
  %19 = inttoptr i32 %add.i to ptr, !dbg !173
  %20 = ptrtoint ptr %19 to i32, !dbg !173
  call void @__asan_load4_noabort(i32 %20), !dbg !173
  %21 = load i32, ptr %19, align 4, !dbg !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21), !dbg !173
  %tobool.not.i = icmp eq i32 %21, 0, !dbg !173
  br i1 %tobool.not.i, label %if.else.i, label %do.body5.i, !dbg !173, !prof !174

do.body5.i:                                       ; preds = %if.then
  %22 = ptrtoint ptr %19 to i32, !dbg !175
  call void @__asan_store4_noabort(i32 %22), !dbg !175
  store i32 0, ptr %19, align 4, !dbg !175
  %.b.i = load i1, ptr @tracer_enabled, align 4, !dbg !176
  br i1 %.b.i, label %lor.lhs.false.i, label %do.body5.i.if.then17.i_crit_edge, !dbg !177

do.body5.i.if.then17.i_crit_edge:                 ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !177
  br label %if.then17.i, !dbg !177

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13, !dbg !178
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.9, align 16
  %23 = add i64 %gcov_ctr.i, 1
  store i64 %23, ptr @__llvm_gcov_ctr.9, align 16
  br label %if.end, !dbg !179

lor.lhs.false.i:                                  ; preds = %do.body5.i
  %gcov_ctr53.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 1), align 8, !dbg !180
  %24 = add i64 %gcov_ctr53.i, 1, !dbg !180
  store i64 %24, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 1), align 8, !dbg !180
  %call15.i = tail call i32 @tracing_is_enabled() #14, !dbg !180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i), !dbg !180
  %tobool16.not.i = icmp eq i32 %call15.i, 0, !dbg !180
  br i1 %tobool16.not.i, label %lor.lhs.false.i.if.then17.i_crit_edge, label %do.body19.i, !dbg !181

lor.lhs.false.i.if.then17.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !181
  br label %if.then17.i, !dbg !181

if.then17.i:                                      ; preds = %lor.lhs.false.i.if.then17.i_crit_edge, %do.body5.i.if.then17.i_crit_edge
  %gcov_ctr54.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 2), align 16
  %25 = add i64 %gcov_ctr54.i, 1
  store i64 %25, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 2), align 16
  br label %if.end, !dbg !182

do.body19.i:                                      ; preds = %lor.lhs.false.i
  %data25.i = getelementptr inbounds %struct.trace_array, ptr %11, i32 0, i32 2, i32 2, !dbg !183
  %26 = ptrtoint ptr %data25.i to i32, !dbg !183
  call void @__asan_load4_noabort(i32 %26), !dbg !183
  %27 = load ptr, ptr %data25.i, align 8, !dbg !183
  %28 = ptrtoint ptr %27 to i32, !dbg !183
  %29 = ptrtoint ptr %arrayidx.i to i32, !dbg !183
  call void @__asan_load4_noabort(i32 %29), !dbg !183
  %30 = load i32, ptr %arrayidx.i, align 4, !dbg !183
  %add28.i = add i32 %30, %28, !dbg !183
  %31 = inttoptr i32 %add28.i to ptr, !dbg !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add28.i), !dbg !184
  %tobool29.not.i = icmp eq i32 %add28.i, 0, !dbg !184
  br i1 %tobool29.not.i, label %do.body19.i.if.then43.i_crit_edge, label %lor.lhs.false38.i, !dbg !185, !prof !95

do.body19.i.if.then43.i_crit_edge:                ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !185
  br label %if.then43.i, !dbg !185

lor.lhs.false38.i:                                ; preds = %do.body19.i
  %gcov_ctr55.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 3), align 8, !dbg !186
  %32 = add i64 %gcov_ctr55.i, 1, !dbg !186
  store i64 %32, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 3), align 8, !dbg !186
  %critical_start.i = getelementptr inbounds %struct.trace_array_cpu, ptr %31, i32 0, i32 4, !dbg !187
  %33 = ptrtoint ptr %critical_start.i to i32, !dbg !187
  call void @__asan_load4_noabort(i32 %33), !dbg !187
  %34 = load i32, ptr %critical_start.i, align 8, !dbg !187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34), !dbg !186
  %tobool39.not.i = icmp eq i32 %34, 0, !dbg !186
  br i1 %tobool39.not.i, label %lor.lhs.false38.i.if.then43.i_crit_edge, label %lor.lhs.false40.i, !dbg !188

lor.lhs.false38.i.if.then43.i_crit_edge:          ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !188
  br label %if.then43.i, !dbg !188

lor.lhs.false40.i:                                ; preds = %lor.lhs.false38.i
  %gcov_ctr56.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 4), align 16, !dbg !189
  %35 = add i64 %gcov_ctr56.i, 1, !dbg !189
  store i64 %35, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 4), align 16, !dbg !189
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.16, align 8
  %36 = add i64 %gcov_ctr.i.i, 1
  store i64 %36, ptr @__llvm_gcov_ctr.16, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.20, align 8
  %37 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %37, ptr @__llvm_gcov_ctr.20, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %31, i32 noundef 4) #14, !dbg !190
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %38 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %38, ptr @__llvm_gcov_ctr.21, align 8
  %39 = ptrtoint ptr %31 to i32, !dbg !193
  call void @__asan_load4_noabort(i32 %39), !dbg !193
  %40 = load volatile i32, ptr %31, align 4, !dbg !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40), !dbg !194
  %tobool42.not.i = icmp eq i32 %40, 0, !dbg !194
  br i1 %tobool42.not.i, label %if.end44.i, label %lor.lhs.false40.i.if.then43.i_crit_edge, !dbg !184

lor.lhs.false40.i.if.then43.i_crit_edge:          ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !184
  br label %if.then43.i, !dbg !184

if.then43.i:                                      ; preds = %lor.lhs.false40.i.if.then43.i_crit_edge, %lor.lhs.false38.i.if.then43.i_crit_edge, %do.body19.i.if.then43.i_crit_edge
  %gcov_ctr57.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 5), align 8
  %41 = add i64 %gcov_ctr57.i, 1
  store i64 %41, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 5), align 8
  br label %if.end, !dbg !195

if.end44.i:                                       ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !178
  %gcov_ctr.i74.i = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %42 = add i64 %gcov_ctr.i74.i, 1
  store i64 %42, ptr @__llvm_gcov_ctr.17, align 8
  %gcov_ctr.i.i75.i = load i64, ptr @__llvm_gcov_ctr.22, align 8
  %43 = add i64 %gcov_ctr.i.i75.i, 1
  store i64 %43, ptr @__llvm_gcov_ctr.22, align 8
  %call.i.i76.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %31, i32 noundef 4) #14, !dbg !196
  %gcov_ctr.i.i.i77.i = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %44 = add i64 %gcov_ctr.i.i.i77.i, 1
  store i64 %44, ptr @__llvm_gcov_ctr.21, align 8
  %gcov_ctr.i2.i.i = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %45 = add i64 %gcov_ctr.i2.i.i, 1
  store i64 %45, ptr @__llvm_gcov_ctr.23, align 8
  %gcov_ctr.i.i3.i.i = load i64, ptr @__llvm_gcov_ctr.24, align 8
  %46 = add i64 %gcov_ctr.i.i3.i.i, 1
  store i64 %46, ptr @__llvm_gcov_ctr.24, align 8
  tail call void @llvm.prefetch.p0(ptr nonnull %31, i32 1, i32 3, i32 1) #14, !dbg !199
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %31, ptr nonnull %31, i32 1, ptr nonnull elementtype(i32) %31) #14, !dbg !199, !srcloc !119
  %call46.i = tail call fastcc i32 @tracing_gen_ctx() #14, !dbg !202
  tail call void @trace_function(ptr noundef %11, i32 noundef %9, i32 noundef 0, i32 noundef %call46.i) #14, !dbg !203
  %gcov_ctr59.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 7), align 8, !dbg !204
  %48 = add i64 %gcov_ctr59.i, 1, !dbg !204
  store i64 %48, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 7), align 8, !dbg !204
  tail call fastcc void @check_critical_timing(ptr noundef %11, ptr noundef nonnull %31, i32 noundef %9, i32 noundef %16) #14, !dbg !205
  %49 = ptrtoint ptr %critical_start.i to i32, !dbg !206
  call void @__asan_store4_noabort(i32 %49), !dbg !206
  store i32 0, ptr %critical_start.i, align 8, !dbg !206
  %gcov_ctr.i78.i = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %50 = add i64 %gcov_ctr.i78.i, 1
  store i64 %50, ptr @__llvm_gcov_ctr.19, align 8
  %gcov_ctr.i.i79.i = load i64, ptr @__llvm_gcov_ctr.22, align 8
  %51 = add i64 %gcov_ctr.i.i79.i, 1
  store i64 %51, ptr @__llvm_gcov_ctr.22, align 8
  %call.i.i80.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %31, i32 noundef 4) #14, !dbg !207
  %gcov_ctr.i.i.i81.i = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %52 = add i64 %gcov_ctr.i.i.i81.i, 1
  store i64 %52, ptr @__llvm_gcov_ctr.21, align 8
  %gcov_ctr.i2.i82.i = load i64, ptr @__llvm_gcov_ctr.26, align 8
  %53 = add i64 %gcov_ctr.i2.i82.i, 1
  store i64 %53, ptr @__llvm_gcov_ctr.26, align 8
  %gcov_ctr.i.i3.i83.i = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %54 = add i64 %gcov_ctr.i.i3.i83.i, 1
  store i64 %54, ptr @__llvm_gcov_ctr.27, align 8
  tail call void @llvm.prefetch.p0(ptr nonnull %31, i32 1, i32 3, i32 1) #14, !dbg !210
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %31, ptr nonnull %31, i32 1, ptr nonnull elementtype(i32) %31) #14, !dbg !210, !srcloc !151
  br label %if.end, !dbg !213

if.end:                                           ; preds = %if.end44.i, %if.then43.i, %if.then17.i, %if.else.i, %irq_trace.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void, !dbg !214
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tracer_hardirqs_on(i32 noundef %a0, i32 noundef %a1) #0 align 64 !dbg !215 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !216
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.10, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.10, align 8
  %gcov_ctr.i2 = load i64, ptr @__llvm_gcov_ctr.5, align 8
  %1 = add i64 %gcov_ctr.i2, 1
  store i64 %1, ptr @__llvm_gcov_ctr.5, align 8
  %.b.i3 = load i1, ptr @trace_type, align 4, !dbg !217
  br i1 %.b.i3, label %irq_trace.exit, label %entry.if.end_crit_edge, !dbg !219

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !219
  br label %if.end, !dbg !219

irq_trace.exit:                                   ; preds = %entry
  %gcov_ctr.i.i4 = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %2 = add i64 %gcov_ctr.i.i4, 1
  store i64 %2, ptr @__llvm_gcov_ctr.13, align 8
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !dbg !220, !srcloc !70
  %gcov_ctr11.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 1), align 8, !dbg !222
  %4 = add i64 %gcov_ctr11.i, 1, !dbg !222
  store i64 %4, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 1), align 8, !dbg !222
  %gcov_ctr.i12.i = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %5 = add i64 %gcov_ctr.i12.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.14, align 8
  %6 = and i32 %3, 128, !dbg !223
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6), !dbg !223
  %tobool.not = icmp eq i32 %6, 0, !dbg !223
  br i1 %tobool.not, label %irq_trace.exit.if.end_crit_edge, label %if.then, !dbg !224

irq_trace.exit.if.end_crit_edge:                  ; preds = %irq_trace.exit
  call void @__sanitizer_cov_trace_pc() #13, !dbg !224
  br label %if.end, !dbg !224

if.then:                                          ; preds = %irq_trace.exit
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 1), align 8, !dbg !225
  %7 = add i64 %gcov_ctr1, 1, !dbg !225
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 1), align 8, !dbg !225
  %8 = load ptr, ptr @irqsoff_trace, align 4, !dbg !226
  %gcov_ctr.i84.i = load i64, ptr @__llvm_gcov_ctr.15, align 8, !dbg !228
  %9 = add i64 %gcov_ctr.i84.i, 1, !dbg !228
  store i64 %9, ptr @__llvm_gcov_ctr.15, align 8, !dbg !228
  %10 = tail call i32 @llvm.read_register.i32(metadata !46) #14, !dbg !228
  %and.i.i = and i32 %10, -16384, !dbg !230
  %11 = inttoptr i32 %and.i.i to ptr, !dbg !231
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3, !dbg !232
  %12 = ptrtoint ptr %cpu1.i to i32, !dbg !232
  call void @__asan_load4_noabort(i32 %12), !dbg !232
  %13 = load i32, ptr %cpu1.i, align 4, !dbg !232
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13, !dbg !233
  %14 = ptrtoint ptr %arrayidx.i to i32, !dbg !233
  call void @__asan_load4_noabort(i32 %14), !dbg !233
  %15 = load i32, ptr %arrayidx.i, align 4, !dbg !233
  %add.i = add i32 %15, ptrtoint (ptr @tracing_cpu to i32), !dbg !233
  %16 = inttoptr i32 %add.i to ptr, !dbg !233
  %17 = ptrtoint ptr %16 to i32, !dbg !233
  call void @__asan_load4_noabort(i32 %17), !dbg !233
  %18 = load i32, ptr %16, align 4, !dbg !233
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18), !dbg !233
  %tobool.not.i = icmp eq i32 %18, 0, !dbg !233
  br i1 %tobool.not.i, label %if.else.i, label %do.body5.i, !dbg !233, !prof !174

do.body5.i:                                       ; preds = %if.then
  %19 = ptrtoint ptr %16 to i32, !dbg !234
  call void @__asan_store4_noabort(i32 %19), !dbg !234
  store i32 0, ptr %16, align 4, !dbg !234
  %.b.i = load i1, ptr @tracer_enabled, align 4, !dbg !235
  br i1 %.b.i, label %lor.lhs.false.i, label %do.body5.i.if.then17.i_crit_edge, !dbg !236

do.body5.i.if.then17.i_crit_edge:                 ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !236
  br label %if.then17.i, !dbg !236

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13, !dbg !237
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.9, align 16
  %20 = add i64 %gcov_ctr.i, 1
  store i64 %20, ptr @__llvm_gcov_ctr.9, align 16
  br label %if.end, !dbg !238

lor.lhs.false.i:                                  ; preds = %do.body5.i
  %gcov_ctr53.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 1), align 8, !dbg !239
  %21 = add i64 %gcov_ctr53.i, 1, !dbg !239
  store i64 %21, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 1), align 8, !dbg !239
  %call15.i = tail call i32 @tracing_is_enabled() #14, !dbg !239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i), !dbg !239
  %tobool16.not.i = icmp eq i32 %call15.i, 0, !dbg !239
  br i1 %tobool16.not.i, label %lor.lhs.false.i.if.then17.i_crit_edge, label %do.body19.i, !dbg !240

lor.lhs.false.i.if.then17.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !240
  br label %if.then17.i, !dbg !240

if.then17.i:                                      ; preds = %lor.lhs.false.i.if.then17.i_crit_edge, %do.body5.i.if.then17.i_crit_edge
  %gcov_ctr54.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 2), align 16
  %22 = add i64 %gcov_ctr54.i, 1
  store i64 %22, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 2), align 16
  br label %if.end, !dbg !241

do.body19.i:                                      ; preds = %lor.lhs.false.i
  %data25.i = getelementptr inbounds %struct.trace_array, ptr %8, i32 0, i32 2, i32 2, !dbg !242
  %23 = ptrtoint ptr %data25.i to i32, !dbg !242
  call void @__asan_load4_noabort(i32 %23), !dbg !242
  %24 = load ptr, ptr %data25.i, align 8, !dbg !242
  %25 = ptrtoint ptr %24 to i32, !dbg !242
  %26 = ptrtoint ptr %arrayidx.i to i32, !dbg !242
  call void @__asan_load4_noabort(i32 %26), !dbg !242
  %27 = load i32, ptr %arrayidx.i, align 4, !dbg !242
  %add28.i = add i32 %27, %25, !dbg !242
  %28 = inttoptr i32 %add28.i to ptr, !dbg !242
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add28.i), !dbg !243
  %tobool29.not.i = icmp eq i32 %add28.i, 0, !dbg !243
  br i1 %tobool29.not.i, label %do.body19.i.if.then43.i_crit_edge, label %lor.lhs.false38.i, !dbg !244, !prof !95

do.body19.i.if.then43.i_crit_edge:                ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !244
  br label %if.then43.i, !dbg !244

lor.lhs.false38.i:                                ; preds = %do.body19.i
  %gcov_ctr55.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 3), align 8, !dbg !245
  %29 = add i64 %gcov_ctr55.i, 1, !dbg !245
  store i64 %29, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 3), align 8, !dbg !245
  %critical_start.i = getelementptr inbounds %struct.trace_array_cpu, ptr %28, i32 0, i32 4, !dbg !246
  %30 = ptrtoint ptr %critical_start.i to i32, !dbg !246
  call void @__asan_load4_noabort(i32 %30), !dbg !246
  %31 = load i32, ptr %critical_start.i, align 8, !dbg !246
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31), !dbg !245
  %tobool39.not.i = icmp eq i32 %31, 0, !dbg !245
  br i1 %tobool39.not.i, label %lor.lhs.false38.i.if.then43.i_crit_edge, label %lor.lhs.false40.i, !dbg !247

lor.lhs.false38.i.if.then43.i_crit_edge:          ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !247
  br label %if.then43.i, !dbg !247

lor.lhs.false40.i:                                ; preds = %lor.lhs.false38.i
  %gcov_ctr56.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 4), align 16, !dbg !248
  %32 = add i64 %gcov_ctr56.i, 1, !dbg !248
  store i64 %32, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 4), align 16, !dbg !248
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.16, align 8
  %33 = add i64 %gcov_ctr.i.i, 1
  store i64 %33, ptr @__llvm_gcov_ctr.16, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.20, align 8
  %34 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %34, ptr @__llvm_gcov_ctr.20, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %28, i32 noundef 4) #14, !dbg !249
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %35 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %35, ptr @__llvm_gcov_ctr.21, align 8
  %36 = ptrtoint ptr %28 to i32, !dbg !252
  call void @__asan_load4_noabort(i32 %36), !dbg !252
  %37 = load volatile i32, ptr %28, align 4, !dbg !252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37), !dbg !253
  %tobool42.not.i = icmp eq i32 %37, 0, !dbg !253
  br i1 %tobool42.not.i, label %if.end44.i, label %lor.lhs.false40.i.if.then43.i_crit_edge, !dbg !243

lor.lhs.false40.i.if.then43.i_crit_edge:          ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !243
  br label %if.then43.i, !dbg !243

if.then43.i:                                      ; preds = %lor.lhs.false40.i.if.then43.i_crit_edge, %lor.lhs.false38.i.if.then43.i_crit_edge, %do.body19.i.if.then43.i_crit_edge
  %gcov_ctr57.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 5), align 8
  %38 = add i64 %gcov_ctr57.i, 1
  store i64 %38, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 5), align 8
  br label %if.end, !dbg !254

if.end44.i:                                       ; preds = %lor.lhs.false40.i
  %gcov_ctr.i74.i = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %39 = add i64 %gcov_ctr.i74.i, 1
  store i64 %39, ptr @__llvm_gcov_ctr.17, align 8
  %gcov_ctr.i.i75.i = load i64, ptr @__llvm_gcov_ctr.22, align 8
  %40 = add i64 %gcov_ctr.i.i75.i, 1
  store i64 %40, ptr @__llvm_gcov_ctr.22, align 8
  %call.i.i76.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %28, i32 noundef 4) #14, !dbg !255
  %gcov_ctr.i.i.i77.i = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %41 = add i64 %gcov_ctr.i.i.i77.i, 1
  store i64 %41, ptr @__llvm_gcov_ctr.21, align 8
  %gcov_ctr.i2.i.i = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %42 = add i64 %gcov_ctr.i2.i.i, 1
  store i64 %42, ptr @__llvm_gcov_ctr.23, align 8
  %gcov_ctr.i.i3.i.i = load i64, ptr @__llvm_gcov_ctr.24, align 8
  %43 = add i64 %gcov_ctr.i.i3.i.i, 1
  store i64 %43, ptr @__llvm_gcov_ctr.24, align 8
  tail call void @llvm.prefetch.p0(ptr nonnull %28, i32 1, i32 3, i32 1) #14, !dbg !258
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %28, ptr nonnull %28, i32 1, ptr nonnull elementtype(i32) %28) #14, !dbg !258, !srcloc !119
  %call46.i = tail call fastcc i32 @tracing_gen_ctx() #14, !dbg !261
  tail call void @trace_function(ptr noundef %8, i32 noundef %a0, i32 noundef %a1, i32 noundef %call46.i) #14, !dbg !262
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %a1), !dbg !263
  %tobool47.not.i = icmp eq i32 %a1, 0, !dbg !263
  br i1 %tobool47.not.i, label %cond.false.i, label %cond.true.i, !dbg !263

cond.true.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !263
  %gcov_ctr58.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 6), align 16, !dbg !263
  %45 = add i64 %gcov_ctr58.i, 1, !dbg !263
  store i64 %45, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 6), align 16, !dbg !263
  br label %cond.end.i, !dbg !263

cond.false.i:                                     ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !264
  %gcov_ctr59.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 7), align 8, !dbg !264
  %46 = add i64 %gcov_ctr59.i, 1, !dbg !264
  store i64 %46, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 7), align 8, !dbg !264
  br label %cond.end.i, !dbg !263

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %a1, %cond.true.i ], [ %a0, %cond.false.i ], !dbg !263
  tail call fastcc void @check_critical_timing(ptr noundef %8, ptr noundef nonnull %28, i32 noundef %cond.i, i32 noundef %13) #14, !dbg !265
  %47 = ptrtoint ptr %critical_start.i to i32, !dbg !266
  call void @__asan_store4_noabort(i32 %47), !dbg !266
  store i32 0, ptr %critical_start.i, align 8, !dbg !266
  %gcov_ctr.i78.i = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %48 = add i64 %gcov_ctr.i78.i, 1
  store i64 %48, ptr @__llvm_gcov_ctr.19, align 8
  %gcov_ctr.i.i79.i = load i64, ptr @__llvm_gcov_ctr.22, align 8
  %49 = add i64 %gcov_ctr.i.i79.i, 1
  store i64 %49, ptr @__llvm_gcov_ctr.22, align 8
  %call.i.i80.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %28, i32 noundef 4) #14, !dbg !267
  %gcov_ctr.i.i.i81.i = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %50 = add i64 %gcov_ctr.i.i.i81.i, 1
  store i64 %50, ptr @__llvm_gcov_ctr.21, align 8
  %gcov_ctr.i2.i82.i = load i64, ptr @__llvm_gcov_ctr.26, align 8
  %51 = add i64 %gcov_ctr.i2.i82.i, 1
  store i64 %51, ptr @__llvm_gcov_ctr.26, align 8
  %gcov_ctr.i.i3.i83.i = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %52 = add i64 %gcov_ctr.i.i3.i83.i, 1
  store i64 %52, ptr @__llvm_gcov_ctr.27, align 8
  tail call void @llvm.prefetch.p0(ptr nonnull %28, i32 1, i32 3, i32 1) #14, !dbg !270
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %28, ptr nonnull %28, i32 1, ptr nonnull elementtype(i32) %28) #14, !dbg !270, !srcloc !151
  br label %if.end, !dbg !273

if.end:                                           ; preds = %cond.end.i, %if.then43.i, %if.then17.i, %if.else.i, %irq_trace.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void, !dbg !274
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tracer_hardirqs_off(i32 noundef %a0, i32 noundef %a1) #0 align 64 !dbg !275 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !276
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.11, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.11, align 8
  %gcov_ctr.i2 = load i64, ptr @__llvm_gcov_ctr.5, align 8
  %1 = add i64 %gcov_ctr.i2, 1
  store i64 %1, ptr @__llvm_gcov_ctr.5, align 8
  %.b.i3 = load i1, ptr @trace_type, align 4, !dbg !277
  br i1 %.b.i3, label %irq_trace.exit, label %entry.if.end_crit_edge, !dbg !279

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !279
  br label %if.end, !dbg !279

irq_trace.exit:                                   ; preds = %entry
  %gcov_ctr.i.i4 = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %2 = add i64 %gcov_ctr.i.i4, 1
  store i64 %2, ptr @__llvm_gcov_ctr.13, align 8
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !dbg !280, !srcloc !70
  %gcov_ctr11.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 1), align 8, !dbg !282
  %4 = add i64 %gcov_ctr11.i, 1, !dbg !282
  store i64 %4, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 1), align 8, !dbg !282
  %gcov_ctr.i12.i = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %5 = add i64 %gcov_ctr.i12.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.14, align 8
  %6 = and i32 %3, 128, !dbg !283
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6), !dbg !283
  %tobool.not = icmp eq i32 %6, 0, !dbg !283
  br i1 %tobool.not, label %irq_trace.exit.if.end_crit_edge, label %if.then, !dbg !284

irq_trace.exit.if.end_crit_edge:                  ; preds = %irq_trace.exit
  call void @__sanitizer_cov_trace_pc() #13, !dbg !284
  br label %if.end, !dbg !284

if.then:                                          ; preds = %irq_trace.exit
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 1), align 8, !dbg !285
  %7 = add i64 %gcov_ctr1, 1, !dbg !285
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 1), align 8, !dbg !285
  %8 = load ptr, ptr @irqsoff_trace, align 4, !dbg !286
  %.b.i = load i1, ptr @tracer_enabled, align 4, !dbg !288
  br i1 %.b.i, label %lor.lhs.false.i, label %if.then.if.then.i_crit_edge, !dbg !289

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13, !dbg !289
  br label %if.then.i, !dbg !289

lor.lhs.false.i:                                  ; preds = %if.then
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.6, align 16, !dbg !290
  %9 = add i64 %gcov_ctr.i, 1, !dbg !290
  store i64 %9, ptr @__llvm_gcov_ctr.6, align 16, !dbg !290
  %call.i = tail call i32 @tracing_is_enabled() #14, !dbg !290
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !290
  %tobool1.not.i = icmp eq i32 %call.i, 0, !dbg !290
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i, !dbg !291

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !291
  br label %if.then.i, !dbg !291

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  %gcov_ctr43.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 1), align 8
  %10 = add i64 %gcov_ctr43.i, 1
  store i64 %10, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 1), align 8
  br label %if.end, !dbg !292

if.end.i:                                         ; preds = %lor.lhs.false.i
  %gcov_ctr.i72.i = load i64, ptr @__llvm_gcov_ctr.15, align 8, !dbg !293
  %11 = add i64 %gcov_ctr.i72.i, 1, !dbg !293
  store i64 %11, ptr @__llvm_gcov_ctr.15, align 8, !dbg !293
  %12 = tail call i32 @llvm.read_register.i32(metadata !46) #14, !dbg !293
  %and.i.i = and i32 %12, -16384, !dbg !295
  %13 = inttoptr i32 %and.i.i to ptr, !dbg !296
  %cpu3.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3, !dbg !297
  %14 = ptrtoint ptr %cpu3.i to i32, !dbg !297
  call void @__asan_load4_noabort(i32 %14), !dbg !297
  %15 = load i32, ptr %cpu3.i, align 4, !dbg !297
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15, !dbg !298
  %16 = ptrtoint ptr %arrayidx.i to i32, !dbg !298
  call void @__asan_load4_noabort(i32 %16), !dbg !298
  %17 = load i32, ptr %arrayidx.i, align 4, !dbg !298
  %add.i = add i32 %17, ptrtoint (ptr @tracing_cpu to i32), !dbg !298
  %18 = inttoptr i32 %add.i to ptr, !dbg !298
  %19 = ptrtoint ptr %18 to i32, !dbg !298
  call void @__asan_load4_noabort(i32 %19), !dbg !298
  %20 = load i32, ptr %18, align 4, !dbg !298
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20), !dbg !298
  %tobool5.not.i = icmp eq i32 %20, 0, !dbg !298
  br i1 %tobool5.not.i, label %do.body8.i, label %if.then6.i, !dbg !298

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !299
  %gcov_ctr44.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 2), align 16
  %21 = add i64 %gcov_ctr44.i, 1
  store i64 %21, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 2), align 16
  br label %if.end, !dbg !300

do.body8.i:                                       ; preds = %if.end.i
  %data14.i = getelementptr inbounds %struct.trace_array, ptr %8, i32 0, i32 2, i32 2, !dbg !301
  %22 = ptrtoint ptr %data14.i to i32, !dbg !301
  call void @__asan_load4_noabort(i32 %22), !dbg !301
  %23 = load ptr, ptr %data14.i, align 8, !dbg !301
  %24 = ptrtoint ptr %23 to i32, !dbg !301
  %add17.i = add i32 %17, %24, !dbg !301
  %25 = inttoptr i32 %add17.i to ptr, !dbg !301
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add17.i), !dbg !302
  %tobool18.not.i = icmp eq i32 %add17.i, 0, !dbg !302
  br i1 %tobool18.not.i, label %do.body8.i.if.then25.i_crit_edge, label %lor.lhs.false22.i, !dbg !303, !prof !95

do.body8.i.if.then25.i_crit_edge:                 ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !303
  br label %if.then25.i, !dbg !303

lor.lhs.false22.i:                                ; preds = %do.body8.i
  %gcov_ctr45.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 3), align 8, !dbg !304
  %26 = add i64 %gcov_ctr45.i, 1, !dbg !304
  store i64 %26, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 3), align 8, !dbg !304
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.16, align 8
  %27 = add i64 %gcov_ctr.i.i, 1
  store i64 %27, ptr @__llvm_gcov_ctr.16, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.20, align 8
  %28 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %28, ptr @__llvm_gcov_ctr.20, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %25, i32 noundef 4) #14, !dbg !305
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %29 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %29, ptr @__llvm_gcov_ctr.21, align 8
  %30 = ptrtoint ptr %25 to i32, !dbg !308
  call void @__asan_load4_noabort(i32 %30), !dbg !308
  %31 = load volatile i32, ptr %25, align 4, !dbg !308
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31), !dbg !309
  %tobool24.not.i = icmp eq i32 %31, 0, !dbg !309
  br i1 %tobool24.not.i, label %if.end26.i, label %lor.lhs.false22.i.if.then25.i_crit_edge, !dbg !302

lor.lhs.false22.i.if.then25.i_crit_edge:          ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !302
  br label %if.then25.i, !dbg !302

if.then25.i:                                      ; preds = %lor.lhs.false22.i.if.then25.i_crit_edge, %do.body8.i.if.then25.i_crit_edge
  %gcov_ctr46.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 4), align 16
  %32 = add i64 %gcov_ctr46.i, 1
  store i64 %32, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 4), align 16
  br label %if.end, !dbg !310

if.end26.i:                                       ; preds = %lor.lhs.false22.i
  %gcov_ctr.i62.i = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %33 = add i64 %gcov_ctr.i62.i, 1
  store i64 %33, ptr @__llvm_gcov_ctr.17, align 8
  %gcov_ctr.i.i63.i = load i64, ptr @__llvm_gcov_ctr.22, align 8
  %34 = add i64 %gcov_ctr.i.i63.i, 1
  store i64 %34, ptr @__llvm_gcov_ctr.22, align 8
  %call.i.i64.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %25, i32 noundef 4) #14, !dbg !311
  %gcov_ctr.i.i.i65.i = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %35 = add i64 %gcov_ctr.i.i.i65.i, 1
  store i64 %35, ptr @__llvm_gcov_ctr.21, align 8
  %gcov_ctr.i2.i.i = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %36 = add i64 %gcov_ctr.i2.i.i, 1
  store i64 %36, ptr @__llvm_gcov_ctr.23, align 8
  %gcov_ctr.i.i3.i.i = load i64, ptr @__llvm_gcov_ctr.24, align 8
  %37 = add i64 %gcov_ctr.i.i3.i.i, 1
  store i64 %37, ptr @__llvm_gcov_ctr.24, align 8
  tail call void @llvm.prefetch.p0(ptr nonnull %25, i32 1, i32 3, i32 1) #14, !dbg !314
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %25, ptr nonnull %25, i32 1, ptr nonnull elementtype(i32) %25) #14, !dbg !314, !srcloc !119
  %39 = load i32, ptr @max_sequence, align 128, !dbg !317
  %critical_sequence.i = getelementptr inbounds %struct.trace_array_cpu, ptr %25, i32 0, i32 6, !dbg !318
  %40 = ptrtoint ptr %critical_sequence.i to i32, !dbg !319
  call void @__asan_store4_noabort(i32 %40), !dbg !319
  store i32 %39, ptr %critical_sequence.i, align 8, !dbg !319
  %call28.i = tail call i64 @ftrace_now(i32 noundef %15) #14, !dbg !320
  %preempt_timestamp.i = getelementptr inbounds %struct.trace_array_cpu, ptr %25, i32 0, i32 11, !dbg !321
  %41 = ptrtoint ptr %preempt_timestamp.i to i32, !dbg !322
  call void @__asan_store8_noabort(i32 %41), !dbg !322
  store i64 %call28.i, ptr %preempt_timestamp.i, align 8, !dbg !322
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %a1), !dbg !323
  %tobool29.not.i = icmp eq i32 %a1, 0, !dbg !323
  br i1 %tobool29.not.i, label %cond.false.i, label %cond.true.i, !dbg !323

cond.true.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !323
  %gcov_ctr47.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 5), align 8, !dbg !323
  %42 = add i64 %gcov_ctr47.i, 1, !dbg !323
  store i64 %42, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 5), align 8, !dbg !323
  br label %cond.end.i, !dbg !323

cond.false.i:                                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !324
  %gcov_ctr48.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 6), align 16, !dbg !324
  %43 = add i64 %gcov_ctr48.i, 1, !dbg !324
  store i64 %43, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 6), align 16, !dbg !324
  br label %cond.end.i, !dbg !323

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %a1, %cond.true.i ], [ %a0, %cond.false.i ], !dbg !323
  %critical_start.i = getelementptr inbounds %struct.trace_array_cpu, ptr %25, i32 0, i32 4, !dbg !325
  %44 = ptrtoint ptr %critical_start.i to i32, !dbg !326
  call void @__asan_store4_noabort(i32 %44), !dbg !326
  store i32 %cond.i, ptr %critical_start.i, align 8, !dbg !326
  %gcov_ctr.i73.i = load i64, ptr @__llvm_gcov_ctr.18, align 8, !dbg !327
  %45 = add i64 %gcov_ctr.i73.i, 1, !dbg !327
  store i64 %45, ptr @__llvm_gcov_ctr.18, align 8, !dbg !327
  %gcov_ctr.i.i74.i = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %46 = add i64 %gcov_ctr.i.i74.i, 1
  store i64 %46, ptr @__llvm_gcov_ctr.13, align 8
  %47 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !dbg !329, !srcloc !70
  %gcov_ctr.i2.i75.i = load i64, ptr @__llvm_gcov_ctr.25, align 8
  %48 = add i64 %gcov_ctr.i2.i75.i, 1
  store i64 %48, ptr @__llvm_gcov_ctr.25, align 8
  %gcov_ctr.i.i.i76.i = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %49 = add i64 %gcov_ctr.i.i.i76.i, 1
  store i64 %49, ptr @__llvm_gcov_ctr.14, align 8
  %and.i.i.i.i = lshr i32 %47, 7, !dbg !331
  %and.i.lobit.i.i.i = and i32 %and.i.i.i.i, 1, !dbg !331
  %call2.i.i.i = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %and.i.lobit.i.i.i) #14, !dbg !333
  tail call void @trace_function(ptr noundef %8, i32 noundef %a0, i32 noundef %a1, i32 noundef %call2.i.i.i) #14, !dbg !334
  %50 = ptrtoint ptr %arrayidx.i to i32, !dbg !335
  call void @__asan_load4_noabort(i32 %50), !dbg !335
  %51 = load i32, ptr %arrayidx.i, align 4, !dbg !335
  %add39.i = add i32 %51, ptrtoint (ptr @tracing_cpu to i32), !dbg !335
  %52 = inttoptr i32 %add39.i to ptr, !dbg !335
  %53 = ptrtoint ptr %52 to i32, !dbg !336
  call void @__asan_store4_noabort(i32 %53), !dbg !336
  store i32 1, ptr %52, align 4, !dbg !336
  %gcov_ctr.i66.i = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %54 = add i64 %gcov_ctr.i66.i, 1
  store i64 %54, ptr @__llvm_gcov_ctr.19, align 8
  %gcov_ctr.i.i67.i = load i64, ptr @__llvm_gcov_ctr.22, align 8
  %55 = add i64 %gcov_ctr.i.i67.i, 1
  store i64 %55, ptr @__llvm_gcov_ctr.22, align 8
  %call.i.i68.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %25, i32 noundef 4) #14, !dbg !337
  %gcov_ctr.i.i.i69.i = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %56 = add i64 %gcov_ctr.i.i.i69.i, 1
  store i64 %56, ptr @__llvm_gcov_ctr.21, align 8
  %gcov_ctr.i2.i70.i = load i64, ptr @__llvm_gcov_ctr.26, align 8
  %57 = add i64 %gcov_ctr.i2.i70.i, 1
  store i64 %57, ptr @__llvm_gcov_ctr.26, align 8
  %gcov_ctr.i.i3.i71.i = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %58 = add i64 %gcov_ctr.i.i3.i71.i, 1
  store i64 %58, ptr @__llvm_gcov_ctr.27, align 8
  tail call void @llvm.prefetch.p0(ptr nonnull %25, i32 1, i32 3, i32 1) #14, !dbg !340
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %25, ptr nonnull %25, i32 1, ptr nonnull elementtype(i32) %25) #14, !dbg !340, !srcloc !151
  br label %if.end, !dbg !343

if.end:                                           ; preds = %cond.end.i, %if.then25.i, %if.then6.i, %if.then.i, %irq_trace.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void, !dbg !344
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_irqsoff_tracer() #2 section ".init.text" align 64 !dbg !345 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !346
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.12, align 8, !dbg !347
  %0 = add i64 %gcov_ctr, 1, !dbg !347
  store i64 %0, ptr @__llvm_gcov_ctr.12, align 8, !dbg !347
  %call = tail call i32 @register_tracer(ptr noundef nonnull @irqsoff_tracer) #14, !dbg !347
  ret i32 0, !dbg !348
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_is_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ftrace_now(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_function(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tracing_gen_ctx() unnamed_addr #4 align 64 !dbg !130 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !349
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.18, align 8, !dbg !350
  %0 = add i64 %gcov_ctr, 1, !dbg !350
  store i64 %0, ptr @__llvm_gcov_ctr.18, align 8, !dbg !350
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.13, align 8
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !dbg !351, !srcloc !70
  %gcov_ctr.i2 = load i64, ptr @__llvm_gcov_ctr.25, align 8
  %3 = add i64 %gcov_ctr.i2, 1
  store i64 %3, ptr @__llvm_gcov_ctr.25, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %4 = add i64 %gcov_ctr.i.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.14, align 8
  %and.i.i = lshr i32 %2, 7, !dbg !353
  %and.i.lobit.i = and i32 %and.i.i, 1, !dbg !353
  %call2.i = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %and.i.lobit.i) #14, !dbg !355
  ret i32 %call2.i, !dbg !356
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_gen_ctx_irq_test(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_critical_timing(ptr noundef %tr, ptr nocapture noundef %data, i32 noundef %parent_ip, i32 noundef %cpu) unnamed_addr #0 align 64 !dbg !357 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !358
  %preempt_timestamp = getelementptr inbounds %struct.trace_array_cpu, ptr %data, i32 0, i32 11, !dbg !359
  %0 = ptrtoint ptr %preempt_timestamp to i32, !dbg !359
  call void @__asan_load8_noabort(i32 %0), !dbg !359
  %1 = load i64, ptr %preempt_timestamp, align 8, !dbg !359
  %call = tail call i64 @ftrace_now(i32 noundef %cpu) #14, !dbg !360
  %sub = sub i64 %call, %1, !dbg !361
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.18, align 8, !dbg !362
  %2 = add i64 %gcov_ctr.i, 1, !dbg !362
  store i64 %2, ptr @__llvm_gcov_ctr.18, align 8, !dbg !362
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %3 = add i64 %gcov_ctr.i.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.13, align 8
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !dbg !364, !srcloc !70
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.25, align 8
  %5 = add i64 %gcov_ctr.i2.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.25, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %6 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.14, align 8
  %and.i.i.i = lshr i32 %4, 7, !dbg !366
  %and.i.lobit.i.i = and i32 %and.i.i.i, 1, !dbg !366
  %call2.i.i = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %and.i.lobit.i.i) #14, !dbg !368
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tracing_thresh to i32)), !dbg !369
  %7 = load i32, ptr @tracing_thresh, align 4, !dbg !369
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7), !dbg !369
  %tobool.not.i = icmp eq i32 %7, 0, !dbg !369
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !dbg !369

if.then.i:                                        ; preds = %entry
  %conv.i = zext i32 %7 to i64, !dbg !372
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv.i), !dbg !373
  %cmp.i = icmp ult i64 %sub, %conv.i, !dbg !373
  br i1 %cmp.i, label %if.then.i.if.then_crit_edge, label %if.then.i.do.body_crit_edge, !dbg !374

if.then.i.do.body_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !374
  br label %do.body, !dbg !374

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !374
  br label %if.then, !dbg !374

if.else.i:                                        ; preds = %entry
  %max_latency.i = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 5, !dbg !375
  %8 = ptrtoint ptr %max_latency.i to i32, !dbg !375
  call void @__asan_load4_noabort(i32 %8), !dbg !375
  %9 = load i32, ptr %max_latency.i, align 4, !dbg !375
  %conv3.i = zext i32 %9 to i64, !dbg !376
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv3.i), !dbg !377
  %cmp4.not.i = icmp ugt i64 %sub, %conv3.i, !dbg !377
  br i1 %cmp4.not.i, label %if.else.i.do.body_crit_edge, label %if.else.i.if.then_crit_edge, !dbg !378

if.else.i.if.then_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !378
  br label %if.then, !dbg !378

if.else.i.do.body_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !378
  br label %do.body, !dbg !378

if.then:                                          ; preds = %if.else.i.if.then_crit_edge, %if.then.i.if.then_crit_edge
  %.sink = phi ptr [ @__llvm_gcov_ctr.29, %if.then.i.if.then_crit_edge ], [ getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 2), %if.else.i.if.then_crit_edge ]
  %10 = ptrtoint ptr %.sink to i32, !dbg !379
  call void @__asan_load8_noabort(i32 %10), !dbg !379
  %gcov_ctr10.i = load i64, ptr %.sink, align 16, !dbg !379
  %11 = add i64 %gcov_ctr10.i, 1, !dbg !379
  store i64 %11, ptr %.sink, align 16, !dbg !379
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.28, align 16, !dbg !380
  %12 = add i64 %gcov_ctr, 1, !dbg !380
  store i64 %12, ptr @__llvm_gcov_ctr.28, align 16, !dbg !380
  br label %out, !dbg !380

do.body:                                          ; preds = %if.else.i.do.body_crit_edge, %if.then.i.do.body_crit_edge
  %.sink77 = phi ptr [ getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 1), %if.then.i.do.body_crit_edge ], [ getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 3), %if.else.i.do.body_crit_edge ]
  %13 = ptrtoint ptr %.sink77 to i32
  call void @__asan_load8_noabort(i32 %13)
  %gcov_ctr11.i = load i64, ptr %.sink77, align 8
  %14 = add i64 %gcov_ctr11.i, 1
  store i64 %14, ptr %.sink77, align 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @max_trace_lock) #14, !dbg !381
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tracing_thresh to i32)), !dbg !382
  %15 = load i32, ptr @tracing_thresh, align 4, !dbg !382
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15), !dbg !382
  %tobool.not.i53 = icmp eq i32 %15, 0, !dbg !382
  br i1 %tobool.not.i53, label %if.else.i64, label %if.then.i56, !dbg !382

if.then.i56:                                      ; preds = %do.body
  %conv.i54 = zext i32 %15 to i64, !dbg !384
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv.i54), !dbg !385
  %cmp.i55 = icmp ult i64 %sub, %conv.i54, !dbg !385
  br i1 %cmp.i55, label %if.then.i56.if.then5_crit_edge, label %if.then.i56.if.end6_crit_edge, !dbg !386

if.then.i56.if.end6_crit_edge:                    ; preds = %if.then.i56
  call void @__sanitizer_cov_trace_pc() #13, !dbg !386
  br label %if.end6, !dbg !386

if.then.i56.if.then5_crit_edge:                   ; preds = %if.then.i56
  call void @__sanitizer_cov_trace_pc() #13, !dbg !386
  br label %if.then5, !dbg !386

if.else.i64:                                      ; preds = %do.body
  %max_latency.i61 = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 5, !dbg !387
  %16 = ptrtoint ptr %max_latency.i61 to i32, !dbg !387
  call void @__asan_load4_noabort(i32 %16), !dbg !387
  %17 = load i32, ptr %max_latency.i61, align 4, !dbg !387
  %conv3.i62 = zext i32 %17 to i64, !dbg !388
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv3.i62), !dbg !389
  %cmp4.not.i63 = icmp ugt i64 %sub, %conv3.i62, !dbg !389
  br i1 %cmp4.not.i63, label %if.else.i64.if.end6_crit_edge, label %if.else.i64.if.then5_crit_edge, !dbg !390

if.else.i64.if.then5_crit_edge:                   ; preds = %if.else.i64
  call void @__sanitizer_cov_trace_pc() #13, !dbg !390
  br label %if.then5, !dbg !390

if.else.i64.if.end6_crit_edge:                    ; preds = %if.else.i64
  call void @__sanitizer_cov_trace_pc() #13, !dbg !390
  br label %if.end6, !dbg !390

if.then5:                                         ; preds = %if.else.i64.if.then5_crit_edge, %if.then.i56.if.then5_crit_edge
  %.sink80 = phi ptr [ @__llvm_gcov_ctr.29, %if.then.i56.if.then5_crit_edge ], [ getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 2), %if.else.i64.if.then5_crit_edge ]
  %18 = ptrtoint ptr %.sink80 to i32, !dbg !391
  call void @__asan_load8_noabort(i32 %18), !dbg !391
  %gcov_ctr10.i65 = load i64, ptr %.sink80, align 16, !dbg !391
  %19 = add i64 %gcov_ctr10.i65, 1, !dbg !391
  store i64 %19, ptr %.sink80, align 16, !dbg !391
  %gcov_ctr30 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 1), align 8, !dbg !392
  %20 = add i64 %gcov_ctr30, 1, !dbg !392
  store i64 %20, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 1), align 8, !dbg !392
  br label %do.body19, !dbg !392

if.end6:                                          ; preds = %if.else.i64.if.end6_crit_edge, %if.then.i56.if.end6_crit_edge
  %.sink83 = phi ptr [ getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 1), %if.then.i56.if.end6_crit_edge ], [ getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 3), %if.else.i64.if.end6_crit_edge ]
  %21 = ptrtoint ptr %.sink83 to i32
  call void @__asan_load8_noabort(i32 %21)
  %gcov_ctr11.i67 = load i64, ptr %.sink83, align 8
  %22 = add i64 %gcov_ctr11.i67, 1
  store i64 %22, ptr %.sink83, align 8
  %23 = tail call ptr @llvm.returnaddress(i32 0), !dbg !393
  %24 = ptrtoint ptr %23 to i32, !dbg !393
  tail call void @trace_function(ptr noundef %tr, i32 noundef %24, i32 noundef %parent_ip, i32 noundef %call2.i.i) #14, !dbg !394
  tail call void @__trace_stack(ptr noundef %tr, i32 noundef %call2.i.i, i32 noundef 5) #14, !dbg !395
  %critical_sequence = getelementptr inbounds %struct.trace_array_cpu, ptr %data, i32 0, i32 6, !dbg !396
  %25 = ptrtoint ptr %critical_sequence to i32, !dbg !396
  call void @__asan_load4_noabort(i32 %25), !dbg !396
  %26 = load i32, ptr %critical_sequence, align 8, !dbg !396
  %27 = load i32, ptr @max_sequence, align 128, !dbg !397
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %27), !dbg !398
  %cmp7.not = icmp eq i32 %26, %27, !dbg !398
  br i1 %cmp7.not, label %if.end10, label %if.then9, !dbg !399

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13, !dbg !400
  %gcov_ctr31 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 2), align 16, !dbg !400
  %28 = add i64 %gcov_ctr31, 1, !dbg !400
  store i64 %28, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 2), align 16, !dbg !400
  br label %do.body19, !dbg !400

if.end10:                                         ; preds = %if.end6
  %critical_end = getelementptr inbounds %struct.trace_array_cpu, ptr %data, i32 0, i32 5, !dbg !401
  %29 = ptrtoint ptr %critical_end to i32, !dbg !402
  call void @__asan_store4_noabort(i32 %29), !dbg !402
  store i32 %parent_ip, ptr %critical_end, align 4, !dbg !402
  %call11 = tail call i32 @is_tracing_stopped() #14, !dbg !403
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11), !dbg !403
  %tobool.not = icmp eq i32 %call11, 0, !dbg !403
  br i1 %tobool.not, label %if.then15, label %if.end10.if.end18_crit_edge, !dbg !403, !prof !174

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13, !dbg !403
  br label %if.end18, !dbg !403

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13, !dbg !404
  %gcov_ctr32 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 3), align 8, !dbg !404
  %30 = add i64 %gcov_ctr32, 1, !dbg !404
  store i64 %30, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 3), align 8, !dbg !404
  %conv16 = trunc i64 %sub to i32, !dbg !404
  %max_latency = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 5, !dbg !405
  %31 = ptrtoint ptr %max_latency to i32, !dbg !406
  call void @__asan_store4_noabort(i32 %31), !dbg !406
  store i32 %conv16, ptr %max_latency, align 4, !dbg !406
  %gcov_ctr.i71 = load i64, ptr @__llvm_gcov_ctr.15, align 8, !dbg !407
  %32 = add i64 %gcov_ctr.i71, 1, !dbg !407
  store i64 %32, ptr @__llvm_gcov_ctr.15, align 8, !dbg !407
  %33 = tail call i32 @llvm.read_register.i32(metadata !46) #14, !dbg !407
  %and.i = and i32 %33, -16384, !dbg !409
  %34 = inttoptr i32 %and.i to ptr, !dbg !410
  %task = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2, !dbg !411
  %35 = ptrtoint ptr %task to i32, !dbg !411
  call void @__asan_load4_noabort(i32 %35), !dbg !411
  %36 = load ptr, ptr %task, align 8, !dbg !411
  tail call void @update_max_tr_single(ptr noundef %tr, ptr noundef %36, i32 noundef %cpu) #14, !dbg !412
  br label %if.end18, !dbg !413

if.end18:                                         ; preds = %if.then15, %if.end10.if.end18_crit_edge
  %gcov_ctr33 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 4), align 16, !dbg !414
  %37 = add i64 %gcov_ctr33, 1, !dbg !414
  store i64 %37, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 4), align 16, !dbg !414
  %38 = load i32, ptr @max_sequence, align 128, !dbg !414
  %inc = add i32 %38, 1, !dbg !414
  store i32 %inc, ptr @max_sequence, align 128, !dbg !414
  br label %do.body19, !dbg !415

do.body19:                                        ; preds = %if.end18, %if.then9, %if.then5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @max_trace_lock, i32 noundef %call3) #14, !dbg !416
  br label %out, !dbg !416

out:                                              ; preds = %do.body19, %if.then
  %39 = load i32, ptr @max_sequence, align 128, !dbg !417
  %critical_sequence27 = getelementptr inbounds %struct.trace_array_cpu, ptr %data, i32 0, i32 6, !dbg !418
  %40 = ptrtoint ptr %critical_sequence27 to i32, !dbg !419
  call void @__asan_store4_noabort(i32 %40), !dbg !419
  store i32 %39, ptr %critical_sequence27, align 8, !dbg !419
  %call28 = tail call i64 @ftrace_now(i32 noundef %cpu) #14, !dbg !420
  %41 = ptrtoint ptr %preempt_timestamp to i32, !dbg !421
  call void @__asan_store8_noabort(i32 %41), !dbg !421
  store i64 %call28, ptr %preempt_timestamp, align 8, !dbg !421
  %42 = tail call ptr @llvm.returnaddress(i32 0), !dbg !422
  %43 = ptrtoint ptr %42 to i32, !dbg !422
  tail call void @trace_function(ptr noundef %tr, i32 noundef %43, i32 noundef %parent_ip, i32 noundef %call2.i.i) #14, !dbg !423
  ret void, !dbg !424
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__trace_stack(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_tracing_stopped() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_max_tr_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_tracer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irqsoff_tracer_init(ptr noundef %tr) #0 align 64 !dbg !425 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !426
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.30, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.30, align 8
  store i1 true, ptr @trace_type, align 4, !dbg !427
  %.b24.i = load i1, ptr @irqsoff_busy, align 1, !dbg !428
  br i1 %.b24.i, label %if.then.i, label %if.end.i, !dbg !428

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !431
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.39, align 16, !dbg !431
  %1 = add i64 %gcov_ctr.i, 1, !dbg !431
  store i64 %1, ptr @__llvm_gcov_ctr.39, align 16, !dbg !431
  br label %__irqsoff_tracer_init.exit, !dbg !431

if.end.i:                                         ; preds = %entry
  %trace_flags.i = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 24, !dbg !432
  %2 = ptrtoint ptr %trace_flags.i to i32, !dbg !432
  call void @__asan_load4_noabort(i32 %2), !dbg !432
  %3 = load i32, ptr %trace_flags.i, align 4, !dbg !432
  store i32 %3, ptr @save_flags, align 4, !dbg !433
  %call.i = tail call i32 @set_tracer_flag(ptr noundef %tr, i32 noundef 131072, i32 noundef 1) #14, !dbg !434
  %call1.i = tail call i32 @set_tracer_flag(ptr noundef %tr, i32 noundef 16384, i32 noundef 1) #14, !dbg !435
  %call2.i = tail call i32 @set_tracer_flag(ptr noundef %tr, i32 noundef 4194304, i32 noundef 1) #14, !dbg !436
  %max_latency.i = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 5, !dbg !437
  %4 = ptrtoint ptr %max_latency.i to i32, !dbg !438
  call void @__asan_store4_noabort(i32 %4), !dbg !438
  store i32 0, ptr %max_latency.i, align 4, !dbg !438
  store ptr %tr, ptr @irqsoff_trace, align 4, !dbg !439
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !dbg !440, !srcloc !441
  tail call void @ftrace_init_array_ops(ptr noundef %tr, ptr noundef nonnull @irqsoff_tracer_call) #14, !dbg !442
  %flags.i = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 26, !dbg !443
  %5 = ptrtoint ptr %flags.i to i32, !dbg !443
  call void @__asan_load4_noabort(i32 %5), !dbg !443
  %6 = load i32, ptr %flags.i, align 8, !dbg !443
  %and.i = and i32 %6, 1, !dbg !444
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !444
  %tobool5.not.i = icmp eq i32 %and.i, 0, !dbg !444
  br i1 %tobool5.not.i, label %if.end.i.land.end.i_crit_edge, label %land.rhs.i, !dbg !445

if.end.i.land.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !445
  br label %land.end.i, !dbg !445

land.rhs.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !446
  %gcov_ctr13.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 1), align 8
  %7 = add i64 %gcov_ctr13.i, 1
  store i64 %7, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 1), align 8
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.end.i.land.end.i_crit_edge
  %.b1.i.i.i = load i1, ptr @function_enabled, align 1, !dbg !447
  br i1 %.b1.i.i.i, label %land.end.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i, !dbg !452

land.end.i.if.then.i.i.i_crit_edge:               ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !452
  br label %if.then.i.i.i, !dbg !452

lor.lhs.false.i.i.i:                              ; preds = %land.end.i
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.48, align 16, !dbg !453
  %8 = add i64 %gcov_ctr.i.i.i, 1, !dbg !453
  store i64 %8, ptr @__llvm_gcov_ctr.48, align 16, !dbg !453
  %gcov_ctr9.i.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 1), align 8, !dbg !454
  %9 = add i64 %gcov_ctr9.i.i.i, 1, !dbg !454
  store i64 %9, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 1), align 8, !dbg !454
  %10 = ptrtoint ptr %trace_flags.i to i32, !dbg !455
  call void @__asan_load4_noabort(i32 %10), !dbg !455
  %11 = load i32, ptr %trace_flags.i, align 4, !dbg !455
  %and.i.i.i = and i32 %11, 16777216, !dbg !456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i), !dbg !456
  %tobool2.not.i.i.i = icmp eq i32 %and.i.i.i, 0, !dbg !456
  br i1 %tobool2.not.i.i.i, label %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, label %if.else.i.i.i, !dbg !447

lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !447
  br label %if.then.i.i.i, !dbg !447

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, %land.end.i.if.then.i.i.i_crit_edge
  %gcov_ctr10.i.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 2), align 16, !dbg !457
  %12 = add i64 %gcov_ctr10.i.i.i, 1, !dbg !457
  store i64 %12, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 2), align 16, !dbg !457
  br label %land.lhs.true.i.i, !dbg !457

if.else.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i
  %gcov_ctr11.i.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 3), align 8, !dbg !458
  %13 = add i64 %gcov_ctr11.i.i.i, 1, !dbg !458
  store i64 %13, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 3), align 8, !dbg !458
  %ops.i.i.i = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 40, !dbg !459
  %14 = ptrtoint ptr %ops.i.i.i to i32, !dbg !459
  call void @__asan_load4_noabort(i32 %14), !dbg !459
  %15 = load ptr, ptr %ops.i.i.i, align 4, !dbg !459
  %call.i.i.i = tail call i32 @register_ftrace_function(ptr noundef %15) #14, !dbg !460
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i), !dbg !461
  %tobool6.not.i.i.i = icmp eq i32 %call.i.i.i, 0, !dbg !461
  br i1 %tobool6.not.i.i.i, label %if.then7.i.i.i, label %if.then8.i, !dbg !462

if.then7.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !463
  %gcov_ctr13.i.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 5), align 8, !dbg !463
  %16 = add i64 %gcov_ctr13.i.i.i, 1, !dbg !463
  store i64 %16, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 5), align 8, !dbg !463
  store i1 true, ptr @function_enabled, align 1, !dbg !463
  br label %land.lhs.true.i.i, !dbg !464

land.lhs.true.i.i:                                ; preds = %if.then7.i.i.i, %if.then.i.i.i
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.41, align 16, !dbg !465
  %17 = add i64 %gcov_ctr.i.i, 1, !dbg !465
  store i64 %17, ptr @__llvm_gcov_ctr.41, align 16, !dbg !465
  %call1.i.i = tail call i32 @tracing_is_enabled() #14, !dbg !465
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i), !dbg !465
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0, !dbg !465
  br i1 %tobool2.not.i.i, label %start_irqsoff_tracer.exit.thread28.i, label %start_irqsoff_tracer.exit.thread.i, !dbg !466

start_irqsoff_tracer.exit.thread28.i:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !467
  %gcov_ctr4.i30.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 2), align 16, !dbg !467
  %18 = add i64 %gcov_ctr4.i30.i, 1, !dbg !467
  store i64 %18, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 2), align 16, !dbg !467
  store i1 false, ptr @tracer_enabled, align 4, !dbg !468
  br label %if.end12.i, !dbg !469

start_irqsoff_tracer.exit.thread.i:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !470
  %gcov_ctr3.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 1), align 8, !dbg !470
  %19 = add i64 %gcov_ctr3.i.i, 1, !dbg !470
  store i64 %19, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 1), align 8, !dbg !470
  store i1 true, ptr @tracer_enabled, align 4, !dbg !468
  br label %if.end12.i, !dbg !469

if.then8.i:                                       ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !467
  %gcov_ctr4.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 2), align 16, !dbg !467
  %20 = add i64 %gcov_ctr4.i.i, 1, !dbg !467
  store i64 %20, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 2), align 16, !dbg !467
  store i1 false, ptr @tracer_enabled, align 4, !dbg !468
  %gcov_ctr14.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 2), align 16, !dbg !471
  %21 = add i64 %gcov_ctr14.i, 1, !dbg !471
  store i64 %21, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 2), align 16, !dbg !471
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #15, !dbg !471
  br label %if.end12.i, !dbg !471

if.end12.i:                                       ; preds = %if.then8.i, %start_irqsoff_tracer.exit.thread.i, %start_irqsoff_tracer.exit.thread28.i
  %gcov_ctr15.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 3), align 8, !dbg !472
  %22 = add i64 %gcov_ctr15.i, 1, !dbg !472
  store i64 %22, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 3), align 8, !dbg !472
  store i1 true, ptr @irqsoff_busy, align 1, !dbg !472
  br label %__irqsoff_tracer_init.exit, !dbg !473

__irqsoff_tracer_init.exit:                       ; preds = %if.end12.i, %if.then.i
  %retval.0.i = phi i32 [ -16, %if.then.i ], [ 0, %if.end12.i ], !dbg !474
  ret i32 %retval.0.i, !dbg !475
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irqsoff_tracer_reset(ptr noundef %tr) #0 align 64 !dbg !476 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !477
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.31, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.31, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.49, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.49, align 8
  %2 = load i32, ptr @save_flags, align 4, !dbg !478
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.50, align 8
  %3 = add i64 %gcov_ctr.i.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.50, align 8
  store i1 false, ptr @tracer_enabled, align 4, !dbg !481
  %.b1.i.i.i = load i1, ptr @function_enabled, align 1, !dbg !484
  br i1 %.b1.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i, !dbg !487

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !488
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.51, align 16, !dbg !488
  %4 = add i64 %gcov_ctr.i.i.i, 1, !dbg !488
  store i64 %4, ptr @__llvm_gcov_ctr.51, align 16, !dbg !488
  br label %__irqsoff_tracer_reset.exit, !dbg !488

if.else.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !489
  %gcov_ctr4.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 1), align 8, !dbg !489
  %5 = add i64 %gcov_ctr4.i.i.i, 1, !dbg !489
  store i64 %5, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 1), align 8, !dbg !489
  %ops.i.i.i = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 40, !dbg !490
  %6 = ptrtoint ptr %ops.i.i.i to i32, !dbg !490
  call void @__asan_load4_noabort(i32 %6), !dbg !490
  %7 = load ptr, ptr %ops.i.i.i, align 4, !dbg !490
  %call.i.i.i = tail call i32 @unregister_ftrace_function(ptr noundef %7) #14, !dbg !491
  store i1 false, ptr @function_enabled, align 1, !dbg !492
  br label %__irqsoff_tracer_reset.exit, !dbg !493

__irqsoff_tracer_reset.exit:                      ; preds = %if.else.i.i.i, %if.then.i.i.i
  %and2.i = and i32 %2, 4194304, !dbg !494
  %and1.i = and i32 %2, 131072, !dbg !495
  %and.i = and i32 %2, 16384, !dbg !496
  %call.i = tail call i32 @set_tracer_flag(ptr noundef %tr, i32 noundef 16384, i32 noundef %and.i) #14, !dbg !497
  %call3.i = tail call i32 @set_tracer_flag(ptr noundef %tr, i32 noundef 131072, i32 noundef %and1.i) #14, !dbg !498
  %call4.i = tail call i32 @set_tracer_flag(ptr noundef %tr, i32 noundef 4194304, i32 noundef %and2.i) #14, !dbg !499
  tail call void @ftrace_reset_array_ops(ptr noundef %tr) #14, !dbg !500
  store i1 false, ptr @irqsoff_busy, align 1, !dbg !501
  ret void, !dbg !502
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @irqsoff_tracer_start(ptr nocapture noundef readnone %tr) #7 align 64 !dbg !503 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !504
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.32, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.32, align 8
  store i1 true, ptr @tracer_enabled, align 4, !dbg !505
  ret void, !dbg !506
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @irqsoff_tracer_stop(ptr nocapture noundef readnone %tr) #7 align 64 !dbg !507 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !508
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.33, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.33, align 8
  store i1 false, ptr @tracer_enabled, align 4, !dbg !509
  ret void, !dbg !510
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @irqsoff_trace_open(ptr nocapture noundef readnone %iter) #7 align 64 !dbg !511 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !512
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.34, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.34, align 8
  ret void, !dbg !513
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @irqsoff_trace_close(ptr nocapture noundef readnone %iter) #7 align 64 !dbg !514 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !515
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.35, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.35, align 8
  ret void, !dbg !516
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_selftest_startup_irqsoff(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irqsoff_print_header(ptr noundef %s) #0 align 64 !dbg !517 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !518
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.36, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.36, align 8
  tail call void @trace_default_header(ptr noundef %s) #14, !dbg !519
  ret void, !dbg !520
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @irqsoff_print_line(ptr nocapture noundef readnone %iter) #7 align 64 !dbg !521 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !522
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.37, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.37, align 8
  ret i32 2, !dbg !523
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irqsoff_flag_changed(ptr nocapture noundef readonly %tr, i32 noundef %mask, i32 noundef %set) #0 align 64 !dbg !524 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !525
  %and.i = and i32 %mask, 16777216, !dbg !526
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !526
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !526
  br i1 %tobool.not.i, label %if.end, label %if.end.i, !dbg !529

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set), !dbg !530
  %tobool1.not.i = icmp eq i32 %set, 0, !dbg !530
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i, !dbg !530

if.then2.i:                                       ; preds = %if.end.i
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 2), align 16, !dbg !531
  %0 = add i64 %gcov_ctr5.i, 1, !dbg !531
  store i64 %0, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 2), align 16, !dbg !531
  %.b1.i.i = load i1, ptr @function_enabled, align 1, !dbg !532
  br i1 %.b1.i.i, label %if.then.i.i, label %lor.lhs.false.i.i, !dbg !534

lor.lhs.false.i.i:                                ; preds = %if.then2.i
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.48, align 16, !dbg !535
  %1 = add i64 %gcov_ctr.i.i, 1, !dbg !535
  store i64 %1, ptr @__llvm_gcov_ctr.48, align 16, !dbg !535
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 3), align 8, !dbg !536
  %2 = add i64 %gcov_ctr11.i.i, 1, !dbg !536
  store i64 %2, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 3), align 8, !dbg !536
  %ops.i.i = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 40, !dbg !537
  %3 = ptrtoint ptr %ops.i.i to i32, !dbg !537
  call void @__asan_load4_noabort(i32 %3), !dbg !537
  %4 = load ptr, ptr %ops.i.i, align 4, !dbg !537
  %call.i.i = tail call i32 @register_ftrace_function(ptr noundef %4) #14, !dbg !538
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i), !dbg !539
  %tobool6.not.i.i = icmp eq i32 %call.i.i, 0, !dbg !539
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %lor.lhs.false.i.i.if.then_crit_edge, !dbg !540

lor.lhs.false.i.i.if.then_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !540
  br label %if.then, !dbg !540

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !541
  %gcov_ctr10.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 2), align 16, !dbg !541
  %5 = add i64 %gcov_ctr10.i.i, 1, !dbg !541
  store i64 %5, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 2), align 16, !dbg !541
  br label %if.then, !dbg !541

if.then7.i.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !542
  %gcov_ctr13.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 5), align 8, !dbg !542
  %6 = add i64 %gcov_ctr13.i.i, 1, !dbg !542
  store i64 %6, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 5), align 8, !dbg !542
  store i1 true, ptr @function_enabled, align 1, !dbg !542
  br label %if.then, !dbg !543

if.else.i:                                        ; preds = %if.end.i
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 1), align 8, !dbg !544
  %7 = add i64 %gcov_ctr4.i, 1, !dbg !544
  store i64 %7, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 1), align 8, !dbg !544
  %.b1.i7.i = load i1, ptr @function_enabled, align 1, !dbg !545
  br i1 %.b1.i7.i, label %if.else.i.i, label %if.then.i9.i, !dbg !547

if.then.i9.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !548
  %gcov_ctr.i8.i = load i64, ptr @__llvm_gcov_ctr.51, align 16, !dbg !548
  %8 = add i64 %gcov_ctr.i8.i, 1, !dbg !548
  store i64 %8, ptr @__llvm_gcov_ctr.51, align 16, !dbg !548
  br label %if.then, !dbg !548

if.else.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !549
  %gcov_ctr4.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 1), align 8, !dbg !549
  %9 = add i64 %gcov_ctr4.i.i, 1, !dbg !549
  store i64 %9, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 1), align 8, !dbg !549
  %ops.i10.i = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 40, !dbg !550
  %10 = ptrtoint ptr %ops.i10.i to i32, !dbg !550
  call void @__asan_load4_noabort(i32 %10), !dbg !550
  %11 = load ptr, ptr %ops.i10.i, align 4, !dbg !550
  %call.i11.i = tail call i32 @unregister_ftrace_function(ptr noundef %11) #14, !dbg !551
  store i1 false, ptr @function_enabled, align 1, !dbg !552
  br label %if.then, !dbg !553

if.then:                                          ; preds = %if.else.i.i, %if.then.i9.i, %if.then7.i.i, %if.then.i.i, %lor.lhs.false.i.i.if.then_crit_edge
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.38, align 8, !dbg !554
  %12 = add i64 %gcov_ctr, 1, !dbg !554
  store i64 %12, ptr @__llvm_gcov_ctr.38, align 8, !dbg !554
  br label %cleanup, !dbg !554

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !555
  %current_trace = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 23, !dbg !555
  %13 = ptrtoint ptr %current_trace to i32, !dbg !555
  call void @__asan_load4_noabort(i32 %13), !dbg !555
  %14 = load ptr, ptr %current_trace, align 8, !dbg !555
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.52, align 16, !dbg !556
  %15 = add i64 %gcov_ctr.i, 1, !dbg !556
  store i64 %15, ptr @__llvm_gcov_ctr.52, align 16, !dbg !556
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 1), align 8, !dbg !557
  %16 = add i64 %gcov_ctr2, 1, !dbg !557
  store i64 %16, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 1), align 8, !dbg !557
  %call1 = tail call i32 @trace_keep_overwrite(ptr noundef %14, i32 noundef %mask, i32 noundef %set) #14, !dbg !558
  br label %cleanup, !dbg !559

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1, %if.end ], !dbg !560
  ret i32 %retval.0, !dbg !561
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_tracer_flag(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_init_array_ops(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irqsoff_tracer_call(i32 noundef %ip, i32 noundef %parent_ip, ptr nocapture noundef readnone %op, ptr nocapture noundef readnone %fregs) #0 align 64 !dbg !562 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !563
  %0 = load ptr, ptr @irqsoff_trace, align 4, !dbg !564
  %gcov_ctr.i63.i = load i64, ptr @__llvm_gcov_ctr.15, align 8, !dbg !565
  %1 = add i64 %gcov_ctr.i63.i, 1, !dbg !565
  store i64 %1, ptr @__llvm_gcov_ctr.15, align 8, !dbg !565
  %2 = tail call i32 @llvm.read_register.i32(metadata !46) #14, !dbg !565
  %and.i.i = and i32 %2, -16384, !dbg !569
  %3 = inttoptr i32 %and.i.i to ptr, !dbg !570
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3, !dbg !571
  %4 = ptrtoint ptr %cpu1.i to i32, !dbg !571
  call void @__asan_load4_noabort(i32 %4), !dbg !571
  %5 = load i32, ptr %cpu1.i, align 4, !dbg !571
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5, !dbg !572
  %6 = ptrtoint ptr %arrayidx.i to i32, !dbg !572
  call void @__asan_load4_noabort(i32 %6), !dbg !572
  %7 = load i32, ptr %arrayidx.i, align 4, !dbg !572
  %add.i = add i32 %7, ptrtoint (ptr @tracing_cpu to i32), !dbg !572
  %8 = inttoptr i32 %add.i to ptr, !dbg !572
  %9 = ptrtoint ptr %8 to i32, !dbg !572
  call void @__asan_load4_noabort(i32 %9), !dbg !572
  %10 = load i32, ptr %8, align 4, !dbg !572
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10), !dbg !572
  %tobool.not.i = icmp eq i32 %10, 0, !dbg !572
  br i1 %tobool.not.i, label %if.then.i, label %do.body6.i, !dbg !572, !prof !174

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !573
  %gcov_ctr.i8 = load i64, ptr @__llvm_gcov_ctr.42, align 16, !dbg !573
  %11 = add i64 %gcov_ctr.i8, 1, !dbg !573
  store i64 %11, ptr @__llvm_gcov_ctr.42, align 16, !dbg !573
  br label %if.then, !dbg !573

do.body6.i:                                       ; preds = %entry
  %gcov_ctr.i64.i = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %12 = add i64 %gcov_ctr.i64.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.13, align 8
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !dbg !574, !srcloc !70
  %gcov_ctr.i65.i = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %14 = add i64 %gcov_ctr.i65.i, 1
  store i64 %14, ptr @__llvm_gcov_ctr.14, align 8
  %and.i66.i = and i32 %13, 128, !dbg !576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66.i), !dbg !579
  %tobool18.not.i = icmp eq i32 %and.i66.i, 0, !dbg !579
  br i1 %tobool18.not.i, label %land.lhs.true.i, label %do.body6.i.do.body23.i_crit_edge, !dbg !580

do.body6.i.do.body23.i_crit_edge:                 ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !580
  br label %do.body23.i, !dbg !580

land.lhs.true.i:                                  ; preds = %do.body6.i
  %gcov_ctr47.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !581
  %15 = add i64 %gcov_ctr47.i, 1, !dbg !581
  store i64 %15, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !581
  %gcov_ctr.i.i9 = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %16 = add i64 %gcov_ctr.i.i9, 1
  store i64 %16, ptr @__llvm_gcov_ctr.43, align 8
  %gcov_ctr.i.i.i10 = load i64, ptr @__llvm_gcov_ctr.15, align 8, !dbg !582
  %17 = add i64 %gcov_ctr.i.i.i10, 1, !dbg !582
  store i64 %17, ptr @__llvm_gcov_ctr.15, align 8, !dbg !582
  %18 = tail call i32 @llvm.read_register.i32(metadata !46) #14, !dbg !582
  %and.i.i.i = and i32 %18, -16384, !dbg !587
  %19 = inttoptr i32 %and.i.i.i to ptr, !dbg !588
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1, !dbg !589
  %20 = ptrtoint ptr %preempt_count.i.i to i32, !dbg !589
  call void @__asan_load4_noabort(i32 %20), !dbg !589
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4, !dbg !589
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21), !dbg !581
  %tobool20.not.i = icmp eq i32 %21, 0, !dbg !581
  br i1 %tobool20.not.i, label %if.then21.i, label %land.lhs.true.i.do.body23.i_crit_edge, !dbg !590

land.lhs.true.i.do.body23.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !590
  br label %do.body23.i, !dbg !590

if.then21.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !591
  %gcov_ctr48.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !591
  %22 = add i64 %gcov_ctr48.i, 1, !dbg !591
  store i64 %22, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !591
  br label %if.then, !dbg !591

do.body23.i:                                      ; preds = %land.lhs.true.i.do.body23.i_crit_edge, %do.body6.i.do.body23.i_crit_edge
  %data29.i = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 2, !dbg !592
  %23 = ptrtoint ptr %data29.i to i32, !dbg !592
  call void @__asan_load4_noabort(i32 %23), !dbg !592
  %24 = load ptr, ptr %data29.i, align 8, !dbg !592
  %25 = ptrtoint ptr %24 to i32, !dbg !592
  %26 = ptrtoint ptr %arrayidx.i to i32, !dbg !592
  call void @__asan_load4_noabort(i32 %26), !dbg !592
  %27 = load i32, ptr %arrayidx.i, align 4, !dbg !592
  %add32.i = add i32 %27, %25, !dbg !592
  %28 = inttoptr i32 %add32.i to ptr, !dbg !592
  %gcov_ctr.i55.i = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %29 = add i64 %gcov_ctr.i55.i, 1
  store i64 %29, ptr @__llvm_gcov_ctr.44, align 8
  %gcov_ctr.i.i56.i = load i64, ptr @__llvm_gcov_ctr.22, align 8
  %30 = add i64 %gcov_ctr.i.i56.i, 1
  store i64 %30, ptr @__llvm_gcov_ctr.22, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %28, i32 noundef 4) #14, !dbg !593
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %31 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %31, ptr @__llvm_gcov_ctr.21, align 8
  %gcov_ctr.i2.i.i = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %32 = add i64 %gcov_ctr.i2.i.i, 1
  store i64 %32, ptr @__llvm_gcov_ctr.45, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !dbg !597, !srcloc !602
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.47, align 8
  %33 = add i64 %gcov_ctr.i.i.i.i.i, 1
  store i64 %33, ptr @__llvm_gcov_ctr.47, align 8
  tail call void @llvm.prefetch.p0(ptr %28, i32 1, i32 3, i32 1) #14, !dbg !603
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #14, !dbg !603, !srcloc !606
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %34, 0, !dbg !603
  %gcov_ctr.i.i3.i.i = load i64, ptr @__llvm_gcov_ctr.46, align 8, !dbg !607
  %35 = add i64 %gcov_ctr.i.i3.i.i, 1, !dbg !607
  store i64 %35, ptr @__llvm_gcov_ctr.46, align 8, !dbg !607
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !dbg !607, !srcloc !608
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i), !dbg !609
  %cmp35.i = icmp eq i32 %asmresult.i.i.i.i.i, 1, !dbg !609
  br i1 %cmp35.i, label %if.end, label %if.end44.i, !dbg !609, !prof !174

if.end44.i:                                       ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !610
  %gcov_ctr50.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 4), align 16, !dbg !610
  %36 = add i64 %gcov_ctr50.i, 1, !dbg !610
  store i64 %36, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 4), align 16, !dbg !610
  %gcov_ctr.i57.i = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %37 = add i64 %gcov_ctr.i57.i, 1
  store i64 %37, ptr @__llvm_gcov_ctr.19, align 8
  %gcov_ctr.i.i58.i = load i64, ptr @__llvm_gcov_ctr.22, align 8
  %38 = add i64 %gcov_ctr.i.i58.i, 1
  store i64 %38, ptr @__llvm_gcov_ctr.22, align 8
  %call.i.i59.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %28, i32 noundef 4) #14, !dbg !611
  %gcov_ctr.i.i.i60.i = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %39 = add i64 %gcov_ctr.i.i.i60.i, 1
  store i64 %39, ptr @__llvm_gcov_ctr.21, align 8
  %gcov_ctr.i2.i61.i = load i64, ptr @__llvm_gcov_ctr.26, align 8
  %40 = add i64 %gcov_ctr.i2.i61.i, 1
  store i64 %40, ptr @__llvm_gcov_ctr.26, align 8
  %gcov_ctr.i.i3.i62.i = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %41 = add i64 %gcov_ctr.i.i3.i62.i, 1
  store i64 %41, ptr @__llvm_gcov_ctr.27, align 8
  tail call void @llvm.prefetch.p0(ptr %28, i32 1, i32 3, i32 1) #14, !dbg !614
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #14, !dbg !614, !srcloc !151
  br label %if.then, !dbg !617

if.then:                                          ; preds = %if.end44.i, %if.then21.i, %if.then.i
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.40, align 16
  %43 = add i64 %gcov_ctr, 1
  store i64 %43, ptr @__llvm_gcov_ctr.40, align 16
  br label %cleanup, !dbg !618

if.end:                                           ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !619
  %gcov_ctr49.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 3), align 8, !dbg !619
  %44 = add i64 %gcov_ctr49.i, 1, !dbg !619
  store i64 %44, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 3), align 8, !dbg !619
  %gcov_ctr5 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !620
  %45 = add i64 %gcov_ctr5, 1, !dbg !620
  store i64 %45, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !620
  %gcov_ctr.i11 = load i64, ptr @__llvm_gcov_ctr.25, align 8
  %46 = add i64 %gcov_ctr.i11, 1
  store i64 %46, ptr @__llvm_gcov_ctr.25, align 8
  %gcov_ctr.i.i12 = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %47 = add i64 %gcov_ctr.i.i12, 1
  store i64 %47, ptr @__llvm_gcov_ctr.14, align 8
  %and.i.i13 = lshr i32 %13, 7, !dbg !621
  %and.i.lobit.i = and i32 %and.i.i13, 1, !dbg !621
  %call2.i = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %and.i.lobit.i) #14, !dbg !623
  tail call void @trace_function(ptr noundef %0, i32 noundef %ip, i32 noundef %parent_ip, i32 noundef %call2.i) #14, !dbg !624
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %48 = add i64 %gcov_ctr.i, 1
  store i64 %48, ptr @__llvm_gcov_ctr.19, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.22, align 8
  %49 = add i64 %gcov_ctr.i.i, 1
  store i64 %49, ptr @__llvm_gcov_ctr.22, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %28, i32 noundef 4) #14, !dbg !625
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %50 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %50, ptr @__llvm_gcov_ctr.21, align 8
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.26, align 8
  %51 = add i64 %gcov_ctr.i2.i, 1
  store i64 %51, ptr @__llvm_gcov_ctr.26, align 8
  %gcov_ctr.i.i3.i = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %52 = add i64 %gcov_ctr.i.i3.i, 1
  store i64 %52, ptr @__llvm_gcov_ctr.27, align 8
  tail call void @llvm.prefetch.p0(ptr %28, i32 1, i32 3, i32 1) #14, !dbg !628
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #14, !dbg !628, !srcloc !151
  br label %cleanup, !dbg !631

cleanup:                                          ; preds = %if.end, %if.then
  ret void, !dbg !631
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_ftrace_function(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_reset_array_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_ftrace_function(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_default_header(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_keep_overwrite(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #9 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 1625735087) #14
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
  %exitcond.not = icmp eq i32 %5, 49
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.5, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.6, i8 0, i64 64, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.7, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.8, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr.9, i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.10, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.11, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.12, align 8
  store i64 0, ptr @__llvm_gcov_ctr.13, align 8
  store i64 0, ptr @__llvm_gcov_ctr.14, align 8
  store i64 0, ptr @__llvm_gcov_ctr.15, align 8
  store i64 0, ptr @__llvm_gcov_ctr.16, align 8
  store i64 0, ptr @__llvm_gcov_ctr.17, align 8
  store i64 0, ptr @__llvm_gcov_ctr.18, align 8
  store i64 0, ptr @__llvm_gcov_ctr.19, align 8
  store i64 0, ptr @__llvm_gcov_ctr.20, align 8
  store i64 0, ptr @__llvm_gcov_ctr.21, align 8
  store i64 0, ptr @__llvm_gcov_ctr.22, align 8
  store i64 0, ptr @__llvm_gcov_ctr.23, align 8
  store i64 0, ptr @__llvm_gcov_ctr.24, align 8
  store i64 0, ptr @__llvm_gcov_ctr.25, align 8
  store i64 0, ptr @__llvm_gcov_ctr.26, align 8
  store i64 0, ptr @__llvm_gcov_ctr.27, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.28, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.29, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.30, align 8
  store i64 0, ptr @__llvm_gcov_ctr.31, align 8
  store i64 0, ptr @__llvm_gcov_ctr.32, align 8
  store i64 0, ptr @__llvm_gcov_ctr.33, align 8
  store i64 0, ptr @__llvm_gcov_ctr.34, align 8
  store i64 0, ptr @__llvm_gcov_ctr.35, align 8
  store i64 0, ptr @__llvm_gcov_ctr.36, align 8
  store i64 0, ptr @__llvm_gcov_ctr.37, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.38, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.39, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.40, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.41, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.42, i8 0, i64 40, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.43, align 8
  store i64 0, ptr @__llvm_gcov_ctr.44, align 8
  store i64 0, ptr @__llvm_gcov_ctr.45, align 8
  store i64 0, ptr @__llvm_gcov_ctr.46, align 8
  store i64 0, ptr @__llvm_gcov_ctr.47, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.48, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.49, align 8
  store i64 0, ptr @__llvm_gcov_ctr.50, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.51, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.52, i8 0, i64 24, i1 false)
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

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { noinline nounwind uwtable(sync) }
attributes #10 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nounwind uwtable(sync) }
attributes #13 = { nomerge }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !30, !32, !34, !36, !37, !38, !39, !40, !42, !44}
!llvm.named.register.sp = !{!46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.gcov = !{!55}
!llvm.ident = !{!56}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_irqsoff.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @__ksymtab_start_critical_timings, !3, !"__ksymtab_start_critical_timings", i1 false, i1 false}
!3 = !{!"../kernel/trace/trace_irqsoff.c", i32 442, i32 1}
!4 = !{ptr @_kbl_addr_start_critical_timings, !5, !"_kbl_addr_start_critical_timings", i1 false, i1 false}
!5 = !{!"../kernel/trace/trace_irqsoff.c", i32 443, i32 1}
!6 = !{ptr @__ksymtab_stop_critical_timings, !7, !"__ksymtab_stop_critical_timings", i1 false, i1 false}
!7 = !{!"../kernel/trace/trace_irqsoff.c", i32 450, i32 1}
!8 = !{ptr @_kbl_addr_stop_critical_timings, !9, !"_kbl_addr_stop_critical_timings", i1 false, i1 false}
!9 = !{!"../kernel/trace/trace_irqsoff.c", i32 451, i32 1}
!10 = !{ptr @_kbl_addr_tracer_hardirqs_on, !11, !"_kbl_addr_tracer_hardirqs_on", i1 false, i1 false}
!11 = !{!"../kernel/trace/trace_irqsoff.c", i32 613, i32 1}
!12 = !{ptr @_kbl_addr_tracer_hardirqs_off, !13, !"_kbl_addr_tracer_hardirqs_off", i1 false, i1 false}
!13 = !{!"../kernel/trace/trace_irqsoff.c", i32 620, i32 1}
!14 = !{ptr @__initcall__kmod_trace_irqsoff__274_750_init_irqsoff_tracer1, !15, !"__initcall__kmod_trace_irqsoff__274_750_init_irqsoff_tracer1", i1 false, i1 false}
!15 = !{!"../kernel/trace/trace_irqsoff.c", i32 750, i32 1}
!16 = !{ptr @__pcpu_unique_tracing_cpu, !17, !"__pcpu_unique_tracing_cpu", i1 false, i1 false}
!17 = !{!"../kernel/trace/trace_irqsoff.c", i32 27, i32 8}
!18 = !{ptr @tracing_cpu, !17, !"tracing_cpu", i1 false, i1 false}
!19 = distinct !{null, !20, !"trace_type", i1 false, i1 false}
!20 = !{!"../kernel/trace/trace_irqsoff.c", i32 36, i32 12}
!21 = !{ptr @irqsoff_trace, !22, !"irqsoff_trace", i1 false, i1 false}
!22 = !{!"../kernel/trace/trace_irqsoff.c", i32 24, i32 29}
!23 = distinct !{null, !24, !"tracer_enabled", i1 false, i1 false}
!24 = !{!"../kernel/trace/trace_irqsoff.c", i32 25, i32 15}
!25 = !{ptr @max_sequence, !26, !"max_sequence", i1 false, i1 false}
!26 = !{!"../kernel/trace/trace_irqsoff.c", i32 83, i32 49}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/trace/trace_irqsoff.c", i32 29, i32 8}
!29 = !{ptr @max_trace_lock, !28, !"max_trace_lock", i1 false, i1 false}
!30 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/trace/trace_irqsoff.c", i32 636, i32 11}
!32 = !{ptr @irqsoff_tracer, !33, !"irqsoff_tracer", i1 false, i1 false}
!33 = !{!"../kernel/trace/trace_irqsoff.c", i32 634, i32 22}
!34 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/trace/trace_irqsoff.c", i32 572, i32 3}
!36 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__irqsoff_tracer_init._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @__irqsoff_tracer_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = distinct !{null, !41, !"irqsoff_busy", i1 false, i1 false}
!41 = !{!"../kernel/trace/trace_irqsoff.c", i32 547, i32 13}
!42 = !{ptr @save_flags, !43, !"save_flags", i1 false, i1 false}
!43 = !{!"../kernel/trace/trace_irqsoff.c", i32 38, i32 12}
!44 = distinct !{null, !45, !"function_enabled", i1 false, i1 false}
!45 = !{!"../kernel/trace/trace_irqsoff.c", i32 454, i32 13}
!46 = !{!"sp"}
!47 = !{i32 2, !"Debug Info Version", i32 3}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_irqsoff.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_irqsoff.gcda", !0}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = distinct !DISubprogram(name: "start_critical_timings", scope: !1, file: !1, line: 437, type: !58, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!58 = !DISubroutineType(types: !59)
!59 = !{}
!60 = !DILocation(line: 438, scope: !57)
!61 = !DILocation(line: 439, column: 40, scope: !57)
!62 = !DILocation(line: 57, column: 11, scope: !63, inlinedAt: !64)
!63 = distinct !DISubprogram(name: "irq_trace", scope: !1, file: !1, line: 55, type: !58, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!64 = distinct !DILocation(line: 439, column: 40, scope: !57)
!65 = !DILocation(line: 57, column: 41, scope: !63, inlinedAt: !64)
!66 = !DILocation(line: 159, column: 2, scope: !67, inlinedAt: !69)
!67 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !68, file: !68, line: 156, type: !58, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!68 = !DIFile(filename: "../arch/arm/include/asm/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!69 = distinct !DILocation(line: 58, column: 3, scope: !63, inlinedAt: !64)
!70 = !{i64 635719}
!71 = !DILocation(line: 58, column: 3, scope: !63, inlinedAt: !64)
!72 = !DILocation(line: 439, column: 6, scope: !57)
!73 = !DILocation(line: 440, column: 25, scope: !57)
!74 = !DILocation(line: 374, column: 27, scope: !75, inlinedAt: !76)
!75 = distinct !DISubprogram(name: "start_critical_timing", scope: !1, file: !1, line: 371, type: !58, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!76 = distinct !DILocation(line: 440, column: 3, scope: !57)
!77 = !DILocation(line: 377, column: 7, scope: !75, inlinedAt: !76)
!78 = !DILocation(line: 377, column: 22, scope: !75, inlinedAt: !76)
!79 = !DILocation(line: 377, column: 26, scope: !75, inlinedAt: !76)
!80 = !DILocation(line: 377, column: 6, scope: !75, inlinedAt: !76)
!81 = !DILocation(line: 378, column: 3, scope: !75, inlinedAt: !76)
!82 = !DILocation(line: 104, column: 4, scope: !83, inlinedAt: !85)
!83 = distinct !DISubprogram(name: "current_thread_info", scope: !84, file: !84, line: 101, type: !58, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!84 = !DIFile(filename: "../arch/arm/include/asm/thread_info.h", directory: "/llk/linux-5.17/build_arm_allyes")
!85 = distinct !DILocation(line: 380, column: 8, scope: !75, inlinedAt: !76)
!86 = !DILocation(line: 104, column: 26, scope: !83, inlinedAt: !85)
!87 = !DILocation(line: 103, column: 9, scope: !83, inlinedAt: !85)
!88 = !DILocation(line: 380, column: 8, scope: !75, inlinedAt: !76)
!89 = !DILocation(line: 382, column: 6, scope: !75, inlinedAt: !76)
!90 = !DILocation(line: 0, scope: !57)
!91 = !DILocation(line: 383, column: 3, scope: !75, inlinedAt: !76)
!92 = !DILocation(line: 385, column: 9, scope: !75, inlinedAt: !76)
!93 = !DILocation(line: 387, column: 6, scope: !75, inlinedAt: !76)
!94 = !DILocation(line: 387, column: 22, scope: !75, inlinedAt: !76)
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !DILocation(line: 387, column: 38, scope: !75, inlinedAt: !76)
!97 = !DILocation(line: 71, column: 2, scope: !98, inlinedAt: !100)
!98 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !99, file: !99, line: 69, type: !58, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!99 = !DIFile(filename: "../include/linux/instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!100 = distinct !DILocation(line: 27, column: 2, scope: !101, inlinedAt: !103)
!101 = distinct !DISubprogram(name: "atomic_read", scope: !102, file: !102, line: 25, type: !58, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!102 = !DIFile(filename: "../include/linux/atomic/atomic-instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!103 = distinct !DILocation(line: 387, column: 25, scope: !75, inlinedAt: !76)
!104 = !DILocation(line: 28, column: 9, scope: !101, inlinedAt: !103)
!105 = !DILocation(line: 387, column: 25, scope: !75, inlinedAt: !76)
!106 = !DILocation(line: 388, column: 3, scope: !75, inlinedAt: !76)
!107 = !DILocation(line: 101, column: 2, scope: !108, inlinedAt: !109)
!108 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !99, file: !99, line: 99, type: !58, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!109 = distinct !DILocation(line: 190, column: 2, scope: !110, inlinedAt: !111)
!110 = distinct !DISubprogram(name: "atomic_inc", scope: !102, file: !102, line: 188, type: !58, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!111 = distinct !DILocation(line: 390, column: 2, scope: !75, inlinedAt: !76)
!112 = !DILocation(line: 223, column: 1, scope: !113, inlinedAt: !115)
!113 = distinct !DISubprogram(name: "arch_atomic_add", scope: !114, file: !114, line: 223, type: !58, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!114 = !DIFile(filename: "../arch/arm/include/asm/atomic.h", directory: "/llk/linux-5.17/build_arm_allyes")
!115 = distinct !DILocation(line: 340, column: 2, scope: !116, inlinedAt: !118)
!116 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !117, file: !117, line: 338, type: !58, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!117 = !DIFile(filename: "../include/linux/atomic/atomic-arch-fallback.h", directory: "/llk/linux-5.17/build_arm_allyes")
!118 = distinct !DILocation(line: 191, column: 2, scope: !110, inlinedAt: !111)
!119 = !{i64 2148178345, i64 2148178371, i64 2148178400, i64 2148178434, i64 2148178465, i64 2148178488}
!120 = !DILocation(line: 392, column: 28, scope: !75, inlinedAt: !76)
!121 = !DILocation(line: 392, column: 8, scope: !75, inlinedAt: !76)
!122 = !DILocation(line: 392, column: 26, scope: !75, inlinedAt: !76)
!123 = !DILocation(line: 393, column: 28, scope: !75, inlinedAt: !76)
!124 = !DILocation(line: 393, column: 8, scope: !75, inlinedAt: !76)
!125 = !DILocation(line: 393, column: 26, scope: !75, inlinedAt: !76)
!126 = !DILocation(line: 394, column: 39, scope: !75, inlinedAt: !76)
!127 = !DILocation(line: 394, column: 8, scope: !75, inlinedAt: !76)
!128 = !DILocation(line: 394, column: 23, scope: !75, inlinedAt: !76)
!129 = !DILocation(line: 189, column: 2, scope: !130, inlinedAt: !132)
!130 = distinct !DISubprogram(name: "tracing_gen_ctx", scope: !131, file: !131, line: 185, type: !58, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!131 = !DIFile(filename: "../include/linux/trace_events.h", directory: "/llk/linux-5.17/build_arm_allyes")
!132 = distinct !DILocation(line: 396, column: 38, scope: !75, inlinedAt: !76)
!133 = !DILocation(line: 159, column: 2, scope: !67, inlinedAt: !134)
!134 = distinct !DILocation(line: 189, column: 2, scope: !130, inlinedAt: !132)
!135 = !DILocation(line: 181, column: 28, scope: !136, inlinedAt: !137)
!136 = distinct !DISubprogram(name: "tracing_gen_ctx_flags", scope: !131, file: !131, line: 179, type: !58, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!137 = distinct !DILocation(line: 190, column: 9, scope: !130, inlinedAt: !132)
!138 = !DILocation(line: 183, column: 9, scope: !136, inlinedAt: !137)
!139 = !DILocation(line: 396, column: 2, scope: !75, inlinedAt: !76)
!140 = !DILocation(line: 398, column: 2, scope: !75, inlinedAt: !76)
!141 = !DILocation(line: 398, column: 28, scope: !75, inlinedAt: !76)
!142 = !DILocation(line: 101, column: 2, scope: !108, inlinedAt: !143)
!143 = distinct !DILocation(line: 257, column: 2, scope: !144, inlinedAt: !145)
!144 = distinct !DISubprogram(name: "atomic_dec", scope: !102, file: !102, line: 255, type: !58, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!145 = distinct !DILocation(line: 400, column: 2, scope: !75, inlinedAt: !76)
!146 = !DILocation(line: 224, column: 1, scope: !147, inlinedAt: !148)
!147 = distinct !DISubprogram(name: "arch_atomic_sub", scope: !114, file: !114, line: 224, type: !58, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!148 = distinct !DILocation(line: 511, column: 2, scope: !149, inlinedAt: !150)
!149 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !117, file: !117, line: 509, type: !58, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!150 = distinct !DILocation(line: 258, column: 2, scope: !144, inlinedAt: !145)
!151 = !{i64 2148180810, i64 2148180836, i64 2148180865, i64 2148180899, i64 2148180930, i64 2148180953}
!152 = !DILocation(line: 401, column: 1, scope: !75, inlinedAt: !76)
!153 = !DILocation(line: 441, column: 1, scope: !57)
!154 = distinct !DISubprogram(name: "stop_critical_timings", scope: !1, file: !1, line: 445, type: !58, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!155 = !DILocation(line: 446, scope: !154)
!156 = !DILocation(line: 447, column: 40, scope: !154)
!157 = !DILocation(line: 57, column: 11, scope: !63, inlinedAt: !158)
!158 = distinct !DILocation(line: 447, column: 40, scope: !154)
!159 = !DILocation(line: 57, column: 41, scope: !63, inlinedAt: !158)
!160 = !DILocation(line: 159, column: 2, scope: !67, inlinedAt: !161)
!161 = distinct !DILocation(line: 58, column: 3, scope: !63, inlinedAt: !158)
!162 = !DILocation(line: 58, column: 3, scope: !63, inlinedAt: !158)
!163 = !DILocation(line: 447, column: 6, scope: !154)
!164 = !DILocation(line: 448, column: 24, scope: !154)
!165 = !DILocation(line: 407, column: 27, scope: !166, inlinedAt: !167)
!166 = distinct !DISubprogram(name: "stop_critical_timing", scope: !1, file: !1, line: 404, type: !58, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!167 = distinct !DILocation(line: 448, column: 3, scope: !154)
!168 = !DILocation(line: 104, column: 4, scope: !83, inlinedAt: !169)
!169 = distinct !DILocation(line: 411, column: 8, scope: !166, inlinedAt: !167)
!170 = !DILocation(line: 104, column: 26, scope: !83, inlinedAt: !169)
!171 = !DILocation(line: 103, column: 9, scope: !83, inlinedAt: !169)
!172 = !DILocation(line: 411, column: 8, scope: !166, inlinedAt: !167)
!173 = !DILocation(line: 413, column: 6, scope: !166, inlinedAt: !167)
!174 = !{!"branch_weights", i32 2000, i32 1}
!175 = !DILocation(line: 414, column: 29, scope: !166, inlinedAt: !167)
!176 = !DILocation(line: 418, column: 7, scope: !166, inlinedAt: !167)
!177 = !DILocation(line: 418, column: 22, scope: !166, inlinedAt: !167)
!178 = !DILocation(line: 0, scope: !154)
!179 = !DILocation(line: 416, column: 3, scope: !166, inlinedAt: !167)
!180 = !DILocation(line: 418, column: 26, scope: !166, inlinedAt: !167)
!181 = !DILocation(line: 418, column: 6, scope: !166, inlinedAt: !167)
!182 = !DILocation(line: 419, column: 3, scope: !166, inlinedAt: !167)
!183 = !DILocation(line: 421, column: 9, scope: !166, inlinedAt: !167)
!184 = !DILocation(line: 423, column: 6, scope: !166, inlinedAt: !167)
!185 = !DILocation(line: 423, column: 22, scope: !166, inlinedAt: !167)
!186 = !DILocation(line: 424, column: 7, scope: !166, inlinedAt: !167)
!187 = !DILocation(line: 424, column: 13, scope: !166, inlinedAt: !167)
!188 = !DILocation(line: 424, column: 28, scope: !166, inlinedAt: !167)
!189 = !DILocation(line: 424, column: 44, scope: !166, inlinedAt: !167)
!190 = !DILocation(line: 71, column: 2, scope: !98, inlinedAt: !191)
!191 = distinct !DILocation(line: 27, column: 2, scope: !101, inlinedAt: !192)
!192 = distinct !DILocation(line: 424, column: 31, scope: !166, inlinedAt: !167)
!193 = !DILocation(line: 28, column: 9, scope: !101, inlinedAt: !192)
!194 = !DILocation(line: 424, column: 31, scope: !166, inlinedAt: !167)
!195 = !DILocation(line: 425, column: 3, scope: !166, inlinedAt: !167)
!196 = !DILocation(line: 101, column: 2, scope: !108, inlinedAt: !197)
!197 = distinct !DILocation(line: 190, column: 2, scope: !110, inlinedAt: !198)
!198 = distinct !DILocation(line: 427, column: 2, scope: !166, inlinedAt: !167)
!199 = !DILocation(line: 223, column: 1, scope: !113, inlinedAt: !200)
!200 = distinct !DILocation(line: 340, column: 2, scope: !116, inlinedAt: !201)
!201 = distinct !DILocation(line: 191, column: 2, scope: !110, inlinedAt: !198)
!202 = !DILocation(line: 429, column: 14, scope: !166, inlinedAt: !167)
!203 = !DILocation(line: 430, column: 2, scope: !166, inlinedAt: !167)
!204 = !DILocation(line: 431, column: 48, scope: !166, inlinedAt: !167)
!205 = !DILocation(line: 431, column: 2, scope: !166, inlinedAt: !167)
!206 = !DILocation(line: 432, column: 23, scope: !166, inlinedAt: !167)
!207 = !DILocation(line: 101, column: 2, scope: !108, inlinedAt: !208)
!208 = distinct !DILocation(line: 257, column: 2, scope: !144, inlinedAt: !209)
!209 = distinct !DILocation(line: 433, column: 2, scope: !166, inlinedAt: !167)
!210 = !DILocation(line: 224, column: 1, scope: !147, inlinedAt: !211)
!211 = distinct !DILocation(line: 511, column: 2, scope: !149, inlinedAt: !212)
!212 = distinct !DILocation(line: 258, column: 2, scope: !144, inlinedAt: !209)
!213 = !DILocation(line: 434, column: 1, scope: !166, inlinedAt: !167)
!214 = !DILocation(line: 449, column: 1, scope: !154)
!215 = distinct !DISubprogram(name: "tracer_hardirqs_on", scope: !1, file: !1, line: 608, type: !58, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!216 = !DILocation(line: 609, scope: !215)
!217 = !DILocation(line: 57, column: 11, scope: !63, inlinedAt: !218)
!218 = distinct !DILocation(line: 610, column: 41, scope: !215)
!219 = !DILocation(line: 57, column: 41, scope: !63, inlinedAt: !218)
!220 = !DILocation(line: 159, column: 2, scope: !67, inlinedAt: !221)
!221 = distinct !DILocation(line: 58, column: 3, scope: !63, inlinedAt: !218)
!222 = !DILocation(line: 58, column: 3, scope: !63, inlinedAt: !218)
!223 = !DILocation(line: 610, column: 41, scope: !215)
!224 = !DILocation(line: 610, column: 6, scope: !215)
!225 = !DILocation(line: 611, column: 24, scope: !215)
!226 = !DILocation(line: 407, column: 27, scope: !166, inlinedAt: !227)
!227 = distinct !DILocation(line: 611, column: 3, scope: !215)
!228 = !DILocation(line: 104, column: 4, scope: !83, inlinedAt: !229)
!229 = distinct !DILocation(line: 411, column: 8, scope: !166, inlinedAt: !227)
!230 = !DILocation(line: 104, column: 26, scope: !83, inlinedAt: !229)
!231 = !DILocation(line: 103, column: 9, scope: !83, inlinedAt: !229)
!232 = !DILocation(line: 411, column: 8, scope: !166, inlinedAt: !227)
!233 = !DILocation(line: 413, column: 6, scope: !166, inlinedAt: !227)
!234 = !DILocation(line: 414, column: 29, scope: !166, inlinedAt: !227)
!235 = !DILocation(line: 418, column: 7, scope: !166, inlinedAt: !227)
!236 = !DILocation(line: 418, column: 22, scope: !166, inlinedAt: !227)
!237 = !DILocation(line: 0, scope: !215)
!238 = !DILocation(line: 416, column: 3, scope: !166, inlinedAt: !227)
!239 = !DILocation(line: 418, column: 26, scope: !166, inlinedAt: !227)
!240 = !DILocation(line: 418, column: 6, scope: !166, inlinedAt: !227)
!241 = !DILocation(line: 419, column: 3, scope: !166, inlinedAt: !227)
!242 = !DILocation(line: 421, column: 9, scope: !166, inlinedAt: !227)
!243 = !DILocation(line: 423, column: 6, scope: !166, inlinedAt: !227)
!244 = !DILocation(line: 423, column: 22, scope: !166, inlinedAt: !227)
!245 = !DILocation(line: 424, column: 7, scope: !166, inlinedAt: !227)
!246 = !DILocation(line: 424, column: 13, scope: !166, inlinedAt: !227)
!247 = !DILocation(line: 424, column: 28, scope: !166, inlinedAt: !227)
!248 = !DILocation(line: 424, column: 44, scope: !166, inlinedAt: !227)
!249 = !DILocation(line: 71, column: 2, scope: !98, inlinedAt: !250)
!250 = distinct !DILocation(line: 27, column: 2, scope: !101, inlinedAt: !251)
!251 = distinct !DILocation(line: 424, column: 31, scope: !166, inlinedAt: !227)
!252 = !DILocation(line: 28, column: 9, scope: !101, inlinedAt: !251)
!253 = !DILocation(line: 424, column: 31, scope: !166, inlinedAt: !227)
!254 = !DILocation(line: 425, column: 3, scope: !166, inlinedAt: !227)
!255 = !DILocation(line: 101, column: 2, scope: !108, inlinedAt: !256)
!256 = distinct !DILocation(line: 190, column: 2, scope: !110, inlinedAt: !257)
!257 = distinct !DILocation(line: 427, column: 2, scope: !166, inlinedAt: !227)
!258 = !DILocation(line: 223, column: 1, scope: !113, inlinedAt: !259)
!259 = distinct !DILocation(line: 340, column: 2, scope: !116, inlinedAt: !260)
!260 = distinct !DILocation(line: 191, column: 2, scope: !110, inlinedAt: !257)
!261 = !DILocation(line: 429, column: 14, scope: !166, inlinedAt: !227)
!262 = !DILocation(line: 430, column: 2, scope: !166, inlinedAt: !227)
!263 = !DILocation(line: 431, column: 34, scope: !166, inlinedAt: !227)
!264 = !DILocation(line: 431, column: 48, scope: !166, inlinedAt: !227)
!265 = !DILocation(line: 431, column: 2, scope: !166, inlinedAt: !227)
!266 = !DILocation(line: 432, column: 23, scope: !166, inlinedAt: !227)
!267 = !DILocation(line: 101, column: 2, scope: !108, inlinedAt: !268)
!268 = distinct !DILocation(line: 257, column: 2, scope: !144, inlinedAt: !269)
!269 = distinct !DILocation(line: 433, column: 2, scope: !166, inlinedAt: !227)
!270 = !DILocation(line: 224, column: 1, scope: !147, inlinedAt: !271)
!271 = distinct !DILocation(line: 511, column: 2, scope: !149, inlinedAt: !272)
!272 = distinct !DILocation(line: 258, column: 2, scope: !144, inlinedAt: !269)
!273 = !DILocation(line: 434, column: 1, scope: !166, inlinedAt: !227)
!274 = !DILocation(line: 612, column: 1, scope: !215)
!275 = distinct !DISubprogram(name: "tracer_hardirqs_off", scope: !1, file: !1, line: 615, type: !58, scopeLine: 616, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!276 = !DILocation(line: 616, scope: !275)
!277 = !DILocation(line: 57, column: 11, scope: !63, inlinedAt: !278)
!278 = distinct !DILocation(line: 617, column: 41, scope: !275)
!279 = !DILocation(line: 57, column: 41, scope: !63, inlinedAt: !278)
!280 = !DILocation(line: 159, column: 2, scope: !67, inlinedAt: !281)
!281 = distinct !DILocation(line: 58, column: 3, scope: !63, inlinedAt: !278)
!282 = !DILocation(line: 58, column: 3, scope: !63, inlinedAt: !278)
!283 = !DILocation(line: 617, column: 41, scope: !275)
!284 = !DILocation(line: 617, column: 6, scope: !275)
!285 = !DILocation(line: 618, column: 25, scope: !275)
!286 = !DILocation(line: 374, column: 27, scope: !75, inlinedAt: !287)
!287 = distinct !DILocation(line: 618, column: 3, scope: !275)
!288 = !DILocation(line: 377, column: 7, scope: !75, inlinedAt: !287)
!289 = !DILocation(line: 377, column: 22, scope: !75, inlinedAt: !287)
!290 = !DILocation(line: 377, column: 26, scope: !75, inlinedAt: !287)
!291 = !DILocation(line: 377, column: 6, scope: !75, inlinedAt: !287)
!292 = !DILocation(line: 378, column: 3, scope: !75, inlinedAt: !287)
!293 = !DILocation(line: 104, column: 4, scope: !83, inlinedAt: !294)
!294 = distinct !DILocation(line: 380, column: 8, scope: !75, inlinedAt: !287)
!295 = !DILocation(line: 104, column: 26, scope: !83, inlinedAt: !294)
!296 = !DILocation(line: 103, column: 9, scope: !83, inlinedAt: !294)
!297 = !DILocation(line: 380, column: 8, scope: !75, inlinedAt: !287)
!298 = !DILocation(line: 382, column: 6, scope: !75, inlinedAt: !287)
!299 = !DILocation(line: 0, scope: !275)
!300 = !DILocation(line: 383, column: 3, scope: !75, inlinedAt: !287)
!301 = !DILocation(line: 385, column: 9, scope: !75, inlinedAt: !287)
!302 = !DILocation(line: 387, column: 6, scope: !75, inlinedAt: !287)
!303 = !DILocation(line: 387, column: 22, scope: !75, inlinedAt: !287)
!304 = !DILocation(line: 387, column: 38, scope: !75, inlinedAt: !287)
!305 = !DILocation(line: 71, column: 2, scope: !98, inlinedAt: !306)
!306 = distinct !DILocation(line: 27, column: 2, scope: !101, inlinedAt: !307)
!307 = distinct !DILocation(line: 387, column: 25, scope: !75, inlinedAt: !287)
!308 = !DILocation(line: 28, column: 9, scope: !101, inlinedAt: !307)
!309 = !DILocation(line: 387, column: 25, scope: !75, inlinedAt: !287)
!310 = !DILocation(line: 388, column: 3, scope: !75, inlinedAt: !287)
!311 = !DILocation(line: 101, column: 2, scope: !108, inlinedAt: !312)
!312 = distinct !DILocation(line: 190, column: 2, scope: !110, inlinedAt: !313)
!313 = distinct !DILocation(line: 390, column: 2, scope: !75, inlinedAt: !287)
!314 = !DILocation(line: 223, column: 1, scope: !113, inlinedAt: !315)
!315 = distinct !DILocation(line: 340, column: 2, scope: !116, inlinedAt: !316)
!316 = distinct !DILocation(line: 191, column: 2, scope: !110, inlinedAt: !313)
!317 = !DILocation(line: 392, column: 28, scope: !75, inlinedAt: !287)
!318 = !DILocation(line: 392, column: 8, scope: !75, inlinedAt: !287)
!319 = !DILocation(line: 392, column: 26, scope: !75, inlinedAt: !287)
!320 = !DILocation(line: 393, column: 28, scope: !75, inlinedAt: !287)
!321 = !DILocation(line: 393, column: 8, scope: !75, inlinedAt: !287)
!322 = !DILocation(line: 393, column: 26, scope: !75, inlinedAt: !287)
!323 = !DILocation(line: 394, column: 25, scope: !75, inlinedAt: !287)
!324 = !DILocation(line: 394, column: 39, scope: !75, inlinedAt: !287)
!325 = !DILocation(line: 394, column: 8, scope: !75, inlinedAt: !287)
!326 = !DILocation(line: 394, column: 23, scope: !75, inlinedAt: !287)
!327 = !DILocation(line: 189, column: 2, scope: !130, inlinedAt: !328)
!328 = distinct !DILocation(line: 396, column: 38, scope: !75, inlinedAt: !287)
!329 = !DILocation(line: 159, column: 2, scope: !67, inlinedAt: !330)
!330 = distinct !DILocation(line: 189, column: 2, scope: !130, inlinedAt: !328)
!331 = !DILocation(line: 181, column: 28, scope: !136, inlinedAt: !332)
!332 = distinct !DILocation(line: 190, column: 9, scope: !130, inlinedAt: !328)
!333 = !DILocation(line: 183, column: 9, scope: !136, inlinedAt: !332)
!334 = !DILocation(line: 396, column: 2, scope: !75, inlinedAt: !287)
!335 = !DILocation(line: 398, column: 2, scope: !75, inlinedAt: !287)
!336 = !DILocation(line: 398, column: 28, scope: !75, inlinedAt: !287)
!337 = !DILocation(line: 101, column: 2, scope: !108, inlinedAt: !338)
!338 = distinct !DILocation(line: 257, column: 2, scope: !144, inlinedAt: !339)
!339 = distinct !DILocation(line: 400, column: 2, scope: !75, inlinedAt: !287)
!340 = !DILocation(line: 224, column: 1, scope: !147, inlinedAt: !341)
!341 = distinct !DILocation(line: 511, column: 2, scope: !149, inlinedAt: !342)
!342 = distinct !DILocation(line: 258, column: 2, scope: !144, inlinedAt: !339)
!343 = !DILocation(line: 401, column: 1, scope: !75, inlinedAt: !287)
!344 = !DILocation(line: 619, column: 1, scope: !275)
!345 = distinct !DISubprogram(name: "init_irqsoff_tracer", scope: !1, file: !1, line: 736, type: !58, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!346 = !DILocation(line: 737, scope: !345)
!347 = !DILocation(line: 739, column: 2, scope: !345)
!348 = !DILocation(line: 748, column: 2, scope: !345)
!349 = !DILocation(line: 186, scope: !130)
!350 = !DILocation(line: 189, column: 2, scope: !130)
!351 = !DILocation(line: 159, column: 2, scope: !67, inlinedAt: !352)
!352 = distinct !DILocation(line: 189, column: 2, scope: !130)
!353 = !DILocation(line: 181, column: 28, scope: !136, inlinedAt: !354)
!354 = distinct !DILocation(line: 190, column: 9, scope: !130)
!355 = !DILocation(line: 183, column: 9, scope: !136, inlinedAt: !354)
!356 = !DILocation(line: 190, column: 2, scope: !130)
!357 = distinct !DISubprogram(name: "check_critical_timing", scope: !1, file: !1, line: 321, type: !58, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!358 = !DILocation(line: 325, scope: !357)
!359 = !DILocation(line: 330, column: 13, scope: !357)
!360 = !DILocation(line: 331, column: 7, scope: !357)
!361 = !DILocation(line: 332, column: 12, scope: !357)
!362 = !DILocation(line: 189, column: 2, scope: !130, inlinedAt: !363)
!363 = distinct !DILocation(line: 334, column: 14, scope: !357)
!364 = !DILocation(line: 159, column: 2, scope: !67, inlinedAt: !365)
!365 = distinct !DILocation(line: 189, column: 2, scope: !130, inlinedAt: !363)
!366 = !DILocation(line: 181, column: 28, scope: !136, inlinedAt: !367)
!367 = distinct !DILocation(line: 190, column: 9, scope: !130, inlinedAt: !363)
!368 = !DILocation(line: 183, column: 9, scope: !136, inlinedAt: !367)
!369 = !DILocation(line: 310, column: 6, scope: !370, inlinedAt: !371)
!370 = distinct !DISubprogram(name: "report_latency", scope: !1, file: !1, line: 308, type: !58, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!371 = distinct !DILocation(line: 336, column: 7, scope: !357)
!372 = !DILocation(line: 311, column: 15, scope: !370, inlinedAt: !371)
!373 = !DILocation(line: 311, column: 13, scope: !370, inlinedAt: !371)
!374 = !DILocation(line: 311, column: 7, scope: !370, inlinedAt: !371)
!375 = !DILocation(line: 314, column: 20, scope: !370, inlinedAt: !371)
!376 = !DILocation(line: 314, column: 16, scope: !370, inlinedAt: !371)
!377 = !DILocation(line: 314, column: 13, scope: !370, inlinedAt: !371)
!378 = !DILocation(line: 314, column: 7, scope: !370, inlinedAt: !371)
!379 = !DILocation(line: 0, scope: !370, inlinedAt: !371)
!380 = !DILocation(line: 337, column: 3, scope: !357)
!381 = !DILocation(line: 339, column: 2, scope: !357)
!382 = !DILocation(line: 310, column: 6, scope: !370, inlinedAt: !383)
!383 = distinct !DILocation(line: 342, column: 7, scope: !357)
!384 = !DILocation(line: 311, column: 15, scope: !370, inlinedAt: !383)
!385 = !DILocation(line: 311, column: 13, scope: !370, inlinedAt: !383)
!386 = !DILocation(line: 311, column: 7, scope: !370, inlinedAt: !383)
!387 = !DILocation(line: 314, column: 20, scope: !370, inlinedAt: !383)
!388 = !DILocation(line: 314, column: 16, scope: !370, inlinedAt: !383)
!389 = !DILocation(line: 314, column: 13, scope: !370, inlinedAt: !383)
!390 = !DILocation(line: 314, column: 7, scope: !370, inlinedAt: !383)
!391 = !DILocation(line: 0, scope: !370, inlinedAt: !383)
!392 = !DILocation(line: 343, column: 3, scope: !357)
!393 = !DILocation(line: 345, column: 23, scope: !357)
!394 = !DILocation(line: 345, column: 2, scope: !357)
!395 = !DILocation(line: 347, column: 2, scope: !357)
!396 = !DILocation(line: 349, column: 12, scope: !357)
!397 = !DILocation(line: 349, column: 33, scope: !357)
!398 = !DILocation(line: 349, column: 30, scope: !357)
!399 = !DILocation(line: 349, column: 6, scope: !357)
!400 = !DILocation(line: 350, column: 3, scope: !357)
!401 = !DILocation(line: 352, column: 8, scope: !357)
!402 = !DILocation(line: 352, column: 21, scope: !357)
!403 = !DILocation(line: 354, column: 6, scope: !357)
!404 = !DILocation(line: 355, column: 21, scope: !357)
!405 = !DILocation(line: 355, column: 7, scope: !357)
!406 = !DILocation(line: 355, column: 19, scope: !357)
!407 = !DILocation(line: 104, column: 4, scope: !83, inlinedAt: !408)
!408 = distinct !DILocation(line: 356, column: 28, scope: !357)
!409 = !DILocation(line: 104, column: 26, scope: !83, inlinedAt: !408)
!410 = !DILocation(line: 103, column: 9, scope: !83, inlinedAt: !408)
!411 = !DILocation(line: 356, column: 28, scope: !357)
!412 = !DILocation(line: 356, column: 3, scope: !357)
!413 = !DILocation(line: 357, column: 2, scope: !357)
!414 = !DILocation(line: 359, column: 14, scope: !357)
!415 = !DILocation(line: 359, column: 2, scope: !357)
!416 = !DILocation(line: 362, column: 2, scope: !357)
!417 = !DILocation(line: 365, column: 28, scope: !357)
!418 = !DILocation(line: 365, column: 8, scope: !357)
!419 = !DILocation(line: 365, column: 26, scope: !357)
!420 = !DILocation(line: 366, column: 28, scope: !357)
!421 = !DILocation(line: 366, column: 26, scope: !357)
!422 = !DILocation(line: 367, column: 23, scope: !357)
!423 = !DILocation(line: 367, column: 2, scope: !357)
!424 = !DILocation(line: 368, column: 1, scope: !357)
!425 = distinct !DISubprogram(name: "irqsoff_tracer_init", scope: !1, file: !1, line: 622, type: !58, scopeLine: 623, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!426 = !DILocation(line: 623, scope: !425)
!427 = !DILocation(line: 624, column: 13, scope: !425)
!428 = !DILocation(line: 551, column: 6, scope: !429, inlinedAt: !430)
!429 = distinct !DISubprogram(name: "__irqsoff_tracer_init", scope: !1, file: !1, line: 549, type: !58, scopeLine: 550, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!430 = distinct !DILocation(line: 626, column: 9, scope: !425)
!431 = !DILocation(line: 552, column: 3, scope: !429, inlinedAt: !430)
!432 = !DILocation(line: 554, column: 19, scope: !429, inlinedAt: !430)
!433 = !DILocation(line: 554, column: 13, scope: !429, inlinedAt: !430)
!434 = !DILocation(line: 557, column: 2, scope: !429, inlinedAt: !430)
!435 = !DILocation(line: 558, column: 2, scope: !429, inlinedAt: !430)
!436 = !DILocation(line: 560, column: 2, scope: !429, inlinedAt: !430)
!437 = !DILocation(line: 562, column: 6, scope: !429, inlinedAt: !430)
!438 = !DILocation(line: 562, column: 18, scope: !429, inlinedAt: !430)
!439 = !DILocation(line: 563, column: 16, scope: !429, inlinedAt: !430)
!440 = !DILocation(line: 565, column: 2, scope: !429, inlinedAt: !430)
!441 = !{i64 2155424207}
!442 = !DILocation(line: 567, column: 2, scope: !429, inlinedAt: !430)
!443 = !DILocation(line: 570, column: 36, scope: !429, inlinedAt: !430)
!444 = !DILocation(line: 570, column: 42, scope: !429, inlinedAt: !430)
!445 = !DILocation(line: 570, column: 66, scope: !429, inlinedAt: !430)
!446 = !DILocation(line: 0, scope: !425)
!447 = !DILocation(line: 461, column: 6, scope: !448, inlinedAt: !449)
!448 = distinct !DISubprogram(name: "register_irqsoff_function", scope: !1, file: !1, line: 456, type: !58, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!449 = distinct !DILocation(line: 530, column: 8, scope: !450, inlinedAt: !451)
!450 = distinct !DISubprogram(name: "start_irqsoff_tracer", scope: !1, file: !1, line: 526, type: !58, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!451 = distinct !DILocation(line: 570, column: 6, scope: !429, inlinedAt: !430)
!452 = !DILocation(line: 461, column: 23, scope: !448, inlinedAt: !449)
!453 = !DILocation(line: 461, column: 28, scope: !448, inlinedAt: !449)
!454 = !DILocation(line: 461, column: 37, scope: !448, inlinedAt: !449)
!455 = !DILocation(line: 461, column: 41, scope: !448, inlinedAt: !449)
!456 = !DILocation(line: 461, column: 53, scope: !448, inlinedAt: !449)
!457 = !DILocation(line: 462, column: 3, scope: !448, inlinedAt: !449)
!458 = !DILocation(line: 467, column: 34, scope: !448, inlinedAt: !449)
!459 = !DILocation(line: 467, column: 38, scope: !448, inlinedAt: !449)
!460 = !DILocation(line: 467, column: 9, scope: !448, inlinedAt: !449)
!461 = !DILocation(line: 469, column: 7, scope: !448, inlinedAt: !449)
!462 = !DILocation(line: 469, column: 6, scope: !448, inlinedAt: !449)
!463 = !DILocation(line: 470, column: 20, scope: !448, inlinedAt: !449)
!464 = !DILocation(line: 470, column: 3, scope: !448, inlinedAt: !449)
!465 = !DILocation(line: 532, column: 14, scope: !450, inlinedAt: !451)
!466 = !DILocation(line: 532, column: 6, scope: !450, inlinedAt: !451)
!467 = !DILocation(line: 535, column: 18, scope: !450, inlinedAt: !451)
!468 = !DILocation(line: 0, scope: !450, inlinedAt: !451)
!469 = !DILocation(line: 570, column: 6, scope: !429, inlinedAt: !430)
!470 = !DILocation(line: 533, column: 18, scope: !450, inlinedAt: !451)
!471 = !DILocation(line: 572, column: 3, scope: !429, inlinedAt: !430)
!472 = !DILocation(line: 574, column: 15, scope: !429, inlinedAt: !430)
!473 = !DILocation(line: 575, column: 2, scope: !429, inlinedAt: !430)
!474 = !DILocation(line: 0, scope: !429, inlinedAt: !430)
!475 = !DILocation(line: 626, column: 2, scope: !425)
!476 = distinct !DISubprogram(name: "irqsoff_tracer_reset", scope: !1, file: !1, line: 629, type: !58, scopeLine: 630, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!477 = !DILocation(line: 630, scope: !476)
!478 = !DILocation(line: 580, column: 17, scope: !479, inlinedAt: !480)
!479 = distinct !DISubprogram(name: "__irqsoff_tracer_reset", scope: !1, file: !1, line: 578, type: !58, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!480 = distinct !DILocation(line: 631, column: 2, scope: !476)
!481 = !DILocation(line: 542, column: 17, scope: !482, inlinedAt: !483)
!482 = distinct !DISubprogram(name: "stop_irqsoff_tracer", scope: !1, file: !1, line: 540, type: !58, scopeLine: 541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!483 = distinct !DILocation(line: 584, column: 2, scope: !479, inlinedAt: !480)
!484 = !DILocation(line: 477, column: 7, scope: !485, inlinedAt: !486)
!485 = distinct !DISubprogram(name: "unregister_irqsoff_function", scope: !1, file: !1, line: 475, type: !58, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!486 = distinct !DILocation(line: 544, column: 2, scope: !482, inlinedAt: !483)
!487 = !DILocation(line: 477, column: 6, scope: !485, inlinedAt: !486)
!488 = !DILocation(line: 478, column: 3, scope: !485, inlinedAt: !486)
!489 = !DILocation(line: 483, column: 30, scope: !485, inlinedAt: !486)
!490 = !DILocation(line: 483, column: 34, scope: !485, inlinedAt: !486)
!491 = !DILocation(line: 483, column: 3, scope: !485, inlinedAt: !486)
!492 = !DILocation(line: 485, column: 19, scope: !485, inlinedAt: !486)
!493 = !DILocation(line: 486, column: 1, scope: !485, inlinedAt: !486)
!494 = !DILocation(line: 582, column: 30, scope: !479, inlinedAt: !480)
!495 = !DILocation(line: 581, column: 34, scope: !479, inlinedAt: !480)
!496 = !DILocation(line: 580, column: 28, scope: !479, inlinedAt: !480)
!497 = !DILocation(line: 586, column: 2, scope: !479, inlinedAt: !480)
!498 = !DILocation(line: 587, column: 2, scope: !479, inlinedAt: !480)
!499 = !DILocation(line: 588, column: 2, scope: !479, inlinedAt: !480)
!500 = !DILocation(line: 589, column: 2, scope: !479, inlinedAt: !480)
!501 = !DILocation(line: 591, column: 15, scope: !479, inlinedAt: !480)
!502 = !DILocation(line: 632, column: 1, scope: !476)
!503 = distinct !DISubprogram(name: "irqsoff_tracer_start", scope: !1, file: !1, line: 594, type: !58, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!504 = !DILocation(line: 595, scope: !503)
!505 = !DILocation(line: 596, column: 17, scope: !503)
!506 = !DILocation(line: 597, column: 1, scope: !503)
!507 = distinct !DISubprogram(name: "irqsoff_tracer_stop", scope: !1, file: !1, line: 599, type: !58, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!508 = !DILocation(line: 600, scope: !507)
!509 = !DILocation(line: 601, column: 17, scope: !507)
!510 = !DILocation(line: 602, column: 1, scope: !507)
!511 = distinct !DISubprogram(name: "irqsoff_trace_open", scope: !1, file: !1, line: 289, type: !58, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!512 = !DILocation(line: 289, scope: !511)
!513 = !DILocation(line: 289, column: 63, scope: !511)
!514 = distinct !DISubprogram(name: "irqsoff_trace_close", scope: !1, file: !1, line: 290, type: !58, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!515 = !DILocation(line: 290, scope: !514)
!516 = !DILocation(line: 290, column: 64, scope: !514)
!517 = distinct !DISubprogram(name: "irqsoff_print_header", scope: !1, file: !1, line: 293, type: !58, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!518 = !DILocation(line: 294, scope: !517)
!519 = !DILocation(line: 295, column: 2, scope: !517)
!520 = !DILocation(line: 296, column: 1, scope: !517)
!521 = distinct !DISubprogram(name: "irqsoff_print_line", scope: !1, file: !1, line: 284, type: !58, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!522 = !DILocation(line: 285, scope: !521)
!523 = !DILocation(line: 286, column: 2, scope: !521)
!524 = distinct !DISubprogram(name: "irqsoff_flag_changed", scope: !1, file: !1, line: 511, type: !58, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!525 = !DILocation(line: 512, scope: !524)
!526 = !DILocation(line: 490, column: 13, scope: !527, inlinedAt: !528)
!527 = distinct !DISubprogram(name: "irqsoff_function_set", scope: !1, file: !1, line: 488, type: !58, scopeLine: 489, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!528 = distinct !DILocation(line: 515, column: 6, scope: !524)
!529 = !DILocation(line: 490, column: 6, scope: !527, inlinedAt: !528)
!530 = !DILocation(line: 493, column: 6, scope: !527, inlinedAt: !528)
!531 = !DILocation(line: 494, column: 29, scope: !527, inlinedAt: !528)
!532 = !DILocation(line: 461, column: 6, scope: !448, inlinedAt: !533)
!533 = distinct !DILocation(line: 494, column: 3, scope: !527, inlinedAt: !528)
!534 = !DILocation(line: 461, column: 23, scope: !448, inlinedAt: !533)
!535 = !DILocation(line: 461, column: 28, scope: !448, inlinedAt: !533)
!536 = !DILocation(line: 467, column: 34, scope: !448, inlinedAt: !533)
!537 = !DILocation(line: 467, column: 38, scope: !448, inlinedAt: !533)
!538 = !DILocation(line: 467, column: 9, scope: !448, inlinedAt: !533)
!539 = !DILocation(line: 469, column: 7, scope: !448, inlinedAt: !533)
!540 = !DILocation(line: 469, column: 6, scope: !448, inlinedAt: !533)
!541 = !DILocation(line: 462, column: 3, scope: !448, inlinedAt: !533)
!542 = !DILocation(line: 470, column: 20, scope: !448, inlinedAt: !533)
!543 = !DILocation(line: 470, column: 3, scope: !448, inlinedAt: !533)
!544 = !DILocation(line: 496, column: 31, scope: !527, inlinedAt: !528)
!545 = !DILocation(line: 477, column: 7, scope: !485, inlinedAt: !546)
!546 = distinct !DILocation(line: 496, column: 3, scope: !527, inlinedAt: !528)
!547 = !DILocation(line: 477, column: 6, scope: !485, inlinedAt: !546)
!548 = !DILocation(line: 478, column: 3, scope: !485, inlinedAt: !546)
!549 = !DILocation(line: 483, column: 30, scope: !485, inlinedAt: !546)
!550 = !DILocation(line: 483, column: 34, scope: !485, inlinedAt: !546)
!551 = !DILocation(line: 483, column: 3, scope: !485, inlinedAt: !546)
!552 = !DILocation(line: 485, column: 19, scope: !485, inlinedAt: !546)
!553 = !DILocation(line: 486, column: 1, scope: !485, inlinedAt: !546)
!554 = !DILocation(line: 516, column: 3, scope: !524)
!555 = !DILocation(line: 513, column: 30, scope: !524)
!556 = !DILocation(line: 491, column: 3, scope: !527, inlinedAt: !528)
!557 = !DILocation(line: 523, column: 30, scope: !524)
!558 = !DILocation(line: 523, column: 9, scope: !524)
!559 = !DILocation(line: 523, column: 2, scope: !524)
!560 = !DILocation(line: 0, scope: !524)
!561 = !DILocation(line: 524, column: 1, scope: !524)
!562 = distinct !DISubprogram(name: "irqsoff_tracer_call", scope: !1, file: !1, line: 140, type: !58, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!563 = !DILocation(line: 142, scope: !562)
!564 = !DILocation(line: 143, column: 27, scope: !562)
!565 = !DILocation(line: 104, column: 4, scope: !83, inlinedAt: !566)
!566 = distinct !DILocation(line: 112, column: 8, scope: !567, inlinedAt: !568)
!567 = distinct !DISubprogram(name: "func_prolog_dec", scope: !1, file: !1, line: 99, type: !58, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!568 = distinct !DILocation(line: 148, column: 7, scope: !562)
!569 = !DILocation(line: 104, column: 26, scope: !83, inlinedAt: !566)
!570 = !DILocation(line: 103, column: 9, scope: !83, inlinedAt: !566)
!571 = !DILocation(line: 112, column: 8, scope: !567, inlinedAt: !568)
!572 = !DILocation(line: 113, column: 6, scope: !567, inlinedAt: !568)
!573 = !DILocation(line: 114, column: 3, scope: !567, inlinedAt: !568)
!574 = !DILocation(line: 159, column: 2, scope: !67, inlinedAt: !575)
!575 = distinct !DILocation(line: 116, column: 2, scope: !567, inlinedAt: !568)
!576 = !DILocation(line: 181, column: 15, scope: !577, inlinedAt: !578)
!577 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !68, file: !68, line: 179, type: !58, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!578 = distinct !DILocation(line: 122, column: 7, scope: !567, inlinedAt: !568)
!579 = !DILocation(line: 122, column: 7, scope: !567, inlinedAt: !568)
!580 = !DILocation(line: 122, column: 35, scope: !567, inlinedAt: !568)
!581 = !DILocation(line: 122, column: 39, scope: !567, inlinedAt: !568)
!582 = !DILocation(line: 104, column: 4, scope: !83, inlinedAt: !583)
!583 = distinct !DILocation(line: 11, column: 9, scope: !584, inlinedAt: !586)
!584 = distinct !DISubprogram(name: "preempt_count", scope: !585, file: !585, line: 9, type: !58, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!585 = !DIFile(filename: "../include/asm-generic/preempt.h", directory: "/llk/linux-5.17/build_arm_allyes")
!586 = distinct !DILocation(line: 122, column: 39, scope: !567, inlinedAt: !568)
!587 = !DILocation(line: 104, column: 26, scope: !83, inlinedAt: !583)
!588 = !DILocation(line: 103, column: 9, scope: !83, inlinedAt: !583)
!589 = !DILocation(line: 11, column: 9, scope: !584, inlinedAt: !586)
!590 = !DILocation(line: 122, column: 6, scope: !567, inlinedAt: !568)
!591 = !DILocation(line: 123, column: 3, scope: !567, inlinedAt: !568)
!592 = !DILocation(line: 125, column: 10, scope: !567, inlinedAt: !568)
!593 = !DILocation(line: 101, column: 2, scope: !108, inlinedAt: !594)
!594 = distinct !DILocation(line: 198, column: 2, scope: !595, inlinedAt: !596)
!595 = distinct !DISubprogram(name: "atomic_inc_return", scope: !102, file: !102, line: 195, type: !58, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!596 = distinct !DILocation(line: 126, column: 13, scope: !567, inlinedAt: !568)
!597 = !DILocation(line: 200, column: 2, scope: !598, inlinedAt: !599)
!598 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !117, file: !117, line: 197, type: !58, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!599 = distinct !DILocation(line: 356, column: 9, scope: !600, inlinedAt: !601)
!600 = distinct !DISubprogram(name: "arch_atomic_inc_return", scope: !117, file: !117, line: 354, type: !58, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!601 = distinct !DILocation(line: 199, column: 9, scope: !595, inlinedAt: !596)
!602 = !{i64 2148263756}
!603 = !DILocation(line: 223, column: 1, scope: !604, inlinedAt: !605)
!604 = distinct !DISubprogram(name: "arch_atomic_add_return_relaxed", scope: !114, file: !114, line: 223, type: !58, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!605 = distinct !DILocation(line: 201, column: 8, scope: !598, inlinedAt: !599)
!606 = !{i64 2148179065, i64 2148179097, i64 2148179126, i64 2148179160, i64 2148179191, i64 2148179214}
!607 = !DILocation(line: 202, column: 2, scope: !598, inlinedAt: !599)
!608 = !{i64 2148263985}
!609 = !DILocation(line: 128, column: 6, scope: !567, inlinedAt: !568)
!610 = !DILocation(line: 131, column: 16, scope: !567, inlinedAt: !568)
!611 = !DILocation(line: 101, column: 2, scope: !108, inlinedAt: !612)
!612 = distinct !DILocation(line: 257, column: 2, scope: !144, inlinedAt: !613)
!613 = distinct !DILocation(line: 131, column: 2, scope: !567, inlinedAt: !568)
!614 = !DILocation(line: 224, column: 1, scope: !147, inlinedAt: !615)
!615 = distinct !DILocation(line: 511, column: 2, scope: !149, inlinedAt: !616)
!616 = distinct !DILocation(line: 258, column: 2, scope: !144, inlinedAt: !613)
!617 = !DILocation(line: 133, column: 2, scope: !567, inlinedAt: !568)
!618 = !DILocation(line: 149, column: 3, scope: !562)
!619 = !DILocation(line: 129, column: 3, scope: !567, inlinedAt: !568)
!620 = !DILocation(line: 151, column: 36, scope: !562)
!621 = !DILocation(line: 181, column: 28, scope: !136, inlinedAt: !622)
!622 = distinct !DILocation(line: 151, column: 14, scope: !562)
!623 = !DILocation(line: 183, column: 9, scope: !136, inlinedAt: !622)
!624 = !DILocation(line: 153, column: 2, scope: !562)
!625 = !DILocation(line: 101, column: 2, scope: !108, inlinedAt: !626)
!626 = distinct !DILocation(line: 257, column: 2, scope: !144, inlinedAt: !627)
!627 = distinct !DILocation(line: 155, column: 2, scope: !562)
!628 = !DILocation(line: 224, column: 1, scope: !147, inlinedAt: !629)
!629 = distinct !DILocation(line: 511, column: 2, scope: !149, inlinedAt: !630)
!630 = distinct !DILocation(line: 258, column: 2, scope: !144, inlinedAt: !627)
!631 = !DILocation(line: 156, column: 1, scope: !562)
