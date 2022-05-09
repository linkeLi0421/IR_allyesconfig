; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qualcomm/qca_7k_common.c_pt.bc'
source_filename = "../drivers/net/ethernet/qualcomm/qca_7k_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+qcafrm_create_header\22, \22a\22\09"
module asm "\09.weak\09__crc_qcafrm_create_header\09\09\09\09"
module asm "\09.long\09__crc_qcafrm_create_header\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcafrm_create_header:\09\09\09\09\09"
module asm "\09.asciz \09\22qcafrm_create_header\22\09\09\09\09\09"
module asm "__kstrtabns_qcafrm_create_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qcafrm_create_footer\22, \22a\22\09"
module asm "\09.weak\09__crc_qcafrm_create_footer\09\09\09\09"
module asm "\09.long\09__crc_qcafrm_create_footer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcafrm_create_footer:\09\09\09\09\09"
module asm "\09.asciz \09\22qcafrm_create_footer\22\09\09\09\09\09"
module asm "__kstrtabns_qcafrm_create_footer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qcafrm_fsm_decode\22, \22a\22\09"
module asm "\09.weak\09__crc_qcafrm_fsm_decode\09\09\09\09"
module asm "\09.long\09__crc_qcafrm_fsm_decode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcafrm_fsm_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22qcafrm_fsm_decode\22\09\09\09\09\09"
module asm "__kstrtabns_qcafrm_fsm_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.qcafrm_handle = type { i32, i32, i16, i16 }

@__kstrtab_qcafrm_create_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcafrm_create_header = external dso_local constant [0 x i8], align 1
@__ksymtab_qcafrm_create_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcafrm_create_header to i32), ptr @__kstrtab_qcafrm_create_header, ptr @__kstrtabns_qcafrm_create_header }, section "___ksymtab_gpl+qcafrm_create_header", align 4
@__kstrtab_qcafrm_create_footer = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcafrm_create_footer = external dso_local constant [0 x i8], align 1
@__ksymtab_qcafrm_create_footer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcafrm_create_footer to i32), ptr @__kstrtab_qcafrm_create_footer, ptr @__kstrtabns_qcafrm_create_footer }, section "___ksymtab_gpl+qcafrm_create_footer", align 4
@__kstrtab_qcafrm_fsm_decode = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcafrm_fsm_decode = external dso_local constant [0 x i8], align 1
@__ksymtab_qcafrm_fsm_decode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcafrm_fsm_decode to i32), ptr @__kstrtab_qcafrm_fsm_decode, ptr @__kstrtabns_qcafrm_fsm_decode }, section "___ksymtab_gpl+qcafrm_fsm_decode", align 4
@__UNIQUE_ID_description341 = internal constant [58 x i8] c"qca_7k_common.description=Qualcomm Atheros QCA7000 common\00", section ".modinfo", align 1
@__UNIQUE_ID_author342 = internal constant [53 x i8] c"qca_7k_common.author=Qualcomm Atheros Communications\00", section ".modinfo", align 1
@__UNIQUE_ID_author343 = internal constant [60 x i8] c"qca_7k_common.author=Stefan Wahren <stefan.wahren@i2se.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file344 = internal constant [63 x i8] c"qca_7k_common.file=drivers/net/ethernet/qualcomm/qca_7k_common\00", section ".modinfo", align 1
@__UNIQUE_ID_license345 = internal constant [35 x i8] c"qca_7k_common.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 32757, i64 32758, i64 32759, i64 32760, i64 32761, i64 32762, i64 32763, i64 32764, i64 32765, i64 32766, i64 32767, i64 32768]
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author342, ptr @__UNIQUE_ID_author343, ptr @__UNIQUE_ID_description341, ptr @__UNIQUE_ID_file344, ptr @__UNIQUE_ID_license345, ptr @__ksymtab_qcafrm_create_footer, ptr @__ksymtab_qcafrm_create_header, ptr @__ksymtab_qcafrm_fsm_decode], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local zeroext i16 @qcafrm_create_header(ptr noundef writeonly %buf, i16 noundef zeroext %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = tail call i16 @llvm.bswap.i16(i16 %length)
  %conv4 = trunc i16 %0 to i8
  %arrayidx5 = getelementptr i8, ptr %buf, i32 4
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 -1431655766, ptr %buf, align 1
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv4, ptr %arrayidx5, align 1
  %3 = lshr i16 %0, 8
  %conv8 = trunc i16 %3 to i8
  %arrayidx9 = getelementptr i8, ptr %buf, i32 5
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv8, ptr %arrayidx9, align 1
  %arrayidx10 = getelementptr i8, ptr %buf, i32 6
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx10, align 1
  %arrayidx11 = getelementptr i8, ptr %buf, i32 7
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx11, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ 8, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local zeroext i16 @qcafrm_create_footer(ptr noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 85, ptr %buf, align 1
  %arrayidx1 = getelementptr i8, ptr %buf, i32 1
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 85, ptr %arrayidx1, align 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i16 [ 2, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qcafrm_fsm_decode(ptr noundef %handle, ptr nocapture noundef writeonly %buf, i16 noundef zeroext %buf_len, i8 noundef zeroext %recv_byte) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %handle, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 32768, label %entry.sw.bb_crit_edge
    i32 32767, label %entry.sw.bb_crit_edge110
    i32 32766, label %entry.sw.bb4_crit_edge
    i32 32765, label %entry.sw.bb4_crit_edge111
    i32 32764, label %entry.sw.bb7_crit_edge
    i32 32763, label %entry.sw.bb7_crit_edge112
    i32 32762, label %entry.sw.bb7_crit_edge113
    i32 32761, label %entry.sw.bb7_crit_edge114
    i32 32760, label %sw.bb17
    i32 32759, label %sw.bb20
    i32 32758, label %sw.bb27
    i32 32757, label %sw.bb29
    i32 1, label %sw.bb50
    i32 0, label %sw.bb60
  ]

entry.sw.bb7_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7

entry.sw.bb7_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7

entry.sw.bb7_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7

entry.sw.bb4_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4

entry.sw.bb_crit_edge110:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge110
  %dec = add nsw i32 %1, -1
  %3 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dec, ptr %handle, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %recv_byte)
  %cmp.not = icmp eq i8 %recv_byte, 0
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %init = getelementptr inbounds %struct.qcafrm_handle, ptr %handle, i32 0, i32 1
  %4 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %init, align 4
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %handle, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge111
  %dec6 = add nsw i32 %1, -1
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dec6, ptr %handle, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge112, %entry.sw.bb7_crit_edge113, %entry.sw.bb7_crit_edge114
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %recv_byte)
  %cmp9.not = icmp eq i8 %recv_byte, -86
  br i1 %cmp9.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  %init12 = getelementptr inbounds %struct.qcafrm_handle, ptr %handle, i32 0, i32 1
  %8 = ptrtoint ptr %init12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %init12, align 4
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %handle, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  %dec15 = add nsw i32 %1, -1
  %11 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dec15, ptr %handle, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv18 = zext i8 %recv_byte to i16
  %offset = getelementptr inbounds %struct.qcafrm_handle, ptr %handle, i32 0, i32 2
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv18, ptr %offset, align 4
  %13 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 32759, ptr %handle, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %offset21 = getelementptr inbounds %struct.qcafrm_handle, ptr %handle, i32 0, i32 2
  %14 = ptrtoint ptr %offset21 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %offset21, align 4
  %conv23 = zext i8 %recv_byte to i16
  %shl = shl nuw i16 %conv23, 8
  %or = or i16 %15, %shl
  store i16 %or, ptr %offset21, align 4
  %16 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 32758, ptr %handle, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 32757, ptr %handle, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  %offset30 = getelementptr inbounds %struct.qcafrm_handle, ptr %handle, i32 0, i32 2
  %18 = ptrtoint ptr %offset30 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %offset30, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %buf_len)
  %cmp33 = icmp ugt i16 %19, %buf_len
  call void @__sanitizer_cov_trace_const_cmp2(i16 60, i16 %19)
  %cmp36 = icmp ult i16 %19, 60
  %or.cond = or i1 %cmp33, %cmp36
  br i1 %or.cond, label %if.then38, label %if.else41

if.then38:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #6
  %init39 = getelementptr inbounds %struct.qcafrm_handle, ptr %handle, i32 0, i32 1
  %20 = ptrtoint ptr %init39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %init39, align 4
  %22 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %handle, align 4
  br label %sw.epilog

if.else41:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #6
  %conv31 = zext i16 %19 to i32
  %add = add nuw nsw i32 %conv31, 1
  %23 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %handle, align 4
  %24 = ptrtoint ptr %offset30 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %offset30, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %offset46 = getelementptr inbounds %struct.qcafrm_handle, ptr %handle, i32 0, i32 2
  %25 = ptrtoint ptr %offset46 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %offset46, align 4
  %idxprom = zext i16 %26 to i32
  %arrayidx = getelementptr i8, ptr %buf, i32 %idxprom
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %recv_byte, ptr %arrayidx, align 1
  %28 = load i16, ptr %offset46, align 4
  %inc = add i16 %28, 1
  store i16 %inc, ptr %offset46, align 4
  %29 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %handle, align 4
  %dec49 = add i32 %30, -1
  store i32 %dec49, ptr %handle, align 4
  br label %sw.epilog

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %recv_byte)
  %cmp52.not = icmp eq i8 %recv_byte, 85
  br i1 %cmp52.not, label %if.else57, label %if.then54

if.then54:                                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #6
  %init55 = getelementptr inbounds %struct.qcafrm_handle, ptr %handle, i32 0, i32 1
  %31 = ptrtoint ptr %init55 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %init55, align 4
  %33 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %handle, align 4
  br label %sw.epilog

if.else57:                                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %handle, align 4
  br label %sw.epilog

sw.bb60:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %recv_byte)
  %cmp62.not = icmp eq i8 %recv_byte, 85
  br i1 %cmp62.not, label %if.else67, label %if.then64

if.then64:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #6
  %init65 = getelementptr inbounds %struct.qcafrm_handle, ptr %handle, i32 0, i32 1
  %35 = ptrtoint ptr %init65 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %init65, align 4
  %37 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %handle, align 4
  br label %sw.epilog

if.else67:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #6
  %offset68 = getelementptr inbounds %struct.qcafrm_handle, ptr %handle, i32 0, i32 2
  %38 = ptrtoint ptr %offset68 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %offset68, align 4
  %conv69 = zext i16 %39 to i32
  %init70 = getelementptr inbounds %struct.qcafrm_handle, ptr %handle, i32 0, i32 1
  %40 = ptrtoint ptr %init70 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %init70, align 4
  %42 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %handle, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else67, %if.then64, %if.else57, %if.then54, %sw.default, %if.else41, %if.then38, %sw.bb27, %sw.bb20, %sw.bb17, %if.else, %if.then11, %sw.bb4, %if.then, %sw.bb.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.default ], [ -1002, %if.then64 ], [ %conv69, %if.else67 ], [ -1002, %if.then54 ], [ 0, %if.else57 ], [ -1003, %if.then38 ], [ 0, %if.else41 ], [ 0, %sw.bb27 ], [ 0, %sw.bb20 ], [ 0, %sw.bb17 ], [ -1001, %if.then11 ], [ 0, %if.else ], [ 0, %sw.bb4 ], [ 0, %if.then ], [ 0, %sw.bb.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__ksymtab_qcafrm_create_header, !1, !"__ksymtab_qcafrm_create_header", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qualcomm/qca_7k_common.c", i32 51, i32 1}
!2 = !{ptr @__ksymtab_qcafrm_create_footer, !3, !"__ksymtab_qcafrm_create_footer", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/qualcomm/qca_7k_common.c", i32 63, i32 1}
!4 = !{ptr @__ksymtab_qcafrm_fsm_decode, !5, !"__ksymtab_qcafrm_fsm_decode", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/qualcomm/qca_7k_common.c", i32 161, i32 1}
!6 = !{ptr @__UNIQUE_ID_description341, !7, !"__UNIQUE_ID_description341", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/qualcomm/qca_7k_common.c", i32 163, i32 1}
!8 = !{ptr @__UNIQUE_ID_author342, !9, !"__UNIQUE_ID_author342", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/qualcomm/qca_7k_common.c", i32 164, i32 1}
!10 = !{ptr @__UNIQUE_ID_author343, !11, !"__UNIQUE_ID_author343", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/qualcomm/qca_7k_common.c", i32 165, i32 1}
!12 = !{ptr @__UNIQUE_ID_file344, !13, !"__UNIQUE_ID_file344", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/qualcomm/qca_7k_common.c", i32 166, i32 1}
!14 = !{ptr @__UNIQUE_ID_license345, !13, !"__UNIQUE_ID_license345", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
