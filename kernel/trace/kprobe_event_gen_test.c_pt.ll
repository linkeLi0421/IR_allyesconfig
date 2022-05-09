; ModuleID = '/llk/IR_all_yes/kernel/trace/kprobe_event_gen_test.c_pt.bc'
source_filename = "../kernel/trace/kprobe_event_gen_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dynevent_cmd = type { %struct.seq_buf, ptr, i32, i32, ptr, ptr }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@gen_kprobe_test = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kprobes\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gen_kprobe_test\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"kernel/trace/kprobe_event_gen_test.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gen_kretprobe_test\00", [45 x i8] zeroinitializer }, align 32
@gen_kretprobe_test = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_kprobe_event_gen_test__253_220_kprobe_event_gen_test_init6 = internal global ptr @kprobe_event_gen_test_init, section ".initcall6.init", align 4
@__exitcall_kprobe_event_gen_test_exit = internal global ptr @kprobe_event_gen_test_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author254 = internal constant [41 x i8] c"kprobe_event_gen_test.author=Tom Zanussi\00", section ".modinfo", align 1
@__UNIQUE_ID_description255 = internal constant [63 x i8] c"kprobe_event_gen_test.description=kprobe event generation test\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [62 x i8] c"kprobe_event_gen_test.file=kernel/trace/kprobe_event_gen_test\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [37 x i8] c"kprobe_event_gen_test.license=GPL v2\00", section ".modinfo", align 1
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_sys_open\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dfd=%ax\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"filename=%dx\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"flags=%cx\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mode=+4($stack)\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"$retval\00", [24 x i8] zeroinitializer }, align 32
@__llvm_gcov_ctr = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.10 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.11 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.12 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.13 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.14 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.15 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.16 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.17 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [27 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.22 = internal global [2 x i64] zeroinitializer
@0 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/kprobe_event_gen_test.gcda\00", [55 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [14 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 -1161835239, i32 -443400812 }, %emit_function_args_ty { i32 1, i32 908383581, i32 -443400812 }, %emit_function_args_ty { i32 2, i32 277029420, i32 -443400812 }, %emit_function_args_ty { i32 3, i32 928520401, i32 -443400812 }, %emit_function_args_ty { i32 4, i32 436087400, i32 -443400812 }, %emit_function_args_ty { i32 5, i32 -10115036, i32 -443400812 }, %emit_function_args_ty { i32 6, i32 1781672997, i32 -443400812 }, %emit_function_args_ty { i32 7, i32 -400554785, i32 -443400812 }, %emit_function_args_ty { i32 8, i32 -1782918348, i32 -443400812 }, %emit_function_args_ty { i32 9, i32 795548855, i32 -443400812 }, %emit_function_args_ty { i32 10, i32 727036892, i32 -443400812 }, %emit_function_args_ty { i32 11, i32 1841983822, i32 -443400812 }, %emit_function_args_ty { i32 12, i32 1624494247, i32 -443400812 }, %emit_function_args_ty { i32 13, i32 -963894156, i32 -443400812 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [14 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.10 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.11 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.12 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.13 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.14 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.15 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.16 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.17 }, %emit_arcs_args_ty { i32 27, ptr @__llvm_gcov_ctr.18 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.19 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.20 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.21 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.22 }]
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"gen_kprobe_test\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 35, i32 33 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 198, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 209, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"gen_kretprobe_test\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 36, i32 33 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 60, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 68, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [40 x i8] c"../kernel/trace/kprobe_event_gen_test.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 130, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__exitcall_kprobe_event_gen_test_exit, ptr @__initcall__kmod_kprobe_event_gen_test__253_220_kprobe_event_gen_test_init6, ptr @kprobe_event_gen_test_exit, ptr @gen_kprobe_test, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @gen_kretprobe_test, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@1 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen_kprobe_test to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen_kretprobe_test to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kprobe_event_gen_test_exit() #0 section ".exit.text" align 64 !dbg !42 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !45
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr, align 16
  %1 = load ptr, ptr @gen_kprobe_test, align 4, !dbg !46
  %tr = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 4, !dbg !46
  %2 = ptrtoint ptr %tr to i32, !dbg !46
  call void @__asan_load4_noabort(i32 %2), !dbg !46
  %3 = load ptr, ptr %tr, align 4, !dbg !46
  %call = tail call i32 @trace_array_set_clr_event(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i1 noundef zeroext false) #9, !dbg !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !46
  %tobool.not = icmp eq i32 %call, 0, !dbg !46
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !dbg !46, !prof !47

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !46
  br label %if.end, !dbg !46

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !46
  %gcov_ctr117 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !46
  %4 = add i64 %gcov_ctr117, 1, !dbg !46
  store i64 %4, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !46
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 200, i32 noundef 9, ptr noundef null) #9, !dbg !46
  br label %if.end, !dbg !46

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = load ptr, ptr @gen_kprobe_test, align 4, !dbg !48
  tail call void @trace_put_event_file(ptr noundef %5) #9, !dbg !49
  %call21 = tail call i32 @kprobe_event_delete(ptr noundef nonnull @.str.1) #9, !dbg !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21), !dbg !50
  %tobool22.not = icmp eq i32 %call21, 0, !dbg !50
  br i1 %tobool22.not, label %if.end.if.end44_crit_edge, label %if.then34, !dbg !50, !prof !47

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8, !dbg !50
  br label %if.end44, !dbg !50

if.then34:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8, !dbg !50
  %gcov_ctr118 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !50
  %6 = add i64 %gcov_ctr118, 1, !dbg !50
  store i64 %6, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !50
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 206, i32 noundef 9, ptr noundef null) #9, !dbg !50
  br label %if.end44, !dbg !50

if.end44:                                         ; preds = %if.then34, %if.end.if.end44_crit_edge
  %7 = load ptr, ptr @gen_kprobe_test, align 4, !dbg !51
  %tr53 = getelementptr inbounds %struct.trace_event_file, ptr %7, i32 0, i32 4, !dbg !51
  %8 = ptrtoint ptr %tr53 to i32, !dbg !51
  call void @__asan_load4_noabort(i32 %8), !dbg !51
  %9 = load ptr, ptr %tr53, align 4, !dbg !51
  %call54 = tail call i32 @trace_array_set_clr_event(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i1 noundef zeroext false) #9, !dbg !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54), !dbg !51
  %tobool55.not = icmp eq i32 %call54, 0, !dbg !51
  br i1 %tobool55.not, label %if.end44.if.end77_crit_edge, label %if.then67, !dbg !51, !prof !47

if.end44.if.end77_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8, !dbg !51
  br label %if.end77, !dbg !51

if.then67:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8, !dbg !51
  %gcov_ctr119 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !51
  %10 = add i64 %gcov_ctr119, 1, !dbg !51
  store i64 %10, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !51
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 211, i32 noundef 9, ptr noundef null) #9, !dbg !51
  br label %if.end77, !dbg !51

if.end77:                                         ; preds = %if.then67, %if.end44.if.end77_crit_edge
  %11 = load ptr, ptr @gen_kretprobe_test, align 4, !dbg !52
  tail call void @trace_put_event_file(ptr noundef %11) #9, !dbg !53
  %call86 = tail call i32 @kprobe_event_delete(ptr noundef nonnull @.str.3) #9, !dbg !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86), !dbg !54
  %tobool87.not = icmp eq i32 %call86, 0, !dbg !54
  br i1 %tobool87.not, label %if.end77.if.end109_crit_edge, label %if.then99, !dbg !54, !prof !47

if.end77.if.end109_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8, !dbg !54
  br label %if.end109, !dbg !54

if.then99:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8, !dbg !54
  %gcov_ctr120 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 4), align 16, !dbg !54
  %12 = add i64 %gcov_ctr120, 1, !dbg !54
  store i64 %12, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 4), align 16, !dbg !54
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 217, i32 noundef 9, ptr noundef null) #9, !dbg !54
  br label %if.end109, !dbg !54

if.end109:                                        ; preds = %if.then99, %if.end77.if.end109_crit_edge
  ret void, !dbg !55
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_array_set_clr_event(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_put_event_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kprobe_event_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kprobe_event_gen_test_init() #0 section ".init.text" align 64 !dbg !56 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !57
  %call = tail call fastcc i32 @test_gen_kprobe_cmd() #10, !dbg !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !59
  %tobool.not = icmp eq i32 %call, 0, !dbg !59
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !dbg !59

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !59
  br label %cleanup, !dbg !59

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @test_gen_kretprobe_cmd() #10, !dbg !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1), !dbg !61
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !61
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3, !dbg !61

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8, !dbg !61
  br label %cleanup, !dbg !61

if.then3:                                         ; preds = %if.end
  %0 = load ptr, ptr @gen_kretprobe_test, align 4, !dbg !62
  %tr = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 4, !dbg !62
  %1 = ptrtoint ptr %tr to i32, !dbg !62
  call void @__asan_load4_noabort(i32 %1), !dbg !62
  %2 = load ptr, ptr %tr, align 4, !dbg !62
  %call4 = tail call i32 @trace_array_set_clr_event(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i1 noundef zeroext false) #9, !dbg !62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4), !dbg !62
  %tobool5.not = icmp eq i32 %call4, 0, !dbg !62
  br i1 %tobool5.not, label %if.then3.if.end20_crit_edge, label %if.then13, !dbg !62, !prof !47

if.then3.if.end20_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8, !dbg !62
  br label %if.end20, !dbg !62

if.then13:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8, !dbg !62
  %gcov_ctr60 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 1), align 8, !dbg !62
  %3 = add i64 %gcov_ctr60, 1, !dbg !62
  store i64 %3, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 1), align 8, !dbg !62
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 187, i32 noundef 9, ptr noundef null) #9, !dbg !62
  br label %if.end20, !dbg !62

if.end20:                                         ; preds = %if.then13, %if.then3.if.end20_crit_edge
  %4 = load ptr, ptr @gen_kretprobe_test, align 4, !dbg !63
  tail call void @trace_put_event_file(ptr noundef %4) #9, !dbg !64
  %call28 = tail call i32 @kprobe_event_delete(ptr noundef nonnull @.str.3) #9, !dbg !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28), !dbg !65
  %tobool29.not = icmp eq i32 %call28, 0, !dbg !65
  br i1 %tobool29.not, label %if.end20.if.end51_crit_edge, label %if.then41, !dbg !65, !prof !47

if.end20.if.end51_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8, !dbg !65
  br label %if.end51, !dbg !65

if.then41:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8, !dbg !65
  %gcov_ctr61 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 2), align 16, !dbg !65
  %5 = add i64 %gcov_ctr61, 1, !dbg !65
  store i64 %5, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 2), align 16, !dbg !65
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 189, i32 noundef 9, ptr noundef null) #9, !dbg !65
  br label %if.end51, !dbg !65

if.end51:                                         ; preds = %if.then41, %if.end20.if.end51_crit_edge
  %gcov_ctr62 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 3), align 8, !dbg !65
  %6 = add i64 %gcov_ctr62, 1, !dbg !65
  store i64 %6, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 3), align 8, !dbg !65
  br label %cleanup, !dbg !66

cleanup:                                          ; preds = %if.end51, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink = phi ptr [ @__llvm_gcov_ctr.10, %entry.cleanup_crit_edge ], [ getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 4), %if.end51 ], [ getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 4), %if.end.cleanup_crit_edge ]
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end51 ], [ %call1, %if.end.cleanup_crit_edge ], !dbg !67
  %7 = ptrtoint ptr %.sink to i32, !dbg !67
  call void @__asan_load8_noabort(i32 %7), !dbg !67
  %gcov_ctr63 = load i64, ptr %.sink, align 16, !dbg !67
  %8 = add i64 %gcov_ctr63, 1, !dbg !67
  store i64 %8, ptr %.sink, align 16, !dbg !67
  ret i32 %retval.0, !dbg !68
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_gen_kprobe_cmd() unnamed_addr #0 section ".init.text" align 64 !dbg !69 {
entry:
  %cmd = alloca %struct.dynevent_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #8, !dbg !70
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #9, !dbg !71
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 48), !dbg !72
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.13, align 8
  %gcov_ctr88.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 10), align 16, !dbg !73
  %2 = add i64 %gcov_ctr88.i.i.i, 1, !dbg !73
  store i64 %2, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 10), align 16, !dbg !73
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 2), align 16, !dbg !81
  %3 = add i64 %gcov_ctr11.i.i, 1, !dbg !81
  store i64 %3, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 2), align 16, !dbg !81
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.19, align 16, !dbg !82
  %4 = add i64 %gcov_ctr.i.i.i, 1, !dbg !82
  store i64 %4, ptr @__llvm_gcov_ctr.19, align 16, !dbg !82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32)), !dbg !85
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4, !dbg !85
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 2048) #11, !dbg !86
  %tobool.not = icmp eq ptr %call7.i.i, null, !dbg !87
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !89
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.11, align 16, !dbg !89
  %6 = add i64 %gcov_ctr, 1, !dbg !89
  store i64 %6, ptr @__llvm_gcov_ctr.11, align 16, !dbg !89
  br label %cleanup, !dbg !89

if.end:                                           ; preds = %entry
  call void @kprobe_event_cmd_init(ptr noundef nonnull %cmd, ptr noundef nonnull %call7.i.i, i32 noundef 2048) #9, !dbg !90
  %call1 = call i32 (ptr, i1, ptr, ptr, ...) @__kprobe_event_gen_cmd_start(ptr noundef nonnull %cmd, i1 noundef zeroext false, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null) #9, !dbg !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1), !dbg !92
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !92
  br i1 %tobool2.not, label %if.end4, label %if.then3, !dbg !92

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8, !dbg !93
  %gcov_ctr25 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 1), align 8, !dbg !93
  %7 = add i64 %gcov_ctr25, 1, !dbg !93
  store i64 %7, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 1), align 8, !dbg !93
  br label %free, !dbg !93

if.end4:                                          ; preds = %if.end
  %call5 = call i32 (ptr, ...) @__kprobe_event_add_fields(ptr noundef nonnull %cmd, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef null) #9, !dbg !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5), !dbg !95
  %tobool6.not = icmp eq i32 %call5, 0, !dbg !95
  br i1 %tobool6.not, label %if.end8, label %if.then7, !dbg !95

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8, !dbg !96
  %gcov_ctr26 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 2), align 16, !dbg !96
  %8 = add i64 %gcov_ctr26, 1, !dbg !96
  store i64 %8, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 2), align 16, !dbg !96
  br label %free, !dbg !96

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @dynevent_create(ptr noundef nonnull %cmd) #9, !dbg !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9), !dbg !98
  %tobool10.not = icmp eq i32 %call9, 0, !dbg !98
  br i1 %tobool10.not, label %if.end12, label %if.then11, !dbg !98

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8, !dbg !99
  %gcov_ctr27 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 3), align 8, !dbg !99
  %9 = add i64 %gcov_ctr27, 1, !dbg !99
  store i64 %9, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 3), align 8, !dbg !99
  br label %free, !dbg !99

if.end12:                                         ; preds = %if.end8
  %call13 = call ptr @trace_get_event_file(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9, !dbg !100
  store ptr %call13, ptr @gen_kprobe_test, align 4, !dbg !101
  %gcov_ctr.i37 = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %10 = add i64 %gcov_ctr.i37, 1
  store i64 %10, ptr @__llvm_gcov_ctr.14, align 8
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr), !dbg !102
  br i1 %cmp.i, label %if.then15, label %if.end17, !dbg !106

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8, !dbg !107
  %gcov_ctr28 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 4), align 16, !dbg !107
  %11 = add i64 %gcov_ctr28, 1, !dbg !107
  store i64 %11, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 4), align 16, !dbg !107
  %gcov_ctr.i38 = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %12 = add i64 %gcov_ctr.i38, 1
  store i64 %12, ptr @__llvm_gcov_ctr.15, align 8
  br label %delete, !dbg !108

if.end17:                                         ; preds = %if.end12
  %tr = getelementptr inbounds %struct.trace_event_file, ptr %call13, i32 0, i32 4, !dbg !109
  %13 = ptrtoint ptr %tr to i32, !dbg !109
  call void @__asan_load4_noabort(i32 %13), !dbg !109
  %14 = load ptr, ptr %tr, align 4, !dbg !109
  %call18 = call i32 @trace_array_set_clr_event(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i1 noundef zeroext true) #9, !dbg !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18), !dbg !111
  %tobool19.not = icmp eq i32 %call18, 0, !dbg !111
  br i1 %tobool19.not, label %if.end21, label %if.then20, !dbg !111

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8, !dbg !112
  %gcov_ctr29 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 5), align 8, !dbg !112
  %15 = add i64 %gcov_ctr29, 1, !dbg !112
  store i64 %15, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 5), align 8, !dbg !112
  %16 = load ptr, ptr @gen_kprobe_test, align 4, !dbg !112
  call void @trace_put_event_file(ptr noundef %16) #9, !dbg !113
  br label %delete, !dbg !114

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8, !dbg !111
  %gcov_ctr30 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 6), align 16, !dbg !111
  %17 = add i64 %gcov_ctr30, 1, !dbg !111
  store i64 %17, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 6), align 16, !dbg !111
  br label %cleanup, !dbg !111

delete:                                           ; preds = %if.then20, %if.then15
  %call22 = call i32 @kprobe_event_delete(ptr noundef nonnull @.str.1) #9, !dbg !115
  br label %free, !dbg !116

free:                                             ; preds = %delete, %if.then11, %if.then7, %if.then3
  %ret.1 = phi i32 [ %call1, %if.then3 ], [ %call5, %if.then7 ], [ %call9, %if.then11 ], [ %call22, %delete ], !dbg !117
  call void @kfree(ptr noundef nonnull %call7.i.i) #9, !dbg !118
  br label %cleanup, !dbg !119

cleanup:                                          ; preds = %free, %if.end21, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ %ret.1, %free ], [ 0, %if.end21 ], !dbg !117
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #9, !dbg !120
  ret i32 %retval.0, !dbg !120
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_gen_kretprobe_cmd() unnamed_addr #0 section ".init.text" align 64 !dbg !121 {
entry:
  %cmd = alloca %struct.dynevent_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #8, !dbg !122
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #9, !dbg !123
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 48), !dbg !124
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.13, align 8
  %gcov_ctr88.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 10), align 16, !dbg !125
  %2 = add i64 %gcov_ctr88.i.i.i, 1, !dbg !125
  store i64 %2, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 10), align 16, !dbg !125
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 2), align 16, !dbg !129
  %3 = add i64 %gcov_ctr11.i.i, 1, !dbg !129
  store i64 %3, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 2), align 16, !dbg !129
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.19, align 16, !dbg !130
  %4 = add i64 %gcov_ctr.i.i.i, 1, !dbg !130
  store i64 %4, ptr @__llvm_gcov_ctr.19, align 16, !dbg !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32)), !dbg !132
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4, !dbg !132
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 2048) #11, !dbg !133
  %tobool.not = icmp eq ptr %call7.i.i, null, !dbg !134
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !135

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !136
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.12, align 16, !dbg !136
  %6 = add i64 %gcov_ctr, 1, !dbg !136
  store i64 %6, ptr @__llvm_gcov_ctr.12, align 16, !dbg !136
  br label %cleanup, !dbg !136

if.end:                                           ; preds = %entry
  call void @kprobe_event_cmd_init(ptr noundef nonnull %cmd, ptr noundef nonnull %call7.i.i, i32 noundef 2048) #9, !dbg !137
  %call1 = call i32 (ptr, i1, ptr, ptr, ...) @__kprobe_event_gen_cmd_start(ptr noundef nonnull %cmd, i1 noundef zeroext true, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, ptr noundef null) #9, !dbg !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1), !dbg !139
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !139
  br i1 %tobool2.not, label %if.end4, label %if.then3, !dbg !139

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8, !dbg !140
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 1), align 8, !dbg !140
  %7 = add i64 %gcov_ctr21, 1, !dbg !140
  store i64 %7, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 1), align 8, !dbg !140
  br label %free, !dbg !140

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @dynevent_create(ptr noundef nonnull %cmd) #9, !dbg !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5), !dbg !142
  %tobool6.not = icmp eq i32 %call5, 0, !dbg !142
  br i1 %tobool6.not, label %if.end8, label %if.then7, !dbg !142

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8, !dbg !143
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 2), align 16, !dbg !143
  %8 = add i64 %gcov_ctr22, 1, !dbg !143
  store i64 %8, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 2), align 16, !dbg !143
  br label %free, !dbg !143

if.end8:                                          ; preds = %if.end4
  %call9 = call ptr @trace_get_event_file(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #9, !dbg !144
  store ptr %call9, ptr @gen_kretprobe_test, align 4, !dbg !145
  %gcov_ctr.i31 = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %9 = add i64 %gcov_ctr.i31, 1
  store i64 %9, ptr @__llvm_gcov_ctr.14, align 8
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr), !dbg !146
  br i1 %cmp.i, label %if.then11, label %if.end13, !dbg !148

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8, !dbg !149
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 3), align 8, !dbg !149
  %10 = add i64 %gcov_ctr23, 1, !dbg !149
  store i64 %10, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 3), align 8, !dbg !149
  %gcov_ctr.i32 = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %11 = add i64 %gcov_ctr.i32, 1
  store i64 %11, ptr @__llvm_gcov_ctr.15, align 8
  br label %delete, !dbg !150

if.end13:                                         ; preds = %if.end8
  %tr = getelementptr inbounds %struct.trace_event_file, ptr %call9, i32 0, i32 4, !dbg !151
  %12 = ptrtoint ptr %tr to i32, !dbg !151
  call void @__asan_load4_noabort(i32 %12), !dbg !151
  %13 = load ptr, ptr %tr, align 4, !dbg !151
  %call14 = call i32 @trace_array_set_clr_event(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i1 noundef zeroext true) #9, !dbg !152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14), !dbg !153
  %tobool15.not = icmp eq i32 %call14, 0, !dbg !153
  br i1 %tobool15.not, label %if.end17, label %if.then16, !dbg !153

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8, !dbg !154
  %gcov_ctr25 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 5), align 8, !dbg !154
  %14 = add i64 %gcov_ctr25, 1, !dbg !154
  store i64 %14, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 5), align 8, !dbg !154
  %15 = load ptr, ptr @gen_kretprobe_test, align 4, !dbg !154
  call void @trace_put_event_file(ptr noundef %15) #9, !dbg !155
  br label %delete, !dbg !156

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8, !dbg !153
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 4), align 16, !dbg !153
  %16 = add i64 %gcov_ctr24, 1, !dbg !153
  store i64 %16, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 4), align 16, !dbg !153
  br label %cleanup, !dbg !153

delete:                                           ; preds = %if.then16, %if.then11
  %call18 = call i32 @kprobe_event_delete(ptr noundef nonnull @.str.3) #9, !dbg !157
  br label %free, !dbg !158

free:                                             ; preds = %delete, %if.then7, %if.then3
  %ret.1 = phi i32 [ %call1, %if.then3 ], [ %call5, %if.then7 ], [ %call18, %delete ], !dbg !159
  call void @kfree(ptr noundef nonnull %call7.i.i) #9, !dbg !160
  br label %cleanup, !dbg !161

cleanup:                                          ; preds = %free, %if.end17, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ %ret.1, %free ], [ 0, %if.end17 ], !dbg !159
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #9, !dbg !162
  ret i32 %retval.0, !dbg !162
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kprobe_event_cmd_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kprobe_event_gen_cmd_start(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kprobe_event_add_fields(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dynevent_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_get_event_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #4 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 -443400812) #9
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
  %exitcond.not = icmp eq i32 %5, 14
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.10, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.11, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.12, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.13, align 8
  store i64 0, ptr @__llvm_gcov_ctr.14, align 8
  store i64 0, ptr @__llvm_gcov_ctr.15, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.16, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.17, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @__llvm_gcov_ctr.18, i8 0, i64 216, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.19, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.20, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.21, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.22, i8 0, i64 16, i1 false)
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

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline nounwind uwtable(sync) }
attributes #5 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind uwtable(sync) }
attributes #8 = { nomerge }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { nounwind allocsize(2) }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !27, !29, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.gcov = !{!40}
!llvm.ident = !{!41}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/kprobe_event_gen_test.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/trace/kprobe_event_gen_test.c", i32 198, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/trace/kprobe_event_gen_test.c", i32 209, i32 2}
!8 = !{ptr @__initcall__kmod_kprobe_event_gen_test__253_220_kprobe_event_gen_test_init6, !9, !"__initcall__kmod_kprobe_event_gen_test__253_220_kprobe_event_gen_test_init6", i1 false, i1 false}
!9 = !{!"../kernel/trace/kprobe_event_gen_test.c", i32 220, i32 1}
!10 = !{ptr @__exitcall_kprobe_event_gen_test_exit, !11, !"__exitcall_kprobe_event_gen_test_exit", i1 false, i1 false}
!11 = !{!"../kernel/trace/kprobe_event_gen_test.c", i32 221, i32 1}
!12 = !{ptr @__UNIQUE_ID_author254, !13, !"__UNIQUE_ID_author254", i1 false, i1 false}
!13 = !{!"../kernel/trace/kprobe_event_gen_test.c", i32 223, i32 1}
!14 = !{ptr @__UNIQUE_ID_description255, !15, !"__UNIQUE_ID_description255", i1 false, i1 false}
!15 = !{!"../kernel/trace/kprobe_event_gen_test.c", i32 224, i32 1}
!16 = !{ptr @__UNIQUE_ID_file256, !17, !"__UNIQUE_ID_file256", i1 false, i1 false}
!17 = !{!"../kernel/trace/kprobe_event_gen_test.c", i32 225, i32 1}
!18 = !{ptr @__UNIQUE_ID_license257, !17, !"__UNIQUE_ID_license257", i1 false, i1 false}
!19 = !{ptr @gen_kprobe_test, !20, !"gen_kprobe_test", i1 false, i1 false}
!20 = !{!"../kernel/trace/kprobe_event_gen_test.c", i32 35, i32 33}
!21 = !{ptr @gen_kretprobe_test, !22, !"gen_kretprobe_test", i1 false, i1 false}
!22 = !{!"../kernel/trace/kprobe_event_gen_test.c", i32 36, i32 33}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../kernel/trace/kprobe_event_gen_test.c", i32 60, i32 8}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/trace/kprobe_event_gen_test.c", i32 68, i32 8}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/trace/kprobe_event_gen_test.c", i32 130, i32 8}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/kprobe_event_gen_test.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/kprobe_event_gen_test.gcda", !0}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = distinct !DISubprogram(name: "kprobe_event_gen_test_exit", scope: !1, file: !1, line: 195, type: !43, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!43 = !DISubroutineType(types: !44)
!44 = !{}
!45 = !DILocation(line: 196, scope: !42)
!46 = !DILocation(line: 198, column: 2, scope: !42)
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !DILocation(line: 203, column: 23, scope: !42)
!49 = !DILocation(line: 203, column: 2, scope: !42)
!50 = !DILocation(line: 206, column: 2, scope: !42)
!51 = !DILocation(line: 209, column: 2, scope: !42)
!52 = !DILocation(line: 214, column: 23, scope: !42)
!53 = !DILocation(line: 214, column: 2, scope: !42)
!54 = !DILocation(line: 217, column: 2, scope: !42)
!55 = !DILocation(line: 218, column: 1, scope: !42)
!56 = distinct !DISubprogram(name: "kprobe_event_gen_test_init", scope: !1, file: !1, line: 175, type: !43, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!57 = !DILocation(line: 176, scope: !56)
!58 = !DILocation(line: 179, column: 8, scope: !56)
!59 = !DILocation(line: 180, column: 6, scope: !56)
!60 = !DILocation(line: 183, column: 8, scope: !56)
!61 = !DILocation(line: 184, column: 6, scope: !56)
!62 = !DILocation(line: 185, column: 3, scope: !56)
!63 = !DILocation(line: 188, column: 24, scope: !56)
!64 = !DILocation(line: 188, column: 3, scope: !56)
!65 = !DILocation(line: 189, column: 3, scope: !56)
!66 = !DILocation(line: 190, column: 2, scope: !56)
!67 = !DILocation(line: 0, scope: !56)
!68 = !DILocation(line: 193, column: 1, scope: !56)
!69 = distinct !DISubprogram(name: "test_gen_kprobe_cmd", scope: !1, file: !1, line: 42, type: !43, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!70 = !DILocation(line: 43, scope: !69)
!71 = !DILocation(line: 44, column: 2, scope: !69)
!72 = !DILocation(line: 44, column: 22, scope: !69)
!73 = !DILocation(line: 390, column: 26, scope: !74, inlinedAt: !76)
!74 = distinct !DISubprogram(name: "__kmalloc_index", scope: !75, file: !75, line: 369, type: !43, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!75 = !DIFile(filename: "../include/linux/slab.h", directory: "/llk/linux-5.17/build_arm_allyes")
!76 = distinct !DILocation(line: 576, column: 11, scope: !77, inlinedAt: !78)
!77 = distinct !DISubprogram(name: "kmalloc", scope: !75, file: !75, line: 567, type: !43, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!78 = distinct !DILocation(line: 714, column: 9, scope: !79, inlinedAt: !80)
!79 = distinct !DISubprogram(name: "kzalloc", scope: !75, file: !75, line: 712, type: !43, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!80 = distinct !DILocation(line: 49, column: 8, scope: !69)
!81 = !DILocation(line: 582, column: 33, scope: !77, inlinedAt: !78)
!82 = !DILocation(line: 339, column: 3, scope: !83, inlinedAt: !84)
!83 = distinct !DISubprogram(name: "kmalloc_type", scope: !75, file: !75, line: 332, type: !43, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!84 = distinct !DILocation(line: 582, column: 20, scope: !77, inlinedAt: !78)
!85 = !DILocation(line: 582, column: 5, scope: !77, inlinedAt: !78)
!86 = !DILocation(line: 581, column: 10, scope: !77, inlinedAt: !78)
!87 = !DILocation(line: 50, column: 7, scope: !69)
!88 = !DILocation(line: 50, column: 6, scope: !69)
!89 = !DILocation(line: 51, column: 3, scope: !69)
!90 = !DILocation(line: 54, column: 2, scope: !69)
!91 = !DILocation(line: 60, column: 8, scope: !69)
!92 = !DILocation(line: 63, column: 6, scope: !69)
!93 = !DILocation(line: 64, column: 3, scope: !69)
!94 = !DILocation(line: 68, column: 8, scope: !69)
!95 = !DILocation(line: 69, column: 6, scope: !69)
!96 = !DILocation(line: 70, column: 3, scope: !69)
!97 = !DILocation(line: 75, column: 8, scope: !69)
!98 = !DILocation(line: 76, column: 6, scope: !69)
!99 = !DILocation(line: 77, column: 3, scope: !69)
!100 = !DILocation(line: 85, column: 20, scope: !69)
!101 = !DILocation(line: 85, column: 18, scope: !69)
!102 = !DILocation(line: 36, column: 9, scope: !103, inlinedAt: !105)
!103 = distinct !DISubprogram(name: "IS_ERR", scope: !104, file: !104, line: 34, type: !43, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!104 = !DIFile(filename: "../include/linux/err.h", directory: "/llk/linux-5.17/build_arm_allyes")
!105 = distinct !DILocation(line: 87, column: 6, scope: !69)
!106 = !DILocation(line: 87, column: 6, scope: !69)
!107 = !DILocation(line: 88, column: 17, scope: !69)
!108 = !DILocation(line: 89, column: 3, scope: !69)
!109 = !DILocation(line: 93, column: 51, scope: !69)
!110 = !DILocation(line: 93, column: 8, scope: !69)
!111 = !DILocation(line: 95, column: 6, scope: !69)
!112 = !DILocation(line: 96, column: 24, scope: !69)
!113 = !DILocation(line: 96, column: 3, scope: !69)
!114 = !DILocation(line: 97, column: 3, scope: !69)
!115 = !DILocation(line: 103, column: 8, scope: !69)
!116 = !DILocation(line: 103, column: 2, scope: !69)
!117 = !DILocation(line: 0, scope: !69)
!118 = !DILocation(line: 105, column: 2, scope: !69)
!119 = !DILocation(line: 107, column: 2, scope: !69)
!120 = !DILocation(line: 108, column: 1, scope: !69)
!121 = distinct !DISubprogram(name: "test_gen_kretprobe_cmd", scope: !1, file: !1, line: 113, type: !43, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!122 = !DILocation(line: 114, scope: !121)
!123 = !DILocation(line: 115, column: 2, scope: !121)
!124 = !DILocation(line: 115, column: 22, scope: !121)
!125 = !DILocation(line: 390, column: 26, scope: !74, inlinedAt: !126)
!126 = distinct !DILocation(line: 576, column: 11, scope: !77, inlinedAt: !127)
!127 = distinct !DILocation(line: 714, column: 9, scope: !79, inlinedAt: !128)
!128 = distinct !DILocation(line: 120, column: 8, scope: !121)
!129 = !DILocation(line: 582, column: 33, scope: !77, inlinedAt: !127)
!130 = !DILocation(line: 339, column: 3, scope: !83, inlinedAt: !131)
!131 = distinct !DILocation(line: 582, column: 20, scope: !77, inlinedAt: !127)
!132 = !DILocation(line: 582, column: 5, scope: !77, inlinedAt: !127)
!133 = !DILocation(line: 581, column: 10, scope: !77, inlinedAt: !127)
!134 = !DILocation(line: 121, column: 7, scope: !121)
!135 = !DILocation(line: 121, column: 6, scope: !121)
!136 = !DILocation(line: 122, column: 3, scope: !121)
!137 = !DILocation(line: 125, column: 2, scope: !121)
!138 = !DILocation(line: 130, column: 8, scope: !121)
!139 = !DILocation(line: 133, column: 6, scope: !121)
!140 = !DILocation(line: 134, column: 3, scope: !121)
!141 = !DILocation(line: 139, column: 8, scope: !121)
!142 = !DILocation(line: 140, column: 6, scope: !121)
!143 = !DILocation(line: 141, column: 3, scope: !121)
!144 = !DILocation(line: 150, column: 23, scope: !121)
!145 = !DILocation(line: 150, column: 21, scope: !121)
!146 = !DILocation(line: 36, column: 9, scope: !103, inlinedAt: !147)
!147 = distinct !DILocation(line: 152, column: 6, scope: !121)
!148 = !DILocation(line: 152, column: 6, scope: !121)
!149 = !DILocation(line: 153, column: 17, scope: !121)
!150 = !DILocation(line: 154, column: 3, scope: !121)
!151 = !DILocation(line: 158, column: 54, scope: !121)
!152 = !DILocation(line: 158, column: 8, scope: !121)
!153 = !DILocation(line: 160, column: 6, scope: !121)
!154 = !DILocation(line: 161, column: 24, scope: !121)
!155 = !DILocation(line: 161, column: 3, scope: !121)
!156 = !DILocation(line: 162, column: 3, scope: !121)
!157 = !DILocation(line: 168, column: 8, scope: !121)
!158 = !DILocation(line: 168, column: 2, scope: !121)
!159 = !DILocation(line: 0, scope: !121)
!160 = !DILocation(line: 170, column: 2, scope: !121)
!161 = !DILocation(line: 172, column: 2, scope: !121)
!162 = !DILocation(line: 173, column: 1, scope: !121)
