; ModuleID = '/llk/IR_all_yes/lib/lockref.c_pt.bc'
source_filename = "../lib/lockref.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+lockref_get\22, \22a\22\09"
module asm "\09.weak\09__crc_lockref_get\09\09\09\09"
module asm "\09.long\09__crc_lockref_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lockref_get:\09\09\09\09\09"
module asm "\09.asciz \09\22lockref_get\22\09\09\09\09\09"
module asm "__kstrtabns_lockref_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lockref_get_not_zero\22, \22a\22\09"
module asm "\09.weak\09__crc_lockref_get_not_zero\09\09\09\09"
module asm "\09.long\09__crc_lockref_get_not_zero\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lockref_get_not_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22lockref_get_not_zero\22\09\09\09\09\09"
module asm "__kstrtabns_lockref_get_not_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lockref_put_not_zero\22, \22a\22\09"
module asm "\09.weak\09__crc_lockref_put_not_zero\09\09\09\09"
module asm "\09.long\09__crc_lockref_put_not_zero\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lockref_put_not_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22lockref_put_not_zero\22\09\09\09\09\09"
module asm "__kstrtabns_lockref_put_not_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lockref_get_or_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_lockref_get_or_lock\09\09\09\09"
module asm "\09.long\09__crc_lockref_get_or_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lockref_get_or_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22lockref_get_or_lock\22\09\09\09\09\09"
module asm "__kstrtabns_lockref_get_or_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lockref_put_return\22, \22a\22\09"
module asm "\09.weak\09__crc_lockref_put_return\09\09\09\09"
module asm "\09.long\09__crc_lockref_put_return\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lockref_put_return:\09\09\09\09\09"
module asm "\09.asciz \09\22lockref_put_return\22\09\09\09\09\09"
module asm "__kstrtabns_lockref_put_return:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lockref_put_or_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_lockref_put_or_lock\09\09\09\09"
module asm "\09.long\09__crc_lockref_put_or_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lockref_put_or_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22lockref_put_or_lock\22\09\09\09\09\09"
module asm "__kstrtabns_lockref_put_or_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lockref_mark_dead\22, \22a\22\09"
module asm "\09.weak\09__crc_lockref_mark_dead\09\09\09\09"
module asm "\09.long\09__crc_lockref_mark_dead\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lockref_mark_dead:\09\09\09\09\09"
module asm "\09.asciz \09\22lockref_mark_dead\22\09\09\09\09\09"
module asm "__kstrtabns_lockref_mark_dead:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lockref_get_not_dead\22, \22a\22\09"
module asm "\09.weak\09__crc_lockref_get_not_dead\09\09\09\09"
module asm "\09.long\09__crc_lockref_get_not_dead\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lockref_get_not_dead:\09\09\09\09\09"
module asm "\09.asciz \09\22lockref_get_not_dead\22\09\09\09\09\09"
module asm "__kstrtabns_lockref_get_not_dead:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@__kstrtab_lockref_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_lockref_get = external dso_local constant [0 x i8], align 1
@__ksymtab_lockref_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lockref_get to i32), ptr @__kstrtab_lockref_get, ptr @__kstrtabns_lockref_get }, section "___ksymtab+lockref_get", align 4
@__kstrtab_lockref_get_not_zero = external dso_local constant [0 x i8], align 1
@__kstrtabns_lockref_get_not_zero = external dso_local constant [0 x i8], align 1
@__ksymtab_lockref_get_not_zero = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lockref_get_not_zero to i32), ptr @__kstrtab_lockref_get_not_zero, ptr @__kstrtabns_lockref_get_not_zero }, section "___ksymtab+lockref_get_not_zero", align 4
@__kstrtab_lockref_put_not_zero = external dso_local constant [0 x i8], align 1
@__kstrtabns_lockref_put_not_zero = external dso_local constant [0 x i8], align 1
@__ksymtab_lockref_put_not_zero = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lockref_put_not_zero to i32), ptr @__kstrtab_lockref_put_not_zero, ptr @__kstrtabns_lockref_put_not_zero }, section "___ksymtab+lockref_put_not_zero", align 4
@__kstrtab_lockref_get_or_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_lockref_get_or_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_lockref_get_or_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lockref_get_or_lock to i32), ptr @__kstrtab_lockref_get_or_lock, ptr @__kstrtabns_lockref_get_or_lock }, section "___ksymtab+lockref_get_or_lock", align 4
@__kstrtab_lockref_put_return = external dso_local constant [0 x i8], align 1
@__kstrtabns_lockref_put_return = external dso_local constant [0 x i8], align 1
@__ksymtab_lockref_put_return = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lockref_put_return to i32), ptr @__kstrtab_lockref_put_return, ptr @__kstrtabns_lockref_put_return }, section "___ksymtab+lockref_put_return", align 4
@__kstrtab_lockref_put_or_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_lockref_put_or_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_lockref_put_or_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lockref_put_or_lock to i32), ptr @__kstrtab_lockref_put_or_lock, ptr @__kstrtabns_lockref_put_or_lock }, section "___ksymtab+lockref_put_or_lock", align 4
@__kstrtab_lockref_mark_dead = external dso_local constant [0 x i8], align 1
@__kstrtabns_lockref_mark_dead = external dso_local constant [0 x i8], align 1
@__ksymtab_lockref_mark_dead = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lockref_mark_dead to i32), ptr @__kstrtab_lockref_mark_dead, ptr @__kstrtabns_lockref_mark_dead }, section "___ksymtab+lockref_mark_dead", align 4
@__kstrtab_lockref_get_not_dead = external dso_local constant [0 x i8], align 1
@__kstrtabns_lockref_get_not_dead = external dso_local constant [0 x i8], align 1
@__ksymtab_lockref_get_not_dead = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lockref_get_not_dead to i32), ptr @__kstrtab_lockref_get_not_dead, ptr @__kstrtabns_lockref_get_not_dead }, section "___ksymtab+lockref_get_not_dead", align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_lockref_get, ptr @__ksymtab_lockref_get_not_dead, ptr @__ksymtab_lockref_get_not_zero, ptr @__ksymtab_lockref_get_or_lock, ptr @__ksymtab_lockref_mark_dead, ptr @__ksymtab_lockref_put_not_zero, ptr @__ksymtab_lockref_put_or_lock, ptr @__ksymtab_lockref_put_return], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lockref_get(ptr noundef %lockref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_raw_spin_lock(ptr noundef %lockref) #6
  %count = getelementptr inbounds %struct.anon, ptr %lockref, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %count, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lockref) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lockref_get_not_zero(ptr noundef %lockref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_raw_spin_lock(ptr noundef %lockref) #6
  %count = getelementptr inbounds %struct.anon, ptr %lockref, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %inc = add nuw i32 %1, 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retval1.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lockref) #6
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lockref_put_not_zero(ptr noundef %lockref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_raw_spin_lock(ptr noundef %lockref) #6
  %count = getelementptr inbounds %struct.anon, ptr %lockref, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dec = add nsw i32 %1, -1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retval1.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lockref) #6
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lockref_get_or_lock(ptr noundef %lockref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_raw_spin_lock(ptr noundef %lockref) #6
  %count = getelementptr inbounds %struct.anon, ptr %lockref, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %inc = add nuw i32 %1, 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %count, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lockref) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @lockref_put_return(ptr nocapture readnone %lockref) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lockref_put_or_lock(ptr noundef %lockref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_raw_spin_lock(ptr noundef %lockref) #6
  %count = getelementptr inbounds %struct.anon, ptr %lockref, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dec = add nsw i32 %1, -1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %count, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lockref) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lockref_mark_dead(ptr noundef %lockref) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %lockref to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %lockref, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end7, !prof !24

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/lockref.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 189, 0\0A.popsection", ""() #6, !srcloc !25
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %count = getelementptr inbounds %struct.anon, ptr %lockref, i32 0, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -128, ptr %count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lockref_get_not_dead(ptr noundef %lockref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_raw_spin_lock(ptr noundef %lockref) #6
  %count = getelementptr inbounds %struct.anon, ptr %lockref, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp sgt i32 %1, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %inc = add nuw i32 %1, 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retval1.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lockref) #6
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__ksymtab_lockref_get, !1, !"__ksymtab_lockref_get", i1 false, i1 false}
!1 = !{!"../lib/lockref.c", i32 56, i32 1}
!2 = !{ptr @__ksymtab_lockref_get_not_zero, !3, !"__ksymtab_lockref_get_not_zero", i1 false, i1 false}
!3 = !{!"../lib/lockref.c", i32 84, i32 1}
!4 = !{ptr @__ksymtab_lockref_put_not_zero, !5, !"__ksymtab_lockref_put_not_zero", i1 false, i1 false}
!5 = !{!"../lib/lockref.c", i32 112, i32 1}
!6 = !{ptr @__ksymtab_lockref_get_or_lock, !7, !"__ksymtab_lockref_get_or_lock", i1 false, i1 false}
!7 = !{!"../lib/lockref.c", i32 137, i32 1}
!8 = !{ptr @__ksymtab_lockref_put_return, !9, !"__ksymtab_lockref_put_return", i1 false, i1 false}
!9 = !{!"../lib/lockref.c", i32 157, i32 1}
!10 = !{ptr @__ksymtab_lockref_put_or_lock, !11, !"__ksymtab_lockref_put_or_lock", i1 false, i1 false}
!11 = !{!"../lib/lockref.c", i32 181, i32 1}
!12 = !{ptr @__ksymtab_lockref_mark_dead, !13, !"__ksymtab_lockref_mark_dead", i1 false, i1 false}
!13 = !{!"../lib/lockref.c", i32 192, i32 1}
!14 = !{ptr @__ksymtab_lockref_get_not_dead, !15, !"__ksymtab_lockref_get_not_dead", i1 false, i1 false}
!15 = !{!"../lib/lockref.c", i32 220, i32 1}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 2149203591, i64 2149204069, i64 2149203628, i64 2149203684, i64 2149203718, i64 2149203742, i64 2149203783, i64 2149203804, i64 2149203832, i64 2149203866}
