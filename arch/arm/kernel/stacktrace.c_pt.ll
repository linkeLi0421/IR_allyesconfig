; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/stacktrace.c_pt.bc'
source_filename = "../arch/arm/kernel/stacktrace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+walk_stackframe\22, \22a\22\09"
module asm "\09.weak\09__crc_walk_stackframe\09\09\09\09"
module asm "\09.long\09__crc_walk_stackframe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_walk_stackframe:\09\09\09\09\09"
module asm "\09.asciz \09\22walk_stackframe\22\09\09\09\09\09"
module asm "__kstrtabns_walk_stackframe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+save_stack_trace_tsk\22, \22a\22\09"
module asm "\09.weak\09__crc_save_stack_trace_tsk\09\09\09\09"
module asm "\09.long\09__crc_save_stack_trace_tsk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_save_stack_trace_tsk:\09\09\09\09\09"
module asm "\09.asciz \09\22save_stack_trace_tsk\22\09\09\09\09\09"
module asm "__kstrtabns_save_stack_trace_tsk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+save_stack_trace\22, \22a\22\09"
module asm "\09.weak\09__crc_save_stack_trace\09\09\09\09"
module asm "\09.long\09__crc_save_stack_trace\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_save_stack_trace:\09\09\09\09\09"
module asm "\09.asciz \09\22save_stack_trace\22\09\09\09\09\09"
module asm "__kstrtabns_save_stack_trace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.stackframe = type { i32, i32, i32, i32, ptr, ptr }
%struct.stack_trace = type { i32, i32, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pt_regs = type { [18 x i32] }

@__kstrtab_walk_stackframe = external dso_local constant [0 x i8], align 1
@__kstrtabns_walk_stackframe = external dso_local constant [0 x i8], align 1
@__ksymtab_walk_stackframe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @walk_stackframe to i32), ptr @__kstrtab_walk_stackframe, ptr @__kstrtabns_walk_stackframe }, section "___ksymtab+walk_stackframe", align 4
@__kstrtab_save_stack_trace_tsk = external dso_local constant [0 x i8], align 1
@__kstrtabns_save_stack_trace_tsk = external dso_local constant [0 x i8], align 1
@__ksymtab_save_stack_trace_tsk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @save_stack_trace_tsk to i32), ptr @__kstrtab_save_stack_trace_tsk, ptr @__kstrtabns_save_stack_trace_tsk }, section "___ksymtab+save_stack_trace_tsk", align 4
@__kstrtab_save_stack_trace = external dso_local constant [0 x i8], align 1
@__kstrtabns_save_stack_trace = external dso_local constant [0 x i8], align 1
@__ksymtab_save_stack_trace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @save_stack_trace to i32), ptr @__kstrtab_save_stack_trace, ptr @__kstrtabns_save_stack_trace }, section "___ksymtab_gpl+save_stack_trace", align 4
@__entry_text_start = external dso_local global [0 x i8], align 1
@__entry_text_end = external dso_local global [0 x i8], align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_save_stack_trace, ptr @__ksymtab_save_stack_trace_tsk, ptr @__ksymtab_walk_stackframe], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @walk_stackframe(ptr noundef %frame, ptr nocapture noundef readonly %fn, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %call = tail call i32 %fn(ptr noundef %frame, ptr noundef %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end:                                           ; preds = %while.body
  %call1 = tail call i32 @unwind_frame(ptr noundef %frame) #8
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unwind_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @save_stack_trace_regs(ptr nocapture noundef readonly %regs, ptr noundef %trace) local_unnamed_addr #0 align 64 {
entry:
  %frame = alloca %struct.stackframe, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %frame) #6
  %0 = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 1
  %1 = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 2
  %2 = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 3
  %3 = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 4
  %4 = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 5
  %skip = getelementptr inbounds %struct.stack_trace, ptr %trace, i32 0, i32 3
  %5 = load i32, ptr %skip, align 4
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 11
  %6 = load i32, ptr %arrayidx, align 4
  store i32 %6, ptr %frame, align 4
  %arrayidx4 = getelementptr [18 x i32], ptr %regs, i32 0, i32 13
  %7 = load i32, ptr %arrayidx4, align 4
  store i32 %7, ptr %0, align 4
  %arrayidx6 = getelementptr [18 x i32], ptr %regs, i32 0, i32 14
  %8 = load i32, ptr %arrayidx6, align 4
  store i32 %8, ptr %1, align 4
  %arrayidx8 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %9 = load i32, ptr %arrayidx8, align 4
  store i32 %9, ptr %2, align 4
  store ptr null, ptr %3, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %task, align 8
  store ptr %12, ptr %4, align 4
  %entries.i = getelementptr inbounds %struct.stack_trace, ptr %trace, i32 0, i32 2
  %max_entries.i = getelementptr inbounds %struct.stack_trace, ptr %trace, i32 0, i32 1
  br label %if.end.i15

if.end.i15:                                       ; preds = %if.end.i.if.end.i15_crit_edge, %entry
  %data.sroa.8.0 = phi i32 [ %5, %entry ], [ %data.sroa.8.120, %if.end.i.if.end.i15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data.sroa.8.0)
  %tobool3.not.i = icmp eq i32 %data.sroa.8.0, 0
  br i1 %tobool3.not.i, label %if.end6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #7
  %dec.i = add i32 %data.sroa.8.0, -1
  br label %if.end.i

if.end6.i:                                        ; preds = %if.end.i15
  %13 = load i32, ptr %2, align 4
  %14 = load ptr, ptr %entries.i, align 4
  %15 = load i32, ptr %trace, align 4
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %trace, align 4
  %arrayidx.i = getelementptr i32, ptr %14, i32 %15
  store i32 %13, ptr %arrayidx.i, align 4
  %16 = load i32, ptr %trace, align 4
  %17 = load i32, ptr %max_entries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %17)
  %cmp.not.i = icmp ult i32 %16, %17
  br i1 %cmp.not.i, label %if.end9.i, label %if.end6.i.walk_stackframe.exit_crit_edge

if.end6.i.walk_stackframe.exit_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %walk_stackframe.exit

if.end9.i:                                        ; preds = %if.end6.i
  %18 = load i32, ptr %2, align 4
  %19 = inttoptr i32 %18 to ptr
  %cmp.i.i.i = icmp uge ptr %19, @__entry_text_start
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 1
  %cmp1.i.i.i = icmp ule ptr %add.ptr.i.i.i, @__entry_text_end
  %20 = and i1 %cmp.i.i.i, %cmp1.i.i.i
  br i1 %20, label %if.end13.i, label %if.end9.i.if.end.i_crit_edge

if.end9.i.if.end.i_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end13.i:                                       ; preds = %if.end9.i
  %21 = load i32, ptr %0, align 4
  %22 = inttoptr i32 %21 to ptr
  %arrayidx14.i = getelementptr %struct.pt_regs, ptr %22, i32 1
  %23 = ptrtoint ptr %arrayidx14.i to i32
  %add.i = add i32 %21, 16383
  %and.i16 = and i32 %add.i, -16384
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i16, i32 %23)
  %cmp16.i = icmp ult i32 %and.i16, %23
  br i1 %cmp16.i, label %if.end13.i.if.end.i_crit_edge, label %save_trace.exit

if.end13.i.if.end.i_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

save_trace.exit:                                  ; preds = %if.end13.i
  %arrayidx19.i = getelementptr [18 x i32], ptr %22, i32 0, i32 15
  %24 = load i32, ptr %arrayidx19.i, align 4
  %25 = load ptr, ptr %entries.i, align 4
  %inc22.i = add nuw i32 %16, 1
  store i32 %inc22.i, ptr %trace, align 4
  %arrayidx23.i = getelementptr i32, ptr %25, i32 %16
  store i32 %24, ptr %arrayidx23.i, align 4
  %26 = load i32, ptr %trace, align 4
  %27 = load i32, ptr %max_entries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %27)
  %cmp26.i.not = icmp ult i32 %26, %27
  br i1 %cmp26.i.not, label %save_trace.exit.if.end.i_crit_edge, label %save_trace.exit.walk_stackframe.exit_crit_edge

save_trace.exit.walk_stackframe.exit_crit_edge:   ; preds = %save_trace.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %walk_stackframe.exit

save_trace.exit.if.end.i_crit_edge:               ; preds = %save_trace.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %save_trace.exit.if.end.i_crit_edge, %if.end13.i.if.end.i_crit_edge, %if.end9.i.if.end.i_crit_edge, %if.then4.i
  %data.sroa.8.120 = phi i32 [ 0, %save_trace.exit.if.end.i_crit_edge ], [ %dec.i, %if.then4.i ], [ 0, %if.end9.i.if.end.i_crit_edge ], [ 0, %if.end13.i.if.end.i_crit_edge ]
  %call1.i = call i32 @unwind_frame(ptr noundef nonnull %frame) #8
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.i.walk_stackframe.exit_crit_edge, label %if.end.i.if.end.i15_crit_edge

if.end.i.if.end.i15_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i15

if.end.i.walk_stackframe.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %walk_stackframe.exit

walk_stackframe.exit:                             ; preds = %if.end.i.walk_stackframe.exit_crit_edge, %save_trace.exit.walk_stackframe.exit_crit_edge, %if.end6.i.walk_stackframe.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %frame) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @save_stack_trace_tsk(ptr noundef %tsk, ptr noundef %trace) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__save_stack_trace(ptr noundef %tsk, ptr noundef %trace, i32 noundef 1) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__save_stack_trace(ptr noundef %tsk, ptr noundef %trace, i32 noundef %nosched) #3 align 64 {
entry:
  %frame = alloca %struct.stackframe, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %frame) #6
  %0 = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 1
  %1 = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 3
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %4, %tsk
  br i1 %cmp.not, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %5 = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 5
  %6 = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 4
  %7 = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 2
  %skip = getelementptr inbounds %struct.stack_trace, ptr %trace, i32 0, i32 3
  %8 = load i32, ptr %skip, align 4
  %add = add i32 %8, 2
  %9 = tail call ptr @llvm.frameaddress.p0(i32 0)
  %10 = ptrtoint ptr %9 to i32
  store i32 %10, ptr %frame, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !0)
  store i32 %11, ptr %0, align 4
  %12 = tail call ptr @llvm.returnaddress(i32 0)
  %13 = ptrtoint ptr %12 to i32
  store i32 %13, ptr %7, align 4
  store i32 ptrtoint (ptr @__save_stack_trace to i32), ptr %1, align 4
  store ptr null, ptr %6, align 4
  store ptr %tsk, ptr %5, align 4
  %entries.i = getelementptr inbounds %struct.stack_trace, ptr %trace, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nosched)
  %tobool.not.i8 = icmp eq i32 %nosched, 0
  %max_entries.i = getelementptr inbounds %struct.stack_trace, ptr %trace, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.else
  %14 = phi i32 [ ptrtoint (ptr @__save_stack_trace to i32), %if.else ], [ %.pre, %if.end.i.while.body.i_crit_edge ]
  %data.sroa.8.0 = phi i32 [ %add, %if.else ], [ %data.sroa.8.116, %if.end.i.while.body.i_crit_edge ]
  br i1 %tobool.not.i8, label %while.body.i.if.end.i10_crit_edge, label %land.lhs.true.i

while.body.i.if.end.i10_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i10

land.lhs.true.i:                                  ; preds = %while.body.i
  %call.i9 = call i32 @in_sched_functions(i32 noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %tobool2.not.i = icmp eq i32 %call.i9, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i10_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i.if.end.i10_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i10

if.end.i10:                                       ; preds = %land.lhs.true.i.if.end.i10_crit_edge, %while.body.i.if.end.i10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data.sroa.8.0)
  %tobool3.not.i = icmp eq i32 %data.sroa.8.0, 0
  br i1 %tobool3.not.i, label %if.end6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #7
  %dec.i = add i32 %data.sroa.8.0, -1
  br label %if.end.i

if.end6.i:                                        ; preds = %if.end.i10
  %15 = load ptr, ptr %entries.i, align 4
  %16 = load i32, ptr %trace, align 4
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %trace, align 4
  %arrayidx.i = getelementptr i32, ptr %15, i32 %16
  store i32 %14, ptr %arrayidx.i, align 4
  %17 = load i32, ptr %trace, align 4
  %18 = load i32, ptr %max_entries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %18)
  %cmp.not.i = icmp ult i32 %17, %18
  br i1 %cmp.not.i, label %if.end9.i, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.i:                                        ; preds = %if.end6.i
  %19 = load i32, ptr %1, align 4
  %20 = inttoptr i32 %19 to ptr
  %cmp.i.i.i = icmp uge ptr %20, @__entry_text_start
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 1
  %cmp1.i.i.i = icmp ule ptr %add.ptr.i.i.i, @__entry_text_end
  %21 = and i1 %cmp.i.i.i, %cmp1.i.i.i
  br i1 %21, label %if.end13.i, label %if.end9.i.if.end.i_crit_edge

if.end9.i.if.end.i_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end13.i:                                       ; preds = %if.end9.i
  %22 = load i32, ptr %0, align 4
  %23 = inttoptr i32 %22 to ptr
  %arrayidx14.i = getelementptr %struct.pt_regs, ptr %23, i32 1
  %24 = ptrtoint ptr %arrayidx14.i to i32
  %add.i = add i32 %22, 16383
  %and.i11 = and i32 %add.i, -16384
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i11, i32 %24)
  %cmp16.i = icmp ult i32 %and.i11, %24
  br i1 %cmp16.i, label %if.end13.i.if.end.i_crit_edge, label %save_trace.exit

if.end13.i.if.end.i_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

save_trace.exit:                                  ; preds = %if.end13.i
  %arrayidx19.i = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  %25 = load i32, ptr %arrayidx19.i, align 4
  %26 = load ptr, ptr %entries.i, align 4
  %inc22.i = add nuw i32 %17, 1
  store i32 %inc22.i, ptr %trace, align 4
  %arrayidx23.i = getelementptr i32, ptr %26, i32 %17
  store i32 %25, ptr %arrayidx23.i, align 4
  %27 = load i32, ptr %trace, align 4
  %28 = load i32, ptr %max_entries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %28)
  %cmp26.i.not = icmp ult i32 %27, %28
  br i1 %cmp26.i.not, label %save_trace.exit.if.end.i_crit_edge, label %save_trace.exit.cleanup_crit_edge

save_trace.exit.cleanup_crit_edge:                ; preds = %save_trace.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

save_trace.exit.if.end.i_crit_edge:               ; preds = %save_trace.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %save_trace.exit.if.end.i_crit_edge, %if.end13.i.if.end.i_crit_edge, %if.end9.i.if.end.i_crit_edge, %if.then4.i, %land.lhs.true.i.if.end.i_crit_edge
  %data.sroa.8.116 = phi i32 [ 0, %save_trace.exit.if.end.i_crit_edge ], [ %data.sroa.8.0, %land.lhs.true.i.if.end.i_crit_edge ], [ %dec.i, %if.then4.i ], [ 0, %if.end9.i.if.end.i_crit_edge ], [ 0, %if.end13.i.if.end.i_crit_edge ]
  %call1.i = call i32 @unwind_frame(ptr noundef nonnull %frame) #8
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = load i32, ptr %1, align 4
  br label %while.body.i

cleanup:                                          ; preds = %if.end.i.cleanup_crit_edge, %save_trace.exit.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %frame) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @save_stack_trace(ptr noundef %trace) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %task, align 8
  tail call void @__save_stack_trace(ptr noundef %2, ptr noundef %trace, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_sched_functions(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
