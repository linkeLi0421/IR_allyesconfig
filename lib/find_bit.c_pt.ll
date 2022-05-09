; ModuleID = '/llk/IR_all_yes/lib/find_bit.c_pt.bc'
source_filename = "../lib/find_bit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+_find_next_bit\22, \22a\22\09"
module asm "\09.weak\09__crc__find_next_bit\09\09\09\09"
module asm "\09.long\09__crc__find_next_bit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__find_next_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22_find_next_bit\22\09\09\09\09\09"
module asm "__kstrtabns__find_next_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_find_first_and_bit\22, \22a\22\09"
module asm "\09.weak\09__crc__find_first_and_bit\09\09\09\09"
module asm "\09.long\09__crc__find_first_and_bit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__find_first_and_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22_find_first_and_bit\22\09\09\09\09\09"
module asm "__kstrtabns__find_first_and_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_find_last_bit\22, \22a\22\09"
module asm "\09.weak\09__crc__find_last_bit\09\09\09\09"
module asm "\09.long\09__crc__find_last_bit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__find_last_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22_find_last_bit\22\09\09\09\09\09"
module asm "__kstrtabns__find_last_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+find_next_clump8\22, \22a\22\09"
module asm "\09.weak\09__crc_find_next_clump8\09\09\09\09"
module asm "\09.long\09__crc_find_next_clump8\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_next_clump8:\09\09\09\09\09"
module asm "\09.asciz \09\22find_next_clump8\22\09\09\09\09\09"
module asm "__kstrtabns_find_next_clump8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab__find_next_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns__find_next_bit = external dso_local constant [0 x i8], align 1
@__ksymtab__find_next_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_find_next_bit to i32), ptr @__kstrtab__find_next_bit, ptr @__kstrtabns__find_next_bit }, section "___ksymtab+_find_next_bit", align 4
@__kstrtab__find_first_and_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns__find_first_and_bit = external dso_local constant [0 x i8], align 1
@__ksymtab__find_first_and_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_find_first_and_bit to i32), ptr @__kstrtab__find_first_and_bit, ptr @__kstrtabns__find_first_and_bit }, section "___ksymtab+_find_first_and_bit", align 4
@__kstrtab__find_last_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns__find_last_bit = external dso_local constant [0 x i8], align 1
@__ksymtab__find_last_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_find_last_bit to i32), ptr @__kstrtab__find_last_bit, ptr @__kstrtabns__find_last_bit }, section "___ksymtab+_find_last_bit", align 4
@__kstrtab_find_next_clump8 = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_next_clump8 = external dso_local constant [0 x i8], align 1
@__ksymtab_find_next_clump8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_next_clump8 to i32), ptr @__kstrtab_find_next_clump8, ptr @__kstrtabns_find_next_clump8 }, section "___ksymtab+find_next_clump8", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab__find_first_and_bit, ptr @__ksymtab__find_last_bit, ptr @__ksymtab__find_next_bit, ptr @__ksymtab_find_next_clump8], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_find_next_bit(ptr nocapture noundef readonly %addr1, ptr noundef readonly %addr2, i32 noundef %nbits, i32 noundef %start, i32 noundef %invert, i32 noundef %le) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %nbits)
  %cmp.not = icmp ult i32 %start, %nbits
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !16

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %div66 = lshr i32 %start, 5
  %arrayidx = getelementptr i32, ptr %addr1, i32 %div66
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %addr2, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx5 = getelementptr i32, ptr %addr2, i32 %div66
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx5, align 4
  %and = and i32 %3, %1
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %tmp.0 = phi i32 [ %and, %if.then3 ], [ %1, %if.end.if.end6_crit_edge ]
  %xor = xor i32 %tmp.0, %invert
  %and7 = and i32 %start, 31
  %shl = shl nsw i32 -1, %and7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %le)
  %tobool8.not = icmp eq i32 %le, 0
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl) #6
  %spec.select = select i1 %tobool8.not, i32 %shl, i32 %4
  %and11 = and i32 %xor, %spec.select
  %and12 = and i32 %start, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool13.not71 = icmp eq i32 %and11, 0
  br i1 %tobool13.not71, label %if.end6.while.body_crit_edge, label %if.end6.while.end_crit_edge

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  br label %while.body

while.body:                                       ; preds = %if.end26.while.body_crit_edge, %if.end6.while.body_crit_edge
  %start.addr.072 = phi i32 [ %add, %if.end26.while.body_crit_edge ], [ %and12, %if.end6.while.body_crit_edge ]
  %add = add i32 %start.addr.072, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %nbits)
  %cmp16.not = icmp ult i32 %add, %nbits
  br i1 %cmp16.not, label %if.end18, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end18:                                         ; preds = %while.body
  %div1967 = lshr exact i32 %add, 5
  %arrayidx20 = getelementptr i32, ptr %addr1, i32 %div1967
  %5 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx20, align 4
  br i1 %tobool2.not, label %if.end18.if.end26_crit_edge, label %if.then22

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx24 = getelementptr i32, ptr %addr2, i32 %div1967
  %7 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx24, align 4
  %and25 = and i32 %8, %6
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end18.if.end26_crit_edge
  %tmp.2 = phi i32 [ %and25, %if.then22 ], [ %6, %if.end18.if.end26_crit_edge ]
  %xor27 = xor i32 %tmp.2, %invert
  %tobool13.not = icmp eq i32 %xor27, 0
  br i1 %tobool13.not, label %if.end26.while.body_crit_edge, label %if.end26.while.end_crit_edge

if.end26.while.end_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

if.end26.while.body_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.end:                                        ; preds = %if.end26.while.end_crit_edge, %if.end6.while.end_crit_edge
  %start.addr.0.lcssa = phi i32 [ %and12, %if.end6.while.end_crit_edge ], [ %add, %if.end26.while.end_crit_edge ]
  %tmp.1.lcssa = phi i32 [ %and11, %if.end6.while.end_crit_edge ], [ %xor27, %if.end26.while.end_crit_edge ]
  %9 = tail call i32 @llvm.bswap.i32(i32 %tmp.1.lcssa) #6
  %spec.select68 = select i1 %tobool8.not, i32 %tmp.1.lcssa, i32 %9
  %10 = tail call i32 @llvm.cttz.i32(i32 %spec.select68, i1 false) #6, !range !17
  %add33 = add i32 %10, %start.addr.0.lcssa
  %11 = tail call i32 @llvm.umin.i32(i32 %add33, i32 %nbits)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %while.end ], [ %nbits, %entry.cleanup_crit_edge ], [ %nbits, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_find_first_and_bit(ptr nocapture noundef readonly %addr1, ptr nocapture noundef readonly %addr2, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp15.not = icmp eq i32 %size, 0
  br i1 %cmp15.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %0 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr1, align 4
  %2 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr2, align 4
  %and24 = and i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool.not25 = icmp eq i32 %and24, 0
  br i1 %tobool.not25, label %for.body.preheader.for.cond_crit_edge, label %for.body.preheader.if.then_crit_edge

for.body.preheader.if.then_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

for.body.preheader.for.cond_crit_edge:            ; preds = %for.body.preheader
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.preheader.for.cond_crit_edge
  %idx.01626 = phi i32 [ %inc, %for.body.for.cond_crit_edge ], [ 0, %for.body.preheader.for.cond_crit_edge ]
  %inc = add i32 %idx.01626, 1
  %mul = shl i32 %inc, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %size)
  %cmp = icmp ult i32 %mul, %size
  br i1 %cmp, label %for.body, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr i32, ptr %addr1, i32 %inc
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr i32, ptr %addr2, i32 %inc
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1, align 4
  %and = and i32 %7, %5
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.if.then_crit_edge

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond

if.then:                                          ; preds = %for.body.if.then_crit_edge, %for.body.preheader.if.then_crit_edge
  %mul17.lcssa = phi i32 [ 0, %for.body.preheader.if.then_crit_edge ], [ %mul, %for.body.if.then_crit_edge ]
  %and.lcssa = phi i32 [ %and24, %for.body.preheader.if.then_crit_edge ], [ %and, %for.body.if.then_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %and.lcssa, i1 true) #6, !range !17
  %add = or i32 %8, %mul17.lcssa
  %9 = tail call i32 @llvm.umin.i32(i32 %add, i32 %size)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ %size, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_find_last_bit(ptr nocapture noundef readonly %addr, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then:                                          ; preds = %entry
  %sub = sub i32 0, %size
  %and = and i32 %sub, 31
  %shr = lshr i32 -1, %and
  %sub1 = add i32 %size, -1
  %div15 = lshr i32 %sub1, 5
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.then
  %val.0 = phi i32 [ %shr, %if.then ], [ -1, %if.end.do.body_crit_edge ]
  %idx.0 = phi i32 [ %div15, %if.then ], [ %dec, %if.end.do.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %addr, i32 %idx.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and2 = and i32 %1, %val.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end, label %cleanup

if.end:                                           ; preds = %do.body
  %dec = add nsw i32 %idx.0, -1
  %tobool5.not = icmp eq i32 %idx.0, 0
  br i1 %tobool5.not, label %if.end.return_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

cleanup:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %mul = shl i32 %idx.0, 5
  %2 = tail call i32 @llvm.ctlz.i32(i32 %and2, i1 true) #6, !range !17
  %3 = or i32 %2, %mul
  %add = xor i32 %3, 31
  br label %return

return:                                           ; preds = %cleanup, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ %add, %cleanup ], [ 0, %entry.return_crit_edge ], [ %size, %if.end.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @find_next_clump8(ptr nocapture noundef writeonly %clump, ptr noundef %addr, i32 noundef %size, i32 noundef %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @_find_next_bit_be(ptr noundef %addr, i32 noundef %size, i32 noundef %offset) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %size)
  %cmp = icmp eq i32 %call, %size
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and = and i32 %call, -8
  %div2.i = lshr i32 %call, 5
  %rem.i = and i32 %call, 24
  %arrayidx.i = getelementptr i32, ptr %addr, i32 %div2.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %1, %rem.i
  %and.i = and i32 %shr.i, 255
  %2 = ptrtoint ptr %clump to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and.i, ptr %clump, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ %size, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @__ksymtab__find_next_bit, !1, !"__ksymtab__find_next_bit", i1 false, i1 false}
!1 = !{!"../lib/find_bit.c", i32 71, i32 1}
!2 = !{ptr @__ksymtab__find_first_and_bit, !3, !"__ksymtab__find_first_and_bit", i1 false, i1 false}
!3 = !{!"../lib/find_bit.c", i32 110, i32 1}
!4 = !{ptr @__ksymtab__find_last_bit, !5, !"__ksymtab__find_last_bit", i1 false, i1 false}
!5 = !{!"../lib/find_bit.c", i32 148, i32 1}
!6 = !{ptr @__ksymtab_find_next_clump8, !7, !"__ksymtab_find_next_clump8", i1 false, i1 false}
!7 = !{!"../lib/find_bit.c", i32 163, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i32 0, i32 33}
