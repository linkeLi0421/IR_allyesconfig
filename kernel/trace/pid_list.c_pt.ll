; ModuleID = '/llk/IR_all_yes/kernel/trace/pid_list.c_pt.bc'
source_filename = "../kernel/trace/pid_list.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.trace_pid_list = type { %struct.raw_spinlock, %struct.irq_work, [256 x ptr], ptr, ptr, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.rcuwait = type { ptr }

@trace_pid_list_alloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pid_max = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kernel/trace/pid_list.c\00", [40 x i8] zeroinitializer }, align 32
@trace_pid_list_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pid_list->lock\00", [16 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@get_upper_chunk.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@get_lower_chunk.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__llvm_gcov_ctr = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.2 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.3 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.4 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.5 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.6 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.7 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.8 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.9 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.10 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.11 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.12 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.13 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.14 = internal global [11 x i64] zeroinitializer
@__llvm_gcov_ctr.15 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.16 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.17 = internal global [13 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.22 = internal global [27 x i64] zeroinitializer
@__llvm_gcov_ctr.23 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.24 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.25 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.26 = internal global [2 x i64] zeroinitializer
@0 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/pid_list.gcda\00", [36 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [26 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 1485278116, i32 54042573 }, %emit_function_args_ty { i32 1, i32 1603942481, i32 54042573 }, %emit_function_args_ty { i32 2, i32 491662117, i32 54042573 }, %emit_function_args_ty { i32 3, i32 1360772449, i32 54042573 }, %emit_function_args_ty { i32 4, i32 1779826020, i32 54042573 }, %emit_function_args_ty { i32 5, i32 2113985319, i32 54042573 }, %emit_function_args_ty { i32 6, i32 -247109292, i32 54042573 }, %emit_function_args_ty { i32 7, i32 -2105453641, i32 54042573 }, %emit_function_args_ty { i32 8, i32 1050250599, i32 54042573 }, %emit_function_args_ty { i32 9, i32 -727335730, i32 54042573 }, %emit_function_args_ty { i32 10, i32 -1364063671, i32 54042573 }, %emit_function_args_ty { i32 11, i32 1004595098, i32 54042573 }, %emit_function_args_ty { i32 12, i32 -1721905878, i32 54042573 }, %emit_function_args_ty { i32 13, i32 -1945774720, i32 54042573 }, %emit_function_args_ty { i32 14, i32 436087400, i32 54042573 }, %emit_function_args_ty { i32 15, i32 1090954909, i32 54042573 }, %emit_function_args_ty { i32 16, i32 -1919474464, i32 54042573 }, %emit_function_args_ty { i32 17, i32 -1621143369, i32 54042573 }, %emit_function_args_ty { i32 18, i32 -1520414420, i32 54042573 }, %emit_function_args_ty { i32 19, i32 -400554785, i32 54042573 }, %emit_function_args_ty { i32 20, i32 -1782918348, i32 54042573 }, %emit_function_args_ty { i32 21, i32 795548855, i32 54042573 }, %emit_function_args_ty { i32 22, i32 727036892, i32 54042573 }, %emit_function_args_ty { i32 23, i32 1841983822, i32 54042573 }, %emit_function_args_ty { i32 24, i32 1624494247, i32 54042573 }, %emit_function_args_ty { i32 25, i32 -963894156, i32 54042573 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [26 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.2 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.3 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.4 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.5 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.6 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.7 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.8 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.9 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.10 }, %emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr.11 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.12 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.13 }, %emit_arcs_args_ty { i32 11, ptr @__llvm_gcov_ctr.14 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.15 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.16 }, %emit_arcs_args_ty { i32 13, ptr @__llvm_gcov_ctr.17 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.18 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.19 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.20 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.21 }, %emit_arcs_args_ty { i32 27, ptr @__llvm_gcov_ctr.22 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.23 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.24 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.25 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.26 }]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 417, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [27 x i8] c"../kernel/trace/pid_list.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 425, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @trace_pid_list_alloc.__key, ptr @.str.1], section "llvm.metadata"
@1 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_pid_list_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @trace_pid_list_is_set(ptr noundef %pid_list, i32 noundef %pid) local_unnamed_addr #0 align 64 !dbg !22 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !25
  %tobool.not = icmp eq ptr %pid_list, null, !dbg !26
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !27

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !28
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 16, !dbg !28
  %0 = add i64 %gcov_ctr, 1, !dbg !28
  store i64 %0, ptr @__llvm_gcov_ctr, align 16, !dbg !28
  br label %cleanup, !dbg !28

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %pid), !dbg !29
  %cmp.i = icmp ugt i32 %pid, 1073741823, !dbg !29
  br i1 %cmp.i, label %if.then1, label %do.body, !dbg !29, !prof !32

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8, !dbg !33
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.2, i32 0, i32 1), align 8, !dbg !33
  %1 = add i64 %gcov_ctr5.i, 1, !dbg !33
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.2, i32 0, i32 1), align 8, !dbg !33
  %gcov_ctr30 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !34
  %2 = add i64 %gcov_ctr30, 1, !dbg !34
  store i64 %2, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !34
  br label %cleanup, !dbg !34

do.body:                                          ; preds = %if.end
  %gcov_ctr.i40 = load i64, ptr @__llvm_gcov_ctr.2, align 8, !dbg !35
  %3 = add i64 %gcov_ctr.i40, 1, !dbg !35
  store i64 %3, ptr @__llvm_gcov_ctr.2, align 8, !dbg !35
  %shr.i41 = lshr i32 %pid, 22, !dbg !36
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %pid_list) #9, !dbg !37
  %arrayidx = getelementptr %struct.trace_pid_list, ptr %pid_list, i32 0, i32 2, i32 %shr.i41, !dbg !38
  %4 = ptrtoint ptr %arrayidx to i32, !dbg !38
  call void @__asan_load4_noabort(i32 %4), !dbg !38
  %5 = load ptr, ptr %arrayidx, align 4, !dbg !38
  %tobool5.not = icmp eq ptr %5, null, !dbg !39
  br i1 %tobool5.not, label %do.body.do.body14_crit_edge, label %if.then6, !dbg !39

do.body.do.body14_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8, !dbg !39
  br label %do.body14, !dbg !39

if.then6:                                         ; preds = %do.body
  %shr2.i = lshr i32 %pid, 14, !dbg !40
  %and3.i = and i32 %shr2.i, 255, !dbg !41
  %arrayidx7 = getelementptr [256 x ptr], ptr %5, i32 0, i32 %and3.i, !dbg !42
  %6 = ptrtoint ptr %arrayidx7 to i32, !dbg !42
  call void @__asan_load4_noabort(i32 %6), !dbg !42
  %7 = load ptr, ptr %arrayidx7, align 4, !dbg !42
  %tobool8.not = icmp eq ptr %7, null, !dbg !43
  br i1 %tobool8.not, label %if.then6.if.end12_crit_edge, label %if.then9, !dbg !43

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8, !dbg !43
  br label %if.end12, !dbg !43

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8, !dbg !44
  %gcov_ctr31 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !44
  %8 = add i64 %gcov_ctr31, 1, !dbg !44
  store i64 %8, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !44
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.3, align 8
  %9 = add i64 %gcov_ctr.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.3, align 8
  %and4.i = lshr i32 %pid, 5, !dbg !45
  %div3.i = and i32 %and4.i, 511, !dbg !45
  %arrayidx.i = getelementptr i32, ptr %7, i32 %div3.i, !dbg !49
  %10 = ptrtoint ptr %arrayidx.i to i32, !dbg !49
  call void @__asan_load4_noabort(i32 %10), !dbg !49
  %11 = load volatile i32, ptr %arrayidx.i, align 4, !dbg !49
  %and.i = and i32 %pid, 31, !dbg !50
  %12 = shl nuw i32 1, %and.i, !dbg !51
  %13 = and i32 %11, %12, !dbg !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13), !dbg !51
  %tobool11 = icmp ne i32 %13, 0, !dbg !51
  br label %if.end12, !dbg !52

if.end12:                                         ; preds = %if.then9, %if.then6.if.end12_crit_edge
  %ret.0 = phi i1 [ %tobool11, %if.then9 ], [ false, %if.then6.if.end12_crit_edge ]
  %gcov_ctr32 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !53
  %14 = add i64 %gcov_ctr32, 1, !dbg !53
  store i64 %14, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !53
  br label %do.body14, !dbg !53

do.body14:                                        ; preds = %if.end12, %do.body.do.body14_crit_edge
  %ret.1.off0 = phi i1 [ %ret.0, %if.end12 ], [ false, %do.body.do.body14_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %pid_list, i32 noundef %call4) #9, !dbg !54
  %gcov_ctr33 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 4), align 16, !dbg !55
  %15 = add i64 %gcov_ctr33, 1, !dbg !55
  store i64 %15, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 4), align 16, !dbg !55
  br label %cleanup, !dbg !56

cleanup:                                          ; preds = %do.body14, %if.then1, %if.then
  %retval.0 = phi i1 [ false, %if.then1 ], [ %ret.1.off0, %do.body14 ], [ false, %if.then ], !dbg !57
  ret i1 %retval.0, !dbg !58
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trace_pid_list_set(ptr noundef %pid_list, i32 noundef %pid) local_unnamed_addr #0 align 64 !dbg !59 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !60
  %tobool.not = icmp eq ptr %pid_list, null, !dbg !61
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !62

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !63
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.4, align 16, !dbg !63
  %0 = add i64 %gcov_ctr, 1, !dbg !63
  store i64 %0, ptr @__llvm_gcov_ctr.4, align 16, !dbg !63
  br label %cleanup, !dbg !63

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %pid), !dbg !64
  %cmp.i = icmp ugt i32 %pid, 1073741823, !dbg !64
  br i1 %cmp.i, label %if.then1, label %do.body, !dbg !64, !prof !32

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8, !dbg !66
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.2, i32 0, i32 1), align 8, !dbg !66
  %1 = add i64 %gcov_ctr5.i, 1, !dbg !66
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.2, i32 0, i32 1), align 8, !dbg !66
  %gcov_ctr38 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.4, i32 0, i32 1), align 8, !dbg !67
  %2 = add i64 %gcov_ctr38, 1, !dbg !67
  store i64 %2, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.4, i32 0, i32 1), align 8, !dbg !67
  br label %cleanup, !dbg !67

do.body:                                          ; preds = %if.end
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.2, align 8, !dbg !68
  %3 = add i64 %gcov_ctr.i, 1, !dbg !68
  store i64 %3, ptr @__llvm_gcov_ctr.2, align 8, !dbg !68
  %shr.i = lshr i32 %pid, 22, !dbg !69
  %shr2.i = lshr i32 %pid, 14, !dbg !70
  %and3.i = and i32 %shr2.i, 255, !dbg !71
  %and4.i = and i32 %pid, 16383, !dbg !72
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %pid_list) #9, !dbg !73
  %arrayidx = getelementptr %struct.trace_pid_list, ptr %pid_list, i32 0, i32 2, i32 %shr.i, !dbg !74
  %4 = ptrtoint ptr %arrayidx to i32, !dbg !74
  call void @__asan_load4_noabort(i32 %4), !dbg !74
  %5 = load ptr, ptr %arrayidx, align 4, !dbg !74
  %tobool5.not = icmp eq ptr %5, null, !dbg !75
  br i1 %tobool5.not, label %if.then6, label %do.body.if.end13_crit_edge, !dbg !76

do.body.if.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8, !dbg !76
  br label %if.end13, !dbg !76

if.then6:                                         ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32)), !dbg !77
  %6 = load i32, ptr @debug_locks, align 4, !dbg !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6), !dbg !77
  %tobool.not.i = icmp eq i32 %6, 0, !dbg !77
  br i1 %tobool.not.i, label %if.then6.if.end.i59_crit_edge, label %land.rhs.i, !dbg !77

if.then6.if.end.i59_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8, !dbg !77
  br label %if.end.i59, !dbg !77

land.rhs.i:                                       ; preds = %if.then6
  %gcov_ctr.i58 = load i64, ptr @__llvm_gcov_ctr.5, align 16, !dbg !77
  %7 = add i64 %gcov_ctr.i58, 1, !dbg !77
  store i64 %7, ptr @__llvm_gcov_ctr.5, align 16, !dbg !77
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %pid_list, i32 0, i32 4, !dbg !77
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %8 = add i64 %gcov_ctr.i.i, 1
  store i64 %8, ptr @__llvm_gcov_ctr.19, align 8
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9, !dbg !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i), !dbg !77
  %cmp.not.i = icmp eq i32 %call.i.i, 0, !dbg !77
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i59_crit_edge, !dbg !77, !prof !32

land.rhs.i.if.end.i59_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8, !dbg !77
  br label %if.end.i59, !dbg !77

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8, !dbg !77
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 9, ptr noundef null) #9, !dbg !77
  %gcov_ctr87.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 1), align 8, !dbg !77
  %9 = add i64 %gcov_ctr87.i, 1, !dbg !77
  store i64 %9, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 1), align 8, !dbg !77
  br label %if.end.i59, !dbg !77

if.end.i59:                                       ; preds = %do.end.i, %land.rhs.i.if.end.i59_crit_edge, %if.then6.if.end.i59_crit_edge
  %upper_list.i = getelementptr inbounds %struct.trace_pid_list, ptr %pid_list, i32 0, i32 3, !dbg !84
  %10 = ptrtoint ptr %upper_list.i to i32, !dbg !84
  call void @__asan_load4_noabort(i32 %10), !dbg !84
  %11 = load ptr, ptr %upper_list.i, align 4, !dbg !84
  %tobool24.not.i = icmp eq ptr %11, null, !dbg !85
  br i1 %tobool24.not.i, label %if.then9, label %if.end26.i, !dbg !86

if.end26.i:                                       ; preds = %if.end.i59
  %12 = ptrtoint ptr %11 to i32, !dbg !87
  call void @__asan_load4_noabort(i32 %12), !dbg !87
  %13 = load ptr, ptr %11, align 4, !dbg !87
  %14 = ptrtoint ptr %upper_list.i to i32, !dbg !88
  call void @__asan_store4_noabort(i32 %14), !dbg !88
  store ptr %13, ptr %upper_list.i, align 4, !dbg !88
  %free_upper_chunks.i = getelementptr inbounds %struct.trace_pid_list, ptr %pid_list, i32 0, i32 5, !dbg !89
  %15 = ptrtoint ptr %free_upper_chunks.i to i32, !dbg !90
  call void @__asan_load4_noabort(i32 %15), !dbg !90
  %16 = load i32, ptr %free_upper_chunks.i, align 4, !dbg !90
  %dec.i = add i32 %16, -1, !dbg !90
  store i32 %dec.i, ptr %free_upper_chunks.i, align 4, !dbg !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i), !dbg !91
  %cmp30.i = icmp slt i32 %dec.i, 0, !dbg !91
  br i1 %cmp30.i, label %land.rhs36.i, label %if.end26.i.if.end74.i_crit_edge, !dbg !91

if.end26.i.if.end74.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8, !dbg !91
  br label %if.end74.i, !dbg !91

land.rhs36.i:                                     ; preds = %if.end26.i
  %gcov_ctr89.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 3), align 8, !dbg !91
  %17 = add i64 %gcov_ctr89.i, 1, !dbg !91
  store i64 %17, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 3), align 8, !dbg !91
  %.b106.i = load i1, ptr @get_upper_chunk.__already_done, align 1, !dbg !91
  br i1 %.b106.i, label %land.rhs36.i.if.end74.i_crit_edge, label %if.then47.i, !dbg !91, !prof !92

land.rhs36.i.if.end74.i_crit_edge:                ; preds = %land.rhs36.i
  call void @__sanitizer_cov_trace_pc() #8, !dbg !91
  br label %if.end74.i, !dbg !91

if.then47.i:                                      ; preds = %land.rhs36.i
  call void @__sanitizer_cov_trace_pc() #8, !dbg !91
  store i1 true, ptr @get_upper_chunk.__already_done, align 1, !dbg !91
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef null) #9, !dbg !91
  %gcov_ctr90.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 4), align 16, !dbg !91
  %18 = add i64 %gcov_ctr90.i, 1, !dbg !91
  store i64 %18, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 4), align 16, !dbg !91
  %gcov_ctr91.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 5), align 8, !dbg !91
  %19 = add i64 %gcov_ctr91.i, 1, !dbg !91
  store i64 %19, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 5), align 8, !dbg !91
  br label %if.end74.i, !dbg !91

if.end74.i:                                       ; preds = %if.then47.i, %land.rhs36.i.if.end74.i_crit_edge, %if.end26.i.if.end74.i_crit_edge
  %20 = ptrtoint ptr %11 to i32, !dbg !93
  call void @__asan_store4_noabort(i32 %20), !dbg !93
  store ptr null, ptr %11, align 4, !dbg !93
  %21 = ptrtoint ptr %free_upper_chunks.i to i32, !dbg !94
  call void @__asan_load4_noabort(i32 %21), !dbg !94
  %22 = load i32, ptr %free_upper_chunks.i, align 4, !dbg !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22), !dbg !95
  %cmp83.i = icmp slt i32 %22, 3, !dbg !95
  br i1 %cmp83.i, label %if.then84.i, label %if.end74.i.if.end10_crit_edge, !dbg !96

if.end74.i.if.end10_crit_edge:                    ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #8, !dbg !96
  br label %if.end10, !dbg !96

if.then84.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #8, !dbg !97
  %gcov_ctr92.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 6), align 16, !dbg !97
  %23 = add i64 %gcov_ctr92.i, 1, !dbg !97
  store i64 %23, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 6), align 16, !dbg !97
  %refill_irqwork.i = getelementptr inbounds %struct.trace_pid_list, ptr %pid_list, i32 0, i32 1, !dbg !98
  %call85.i = tail call zeroext i1 @irq_work_queue(ptr noundef %refill_irqwork.i) #9, !dbg !99
  br label %if.end10, !dbg !99

if.then9:                                         ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #8, !dbg !100
  %gcov_ctr88.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 2), align 16, !dbg !100
  %24 = add i64 %gcov_ctr88.i, 1, !dbg !100
  store i64 %24, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 2), align 16, !dbg !100
  %gcov_ctr39 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.4, i32 0, i32 2), align 16, !dbg !101
  %25 = add i64 %gcov_ctr39, 1, !dbg !101
  store i64 %25, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.4, i32 0, i32 2), align 16, !dbg !101
  br label %do.body23, !dbg !102

if.end10:                                         ; preds = %if.then84.i, %if.end74.i.if.end10_crit_edge
  %gcov_ctr93.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 7), align 8, !dbg !103
  %26 = add i64 %gcov_ctr93.i, 1, !dbg !103
  store i64 %26, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.5, i32 0, i32 7), align 8, !dbg !103
  %gcov_ctr40 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.4, i32 0, i32 3), align 8, !dbg !104
  %27 = add i64 %gcov_ctr40, 1, !dbg !104
  store i64 %27, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.4, i32 0, i32 3), align 8, !dbg !104
  %28 = ptrtoint ptr %arrayidx to i32, !dbg !105
  call void @__asan_store4_noabort(i32 %28), !dbg !105
  store ptr %11, ptr %arrayidx, align 4, !dbg !105
  br label %if.end13, !dbg !106

if.end13:                                         ; preds = %if.end10, %do.body.if.end13_crit_edge
  %upper_chunk.0 = phi ptr [ %5, %do.body.if.end13_crit_edge ], [ %11, %if.end10 ], !dbg !107
  %arrayidx14 = getelementptr [256 x ptr], ptr %upper_chunk.0, i32 0, i32 %and3.i, !dbg !108
  %29 = ptrtoint ptr %arrayidx14 to i32, !dbg !108
  call void @__asan_load4_noabort(i32 %29), !dbg !108
  %30 = load ptr, ptr %arrayidx14, align 4, !dbg !108
  %tobool15.not = icmp eq ptr %30, null, !dbg !109
  br i1 %tobool15.not, label %if.then16, label %if.end13.if.end22_crit_edge, !dbg !110

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8, !dbg !110
  br label %if.end22, !dbg !110

if.then16:                                        ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32)), !dbg !111
  %31 = load i32, ptr @debug_locks, align 4, !dbg !111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31), !dbg !111
  %tobool.not.i60 = icmp eq i32 %31, 0, !dbg !111
  br i1 %tobool.not.i60, label %if.then16.if.end.i70_crit_edge, label %land.rhs.i66, !dbg !111

if.then16.if.end.i70_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8, !dbg !111
  br label %if.end.i70, !dbg !111

land.rhs.i66:                                     ; preds = %if.then16
  %gcov_ctr.i61 = load i64, ptr @__llvm_gcov_ctr.6, align 16, !dbg !111
  %32 = add i64 %gcov_ctr.i61, 1, !dbg !111
  store i64 %32, ptr @__llvm_gcov_ctr.6, align 16, !dbg !111
  %dep_map.i62 = getelementptr inbounds %struct.raw_spinlock, ptr %pid_list, i32 0, i32 4, !dbg !111
  %gcov_ctr.i.i63 = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %33 = add i64 %gcov_ctr.i.i63, 1
  store i64 %33, ptr @__llvm_gcov_ctr.19, align 8
  %call.i.i64 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i62, i32 noundef -1) #9, !dbg !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i64), !dbg !111
  %cmp.not.i65 = icmp eq i32 %call.i.i64, 0, !dbg !111
  br i1 %cmp.not.i65, label %do.end.i68, label %land.rhs.i66.if.end.i70_crit_edge, !dbg !111, !prof !32

land.rhs.i66.if.end.i70_crit_edge:                ; preds = %land.rhs.i66
  call void @__sanitizer_cov_trace_pc() #8, !dbg !111
  br label %if.end.i70, !dbg !111

do.end.i68:                                       ; preds = %land.rhs.i66
  call void @__sanitizer_cov_trace_pc() #8, !dbg !111
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 16, i32 noundef 9, ptr noundef null) #9, !dbg !111
  %gcov_ctr87.i67 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 1), align 8, !dbg !111
  %34 = add i64 %gcov_ctr87.i67, 1, !dbg !111
  store i64 %34, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 1), align 8, !dbg !111
  br label %if.end.i70, !dbg !111

if.end.i70:                                       ; preds = %do.end.i68, %land.rhs.i66.if.end.i70_crit_edge, %if.then16.if.end.i70_crit_edge
  %lower_list.i = getelementptr inbounds %struct.trace_pid_list, ptr %pid_list, i32 0, i32 4, !dbg !116
  %35 = ptrtoint ptr %lower_list.i to i32, !dbg !116
  call void @__asan_load4_noabort(i32 %35), !dbg !116
  %36 = load ptr, ptr %lower_list.i, align 4, !dbg !116
  %tobool24.not.i69 = icmp eq ptr %36, null, !dbg !117
  br i1 %tobool24.not.i69, label %if.then19, label %if.end26.i75, !dbg !118

if.end26.i75:                                     ; preds = %if.end.i70
  %37 = ptrtoint ptr %36 to i32, !dbg !119
  call void @__asan_load4_noabort(i32 %37), !dbg !119
  %38 = load ptr, ptr %36, align 4, !dbg !119
  %39 = ptrtoint ptr %lower_list.i to i32, !dbg !120
  call void @__asan_store4_noabort(i32 %39), !dbg !120
  store ptr %38, ptr %lower_list.i, align 4, !dbg !120
  %free_lower_chunks.i = getelementptr inbounds %struct.trace_pid_list, ptr %pid_list, i32 0, i32 6, !dbg !121
  %40 = ptrtoint ptr %free_lower_chunks.i to i32, !dbg !122
  call void @__asan_load4_noabort(i32 %40), !dbg !122
  %41 = load i32, ptr %free_lower_chunks.i, align 4, !dbg !122
  %dec.i73 = add i32 %41, -1, !dbg !122
  store i32 %dec.i73, ptr %free_lower_chunks.i, align 4, !dbg !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i73), !dbg !123
  %cmp30.i74 = icmp slt i32 %dec.i73, 0, !dbg !123
  br i1 %cmp30.i74, label %land.rhs36.i78, label %if.end26.i75.if.end74.i83_crit_edge, !dbg !123

if.end26.i75.if.end74.i83_crit_edge:              ; preds = %if.end26.i75
  call void @__sanitizer_cov_trace_pc() #8, !dbg !123
  br label %if.end74.i83, !dbg !123

land.rhs36.i78:                                   ; preds = %if.end26.i75
  %gcov_ctr89.i76 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 3), align 8, !dbg !123
  %42 = add i64 %gcov_ctr89.i76, 1, !dbg !123
  store i64 %42, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 3), align 8, !dbg !123
  %.b106.i77 = load i1, ptr @get_lower_chunk.__already_done, align 1, !dbg !123
  br i1 %.b106.i77, label %land.rhs36.i78.if.end74.i83_crit_edge, label %if.then47.i81, !dbg !123, !prof !92

land.rhs36.i78.if.end74.i83_crit_edge:            ; preds = %land.rhs36.i78
  call void @__sanitizer_cov_trace_pc() #8, !dbg !123
  br label %if.end74.i83, !dbg !123

if.then47.i81:                                    ; preds = %land.rhs36.i78
  call void @__sanitizer_cov_trace_pc() #8, !dbg !123
  store i1 true, ptr @get_lower_chunk.__already_done, align 1, !dbg !123
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 9, ptr noundef null) #9, !dbg !123
  %gcov_ctr90.i79 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 4), align 16, !dbg !123
  %43 = add i64 %gcov_ctr90.i79, 1, !dbg !123
  store i64 %43, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 4), align 16, !dbg !123
  %gcov_ctr91.i80 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 5), align 8, !dbg !123
  %44 = add i64 %gcov_ctr91.i80, 1, !dbg !123
  store i64 %44, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 5), align 8, !dbg !123
  br label %if.end74.i83, !dbg !123

if.end74.i83:                                     ; preds = %if.then47.i81, %land.rhs36.i78.if.end74.i83_crit_edge, %if.end26.i75.if.end74.i83_crit_edge
  %45 = ptrtoint ptr %36 to i32, !dbg !124
  call void @__asan_store4_noabort(i32 %45), !dbg !124
  store ptr null, ptr %36, align 4, !dbg !124
  %46 = ptrtoint ptr %free_lower_chunks.i to i32, !dbg !125
  call void @__asan_load4_noabort(i32 %46), !dbg !125
  %47 = load i32, ptr %free_lower_chunks.i, align 4, !dbg !125
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47), !dbg !126
  %cmp83.i82 = icmp slt i32 %47, 3, !dbg !126
  br i1 %cmp83.i82, label %if.then84.i87, label %if.end74.i83.if.end20_crit_edge, !dbg !127

if.end74.i83.if.end20_crit_edge:                  ; preds = %if.end74.i83
  call void @__sanitizer_cov_trace_pc() #8, !dbg !127
  br label %if.end20, !dbg !127

if.then84.i87:                                    ; preds = %if.end74.i83
  call void @__sanitizer_cov_trace_pc() #8, !dbg !128
  %gcov_ctr92.i84 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 6), align 16, !dbg !128
  %48 = add i64 %gcov_ctr92.i84, 1, !dbg !128
  store i64 %48, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 6), align 16, !dbg !128
  %refill_irqwork.i85 = getelementptr inbounds %struct.trace_pid_list, ptr %pid_list, i32 0, i32 1, !dbg !129
  %call85.i86 = tail call zeroext i1 @irq_work_queue(ptr noundef %refill_irqwork.i85) #9, !dbg !130
  br label %if.end20, !dbg !130

if.then19:                                        ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #8, !dbg !131
  %gcov_ctr88.i71 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 2), align 16, !dbg !131
  %49 = add i64 %gcov_ctr88.i71, 1, !dbg !131
  store i64 %49, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 2), align 16, !dbg !131
  %gcov_ctr41 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.4, i32 0, i32 4), align 16, !dbg !132
  %50 = add i64 %gcov_ctr41, 1, !dbg !132
  store i64 %50, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.4, i32 0, i32 4), align 16, !dbg !132
  br label %do.body23, !dbg !133

if.end20:                                         ; preds = %if.then84.i87, %if.end74.i83.if.end20_crit_edge
  %gcov_ctr93.i88 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 7), align 8, !dbg !134
  %51 = add i64 %gcov_ctr93.i88, 1, !dbg !134
  store i64 %51, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 7), align 8, !dbg !134
  %gcov_ctr42 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.4, i32 0, i32 5), align 8, !dbg !135
  %52 = add i64 %gcov_ctr42, 1, !dbg !135
  store i64 %52, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.4, i32 0, i32 5), align 8, !dbg !135
  %53 = ptrtoint ptr %arrayidx14 to i32, !dbg !136
  call void @__asan_store4_noabort(i32 %53), !dbg !136
  store ptr %36, ptr %arrayidx14, align 4, !dbg !136
  br label %if.end22, !dbg !137

if.end22:                                         ; preds = %if.end20, %if.end13.if.end22_crit_edge
  %lower_chunk.0 = phi ptr [ %30, %if.end13.if.end22_crit_edge ], [ %36, %if.end20 ], !dbg !107
  %gcov_ctr43 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.4, i32 0, i32 6), align 16, !dbg !138
  %54 = add i64 %gcov_ctr43, 1, !dbg !138
  store i64 %54, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.4, i32 0, i32 6), align 16, !dbg !138
  tail call void @_set_bit(i32 noundef %and4.i, ptr noundef nonnull %lower_chunk.0) #9, !dbg !138
  br label %do.body23, !dbg !139

do.body23:                                        ; preds = %if.end22, %if.then19, %if.then9
  %ret.0 = phi i32 [ 0, %if.end22 ], [ -12, %if.then19 ], [ -12, %if.then9 ], !dbg !107
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %pid_list, i32 noundef %call4) #9, !dbg !140
  br label %cleanup, !dbg !141

cleanup:                                          ; preds = %do.body23, %if.then1, %if.then
  %retval.0 = phi i32 [ -22, %if.then1 ], [ %ret.0, %do.body23 ], [ -19, %if.then ], !dbg !107
  ret i32 %retval.0, !dbg !142
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trace_pid_list_clear(ptr noundef %pid_list, i32 noundef %pid) local_unnamed_addr #0 align 64 !dbg !143 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !144
  %tobool.not = icmp eq ptr %pid_list, null, !dbg !145
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !146

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !147
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.7, align 16, !dbg !147
  %0 = add i64 %gcov_ctr, 1, !dbg !147
  store i64 %0, ptr @__llvm_gcov_ctr.7, align 16, !dbg !147
  br label %cleanup, !dbg !147

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %pid), !dbg !148
  %cmp.i = icmp ugt i32 %pid, 1073741823, !dbg !148
  br i1 %cmp.i, label %if.then1, label %do.body, !dbg !148, !prof !32

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8, !dbg !150
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.2, i32 0, i32 1), align 8, !dbg !150
  %1 = add i64 %gcov_ctr5.i, 1, !dbg !150
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.2, i32 0, i32 1), align 8, !dbg !150
  %gcov_ctr38 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 1), align 8, !dbg !151
  %2 = add i64 %gcov_ctr38, 1, !dbg !151
  store i64 %2, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 1), align 8, !dbg !151
  br label %cleanup, !dbg !151

do.body:                                          ; preds = %if.end
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.2, align 8, !dbg !152
  %3 = add i64 %gcov_ctr.i, 1, !dbg !152
  store i64 %3, ptr @__llvm_gcov_ctr.2, align 8, !dbg !152
  %shr.i = lshr i32 %pid, 22, !dbg !153
  %and4.i = and i32 %pid, 16383, !dbg !154
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %pid_list) #9, !dbg !155
  %arrayidx = getelementptr %struct.trace_pid_list, ptr %pid_list, i32 0, i32 2, i32 %shr.i, !dbg !156
  %4 = ptrtoint ptr %arrayidx to i32, !dbg !156
  call void @__asan_load4_noabort(i32 %4), !dbg !156
  %5 = load ptr, ptr %arrayidx, align 4, !dbg !156
  %tobool5.not = icmp eq ptr %5, null, !dbg !157
  br i1 %tobool5.not, label %if.then6, label %if.end7, !dbg !158

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8, !dbg !159
  %gcov_ctr39 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 2), align 16, !dbg !159
  %6 = add i64 %gcov_ctr39, 1, !dbg !159
  store i64 %6, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 2), align 16, !dbg !159
  br label %do.body24, !dbg !159

if.end7:                                          ; preds = %do.body
  %shr2.i = lshr i32 %pid, 14, !dbg !160
  %and3.i = and i32 %shr2.i, 255, !dbg !161
  %arrayidx8 = getelementptr [256 x ptr], ptr %5, i32 0, i32 %and3.i, !dbg !162
  %7 = ptrtoint ptr %arrayidx8 to i32, !dbg !162
  call void @__asan_load4_noabort(i32 %7), !dbg !162
  %8 = load ptr, ptr %arrayidx8, align 4, !dbg !162
  %tobool9.not = icmp eq ptr %8, null, !dbg !163
  br i1 %tobool9.not, label %if.then10, label %if.end11, !dbg !164

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8, !dbg !165
  %gcov_ctr40 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 3), align 8, !dbg !165
  %9 = add i64 %gcov_ctr40, 1, !dbg !165
  store i64 %9, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 3), align 8, !dbg !165
  br label %do.body24, !dbg !165

if.end11:                                         ; preds = %if.end7
  tail call void @_clear_bit(i32 noundef %and4.i, ptr noundef nonnull %8) #9, !dbg !166
  %call13 = tail call i32 @_find_first_bit_be(ptr noundef nonnull %8, i32 noundef 16384) #9, !dbg !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %call13), !dbg !168
  %cmp14 = icmp sgt i32 %call13, 16383, !dbg !168
  br i1 %cmp14, label %if.then16, label %if.end11.if.end23_crit_edge, !dbg !167

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8, !dbg !167
  br label %if.end23, !dbg !167

if.then16:                                        ; preds = %if.end11
  %gcov_ctr.i58 = load i64, ptr @__llvm_gcov_ctr.8, align 16
  %10 = add i64 %gcov_ctr.i58, 1
  store i64 %10, ptr @__llvm_gcov_ctr.8, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32)), !dbg !169
  %11 = load i32, ptr @debug_locks, align 4, !dbg !169
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11), !dbg !169
  %tobool.not.i = icmp eq i32 %11, 0, !dbg !169
  br i1 %tobool.not.i, label %if.then16.put_lower_chunk.exit_crit_edge, label %land.rhs.i, !dbg !169

if.then16.put_lower_chunk.exit_crit_edge:         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8, !dbg !169
  br label %put_lower_chunk.exit, !dbg !169

land.rhs.i:                                       ; preds = %if.then16
  %gcov_ctr25.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 1), align 8, !dbg !169
  %12 = add i64 %gcov_ctr25.i, 1, !dbg !169
  store i64 %12, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 1), align 8, !dbg !169
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %pid_list, i32 0, i32 4, !dbg !169
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %13 = add i64 %gcov_ctr.i.i, 1
  store i64 %13, ptr @__llvm_gcov_ctr.19, align 8
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9, !dbg !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i), !dbg !169
  %cmp.not.i = icmp eq i32 %call.i.i, 0, !dbg !169
  br i1 %cmp.not.i, label %if.then.i59, label %land.rhs.i.put_lower_chunk.exit_crit_edge, !dbg !169, !prof !32

land.rhs.i.put_lower_chunk.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8, !dbg !169
  br label %put_lower_chunk.exit, !dbg !169

if.then.i59:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8, !dbg !169
  %gcov_ctr26.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 2), align 16, !dbg !169
  %14 = add i64 %gcov_ctr26.i, 1, !dbg !169
  store i64 %14, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 2), align 16, !dbg !169
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef null) #9, !dbg !169
  br label %put_lower_chunk.exit, !dbg !169

put_lower_chunk.exit:                             ; preds = %if.then.i59, %land.rhs.i.put_lower_chunk.exit_crit_edge, %if.then16.put_lower_chunk.exit_crit_edge
  %lower_list.i = getelementptr inbounds %struct.trace_pid_list, ptr %pid_list, i32 0, i32 4, !dbg !174
  %15 = ptrtoint ptr %lower_list.i to i32, !dbg !174
  call void @__asan_load4_noabort(i32 %15), !dbg !174
  %16 = load ptr, ptr %lower_list.i, align 4, !dbg !174
  %17 = ptrtoint ptr %8 to i32, !dbg !175
  call void @__asan_store4_noabort(i32 %17), !dbg !175
  store ptr %16, ptr %8, align 4, !dbg !175
  store ptr %8, ptr %lower_list.i, align 4, !dbg !176
  %free_lower_chunks.i = getelementptr inbounds %struct.trace_pid_list, ptr %pid_list, i32 0, i32 6, !dbg !177
  %18 = ptrtoint ptr %free_lower_chunks.i to i32, !dbg !178
  call void @__asan_load4_noabort(i32 %18), !dbg !178
  %19 = load i32, ptr %free_lower_chunks.i, align 4, !dbg !178
  %inc.i = add i32 %19, 1, !dbg !178
  store i32 %inc.i, ptr %free_lower_chunks.i, align 4, !dbg !178
  %20 = ptrtoint ptr %arrayidx8 to i32, !dbg !179
  call void @__asan_store4_noabort(i32 %20), !dbg !179
  store ptr null, ptr %arrayidx8, align 4, !dbg !179
  %gcov_ctr.i61 = load i64, ptr @__llvm_gcov_ctr.9, align 8
  %21 = add i64 %gcov_ctr.i61, 1
  store i64 %21, ptr @__llvm_gcov_ctr.9, align 8
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull %5, i32 noundef 8192) #9, !dbg !180
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %call.i), !dbg !183
  %cmp.i62 = icmp ugt i32 %call.i, 8191, !dbg !183
  br i1 %cmp.i62, label %if.then19, label %put_lower_chunk.exit.if.end22_crit_edge, !dbg !184

put_lower_chunk.exit.if.end22_crit_edge:          ; preds = %put_lower_chunk.exit
  call void @__sanitizer_cov_trace_pc() #8, !dbg !184
  br label %if.end22, !dbg !184

if.then19:                                        ; preds = %put_lower_chunk.exit
  %gcov_ctr41 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 4), align 16, !dbg !185
  %22 = add i64 %gcov_ctr41, 1, !dbg !185
  store i64 %22, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 4), align 16, !dbg !185
  %gcov_ctr.i63 = load i64, ptr @__llvm_gcov_ctr.10, align 16
  %23 = add i64 %gcov_ctr.i63, 1
  store i64 %23, ptr @__llvm_gcov_ctr.10, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32)), !dbg !186
  %24 = load i32, ptr @debug_locks, align 4, !dbg !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24), !dbg !186
  %tobool.not.i64 = icmp eq i32 %24, 0, !dbg !186
  br i1 %tobool.not.i64, label %if.then19.put_upper_chunk.exit_crit_edge, label %land.rhs.i70, !dbg !186

if.then19.put_upper_chunk.exit_crit_edge:         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8, !dbg !186
  br label %put_upper_chunk.exit, !dbg !186

land.rhs.i70:                                     ; preds = %if.then19
  %gcov_ctr25.i65 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 1), align 8, !dbg !186
  %25 = add i64 %gcov_ctr25.i65, 1, !dbg !186
  store i64 %25, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 1), align 8, !dbg !186
  %dep_map.i66 = getelementptr inbounds %struct.raw_spinlock, ptr %pid_list, i32 0, i32 4, !dbg !186
  %gcov_ctr.i.i67 = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %26 = add i64 %gcov_ctr.i.i67, 1
  store i64 %26, ptr @__llvm_gcov_ctr.19, align 8
  %call.i.i68 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i66, i32 noundef -1) #9, !dbg !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i68), !dbg !186
  %cmp.not.i69 = icmp eq i32 %call.i.i68, 0, !dbg !186
  br i1 %cmp.not.i69, label %if.then.i72, label %land.rhs.i70.put_upper_chunk.exit_crit_edge, !dbg !186, !prof !32

land.rhs.i70.put_upper_chunk.exit_crit_edge:      ; preds = %land.rhs.i70
  call void @__sanitizer_cov_trace_pc() #8, !dbg !186
  br label %put_upper_chunk.exit, !dbg !186

if.then.i72:                                      ; preds = %land.rhs.i70
  call void @__sanitizer_cov_trace_pc() #8, !dbg !186
  %gcov_ctr26.i71 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 2), align 16, !dbg !186
  %27 = add i64 %gcov_ctr26.i71, 1, !dbg !186
  store i64 %27, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 2), align 16, !dbg !186
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef null) #9, !dbg !186
  br label %put_upper_chunk.exit, !dbg !186

put_upper_chunk.exit:                             ; preds = %if.then.i72, %land.rhs.i70.put_upper_chunk.exit_crit_edge, %if.then19.put_upper_chunk.exit_crit_edge
  %upper_list.i = getelementptr inbounds %struct.trace_pid_list, ptr %pid_list, i32 0, i32 3, !dbg !191
  %28 = ptrtoint ptr %upper_list.i to i32, !dbg !191
  call void @__asan_load4_noabort(i32 %28), !dbg !191
  %29 = load ptr, ptr %upper_list.i, align 4, !dbg !191
  %30 = ptrtoint ptr %5 to i32, !dbg !192
  call void @__asan_store4_noabort(i32 %30), !dbg !192
  store ptr %29, ptr %5, align 4, !dbg !192
  store ptr %5, ptr %upper_list.i, align 4, !dbg !193
  %free_upper_chunks.i = getelementptr inbounds %struct.trace_pid_list, ptr %pid_list, i32 0, i32 5, !dbg !194
  %31 = ptrtoint ptr %free_upper_chunks.i to i32, !dbg !195
  call void @__asan_load4_noabort(i32 %31), !dbg !195
  %32 = load i32, ptr %free_upper_chunks.i, align 4, !dbg !195
  %inc.i73 = add i32 %32, 1, !dbg !195
  store i32 %inc.i73, ptr %free_upper_chunks.i, align 4, !dbg !195
  %33 = ptrtoint ptr %arrayidx to i32, !dbg !196
  call void @__asan_store4_noabort(i32 %33), !dbg !196
  store ptr null, ptr %arrayidx, align 4, !dbg !196
  br label %if.end22, !dbg !197

if.end22:                                         ; preds = %put_upper_chunk.exit, %put_lower_chunk.exit.if.end22_crit_edge
  %gcov_ctr42 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 5), align 8, !dbg !198
  %34 = add i64 %gcov_ctr42, 1, !dbg !198
  store i64 %34, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 5), align 8, !dbg !198
  br label %if.end23, !dbg !198

if.end23:                                         ; preds = %if.end22, %if.end11.if.end23_crit_edge
  %gcov_ctr43 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 6), align 16, !dbg !199
  %35 = add i64 %gcov_ctr43, 1, !dbg !199
  store i64 %35, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 6), align 16, !dbg !199
  br label %do.body24, !dbg !199

do.body24:                                        ; preds = %if.end23, %if.then10, %if.then6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %pid_list, i32 noundef %call4) #9, !dbg !200
  br label %cleanup, !dbg !201

cleanup:                                          ; preds = %do.body24, %if.then1, %if.then
  %retval.0 = phi i32 [ -22, %if.then1 ], [ 0, %do.body24 ], [ -19, %if.then ], !dbg !202
  ret i32 %retval.0, !dbg !203
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trace_pid_list_next(ptr noundef %pid_list, i32 noundef %pid, ptr nocapture noundef writeonly %next) local_unnamed_addr #0 align 64 !dbg !204 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !205
  %tobool.not = icmp eq ptr %pid_list, null, !dbg !206
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !207

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !208
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.11, align 16, !dbg !208
  %0 = add i64 %gcov_ctr, 1, !dbg !208
  store i64 %0, ptr @__llvm_gcov_ctr.11, align 16, !dbg !208
  br label %cleanup, !dbg !208

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %pid), !dbg !209
  %cmp.i = icmp ugt i32 %pid, 1073741823, !dbg !209
  br i1 %cmp.i, label %if.then1, label %for.body.preheader, !dbg !209, !prof !32

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8, !dbg !211
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.2, i32 0, i32 1), align 8, !dbg !211
  %1 = add i64 %gcov_ctr5.i, 1, !dbg !211
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.2, i32 0, i32 1), align 8, !dbg !211
  %gcov_ctr45 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 1), align 8, !dbg !212
  %2 = add i64 %gcov_ctr45, 1, !dbg !212
  store i64 %2, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 1), align 8, !dbg !212
  br label %cleanup, !dbg !212

for.body.preheader:                               ; preds = %if.end
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.2, align 8, !dbg !213
  %3 = add i64 %gcov_ctr.i, 1, !dbg !213
  store i64 %3, ptr @__llvm_gcov_ctr.2, align 8, !dbg !213
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %pid_list) #9, !dbg !214
  %and4.i = and i32 %pid, 16383, !dbg !215
  %shr2.i = lshr i32 %pid, 14, !dbg !216
  %and3.i = and i32 %shr2.i, 255, !dbg !217
  %shr.i = lshr i32 %pid, 22, !dbg !218
  br label %for.body, !dbg !219

for.body:                                         ; preds = %for.inc23.for.body_crit_edge, %for.body.preheader
  %lower.186 = phi i32 [ %lower.3, %for.inc23.for.body_crit_edge ], [ %and4.i, %for.body.preheader ]
  %upper2.185 = phi i32 [ 0, %for.inc23.for.body_crit_edge ], [ %and3.i, %for.body.preheader ]
  %upper1.183 = phi i32 [ %inc24, %for.inc23.for.body_crit_edge ], [ %shr.i, %for.body.preheader ]
  %arrayidx = getelementptr %struct.trace_pid_list, ptr %pid_list, i32 0, i32 2, i32 %upper1.183, !dbg !220
  %4 = ptrtoint ptr %arrayidx to i32, !dbg !220
  call void @__asan_load4_noabort(i32 %4), !dbg !220
  %5 = load ptr, ptr %arrayidx, align 4, !dbg !220
  %tobool7.not = icmp eq ptr %5, null, !dbg !221
  br i1 %tobool7.not, label %if.then8, label %for.body.for.body13_crit_edge, !dbg !222

for.body.for.body13_crit_edge:                    ; preds = %for.body
  br label %for.body13, !dbg !222

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8, !dbg !223
  %gcov_ctr46 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 2), align 16, !dbg !223
  %6 = add i64 %gcov_ctr46, 1, !dbg !223
  store i64 %6, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 2), align 16, !dbg !223
  br label %for.inc23, !dbg !223

for.body13:                                       ; preds = %for.inc.for.body13_crit_edge, %for.body.for.body13_crit_edge
  %lower.281 = phi i32 [ 0, %for.inc.for.body13_crit_edge ], [ %lower.186, %for.body.for.body13_crit_edge ]
  %upper2.279 = phi i32 [ %inc, %for.inc.for.body13_crit_edge ], [ %upper2.185, %for.body.for.body13_crit_edge ]
  %arrayidx14 = getelementptr [256 x ptr], ptr %5, i32 0, i32 %upper2.279, !dbg !224
  %7 = ptrtoint ptr %arrayidx14 to i32, !dbg !224
  call void @__asan_load4_noabort(i32 %7), !dbg !224
  %8 = load ptr, ptr %arrayidx14, align 4, !dbg !224
  %tobool15.not = icmp eq ptr %8, null, !dbg !225
  br i1 %tobool15.not, label %if.then16, label %if.end17, !dbg !226

if.then16:                                        ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #8, !dbg !227
  %gcov_ctr47 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 3), align 8, !dbg !227
  %9 = add i64 %gcov_ctr47, 1, !dbg !227
  store i64 %9, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 3), align 8, !dbg !227
  br label %for.inc, !dbg !227

if.end17:                                         ; preds = %for.body13
  %call18 = tail call i32 @_find_next_bit_be(ptr noundef nonnull %8, i32 noundef 16384, i32 noundef %lower.281) #9, !dbg !228
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %call18), !dbg !229
  %cmp19 = icmp ult i32 %call18, 16384, !dbg !229
  br i1 %cmp19, label %do.body26, label %if.end22, !dbg !230

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8, !dbg !231
  %gcov_ctr48 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 4), align 16, !dbg !231
  %10 = add i64 %gcov_ctr48, 1, !dbg !231
  store i64 %10, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 4), align 16, !dbg !231
  br label %for.inc, !dbg !231

for.inc:                                          ; preds = %if.end22, %if.then16
  %inc = add nuw nsw i32 %upper2.279, 1, !dbg !232
  %exitcond.not = icmp eq i32 %inc, 256, !dbg !233
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body13_crit_edge, !dbg !234, !llvm.loop !235

for.inc.for.body13_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8, !dbg !234
  br label %for.body13, !dbg !234

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8, !dbg !236
  %gcov_ctr49 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 5), align 8, !dbg !236
  %11 = add i64 %gcov_ctr49, 1, !dbg !236
  store i64 %11, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 5), align 8, !dbg !236
  br label %for.inc23, !dbg !236

for.inc23:                                        ; preds = %for.end, %if.then8
  %lower.3 = phi i32 [ %lower.186, %if.then8 ], [ 0, %for.end ], !dbg !237
  %inc24 = add nuw nsw i32 %upper1.183, 1, !dbg !238
  %cmp5 = icmp ult i32 %upper1.183, 255, !dbg !239
  br i1 %cmp5, label %for.inc23.for.body_crit_edge, label %do.body26.thread, !dbg !219, !llvm.loop !240

for.inc23.for.body_crit_edge:                     ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #8, !dbg !219
  br label %for.body, !dbg !219

do.body26.thread:                                 ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #8, !dbg !236
  %gcov_ctr50 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 6), align 16, !dbg !236
  %12 = add i64 %gcov_ctr50, 1, !dbg !236
  store i64 %12, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 6), align 16, !dbg !236
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %pid_list, i32 noundef %call4) #9, !dbg !241
  br label %if.then37, !dbg !242

do.body26:                                        ; preds = %if.end17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %pid_list, i32 noundef %call4) #9, !dbg !241
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %upper1.183), !dbg !243
  %cmp35 = icmp ugt i32 %upper1.183, 255, !dbg !243
  br i1 %cmp35, label %do.body26.if.then37_crit_edge, label %if.end38, !dbg !242

do.body26.if.then37_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8, !dbg !242
  br label %if.then37, !dbg !242

if.then37:                                        ; preds = %do.body26.if.then37_crit_edge, %do.body26.thread
  %gcov_ctr51 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 7), align 8, !dbg !244
  %13 = add i64 %gcov_ctr51, 1, !dbg !244
  store i64 %13, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 7), align 8, !dbg !244
  br label %cleanup, !dbg !244

if.end38:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8, !dbg !245
  %gcov_ctr52 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 8), align 16, !dbg !245
  %14 = add i64 %gcov_ctr52, 1, !dbg !245
  store i64 %14, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 8), align 16, !dbg !245
  %gcov_ctr.i60 = load i64, ptr @__llvm_gcov_ctr.12, align 8
  %15 = add i64 %gcov_ctr.i60, 1
  store i64 %15, ptr @__llvm_gcov_ctr.12, align 8
  %and.i = shl nuw nsw i32 %upper1.183, 22, !dbg !246
  %shl.i = and i32 %and.i, 1069547520, !dbg !246
  %and1.i = shl nuw nsw i32 %upper2.279, 14, !dbg !249
  %shl2.i = and i32 %and1.i, 4177920, !dbg !249
  %or.i = or i32 %shl2.i, %shl.i, !dbg !250
  %or4.i = or i32 %or.i, %call18, !dbg !251
  %16 = ptrtoint ptr %next to i32, !dbg !252
  call void @__asan_store4_noabort(i32 %16), !dbg !252
  store i32 %or4.i, ptr %next, align 4, !dbg !252
  br label %cleanup, !dbg !253

cleanup:                                          ; preds = %if.end38, %if.then37, %if.then1, %if.then
  %retval.0 = phi i32 [ -22, %if.then1 ], [ -1, %if.then37 ], [ 0, %if.end38 ], [ -19, %if.then ], !dbg !254
  ret i32 %retval.0, !dbg !255
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trace_pid_list_first(ptr noundef %pid_list, ptr nocapture noundef writeonly %pid) local_unnamed_addr #0 align 64 !dbg !256 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !257
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.13, align 8
  %call = tail call i32 @trace_pid_list_next(ptr noundef %pid_list, i32 noundef 0, ptr noundef %pid), !dbg !258
  ret i32 %call, !dbg !259
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @trace_pid_list_alloc() local_unnamed_addr #0 align 64 !dbg !260 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !261
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pid_max to i32)), !dbg !262
  %0 = load i32, ptr @pid_max, align 4, !dbg !262
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %0), !dbg !262
  %cmp = icmp sgt i32 %0, 1073741824, !dbg !262
  br i1 %cmp, label %land.rhs, label %entry.if.end27_crit_edge, !dbg !262

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !262
  br label %if.end27, !dbg !262

land.rhs:                                         ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.14, align 16, !dbg !262
  %1 = add i64 %gcov_ctr, 1, !dbg !262
  store i64 %1, ptr @__llvm_gcov_ctr.14, align 16, !dbg !262
  %.b95 = load i1, ptr @trace_pid_list_alloc.__already_done, align 1, !dbg !262
  br i1 %.b95, label %land.rhs.if.end27_crit_edge, label %if.then, !dbg !262, !prof !92

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8, !dbg !262
  br label %if.end27, !dbg !262

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8, !dbg !262
  store i1 true, ptr @trace_pid_list_alloc.__already_done, align 1, !dbg !262
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 417, i32 noundef 9, ptr noundef null) #9, !dbg !262
  %gcov_ctr66 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 1), align 8, !dbg !262
  %2 = add i64 %gcov_ctr66, 1, !dbg !262
  store i64 %2, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 1), align 8, !dbg !262
  %gcov_ctr67 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 2), align 16, !dbg !262
  %3 = add i64 %gcov_ctr67, 1, !dbg !262
  store i64 %3, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 2), align 16, !dbg !262
  br label %if.end27, !dbg !262

if.end27:                                         ; preds = %if.then, %land.rhs.if.end27_crit_edge, %entry.if.end27_crit_edge
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %4 = add i64 %gcov_ctr.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.15, align 8
  %gcov_ctr88.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 10), align 16, !dbg !263
  %5 = add i64 %gcov_ctr88.i.i.i, 1, !dbg !263
  store i64 %5, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 10), align 16, !dbg !263
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 2), align 16, !dbg !271
  %6 = add i64 %gcov_ctr11.i.i, 1, !dbg !271
  store i64 %6, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 2), align 16, !dbg !271
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.23, align 16, !dbg !272
  %7 = add i64 %gcov_ctr.i.i.i, 1, !dbg !272
  store i64 %7, ptr @__llvm_gcov_ctr.23, align 16, !dbg !272
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32)), !dbg !275
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4, !dbg !275
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1100) #10, !dbg !276
  %tobool35.not = icmp eq ptr %call7.i.i, null, !dbg !277
  br i1 %tobool35.not, label %if.then36, label %if.end37, !dbg !278

if.then36:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8, !dbg !279
  %gcov_ctr68 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 3), align 8, !dbg !279
  %9 = add i64 %gcov_ctr68, 1, !dbg !279
  store i64 %9, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 3), align 8, !dbg !279
  br label %cleanup64, !dbg !279

if.end37:                                         ; preds = %if.end27
  %refill_irqwork = getelementptr inbounds %struct.trace_pid_list, ptr %call7.i.i, i32 0, i32 1, !dbg !280
  %gcov_ctr.i97 = load i64, ptr @__llvm_gcov_ctr.16, align 8
  %10 = add i64 %gcov_ctr.i97, 1
  store i64 %10, ptr @__llvm_gcov_ctr.16, align 8
  %11 = ptrtoint ptr %refill_irqwork to i32, !dbg !281
  call void @__asan_store4_noabort(i32 %11), !dbg !281
  store ptr null, ptr %refill_irqwork, align 4, !dbg !281
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.trace_pid_list, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1, !dbg !281
  %12 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32, !dbg !281
  call void @__asan_store4_noabort(i32 %12), !dbg !281
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8, !dbg !281
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.trace_pid_list, ptr %call7.i.i, i32 0, i32 1, i32 1, !dbg !281
  %13 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32, !dbg !281
  call void @__asan_store4_noabort(i32 %13), !dbg !281
  store ptr @pid_list_refill_irq, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4, !dbg !281
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.trace_pid_list, ptr %call7.i.i, i32 0, i32 1, i32 2, !dbg !281
  %14 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32, !dbg !281
  call void @__asan_store4_noabort(i32 %14), !dbg !281
  store ptr null, ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 8, !dbg !281
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @trace_pid_list_alloc.__key, i16 noundef signext 2) #9, !dbg !285
  %upper_list = getelementptr inbounds %struct.trace_pid_list, ptr %call7.i.i, i32 0, i32 3
  %free_upper_chunks = getelementptr inbounds %struct.trace_pid_list, ptr %call7.i.i, i32 0, i32 5
  br label %for.body, !dbg !286

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end37
  %i.0111 = phi i32 [ 0, %if.end37 ], [ %inc47, %for.inc.for.body_crit_edge ]
  %gcov_ctr.i98 = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %15 = add i64 %gcov_ctr.i98, 1
  store i64 %15, ptr @__llvm_gcov_ctr.15, align 8
  %gcov_ctr87.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 9), align 8, !dbg !287
  %16 = add i64 %gcov_ctr87.i.i.i, 1, !dbg !287
  store i64 %16, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 9), align 8, !dbg !287
  %gcov_ctr11.i.i99 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 2), align 16, !dbg !291
  %17 = add i64 %gcov_ctr11.i.i99, 1, !dbg !291
  store i64 %17, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 2), align 16, !dbg !291
  %gcov_ctr.i.i.i100 = load i64, ptr @__llvm_gcov_ctr.23, align 16, !dbg !292
  %18 = add i64 %gcov_ctr.i.i.i100, 1, !dbg !292
  store i64 %18, ptr @__llvm_gcov_ctr.23, align 16, !dbg !292
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32)), !dbg !294
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4, !dbg !294
  %call7.i.i101 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 1024) #10, !dbg !295
  %tobool43.not = icmp eq ptr %call7.i.i101, null, !dbg !296
  br i1 %tobool43.not, label %cleanup, label %for.inc, !dbg !297

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8, !dbg !298
  %gcov_ctr70 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 5), align 8
  %20 = add i64 %gcov_ctr70, 1
  store i64 %20, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 5), align 8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %gcov_ctr69 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 4), align 16, !dbg !299
  %21 = add i64 %gcov_ctr69, 1, !dbg !299
  store i64 %21, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 4), align 16, !dbg !299
  %22 = ptrtoint ptr %upper_list to i32, !dbg !300
  call void @__asan_load4_noabort(i32 %22), !dbg !300
  %23 = load ptr, ptr %upper_list, align 4, !dbg !300
  %24 = ptrtoint ptr %call7.i.i101 to i32, !dbg !301
  call void @__asan_store4_noabort(i32 %24), !dbg !301
  store ptr %23, ptr %call7.i.i101, align 8, !dbg !301
  store ptr %call7.i.i101, ptr %upper_list, align 4, !dbg !302
  %25 = ptrtoint ptr %free_upper_chunks to i32, !dbg !303
  call void @__asan_load4_noabort(i32 %25), !dbg !303
  %26 = load i32, ptr %free_upper_chunks, align 4, !dbg !303
  %inc = add i32 %26, 1, !dbg !303
  store i32 %inc, ptr %free_upper_chunks, align 4, !dbg !303
  %gcov_ctr71 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 6), align 16, !dbg !304
  %27 = add i64 %gcov_ctr71, 1, !dbg !304
  store i64 %27, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 6), align 16, !dbg !304
  %inc47 = add nuw nsw i32 %i.0111, 1, !dbg !304
  %exitcond.not = icmp eq i32 %inc47, 6, !dbg !305
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge, !dbg !286, !llvm.loop !306

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8, !dbg !286
  br label %for.body, !dbg !286

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8, !dbg !286
  br label %for.end, !dbg !286

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup
  %lower_list = getelementptr inbounds %struct.trace_pid_list, ptr %call7.i.i, i32 0, i32 4
  %free_lower_chunks = getelementptr inbounds %struct.trace_pid_list, ptr %call7.i.i, i32 0, i32 6
  br label %for.body50, !dbg !308

for.body50:                                       ; preds = %for.inc61.for.body50_crit_edge, %for.end
  %i.1112 = phi i32 [ 0, %for.end ], [ %inc62, %for.inc61.for.body50_crit_edge ]
  %gcov_ctr.i102 = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %28 = add i64 %gcov_ctr.i102, 1
  store i64 %28, ptr @__llvm_gcov_ctr.15, align 8
  %gcov_ctr88.i.i.i103 = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 10), align 16, !dbg !309
  %29 = add i64 %gcov_ctr88.i.i.i103, 1, !dbg !309
  store i64 %29, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 10), align 16, !dbg !309
  %gcov_ctr11.i.i104 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 2), align 16, !dbg !313
  %30 = add i64 %gcov_ctr11.i.i104, 1, !dbg !313
  store i64 %30, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 2), align 16, !dbg !313
  %gcov_ctr.i.i.i105 = load i64, ptr @__llvm_gcov_ctr.23, align 16, !dbg !314
  %31 = add i64 %gcov_ctr.i.i.i105, 1, !dbg !314
  store i64 %31, ptr @__llvm_gcov_ctr.23, align 16, !dbg !314
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32)), !dbg !316
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4, !dbg !316
  %call7.i.i106 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 2048) #10, !dbg !317
  %tobool53.not = icmp eq ptr %call7.i.i106, null, !dbg !318
  br i1 %tobool53.not, label %cleanup58, label %for.inc61, !dbg !319

cleanup58:                                        ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #8, !dbg !298
  %gcov_ctr72 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 7), align 8
  %33 = add i64 %gcov_ctr72, 1
  store i64 %33, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 7), align 8
  br label %for.end63

for.inc61:                                        ; preds = %for.body50
  %gcov_ctr73 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 8), align 16, !dbg !320
  %34 = add i64 %gcov_ctr73, 1, !dbg !320
  store i64 %34, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 8), align 16, !dbg !320
  %35 = ptrtoint ptr %lower_list to i32, !dbg !321
  call void @__asan_load4_noabort(i32 %35), !dbg !321
  %36 = load ptr, ptr %lower_list, align 8, !dbg !321
  %37 = ptrtoint ptr %call7.i.i106 to i32, !dbg !322
  call void @__asan_store4_noabort(i32 %37), !dbg !322
  store ptr %36, ptr %call7.i.i106, align 8, !dbg !322
  store ptr %call7.i.i106, ptr %lower_list, align 8, !dbg !323
  %38 = ptrtoint ptr %free_lower_chunks to i32, !dbg !324
  call void @__asan_load4_noabort(i32 %38), !dbg !324
  %39 = load i32, ptr %free_lower_chunks, align 8, !dbg !324
  %inc57 = add i32 %39, 1, !dbg !324
  store i32 %inc57, ptr %free_lower_chunks, align 8, !dbg !324
  %gcov_ctr74 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 9), align 8, !dbg !325
  %40 = add i64 %gcov_ctr74, 1, !dbg !325
  store i64 %40, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 9), align 8, !dbg !325
  %inc62 = add nuw nsw i32 %i.1112, 1, !dbg !325
  %exitcond113.not = icmp eq i32 %inc62, 6, !dbg !326
  br i1 %exitcond113.not, label %for.inc61.for.end63_crit_edge, label %for.inc61.for.body50_crit_edge, !dbg !308, !llvm.loop !327

for.inc61.for.body50_crit_edge:                   ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #8, !dbg !308
  br label %for.body50, !dbg !308

for.inc61.for.end63_crit_edge:                    ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #8, !dbg !308
  br label %for.end63, !dbg !308

for.end63:                                        ; preds = %for.inc61.for.end63_crit_edge, %cleanup58
  %gcov_ctr75 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 10), align 16, !dbg !329
  %41 = add i64 %gcov_ctr75, 1, !dbg !329
  store i64 %41, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 10), align 16, !dbg !329
  br label %cleanup64, !dbg !330

cleanup64:                                        ; preds = %for.end63, %if.then36
  ret ptr %call7.i.i, !dbg !331
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pid_list_refill_irq(ptr noundef %iwork) #0 align 64 !dbg !332 {
entry:
  %upper = alloca ptr, align 4
  %lower = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8, !dbg !333
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.17, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.17, align 16
  %add.ptr = getelementptr i8, ptr %iwork, i32 -44, !dbg !334
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %upper), !dbg !335
  %1 = ptrtoint ptr %upper to i32, !dbg !336
  call void @__asan_store4_noabort(i32 %1), !dbg !336
  store ptr null, ptr %upper, align 4, !dbg !336
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lower), !dbg !337
  %2 = ptrtoint ptr %lower to i32, !dbg !338
  call void @__asan_store4_noabort(i32 %2), !dbg !338
  store ptr null, ptr %lower, align 4, !dbg !338
  %free_upper_chunks = getelementptr i8, ptr %iwork, i32 1048
  %free_lower_chunks = getelementptr i8, ptr %iwork, i32 1052
  %upper_list = getelementptr i8, ptr %iwork, i32 1040
  %lower_list = getelementptr i8, ptr %iwork, i32 1044
  br label %again, !dbg !339

again:                                            ; preds = %if.end37, %entry
  %upper_next.0 = phi ptr [ %upper, %entry ], [ %upper_next.1108149, %if.end37 ], !dbg !340
  %lower_next.0 = phi ptr [ %lower, %entry ], [ %lower_next.1116, %if.end37 ], !dbg !340
  %ucnt.0 = phi i32 [ 0, %entry ], [ %ucnt.1105152, %if.end37 ], !dbg !340
  %lcnt.0 = phi i32 [ 0, %entry ], [ %lcnt.1113, %if.end37 ], !dbg !340
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #9, !dbg !341
  %3 = ptrtoint ptr %free_upper_chunks to i32, !dbg !342
  call void @__asan_load4_noabort(i32 %3), !dbg !342
  %4 = load i32, ptr %free_upper_chunks, align 4, !dbg !342
  %5 = ptrtoint ptr %free_lower_chunks to i32, !dbg !343
  call void @__asan_load4_noabort(i32 %5), !dbg !343
  %6 = load i32, ptr %free_lower_chunks, align 4, !dbg !343
  %sub1 = sub i32 6, %6, !dbg !344
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #9, !dbg !345
  %notsub = add i32 %4, -7, !dbg !346
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %notsub), !dbg !346
  %cmp = icmp sgt i32 %notsub, -2, !dbg !346
  br i1 %cmp, label %land.lhs.true, label %while.body.preheader, !dbg !347

land.lhs.true:                                    ; preds = %again
  %gcov_ctr47 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 1), align 8, !dbg !348
  %7 = add i64 %gcov_ctr47, 1, !dbg !348
  store i64 %7, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 1), align 8, !dbg !348
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub1), !dbg !349
  %cmp3 = icmp slt i32 %sub1, 1, !dbg !349
  br i1 %cmp3, label %if.then, label %while.end.thread, !dbg !350

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8, !dbg !340
  %gcov_ctr48 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 2), align 16
  %8 = add i64 %gcov_ctr48, 1
  store i64 %8, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 2), align 16
  br label %cleanup38, !dbg !351

while.end.thread:                                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8, !dbg !352
  %dec118 = sub i32 5, %4, !dbg !352
  %dec8125147 = sub i32 5, %6, !dbg !353
  br label %while.body10.preheader, !dbg !354

while.body.preheader:                             ; preds = %again
  %dec118141 = sub i32 5, %4, !dbg !352
  %9 = add i32 %ucnt.0, 6, !dbg !355
  %10 = sub i32 %9, %4, !dbg !355
  br label %while.body, !dbg !355

while.body:                                       ; preds = %cleanup.cont.while.body_crit_edge, %while.body.preheader
  %dec122 = phi i32 [ %dec, %cleanup.cont.while.body_crit_edge ], [ %dec118141, %while.body.preheader ]
  %ucnt.1121 = phi i32 [ %inc, %cleanup.cont.while.body_crit_edge ], [ %ucnt.0, %while.body.preheader ]
  %upper_next.1120 = phi ptr [ %call7.i.i, %cleanup.cont.while.body_crit_edge ], [ %upper_next.0, %while.body.preheader ]
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %11 = add i64 %gcov_ctr.i, 1
  store i64 %11, ptr @__llvm_gcov_ctr.15, align 8
  %gcov_ctr87.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 9), align 8, !dbg !356
  %12 = add i64 %gcov_ctr87.i.i.i, 1, !dbg !356
  store i64 %12, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 9), align 8, !dbg !356
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 2), align 16, !dbg !360
  %13 = add i64 %gcov_ctr11.i.i, 1, !dbg !360
  store i64 %13, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 2), align 16, !dbg !360
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.23, align 16, !dbg !361
  %14 = add i64 %gcov_ctr.i.i.i, 1, !dbg !361
  store i64 %14, ptr @__llvm_gcov_ctr.23, align 16, !dbg !361
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32)), !dbg !363
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4, !dbg !363
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 1024) #10, !dbg !364
  %tobool.not = icmp eq ptr %call7.i.i, null, !dbg !365
  br i1 %tobool.not, label %cleanup, label %cleanup.cont, !dbg !366

cleanup:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8, !dbg !340
  %gcov_ctr50 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 4), align 16
  %16 = add i64 %gcov_ctr50, 1
  store i64 %16, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 4), align 16
  br label %while.end

cleanup.cont:                                     ; preds = %while.body
  %gcov_ctr49 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 3), align 8, !dbg !367
  %17 = add i64 %gcov_ctr49, 1, !dbg !367
  store i64 %17, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 3), align 8, !dbg !367
  %18 = ptrtoint ptr %upper_next.1120 to i32, !dbg !368
  call void @__asan_store4_noabort(i32 %18), !dbg !368
  store ptr %call7.i.i, ptr %upper_next.1120, align 4, !dbg !368
  %inc = add i32 %ucnt.1121, 1, !dbg !369
  %gcov_ctr51 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 5), align 8, !dbg !355
  %19 = add i64 %gcov_ctr51, 1, !dbg !355
  store i64 %19, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 5), align 8, !dbg !355
  %dec = add i32 %dec122, -1, !dbg !352
  %cmp4 = icmp sgt i32 %dec122, 0, !dbg !370
  br i1 %cmp4, label %cleanup.cont.while.body_crit_edge, label %cleanup.cont.while.end_crit_edge, !dbg !355, !llvm.loop !371

cleanup.cont.while.end_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #8, !dbg !355
  br label %while.end, !dbg !355

cleanup.cont.while.body_crit_edge:                ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #8, !dbg !355
  br label %while.body, !dbg !355

while.end:                                        ; preds = %cleanup.cont.while.end_crit_edge, %cleanup
  %upper_next.1108 = phi ptr [ %upper_next.1120, %cleanup ], [ %call7.i.i, %cleanup.cont.while.end_crit_edge ]
  %ucnt.1105 = phi i32 [ %ucnt.1121, %cleanup ], [ %10, %cleanup.cont.while.end_crit_edge ]
  %dec103 = phi i32 [ %dec122, %cleanup ], [ -1, %cleanup.cont.while.end_crit_edge ]
  %dec8125 = sub i32 5, %6, !dbg !353
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1), !dbg !373
  %cmp9126 = icmp sgt i32 %sub1, 0, !dbg !373
  br i1 %cmp9126, label %while.end.while.body10.preheader_crit_edge, label %while.end.while.end20_crit_edge, !dbg !354

while.end.while.end20_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8, !dbg !354
  br label %while.end20, !dbg !354

while.end.while.body10.preheader_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8, !dbg !354
  br label %while.body10.preheader, !dbg !354

while.body10.preheader:                           ; preds = %while.end.while.body10.preheader_crit_edge, %while.end.thread
  %dec8125157 = phi i32 [ %dec8125147, %while.end.thread ], [ %dec8125, %while.end.while.body10.preheader_crit_edge ]
  %dec103156 = phi i32 [ %dec118, %while.end.thread ], [ %dec103, %while.end.while.body10.preheader_crit_edge ]
  %ucnt.1105153 = phi i32 [ %ucnt.0, %while.end.thread ], [ %ucnt.1105, %while.end.while.body10.preheader_crit_edge ]
  %upper_next.1108150 = phi ptr [ %upper_next.0, %while.end.thread ], [ %upper_next.1108, %while.end.while.body10.preheader_crit_edge ]
  %20 = add i32 %lcnt.0, 6, !dbg !354
  %21 = sub i32 %20, %6, !dbg !354
  br label %while.body10, !dbg !354

while.body10:                                     ; preds = %cleanup.cont19.while.body10_crit_edge, %while.body10.preheader
  %dec8129 = phi i32 [ %dec8, %cleanup.cont19.while.body10_crit_edge ], [ %dec8125157, %while.body10.preheader ]
  %lcnt.1128 = phi i32 [ %inc16, %cleanup.cont19.while.body10_crit_edge ], [ %lcnt.0, %while.body10.preheader ]
  %lower_next.1127 = phi ptr [ %call7.i.i89, %cleanup.cont19.while.body10_crit_edge ], [ %lower_next.0, %while.body10.preheader ]
  %gcov_ctr.i86 = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %22 = add i64 %gcov_ctr.i86, 1
  store i64 %22, ptr @__llvm_gcov_ctr.15, align 8
  %gcov_ctr88.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 10), align 16, !dbg !374
  %23 = add i64 %gcov_ctr88.i.i.i, 1, !dbg !374
  store i64 %23, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 10), align 16, !dbg !374
  %gcov_ctr11.i.i87 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 2), align 16, !dbg !378
  %24 = add i64 %gcov_ctr11.i.i87, 1, !dbg !378
  store i64 %24, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 2), align 16, !dbg !378
  %gcov_ctr.i.i.i88 = load i64, ptr @__llvm_gcov_ctr.23, align 16, !dbg !379
  %25 = add i64 %gcov_ctr.i.i.i88, 1, !dbg !379
  store i64 %25, ptr @__llvm_gcov_ctr.23, align 16, !dbg !379
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32)), !dbg !381
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4, !dbg !381
  %call7.i.i89 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 2048) #10, !dbg !382
  %tobool13.not = icmp eq ptr %call7.i.i89, null, !dbg !383
  br i1 %tobool13.not, label %cleanup17, label %cleanup.cont19, !dbg !384

cleanup17:                                        ; preds = %while.body10
  call void @__sanitizer_cov_trace_pc() #8, !dbg !340
  %gcov_ctr52 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 6), align 16
  %27 = add i64 %gcov_ctr52, 1
  store i64 %27, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 6), align 16
  br label %while.end20

cleanup.cont19:                                   ; preds = %while.body10
  %gcov_ctr53 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 7), align 8, !dbg !385
  %28 = add i64 %gcov_ctr53, 1, !dbg !385
  store i64 %28, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 7), align 8, !dbg !385
  %29 = ptrtoint ptr %lower_next.1127 to i32, !dbg !386
  call void @__asan_store4_noabort(i32 %29), !dbg !386
  store ptr %call7.i.i89, ptr %lower_next.1127, align 4, !dbg !386
  %inc16 = add i32 %lcnt.1128, 1, !dbg !387
  %gcov_ctr54 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 8), align 16, !dbg !354
  %30 = add i64 %gcov_ctr54, 1, !dbg !354
  store i64 %30, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 8), align 16, !dbg !354
  %dec8 = add i32 %dec8129, -1, !dbg !353
  %cmp9 = icmp sgt i32 %dec8129, 0, !dbg !373
  br i1 %cmp9, label %cleanup.cont19.while.body10_crit_edge, label %cleanup.cont19.while.end20_crit_edge, !dbg !354, !llvm.loop !388

cleanup.cont19.while.end20_crit_edge:             ; preds = %cleanup.cont19
  call void @__sanitizer_cov_trace_pc() #8, !dbg !354
  br label %while.end20, !dbg !354

cleanup.cont19.while.body10_crit_edge:            ; preds = %cleanup.cont19
  call void @__sanitizer_cov_trace_pc() #8, !dbg !354
  br label %while.body10, !dbg !354

while.end20:                                      ; preds = %cleanup.cont19.while.end20_crit_edge, %cleanup17, %while.end.while.end20_crit_edge
  %dec103155 = phi i32 [ %dec103156, %cleanup17 ], [ %dec103, %while.end.while.end20_crit_edge ], [ %dec103156, %cleanup.cont19.while.end20_crit_edge ]
  %ucnt.1105152 = phi i32 [ %ucnt.1105153, %cleanup17 ], [ %ucnt.1105, %while.end.while.end20_crit_edge ], [ %ucnt.1105153, %cleanup.cont19.while.end20_crit_edge ]
  %upper_next.1108149 = phi ptr [ %upper_next.1108150, %cleanup17 ], [ %upper_next.1108, %while.end.while.end20_crit_edge ], [ %upper_next.1108150, %cleanup.cont19.while.end20_crit_edge ]
  %lower_next.1116 = phi ptr [ %lower_next.1127, %cleanup17 ], [ %lower_next.0, %while.end.while.end20_crit_edge ], [ %call7.i.i89, %cleanup.cont19.while.end20_crit_edge ]
  %lcnt.1113 = phi i32 [ %lcnt.1128, %cleanup17 ], [ %lcnt.0, %while.end.while.end20_crit_edge ], [ %21, %cleanup.cont19.while.end20_crit_edge ]
  %dec8111 = phi i32 [ %dec8129, %cleanup17 ], [ %dec8125, %while.end.while.end20_crit_edge ], [ -1, %cleanup.cont19.while.end20_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #9, !dbg !390
  %31 = ptrtoint ptr %upper to i32, !dbg !391
  call void @__asan_load4_noabort(i32 %31), !dbg !391
  %upper.0.upper.0.upper.0. = load ptr, ptr %upper, align 4, !dbg !391
  %tobool22.not = icmp eq ptr %upper.0.upper.0.upper.0., null, !dbg !391
  br i1 %tobool22.not, label %while.end20.if.end26_crit_edge, label %if.then23, !dbg !391

while.end20.if.end26_crit_edge:                   ; preds = %while.end20
  call void @__sanitizer_cov_trace_pc() #8, !dbg !391
  br label %if.end26, !dbg !391

if.then23:                                        ; preds = %while.end20
  call void @__sanitizer_cov_trace_pc() #8, !dbg !392
  %gcov_ctr55 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 9), align 8, !dbg !392
  %32 = add i64 %gcov_ctr55, 1, !dbg !392
  store i64 %32, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 9), align 8, !dbg !392
  %33 = ptrtoint ptr %upper_list to i32, !dbg !393
  call void @__asan_load4_noabort(i32 %33), !dbg !393
  %34 = load ptr, ptr %upper_list, align 4, !dbg !393
  %35 = ptrtoint ptr %upper_next.1108149 to i32, !dbg !394
  call void @__asan_store4_noabort(i32 %35), !dbg !394
  store ptr %34, ptr %upper_next.1108149, align 4, !dbg !394
  %36 = ptrtoint ptr %upper to i32, !dbg !395
  call void @__asan_load4_noabort(i32 %36), !dbg !395
  %upper.0.upper.0.upper.0.83 = load ptr, ptr %upper, align 4, !dbg !395
  store ptr %upper.0.upper.0.upper.0.83, ptr %upper_list, align 4, !dbg !396
  %37 = ptrtoint ptr %free_upper_chunks to i32, !dbg !397
  call void @__asan_load4_noabort(i32 %37), !dbg !397
  %38 = load i32, ptr %free_upper_chunks, align 4, !dbg !397
  %add = add i32 %38, %ucnt.1105152, !dbg !397
  store i32 %add, ptr %free_upper_chunks, align 4, !dbg !397
  br label %if.end26, !dbg !398

if.end26:                                         ; preds = %if.then23, %while.end20.if.end26_crit_edge
  %39 = ptrtoint ptr %lower to i32, !dbg !399
  call void @__asan_load4_noabort(i32 %39), !dbg !399
  %lower.0.lower.0.lower.0. = load ptr, ptr %lower, align 4, !dbg !399
  %tobool27.not = icmp eq ptr %lower.0.lower.0.lower.0., null, !dbg !399
  br i1 %tobool27.not, label %if.end26.if.end32_crit_edge, label %if.then28, !dbg !399

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8, !dbg !399
  br label %if.end32, !dbg !399

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8, !dbg !400
  %gcov_ctr56 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 10), align 16, !dbg !400
  %40 = add i64 %gcov_ctr56, 1, !dbg !400
  store i64 %40, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 10), align 16, !dbg !400
  %41 = ptrtoint ptr %lower_list to i32, !dbg !401
  call void @__asan_load4_noabort(i32 %41), !dbg !401
  %42 = load ptr, ptr %lower_list, align 4, !dbg !401
  %43 = ptrtoint ptr %lower_next.1116 to i32, !dbg !402
  call void @__asan_store4_noabort(i32 %43), !dbg !402
  store ptr %42, ptr %lower_next.1116, align 4, !dbg !402
  %44 = ptrtoint ptr %lower to i32, !dbg !403
  call void @__asan_load4_noabort(i32 %44), !dbg !403
  %lower.0.lower.0.lower.0.84 = load ptr, ptr %lower, align 4, !dbg !403
  store ptr %lower.0.lower.0.lower.0.84, ptr %lower_list, align 4, !dbg !404
  %45 = ptrtoint ptr %free_lower_chunks to i32, !dbg !405
  call void @__asan_load4_noabort(i32 %45), !dbg !405
  %46 = load i32, ptr %free_lower_chunks, align 4, !dbg !405
  %add31 = add i32 %46, %lcnt.1113, !dbg !405
  store i32 %add31, ptr %free_lower_chunks, align 4, !dbg !405
  br label %if.end32, !dbg !406

if.end32:                                         ; preds = %if.then28, %if.end26.if.end32_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #9, !dbg !407
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec103155), !dbg !408
  %cmp34 = icmp sgt i32 %dec103155, -1, !dbg !408
  br i1 %cmp34, label %if.end32.cleanup38_crit_edge, label %lor.lhs.false, !dbg !409

if.end32.cleanup38_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8, !dbg !409
  br label %cleanup38, !dbg !409

lor.lhs.false:                                    ; preds = %if.end32
  %gcov_ctr57 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 11), align 8, !dbg !410
  %47 = add i64 %gcov_ctr57, 1, !dbg !410
  store i64 %47, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 11), align 8, !dbg !410
  %cmp35 = icmp sgt i32 %dec8111, -1, !dbg !411
  br i1 %cmp35, label %lor.lhs.false.cleanup38_crit_edge, label %if.end37, !dbg !412

lor.lhs.false.cleanup38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8, !dbg !412
  br label %cleanup38, !dbg !412

if.end37:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8, !dbg !413
  %gcov_ctr58 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 12), align 16, !dbg !413
  %48 = add i64 %gcov_ctr58, 1, !dbg !413
  store i64 %48, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 12), align 16, !dbg !413
  br label %again, !dbg !413

cleanup38:                                        ; preds = %lor.lhs.false.cleanup38_crit_edge, %if.end32.cleanup38_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lower), !dbg !414
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %upper), !dbg !414
  ret void, !dbg !414
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trace_pid_list_free(ptr noundef %pid_list) local_unnamed_addr #0 align 64 !dbg !415 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !416
  %tobool.not = icmp eq ptr %pid_list, null, !dbg !417
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !418

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !419
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.18, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.18, align 16
  br label %cleanup, !dbg !420

if.end:                                           ; preds = %entry
  %refill_irqwork = getelementptr inbounds %struct.trace_pid_list, ptr %pid_list, i32 0, i32 1, !dbg !421
  tail call void @irq_work_sync(ptr noundef %refill_irqwork) #9, !dbg !422
  %lower_list = getelementptr inbounds %struct.trace_pid_list, ptr %pid_list, i32 0, i32 4
  %1 = ptrtoint ptr %lower_list to i32, !dbg !423
  call void @__asan_load4_noabort(i32 %1), !dbg !423
  %2 = load ptr, ptr %lower_list, align 4, !dbg !423
  %tobool1.not51 = icmp eq ptr %2, null, !dbg !424
  br i1 %tobool1.not51, label %if.end.while.cond5.preheader_crit_edge, label %if.end.while.body_crit_edge, !dbg !424

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body, !dbg !424

if.end.while.cond5.preheader_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8, !dbg !424
  br label %while.cond5.preheader, !dbg !424

while.cond5.preheader:                            ; preds = %while.body.while.cond5.preheader_crit_edge, %if.end.while.cond5.preheader_crit_edge
  %upper_list = getelementptr inbounds %struct.trace_pid_list, ptr %pid_list, i32 0, i32 3
  %3 = ptrtoint ptr %upper_list to i32, !dbg !425
  call void @__asan_load4_noabort(i32 %3), !dbg !425
  %4 = load ptr, ptr %upper_list, align 4, !dbg !425
  %tobool6.not52 = icmp eq ptr %4, null, !dbg !426
  br i1 %tobool6.not52, label %while.cond5.preheader.for.body.preheader_crit_edge, label %while.cond5.preheader.while.body7_crit_edge, !dbg !426

while.cond5.preheader.while.body7_crit_edge:      ; preds = %while.cond5.preheader
  br label %while.body7, !dbg !426

while.cond5.preheader.for.body.preheader_crit_edge: ; preds = %while.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #8, !dbg !426
  br label %for.body.preheader, !dbg !426

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %5 = phi ptr [ %11, %while.body.while.body_crit_edge ], [ %2, %if.end.while.body_crit_edge ]
  %gcov_ctr27 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !427
  %6 = add i64 %gcov_ctr27, 1, !dbg !427
  store i64 %6, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !427
  %7 = ptrtoint ptr %5 to i32, !dbg !428
  call void @__asan_load4_noabort(i32 %7), !dbg !428
  %8 = load ptr, ptr %5, align 4, !dbg !428
  %9 = ptrtoint ptr %lower_list to i32, !dbg !429
  call void @__asan_store4_noabort(i32 %9), !dbg !429
  store ptr %8, ptr %lower_list, align 4, !dbg !429
  tail call void @kfree(ptr noundef nonnull %5) #9, !dbg !430
  %10 = ptrtoint ptr %lower_list to i32, !dbg !423
  call void @__asan_load4_noabort(i32 %10), !dbg !423
  %11 = load ptr, ptr %lower_list, align 4, !dbg !423
  %tobool1.not = icmp eq ptr %11, null, !dbg !424
  br i1 %tobool1.not, label %while.body.while.cond5.preheader_crit_edge, label %while.body.while.body_crit_edge, !dbg !424, !llvm.loop !431

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8, !dbg !424
  br label %while.body, !dbg !424

while.body.while.cond5.preheader_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8, !dbg !424
  br label %while.cond5.preheader, !dbg !424

while.body7:                                      ; preds = %while.body7.while.body7_crit_edge, %while.cond5.preheader.while.body7_crit_edge
  %12 = phi ptr [ %18, %while.body7.while.body7_crit_edge ], [ %4, %while.cond5.preheader.while.body7_crit_edge ]
  %gcov_ctr28 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 2), align 16, !dbg !433
  %13 = add i64 %gcov_ctr28, 1, !dbg !433
  store i64 %13, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 2), align 16, !dbg !433
  %14 = ptrtoint ptr %12 to i32, !dbg !434
  call void @__asan_load4_noabort(i32 %14), !dbg !434
  %15 = load ptr, ptr %12, align 4, !dbg !434
  %16 = ptrtoint ptr %upper_list to i32, !dbg !435
  call void @__asan_store4_noabort(i32 %16), !dbg !435
  store ptr %15, ptr %upper_list, align 4, !dbg !435
  tail call void @kfree(ptr noundef nonnull %12) #9, !dbg !436
  %17 = ptrtoint ptr %upper_list to i32, !dbg !425
  call void @__asan_load4_noabort(i32 %17), !dbg !425
  %18 = load ptr, ptr %upper_list, align 4, !dbg !425
  %tobool6.not = icmp eq ptr %18, null, !dbg !426
  br i1 %tobool6.not, label %while.body7.for.body.preheader_crit_edge, label %while.body7.while.body7_crit_edge, !dbg !426, !llvm.loop !437

while.body7.while.body7_crit_edge:                ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #8, !dbg !426
  br label %while.body7, !dbg !426

while.body7.for.body.preheader_crit_edge:         ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #8, !dbg !426
  br label %for.body.preheader, !dbg !426

for.body.preheader:                               ; preds = %while.body7.for.body.preheader_crit_edge, %while.cond5.preheader.for.body.preheader_crit_edge
  br label %for.body, !dbg !439

for.body:                                         ; preds = %for.inc21.for.body_crit_edge, %for.body.preheader
  %i.054 = phi i32 [ %inc22, %for.inc21.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.trace_pid_list, ptr %pid_list, i32 0, i32 2, i32 %i.054, !dbg !440
  %19 = ptrtoint ptr %arrayidx to i32, !dbg !440
  call void @__asan_load4_noabort(i32 %19), !dbg !440
  %20 = load ptr, ptr %arrayidx, align 4, !dbg !440
  %tobool14.not = icmp eq ptr %20, null, !dbg !441
  br i1 %tobool14.not, label %for.body.for.inc21_crit_edge, label %for.body.for.body18_crit_edge, !dbg !441

for.body.for.body18_crit_edge:                    ; preds = %for.body
  br label %for.body18, !dbg !441

for.body.for.inc21_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8, !dbg !441
  br label %for.inc21, !dbg !441

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.body.for.body18_crit_edge
  %j.053 = phi i32 [ %inc, %for.body18.for.body18_crit_edge ], [ 0, %for.body.for.body18_crit_edge ]
  %arrayidx19 = getelementptr [256 x ptr], ptr %20, i32 0, i32 %j.053, !dbg !442
  %21 = ptrtoint ptr %arrayidx19 to i32, !dbg !442
  call void @__asan_load4_noabort(i32 %21), !dbg !442
  %22 = load ptr, ptr %arrayidx19, align 4, !dbg !442
  tail call void @kfree(ptr noundef %22) #9, !dbg !443
  %gcov_ctr29 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 3), align 8, !dbg !444
  %23 = add i64 %gcov_ctr29, 1, !dbg !444
  store i64 %23, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 3), align 8, !dbg !444
  %inc = add nuw nsw i32 %j.053, 1, !dbg !444
  %exitcond.not = icmp eq i32 %inc, 256, !dbg !445
  br i1 %exitcond.not, label %for.end, label %for.body18.for.body18_crit_edge, !dbg !446, !llvm.loop !447

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #8, !dbg !446
  br label %for.body18, !dbg !446

for.end:                                          ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #8, !dbg !449
  %gcov_ctr30 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 4), align 16, !dbg !449
  %24 = add i64 %gcov_ctr30, 1, !dbg !449
  store i64 %24, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 4), align 16, !dbg !449
  tail call void @kfree(ptr noundef nonnull %20) #9, !dbg !450
  br label %for.inc21, !dbg !451

for.inc21:                                        ; preds = %for.end, %for.body.for.inc21_crit_edge
  %gcov_ctr31 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 5), align 8, !dbg !452
  %25 = add i64 %gcov_ctr31, 1, !dbg !452
  store i64 %25, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 5), align 8, !dbg !452
  %inc22 = add nuw nsw i32 %i.054, 1, !dbg !452
  %exitcond55.not = icmp eq i32 %inc22, 256, !dbg !453
  br i1 %exitcond55.not, label %for.end23, label %for.inc21.for.body_crit_edge, !dbg !439, !llvm.loop !454

for.inc21.for.body_crit_edge:                     ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #8, !dbg !439
  br label %for.body, !dbg !439

for.end23:                                        ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #8, !dbg !456
  %gcov_ctr32 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 6), align 16, !dbg !456
  %26 = add i64 %gcov_ctr32, 1, !dbg !456
  store i64 %26, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 6), align 16, !dbg !456
  tail call void @kfree(ptr noundef nonnull %pid_list) #9, !dbg !457
  br label %cleanup, !dbg !458

cleanup:                                          ; preds = %for.end23, %if.then
  ret void, !dbg !458
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #4 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 54042573) #9
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
  %exitcond.not = icmp eq i32 %5, 26
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.2, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.3, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.4, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.5, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.6, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.7, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.8, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.9, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.10, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr.11, i8 0, i64 72, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.12, align 8
  store i64 0, ptr @__llvm_gcov_ctr.13, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) @__llvm_gcov_ctr.14, i8 0, i64 88, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.15, align 8
  store i64 0, ptr @__llvm_gcov_ctr.16, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) @__llvm_gcov_ctr.17, i8 0, i64 104, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.18, i8 0, i64 64, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.19, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.20, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.21, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @__llvm_gcov_ctr.22, i8 0, i64 216, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.23, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.24, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.25, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.26, i8 0, i64 16, i1 false)
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

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline nounwind uwtable(sync) }
attributes #5 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind uwtable(sync) }
attributes #8 = { nomerge }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !5, !7, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.gcov = !{!20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/pid_list.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../kernel/trace/pid_list.c", i32 417, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @trace_pid_list_alloc.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../kernel/trace/pid_list.c", i32 425, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../kernel/trace/pid_list.c", i32 48, i32 2}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../kernel/trace/pid_list.c", i32 24, i32 2}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/pid_list.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/pid_list.gcda", !0}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = distinct !DISubprogram(name: "trace_pid_list_is_set", scope: !1, file: !1, line: 129, type: !23, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!23 = !DISubroutineType(types: !24)
!24 = !{}
!25 = !DILocation(line: 130, scope: !22)
!26 = !DILocation(line: 139, column: 7, scope: !22)
!27 = !DILocation(line: 139, column: 6, scope: !22)
!28 = !DILocation(line: 140, column: 3, scope: !22)
!29 = !DILocation(line: 100, column: 6, scope: !30, inlinedAt: !31)
!30 = distinct !DISubprogram(name: "pid_split", scope: !1, file: !1, line: 93, type: !23, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!31 = distinct !DILocation(line: 142, column: 6, scope: !22)
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !DILocation(line: 101, column: 3, scope: !30, inlinedAt: !31)
!34 = !DILocation(line: 143, column: 3, scope: !22)
!35 = !DILocation(line: 103, column: 13, scope: !30, inlinedAt: !31)
!36 = !DILocation(line: 103, column: 17, scope: !30, inlinedAt: !31)
!37 = !DILocation(line: 145, column: 2, scope: !22)
!38 = !DILocation(line: 146, column: 16, scope: !22)
!39 = !DILocation(line: 147, column: 6, scope: !22)
!40 = !DILocation(line: 104, column: 17, scope: !30, inlinedAt: !31)
!41 = !DILocation(line: 104, column: 34, scope: !30, inlinedAt: !31)
!42 = !DILocation(line: 148, column: 17, scope: !22)
!43 = !DILocation(line: 149, column: 7, scope: !22)
!44 = !DILocation(line: 150, column: 19, scope: !22)
!45 = !DILocation(line: 118, column: 21, scope: !46, inlinedAt: !48)
!46 = distinct !DISubprogram(name: "arch_test_bit", scope: !47, file: !47, line: 116, type: !23, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!47 = !DIFile(filename: "../include/asm-generic/bitops/non-atomic.h", directory: "/llk/linux-5.17/build_arm_allyes")
!48 = distinct !DILocation(line: 150, column: 10, scope: !22)
!49 = !DILocation(line: 118, column: 16, scope: !46, inlinedAt: !48)
!50 = !DILocation(line: 118, column: 42, scope: !46, inlinedAt: !48)
!51 = !DILocation(line: 150, column: 10, scope: !22)
!52 = !DILocation(line: 150, column: 4, scope: !22)
!53 = !DILocation(line: 151, column: 2, scope: !22)
!54 = !DILocation(line: 152, column: 2, scope: !22)
!55 = !DILocation(line: 154, column: 9, scope: !22)
!56 = !DILocation(line: 154, column: 2, scope: !22)
!57 = !DILocation(line: 0, scope: !22)
!58 = !DILocation(line: 155, column: 1, scope: !22)
!59 = distinct !DISubprogram(name: "trace_pid_list_set", scope: !1, file: !1, line: 168, type: !23, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!60 = !DILocation(line: 169, scope: !59)
!61 = !DILocation(line: 178, column: 7, scope: !59)
!62 = !DILocation(line: 178, column: 6, scope: !59)
!63 = !DILocation(line: 179, column: 3, scope: !59)
!64 = !DILocation(line: 100, column: 6, scope: !30, inlinedAt: !65)
!65 = distinct !DILocation(line: 181, column: 6, scope: !59)
!66 = !DILocation(line: 101, column: 3, scope: !30, inlinedAt: !65)
!67 = !DILocation(line: 182, column: 3, scope: !59)
!68 = !DILocation(line: 103, column: 13, scope: !30, inlinedAt: !65)
!69 = !DILocation(line: 103, column: 17, scope: !30, inlinedAt: !65)
!70 = !DILocation(line: 104, column: 17, scope: !30, inlinedAt: !65)
!71 = !DILocation(line: 104, column: 34, scope: !30, inlinedAt: !65)
!72 = !DILocation(line: 105, column: 15, scope: !30, inlinedAt: !65)
!73 = !DILocation(line: 184, column: 2, scope: !59)
!74 = !DILocation(line: 185, column: 16, scope: !59)
!75 = !DILocation(line: 186, column: 7, scope: !59)
!76 = !DILocation(line: 186, column: 6, scope: !59)
!77 = !DILocation(line: 40, column: 2, scope: !78, inlinedAt: !79)
!78 = distinct !DISubprogram(name: "get_upper_chunk", scope: !1, file: !1, line: 36, type: !23, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!79 = distinct !DILocation(line: 187, column: 17, scope: !59)
!80 = !DILocation(line: 283, column: 9, scope: !81, inlinedAt: !83)
!81 = distinct !DISubprogram(name: "lock_is_held", scope: !82, file: !82, line: 281, type: !23, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!82 = !DIFile(filename: "../include/linux/lockdep.h", directory: "/llk/linux-5.17/build_arm_allyes")
!83 = distinct !DILocation(line: 40, column: 2, scope: !78, inlinedAt: !79)
!84 = !DILocation(line: 42, column: 17, scope: !78, inlinedAt: !79)
!85 = !DILocation(line: 42, column: 7, scope: !78, inlinedAt: !79)
!86 = !DILocation(line: 42, column: 6, scope: !78, inlinedAt: !79)
!87 = !DILocation(line: 46, column: 32, scope: !78, inlinedAt: !79)
!88 = !DILocation(line: 46, column: 23, scope: !78, inlinedAt: !79)
!89 = !DILocation(line: 47, column: 12, scope: !78, inlinedAt: !79)
!90 = !DILocation(line: 47, column: 29, scope: !78, inlinedAt: !79)
!91 = !DILocation(line: 48, column: 2, scope: !78, inlinedAt: !79)
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !DILocation(line: 49, column: 14, scope: !78, inlinedAt: !79)
!94 = !DILocation(line: 54, column: 16, scope: !78, inlinedAt: !79)
!95 = !DILocation(line: 54, column: 34, scope: !78, inlinedAt: !79)
!96 = !DILocation(line: 54, column: 6, scope: !78, inlinedAt: !79)
!97 = !DILocation(line: 55, column: 19, scope: !78, inlinedAt: !79)
!98 = !DILocation(line: 55, column: 29, scope: !78, inlinedAt: !79)
!99 = !DILocation(line: 55, column: 3, scope: !78, inlinedAt: !79)
!100 = !DILocation(line: 43, column: 3, scope: !78, inlinedAt: !79)
!101 = !DILocation(line: 189, column: 8, scope: !59)
!102 = !DILocation(line: 190, column: 4, scope: !59)
!103 = !DILocation(line: 57, column: 9, scope: !78, inlinedAt: !79)
!104 = !DILocation(line: 192, column: 29, scope: !59)
!105 = !DILocation(line: 192, column: 27, scope: !59)
!106 = !DILocation(line: 193, column: 2, scope: !59)
!107 = !DILocation(line: 0, scope: !59)
!108 = !DILocation(line: 194, column: 16, scope: !59)
!109 = !DILocation(line: 195, column: 7, scope: !59)
!110 = !DILocation(line: 195, column: 6, scope: !59)
!111 = !DILocation(line: 16, column: 2, scope: !112, inlinedAt: !113)
!112 = distinct !DISubprogram(name: "get_lower_chunk", scope: !1, file: !1, line: 12, type: !23, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!113 = distinct !DILocation(line: 196, column: 17, scope: !59)
!114 = !DILocation(line: 283, column: 9, scope: !81, inlinedAt: !115)
!115 = distinct !DILocation(line: 16, column: 2, scope: !112, inlinedAt: !113)
!116 = !DILocation(line: 18, column: 17, scope: !112, inlinedAt: !113)
!117 = !DILocation(line: 18, column: 7, scope: !112, inlinedAt: !113)
!118 = !DILocation(line: 18, column: 6, scope: !112, inlinedAt: !113)
!119 = !DILocation(line: 22, column: 32, scope: !112, inlinedAt: !113)
!120 = !DILocation(line: 22, column: 23, scope: !112, inlinedAt: !113)
!121 = !DILocation(line: 23, column: 12, scope: !112, inlinedAt: !113)
!122 = !DILocation(line: 23, column: 29, scope: !112, inlinedAt: !113)
!123 = !DILocation(line: 24, column: 2, scope: !112, inlinedAt: !113)
!124 = !DILocation(line: 25, column: 14, scope: !112, inlinedAt: !113)
!125 = !DILocation(line: 30, column: 16, scope: !112, inlinedAt: !113)
!126 = !DILocation(line: 30, column: 34, scope: !112, inlinedAt: !113)
!127 = !DILocation(line: 30, column: 6, scope: !112, inlinedAt: !113)
!128 = !DILocation(line: 31, column: 19, scope: !112, inlinedAt: !113)
!129 = !DILocation(line: 31, column: 29, scope: !112, inlinedAt: !113)
!130 = !DILocation(line: 31, column: 3, scope: !112, inlinedAt: !113)
!131 = !DILocation(line: 19, column: 3, scope: !112, inlinedAt: !113)
!132 = !DILocation(line: 198, column: 8, scope: !59)
!133 = !DILocation(line: 199, column: 4, scope: !59)
!134 = !DILocation(line: 33, column: 9, scope: !112, inlinedAt: !113)
!135 = !DILocation(line: 201, column: 31, scope: !59)
!136 = !DILocation(line: 201, column: 29, scope: !59)
!137 = !DILocation(line: 202, column: 2, scope: !59)
!138 = !DILocation(line: 203, column: 2, scope: !59)
!139 = !DILocation(line: 204, column: 2, scope: !59)
!140 = !DILocation(line: 206, column: 2, scope: !59)
!141 = !DILocation(line: 207, column: 2, scope: !59)
!142 = !DILocation(line: 208, column: 1, scope: !59)
!143 = distinct !DISubprogram(name: "trace_pid_list_clear", scope: !1, file: !1, line: 221, type: !23, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!144 = !DILocation(line: 222, scope: !143)
!145 = !DILocation(line: 230, column: 7, scope: !143)
!146 = !DILocation(line: 230, column: 6, scope: !143)
!147 = !DILocation(line: 231, column: 3, scope: !143)
!148 = !DILocation(line: 100, column: 6, scope: !30, inlinedAt: !149)
!149 = distinct !DILocation(line: 233, column: 6, scope: !143)
!150 = !DILocation(line: 101, column: 3, scope: !30, inlinedAt: !149)
!151 = !DILocation(line: 234, column: 3, scope: !143)
!152 = !DILocation(line: 103, column: 13, scope: !30, inlinedAt: !149)
!153 = !DILocation(line: 103, column: 17, scope: !30, inlinedAt: !149)
!154 = !DILocation(line: 105, column: 15, scope: !30, inlinedAt: !149)
!155 = !DILocation(line: 236, column: 2, scope: !143)
!156 = !DILocation(line: 237, column: 16, scope: !143)
!157 = !DILocation(line: 238, column: 7, scope: !143)
!158 = !DILocation(line: 238, column: 6, scope: !143)
!159 = !DILocation(line: 239, column: 3, scope: !143)
!160 = !DILocation(line: 104, column: 17, scope: !30, inlinedAt: !149)
!161 = !DILocation(line: 104, column: 34, scope: !30, inlinedAt: !149)
!162 = !DILocation(line: 241, column: 16, scope: !143)
!163 = !DILocation(line: 242, column: 7, scope: !143)
!164 = !DILocation(line: 242, column: 6, scope: !143)
!165 = !DILocation(line: 243, column: 3, scope: !143)
!166 = !DILocation(line: 245, column: 2, scope: !143)
!167 = !DILocation(line: 248, column: 6, scope: !143)
!168 = !DILocation(line: 248, column: 51, scope: !143)
!169 = !DILocation(line: 63, column: 2, scope: !170, inlinedAt: !171)
!170 = distinct !DISubprogram(name: "put_lower_chunk", scope: !1, file: !1, line: 60, type: !23, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!171 = distinct !DILocation(line: 249, column: 3, scope: !143)
!172 = !DILocation(line: 283, column: 9, scope: !81, inlinedAt: !173)
!173 = distinct !DILocation(line: 63, column: 2, scope: !170, inlinedAt: !171)
!174 = !DILocation(line: 65, column: 26, scope: !170, inlinedAt: !171)
!175 = !DILocation(line: 65, column: 14, scope: !170, inlinedAt: !171)
!176 = !DILocation(line: 66, column: 23, scope: !170, inlinedAt: !171)
!177 = !DILocation(line: 67, column: 12, scope: !170, inlinedAt: !171)
!178 = !DILocation(line: 67, column: 29, scope: !170, inlinedAt: !171)
!179 = !DILocation(line: 250, column: 29, scope: !143)
!180 = !DILocation(line: 88, column: 12, scope: !181, inlinedAt: !182)
!181 = distinct !DISubprogram(name: "upper_empty", scope: !1, file: !1, line: 80, type: !23, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!182 = distinct !DILocation(line: 251, column: 7, scope: !143)
!183 = !DILocation(line: 90, column: 13, scope: !181, inlinedAt: !182)
!184 = !DILocation(line: 251, column: 7, scope: !143)
!185 = !DILocation(line: 252, column: 20, scope: !143)
!186 = !DILocation(line: 73, column: 2, scope: !187, inlinedAt: !188)
!187 = distinct !DISubprogram(name: "put_upper_chunk", scope: !1, file: !1, line: 70, type: !23, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!188 = distinct !DILocation(line: 252, column: 4, scope: !143)
!189 = !DILocation(line: 283, column: 9, scope: !81, inlinedAt: !190)
!190 = distinct !DILocation(line: 73, column: 2, scope: !187, inlinedAt: !188)
!191 = !DILocation(line: 75, column: 26, scope: !187, inlinedAt: !188)
!192 = !DILocation(line: 75, column: 14, scope: !187, inlinedAt: !188)
!193 = !DILocation(line: 76, column: 23, scope: !187, inlinedAt: !188)
!194 = !DILocation(line: 77, column: 12, scope: !187, inlinedAt: !188)
!195 = !DILocation(line: 77, column: 29, scope: !187, inlinedAt: !188)
!196 = !DILocation(line: 253, column: 28, scope: !143)
!197 = !DILocation(line: 254, column: 3, scope: !143)
!198 = !DILocation(line: 255, column: 2, scope: !143)
!199 = !DILocation(line: 248, column: 54, scope: !143)
!200 = !DILocation(line: 257, column: 2, scope: !143)
!201 = !DILocation(line: 258, column: 2, scope: !143)
!202 = !DILocation(line: 0, scope: !143)
!203 = !DILocation(line: 259, column: 1, scope: !143)
!204 = distinct !DISubprogram(name: "trace_pid_list_next", scope: !1, file: !1, line: 273, type: !23, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!205 = !DILocation(line: 275, scope: !204)
!206 = !DILocation(line: 283, column: 7, scope: !204)
!207 = !DILocation(line: 283, column: 6, scope: !204)
!208 = !DILocation(line: 284, column: 3, scope: !204)
!209 = !DILocation(line: 100, column: 6, scope: !30, inlinedAt: !210)
!210 = distinct !DILocation(line: 286, column: 6, scope: !204)
!211 = !DILocation(line: 101, column: 3, scope: !30, inlinedAt: !210)
!212 = !DILocation(line: 287, column: 3, scope: !204)
!213 = !DILocation(line: 103, column: 13, scope: !30, inlinedAt: !210)
!214 = !DILocation(line: 289, column: 2, scope: !204)
!215 = !DILocation(line: 105, column: 15, scope: !30, inlinedAt: !210)
!216 = !DILocation(line: 104, column: 17, scope: !30, inlinedAt: !210)
!217 = !DILocation(line: 104, column: 34, scope: !30, inlinedAt: !210)
!218 = !DILocation(line: 103, column: 17, scope: !30, inlinedAt: !210)
!219 = !DILocation(line: 290, column: 2, scope: !204)
!220 = !DILocation(line: 291, column: 17, scope: !204)
!221 = !DILocation(line: 293, column: 8, scope: !204)
!222 = !DILocation(line: 293, column: 7, scope: !204)
!223 = !DILocation(line: 294, column: 4, scope: !204)
!224 = !DILocation(line: 297, column: 18, scope: !204)
!225 = !DILocation(line: 298, column: 9, scope: !204)
!226 = !DILocation(line: 298, column: 8, scope: !204)
!227 = !DILocation(line: 299, column: 5, scope: !204)
!228 = !DILocation(line: 301, column: 12, scope: !204)
!229 = !DILocation(line: 303, column: 14, scope: !204)
!230 = !DILocation(line: 303, column: 8, scope: !204)
!231 = !DILocation(line: 305, column: 3, scope: !204)
!232 = !DILocation(line: 296, column: 38, scope: !204)
!233 = !DILocation(line: 296, column: 17, scope: !204)
!234 = !DILocation(line: 296, column: 3, scope: !204)
!235 = distinct !{!235, !234, !231}
!236 = !DILocation(line: 306, column: 2, scope: !204)
!237 = !DILocation(line: 281, column: 15, scope: !204)
!238 = !DILocation(line: 290, column: 37, scope: !204)
!239 = !DILocation(line: 290, column: 16, scope: !204)
!240 = distinct !{!240, !219, !236}
!241 = !DILocation(line: 309, column: 2, scope: !204)
!242 = !DILocation(line: 310, column: 6, scope: !204)
!243 = !DILocation(line: 310, column: 13, scope: !204)
!244 = !DILocation(line: 311, column: 3, scope: !204)
!245 = !DILocation(line: 313, column: 19, scope: !204)
!246 = !DILocation(line: 113, column: 32, scope: !247, inlinedAt: !248)
!247 = distinct !DISubprogram(name: "pid_join", scope: !1, file: !1, line: 110, type: !23, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!248 = distinct !DILocation(line: 313, column: 10, scope: !204)
!249 = !DILocation(line: 114, column: 26, scope: !247, inlinedAt: !248)
!250 = !DILocation(line: 113, column: 49, scope: !247, inlinedAt: !248)
!251 = !DILocation(line: 114, column: 43, scope: !247, inlinedAt: !248)
!252 = !DILocation(line: 313, column: 8, scope: !204)
!253 = !DILocation(line: 314, column: 2, scope: !204)
!254 = !DILocation(line: 0, scope: !204)
!255 = !DILocation(line: 315, column: 1, scope: !204)
!256 = distinct !DISubprogram(name: "trace_pid_list_first", scope: !1, file: !1, line: 327, type: !23, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!257 = !DILocation(line: 328, scope: !256)
!258 = !DILocation(line: 329, column: 9, scope: !256)
!259 = !DILocation(line: 329, column: 2, scope: !256)
!260 = distinct !DISubprogram(name: "trace_pid_list_alloc", scope: !1, file: !1, line: 411, type: !23, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!261 = !DILocation(line: 412, scope: !260)
!262 = !DILocation(line: 417, column: 2, scope: !260)
!263 = !DILocation(line: 390, column: 26, scope: !264, inlinedAt: !266)
!264 = distinct !DISubprogram(name: "__kmalloc_index", scope: !265, file: !265, line: 369, type: !23, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!265 = !DIFile(filename: "../include/linux/slab.h", directory: "/llk/linux-5.17/build_arm_allyes")
!266 = distinct !DILocation(line: 576, column: 11, scope: !267, inlinedAt: !268)
!267 = distinct !DISubprogram(name: "kmalloc", scope: !265, file: !265, line: 567, type: !23, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!268 = distinct !DILocation(line: 714, column: 9, scope: !269, inlinedAt: !270)
!269 = distinct !DISubprogram(name: "kzalloc", scope: !265, file: !265, line: 712, type: !23, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!270 = distinct !DILocation(line: 419, column: 13, scope: !260)
!271 = !DILocation(line: 582, column: 33, scope: !267, inlinedAt: !268)
!272 = !DILocation(line: 339, column: 3, scope: !273, inlinedAt: !274)
!273 = distinct !DISubprogram(name: "kmalloc_type", scope: !265, file: !265, line: 332, type: !23, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!274 = distinct !DILocation(line: 582, column: 20, scope: !267, inlinedAt: !268)
!275 = !DILocation(line: 582, column: 5, scope: !267, inlinedAt: !268)
!276 = !DILocation(line: 581, column: 10, scope: !267, inlinedAt: !268)
!277 = !DILocation(line: 420, column: 7, scope: !260)
!278 = !DILocation(line: 420, column: 6, scope: !260)
!279 = !DILocation(line: 421, column: 3, scope: !260)
!280 = !DILocation(line: 423, column: 27, scope: !260)
!281 = !DILocation(line: 39, column: 10, scope: !282, inlinedAt: !284)
!282 = distinct !DISubprogram(name: "init_irq_work", scope: !283, file: !283, line: 37, type: !23, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!283 = !DIFile(filename: "../include/linux/irq_work.h", directory: "/llk/linux-5.17/build_arm_allyes")
!284 = distinct !DILocation(line: 423, column: 2, scope: !260)
!285 = !DILocation(line: 425, column: 2, scope: !260)
!286 = !DILocation(line: 427, column: 2, scope: !260)
!287 = !DILocation(line: 389, column: 26, scope: !264, inlinedAt: !288)
!288 = distinct !DILocation(line: 576, column: 11, scope: !267, inlinedAt: !289)
!289 = distinct !DILocation(line: 714, column: 9, scope: !269, inlinedAt: !290)
!290 = distinct !DILocation(line: 430, column: 11, scope: !260)
!291 = !DILocation(line: 582, column: 33, scope: !267, inlinedAt: !289)
!292 = !DILocation(line: 339, column: 3, scope: !273, inlinedAt: !293)
!293 = distinct !DILocation(line: 582, column: 20, scope: !267, inlinedAt: !289)
!294 = !DILocation(line: 582, column: 5, scope: !267, inlinedAt: !289)
!295 = !DILocation(line: 581, column: 10, scope: !267, inlinedAt: !289)
!296 = !DILocation(line: 431, column: 8, scope: !260)
!297 = !DILocation(line: 431, column: 7, scope: !260)
!298 = !DILocation(line: 0, scope: !260)
!299 = !DILocation(line: 433, column: 17, scope: !260)
!300 = !DILocation(line: 433, column: 27, scope: !260)
!301 = !DILocation(line: 433, column: 15, scope: !260)
!302 = !DILocation(line: 434, column: 24, scope: !260)
!303 = !DILocation(line: 435, column: 30, scope: !260)
!304 = !DILocation(line: 427, column: 32, scope: !260)
!305 = !DILocation(line: 427, column: 16, scope: !260)
!306 = distinct !{!306, !286, !307}
!307 = !DILocation(line: 436, column: 2, scope: !260)
!308 = !DILocation(line: 438, column: 2, scope: !260)
!309 = !DILocation(line: 390, column: 26, scope: !264, inlinedAt: !310)
!310 = distinct !DILocation(line: 576, column: 11, scope: !267, inlinedAt: !311)
!311 = distinct !DILocation(line: 714, column: 9, scope: !269, inlinedAt: !312)
!312 = distinct !DILocation(line: 441, column: 11, scope: !260)
!313 = !DILocation(line: 582, column: 33, scope: !267, inlinedAt: !311)
!314 = !DILocation(line: 339, column: 3, scope: !273, inlinedAt: !315)
!315 = distinct !DILocation(line: 582, column: 20, scope: !267, inlinedAt: !311)
!316 = !DILocation(line: 582, column: 5, scope: !267, inlinedAt: !311)
!317 = !DILocation(line: 581, column: 10, scope: !267, inlinedAt: !311)
!318 = !DILocation(line: 442, column: 8, scope: !260)
!319 = !DILocation(line: 442, column: 7, scope: !260)
!320 = !DILocation(line: 444, column: 17, scope: !260)
!321 = !DILocation(line: 444, column: 27, scope: !260)
!322 = !DILocation(line: 444, column: 15, scope: !260)
!323 = !DILocation(line: 445, column: 24, scope: !260)
!324 = !DILocation(line: 446, column: 30, scope: !260)
!325 = !DILocation(line: 438, column: 32, scope: !260)
!326 = !DILocation(line: 438, column: 16, scope: !260)
!327 = distinct !{!327, !308, !328}
!328 = !DILocation(line: 447, column: 2, scope: !260)
!329 = !DILocation(line: 449, column: 9, scope: !260)
!330 = !DILocation(line: 449, column: 2, scope: !260)
!331 = !DILocation(line: 450, column: 1, scope: !260)
!332 = distinct !DISubprogram(name: "pid_list_refill_irq", scope: !1, file: !1, line: 332, type: !23, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!333 = !DILocation(line: 333, scope: !332)
!334 = !DILocation(line: 334, column: 36, scope: !332)
!335 = !DILocation(line: 336, column: 2, scope: !332)
!336 = !DILocation(line: 336, column: 21, scope: !332)
!337 = !DILocation(line: 337, column: 2, scope: !332)
!338 = !DILocation(line: 337, column: 21, scope: !332)
!339 = !DILocation(line: 343, column: 2, scope: !332)
!340 = !DILocation(line: 0, scope: !332)
!341 = !DILocation(line: 346, column: 2, scope: !332)
!342 = !DILocation(line: 347, column: 40, scope: !332)
!343 = !DILocation(line: 348, column: 40, scope: !332)
!344 = !DILocation(line: 348, column: 28, scope: !332)
!345 = !DILocation(line: 349, column: 2, scope: !332)
!346 = !DILocation(line: 351, column: 18, scope: !332)
!347 = !DILocation(line: 351, column: 23, scope: !332)
!348 = !DILocation(line: 351, column: 26, scope: !332)
!349 = !DILocation(line: 351, column: 38, scope: !332)
!350 = !DILocation(line: 351, column: 6, scope: !332)
!351 = !DILocation(line: 352, column: 3, scope: !332)
!352 = !DILocation(line: 354, column: 20, scope: !332)
!353 = !DILocation(line: 365, column: 20, scope: !332)
!354 = !DILocation(line: 365, column: 2, scope: !332)
!355 = !DILocation(line: 354, column: 2, scope: !332)
!356 = !DILocation(line: 389, column: 26, scope: !264, inlinedAt: !357)
!357 = distinct !DILocation(line: 576, column: 11, scope: !267, inlinedAt: !358)
!358 = distinct !DILocation(line: 714, column: 9, scope: !269, inlinedAt: !359)
!359 = distinct !DILocation(line: 357, column: 11, scope: !332)
!360 = !DILocation(line: 582, column: 33, scope: !267, inlinedAt: !358)
!361 = !DILocation(line: 339, column: 3, scope: !273, inlinedAt: !362)
!362 = distinct !DILocation(line: 582, column: 20, scope: !267, inlinedAt: !358)
!363 = !DILocation(line: 582, column: 5, scope: !267, inlinedAt: !358)
!364 = !DILocation(line: 581, column: 10, scope: !267, inlinedAt: !358)
!365 = !DILocation(line: 358, column: 8, scope: !332)
!366 = !DILocation(line: 358, column: 7, scope: !332)
!367 = !DILocation(line: 360, column: 17, scope: !332)
!368 = !DILocation(line: 360, column: 15, scope: !332)
!369 = !DILocation(line: 362, column: 7, scope: !332)
!370 = !DILocation(line: 354, column: 23, scope: !332)
!371 = distinct !{!371, !355, !372}
!372 = !DILocation(line: 363, column: 2, scope: !332)
!373 = !DILocation(line: 365, column: 23, scope: !332)
!374 = !DILocation(line: 390, column: 26, scope: !264, inlinedAt: !375)
!375 = distinct !DILocation(line: 576, column: 11, scope: !267, inlinedAt: !376)
!376 = distinct !DILocation(line: 714, column: 9, scope: !269, inlinedAt: !377)
!377 = distinct !DILocation(line: 368, column: 11, scope: !332)
!378 = !DILocation(line: 582, column: 33, scope: !267, inlinedAt: !376)
!379 = !DILocation(line: 339, column: 3, scope: !273, inlinedAt: !380)
!380 = distinct !DILocation(line: 582, column: 20, scope: !267, inlinedAt: !376)
!381 = !DILocation(line: 582, column: 5, scope: !267, inlinedAt: !376)
!382 = !DILocation(line: 581, column: 10, scope: !267, inlinedAt: !376)
!383 = !DILocation(line: 369, column: 8, scope: !332)
!384 = !DILocation(line: 369, column: 7, scope: !332)
!385 = !DILocation(line: 371, column: 17, scope: !332)
!386 = !DILocation(line: 371, column: 15, scope: !332)
!387 = !DILocation(line: 373, column: 7, scope: !332)
!388 = distinct !{!388, !354, !389}
!389 = !DILocation(line: 374, column: 2, scope: !332)
!390 = !DILocation(line: 376, column: 2, scope: !332)
!391 = !DILocation(line: 377, column: 6, scope: !332)
!392 = !DILocation(line: 378, column: 17, scope: !332)
!393 = !DILocation(line: 378, column: 27, scope: !332)
!394 = !DILocation(line: 378, column: 15, scope: !332)
!395 = !DILocation(line: 379, column: 26, scope: !332)
!396 = !DILocation(line: 379, column: 24, scope: !332)
!397 = !DILocation(line: 380, column: 31, scope: !332)
!398 = !DILocation(line: 381, column: 2, scope: !332)
!399 = !DILocation(line: 382, column: 6, scope: !332)
!400 = !DILocation(line: 383, column: 17, scope: !332)
!401 = !DILocation(line: 383, column: 27, scope: !332)
!402 = !DILocation(line: 383, column: 15, scope: !332)
!403 = !DILocation(line: 384, column: 26, scope: !332)
!404 = !DILocation(line: 384, column: 24, scope: !332)
!405 = !DILocation(line: 385, column: 31, scope: !332)
!406 = !DILocation(line: 386, column: 2, scope: !332)
!407 = !DILocation(line: 387, column: 2, scope: !332)
!408 = !DILocation(line: 394, column: 18, scope: !332)
!409 = !DILocation(line: 394, column: 23, scope: !332)
!410 = !DILocation(line: 394, column: 26, scope: !332)
!411 = !DILocation(line: 394, column: 38, scope: !332)
!412 = !DILocation(line: 394, column: 6, scope: !332)
!413 = !DILocation(line: 401, column: 2, scope: !332)
!414 = !DILocation(line: 402, column: 1, scope: !332)
!415 = distinct !DISubprogram(name: "trace_pid_list_free", scope: !1, file: !1, line: 457, type: !23, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!416 = !DILocation(line: 458, scope: !415)
!417 = !DILocation(line: 463, column: 7, scope: !415)
!418 = !DILocation(line: 463, column: 6, scope: !415)
!419 = !DILocation(line: 0, scope: !415)
!420 = !DILocation(line: 464, column: 3, scope: !415)
!421 = !DILocation(line: 466, column: 27, scope: !415)
!422 = !DILocation(line: 466, column: 2, scope: !415)
!423 = !DILocation(line: 468, column: 19, scope: !415)
!424 = !DILocation(line: 468, column: 2, scope: !415)
!425 = !DILocation(line: 476, column: 19, scope: !415)
!426 = !DILocation(line: 476, column: 2, scope: !415)
!427 = !DILocation(line: 469, column: 3, scope: !415)
!428 = !DILocation(line: 472, column: 48, scope: !415)
!429 = !DILocation(line: 472, column: 24, scope: !415)
!430 = !DILocation(line: 473, column: 3, scope: !415)
!431 = distinct !{!431, !424, !432}
!432 = !DILocation(line: 474, column: 2, scope: !415)
!433 = !DILocation(line: 477, column: 3, scope: !415)
!434 = !DILocation(line: 480, column: 48, scope: !415)
!435 = !DILocation(line: 480, column: 24, scope: !415)
!436 = !DILocation(line: 481, column: 3, scope: !415)
!437 = distinct !{!437, !426, !438}
!438 = !DILocation(line: 482, column: 2, scope: !415)
!439 = !DILocation(line: 484, column: 2, scope: !415)
!440 = !DILocation(line: 485, column: 11, scope: !415)
!441 = !DILocation(line: 486, column: 7, scope: !415)
!442 = !DILocation(line: 488, column: 13, scope: !415)
!443 = !DILocation(line: 489, column: 5, scope: !415)
!444 = !DILocation(line: 487, column: 34, scope: !415)
!445 = !DILocation(line: 487, column: 18, scope: !415)
!446 = !DILocation(line: 487, column: 4, scope: !415)
!447 = distinct !{!447, !446, !448}
!448 = !DILocation(line: 490, column: 4, scope: !415)
!449 = !DILocation(line: 491, column: 10, scope: !415)
!450 = !DILocation(line: 491, column: 4, scope: !415)
!451 = !DILocation(line: 492, column: 3, scope: !415)
!452 = !DILocation(line: 484, column: 32, scope: !415)
!453 = !DILocation(line: 484, column: 16, scope: !415)
!454 = distinct !{!454, !439, !455}
!455 = !DILocation(line: 493, column: 2, scope: !415)
!456 = !DILocation(line: 494, column: 8, scope: !415)
!457 = !DILocation(line: 494, column: 2, scope: !415)
!458 = !DILocation(line: 495, column: 1, scope: !415)
