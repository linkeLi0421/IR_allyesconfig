; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_sched_switch.c_pt.bc'
source_filename = "../kernel/trace/trace_sched_switch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%union.anon.18 = type { i32 }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@sched_register_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sched_register_mutex, i64 52), ptr getelementptr (i8, ptr @sched_register_mutex, i64 52) }, ptr @sched_register_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@sched_cmdline_ref = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sched_tgid_ref = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sched_register_mutex.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sched_register_mutex\00", [43 x i8] zeroinitializer }, align 32
@tracing_sched_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016wakeup trace: Couldn't activate tracepoint probe to kernel_sched_wakeup\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tracing_sched_register\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"kernel/trace/trace_sched_switch.c\00", [62 x i8] zeroinitializer }, align 32
@tracing_sched_register._entry_ptr = internal global ptr @tracing_sched_register._entry, section ".printk_index", align 4
@tracing_sched_register._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016wakeup trace: Couldn't activate tracepoint probe to kernel_sched_wakeup_new\0A\00", [49 x i8] zeroinitializer }, align 32
@tracing_sched_register._entry_ptr.7 = internal global ptr @tracing_sched_register._entry.5, section ".printk_index", align 4
@tracing_sched_register._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016sched trace: Couldn't activate tracepoint probe to kernel_sched_switch\0A\00", [54 x i8] zeroinitializer }, align 32
@tracing_sched_register._entry_ptr.10 = internal global ptr @tracing_sched_register._entry.8, section ".printk_index", align 4
@__tracepoint_sched_wakeup = external dso_local global %struct.tracepoint, align 4
@__tracepoint_sched_wakeup_new = external dso_local global %struct.tracepoint, align 4
@__tracepoint_sched_switch = external dso_local global %struct.tracepoint, align 4
@__llvm_gcov_ctr = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.11 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.12 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.13 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.14 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.15 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.16 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.17 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.22 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.23 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.24 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.25 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.26 = internal global [1 x i64] zeroinitializer
@0 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_sched_switch.gcda\00", [58 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [17 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 -1633143888, i32 -276218240 }, %emit_function_args_ty { i32 1, i32 -730482985, i32 -276218240 }, %emit_function_args_ty { i32 2, i32 -1966967989, i32 -276218240 }, %emit_function_args_ty { i32 3, i32 -697601695, i32 -276218240 }, %emit_function_args_ty { i32 4, i32 -352296790, i32 -276218240 }, %emit_function_args_ty { i32 5, i32 -643463565, i32 -276218240 }, %emit_function_args_ty { i32 6, i32 1242376978, i32 -276218240 }, %emit_function_args_ty { i32 7, i32 -169566419, i32 -276218240 }, %emit_function_args_ty { i32 8, i32 805070360, i32 -276218240 }, %emit_function_args_ty { i32 9, i32 -420784376, i32 -276218240 }, %emit_function_args_ty { i32 10, i32 -1974325847, i32 -276218240 }, %emit_function_args_ty { i32 11, i32 -1714847278, i32 -276218240 }, %emit_function_args_ty { i32 12, i32 -1268763043, i32 -276218240 }, %emit_function_args_ty { i32 13, i32 1141314613, i32 -276218240 }, %emit_function_args_ty { i32 14, i32 288547376, i32 -276218240 }, %emit_function_args_ty { i32 15, i32 1497437950, i32 -276218240 }, %emit_function_args_ty { i32 16, i32 2042980911, i32 -276218240 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [17 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.11 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.12 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.13 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.14 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.15 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.16 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.17 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.18 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.19 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.20 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.21 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.22 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.23 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.24 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.25 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.26 }]
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.28 = private unnamed_addr constant [21 x i8] c"sched_register_mutex\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"sched_cmdline_ref\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 19, i32 13 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"sched_tgid_ref\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 20, i32 13 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 21, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 56, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 63, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [37 x i8] c"../kernel/trace/trace_sched_switch.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 70, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @tracing_sched_register._entry, ptr @tracing_sched_register._entry.5, ptr @tracing_sched_register._entry.8, ptr @tracing_sched_register._entry_ptr, ptr @tracing_sched_register._entry_ptr.10, ptr @tracing_sched_register._entry_ptr.7, ptr @sched_register_mutex, ptr @sched_cmdline_ref, ptr @sched_tgid_ref, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9], section "llvm.metadata"
@1 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_register_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_cmdline_ref to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_tgid_ref to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tracing_sched_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tracing_sched_register._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tracing_sched_register._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tracing_start_cmdline_record() local_unnamed_addr #0 align 64 !dbg !35 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !38
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 8, !dbg !39
  %0 = add i64 %gcov_ctr, 1, !dbg !39
  store i64 %0, ptr @__llvm_gcov_ctr, align 8, !dbg !39
  tail call fastcc void @tracing_start_sched_switch(i32 noundef 1), !dbg !39
  ret void, !dbg !40
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tracing_start_sched_switch(i32 noundef %ops) unnamed_addr #0 align 64 !dbg !41 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !42
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.11, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.11, align 16
  tail call void @mutex_lock_nested(ptr noundef nonnull @sched_register_mutex, i32 noundef 0) #9, !dbg !43
  %1 = load i32, ptr @sched_cmdline_ref, align 4, !dbg !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1), !dbg !44
  %tobool.not = icmp eq i32 %1, 0, !dbg !44
  br i1 %tobool.not, label %land.rhs, label %entry.land.end_crit_edge, !dbg !45

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !45
  br label %land.end, !dbg !45

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !46
  %gcov_ctr7 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 1), align 8, !dbg !46
  %2 = add i64 %gcov_ctr7, 1, !dbg !46
  store i64 %2, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 1), align 8, !dbg !46
  %3 = load i32, ptr @sched_tgid_ref, align 4, !dbg !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3), !dbg !47
  %tobool1.not = icmp eq i32 %3, 0, !dbg !47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool1.not, %land.rhs ], !dbg !48
  %5 = zext i32 %ops to i64, !dbg !49
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values), !dbg !49
  switch i32 %ops, label %land.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ], !dbg !49

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8, !dbg !49
  br label %sw.epilog, !dbg !49

sw.bb:                                            ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8, !dbg !50
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 2), align 16, !dbg !50
  %6 = add i64 %gcov_ctr8, 1, !dbg !50
  store i64 %6, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 2), align 16, !dbg !50
  br label %sw.epilog.sink.split, !dbg !51

sw.bb2:                                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8, !dbg !52
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 3), align 8, !dbg !52
  %7 = add i64 %gcov_ctr9, 1, !dbg !52
  store i64 %7, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 3), align 8, !dbg !52
  %8 = load i32, ptr @sched_tgid_ref, align 4, !dbg !52
  br label %sw.epilog.sink.split, !dbg !53

sw.epilog.sink.split:                             ; preds = %sw.bb2, %sw.bb
  %.sink = phi i32 [ %8, %sw.bb2 ], [ %1, %sw.bb ]
  %sched_tgid_ref.sink = phi ptr [ @sched_tgid_ref, %sw.bb2 ], [ @sched_cmdline_ref, %sw.bb ]
  %inc3 = add i32 %.sink, 1, !dbg !48
  %9 = ptrtoint ptr %sched_tgid_ref.sink to i32, !dbg !48
  call void @__asan_store4_noabort(i32 %9), !dbg !48
  store i32 %inc3, ptr %sched_tgid_ref.sink, align 4, !dbg !48
  br label %sw.epilog, !dbg !54

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %land.end.sw.epilog_crit_edge
  br i1 %4, label %land.lhs.true, label %sw.epilog.if.end_crit_edge, !dbg !54

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8, !dbg !54
  br label %if.end, !dbg !54

land.lhs.true:                                    ; preds = %sw.epilog
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 4), align 16, !dbg !55
  %10 = add i64 %gcov_ctr10, 1, !dbg !55
  store i64 %10, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 4), align 16, !dbg !55
  %11 = load i32, ptr @sched_cmdline_ref, align 4, !dbg !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11), !dbg !55
  %tobool5.not = icmp eq i32 %11, 0, !dbg !55
  br i1 %tobool5.not, label %lor.lhs.false, label %land.lhs.true.if.then_crit_edge, !dbg !56

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8, !dbg !56
  br label %if.then, !dbg !56

lor.lhs.false:                                    ; preds = %land.lhs.true
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 5), align 8, !dbg !57
  %12 = add i64 %gcov_ctr11, 1, !dbg !57
  store i64 %12, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 5), align 8, !dbg !57
  %13 = load i32, ptr @sched_tgid_ref, align 4, !dbg !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13), !dbg !57
  %tobool6.not = icmp eq i32 %13, 0, !dbg !57
  br i1 %tobool6.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge, !dbg !58

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8, !dbg !58
  br label %if.then, !dbg !58

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8, !dbg !58
  br label %if.end, !dbg !58

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 6), align 16, !dbg !59
  %14 = add i64 %gcov_ctr12, 1, !dbg !59
  store i64 %14, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 6), align 16, !dbg !59
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %15 = add i64 %gcov_ctr.i.i, 1
  store i64 %15, ptr @__llvm_gcov_ctr.17, align 8
  %call.i.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_sched_wakeup, ptr noundef nonnull @probe_sched_wakeup, ptr noundef null) #9, !dbg !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i), !dbg !66
  %tobool.not.i = icmp eq i32 %call.i.i, 0, !dbg !66
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !dbg !66

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8, !dbg !67
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.16, align 16, !dbg !67
  %16 = add i64 %gcov_ctr.i, 1, !dbg !67
  store i64 %16, ptr @__llvm_gcov_ctr.16, align 16, !dbg !67
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10, !dbg !67
  br label %if.end, !dbg !68

if.end.i:                                         ; preds = %if.then
  %gcov_ctr.i1.i = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %17 = add i64 %gcov_ctr.i1.i, 1
  store i64 %17, ptr @__llvm_gcov_ctr.19, align 8
  %call.i2.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_sched_wakeup_new, ptr noundef nonnull @probe_sched_wakeup, ptr noundef null) #9, !dbg !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i), !dbg !72
  %tobool3.not.i = icmp eq i32 %call.i2.i, 0, !dbg !72
  br i1 %tobool3.not.i, label %if.end10.i, label %do.end7.i, !dbg !72

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8, !dbg !73
  %gcov_ctr22.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8, !dbg !73
  %18 = add i64 %gcov_ctr22.i, 1, !dbg !73
  store i64 %18, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8, !dbg !73
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10, !dbg !73
  br label %fail_deprobe.i, !dbg !74

if.end10.i:                                       ; preds = %if.end.i
  %gcov_ctr.i3.i = load i64, ptr @__llvm_gcov_ctr.20, align 8
  %19 = add i64 %gcov_ctr.i3.i, 1
  store i64 %19, ptr @__llvm_gcov_ctr.20, align 8
  %call.i4.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_sched_switch, ptr noundef nonnull @probe_sched_switch, ptr noundef null) #9, !dbg !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i), !dbg !78
  %tobool12.not.i = icmp eq i32 %call.i4.i, 0, !dbg !78
  br i1 %tobool12.not.i, label %if.end19.i, label %if.then13.i, !dbg !78

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8, !dbg !79
  %gcov_ctr23.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 2), align 16, !dbg !79
  %20 = add i64 %gcov_ctr23.i, 1, !dbg !79
  store i64 %20, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 2), align 16, !dbg !79
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10, !dbg !79
  %gcov_ctr.i5.i = load i64, ptr @__llvm_gcov_ctr.22, align 8
  %21 = add i64 %gcov_ctr.i5.i, 1
  store i64 %21, ptr @__llvm_gcov_ctr.22, align 8
  %call.i6.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_wakeup_new, ptr noundef nonnull @probe_sched_wakeup, ptr noundef null) #9, !dbg !80
  br label %fail_deprobe.i, !dbg !83

if.end19.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8, !dbg !84
  %gcov_ctr24.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 3), align 8, !dbg !84
  %22 = add i64 %gcov_ctr24.i, 1, !dbg !84
  store i64 %22, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 3), align 8, !dbg !84
  br label %if.end, !dbg !85

fail_deprobe.i:                                   ; preds = %if.then13.i, %do.end7.i
  %gcov_ctr.i7.i = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %23 = add i64 %gcov_ctr.i7.i, 1
  store i64 %23, ptr @__llvm_gcov_ctr.23, align 8
  %call.i8.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_wakeup, ptr noundef nonnull @probe_sched_wakeup, ptr noundef null) #9, !dbg !86
  br label %if.end, !dbg !89

if.end:                                           ; preds = %fail_deprobe.i, %if.end19.i, %if.then.i, %lor.lhs.false.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @sched_register_mutex) #9, !dbg !90
  ret void, !dbg !91
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tracing_stop_cmdline_record() local_unnamed_addr #0 align 64 !dbg !92 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !93
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.12, align 8, !dbg !94
  %0 = add i64 %gcov_ctr, 1, !dbg !94
  store i64 %0, ptr @__llvm_gcov_ctr.12, align 8, !dbg !94
  tail call fastcc void @tracing_stop_sched_switch(i32 noundef 1), !dbg !94
  ret void, !dbg !95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tracing_stop_sched_switch(i32 noundef %ops) unnamed_addr #0 align 64 !dbg !96 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !97
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.13, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.13, align 16
  tail call void @mutex_lock_nested(ptr noundef nonnull @sched_register_mutex, i32 noundef 0) #9, !dbg !98
  %1 = zext i32 %ops to i64, !dbg !99
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.27), !dbg !99
  switch i32 %ops, label %entry.sw.epilogthread-pre-split_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ], !dbg !99

entry.sw.epilogthread-pre-split_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !99
  br label %sw.epilogthread-pre-split, !dbg !99

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !100
  %gcov_ctr4 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 1), align 8, !dbg !100
  %2 = add i64 %gcov_ctr4, 1, !dbg !100
  store i64 %2, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 1), align 8, !dbg !100
  %3 = load i32, ptr @sched_cmdline_ref, align 4, !dbg !100
  %dec = add i32 %3, -1, !dbg !100
  store i32 %dec, ptr @sched_cmdline_ref, align 4, !dbg !100
  br label %sw.epilog, !dbg !101

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !102
  %gcov_ctr5 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 2), align 16, !dbg !102
  %4 = add i64 %gcov_ctr5, 1, !dbg !102
  store i64 %4, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 2), align 16, !dbg !102
  %5 = load i32, ptr @sched_tgid_ref, align 4, !dbg !102
  %dec2 = add i32 %5, -1, !dbg !102
  store i32 %dec2, ptr @sched_tgid_ref, align 4, !dbg !102
  br label %sw.epilogthread-pre-split, !dbg !103

sw.epilogthread-pre-split:                        ; preds = %sw.bb1, %entry.sw.epilogthread-pre-split_crit_edge
  %.pr = load i32, ptr @sched_cmdline_ref, align 4, !dbg !104
  br label %sw.epilog, !dbg !104

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %sw.bb
  %6 = phi i32 [ %.pr, %sw.epilogthread-pre-split ], [ %dec, %sw.bb ], !dbg !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6), !dbg !104
  %tobool.not = icmp eq i32 %6, 0, !dbg !104
  br i1 %tobool.not, label %land.lhs.true, label %sw.epilog.if.end_crit_edge, !dbg !105

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8, !dbg !105
  br label %if.end, !dbg !105

land.lhs.true:                                    ; preds = %sw.epilog
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 3), align 8, !dbg !106
  %7 = add i64 %gcov_ctr6, 1, !dbg !106
  store i64 %7, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 3), align 8, !dbg !106
  %8 = load i32, ptr @sched_tgid_ref, align 4, !dbg !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8), !dbg !106
  %tobool3.not = icmp eq i32 %8, 0, !dbg !106
  br i1 %tobool3.not, label %if.then, label %land.lhs.true.if.end_crit_edge, !dbg !107

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8, !dbg !107
  br label %if.end, !dbg !107

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8, !dbg !108
  %gcov_ctr7 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 4), align 16, !dbg !108
  %9 = add i64 %gcov_ctr7, 1, !dbg !108
  store i64 %9, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 4), align 16, !dbg !108
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.25, align 8, !dbg !109
  %10 = add i64 %gcov_ctr.i, 1, !dbg !109
  store i64 %10, ptr @__llvm_gcov_ctr.25, align 8, !dbg !109
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.26, align 8
  %11 = add i64 %gcov_ctr.i.i, 1
  store i64 %11, ptr @__llvm_gcov_ctr.26, align 8
  %call.i.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_switch, ptr noundef nonnull @probe_sched_switch, ptr noundef null) #9, !dbg !112
  %gcov_ctr.i3.i = load i64, ptr @__llvm_gcov_ctr.22, align 8
  %12 = add i64 %gcov_ctr.i3.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.22, align 8
  %call.i4.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_wakeup_new, ptr noundef nonnull @probe_sched_wakeup, ptr noundef null) #9, !dbg !115
  %gcov_ctr.i5.i = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %13 = add i64 %gcov_ctr.i5.i, 1
  store i64 %13, ptr @__llvm_gcov_ctr.23, align 8
  %call.i6.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_wakeup, ptr noundef nonnull @probe_sched_wakeup, ptr noundef null) #9, !dbg !117
  br label %if.end, !dbg !108

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @sched_register_mutex) #9, !dbg !119
  ret void, !dbg !120
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tracing_start_tgid_record() local_unnamed_addr #0 align 64 !dbg !121 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !122
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.14, align 8, !dbg !123
  %0 = add i64 %gcov_ctr, 1, !dbg !123
  store i64 %0, ptr @__llvm_gcov_ctr.14, align 8, !dbg !123
  tail call fastcc void @tracing_start_sched_switch(i32 noundef 2), !dbg !123
  ret void, !dbg !124
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tracing_stop_tgid_record() local_unnamed_addr #0 align 64 !dbg !125 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !126
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.15, align 8, !dbg !127
  %0 = add i64 %gcov_ctr, 1, !dbg !127
  store i64 %0, ptr @__llvm_gcov_ctr.15, align 8, !dbg !127
  tail call fastcc void @tracing_stop_sched_switch(i32 noundef 2), !dbg !127
  ret void, !dbg !128
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @probe_sched_wakeup(ptr nocapture noundef readnone %ignore, ptr nocapture noundef readnone %wakee) #0 align 64 !dbg !129 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !130
  %0 = load i32, ptr @sched_tgid_ref, align 4, !dbg !131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0), !dbg !132
  %tobool.not = icmp eq i32 %0, 0, !dbg !132
  %mul = select i1 %tobool.not, i32 0, i32 2, !dbg !133
  %1 = load i32, ptr @sched_cmdline_ref, align 4, !dbg !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1), !dbg !135
  %tobool2 = icmp ne i32 %1, 0, !dbg !135
  %lnot.ext6 = zext i1 %tobool2 to i32, !dbg !136
  %add = or i32 %mul, %lnot.ext6, !dbg !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add), !dbg !138
  %tobool8.not = icmp eq i32 %add, 0, !dbg !138
  br i1 %tobool8.not, label %if.then, label %if.end, !dbg !139

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !140
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.18, align 16
  %2 = add i64 %gcov_ctr, 1
  store i64 %2, ptr @__llvm_gcov_ctr.18, align 16
  br label %cleanup, !dbg !141

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !142
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !142
  %3 = add i64 %gcov_ctr9, 1, !dbg !142
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !142
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.24, align 8, !dbg !143
  %4 = add i64 %gcov_ctr.i, 1, !dbg !143
  store i64 %4, ptr @__llvm_gcov_ctr.24, align 8, !dbg !143
  %5 = tail call i32 @llvm.read_register.i32(metadata !24) #9, !dbg !143
  %and.i = and i32 %5, -16384, !dbg !147
  %6 = inttoptr i32 %and.i to ptr, !dbg !148
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2, !dbg !142
  %7 = ptrtoint ptr %task to i32, !dbg !142
  call void @__asan_load4_noabort(i32 %7), !dbg !142
  %8 = load ptr, ptr %task, align 8, !dbg !142
  tail call void @tracing_record_taskinfo(ptr noundef %8, i32 noundef %add) #9, !dbg !149
  br label %cleanup, !dbg !150

cleanup:                                          ; preds = %if.end, %if.then
  ret void, !dbg !150
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @probe_sched_switch(ptr nocapture noundef readnone %ignore, i1 noundef zeroext %preempt, ptr noundef %prev, ptr noundef %next) #0 align 64 !dbg !151 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !152
  %0 = load i32, ptr @sched_tgid_ref, align 4, !dbg !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0), !dbg !154
  %tobool.not = icmp eq i32 %0, 0, !dbg !154
  %mul = select i1 %tobool.not, i32 0, i32 2, !dbg !155
  %1 = load i32, ptr @sched_cmdline_ref, align 4, !dbg !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1), !dbg !157
  %tobool2 = icmp ne i32 %1, 0, !dbg !157
  %lnot.ext6 = zext i1 %tobool2 to i32, !dbg !158
  %add = or i32 %mul, %lnot.ext6, !dbg !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add), !dbg !160
  %tobool8.not = icmp eq i32 %add, 0, !dbg !160
  br i1 %tobool8.not, label %if.then, label %if.end, !dbg !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !162
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.21, align 16
  %2 = add i64 %gcov_ctr, 1
  store i64 %2, ptr @__llvm_gcov_ctr.21, align 16
  br label %cleanup, !dbg !163

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !164
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 1), align 8, !dbg !164
  %3 = add i64 %gcov_ctr9, 1, !dbg !164
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 1), align 8, !dbg !164
  tail call void @tracing_record_taskinfo_sched_switch(ptr noundef %prev, ptr noundef %next, i32 noundef %add) #9, !dbg !165
  br label %cleanup, !dbg !166

cleanup:                                          ; preds = %if.end, %if.then
  ret void, !dbg !166
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracepoint_probe_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_record_taskinfo(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_record_taskinfo_sched_switch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracepoint_probe_unregister(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #4 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 -276218240) #9
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #9
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #9
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 17
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #8
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @llvm_gcda_summary_info() #9
  tail call void @llvm_gcda_end_file() #9
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #5 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  store i64 0, ptr @__llvm_gcov_ctr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.11, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.12, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.13, i8 0, i64 40, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.14, align 8
  store i64 0, ptr @__llvm_gcov_ctr.15, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.16, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.17, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.18, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.19, align 8
  store i64 0, ptr @__llvm_gcov_ctr.20, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.21, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.22, align 8
  store i64 0, ptr @__llvm_gcov_ctr.23, align 8
  store i64 0, ptr @__llvm_gcov_ctr.24, align 8
  store i64 0, ptr @__llvm_gcov_ctr.25, align 8
  store i64 0, ptr @__llvm_gcov_ctr.26, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #4 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #9
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { noinline nounwind uwtable(sync) }
attributes #5 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind uwtable(sync) }
attributes #8 = { nomerge }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !5, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23}
!llvm.named.register.sp = !{!24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.gcov = !{!33}
!llvm.ident = !{!34}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_sched_switch.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/trace/trace_sched_switch.c", i32 21, i32 8}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @sched_register_mutex, !3, !"sched_register_mutex", i1 false, i1 false}
!6 = !{ptr @sched_cmdline_ref, !7, !"sched_cmdline_ref", i1 false, i1 false}
!7 = !{!"../kernel/trace/trace_sched_switch.c", i32 19, i32 13}
!8 = !{ptr @sched_tgid_ref, !9, !"sched_tgid_ref", i1 false, i1 false}
!9 = !{!"../kernel/trace/trace_sched_switch.c", i32 20, i32 13}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/trace/trace_sched_switch.c", i32 56, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @tracing_sched_register._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @tracing_sched_register._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/trace/trace_sched_switch.c", i32 63, i32 3}
!18 = !{ptr @tracing_sched_register._entry.5, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @tracing_sched_register._entry_ptr.7, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/trace/trace_sched_switch.c", i32 70, i32 3}
!22 = !{ptr @tracing_sched_register._entry.8, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @tracing_sched_register._entry_ptr.10, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{!"sp"}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_sched_switch.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_sched_switch.gcda", !0}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = distinct !DISubprogram(name: "tracing_start_cmdline_record", scope: !1, file: !1, line: 131, type: !36, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!36 = !DISubroutineType(types: !37)
!37 = !{}
!38 = !DILocation(line: 132, scope: !35)
!39 = !DILocation(line: 133, column: 2, scope: !35)
!40 = !DILocation(line: 134, column: 1, scope: !35)
!41 = distinct !DISubprogram(name: "tracing_start_sched_switch", scope: !1, file: !1, line: 90, type: !36, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!42 = !DILocation(line: 91, scope: !41)
!43 = !DILocation(line: 94, column: 2, scope: !41)
!44 = !DILocation(line: 95, column: 21, scope: !41)
!45 = !DILocation(line: 95, column: 39, scope: !41)
!46 = !DILocation(line: 95, column: 43, scope: !41)
!47 = !DILocation(line: 95, column: 42, scope: !41)
!48 = !DILocation(line: 0, scope: !41)
!49 = !DILocation(line: 97, column: 2, scope: !41)
!50 = !DILocation(line: 99, column: 20, scope: !41)
!51 = !DILocation(line: 100, column: 3, scope: !41)
!52 = !DILocation(line: 103, column: 17, scope: !41)
!53 = !DILocation(line: 104, column: 3, scope: !41)
!54 = !DILocation(line: 107, column: 21, scope: !41)
!55 = !DILocation(line: 107, column: 25, scope: !41)
!56 = !DILocation(line: 107, column: 43, scope: !41)
!57 = !DILocation(line: 107, column: 46, scope: !41)
!58 = !DILocation(line: 107, column: 6, scope: !41)
!59 = !DILocation(line: 108, column: 3, scope: !41)
!60 = !DILocation(line: 178, column: 1, scope: !61, inlinedAt: !63)
!61 = distinct !DISubprogram(name: "register_trace_sched_wakeup", scope: !62, file: !62, line: 178, type: !36, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!62 = !DIFile(filename: "../include/trace/events/sched.h", directory: "/llk/linux-5.17/build_arm_allyes")
!63 = distinct !DILocation(line: 54, column: 8, scope: !64, inlinedAt: !65)
!64 = distinct !DISubprogram(name: "tracing_sched_register", scope: !1, file: !1, line: 50, type: !36, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!65 = distinct !DILocation(line: 108, column: 3, scope: !41)
!66 = !DILocation(line: 55, column: 6, scope: !64, inlinedAt: !65)
!67 = !DILocation(line: 56, column: 3, scope: !64, inlinedAt: !65)
!68 = !DILocation(line: 58, column: 3, scope: !64, inlinedAt: !65)
!69 = !DILocation(line: 185, column: 1, scope: !70, inlinedAt: !71)
!70 = distinct !DISubprogram(name: "register_trace_sched_wakeup_new", scope: !62, file: !62, line: 185, type: !36, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!71 = distinct !DILocation(line: 61, column: 8, scope: !64, inlinedAt: !65)
!72 = !DILocation(line: 62, column: 6, scope: !64, inlinedAt: !65)
!73 = !DILocation(line: 63, column: 3, scope: !64, inlinedAt: !65)
!74 = !DILocation(line: 65, column: 3, scope: !64, inlinedAt: !65)
!75 = !DILocation(line: 220, column: 1, scope: !76, inlinedAt: !77)
!76 = distinct !DISubprogram(name: "register_trace_sched_switch", scope: !62, file: !62, line: 220, type: !36, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!77 = distinct !DILocation(line: 68, column: 8, scope: !64, inlinedAt: !65)
!78 = !DILocation(line: 69, column: 6, scope: !64, inlinedAt: !65)
!79 = !DILocation(line: 70, column: 3, scope: !64, inlinedAt: !65)
!80 = !DILocation(line: 185, column: 1, scope: !81, inlinedAt: !82)
!81 = distinct !DISubprogram(name: "unregister_trace_sched_wakeup_new", scope: !62, file: !62, line: 185, type: !36, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!82 = distinct !DILocation(line: 77, column: 2, scope: !64, inlinedAt: !65)
!83 = !DILocation(line: 77, column: 2, scope: !64, inlinedAt: !65)
!84 = !DILocation(line: 75, column: 9, scope: !64, inlinedAt: !65)
!85 = !DILocation(line: 75, column: 2, scope: !64, inlinedAt: !65)
!86 = !DILocation(line: 178, column: 1, scope: !87, inlinedAt: !88)
!87 = distinct !DISubprogram(name: "unregister_trace_sched_wakeup", scope: !62, file: !62, line: 178, type: !36, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!88 = distinct !DILocation(line: 79, column: 2, scope: !64, inlinedAt: !65)
!89 = !DILocation(line: 80, column: 2, scope: !64, inlinedAt: !65)
!90 = !DILocation(line: 109, column: 2, scope: !41)
!91 = !DILocation(line: 110, column: 1, scope: !41)
!92 = distinct !DISubprogram(name: "tracing_stop_cmdline_record", scope: !1, file: !1, line: 136, type: !36, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!93 = !DILocation(line: 137, scope: !92)
!94 = !DILocation(line: 138, column: 2, scope: !92)
!95 = !DILocation(line: 139, column: 1, scope: !92)
!96 = distinct !DISubprogram(name: "tracing_stop_sched_switch", scope: !1, file: !1, line: 112, type: !36, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!97 = !DILocation(line: 113, scope: !96)
!98 = !DILocation(line: 114, column: 2, scope: !96)
!99 = !DILocation(line: 116, column: 2, scope: !96)
!100 = !DILocation(line: 118, column: 20, scope: !96)
!101 = !DILocation(line: 119, column: 3, scope: !96)
!102 = !DILocation(line: 122, column: 17, scope: !96)
!103 = !DILocation(line: 123, column: 3, scope: !96)
!104 = !DILocation(line: 126, column: 7, scope: !96)
!105 = !DILocation(line: 126, column: 25, scope: !96)
!106 = !DILocation(line: 126, column: 29, scope: !96)
!107 = !DILocation(line: 126, column: 6, scope: !96)
!108 = !DILocation(line: 127, column: 3, scope: !96)
!109 = !DILocation(line: 85, column: 2, scope: !110, inlinedAt: !111)
!110 = distinct !DISubprogram(name: "tracing_sched_unregister", scope: !1, file: !1, line: 83, type: !36, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!111 = distinct !DILocation(line: 127, column: 3, scope: !96)
!112 = !DILocation(line: 220, column: 1, scope: !113, inlinedAt: !114)
!113 = distinct !DISubprogram(name: "unregister_trace_sched_switch", scope: !62, file: !62, line: 220, type: !36, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!114 = distinct !DILocation(line: 85, column: 2, scope: !110, inlinedAt: !111)
!115 = !DILocation(line: 185, column: 1, scope: !81, inlinedAt: !116)
!116 = distinct !DILocation(line: 86, column: 2, scope: !110, inlinedAt: !111)
!117 = !DILocation(line: 178, column: 1, scope: !87, inlinedAt: !118)
!118 = distinct !DILocation(line: 87, column: 2, scope: !110, inlinedAt: !111)
!119 = !DILocation(line: 128, column: 2, scope: !96)
!120 = !DILocation(line: 129, column: 1, scope: !96)
!121 = distinct !DISubprogram(name: "tracing_start_tgid_record", scope: !1, file: !1, line: 141, type: !36, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!122 = !DILocation(line: 142, scope: !121)
!123 = !DILocation(line: 143, column: 2, scope: !121)
!124 = !DILocation(line: 144, column: 1, scope: !121)
!125 = distinct !DISubprogram(name: "tracing_stop_tgid_record", scope: !1, file: !1, line: 146, type: !36, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!126 = !DILocation(line: 147, scope: !125)
!127 = !DILocation(line: 148, column: 2, scope: !125)
!128 = !DILocation(line: 149, column: 1, scope: !125)
!129 = distinct !DISubprogram(name: "probe_sched_wakeup", scope: !1, file: !1, line: 38, type: !36, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!130 = !DILocation(line: 39, scope: !129)
!131 = !DILocation(line: 42, column: 27, scope: !129)
!132 = !DILocation(line: 42, column: 26, scope: !129)
!133 = !DILocation(line: 42, column: 23, scope: !129)
!134 = !DILocation(line: 43, column: 23, scope: !129)
!135 = !DILocation(line: 43, column: 22, scope: !129)
!136 = !DILocation(line: 43, column: 21, scope: !129)
!137 = !DILocation(line: 42, column: 43, scope: !129)
!138 = !DILocation(line: 45, column: 7, scope: !129)
!139 = !DILocation(line: 45, column: 6, scope: !129)
!140 = !DILocation(line: 0, scope: !129)
!141 = !DILocation(line: 46, column: 3, scope: !129)
!142 = !DILocation(line: 47, column: 26, scope: !129)
!143 = !DILocation(line: 104, column: 4, scope: !144, inlinedAt: !146)
!144 = distinct !DISubprogram(name: "current_thread_info", scope: !145, file: !145, line: 101, type: !36, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!145 = !DIFile(filename: "../arch/arm/include/asm/thread_info.h", directory: "/llk/linux-5.17/build_arm_allyes")
!146 = distinct !DILocation(line: 47, column: 26, scope: !129)
!147 = !DILocation(line: 104, column: 26, scope: !144, inlinedAt: !146)
!148 = !DILocation(line: 103, column: 9, scope: !144, inlinedAt: !146)
!149 = !DILocation(line: 47, column: 2, scope: !129)
!150 = !DILocation(line: 48, column: 1, scope: !129)
!151 = distinct !DISubprogram(name: "probe_sched_switch", scope: !1, file: !1, line: 24, type: !36, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!152 = !DILocation(line: 26, scope: !151)
!153 = !DILocation(line: 29, column: 27, scope: !151)
!154 = !DILocation(line: 29, column: 26, scope: !151)
!155 = !DILocation(line: 29, column: 23, scope: !151)
!156 = !DILocation(line: 30, column: 23, scope: !151)
!157 = !DILocation(line: 30, column: 22, scope: !151)
!158 = !DILocation(line: 30, column: 21, scope: !151)
!159 = !DILocation(line: 29, column: 43, scope: !151)
!160 = !DILocation(line: 32, column: 7, scope: !151)
!161 = !DILocation(line: 32, column: 6, scope: !151)
!162 = !DILocation(line: 0, scope: !151)
!163 = !DILocation(line: 33, column: 3, scope: !151)
!164 = !DILocation(line: 34, column: 39, scope: !151)
!165 = !DILocation(line: 34, column: 2, scope: !151)
!166 = !DILocation(line: 35, column: 1, scope: !151)
