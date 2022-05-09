; ModuleID = '/llk/IR_all_yes/lib/mpi/mpi-bit.c_pt.bc'
source_filename = "../lib/mpi/mpi-bit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mpi_normalize\22, \22a\22\09"
module asm "\09.weak\09__crc_mpi_normalize\09\09\09\09"
module asm "\09.long\09__crc_mpi_normalize\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_normalize:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_normalize\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_normalize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mpi_get_nbits\22, \22a\22\09"
module asm "\09.weak\09__crc_mpi_get_nbits\09\09\09\09"
module asm "\09.long\09__crc_mpi_get_nbits\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_get_nbits:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_get_nbits\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_get_nbits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mpi_test_bit\22, \22a\22\09"
module asm "\09.weak\09__crc_mpi_test_bit\09\09\09\09"
module asm "\09.long\09__crc_mpi_test_bit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_test_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_test_bit\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_test_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mpi_set_highbit\22, \22a\22\09"
module asm "\09.weak\09__crc_mpi_set_highbit\09\09\09\09"
module asm "\09.long\09__crc_mpi_set_highbit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_set_highbit:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_set_highbit\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_set_highbit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mpi_clear_bit\22, \22a\22\09"
module asm "\09.weak\09__crc_mpi_clear_bit\09\09\09\09"
module asm "\09.long\09__crc_mpi_clear_bit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_clear_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_clear_bit\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_clear_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__kstrtab_mpi_normalize = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_normalize = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_normalize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_normalize to i32), ptr @__kstrtab_mpi_normalize, ptr @__kstrtabns_mpi_normalize }, section "___ksymtab_gpl+mpi_normalize", align 4
@__kstrtab_mpi_get_nbits = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_get_nbits = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_get_nbits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_get_nbits to i32), ptr @__kstrtab_mpi_get_nbits, ptr @__kstrtabns_mpi_get_nbits }, section "___ksymtab_gpl+mpi_get_nbits", align 4
@__kstrtab_mpi_test_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_test_bit = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_test_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_test_bit to i32), ptr @__kstrtab_mpi_test_bit, ptr @__kstrtabns_mpi_test_bit }, section "___ksymtab_gpl+mpi_test_bit", align 4
@__kstrtab_mpi_set_highbit = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_set_highbit = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_set_highbit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_set_highbit to i32), ptr @__kstrtab_mpi_set_highbit, ptr @__kstrtabns_mpi_set_highbit }, section "___ksymtab_gpl+mpi_set_highbit", align 4
@__kstrtab_mpi_clear_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_clear_bit = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_clear_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_clear_bit to i32), ptr @__kstrtab_mpi_clear_bit, ptr @__kstrtabns_mpi_clear_bit }, section "___ksymtab_gpl+mpi_clear_bit", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_mpi_clear_bit, ptr @__ksymtab_mpi_get_nbits, ptr @__ksymtab_mpi_normalize, ptr @__ksymtab_mpi_set_highbit, ptr @__ksymtab_mpi_test_bit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_normalize(ptr nocapture noundef %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlimbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not7 = icmp eq i32 %1, 0
  br i1 %tobool.not7, label %entry.for.end_crit_edge, label %land.rhs.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %entry
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 5
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %4 = phi i32 [ %1, %land.rhs.lr.ph ], [ %sub, %for.inc.land.rhs_crit_edge ]
  %sub = add i32 %4, -1
  %arrayidx = getelementptr i32, ptr %3, i32 %sub
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %for.inc, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %land.rhs
  %7 = ptrtoint ptr %nlimbs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %nlimbs, align 4
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpi_get_nbits(ptr nocapture noundef %a) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nlimbs.i = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %nlimbs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlimbs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not7.i = icmp eq i32 %1, 0
  br i1 %tobool.not7.i, label %entry.if.end8_crit_edge, label %land.rhs.lr.ph.i

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.rhs.lr.ph.i:                                 ; preds = %entry
  %d.i = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 5
  %2 = ptrtoint ptr %d.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d.i, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %4 = phi i32 [ %1, %land.rhs.lr.ph.i ], [ %sub.i, %for.inc.i.land.rhs.i_crit_edge ]
  %sub.i = add i32 %4, -1
  %arrayidx.i = getelementptr i32, ptr %3, i32 %sub.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not.i = icmp eq i32 %6, 0
  br i1 %tobool2.not.i, label %for.inc.i, label %mpi_normalize.exit

for.inc.i:                                        ; preds = %land.rhs.i
  %7 = ptrtoint ptr %nlimbs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub.i, ptr %nlimbs.i, align 4
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %for.inc.i.if.end8_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

for.inc.i.if.end8_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

mpi_normalize.exit:                               ; preds = %land.rhs.i
  %8 = ptrtoint ptr %nlimbs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %nlimbs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %mpi_normalize.exit.if.end8_crit_edge, label %if.then

mpi_normalize.exit.if.end8_crit_edge:             ; preds = %mpi_normalize.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %mpi_normalize.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %d.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d.i, align 4
  %sub = add i32 %.pr, -1
  %arrayidx = getelementptr i32, ptr %10, i32 %sub
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not = icmp eq i32 %12, 0
  %13 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 false) #7, !range !19
  %phi.bo = sub nuw nsw i32 32, %13
  %n.0 = select i1 %tobool2.not, i32 0, i32 %phi.bo
  %sub6 = shl i32 %.pr, 5
  %mul = add i32 %sub6, -32
  %add = add i32 %mul, %n.0
  br label %if.end8

if.end8:                                          ; preds = %if.then, %mpi_normalize.exit.if.end8_crit_edge, %for.inc.i.if.end8_crit_edge, %entry.if.end8_crit_edge
  %n.1 = phi i32 [ %add, %if.then ], [ 0, %mpi_normalize.exit.if.end8_crit_edge ], [ 0, %entry.if.end8_crit_edge ], [ 0, %for.inc.i.if.end8_crit_edge ]
  ret i32 %n.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mpi_test_bit(ptr nocapture noundef readonly %a, i32 noundef %n) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div6 = lshr i32 %n, 5
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlimbs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div6, i32 %1)
  %cmp.not = icmp ult i32 %div6, %1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rem = and i32 %n, 31
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 5
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %div6
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = lshr i32 %5, %rem
  %7 = and i32 %6, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_set_bit(ptr noundef %a, i32 noundef %n) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div19 = lshr i32 %n, 5
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlimbs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div19, i32 %1)
  %cmp.not = icmp ult i32 %div19, %1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp220 = icmp ult i32 %1, %3
  br i1 %cmp220, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ %1, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %i.021
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.021, 1
  %7 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %a, align 4
  %cmp2 = icmp ult i32 %inc, %8
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %add = add nuw nsw i32 %div19, 1
  %call = tail call i32 @mpi_resize(ptr noundef %a, i32 noundef %add) #7
  %9 = ptrtoint ptr %nlimbs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %nlimbs, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  %rem = and i32 %n, 31
  %shl = shl nuw i32 1, %rem
  %d5 = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 5
  %10 = ptrtoint ptr %d5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d5, align 4
  %arrayidx6 = getelementptr i32, ptr %11, i32 %div19
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx6, align 4
  %or = or i32 %13, %shl
  store i32 %or, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_resize(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_set_highbit(ptr noundef %a, i32 noundef %n) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div39 = lshr i32 %n, 5
  %rem = and i32 %n, 31
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlimbs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div39, i32 %1)
  %cmp.not = icmp ult i32 %div39, %1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp240 = icmp ult i32 %1, %3
  br i1 %cmp240, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.041 = phi i32 [ %1, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %i.041
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.041, 1
  %7 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %a, align 4
  %cmp2 = icmp ult i32 %inc, %8
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %add = add nuw nsw i32 %div39, 1
  %call = tail call i32 @mpi_resize(ptr noundef %a, i32 noundef %add) #7
  %9 = ptrtoint ptr %nlimbs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %nlimbs, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  %shl = shl nuw i32 1, %rem
  %d5 = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 5
  %10 = ptrtoint ptr %d5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d5, align 4
  %arrayidx6 = getelementptr i32, ptr %11, i32 %div39
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx6, align 4
  %or = or i32 %13, %shl
  store i32 %or, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %rem)
  %cmp943.not = icmp eq i32 %rem, 31
  br i1 %cmp943.not, label %if.end.for.end16_crit_edge, label %for.body10.preheader

if.end.for.end16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end16

for.body10.preheader:                             ; preds = %if.end
  %bitno.042 = add nuw nsw i32 %rem, 1
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body10.preheader
  %bitno.044 = phi i32 [ %bitno.0, %for.body10.for.body10_crit_edge ], [ %bitno.042, %for.body10.preheader ]
  %shl11 = shl nuw i32 1, %bitno.044
  %neg = xor i32 %shl11, -1
  %14 = ptrtoint ptr %d5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d5, align 4
  %arrayidx13 = getelementptr i32, ptr %15, i32 %div39
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx13, align 4
  %and = and i32 %17, %neg
  store i32 %and, ptr %arrayidx13, align 4
  %bitno.0 = add nuw nsw i32 %bitno.044, 1
  %exitcond.not = icmp eq i32 %bitno.0, 32
  br i1 %exitcond.not, label %for.body10.for.end16_crit_edge, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10

for.body10.for.end16_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end16

for.end16:                                        ; preds = %for.body10.for.end16_crit_edge, %if.end.for.end16_crit_edge
  %add17 = add nuw nsw i32 %div39, 1
  %18 = ptrtoint ptr %nlimbs to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add17, ptr %nlimbs, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_clear_highbit(ptr nocapture noundef %a, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div11 = lshr i32 %n, 5
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlimbs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div11, i32 %1)
  %cmp.not = icmp ult i32 %div11, %1
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %rem = and i32 %n, 31
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %bitno.012 = phi i32 [ %rem, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %shl = shl nuw i32 1, %bitno.012
  %neg = xor i32 %shl, -1
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %div11
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and = and i32 %5, %neg
  store i32 %and, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %bitno.012, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw nsw i32 %div11, 1
  %6 = ptrtoint ptr %nlimbs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %nlimbs, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mpi_clear_bit(ptr nocapture noundef readonly %a, i32 noundef %n) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div5 = lshr i32 %n, 5
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlimbs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div5, i32 %1)
  %cmp.not = icmp ult i32 %div5, %1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rem = and i32 %n, 31
  %shl = shl nuw i32 1, %rem
  %neg = xor i32 %shl, -1
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 5
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %div5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and = and i32 %5, %neg
  store i32 %and, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_rshift_limbs(ptr nocapture noundef %a, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 5
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 4
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nlimbs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %count)
  %cmp.not = icmp ugt i32 %3, %count
  br i1 %cmp.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %sub = sub i32 %3, %count
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.023 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add = add i32 %i.023, %count
  %arrayidx = getelementptr i32, ptr %1, i32 %add
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr i32, ptr %1, i32 %i.023
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx3, align 4
  %inc = add nuw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx4 = getelementptr i32, ptr %1, i32 %sub
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx4, align 4
  %8 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nlimbs, align 4
  %sub6 = sub i32 %9, %count
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %storemerge = phi i32 [ %sub6, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  %10 = ptrtoint ptr %nlimbs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge, ptr %nlimbs, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_rshift(ptr noundef %x, ptr noundef readonly %a, i32 noundef %n) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div224 = lshr i32 %n, 5
  %rem = and i32 %n, 31
  %cmp = icmp eq ptr %x, %a
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 1
  %0 = ptrtoint ptr %nlimbs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlimbs1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div224, i32 %1)
  %cmp2.not = icmp ult i32 %div224, %1
  br i1 %cmp2.not, label %if.end, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %n)
  %tobool.not = icmp ult i32 %n, 32
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %for.cond.preheader

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

for.cond.preheader:                               ; preds = %if.end
  %2 = ptrtoint ptr %nlimbs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nlimbs1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %div224)
  %cmp7235.not = icmp eq i32 %3, %div224
  br i1 %cmp7235.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0236 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d, align 4
  %add = add i32 %i.0236, %div224
  %arrayidx = getelementptr i32, ptr %5, i32 %add
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %arrayidx9 = getelementptr i32, ptr %5, i32 %i.0236
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx9, align 4
  %inc = add nuw i32 %i.0236, 1
  %9 = ptrtoint ptr %nlimbs1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nlimbs1, align 4
  %sub = sub i32 %10, %div224
  %cmp7 = icmp ult i32 %inc, %sub
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %d10 = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 5
  %11 = ptrtoint ptr %d10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d10, align 4
  %arrayidx11 = getelementptr i32, ptr %12, i32 %i.0.lcssa
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx11, align 4
  %14 = ptrtoint ptr %nlimbs1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nlimbs1, align 4
  %sub13 = sub i32 %15, %div224
  store i32 %sub13, ptr %nlimbs1, align 4
  br label %if.end14

if.end14:                                         ; preds = %for.end, %if.end.if.end14_crit_edge
  %16 = ptrtoint ptr %nlimbs1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nlimbs1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool16.not = icmp eq i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool17.not = icmp eq i32 %rem, 0
  %or.cond = or i1 %tobool17.not, %tobool16.not
  br i1 %or.cond, label %if.end14.do.body116_crit_edge, label %if.then18

if.end14.do.body116_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body116

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %d19 = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 5
  %18 = ptrtoint ptr %d19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d19, align 4
  %call = tail call i32 @mpihelp_rshift(ptr noundef %19, ptr noundef %19, i32 noundef %17, i32 noundef %rem) #7
  br label %do.body116

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %n)
  %tobool23.not = icmp ult i32 %n, 32
  %nlimbs80 = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 1
  %20 = ptrtoint ptr %nlimbs80 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nlimbs80, align 4
  %sign81 = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 3
  %22 = ptrtoint ptr %sign81 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sign81, align 4
  %sign82 = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 3
  %24 = ptrtoint ptr %sign82 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %sign82, align 4
  %25 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %x, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %21)
  %cmp85 = icmp slt i32 %26, %21
  br i1 %tobool23.not, label %if.else79, label %if.then24

if.then24:                                        ; preds = %if.else
  br i1 %cmp85, label %if.then28, label %if.then24.do.end_crit_edge

if.then24.do.end_crit_edge:                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = tail call i32 @mpi_resize(ptr noundef %x, i32 noundef %21) #7
  br label %do.end

do.end:                                           ; preds = %if.then28, %if.then24.do.end_crit_edge
  %nlimbs31 = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 1
  %27 = ptrtoint ptr %nlimbs31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %21, ptr %nlimbs31, align 4
  %28 = ptrtoint ptr %nlimbs80 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nlimbs80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp34226.not = icmp eq i32 %29, 0
  br i1 %cmp34226.not, label %do.end.cleanup.sink.split_crit_edge, label %for.body35.lr.ph

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body35.lr.ph:                                 ; preds = %do.end
  %d36 = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 5
  %d38 = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 5
  br label %for.body35

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.body35.lr.ph
  %i.1227 = phi i32 [ 0, %for.body35.lr.ph ], [ %inc41, %for.body35.for.body35_crit_edge ]
  %30 = ptrtoint ptr %d36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d36, align 4
  %arrayidx37 = getelementptr i32, ptr %31, i32 %i.1227
  %32 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx37, align 4
  %34 = ptrtoint ptr %d38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d38, align 4
  %arrayidx39 = getelementptr i32, ptr %35, i32 %i.1227
  %36 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %arrayidx39, align 4
  %inc41 = add nuw i32 %i.1227, 1
  %37 = ptrtoint ptr %nlimbs80 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nlimbs80, align 4
  %cmp34 = icmp ult i32 %inc41, %38
  br i1 %cmp34, label %for.body35.for.body35_crit_edge, label %for.end42

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body35

for.end42:                                        ; preds = %for.body35
  %39 = ptrtoint ptr %nlimbs31 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %inc41, ptr %nlimbs31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div224, i32 %i.1227)
  %cmp45.not.not = icmp ugt i32 %div224, %i.1227
  br i1 %cmp45.not.not, label %for.end42.cleanup.sink.split_crit_edge, label %for.cond51.preheader

for.end42.cleanup.sink.split_crit_edge:           ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.cond51.preheader:                             ; preds = %for.end42
  %40 = ptrtoint ptr %nlimbs31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nlimbs31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %div224)
  %cmp54229.not = icmp eq i32 %41, %div224
  br i1 %cmp54229.not, label %for.cond51.preheader.for.end63_crit_edge, label %for.body55.lr.ph

for.cond51.preheader.for.end63_crit_edge:         ; preds = %for.cond51.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end63

for.body55.lr.ph:                                 ; preds = %for.cond51.preheader
  %d56 = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 5
  br label %for.body55

for.body55:                                       ; preds = %for.body55.for.body55_crit_edge, %for.body55.lr.ph
  %i.2230 = phi i32 [ 0, %for.body55.lr.ph ], [ %inc62, %for.body55.for.body55_crit_edge ]
  %42 = ptrtoint ptr %d56 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %d56, align 4
  %add57 = add i32 %i.2230, %div224
  %arrayidx58 = getelementptr i32, ptr %43, i32 %add57
  %44 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx58, align 4
  %arrayidx60 = getelementptr i32, ptr %43, i32 %i.2230
  %46 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx60, align 4
  %inc62 = add nuw i32 %i.2230, 1
  %47 = ptrtoint ptr %nlimbs31 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nlimbs31, align 4
  %sub53 = sub i32 %48, %div224
  %cmp54 = icmp ult i32 %inc62, %sub53
  br i1 %cmp54, label %for.body55.for.body55_crit_edge, label %for.body55.for.end63_crit_edge

for.body55.for.end63_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end63

for.body55.for.body55_crit_edge:                  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body55

for.end63:                                        ; preds = %for.body55.for.end63_crit_edge, %for.cond51.preheader.for.end63_crit_edge
  %i.2.lcssa = phi i32 [ 0, %for.cond51.preheader.for.end63_crit_edge ], [ %inc62, %for.body55.for.end63_crit_edge ]
  %d64 = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 5
  %49 = ptrtoint ptr %d64 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %d64, align 4
  %arrayidx65 = getelementptr i32, ptr %50, i32 %i.2.lcssa
  %51 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %arrayidx65, align 4
  %52 = ptrtoint ptr %nlimbs31 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nlimbs31, align 4
  %sub67 = sub i32 %53, %div224
  store i32 %sub67, ptr %nlimbs31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %div224)
  %tobool70.not = icmp eq i32 %53, %div224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool72.not = icmp eq i32 %rem, 0
  %or.cond225 = or i1 %tobool72.not, %tobool70.not
  br i1 %or.cond225, label %for.end63.do.body116_crit_edge, label %if.then73

for.end63.do.body116_crit_edge:                   ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body116

if.then73:                                        ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %d64 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %d64, align 4
  %call77 = tail call i32 @mpihelp_rshift(ptr noundef %55, ptr noundef %55, i32 noundef %sub67, i32 noundef %rem) #7
  br label %do.body116

if.else79:                                        ; preds = %if.else
  br i1 %cmp85, label %if.then86, label %if.else79.do.end90_crit_edge

if.else79.do.end90_crit_edge:                     ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end90

if.then86:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #9
  %call87 = tail call i32 @mpi_resize(ptr noundef %x, i32 noundef %21) #7
  br label %do.end90

do.end90:                                         ; preds = %if.then86, %if.else79.do.end90_crit_edge
  %nlimbs91 = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 1
  %56 = ptrtoint ptr %nlimbs91 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %21, ptr %nlimbs91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool92.not = icmp eq i32 %21, 0
  br i1 %tobool92.not, label %do.end90.do.body116_crit_edge, label %if.then93

do.end90.do.body116_crit_edge:                    ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body116

if.then93:                                        ; preds = %do.end90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool94.not = icmp eq i32 %rem, 0
  br i1 %tobool94.not, label %for.cond101.preheader, label %if.then95

for.cond101.preheader:                            ; preds = %if.then93
  %57 = ptrtoint ptr %nlimbs91 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nlimbs91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp103232.not = icmp eq i32 %58, 0
  br i1 %cmp103232.not, label %for.cond101.preheader.do.body116_crit_edge, label %for.body104.lr.ph

for.cond101.preheader.do.body116_crit_edge:       ; preds = %for.cond101.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body116

for.body104.lr.ph:                                ; preds = %for.cond101.preheader
  %d105 = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 5
  %d107 = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 5
  br label %for.body104

if.then95:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  %d96 = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 5
  %59 = ptrtoint ptr %d96 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %d96, align 4
  %d97 = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 5
  %61 = ptrtoint ptr %d97 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %d97, align 4
  %call99 = tail call i32 @mpihelp_rshift(ptr noundef %60, ptr noundef %62, i32 noundef %21, i32 noundef %rem) #7
  br label %do.body116

for.body104:                                      ; preds = %for.body104.for.body104_crit_edge, %for.body104.lr.ph
  %i.3233 = phi i32 [ 0, %for.body104.lr.ph ], [ %inc110, %for.body104.for.body104_crit_edge ]
  %63 = ptrtoint ptr %d105 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %d105, align 4
  %arrayidx106 = getelementptr i32, ptr %64, i32 %i.3233
  %65 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx106, align 4
  %67 = ptrtoint ptr %d107 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %d107, align 4
  %arrayidx108 = getelementptr i32, ptr %68, i32 %i.3233
  %69 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %66, ptr %arrayidx108, align 4
  %inc110 = add nuw i32 %i.3233, 1
  %70 = ptrtoint ptr %nlimbs91 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nlimbs91, align 4
  %cmp103 = icmp ult i32 %inc110, %71
  br i1 %cmp103, label %for.body104.for.body104_crit_edge, label %for.body104.do.body116_crit_edge

for.body104.do.body116_crit_edge:                 ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body116

for.body104.for.body104_crit_edge:                ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body104

do.body116:                                       ; preds = %for.body104.do.body116_crit_edge, %if.then95, %for.cond101.preheader.do.body116_crit_edge, %do.end90.do.body116_crit_edge, %if.then73, %for.end63.do.body116_crit_edge, %if.then18, %if.end14.do.body116_crit_edge
  %nlimbs117 = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 1
  %72 = ptrtoint ptr %nlimbs117 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nlimbs117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp118238 = icmp sgt i32 %73, 0
  br i1 %cmp118238, label %while.body.lr.ph, label %do.body116.cleanup_crit_edge

do.body116.cleanup_crit_edge:                     ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %do.body116
  %d119 = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 5
  %74 = ptrtoint ptr %d119 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %d119, align 4
  br label %while.body

while.body:                                       ; preds = %if.end125.while.body_crit_edge, %while.body.lr.ph
  %76 = phi i32 [ %73, %while.body.lr.ph ], [ %sub121, %if.end125.while.body_crit_edge ]
  %sub121 = add nsw i32 %76, -1
  %arrayidx122 = getelementptr i32, ptr %75, i32 %sub121
  %77 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool123.not = icmp eq i32 %78, 0
  br i1 %tobool123.not, label %if.end125, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end125:                                        ; preds = %while.body
  %79 = ptrtoint ptr %nlimbs117 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %sub121, ptr %nlimbs117, align 4
  %cmp118 = icmp ugt i32 %76, 1
  br i1 %cmp118, label %if.end125.while.body_crit_edge, label %if.end125.cleanup_crit_edge

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end125.while.body_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.sink.split:                               ; preds = %for.end42.cleanup.sink.split_crit_edge, %do.end.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %nlimbs31.sink = phi ptr [ %nlimbs1, %if.then.cleanup.sink.split_crit_edge ], [ %nlimbs31, %do.end.cleanup.sink.split_crit_edge ], [ %nlimbs31, %for.end42.cleanup.sink.split_crit_edge ]
  %80 = ptrtoint ptr %nlimbs31.sink to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %nlimbs31.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end125.cleanup_crit_edge, %while.body.cleanup_crit_edge, %do.body116.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_rshift(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_lshift_limbs(ptr noundef %a, i32 noundef %count) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlimbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a, align 4
  %add = add i32 %1, %count
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add)
  %cmp = icmp ult i32 %3, %add
  br i1 %cmp, label %if.then2, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @mpi_resize(ptr noundef %a, i32 noundef %add) #7
  br label %do.end

do.end:                                           ; preds = %if.then2, %do.body.do.end_crit_edge
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 5
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d, align 4
  %i.038 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.038)
  %cmp539 = icmp sgt i32 %i.038, -1
  br i1 %cmp539, label %do.end.for.body_crit_edge, label %do.end.for.end13_crit_edge

do.end.for.end13_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end13

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.040 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.038, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %5, i32 %i.040
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add6 = add i32 %i.040, %count
  %arrayidx7 = getelementptr i32, ptr %5, i32 %add6
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx7, align 4
  %i.0 = add nsw i32 %i.040, -1
  %cmp5 = icmp sgt i32 %i.040, 0
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.body.for.end13_crit_edge

for.body.for.end13_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end13

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end13:                                        ; preds = %for.body.for.end13_crit_edge, %do.end.for.end13_crit_edge
  %9 = shl nuw i32 %count, 2
  %10 = call ptr @memset(ptr %5, i32 0, i32 %9)
  %11 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nlimbs, align 4
  %add15 = add i32 %12, %count
  store i32 %add15, ptr %nlimbs, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end13, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_lshift(ptr noundef %x, ptr noundef readonly %a, i32 noundef %n) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div78 = lshr i32 %n, 5
  %rem = and i32 %n, 31
  %cmp = icmp eq ptr %x, %a
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not = icmp eq i32 %n, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp, label %if.end.if.end19_crit_edge, label %if.then2

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then2:                                         ; preds = %if.end
  %nlimbs3 = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %nlimbs3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlimbs3, align 4
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 3
  %2 = ptrtoint ptr %sign to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sign, align 4
  %4 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %x, align 4
  %add = add nuw nsw i32 %div78, 1
  %add4 = add i32 %add, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add4)
  %cmp5 = icmp ult i32 %5, %add4
  br i1 %cmp5, label %if.then6, label %if.then2.do.end_crit_edge

if.then2.do.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @mpi_resize(ptr noundef %x, i32 noundef %add4) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.then2.do.end_crit_edge
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 5
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d, align 4
  %d10 = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 5
  %8 = ptrtoint ptr %d10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12108.not = icmp eq i32 %1, 0
  br i1 %cmp12108.not, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %_i.0109 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %9, i32 %_i.0109
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %arrayidx13 = getelementptr i32, ptr %7, i32 %_i.0109
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx13, align 4
  %inc = add nuw i32 %_i.0109, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %nlimbs16 = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 1
  %13 = ptrtoint ptr %nlimbs16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %1, ptr %nlimbs16, align 4
  %flags = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 4
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %flags17 = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 4
  %16 = ptrtoint ptr %flags17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %flags17, align 4
  %sign18 = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 3
  %17 = ptrtoint ptr %sign18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %3, ptr %sign18, align 4
  br label %if.end19

if.end19:                                         ; preds = %for.end, %if.end.if.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %n)
  %tobool20.not = icmp ugt i32 %n, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool22.not = icmp eq i32 %rem, 0
  %or.cond79 = and i1 %tobool20.not, %tobool22.not
  br i1 %or.cond79, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end19
  %nlimbs.i = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 1
  %18 = ptrtoint ptr %nlimbs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nlimbs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool1.not.i = icmp eq i32 %19, 0
  br i1 %tobool1.not.i, label %if.then23.do.body29_crit_edge, label %do.body.i

if.then23.do.body29_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

do.body.i:                                        ; preds = %if.then23
  %20 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %x, align 4
  %add.i = add i32 %19, %div78
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add.i)
  %cmp.i = icmp ult i32 %21, %add.i
  br i1 %cmp.i, label %if.then2.i, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @mpi_resize(ptr noundef %x, i32 noundef %add.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then2.i, %do.body.i.do.end.i_crit_edge
  %d.i = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 5
  %22 = ptrtoint ptr %d.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d.i, align 4
  %i.038.i = add i32 %19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.038.i)
  %cmp539.i = icmp sgt i32 %i.038.i, -1
  br i1 %cmp539.i, label %do.end.i.for.body.i_crit_edge, label %do.end.i.for.end13.i_crit_edge

do.end.i.for.end13.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end13.i

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %i.040.i = phi i32 [ %i.0.i, %for.body.i.for.body.i_crit_edge ], [ %i.038.i, %do.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %23, i32 %i.040.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %add6.i = add i32 %i.040.i, %div78
  %arrayidx7.i = getelementptr i32, ptr %23, i32 %add6.i
  %26 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx7.i, align 4
  %i.0.i = add nsw i32 %i.040.i, -1
  %cmp5.i.not = icmp eq i32 %i.040.i, 0
  br i1 %cmp5.i.not, label %for.body.i.for.end13.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.end13.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end13.i

for.end13.i:                                      ; preds = %for.body.i.for.end13.i_crit_edge, %do.end.i.for.end13.i_crit_edge
  %27 = shl nuw nsw i32 %div78, 2
  %28 = call ptr @memset(ptr %23, i32 0, i32 %27)
  %29 = ptrtoint ptr %nlimbs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nlimbs.i, align 4
  %add15.i = add i32 %30, %div78
  store i32 %add15.i, ptr %nlimbs.i, align 4
  br label %do.body29

if.else:                                          ; preds = %if.end19
  br i1 %tobool.not, label %if.else.do.body29_crit_edge, label %if.then25

if.else.do.body29_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.then25:                                        ; preds = %if.else
  %add26 = add nuw nsw i32 %div78, 1
  %nlimbs.i80 = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 1
  %31 = ptrtoint ptr %nlimbs.i80 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nlimbs.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool1.not.i81 = icmp eq i32 %32, 0
  br i1 %tobool1.not.i81, label %if.then25.mpi_lshift_limbs.exit100_crit_edge, label %do.body.i84

if.then25.mpi_lshift_limbs.exit100_crit_edge:     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %mpi_lshift_limbs.exit100

do.body.i84:                                      ; preds = %if.then25
  %33 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %x, align 4
  %add.i82 = add i32 %32, %add26
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %add.i82)
  %cmp.i83 = icmp ult i32 %34, %add.i82
  br i1 %cmp.i83, label %if.then2.i86, label %do.body.i84.do.end.i90_crit_edge

do.body.i84.do.end.i90_crit_edge:                 ; preds = %do.body.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i90

if.then2.i86:                                     ; preds = %do.body.i84
  call void @__sanitizer_cov_trace_pc() #9
  %call.i85 = tail call i32 @mpi_resize(ptr noundef %x, i32 noundef %add.i82) #7
  br label %do.end.i90

do.end.i90:                                       ; preds = %if.then2.i86, %do.body.i84.do.end.i90_crit_edge
  %d.i87 = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 5
  %35 = ptrtoint ptr %d.i87 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d.i87, align 4
  %i.038.i88 = add i32 %32, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.038.i88)
  %cmp539.i89 = icmp sgt i32 %i.038.i88, -1
  br i1 %cmp539.i89, label %do.end.i90.for.body.i97_crit_edge, label %do.end.i90.for.end13.i99_crit_edge

do.end.i90.for.end13.i99_crit_edge:               ; preds = %do.end.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end13.i99

do.end.i90.for.body.i97_crit_edge:                ; preds = %do.end.i90
  br label %for.body.i97

for.body.i97:                                     ; preds = %for.body.i97.for.body.i97_crit_edge, %do.end.i90.for.body.i97_crit_edge
  %i.040.i91 = phi i32 [ %i.0.i95, %for.body.i97.for.body.i97_crit_edge ], [ %i.038.i88, %do.end.i90.for.body.i97_crit_edge ]
  %arrayidx.i92 = getelementptr i32, ptr %36, i32 %i.040.i91
  %37 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i92, align 4
  %add6.i93 = add i32 %i.040.i91, %add26
  %arrayidx7.i94 = getelementptr i32, ptr %36, i32 %add6.i93
  %39 = ptrtoint ptr %arrayidx7.i94 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx7.i94, align 4
  %i.0.i95 = add nsw i32 %i.040.i91, -1
  %cmp5.i96.not = icmp eq i32 %i.040.i91, 0
  br i1 %cmp5.i96.not, label %for.body.i97.for.end13.i99_crit_edge, label %for.body.i97.for.body.i97_crit_edge

for.body.i97.for.body.i97_crit_edge:              ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i97

for.body.i97.for.end13.i99_crit_edge:             ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end13.i99

for.end13.i99:                                    ; preds = %for.body.i97.for.end13.i99_crit_edge, %do.end.i90.for.end13.i99_crit_edge
  %40 = shl nuw nsw i32 %add26, 2
  %41 = call ptr @memset(ptr %36, i32 0, i32 %40)
  %42 = ptrtoint ptr %nlimbs.i80 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nlimbs.i80, align 4
  %add15.i98 = add i32 %43, %add26
  store i32 %add15.i98, ptr %nlimbs.i80, align 4
  br label %mpi_lshift_limbs.exit100

mpi_lshift_limbs.exit100:                         ; preds = %for.end13.i99, %if.then25.mpi_lshift_limbs.exit100_crit_edge
  %sub = sub nuw nsw i32 32, %rem
  %div224.i = lshr i32 %sub, 5
  %rem.i = and i32 %sub, 31
  %44 = ptrtoint ptr %nlimbs.i80 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nlimbs.i80, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div224.i, i32 %45)
  %cmp2.not.i = icmp ult i32 %div224.i, %45
  br i1 %cmp2.not.i, label %if.end.i, label %cleanup.sink.split.i

if.end.i:                                         ; preds = %mpi_lshift_limbs.exit100
  br i1 %tobool22.not, label %for.body.lr.ph.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %d.i102 = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 5
  br label %for.body.i105

for.body.i105:                                    ; preds = %for.body.i105.for.body.i105_crit_edge, %for.body.lr.ph.i
  %i.0236.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i105.for.body.i105_crit_edge ]
  %46 = ptrtoint ptr %d.i102 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %d.i102, align 4
  %add.i103 = add nuw i32 %i.0236.i, %div224.i
  %arrayidx.i104 = getelementptr i32, ptr %47, i32 %add.i103
  %48 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i104, align 4
  %arrayidx9.i = getelementptr i32, ptr %47, i32 %i.0236.i
  %50 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx9.i, align 4
  %inc.i = add nuw i32 %i.0236.i, 1
  %51 = ptrtoint ptr %nlimbs.i80 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nlimbs.i80, align 4
  %sub.i = sub i32 %52, %div224.i
  %cmp7.i = icmp ult i32 %inc.i, %sub.i
  br i1 %cmp7.i, label %for.body.i105.for.body.i105_crit_edge, label %for.end.i

for.body.i105.for.body.i105_crit_edge:            ; preds = %for.body.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i105

for.end.i:                                        ; preds = %for.body.i105
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %d.i102 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %d.i102, align 4
  %arrayidx11.i = getelementptr i32, ptr %54, i32 %inc.i
  %55 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %arrayidx11.i, align 4
  %56 = ptrtoint ptr %nlimbs.i80 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nlimbs.i80, align 4
  %sub13.i = sub i32 %57, %div224.i
  store i32 %sub13.i, ptr %nlimbs.i80, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %for.end.i, %if.end.i.if.end14.i_crit_edge
  %58 = ptrtoint ptr %nlimbs.i80 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nlimbs.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool16.not.i = icmp eq i32 %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool17.not.i = icmp eq i32 %rem.i, 0
  %or.cond.i106 = or i1 %tobool17.not.i, %tobool16.not.i
  br i1 %or.cond.i106, label %if.end14.i.do.body116.i_crit_edge, label %if.then18.i

if.end14.i.do.body116.i_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body116.i

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %d19.i = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 5
  %60 = ptrtoint ptr %d19.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %d19.i, align 4
  %call.i107 = tail call i32 @mpihelp_rshift(ptr noundef %61, ptr noundef %61, i32 noundef %59, i32 noundef %rem.i) #7
  %62 = ptrtoint ptr %nlimbs.i80 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr = load i32, ptr %nlimbs.i80, align 4
  br label %do.body116.i

do.body116.i:                                     ; preds = %if.then18.i, %if.end14.i.do.body116.i_crit_edge
  %63 = phi i32 [ %.pr, %if.then18.i ], [ %59, %if.end14.i.do.body116.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp118238.i = icmp sgt i32 %63, 0
  br i1 %cmp118238.i, label %while.body.lr.ph.i, label %do.body116.i.do.body29_crit_edge

do.body116.i.do.body29_crit_edge:                 ; preds = %do.body116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

while.body.lr.ph.i:                               ; preds = %do.body116.i
  %d119.i = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 5
  %64 = ptrtoint ptr %d119.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %d119.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end125.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %66 = phi i32 [ %63, %while.body.lr.ph.i ], [ %sub121.i, %if.end125.i.while.body.i_crit_edge ]
  %sub121.i = add nsw i32 %66, -1
  %arrayidx122.i = getelementptr i32, ptr %65, i32 %sub121.i
  %67 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx122.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool123.not.i = icmp eq i32 %68, 0
  br i1 %tobool123.not.i, label %if.end125.i, label %while.body.i.do.body29_crit_edge

while.body.i.do.body29_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.end125.i:                                      ; preds = %while.body.i
  %69 = ptrtoint ptr %nlimbs.i80 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub121.i, ptr %nlimbs.i80, align 4
  %cmp118.i = icmp ugt i32 %66, 1
  br i1 %cmp118.i, label %if.end125.i.while.body.i_crit_edge, label %if.end125.i.do.body29_crit_edge

if.end125.i.do.body29_crit_edge:                  ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.end125.i.while.body.i_crit_edge:               ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

cleanup.sink.split.i:                             ; preds = %mpi_lshift_limbs.exit100
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %nlimbs.i80 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %nlimbs.i80, align 4
  br label %do.body29

do.body29:                                        ; preds = %cleanup.sink.split.i, %if.end125.i.do.body29_crit_edge, %while.body.i.do.body29_crit_edge, %do.body116.i.do.body29_crit_edge, %if.else.do.body29_crit_edge, %for.end13.i, %if.then23.do.body29_crit_edge
  %nlimbs30 = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 1
  %71 = ptrtoint ptr %nlimbs30 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nlimbs30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp31110 = icmp sgt i32 %72, 0
  br i1 %cmp31110, label %while.body.lr.ph, label %do.body29.cleanup_crit_edge

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %do.body29
  %d32 = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 5
  %73 = ptrtoint ptr %d32 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %d32, align 4
  br label %while.body

while.body:                                       ; preds = %if.end38.while.body_crit_edge, %while.body.lr.ph
  %75 = phi i32 [ %72, %while.body.lr.ph ], [ %sub34, %if.end38.while.body_crit_edge ]
  %sub34 = add nsw i32 %75, -1
  %arrayidx35 = getelementptr i32, ptr %74, i32 %sub34
  %76 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool36.not = icmp eq i32 %77, 0
  br i1 %tobool36.not, label %if.end38, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %while.body
  %78 = ptrtoint ptr %nlimbs30 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %sub34, ptr %nlimbs30, align 4
  %cmp31 = icmp ugt i32 %75, 1
  br i1 %cmp31, label %if.end38.while.body_crit_edge, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38.while.body_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup:                                          ; preds = %if.end38.cleanup_crit_edge, %while.body.cleanup_crit_edge, %do.body29.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_mpi_normalize, !1, !"__ksymtab_mpi_normalize", i1 false, i1 false}
!1 = !{!"../lib/mpi/mpi-bit.c", i32 35, i32 1}
!2 = !{ptr @__ksymtab_mpi_get_nbits, !3, !"__ksymtab_mpi_get_nbits", i1 false, i1 false}
!3 = !{!"../lib/mpi/mpi-bit.c", i32 57, i32 1}
!4 = !{ptr @__ksymtab_mpi_test_bit, !5, !"__ksymtab_mpi_test_bit", i1 false, i1 false}
!5 = !{!"../lib/mpi/mpi-bit.c", i32 75, i32 1}
!6 = !{ptr @__ksymtab_mpi_set_highbit, !7, !"__ksymtab_mpi_set_highbit", i1 false, i1 false}
!7 = !{!"../lib/mpi/mpi-bit.c", i32 117, i32 1}
!8 = !{ptr @__ksymtab_mpi_clear_bit, !9, !"__ksymtab_mpi_clear_bit", i1 false, i1 false}
!9 = !{!"../lib/mpi/mpi-bit.c", i32 151, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i32 0, i32 33}
