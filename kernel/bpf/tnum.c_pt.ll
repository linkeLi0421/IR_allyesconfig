; ModuleID = '/llk/IR_all_yes/kernel/bpf/tnum.c_pt.bc'
source_filename = "../kernel/bpf/tnum.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tnum_strn\22, \22a\22\09"
module asm "\09.weak\09__crc_tnum_strn\09\09\09\09"
module asm "\09.long\09__crc_tnum_strn\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tnum_strn:\09\09\09\09\09"
module asm "\09.asciz \09\22tnum_strn\22\09\09\09\09\09"
module asm "__kstrtabns_tnum_strn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.tnum = type { i64, i64 }
%struct.kernel_symbol = type { i32, ptr, ptr }

@tnum_unknown = dso_local constant { %struct.tnum, [16 x i8] } { %struct.tnum { i64 0, i64 -1 }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(%#llx; %#llx)\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_tnum_strn = external dso_local constant [0 x i8], align 1
@__kstrtabns_tnum_strn = external dso_local constant [0 x i8], align 1
@__ksymtab_tnum_strn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tnum_strn to i32), ptr @__kstrtab_tnum_strn, ptr @__kstrtabns_tnum_strn }, section "___ksymtab_gpl+tnum_strn", align 4
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"tnum_unknown\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 14, i32 19 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [21 x i8] c"../kernel/bpf/tnum.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 177, i32 29 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_tnum_strn, ptr @tnum_unknown, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tnum_unknown to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tnum_const(ptr noalias nocapture writeonly sret(%struct.tnum) align 8 %agg.result, i64 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %value, ptr %agg.result, align 8
  %mask = getelementptr inbounds %struct.tnum, ptr %agg.result, i32 0, i32 1
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %mask, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @tnum_range(ptr noalias nocapture writeonly sret(%struct.tnum) align 8 %agg.result, i64 noundef %min, i64 noundef %max) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %xor = xor i64 %max, %min
  %shr.i = lshr i64 %xor, 32
  %conv.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool.not.i, label %fls64.exit.thread, label %fls64.exit

fls64.exit.thread:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i = trunc i64 %xor to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %tobool.not.i5.i = icmp eq i32 %conv1.i, 0
  %0 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i, i1 true) #9, !range !15
  %sub.i6.i = sub nuw nsw i32 32, %0
  %cond.i7.i = select i1 %tobool.not.i5.i, i32 0, i32 %sub.i6.i
  br label %if.end

fls64.exit:                                       ; preds = %entry
  %1 = tail call i32 @llvm.ctlz.i32(i32 %conv.i, i1 true) #9, !range !15
  %add.i = sub nuw nsw i32 64, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %fls64.exit.if.end_crit_edge

fls64.exit.if.end_crit_edge:                      ; preds = %fls64.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %fls64.exit
  call void @__sanitizer_cov_trace_pc() #11
  %2 = call ptr @memcpy(ptr %agg.result, ptr @tnum_unknown, i32 16)
  br label %cleanup

if.end:                                           ; preds = %fls64.exit.if.end_crit_edge, %fls64.exit.thread
  %retval.0.i11 = phi i32 [ %cond.i7.i, %fls64.exit.thread ], [ %add.i, %fls64.exit.if.end_crit_edge ]
  %sh_prom = zext i32 %retval.0.i11 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %and = and i64 %notmask, %min
  %3 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %and, ptr %agg.result, align 8
  %mask = getelementptr inbounds %struct.tnum, ptr %agg.result, i32 0, i32 1
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %sub, ptr %mask, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tnum_lshift(ptr noalias nocapture writeonly sret(%struct.tnum) align 8 %agg.result, [2 x i64] %a.coerce, i8 noundef zeroext %shift) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [2 x i64] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [2 x i64] %a.coerce, 1
  %sh_prom = zext i8 %shift to i64
  %shl = shl i64 %a.coerce.fca.0.extract, %sh_prom
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %shl, ptr %agg.result, align 8
  %mask = getelementptr inbounds %struct.tnum, ptr %agg.result, i32 0, i32 1
  %shl5 = shl i64 %a.coerce.fca.1.extract, %sh_prom
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %shl5, ptr %mask, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tnum_rshift(ptr noalias nocapture writeonly sret(%struct.tnum) align 8 %agg.result, [2 x i64] %a.coerce, i8 noundef zeroext %shift) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [2 x i64] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [2 x i64] %a.coerce, 1
  %sh_prom = zext i8 %shift to i64
  %shr = lshr i64 %a.coerce.fca.0.extract, %sh_prom
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %shr, ptr %agg.result, align 8
  %mask = getelementptr inbounds %struct.tnum, ptr %agg.result, i32 0, i32 1
  %shr5 = lshr i64 %a.coerce.fca.1.extract, %sh_prom
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %shr5, ptr %mask, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tnum_arshift(ptr noalias nocapture writeonly sret(%struct.tnum) align 8 %agg.result, [2 x i64] %a.coerce, i8 noundef zeroext %min_shift, i8 noundef zeroext %insn_bitness) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [2 x i64] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [2 x i64] %a.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %insn_bitness)
  %cmp = icmp eq i8 %insn_bitness, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv3 = trunc i64 %a.coerce.fca.0.extract to i32
  %conv4 = zext i8 %min_shift to i32
  %shr = ashr i32 %conv3, %conv4
  %conv5 = zext i32 %shr to i64
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv5, ptr %agg.result, align 8
  %conv7 = trunc i64 %a.coerce.fca.1.extract to i32
  %shr9 = ashr i32 %conv7, %conv4
  %conv10 = zext i32 %shr9 to i64
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sh_prom = zext i8 %min_shift to i64
  %shr14 = ashr i64 %a.coerce.fca.0.extract, %sh_prom
  %1 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %shr14, ptr %agg.result, align 8
  %shr19 = ashr i64 %a.coerce.fca.1.extract, %sh_prom
  br label %return

return:                                           ; preds = %if.else, %if.then
  %shr19.sink = phi i64 [ %conv10, %if.then ], [ %shr19, %if.else ]
  %2 = getelementptr inbounds %struct.tnum, ptr %agg.result, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %shr19.sink, ptr %2, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tnum_add(ptr noalias nocapture writeonly sret(%struct.tnum) align 8 %agg.result, [2 x i64] %a.coerce, [2 x i64] %b.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [2 x i64] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [2 x i64] %a.coerce, 1
  %b.coerce.fca.0.extract = extractvalue [2 x i64] %b.coerce, 0
  %b.coerce.fca.1.extract = extractvalue [2 x i64] %b.coerce, 1
  %add = add i64 %b.coerce.fca.1.extract, %a.coerce.fca.1.extract
  %add3 = add i64 %b.coerce.fca.0.extract, %a.coerce.fca.0.extract
  %add4 = add i64 %add, %add3
  %xor = xor i64 %add4, %add3
  %or = or i64 %b.coerce.fca.1.extract, %a.coerce.fca.1.extract
  %or7 = or i64 %or, %xor
  %neg = xor i64 %or7, -1
  %and = and i64 %add3, %neg
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %and, ptr %agg.result, align 8
  %mask9 = getelementptr inbounds %struct.tnum, ptr %agg.result, i32 0, i32 1
  %1 = ptrtoint ptr %mask9 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %or7, ptr %mask9, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tnum_sub(ptr noalias nocapture writeonly sret(%struct.tnum) align 8 %agg.result, [2 x i64] %a.coerce, [2 x i64] %b.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [2 x i64] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [2 x i64] %a.coerce, 1
  %b.coerce.fca.0.extract = extractvalue [2 x i64] %b.coerce, 0
  %b.coerce.fca.1.extract = extractvalue [2 x i64] %b.coerce, 1
  %sub = sub i64 %a.coerce.fca.0.extract, %b.coerce.fca.0.extract
  %add = add i64 %sub, %a.coerce.fca.1.extract
  %sub3 = sub i64 %sub, %b.coerce.fca.1.extract
  %xor = xor i64 %add, %sub3
  %or = or i64 %b.coerce.fca.1.extract, %a.coerce.fca.1.extract
  %or6 = or i64 %or, %xor
  %neg = xor i64 %or6, -1
  %and = and i64 %sub, %neg
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %and, ptr %agg.result, align 8
  %mask8 = getelementptr inbounds %struct.tnum, ptr %agg.result, i32 0, i32 1
  %1 = ptrtoint ptr %mask8 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %or6, ptr %mask8, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tnum_and(ptr noalias nocapture writeonly sret(%struct.tnum) align 8 %agg.result, [2 x i64] %a.coerce, [2 x i64] %b.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [2 x i64] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [2 x i64] %a.coerce, 1
  %b.coerce.fca.0.extract = extractvalue [2 x i64] %b.coerce, 0
  %b.coerce.fca.1.extract = extractvalue [2 x i64] %b.coerce, 1
  %or = or i64 %a.coerce.fca.0.extract, %a.coerce.fca.1.extract
  %or3 = or i64 %b.coerce.fca.0.extract, %b.coerce.fca.1.extract
  %and = and i64 %b.coerce.fca.0.extract, %a.coerce.fca.0.extract
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %and, ptr %agg.result, align 8
  %mask7 = getelementptr inbounds %struct.tnum, ptr %agg.result, i32 0, i32 1
  %and8 = and i64 %or3, %or
  %and9 = xor i64 %and8, %and
  %1 = ptrtoint ptr %mask7 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %and9, ptr %mask7, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tnum_or(ptr noalias nocapture writeonly sret(%struct.tnum) align 8 %agg.result, [2 x i64] %a.coerce, [2 x i64] %b.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [2 x i64] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [2 x i64] %a.coerce, 1
  %b.coerce.fca.0.extract = extractvalue [2 x i64] %b.coerce, 0
  %b.coerce.fca.1.extract = extractvalue [2 x i64] %b.coerce, 1
  %or = or i64 %b.coerce.fca.0.extract, %a.coerce.fca.0.extract
  %or3 = or i64 %b.coerce.fca.1.extract, %a.coerce.fca.1.extract
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %or, ptr %agg.result, align 8
  %mask5 = getelementptr inbounds %struct.tnum, ptr %agg.result, i32 0, i32 1
  %neg = xor i64 %or, -1
  %and = and i64 %or3, %neg
  %1 = ptrtoint ptr %mask5 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %and, ptr %mask5, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tnum_xor(ptr noalias nocapture writeonly sret(%struct.tnum) align 8 %agg.result, [2 x i64] %a.coerce, [2 x i64] %b.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [2 x i64] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [2 x i64] %a.coerce, 1
  %b.coerce.fca.0.extract = extractvalue [2 x i64] %b.coerce, 0
  %b.coerce.fca.1.extract = extractvalue [2 x i64] %b.coerce, 1
  %xor = xor i64 %b.coerce.fca.0.extract, %a.coerce.fca.0.extract
  %or = or i64 %b.coerce.fca.1.extract, %a.coerce.fca.1.extract
  %neg = xor i64 %or, -1
  %and = and i64 %xor, %neg
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %and, ptr %agg.result, align 8
  %mask4 = getelementptr inbounds %struct.tnum, ptr %agg.result, i32 0, i32 1
  %1 = ptrtoint ptr %mask4 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %or, ptr %mask4, align 8
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tnum_mul(ptr noalias nocapture writeonly sret(%struct.tnum) align 8 %agg.result, [2 x i64] %a.coerce, [2 x i64] %b.coerce) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [2 x i64] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [2 x i64] %a.coerce, 1
  %b.coerce.fca.0.extract = extractvalue [2 x i64] %b.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a.coerce.fca.0.extract)
  %tobool.not78 = icmp eq i64 %a.coerce.fca.0.extract, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a.coerce.fca.1.extract)
  %tobool3.not79 = icmp eq i64 %a.coerce.fca.1.extract, 0
  %or.cond80 = select i1 %tobool.not78, i1 %tobool3.not79, i1 false
  br i1 %or.cond80, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %b.coerce.fca.1.extract = extractvalue [2 x i64] %b.coerce, 1
  br label %while.body

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %while.body.preheader
  %a.sroa.6.087 = phi i64 [ %shr5.i, %if.end19.while.body_crit_edge ], [ %a.coerce.fca.1.extract, %while.body.preheader ]
  %a.sroa.0.086 = phi i64 [ %shr.i, %if.end19.while.body_crit_edge ], [ %a.coerce.fca.0.extract, %while.body.preheader ]
  %b.sroa.5.084 = phi i64 [ %shl5.i, %if.end19.while.body_crit_edge ], [ %b.coerce.fca.1.extract, %while.body.preheader ]
  %b.sroa.0.083 = phi i64 [ %shl.i, %if.end19.while.body_crit_edge ], [ %b.coerce.fca.0.extract, %while.body.preheader ]
  %acc_m.sroa.8.081 = phi i64 [ %acc_m.sroa.8.1, %if.end19.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %and = and i64 %a.sroa.0.086, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool5.not = icmp eq i64 %and, 0
  br i1 %tobool5.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %add4.i = add i64 %acc_m.sroa.8.081, %b.sroa.5.084
  %or.i = or i64 %b.sroa.5.084, %acc_m.sroa.8.081
  %or7.i = or i64 %or.i, %add4.i
  br label %if.end19

if.else:                                          ; preds = %while.body
  %and10 = and i64 %a.sroa.6.087, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10)
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %if.else.if.end19_crit_edge, label %if.then12

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i64 %b.sroa.5.084, %b.sroa.0.083
  %add4.i63 = add i64 %acc_m.sroa.8.081, %or
  %or.i65 = or i64 %or, %acc_m.sroa.8.081
  %or7.i66 = or i64 %or.i65, %add4.i63
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %if.else.if.end19_crit_edge, %if.then
  %acc_m.sroa.8.1 = phi i64 [ %or7.i, %if.then ], [ %or7.i66, %if.then12 ], [ %acc_m.sroa.8.081, %if.else.if.end19_crit_edge ]
  %shr.i = lshr i64 %a.sroa.0.086, 1
  %shr5.i = lshr i64 %a.sroa.6.087, 1
  %shl.i = shl i64 %b.sroa.0.083, 1
  %shl5.i = shl i64 %b.sroa.5.084, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %a.sroa.0.086)
  %tobool.not = icmp ult i64 %a.sroa.0.086, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %a.sroa.6.087)
  %tobool3.not = icmp ult i64 %a.sroa.6.087, 2
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.end19.while.end_crit_edge, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end19.while.end_crit_edge, %entry.while.end_crit_edge
  %acc_m.sroa.8.0.lcssa = phi i64 [ 0, %entry.while.end_crit_edge ], [ %acc_m.sroa.8.1, %if.end19.while.end_crit_edge ]
  %mul = mul i64 %b.coerce.fca.0.extract, %a.coerce.fca.0.extract
  %add4.i72 = add i64 %mul, %acc_m.sroa.8.0.lcssa
  %xor.i73 = xor i64 %add4.i72, %mul
  %or7.i74 = or i64 %xor.i73, %acc_m.sroa.8.0.lcssa
  %neg.i75 = xor i64 %or7.i74, -1
  %and.i76 = and i64 %mul, %neg.i75
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %and.i76, ptr %agg.result, align 8, !alias.scope !16
  %mask9.i77 = getelementptr inbounds %struct.tnum, ptr %agg.result, i32 0, i32 1
  %1 = ptrtoint ptr %mask9.i77 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %or7.i74, ptr %mask9.i77, align 8, !alias.scope !16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tnum_intersect(ptr noalias nocapture writeonly sret(%struct.tnum) align 8 %agg.result, [2 x i64] %a.coerce, [2 x i64] %b.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [2 x i64] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [2 x i64] %a.coerce, 1
  %b.coerce.fca.0.extract = extractvalue [2 x i64] %b.coerce, 0
  %b.coerce.fca.1.extract = extractvalue [2 x i64] %b.coerce, 1
  %or = or i64 %b.coerce.fca.0.extract, %a.coerce.fca.0.extract
  %and = and i64 %b.coerce.fca.1.extract, %a.coerce.fca.1.extract
  %neg = xor i64 %and, -1
  %and4 = and i64 %or, %neg
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %and4, ptr %agg.result, align 8
  %mask5 = getelementptr inbounds %struct.tnum, ptr %agg.result, i32 0, i32 1
  %1 = ptrtoint ptr %mask5 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %and, ptr %mask5, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tnum_cast(ptr noalias nocapture writeonly sret(%struct.tnum) align 8 %agg.result, [2 x i64] %a.coerce, i8 noundef zeroext %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [2 x i64] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [2 x i64] %a.coerce, 1
  %conv = zext i8 %size to i32
  %mul = shl nuw nsw i32 %conv, 3
  %sh_prom = zext i32 %mul to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %and = and i64 %a.coerce.fca.0.extract, %sub
  %and6 = and i64 %a.coerce.fca.1.extract, %sub
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %and, ptr %agg.result, align 8
  %a.sroa.4.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 8
  %1 = ptrtoint ptr %a.sroa.4.0.agg.result.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %and6, ptr %a.sroa.4.0.agg.result.sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tnum_is_aligned([2 x i64] %a.coerce, i64 noundef %size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %tobool.not = icmp eq i64 %size, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %a.coerce.fca.1.extract = extractvalue [2 x i64] %a.coerce, 1
  %a.coerce.fca.0.extract = extractvalue [2 x i64] %a.coerce, 0
  %or = or i64 %a.coerce.fca.0.extract, %a.coerce.fca.1.extract
  %sub = add i64 %size, -1
  %and = and i64 %or, %sub
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool1.not = icmp eq i64 %and, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool1.not, %if.end ], [ true, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tnum_in([2 x i64] %a.coerce, [2 x i64] %b.coerce) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.1.extract = extractvalue [2 x i64] %a.coerce, 1
  %b.coerce.fca.1.extract = extractvalue [2 x i64] %b.coerce, 1
  %neg = xor i64 %a.coerce.fca.1.extract, -1
  %and = and i64 %b.coerce.fca.1.extract, %neg
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %b.coerce.fca.0.extract = extractvalue [2 x i64] %b.coerce, 0
  %a.coerce.fca.0.extract = extractvalue [2 x i64] %a.coerce, 0
  %and4 = and i64 %b.coerce.fca.0.extract, %neg
  call void @__sanitizer_cov_trace_cmp8(i64 %a.coerce.fca.0.extract, i64 %and4)
  %cmp = icmp eq i64 %a.coerce.fca.0.extract, %and4
  %retval.0 = select i1 %tobool.not, i1 %cmp, i1 false
  ret i1 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tnum_strn(ptr nocapture noundef writeonly %str, i32 noundef %size, [2 x i64] %a.coerce) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [2 x i64] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [2 x i64] %a.coerce, 1
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str, i64 noundef %a.coerce.fca.0.extract, i64 noundef %a.coerce.fca.1.extract)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local i32 @tnum_sbin(ptr nocapture noundef writeonly %str, i32 noundef %size, [2 x i64] %a.coerce) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [2 x i64] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [2 x i64] %a.coerce, 1
  br label %for.body

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %entry
  %a.sroa.4.036 = phi i64 [ %a.coerce.fca.1.extract, %entry ], [ %shr, %if.end12.for.body_crit_edge ]
  %n.034 = phi i32 [ 64, %entry ], [ %dec.pre-phi, %if.end12.for.body_crit_edge ]
  %a.sroa.0.032 = phi i64 [ %a.coerce.fca.0.extract, %entry ], [ %shr15, %if.end12.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %n.034, i32 %size)
  %cmp = icmp ult i32 %n.034, %size
  br i1 %cmp, label %if.then, label %for.body.if.end12_crit_edge

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = add nsw i32 %n.034, -1
  br label %if.end12

if.then:                                          ; preds = %for.body
  %and = and i64 %a.sroa.4.036, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add nsw i32 %n.034, -1
  %arrayidx = getelementptr i8, ptr %str, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 120, ptr %arrayidx, align 1
  br label %if.end12

if.else:                                          ; preds = %if.then
  %and3 = and i64 %a.sroa.0.032, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  %sub9 = add nsw i32 %n.034, -1
  %arrayidx10 = getelementptr i8, ptr %str, i32 %sub9
  br i1 %tobool4.not, label %if.else8, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 49, ptr %arrayidx10, align 1
  br label %if.end12

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 48, ptr %arrayidx10, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.else8, %if.then5, %if.then2, %for.body.if.end12_crit_edge
  %dec.pre-phi = phi i32 [ %.pre, %for.body.if.end12_crit_edge ], [ %sub, %if.then2 ], [ %sub9, %if.else8 ], [ %sub9, %if.then5 ]
  %shr = lshr i64 %a.sroa.4.036, 1
  %shr15 = lshr i64 %a.sroa.0.032, 1
  %tobool.not = icmp eq i32 %dec.pre-phi, 0
  br i1 %tobool.not, label %for.end, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %sub16 = add i32 %size, -1
  %3 = tail call i32 @llvm.umin.i32(i32 %sub16, i32 64)
  %arrayidx18 = getelementptr i8, ptr %str, i32 %3
  %4 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx18, align 1
  ret i32 64
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @tnum_subreg(ptr noalias nocapture writeonly sret(%struct.tnum) align 8 %agg.result, [2 x i64] %a.coerce) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract.i = extractvalue [2 x i64] %a.coerce, 0
  %a.coerce.fca.1.extract.i = extractvalue [2 x i64] %a.coerce, 1
  %and.i = and i64 %a.coerce.fca.0.extract.i, 4294967295
  %and6.i = and i64 %a.coerce.fca.1.extract.i, 4294967295
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %and.i, ptr %agg.result, align 8, !alias.scope !19
  %a.sroa.4.0.agg.result.sroa_idx.i = getelementptr inbounds i8, ptr %agg.result, i32 8
  %1 = ptrtoint ptr %a.sroa.4.0.agg.result.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %and6.i, ptr %a.sroa.4.0.agg.result.sroa_idx.i, align 8, !alias.scope !19
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @tnum_clear_subreg(ptr noalias nocapture writeonly sret(%struct.tnum) align 8 %agg.result, [2 x i64] %a.coerce) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract.i = extractvalue [2 x i64] %a.coerce, 0
  %a.coerce.fca.1.extract.i = extractvalue [2 x i64] %a.coerce, 1
  %shr.i = and i64 %a.coerce.fca.0.extract.i, -4294967296
  %shr5.i = and i64 %a.coerce.fca.1.extract.i, -4294967296
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %shr.i, ptr %agg.result, align 8, !alias.scope !22
  %mask.i7 = getelementptr inbounds %struct.tnum, ptr %agg.result, i32 0, i32 1
  %1 = ptrtoint ptr %mask.i7 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %shr5.i, ptr %mask.i7, align 8, !alias.scope !22
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @tnum_const_subreg(ptr noalias nocapture writeonly sret(%struct.tnum) align 8 %agg.result, [2 x i64] %a.coerce, i32 noundef %value) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract.i.i = extractvalue [2 x i64] %a.coerce, 0
  %a.coerce.fca.1.extract.i.i = extractvalue [2 x i64] %a.coerce, 1
  %shr.i.i = and i64 %a.coerce.fca.0.extract.i.i, -4294967296
  %shr5.i.i = and i64 %a.coerce.fca.1.extract.i.i, -4294967296
  %conv = zext i32 %value to i64
  %or.i = or i64 %shr.i.i, %conv
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %or.i, ptr %agg.result, align 8, !alias.scope !25
  %mask5.i = getelementptr inbounds %struct.tnum, ptr %agg.result, i32 0, i32 1
  %neg.i = xor i64 %or.i, -1
  %and.i = and i64 %shr5.i.i, %neg.i
  %1 = ptrtoint ptr %mask5.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %and.i, ptr %mask5.i, align 8, !alias.scope !25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store1_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @tnum_unknown, !1, !"tnum_unknown", i1 false, i1 false}
!1 = !{!"../kernel/bpf/tnum.c", i32 14, i32 19}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/bpf/tnum.c", i32 177, i32 29}
!4 = !{ptr @__ksymtab_tnum_strn, !5, !"__ksymtab_tnum_strn", i1 false, i1 false}
!5 = !{!"../kernel/bpf/tnum.c", i32 179, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i32 0, i32 33}
!16 = !{!17}
!17 = distinct !{!17, !18, !"tnum_add: %agg.result"}
!18 = distinct !{!18, !"tnum_add"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"tnum_cast: %agg.result"}
!21 = distinct !{!21, !"tnum_cast"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"tnum_lshift: %agg.result"}
!24 = distinct !{!24, !"tnum_lshift"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"tnum_or: %agg.result"}
!27 = distinct !{!27, !"tnum_or"}
