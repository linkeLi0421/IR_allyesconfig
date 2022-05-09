; ModuleID = '/llk/IR_all_yes/lib/generic-radix-tree.c_pt.bc'
source_filename = "../lib/generic-radix-tree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__genradix_ptr\22, \22a\22\09"
module asm "\09.weak\09__crc___genradix_ptr\09\09\09\09"
module asm "\09.long\09__crc___genradix_ptr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___genradix_ptr:\09\09\09\09\09"
module asm "\09.asciz \09\22__genradix_ptr\22\09\09\09\09\09"
module asm "__kstrtabns___genradix_ptr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__genradix_ptr_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc___genradix_ptr_alloc\09\09\09\09"
module asm "\09.long\09__crc___genradix_ptr_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___genradix_ptr_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__genradix_ptr_alloc\22\09\09\09\09\09"
module asm "__kstrtabns___genradix_ptr_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__genradix_iter_peek\22, \22a\22\09"
module asm "\09.weak\09__crc___genradix_iter_peek\09\09\09\09"
module asm "\09.long\09__crc___genradix_iter_peek\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___genradix_iter_peek:\09\09\09\09\09"
module asm "\09.asciz \09\22__genradix_iter_peek\22\09\09\09\09\09"
module asm "__kstrtabns___genradix_iter_peek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__genradix_prealloc\22, \22a\22\09"
module asm "\09.weak\09__crc___genradix_prealloc\09\09\09\09"
module asm "\09.long\09__crc___genradix_prealloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___genradix_prealloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__genradix_prealloc\22\09\09\09\09\09"
module asm "__kstrtabns___genradix_prealloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__genradix_free\22, \22a\22\09"
module asm "\09.weak\09__crc___genradix_free\09\09\09\09"
module asm "\09.long\09__crc___genradix_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___genradix_free:\09\09\09\09\09"
module asm "\09.asciz \09\22__genradix_free\22\09\09\09\09\09"
module asm "__kstrtabns___genradix_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.genradix_iter = type { i32, i32 }

@__kstrtab___genradix_ptr = external dso_local constant [0 x i8], align 1
@__kstrtabns___genradix_ptr = external dso_local constant [0 x i8], align 1
@__ksymtab___genradix_ptr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__genradix_ptr to i32), ptr @__kstrtab___genradix_ptr, ptr @__kstrtabns___genradix_ptr }, section "___ksymtab+__genradix_ptr", align 4
@__kstrtab___genradix_ptr_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___genradix_ptr_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab___genradix_ptr_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__genradix_ptr_alloc to i32), ptr @__kstrtab___genradix_ptr_alloc, ptr @__kstrtabns___genradix_ptr_alloc }, section "___ksymtab+__genradix_ptr_alloc", align 4
@__kstrtab___genradix_iter_peek = external dso_local constant [0 x i8], align 1
@__kstrtabns___genradix_iter_peek = external dso_local constant [0 x i8], align 1
@__ksymtab___genradix_iter_peek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__genradix_iter_peek to i32), ptr @__kstrtab___genradix_iter_peek, ptr @__kstrtabns___genradix_iter_peek }, section "___ksymtab+__genradix_iter_peek", align 4
@__kstrtab___genradix_prealloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___genradix_prealloc = external dso_local constant [0 x i8], align 1
@__ksymtab___genradix_prealloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__genradix_prealloc to i32), ptr @__kstrtab___genradix_prealloc, ptr @__kstrtabns___genradix_prealloc }, section "___ksymtab+__genradix_prealloc", align 4
@__kstrtab___genradix_free = external dso_local constant [0 x i8], align 1
@__kstrtabns___genradix_free = external dso_local constant [0 x i8], align 1
@__ksymtab___genradix_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__genradix_free to i32), ptr @__kstrtab___genradix_free, ptr @__kstrtabns___genradix_free }, section "___ksymtab+__genradix_free", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab___genradix_free, ptr @__ksymtab___genradix_iter_peek, ptr @__ksymtab___genradix_prealloc, ptr @__ksymtab___genradix_ptr, ptr @__ksymtab___genradix_ptr_alloc], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__genradix_ptr(ptr noundef %radix, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %radix to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %radix, align 4
  %2 = ptrtoint ptr %1 to i32
  %and.i = and i32 %2, -4
  %3 = inttoptr i32 %and.i to ptr
  %and.i34 = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %tobool.not.i.i = icmp eq i32 %offset, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %offset, i1 true) #7, !range !18
  %sub.i.op.i = xor i32 %4, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %mul.i = mul nuw nsw i32 %and.i34, 10
  %add.i = add nuw nsw i32 %mul.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %add.i)
  %cmp8.not = icmp sge i32 %sub.i, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not39 = icmp eq i32 %and.i, 0
  %or.cond = select i1 %cmp8.not, i1 true, i1 %tobool.not39
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end11

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool12.not = icmp eq i32 %and.i34, 0
  br i1 %tobool12.not, label %if.end11.while.end_crit_edge, label %if.end14

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end14:                                         ; preds = %if.end11
  %dec = add nsw i32 %and.i34, -1
  %mul.i35 = mul nsw i32 %dec, 10
  %add.i36 = add nsw i32 %mul.i35, 12
  %shr = lshr i32 %offset, %add.i36
  %arrayidx = getelementptr [1024 x ptr], ptr %3, i32 0, i32 %shr
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %notmask = shl nsw i32 -1, %add.i36
  %sub17 = xor i32 %notmask, -1
  %and = and i32 %sub17, %offset
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end14.cleanup_crit_edge, label %if.end11.1

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11.1:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool12.not.1 = icmp eq i32 %dec, 0
  br i1 %tobool12.not.1, label %if.end11.1.while.end_crit_edge, label %if.end14.1

if.end11.1.while.end_crit_edge:                   ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end14.1:                                       ; preds = %if.end11.1
  %dec.1 = add nsw i32 %and.i34, -2
  %mul.i35.1 = mul nsw i32 %dec.1, 10
  %add.i36.1 = add nsw i32 %mul.i35.1, 12
  %shr.1 = lshr i32 %and, %add.i36.1
  %arrayidx.1 = getelementptr [1024 x ptr], ptr %6, i32 0, i32 %shr.1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1, align 4
  %notmask.1 = shl nsw i32 -1, %add.i36.1
  %sub17.1 = xor i32 %notmask.1, -1
  %and.1 = and i32 %and, %sub17.1
  %tobool.not.1 = icmp eq ptr %8, null
  br i1 %tobool.not.1, label %if.end14.1.cleanup_crit_edge, label %if.end11.2

if.end14.1.cleanup_crit_edge:                     ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11.2:                                       ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %tobool12.not.2 = icmp eq i32 %dec.1, 0
  br i1 %tobool12.not.2, label %if.end11.2.while.end_crit_edge, label %if.end14.2

if.end11.2.while.end_crit_edge:                   ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end14.2:                                       ; preds = %if.end11.2
  %dec.2 = add nsw i32 %and.i34, -3
  %mul.i35.2 = mul nsw i32 %dec.2, 10
  %add.i36.2 = add nsw i32 %mul.i35.2, 12
  %shr.2 = lshr i32 %and.1, %add.i36.2
  %arrayidx.2 = getelementptr [1024 x ptr], ptr %8, i32 0, i32 %shr.2
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %10, null
  br i1 %tobool.not.2, label %if.end14.2.cleanup_crit_edge, label %if.end11.3

if.end14.2.cleanup_crit_edge:                     ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11.3:                                       ; preds = %if.end14.2
  %notmask.2 = shl nsw i32 -1, %add.i36.2
  %sub17.2 = xor i32 %notmask.2, -1
  %and.2 = and i32 %and.1, %sub17.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.2)
  %tobool12.not.3 = icmp eq i32 %dec.2, 0
  br i1 %tobool12.not.3, label %if.end11.3.while.end_crit_edge, label %if.end11.3.cleanup_crit_edge

if.end11.3.cleanup_crit_edge:                     ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11.3.while.end_crit_edge:                   ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end11.3.while.end_crit_edge, %if.end11.2.while.end_crit_edge, %if.end11.1.while.end_crit_edge, %if.end11.while.end_crit_edge
  %n.041.lcssa = phi ptr [ %3, %if.end11.while.end_crit_edge ], [ %6, %if.end11.1.while.end_crit_edge ], [ %8, %if.end11.2.while.end_crit_edge ], [ %10, %if.end11.3.while.end_crit_edge ]
  %offset.addr.040.lcssa = phi i32 [ %offset, %if.end11.while.end_crit_edge ], [ %and, %if.end11.1.while.end_crit_edge ], [ %and.1, %if.end11.2.while.end_crit_edge ], [ %and.2, %if.end11.3.while.end_crit_edge ]
  %arrayidx18 = getelementptr [4096 x i8], ptr %n.041.lcssa, i32 0, i32 %offset.addr.040.lcssa
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end11.3.cleanup_crit_edge, %if.end14.2.cleanup_crit_edge, %if.end14.1.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx18, %while.end ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end11.3.cleanup_crit_edge ], [ null, %if.end14.2.cleanup_crit_edge ], [ null, %if.end14.1.cleanup_crit_edge ], [ null, %if.end14.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__genradix_ptr_alloc(ptr noundef %radix, i32 noundef %offset, i32 noundef %gfp_mask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %radix to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %radix, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %tobool.not.i.i = icmp eq i32 %offset, 0
  %2 = tail call i32 @llvm.ctlz.i32(i32 %offset, i1 true) #7, !range !18
  %sub.i.op.i = xor i32 %2, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %or.i = or i32 %gfp_mask, 256
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %entry
  %new_node.0 = phi ptr [ null, %entry ], [ %new_node.2, %cleanup ]
  %v.0 = phi ptr [ %1, %entry ], [ %v.1, %cleanup ]
  %3 = ptrtoint ptr %v.0 to i32
  %and.i = and i32 %3, -4
  %4 = inttoptr i32 %and.i to ptr
  %and.i136 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %while.cond.if.end_crit_edge, label %cond.end5

while.cond.if.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.end5:                                        ; preds = %while.cond
  %mul.i = mul nuw nsw i32 %and.i136, 10
  %add.i = add nuw nsw i32 %mul.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %add.i)
  %cmp8 = icmp slt i32 %sub.i, %add.i
  br i1 %cmp8, label %while.cond41.preheader, label %cond.end5.if.end_crit_edge

cond.end5.if.end_crit_edge:                       ; preds = %cond.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.end5.if.end_crit_edge, %while.cond.if.end_crit_edge
  %tobool10.not = icmp eq ptr %new_node.0, null
  br i1 %tobool10.not, label %if.then11, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then11:                                        ; preds = %if.end
  %call.i137 = tail call i32 @__get_free_pages(i32 noundef %or.i, i32 noundef 0) #7
  %5 = inttoptr i32 %call.i137 to ptr
  tail call void @kmemleak_alloc(ptr noundef %5, i32 noundef 4096, i32 noundef 1, i32 noundef %gfp_mask) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool13.not = icmp eq i32 %call.i137, 0
  br i1 %tobool13.not, label %if.then11.cleanup90_crit_edge, label %if.then11.if.end16_crit_edge

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then11.cleanup90_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup90

if.end16:                                         ; preds = %if.then11.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %new_node.1 = phi ptr [ %new_node.0, %if.end.if.end16_crit_edge ], [ %5, %if.then11.if.end16_crit_edge ]
  %6 = ptrtoint ptr %new_node.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %new_node.1, align 4
  %7 = ptrtoint ptr %new_node.1 to i32
  %add = add nuw nsw i32 %and.i136, 1
  %spec.select = select i1 %tobool.not, i32 0, i32 %add
  %or = or i32 %spec.select, %7
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %radix, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @llvm.prefetch.p0(ptr %radix, i32 1, i32 3, i32 1) #7
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end16
  %8 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %radix, i32 %3, i32 %or) #7, !srcloc !20
  %asmresult.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %cleanup, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

cleanup:                                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %asmresult1.i = extractvalue { i32, i32 } %8, 1
  %9 = inttoptr i32 %asmresult1.i to ptr
  %cmp36 = icmp eq ptr %v.0, %9
  %10 = inttoptr i32 %or to ptr
  %new_node.2 = select i1 %cmp36, ptr null, ptr %new_node.1
  %v.1 = select i1 %cmp36, ptr %10, ptr %9
  br label %while.cond

while.cond41.preheader:                           ; preds = %cond.end5
  %11 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i136)
  %tobool42.not166 = icmp eq i32 %and.i136, 0
  br i1 %tobool42.not166, label %while.cond41.preheader.while.end85_crit_edge, label %while.body43

while.cond41.preheader.while.end85_crit_edge:     ; preds = %while.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end85

while.body43:                                     ; preds = %while.cond41.preheader
  %dec170 = add nsw i32 %and.i136, -1
  %mul.i138 = mul nsw i32 %dec170, 10
  %add.i139 = add nsw i32 %mul.i138, 12
  %shr = lshr i32 %offset, %add.i139
  %arrayidx45 = getelementptr [1024 x ptr], ptr %11, i32 0, i32 %shr
  %notmask = shl nsw i32 -1, %add.i139
  %sub47 = xor i32 %notmask, -1
  %and = and i32 %sub47, %offset
  %12 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx45, align 4
  %tobool52.not = icmp eq ptr %13, null
  br i1 %tobool52.not, label %if.then53, label %while.body43.cleanup82_crit_edge

while.body43.cleanup82_crit_edge:                 ; preds = %while.body43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup82

if.then53:                                        ; preds = %while.body43
  %tobool54.not = icmp eq ptr %new_node.0, null
  br i1 %tobool54.not, label %if.then55, label %if.then53.if.end60_crit_edge

if.then53.if.end60_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.then55:                                        ; preds = %if.then53
  %call.i141 = tail call i32 @__get_free_pages(i32 noundef %or.i, i32 noundef 0) #7
  %14 = inttoptr i32 %call.i141 to ptr
  tail call void @kmemleak_alloc(ptr noundef %14, i32 noundef 4096, i32 noundef 1, i32 noundef %gfp_mask) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool57.not = icmp eq i32 %call.i141, 0
  br i1 %tobool57.not, label %if.then55.cleanup90_crit_edge, label %if.then55.if.end60_crit_edge

if.then55.if.end60_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.then55.cleanup90_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup90

if.end60:                                         ; preds = %if.then55.if.end60_crit_edge, %if.then53.if.end60_crit_edge
  %new_node.5 = phi ptr [ %new_node.0, %if.then53.if.end60_crit_edge ], [ %14, %if.then55.if.end60_crit_edge ]
  %call.i135 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx45, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !21
  %15 = ptrtoint ptr %new_node.5 to i32
  tail call void @llvm.prefetch.p0(ptr %arrayidx45, i32 1, i32 3, i32 1) #7
  br label %do.body.i144

do.body.i144:                                     ; preds = %do.body.i144.do.body.i144_crit_edge, %if.end60
  %16 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %arrayidx45, i32 0, i32 %15) #7, !srcloc !20
  %asmresult.i142 = extractvalue { i32, i32 } %16, 0
  %tobool.not.i143 = icmp eq i32 %asmresult.i142, 0
  br i1 %tobool.not.i143, label %__cmpxchg.exit146, label %do.body.i144.do.body.i144_crit_edge

do.body.i144.do.body.i144_crit_edge:              ; preds = %do.body.i144
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i144

__cmpxchg.exit146:                                ; preds = %do.body.i144
  call void @__sanitizer_cov_trace_pc() #6
  %asmresult1.i145 = extractvalue { i32, i32 } %16, 1
  %17 = inttoptr i32 %asmresult1.i145 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i145)
  %tobool75.not = icmp eq i32 %asmresult1.i145, 0
  %spec.select133 = select i1 %tobool75.not, ptr null, ptr %new_node.5
  %spec.select134 = select i1 %tobool75.not, ptr %new_node.5, ptr %17
  br label %cleanup82

cleanup82:                                        ; preds = %__cmpxchg.exit146, %while.body43.cleanup82_crit_edge
  %new_node.7 = phi ptr [ %new_node.0, %while.body43.cleanup82_crit_edge ], [ %spec.select133, %__cmpxchg.exit146 ]
  %n.2 = phi ptr [ %13, %while.body43.cleanup82_crit_edge ], [ %spec.select134, %__cmpxchg.exit146 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec170)
  %tobool42.not = icmp eq i32 %dec170, 0
  br i1 %tobool42.not, label %cleanup82.while.end85_crit_edge, label %while.body43.1

cleanup82.while.end85_crit_edge:                  ; preds = %cleanup82
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end85

while.body43.1:                                   ; preds = %cleanup82
  %dec170.1 = add nsw i32 %and.i136, -2
  %mul.i138.1 = mul nsw i32 %dec170.1, 10
  %add.i139.1 = add nsw i32 %mul.i138.1, 12
  %shr.1 = lshr i32 %and, %add.i139.1
  %arrayidx45.1 = getelementptr [1024 x ptr], ptr %n.2, i32 0, i32 %shr.1
  %notmask.1 = shl nsw i32 -1, %add.i139.1
  %sub47.1 = xor i32 %notmask.1, -1
  %and.1 = and i32 %and, %sub47.1
  %18 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx45.1, align 4
  %tobool52.not.1 = icmp eq ptr %19, null
  br i1 %tobool52.not.1, label %if.then53.1, label %while.body43.1.cleanup82.1_crit_edge

while.body43.1.cleanup82.1_crit_edge:             ; preds = %while.body43.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup82.1

if.then53.1:                                      ; preds = %while.body43.1
  %tobool54.not.1 = icmp eq ptr %new_node.7, null
  br i1 %tobool54.not.1, label %if.then55.1, label %if.then53.1.if.end60.1_crit_edge

if.then53.1.if.end60.1_crit_edge:                 ; preds = %if.then53.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60.1

if.then55.1:                                      ; preds = %if.then53.1
  %call.i141.1 = tail call i32 @__get_free_pages(i32 noundef %or.i, i32 noundef 0) #7
  %20 = inttoptr i32 %call.i141.1 to ptr
  tail call void @kmemleak_alloc(ptr noundef %20, i32 noundef 4096, i32 noundef 1, i32 noundef %gfp_mask) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141.1)
  %tobool57.not.1 = icmp eq i32 %call.i141.1, 0
  br i1 %tobool57.not.1, label %if.then55.1.cleanup90_crit_edge, label %if.then55.1.if.end60.1_crit_edge

if.then55.1.if.end60.1_crit_edge:                 ; preds = %if.then55.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60.1

if.then55.1.cleanup90_crit_edge:                  ; preds = %if.then55.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup90

if.end60.1:                                       ; preds = %if.then55.1.if.end60.1_crit_edge, %if.then53.1.if.end60.1_crit_edge
  %new_node.5.1 = phi ptr [ %new_node.7, %if.then53.1.if.end60.1_crit_edge ], [ %20, %if.then55.1.if.end60.1_crit_edge ]
  %call.i135.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx45.1, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !21
  %21 = ptrtoint ptr %new_node.5.1 to i32
  tail call void @llvm.prefetch.p0(ptr %arrayidx45.1, i32 1, i32 3, i32 1) #7
  br label %do.body.i144.1

do.body.i144.1:                                   ; preds = %do.body.i144.1.do.body.i144.1_crit_edge, %if.end60.1
  %22 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %arrayidx45.1, i32 0, i32 %21) #7, !srcloc !20
  %asmresult.i142.1 = extractvalue { i32, i32 } %22, 0
  %tobool.not.i143.1 = icmp eq i32 %asmresult.i142.1, 0
  br i1 %tobool.not.i143.1, label %__cmpxchg.exit146.1, label %do.body.i144.1.do.body.i144.1_crit_edge

do.body.i144.1.do.body.i144.1_crit_edge:          ; preds = %do.body.i144.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i144.1

__cmpxchg.exit146.1:                              ; preds = %do.body.i144.1
  call void @__sanitizer_cov_trace_pc() #6
  %asmresult1.i145.1 = extractvalue { i32, i32 } %22, 1
  %23 = inttoptr i32 %asmresult1.i145.1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i145.1)
  %tobool75.not.1 = icmp eq i32 %asmresult1.i145.1, 0
  %spec.select133.1 = select i1 %tobool75.not.1, ptr null, ptr %new_node.5.1
  %spec.select134.1 = select i1 %tobool75.not.1, ptr %new_node.5.1, ptr %23
  br label %cleanup82.1

cleanup82.1:                                      ; preds = %__cmpxchg.exit146.1, %while.body43.1.cleanup82.1_crit_edge
  %new_node.7.1 = phi ptr [ %new_node.7, %while.body43.1.cleanup82.1_crit_edge ], [ %spec.select133.1, %__cmpxchg.exit146.1 ]
  %n.2.1 = phi ptr [ %19, %while.body43.1.cleanup82.1_crit_edge ], [ %spec.select134.1, %__cmpxchg.exit146.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec170.1)
  %tobool42.not.1 = icmp eq i32 %dec170.1, 0
  br i1 %tobool42.not.1, label %cleanup82.1.while.end85_crit_edge, label %while.body43.2

cleanup82.1.while.end85_crit_edge:                ; preds = %cleanup82.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end85

while.body43.2:                                   ; preds = %cleanup82.1
  %24 = mul nuw nsw i32 %and.i136, 10
  %add.i139.2 = add nsw i32 %24, -18
  %shr.2 = lshr i32 %and.1, %add.i139.2
  %arrayidx45.2 = getelementptr [1024 x ptr], ptr %n.2.1, i32 0, i32 %shr.2
  %notmask.2 = shl nsw i32 -1, %add.i139.2
  %sub47.2 = xor i32 %notmask.2, -1
  %and.2 = and i32 %and.1, %sub47.2
  %25 = ptrtoint ptr %arrayidx45.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %arrayidx45.2, align 4
  %tobool52.not.2 = icmp eq ptr %26, null
  br i1 %tobool52.not.2, label %if.then53.2, label %while.body43.2.while.end85_crit_edge

while.body43.2.while.end85_crit_edge:             ; preds = %while.body43.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end85

if.then53.2:                                      ; preds = %while.body43.2
  %tobool54.not.2 = icmp eq ptr %new_node.7.1, null
  br i1 %tobool54.not.2, label %if.then55.2, label %if.then53.2.if.end60.2_crit_edge

if.then53.2.if.end60.2_crit_edge:                 ; preds = %if.then53.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60.2

if.then55.2:                                      ; preds = %if.then53.2
  %call.i141.2 = tail call i32 @__get_free_pages(i32 noundef %or.i, i32 noundef 0) #7
  %27 = inttoptr i32 %call.i141.2 to ptr
  tail call void @kmemleak_alloc(ptr noundef %27, i32 noundef 4096, i32 noundef 1, i32 noundef %gfp_mask) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141.2)
  %tobool57.not.2 = icmp eq i32 %call.i141.2, 0
  br i1 %tobool57.not.2, label %if.then55.2.cleanup90_crit_edge, label %if.then55.2.if.end60.2_crit_edge

if.then55.2.if.end60.2_crit_edge:                 ; preds = %if.then55.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60.2

if.then55.2.cleanup90_crit_edge:                  ; preds = %if.then55.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup90

if.end60.2:                                       ; preds = %if.then55.2.if.end60.2_crit_edge, %if.then53.2.if.end60.2_crit_edge
  %new_node.5.2 = phi ptr [ %new_node.7.1, %if.then53.2.if.end60.2_crit_edge ], [ %27, %if.then55.2.if.end60.2_crit_edge ]
  %call.i135.2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx45.2, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !21
  %28 = ptrtoint ptr %new_node.5.2 to i32
  tail call void @llvm.prefetch.p0(ptr %arrayidx45.2, i32 1, i32 3, i32 1) #7
  br label %do.body.i144.2

do.body.i144.2:                                   ; preds = %do.body.i144.2.do.body.i144.2_crit_edge, %if.end60.2
  %29 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %arrayidx45.2, i32 0, i32 %28) #7, !srcloc !20
  %asmresult.i142.2 = extractvalue { i32, i32 } %29, 0
  %tobool.not.i143.2 = icmp eq i32 %asmresult.i142.2, 0
  br i1 %tobool.not.i143.2, label %__cmpxchg.exit146.2, label %do.body.i144.2.do.body.i144.2_crit_edge

do.body.i144.2.do.body.i144.2_crit_edge:          ; preds = %do.body.i144.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i144.2

__cmpxchg.exit146.2:                              ; preds = %do.body.i144.2
  call void @__sanitizer_cov_trace_pc() #6
  %asmresult1.i145.2 = extractvalue { i32, i32 } %29, 1
  %30 = inttoptr i32 %asmresult1.i145.2 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i145.2)
  %tobool75.not.2 = icmp eq i32 %asmresult1.i145.2, 0
  %spec.select133.2 = select i1 %tobool75.not.2, ptr null, ptr %new_node.5.2
  %spec.select134.2 = select i1 %tobool75.not.2, ptr %new_node.5.2, ptr %30
  br label %while.end85

while.end85:                                      ; preds = %__cmpxchg.exit146.2, %while.body43.2.while.end85_crit_edge, %cleanup82.1.while.end85_crit_edge, %cleanup82.while.end85_crit_edge, %while.cond41.preheader.while.end85_crit_edge
  %new_node.4.lcssa = phi ptr [ %new_node.0, %while.cond41.preheader.while.end85_crit_edge ], [ %new_node.7, %cleanup82.while.end85_crit_edge ], [ %new_node.7.1, %cleanup82.1.while.end85_crit_edge ], [ %new_node.7.1, %while.body43.2.while.end85_crit_edge ], [ %spec.select133.2, %__cmpxchg.exit146.2 ]
  %n.0.lcssa = phi ptr [ %11, %while.cond41.preheader.while.end85_crit_edge ], [ %n.2, %cleanup82.while.end85_crit_edge ], [ %n.2.1, %cleanup82.1.while.end85_crit_edge ], [ %26, %while.body43.2.while.end85_crit_edge ], [ %spec.select134.2, %__cmpxchg.exit146.2 ]
  %offset.addr.0.lcssa = phi i32 [ %offset, %while.cond41.preheader.while.end85_crit_edge ], [ %and, %cleanup82.while.end85_crit_edge ], [ %and.1, %cleanup82.1.while.end85_crit_edge ], [ %and.2, %__cmpxchg.exit146.2 ], [ %and.2, %while.body43.2.while.end85_crit_edge ]
  %tobool86.not = icmp eq ptr %new_node.4.lcssa, null
  br i1 %tobool86.not, label %while.end85.if.end88_crit_edge, label %if.then87

while.end85.if.end88_crit_edge:                   ; preds = %while.end85
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end88

if.then87:                                        ; preds = %while.end85
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kmemleak_free(ptr noundef nonnull %new_node.4.lcssa) #7
  %31 = ptrtoint ptr %new_node.4.lcssa to i32
  tail call void @free_pages(i32 noundef %31, i32 noundef 0) #7
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %while.end85.if.end88_crit_edge
  %arrayidx89 = getelementptr [4096 x i8], ptr %n.0.lcssa, i32 0, i32 %offset.addr.0.lcssa
  br label %cleanup90

cleanup90:                                        ; preds = %if.end88, %if.then55.2.cleanup90_crit_edge, %if.then55.1.cleanup90_crit_edge, %if.then55.cleanup90_crit_edge, %if.then11.cleanup90_crit_edge
  %retval.4 = phi ptr [ %arrayidx89, %if.end88 ], [ null, %if.then55.2.cleanup90_crit_edge ], [ null, %if.then55.1.cleanup90_crit_edge ], [ null, %if.then55.cleanup90_crit_edge ], [ null, %if.then11.cleanup90_crit_edge ]
  ret ptr %retval.4
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__genradix_iter_peek(ptr nocapture noundef %iter, ptr noundef %radix, i32 noundef %objs_per_page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %radix to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %radix, align 4
  %tobool.not75 = icmp eq ptr %1, null
  br i1 %tobool.not75, label %entry.cleanup_crit_edge, label %if.end.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %pos = getelementptr inbounds %struct.genradix_iter, ptr %iter, i32 0, i32 1
  br label %if.end

restart.loopexit:                                 ; preds = %while.body20.restart.loopexit_crit_edge, %while.body20.2.restart.loopexit_crit_edge, %while.body20.1.restart.loopexit_crit_edge
  %2 = ptrtoint ptr %radix to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %radix, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %restart.loopexit.cleanup_crit_edge, label %restart.loopexit.if.end_crit_edge

restart.loopexit.if.end_crit_edge:                ; preds = %restart.loopexit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

restart.loopexit.cleanup_crit_edge:               ; preds = %restart.loopexit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %restart.loopexit.if.end_crit_edge, %if.end.lr.ph
  %4 = phi ptr [ %1, %if.end.lr.ph ], [ %3, %restart.loopexit.if.end_crit_edge ]
  %5 = ptrtoint ptr %4 to i32
  %and.i63 = and i32 %5, 3
  %6 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %7, i1 true) #7, !range !18
  %sub.i.op.i = xor i32 %8, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %mul.i = mul nuw nsw i32 %and.i63, 10
  %add.i = add nuw nsw i32 %mul.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %add.i)
  %cmp11.not = icmp slt i32 %sub.i, %add.i
  br i1 %cmp11.not, label %while.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %and.i = and i32 %5, -4
  %9 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63)
  %tobool15.not71 = icmp eq i32 %and.i63, 0
  br i1 %tobool15.not71, label %while.end34.loopexit83, label %while.body

while.cond.loopexit:                              ; preds = %while.cond18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool15.not = icmp eq i32 %dec, 0
  br i1 %tobool15.not, label %while.cond.loopexit.while.end34_crit_edge, label %while.body.1

while.cond.loopexit.while.end34_crit_edge:        ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end34

while.body.1:                                     ; preds = %while.cond.loopexit
  %dec.1 = add nsw i32 %and.i63, -2
  %10 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iter, align 4
  %mul.i64.1 = mul nsw i32 %dec.1, 10
  %add.i65.1 = add nsw i32 %mul.i64.1, 12
  %shr.1 = lshr i32 %11, %add.i65.1
  %and.1 = and i32 %shr.1, 1023
  %shl.i.1 = shl nuw i32 1, %add.i65.1
  %neg.1 = sub i32 0, %shl.i.1
  br label %while.cond18.1

while.cond18.1:                                   ; preds = %while.body20.1.while.cond18.1_crit_edge, %while.body.1
  %i.0.1 = phi i32 [ %and.1, %while.body.1 ], [ %inc.1, %while.body20.1.while.cond18.1_crit_edge ]
  %arrayidx.1 = getelementptr [1024 x ptr], ptr %28, i32 0, i32 %i.0.1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %tobool19.not.1 = icmp eq ptr %13, null
  br i1 %tobool19.not.1, label %while.body20.1, label %while.cond.loopexit.1

while.cond.loopexit.1:                            ; preds = %while.cond18.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %tobool15.not.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool15.not.1, label %while.cond.loopexit.1.while.end34_crit_edge, label %while.body.2

while.cond.loopexit.1.while.end34_crit_edge:      ; preds = %while.cond.loopexit.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end34

while.body20.1:                                   ; preds = %while.cond18.1
  %inc.1 = add nuw nsw i32 %i.0.1, 1
  %14 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iter, align 4
  %add.1 = add i32 %15, %shl.i.1
  %and25.1 = and i32 %add.1, %neg.1
  store i32 %and25.1, ptr %iter, align 4
  %shr28.1 = lshr i32 %and25.1, 12
  %mul.1 = mul i32 %shr28.1, %objs_per_page
  %16 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul.1, ptr %pos, align 4
  %cmp29.1 = icmp eq i32 %inc.1, 1024
  br i1 %cmp29.1, label %while.body20.1.restart.loopexit_crit_edge, label %while.body20.1.while.cond18.1_crit_edge

while.body20.1.while.cond18.1_crit_edge:          ; preds = %while.body20.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond18.1

while.body20.1.restart.loopexit_crit_edge:        ; preds = %while.body20.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %restart.loopexit

while.body.2:                                     ; preds = %while.cond.loopexit.1
  %17 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iter, align 4
  %19 = mul nuw nsw i32 %and.i63, 10
  %add.i65.2 = add nsw i32 %19, -18
  %shr.2 = lshr i32 %18, %add.i65.2
  %and.2 = and i32 %shr.2, 1023
  %shl.i.2 = shl nuw i32 1, %add.i65.2
  %neg.2 = sub i32 0, %shl.i.2
  br label %while.cond18.2

while.cond18.2:                                   ; preds = %while.body20.2.while.cond18.2_crit_edge, %while.body.2
  %i.0.2 = phi i32 [ %and.2, %while.body.2 ], [ %inc.2, %while.body20.2.while.cond18.2_crit_edge ]
  %arrayidx.2 = getelementptr [1024 x ptr], ptr %13, i32 0, i32 %i.0.2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.2, align 4
  %tobool19.not.2 = icmp eq ptr %21, null
  br i1 %tobool19.not.2, label %while.body20.2, label %while.cond18.2.while.end34_crit_edge

while.cond18.2.while.end34_crit_edge:             ; preds = %while.cond18.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end34

while.body20.2:                                   ; preds = %while.cond18.2
  %inc.2 = add nuw nsw i32 %i.0.2, 1
  %22 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iter, align 4
  %add.2 = add i32 %23, %shl.i.2
  %and25.2 = and i32 %add.2, %neg.2
  store i32 %and25.2, ptr %iter, align 4
  %shr28.2 = lshr i32 %and25.2, 12
  %mul.2 = mul i32 %shr28.2, %objs_per_page
  %24 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul.2, ptr %pos, align 4
  %cmp29.2 = icmp eq i32 %inc.2, 1024
  br i1 %cmp29.2, label %while.body20.2.restart.loopexit_crit_edge, label %while.body20.2.while.cond18.2_crit_edge

while.body20.2.while.cond18.2_crit_edge:          ; preds = %while.body20.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond18.2

while.body20.2.restart.loopexit_crit_edge:        ; preds = %while.body20.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %restart.loopexit

while.body:                                       ; preds = %while.cond.preheader
  %dec = add nsw i32 %and.i63, -1
  %25 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iter, align 4
  %mul.i64 = mul nsw i32 %dec, 10
  %add.i65 = add nsw i32 %mul.i64, 12
  %shr = lshr i32 %26, %add.i65
  %and = and i32 %shr, 1023
  %shl.i = shl nuw i32 1, %add.i65
  %neg = sub i32 0, %shl.i
  br label %while.cond18

while.cond18:                                     ; preds = %while.body20.while.cond18_crit_edge, %while.body
  %i.0 = phi i32 [ %and, %while.body ], [ %inc, %while.body20.while.cond18_crit_edge ]
  %arrayidx = getelementptr [1024 x ptr], ptr %9, i32 0, i32 %i.0
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %tobool19.not = icmp eq ptr %28, null
  br i1 %tobool19.not, label %while.body20, label %while.cond.loopexit

while.body20:                                     ; preds = %while.cond18
  %inc = add nuw nsw i32 %i.0, 1
  %29 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iter, align 4
  %add = add i32 %30, %shl.i
  %and25 = and i32 %add, %neg
  store i32 %and25, ptr %iter, align 4
  %shr28 = lshr i32 %and25, 12
  %mul = mul i32 %shr28, %objs_per_page
  %31 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul, ptr %pos, align 4
  %cmp29 = icmp eq i32 %inc, 1024
  br i1 %cmp29, label %while.body20.restart.loopexit_crit_edge, label %while.body20.while.cond18_crit_edge

while.body20.while.cond18_crit_edge:              ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond18

while.body20.restart.loopexit_crit_edge:          ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %restart.loopexit

while.end34.loopexit83:                           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %32 = inttoptr i32 %and.i to ptr
  br label %while.end34

while.end34:                                      ; preds = %while.end34.loopexit83, %while.cond18.2.while.end34_crit_edge, %while.cond.loopexit.1.while.end34_crit_edge, %while.cond.loopexit.while.end34_crit_edge
  %n.0.lcssa = phi ptr [ %32, %while.end34.loopexit83 ], [ %21, %while.cond18.2.while.end34_crit_edge ], [ %13, %while.cond.loopexit.1.while.end34_crit_edge ], [ %28, %while.cond.loopexit.while.end34_crit_edge ]
  %33 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iter, align 4
  %and36 = and i32 %34, 4095
  %arrayidx37 = getelementptr [4096 x i8], ptr %n.0.lcssa, i32 0, i32 %and36
  br label %cleanup

cleanup:                                          ; preds = %while.end34, %if.end.cleanup_crit_edge, %restart.loopexit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx37, %while.end34 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %restart.loopexit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__genradix_prealloc(ptr noundef %radix, i32 noundef %size, i32 noundef %gfp_mask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp3.not = icmp eq i32 %size, 0
  br i1 %cmp3.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %add = add i32 %offset.04, 4096
  %cmp = icmp ult i32 %add, %size
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %offset.04 = phi i32 [ %add, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call ptr @__genradix_ptr_alloc(ptr noundef %radix, i32 noundef %offset.04, i32 noundef %gfp_mask)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__genradix_free(ptr noundef %radix) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %radix, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !22
  tail call void @llvm.prefetch.p0(ptr %radix, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %radix) #7, !srcloc !23
  %asmresult.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !24
  %and.i = and i32 %asmresult.i, -4
  %1 = inttoptr i32 %and.i to ptr
  %and.i19 = and i32 %asmresult.i, 3
  tail call fastcc void @genradix_free_recurse(ptr noundef %1, i32 noundef %and.i19)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @genradix_free_recurse(ptr noundef %n, i32 noundef %level) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %tobool.not = icmp eq i32 %level, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %for.cond.preheader

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

for.cond.preheader:                               ; preds = %entry
  %sub = add i32 %level, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.011 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [1024 x ptr], ptr %n, i32 0, i32 %i.011
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.then2

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @genradix_free_recurse(ptr noundef nonnull %1, i32 noundef %sub)
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.inc.if.end4_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.if.end4_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.end4:                                          ; preds = %for.inc.if.end4_crit_edge, %entry.if.end4_crit_edge
  tail call void @kmemleak_free(ptr noundef %n) #7
  %2 = ptrtoint ptr %n to i32
  tail call void @free_pages(i32 noundef %2, i32 noundef 0) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3 section ".ref.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_free(ptr noundef) local_unnamed_addr #3 section ".ref.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind uwtable(sync) }
attributes #6 = { nomerge }
attributes #7 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab___genradix_ptr, !1, !"__ksymtab___genradix_ptr", i1 false, i1 false}
!1 = !{!"../lib/generic-radix-tree.c", i32 77, i32 1}
!2 = !{ptr @__ksymtab___genradix_ptr_alloc, !3, !"__ksymtab___genradix_ptr_alloc", i1 false, i1 false}
!3 = !{!"../lib/generic-radix-tree.c", i32 160, i32 1}
!4 = !{ptr @__ksymtab___genradix_iter_peek, !5, !"__ksymtab___genradix_iter_peek", i1 false, i1 false}
!5 = !{!"../lib/generic-radix-tree.c", i32 202, i32 1}
!6 = !{ptr @__ksymtab___genradix_prealloc, !7, !"__ksymtab___genradix_prealloc", i1 false, i1 false}
!7 = !{!"../lib/generic-radix-tree.c", i32 228, i32 1}
!8 = !{ptr @__ksymtab___genradix_free, !9, !"__ksymtab___genradix_free", i1 false, i1 false}
!9 = !{!"../lib/generic-radix-tree.c", i32 237, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i32 0, i32 33}
!19 = !{i64 2152104120}
!20 = !{i64 722077, i64 722098, i64 722121, i64 722140, i64 722159}
!21 = !{i64 2152107535}
!22 = !{i64 2152117073}
!23 = !{i64 719353, i64 719370, i64 719394, i64 719420, i64 719438}
!24 = !{i64 2152117426}
