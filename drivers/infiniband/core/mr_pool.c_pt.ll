; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/mr_pool.c_pt.bc'
source_filename = "../drivers/infiniband/core/mr_pool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ib_mr_pool_get\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_mr_pool_get\09\09\09\09"
module asm "\09.long\09__crc_ib_mr_pool_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_mr_pool_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_mr_pool_get\22\09\09\09\09\09"
module asm "__kstrtabns_ib_mr_pool_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_mr_pool_put\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_mr_pool_put\09\09\09\09"
module asm "\09.long\09__crc_ib_mr_pool_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_mr_pool_put:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_mr_pool_put\22\09\09\09\09\09"
module asm "__kstrtabns_ib_mr_pool_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_mr_pool_init\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_mr_pool_init\09\09\09\09"
module asm "\09.long\09__crc_ib_mr_pool_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_mr_pool_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_mr_pool_init\22\09\09\09\09\09"
module asm "__kstrtabns_ib_mr_pool_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_mr_pool_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_mr_pool_destroy\09\09\09\09"
module asm "\09.long\09__crc_ib_mr_pool_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_mr_pool_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_mr_pool_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_ib_mr_pool_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.170, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.170 = type { %struct.list_head }

@__kstrtab_ib_mr_pool_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_mr_pool_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_mr_pool_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_mr_pool_get to i32), ptr @__kstrtab_ib_mr_pool_get, ptr @__kstrtabns_ib_mr_pool_get }, section "___ksymtab+ib_mr_pool_get", align 4
@__kstrtab_ib_mr_pool_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_mr_pool_put = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_mr_pool_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_mr_pool_put to i32), ptr @__kstrtab_ib_mr_pool_put, ptr @__kstrtabns_ib_mr_pool_put }, section "___ksymtab+ib_mr_pool_put", align 4
@__kstrtab_ib_mr_pool_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_mr_pool_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_mr_pool_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_mr_pool_init to i32), ptr @__kstrtab_ib_mr_pool_init, ptr @__kstrtabns_ib_mr_pool_init }, section "___ksymtab+ib_mr_pool_init", align 4
@__kstrtab_ib_mr_pool_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_mr_pool_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_mr_pool_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_mr_pool_destroy to i32), ptr @__kstrtab_ib_mr_pool_destroy, ptr @__kstrtabns_ib_mr_pool_destroy }, section "___ksymtab+ib_mr_pool_destroy", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_ib_mr_pool_destroy, ptr @__ksymtab_ib_mr_pool_get, ptr @__ksymtab_ib_mr_pool_init, ptr @__ksymtab_ib_mr_pool_put], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ib_mr_pool_get(ptr noundef %qp, ptr noundef %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mr_lock = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mr_lock) #2
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp10.not = icmp eq ptr %1, %list
  %add.ptr = getelementptr i8, ptr %1, i32 -44
  %spec.select = select i1 %cmp10.not, ptr null, ptr %add.ptr
  %tobool.not = icmp eq ptr %spec.select, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.ib_mr, ptr %spec.select, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #2
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %prev.i.i = getelementptr inbounds %struct.ib_mr, ptr %spec.select, i32 0, i32 9, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.ib_mr, ptr %spec.select, i32 0, i32 9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %mrs_used = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 5
  %11 = ptrtoint ptr %mrs_used to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mrs_used, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %mrs_used, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mr_lock, i32 noundef %call2) #2
  ret ptr %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_mr_pool_put(ptr noundef %qp, ptr noundef %list, ptr noundef %mr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mr_lock = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mr_lock) #2
  %0 = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 9
  %1 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %list, ptr noundef %2) #2
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %0, ptr %prev1.i.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %0, align 4
  %prev3.i.i = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 9, i32 0, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %0, ptr %list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  %mrs_used = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 5
  %7 = ptrtoint ptr %mrs_used to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mrs_used, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr %mrs_used, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mr_lock, i32 noundef %call2) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_mr_pool_init(ptr noundef %qp, ptr noundef %list, i32 noundef %nr, i32 noundef %type, i32 noundef %max_num_sg, i32 noundef %max_num_meta_sg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp28 = icmp sgt i32 %nr, 0
  br i1 %cmp28, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %cmp1 = icmp eq i32 %type, 5
  %pd2 = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 1
  %mr_lock = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %0 = ptrtoint ptr %pd2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd2, align 4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call ptr @ib_alloc_mr_integrity(ptr noundef %1, i32 noundef %max_num_sg, i32 noundef %max_num_meta_sg) #2
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %call3 = tail call ptr @ib_alloc_mr(ptr noundef %1, i32 noundef %type, i32 noundef %max_num_sg) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %mr.0 = phi ptr [ %call, %if.then ], [ %call3, %if.else ]
  %cmp.i = icmp ugt ptr %mr.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %do.body8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %2 = ptrtoint ptr %mr.0 to i32
  tail call void @ib_mr_pool_destroy(ptr noundef %qp, ptr noundef %list)
  br label %cleanup

do.body8:                                         ; preds = %if.end
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mr_lock) #2
  %3 = getelementptr inbounds %struct.ib_mr, ptr %mr.0, i32 0, i32 9
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %5, ptr noundef %list) #2
  br i1 %call.i.i, label %if.end.i.i, label %do.body8.list_add_tail.exit_crit_edge

do.body8.list_add_tail.exit_crit_edge:            ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #4
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %3, align 4
  %prev3.i.i = getelementptr inbounds %struct.ib_mr, ptr %mr.0, i32 0, i32 9, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %3, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body8.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mr_lock, i32 noundef %call11) #2
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, %nr
  br i1 %exitcond.not, label %list_add_tail.exit.cleanup_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_alloc_mr_integrity(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_alloc_mr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_mr_pool_destroy(ptr noundef %qp, ptr noundef %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mr_lock = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mr_lock) #2
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp.i.not30 = icmp eq ptr %1, %list
  br i1 %cmp.i.not30, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %12, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %flags.031 = phi i32 [ %call18, %list_del.exit.while.body_crit_edge ], [ %call2, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -44
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #2
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mr_lock, i32 noundef %flags.031) #2
  %call.i = tail call i32 @ib_dereg_mr_user(ptr noundef %add.ptr, ptr noundef null) #2
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mr_lock) #2
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %12, %list
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call2, %entry.while.end_crit_edge ], [ %call18, %list_del.exit.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mr_lock, i32 noundef %flags.0.lcssa) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dereg_mr_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__ksymtab_ib_mr_pool_get, !1, !"__ksymtab_ib_mr_pool_get", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/mr_pool.c", i32 23, i32 1}
!2 = !{ptr @__ksymtab_ib_mr_pool_put, !3, !"__ksymtab_ib_mr_pool_put", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/mr_pool.c", i32 34, i32 1}
!4 = !{ptr @__ksymtab_ib_mr_pool_init, !5, !"__ksymtab_ib_mr_pool_init", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/core/mr_pool.c", i32 64, i32 1}
!6 = !{ptr @__ksymtab_ib_mr_pool_destroy, !7, !"__ksymtab_ib_mr_pool_destroy", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/core/mr_pool.c", i32 82, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
