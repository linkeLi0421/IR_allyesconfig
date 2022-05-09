; ModuleID = '/llk/IR_all_yes/kernel/stacktrace.c_pt.bc'
source_filename = "../kernel/stacktrace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+stack_trace_print\22, \22a\22\09"
module asm "\09.weak\09__crc_stack_trace_print\09\09\09\09"
module asm "\09.long\09__crc_stack_trace_print\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stack_trace_print:\09\09\09\09\09"
module asm "\09.asciz \09\22stack_trace_print\22\09\09\09\09\09"
module asm "__kstrtabns_stack_trace_print:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+stack_trace_snprint\22, \22a\22\09"
module asm "\09.weak\09__crc_stack_trace_snprint\09\09\09\09"
module asm "\09.long\09__crc_stack_trace_snprint\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stack_trace_snprint:\09\09\09\09\09"
module asm "\09.asciz \09\22stack_trace_snprint\22\09\09\09\09\09"
module asm "__kstrtabns_stack_trace_snprint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+stack_trace_save\22, \22a\22\09"
module asm "\09.weak\09__crc_stack_trace_save\09\09\09\09"
module asm "\09.long\09__crc_stack_trace_save\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stack_trace_save:\09\09\09\09\09"
module asm "\09.asciz \09\22stack_trace_save\22\09\09\09\09\09"
module asm "__kstrtabns_stack_trace_save:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+filter_irq_stacks\22, \22a\22\09"
module asm "\09.weak\09__crc_filter_irq_stacks\09\09\09\09"
module asm "\09.long\09__crc_filter_irq_stacks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filter_irq_stacks:\09\09\09\09\09"
module asm "\09.asciz \09\22filter_irq_stacks\22\09\09\09\09\09"
module asm "__kstrtabns_filter_irq_stacks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.stack_trace = type { i32, i32, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/stacktrace.c\00", [44 x i8] zeroinitializer }, align 32
@stack_trace_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%*c%pS\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stack_trace_print\00", [46 x i8] zeroinitializer }, align 32
@stack_trace_print._entry_ptr = internal global ptr @stack_trace_print._entry, section ".printk_index", align 4
@__kstrtab_stack_trace_print = external dso_local constant [0 x i8], align 1
@__kstrtabns_stack_trace_print = external dso_local constant [0 x i8], align 1
@__ksymtab_stack_trace_print = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stack_trace_print to i32), ptr @__kstrtab_stack_trace_print, ptr @__kstrtabns_stack_trace_print }, section "___ksymtab_gpl+stack_trace_print", align 4
@__kstrtab_stack_trace_snprint = external dso_local constant [0 x i8], align 1
@__kstrtabns_stack_trace_snprint = external dso_local constant [0 x i8], align 1
@__ksymtab_stack_trace_snprint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stack_trace_snprint to i32), ptr @__kstrtab_stack_trace_snprint, ptr @__kstrtabns_stack_trace_snprint }, section "___ksymtab_gpl+stack_trace_snprint", align 4
@save_stack_trace_tsk.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016save_stack_trace_tsk() not implemented yet.\0A\00", [49 x i8] zeroinitializer }, align 32
@save_stack_trace_regs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016save_stack_trace_regs() not implemented yet.\0A\00", [48 x i8] zeroinitializer }, align 32
@__kstrtab_stack_trace_save = external dso_local constant [0 x i8], align 1
@__kstrtabns_stack_trace_save = external dso_local constant [0 x i8], align 1
@__ksymtab_stack_trace_save = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stack_trace_save to i32), ptr @__kstrtab_stack_trace_save, ptr @__kstrtabns_stack_trace_save }, section "___ksymtab_gpl+stack_trace_save", align 4
@__kstrtab_filter_irq_stacks = external dso_local constant [0 x i8], align 1
@__kstrtabns_filter_irq_stacks = external dso_local constant [0 x i8], align 1
@__ksymtab_filter_irq_stacks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filter_irq_stacks to i32), ptr @__kstrtab_filter_irq_stacks, ptr @__kstrtabns_filter_irq_stacks }, section "___ksymtab_gpl+filter_irq_stacks", align 4
@__irqentry_text_start = external dso_local global [0 x i8], align 1
@__irqentry_text_end = external dso_local global [0 x i8], align 1
@__softirqentry_text_start = external dso_local global [0 x i8], align 1
@__softirqentry_text_end = external dso_local global [0 x i8], align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 29, i32 6 }
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 33, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 253, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [23 x i8] c"../kernel/stacktrace.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 259, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_filter_irq_stacks, ptr @__ksymtab_stack_trace_print, ptr @__ksymtab_stack_trace_save, ptr @__ksymtab_stack_trace_snprint, ptr @stack_trace_print._entry, ptr @stack_trace_print._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_trace_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stack_trace_print(ptr noundef readonly %entries, i32 noundef %nr_entries, i32 noundef %spaces) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %entries, null
  br i1 %tobool.not, label %do.end, label %for.cond.preheader, !prof !31

for.cond.preheader:                               ; preds = %entry
  %cmp32.not = icmp eq i32 %nr_entries, 0
  br i1 %cmp32.not, label %cleanup, label %do.end26.lr.ph

do.end26.lr.ph:                                   ; preds = %for.cond.preheader
  %add = add i32 %spaces, 1
  br label %do.end26

do.end:                                           ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 29, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

do.end26:                                         ; preds = %do.end26, %do.end26.lr.ph
  %i.033 = phi i32 [ 0, %do.end26.lr.ph ], [ %inc, %do.end26 ]
  %arrayidx = getelementptr i32, ptr %entries, i32 %i.033
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = inttoptr i32 %1 to ptr
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %add, i32 noundef 32, ptr noundef %2) #10
  %inc = add nuw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, %nr_entries
  br i1 %exitcond.not, label %cleanup, label %do.end26

cleanup:                                          ; preds = %do.end26, %do.end, %for.cond.preheader
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stack_trace_snprint(ptr nocapture noundef writeonly %buf, i32 noundef %size, ptr noundef readonly %entries, i32 noundef %nr_entries, i32 noundef %spaces) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %entries, null
  br i1 %tobool.not, label %do.end, label %for.cond.preheader, !prof !31

for.cond.preheader:                               ; preds = %entry
  %cmp46 = icmp eq i32 %nr_entries, 0
  %tobool24.not47 = icmp eq i32 %size, 0
  %or.cond48 = or i1 %cmp46, %tobool24.not47
  br i1 %or.cond48, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add = add i32 %spaces, 1
  br label %for.body

do.end:                                           ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %total.052 = phi i32 [ 0, %for.body.lr.ph ], [ %add25, %for.body ]
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %buf.addr.050 = phi ptr [ %buf, %for.body.lr.ph ], [ %buf.addr.1, %for.body ]
  %size.addr.049 = phi i32 [ %size, %for.body.lr.ph ], [ %3, %for.body ]
  %arrayidx = getelementptr i32, ptr %entries, i32 %i.051
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = inttoptr i32 %1 to ptr
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf.addr.050, i32 noundef %size.addr.049, ptr noundef nonnull @.str.1, i32 noundef %add, i32 noundef 32, ptr noundef %2)
  %add25 = add i32 %call, %total.052
  %3 = tail call i32 @llvm.usub.sat.i32(i32 %size.addr.049, i32 %call)
  %4 = tail call i32 @llvm.umin.i32(i32 %size.addr.049, i32 %call)
  %buf.addr.1 = getelementptr i8, ptr %buf.addr.050, i32 %4
  %inc = add nuw i32 %i.051, 1
  %cmp = icmp uge i32 %inc, %nr_entries
  %tobool24.not = icmp ule i32 %size.addr.049, %call
  %or.cond = or i1 %cmp, %tobool24.not
  br i1 %or.cond, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %do.end, %for.cond.preheader
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %for.cond.preheader ], [ %add25, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @save_stack_trace_tsk(ptr noundef %tsk, ptr noundef %trace) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %.b35 = load i1, ptr @save_stack_trace_tsk.__already_done, align 1
  br i1 %.b35, label %if.end25, label %if.then, !prof !32

if.then:                                          ; preds = %entry
  store i1 true, ptr @save_stack_trace_tsk.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 253, i32 noundef 9, ptr noundef nonnull @.str.3) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @save_stack_trace_regs(ptr noundef %regs, ptr noundef %trace) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %.b35 = load i1, ptr @save_stack_trace_regs.__already_done, align 1
  br i1 %.b35, label %if.end25, label %if.then, !prof !32

if.then:                                          ; preds = %entry
  store i1 true, ptr @save_stack_trace_regs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 259, i32 noundef 9, ptr noundef nonnull @.str.4) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stack_trace_save(ptr noundef %store, i32 noundef %size, i32 noundef %skipnr) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %trace = alloca %struct.stack_trace, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %trace) #8
  %0 = getelementptr inbounds %struct.stack_trace, ptr %trace, i32 0, i32 1
  %1 = getelementptr inbounds %struct.stack_trace, ptr %trace, i32 0, i32 2
  %2 = getelementptr inbounds %struct.stack_trace, ptr %trace, i32 0, i32 3
  %3 = ptrtoint ptr %trace to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %trace, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %size, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %store, ptr %1, align 4
  %add = add i32 %skipnr, 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %2, align 4
  call void @save_stack_trace(ptr noundef nonnull %trace) #8
  %7 = ptrtoint ptr %trace to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %trace, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %trace) #8
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @save_stack_trace(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stack_trace_save_tsk(ptr noundef %task, ptr noundef %store, i32 noundef %size, i32 noundef %skipnr) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %trace = alloca %struct.stack_trace, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %trace) #8
  %0 = getelementptr inbounds %struct.stack_trace, ptr %trace, i32 0, i32 1
  %1 = getelementptr inbounds %struct.stack_trace, ptr %trace, i32 0, i32 2
  %2 = getelementptr inbounds %struct.stack_trace, ptr %trace, i32 0, i32 3
  %3 = ptrtoint ptr %trace to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %trace, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %size, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %store, ptr %1, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !21) #8
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task1 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task1, align 8
  %cmp = icmp eq ptr %9, %task
  %conv = zext i1 %cmp to i32
  %add = add i32 %conv, %skipnr
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %2, align 4
  call void @save_stack_trace_tsk(ptr noundef %task, ptr noundef nonnull %trace)
  %11 = ptrtoint ptr %trace to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %trace, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %trace) #8
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stack_trace_save_regs(ptr noundef %regs, ptr noundef %store, i32 noundef %size, i32 noundef %skipnr) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %trace = alloca %struct.stack_trace, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %trace) #8
  %0 = getelementptr inbounds %struct.stack_trace, ptr %trace, i32 0, i32 1
  %1 = getelementptr inbounds %struct.stack_trace, ptr %trace, i32 0, i32 2
  %2 = getelementptr inbounds %struct.stack_trace, ptr %trace, i32 0, i32 3
  %3 = ptrtoint ptr %trace to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %trace, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %size, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %store, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %skipnr, ptr %2, align 4
  call void @save_stack_trace_regs(ptr noundef %regs, ptr noundef nonnull %trace)
  %7 = ptrtoint ptr %trace to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %trace, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %trace) #8
  ret i32 %8
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @filter_irq_stacks(ptr nocapture noundef readonly %entries, i32 noundef %nr_entries) #5 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp6.not = icmp eq i32 %nr_entries, 0
  br i1 %cmp6.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %i.07 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr i32, ptr %entries, i32 %i.07
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %cmp.not.i = icmp uge i32 %1, ptrtoint (ptr @__irqentry_text_start to i32)
  %cmp1.i = icmp ult i32 %1, ptrtoint (ptr @__irqentry_text_end to i32)
  %or.cond.i = and i1 %cmp.not.i, %cmp1.i
  br i1 %or.cond.i, label %if.then, label %in_irqentry_text.exit

in_irqentry_text.exit:                            ; preds = %for.body
  %cmp2.not.i = icmp uge i32 %1, ptrtoint (ptr @__softirqentry_text_start to i32)
  %cmp3.i = icmp ult i32 %1, ptrtoint (ptr @__softirqentry_text_end to i32)
  %spec.select.i = and i1 %cmp2.not.i, %cmp3.i
  br i1 %spec.select.i, label %if.then, label %for.inc

if.then:                                          ; preds = %in_irqentry_text.exit, %for.body
  %add = add nuw i32 %i.07, 1
  br label %cleanup

for.inc:                                          ; preds = %in_irqentry_text.exit
  %inc = add nuw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %nr_entries
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %if.then, %entry
  %retval.0 = phi i32 [ %add, %if.then ], [ 0, %entry ], [ %nr_entries, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !11, !13, !14, !16, !17, !19}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/stacktrace.c", i32 29, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/stacktrace.c", i32 33, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @stack_trace_print._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @stack_trace_print._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @__ksymtab_stack_trace_print, !8, !"__ksymtab_stack_trace_print", i1 false, i1 false}
!8 = !{!"../kernel/stacktrace.c", i32 35, i32 1}
!9 = !{ptr @__ksymtab_stack_trace_snprint, !10, !"__ksymtab_stack_trace_snprint", i1 false, i1 false}
!10 = !{!"../kernel/stacktrace.c", i32 71, i32 1}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../kernel/stacktrace.c", i32 253, i32 2}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../kernel/stacktrace.c", i32 259, i32 2}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__ksymtab_stack_trace_save, !18, !"__ksymtab_stack_trace_save", i1 false, i1 false}
!18 = !{!"../kernel/stacktrace.c", i32 282, i32 1}
!19 = !{ptr @__ksymtab_filter_irq_stacks, !20, !"__ksymtab_filter_irq_stacks", i1 false, i1 false}
!20 = !{!"../kernel/stacktrace.c", i32 405, i32 1}
!21 = !{!"sp"}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{!"branch_weights", i32 2000, i32 1}
