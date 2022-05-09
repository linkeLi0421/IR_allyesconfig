; ModuleID = '/llk/IR_all_yes/crypto/dh_helper.c_pt.bc'
source_filename = "../crypto/dh_helper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+crypto_dh_key_len\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_dh_key_len\09\09\09\09"
module asm "\09.long\09__crc_crypto_dh_key_len\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_dh_key_len:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_dh_key_len\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_dh_key_len:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+crypto_dh_encode_key\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_dh_encode_key\09\09\09\09"
module asm "\09.long\09__crc_crypto_dh_encode_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_dh_encode_key:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_dh_encode_key\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_dh_encode_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+crypto_dh_decode_key\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_dh_decode_key\09\09\09\09"
module asm "\09.long\09__crc_crypto_dh_decode_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_dh_decode_key:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_dh_decode_key\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_dh_decode_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dh = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }

@__kstrtab_crypto_dh_key_len = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_dh_key_len = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_dh_key_len = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_dh_key_len to i32), ptr @__kstrtab_crypto_dh_key_len, ptr @__kstrtabns_crypto_dh_key_len }, section "___ksymtab_gpl+crypto_dh_key_len", align 4
@__kstrtab_crypto_dh_encode_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_dh_encode_key = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_dh_encode_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_dh_encode_key to i32), ptr @__kstrtab_crypto_dh_encode_key, ptr @__kstrtabns_crypto_dh_encode_key }, section "___ksymtab_gpl+crypto_dh_encode_key", align 4
@__kstrtab_crypto_dh_decode_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_dh_decode_key = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_dh_decode_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_dh_decode_key to i32), ptr @__kstrtab_crypto_dh_decode_key, ptr @__kstrtabns_crypto_dh_decode_key }, section "___ksymtab_gpl+crypto_dh_decode_key", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_crypto_dh_decode_key, ptr @__ksymtab_crypto_dh_encode_key, ptr @__ksymtab_crypto_dh_key_len], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @crypto_dh_key_len(ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %key_size.i = getelementptr inbounds %struct.dh, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size.i, align 4
  %p_size.i = getelementptr inbounds %struct.dh, ptr %p, i32 0, i32 5
  %2 = ptrtoint ptr %p_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p_size.i, align 4
  %q_size.i = getelementptr inbounds %struct.dh, ptr %p, i32 0, i32 6
  %4 = ptrtoint ptr %q_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %q_size.i, align 4
  %g_size.i = getelementptr inbounds %struct.dh, ptr %p, i32 0, i32 7
  %6 = ptrtoint ptr %g_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %g_size.i, align 4
  %add.i = add i32 %1, 20
  %add1.i = add i32 %add.i, %3
  %add2.i = add i32 %add1.i, %5
  %add = add i32 %add2.i, %7
  ret i32 %add
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @crypto_dh_encode_key(ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readonly %params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %len to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %buf, i32 %len
  %tobool.not.i = icmp eq ptr %buf, null
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp.i = icmp ult i32 %len, 4
  %or.cond.i = or i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %if.end.dh_pack_data.exit133_crit_edge, label %dh_pack_data.exit

if.end.dh_pack_data.exit133_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %dh_pack_data.exit133

dh_pack_data.exit:                                ; preds = %if.end
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 1, ptr %buf, align 1
  %secret.sroa.5.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 2
  %1 = ptrtoint ptr %secret.sroa.5.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 %conv, ptr %secret.sroa.5.0.buf.sroa_idx, align 1
  %add.ptr.i = getelementptr i8, ptr %buf, i32 4
  %key_size = getelementptr inbounds %struct.dh, ptr %params, i32 0, i32 4
  %tobool.not.i54 = icmp eq ptr %add.ptr.i, null
  %2 = and i32 %len, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp.i58 = icmp eq i32 %2, 4
  %or.cond.i59 = or i1 %tobool.not.i54, %cmp.i58
  br i1 %or.cond.i59, label %dh_pack_data.exit.dh_pack_data.exit133_crit_edge, label %dh_pack_data.exit63

dh_pack_data.exit.dh_pack_data.exit133_crit_edge: ; preds = %dh_pack_data.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %dh_pack_data.exit133

dh_pack_data.exit63:                              ; preds = %dh_pack_data.exit
  %3 = ptrtoint ptr %key_size to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %key_size, align 1
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %add.ptr.i, align 1
  %add.ptr.i60 = getelementptr i8, ptr %buf, i32 8
  %p_size = getelementptr inbounds %struct.dh, ptr %params, i32 0, i32 5
  %tobool.not.i64 = icmp eq ptr %add.ptr.i60, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp.i68 = icmp eq i32 %2, 8
  %or.cond.i69 = or i1 %tobool.not.i64, %cmp.i68
  br i1 %or.cond.i69, label %dh_pack_data.exit63.dh_pack_data.exit133_crit_edge, label %dh_pack_data.exit73

dh_pack_data.exit63.dh_pack_data.exit133_crit_edge: ; preds = %dh_pack_data.exit63
  call void @__sanitizer_cov_trace_pc() #6
  br label %dh_pack_data.exit133

dh_pack_data.exit73:                              ; preds = %dh_pack_data.exit63
  %6 = ptrtoint ptr %p_size to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %p_size, align 1
  %8 = ptrtoint ptr %add.ptr.i60 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %add.ptr.i60, align 1
  %add.ptr.i70 = getelementptr i8, ptr %buf, i32 12
  %q_size = getelementptr inbounds %struct.dh, ptr %params, i32 0, i32 6
  %tobool.not.i74 = icmp eq ptr %add.ptr.i70, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %cmp.i78 = icmp eq i32 %2, 12
  %or.cond.i79 = or i1 %tobool.not.i74, %cmp.i78
  br i1 %or.cond.i79, label %dh_pack_data.exit73.dh_pack_data.exit133_crit_edge, label %dh_pack_data.exit83

dh_pack_data.exit73.dh_pack_data.exit133_crit_edge: ; preds = %dh_pack_data.exit73
  call void @__sanitizer_cov_trace_pc() #6
  br label %dh_pack_data.exit133

dh_pack_data.exit83:                              ; preds = %dh_pack_data.exit73
  %9 = ptrtoint ptr %q_size to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %q_size, align 1
  %11 = ptrtoint ptr %add.ptr.i70 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %add.ptr.i70, align 1
  %add.ptr.i80 = getelementptr i8, ptr %buf, i32 16
  %g_size = getelementptr inbounds %struct.dh, ptr %params, i32 0, i32 7
  %tobool.not.i84 = icmp eq ptr %add.ptr.i80, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %2)
  %cmp.i88 = icmp eq i32 %2, 16
  %or.cond.i89 = or i1 %tobool.not.i84, %cmp.i88
  br i1 %or.cond.i89, label %dh_pack_data.exit83.dh_pack_data.exit133_crit_edge, label %dh_pack_data.exit93

dh_pack_data.exit83.dh_pack_data.exit133_crit_edge: ; preds = %dh_pack_data.exit83
  call void @__sanitizer_cov_trace_pc() #6
  br label %dh_pack_data.exit133

dh_pack_data.exit93:                              ; preds = %dh_pack_data.exit83
  %12 = ptrtoint ptr %g_size to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %g_size, align 1
  %14 = ptrtoint ptr %add.ptr.i80 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %add.ptr.i80, align 1
  %add.ptr.i90 = getelementptr i8, ptr %buf, i32 20
  %15 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %key_size, align 4
  %tobool.not.i94 = icmp eq ptr %add.ptr.i90, null
  %gepdiff = add i32 %len, -20
  call void @__sanitizer_cov_trace_cmp4(i32 %gepdiff, i32 %16)
  %cmp.i98 = icmp ult i32 %gepdiff, %16
  %or.cond.i99 = or i1 %tobool.not.i94, %cmp.i98
  br i1 %or.cond.i99, label %dh_pack_data.exit93.dh_pack_data.exit133_crit_edge, label %dh_pack_data.exit103

dh_pack_data.exit93.dh_pack_data.exit133_crit_edge: ; preds = %dh_pack_data.exit93
  call void @__sanitizer_cov_trace_pc() #6
  br label %dh_pack_data.exit133

dh_pack_data.exit103:                             ; preds = %dh_pack_data.exit93
  %17 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %params, align 4
  %19 = call ptr @memcpy(ptr %add.ptr.i90, ptr %18, i32 %16)
  %add.ptr.i100 = getelementptr i8, ptr %add.ptr.i90, i32 %16
  %20 = ptrtoint ptr %p_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %p_size, align 4
  %tobool.not.i104 = icmp eq ptr %add.ptr.i100, null
  %sub.ptr.rhs.cast.i106 = ptrtoint ptr %add.ptr.i100 to i32
  %sub.ptr.sub.i107 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i106
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i107, i32 %21)
  %cmp.i108 = icmp ult i32 %sub.ptr.sub.i107, %21
  %or.cond.i109 = or i1 %tobool.not.i104, %cmp.i108
  br i1 %or.cond.i109, label %dh_pack_data.exit103.dh_pack_data.exit133_crit_edge, label %dh_pack_data.exit113

dh_pack_data.exit103.dh_pack_data.exit133_crit_edge: ; preds = %dh_pack_data.exit103
  call void @__sanitizer_cov_trace_pc() #6
  br label %dh_pack_data.exit133

dh_pack_data.exit113:                             ; preds = %dh_pack_data.exit103
  %p = getelementptr inbounds %struct.dh, ptr %params, i32 0, i32 1
  %22 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p, align 4
  %24 = call ptr @memcpy(ptr %add.ptr.i100, ptr %23, i32 %21)
  %add.ptr.i110 = getelementptr i8, ptr %add.ptr.i100, i32 %21
  %25 = ptrtoint ptr %q_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %q_size, align 4
  %tobool.not.i114 = icmp eq ptr %add.ptr.i110, null
  %sub.ptr.rhs.cast.i116 = ptrtoint ptr %add.ptr.i110 to i32
  %sub.ptr.sub.i117 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i116
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i117, i32 %26)
  %cmp.i118 = icmp ult i32 %sub.ptr.sub.i117, %26
  %or.cond.i119 = or i1 %tobool.not.i114, %cmp.i118
  br i1 %or.cond.i119, label %dh_pack_data.exit113.dh_pack_data.exit133_crit_edge, label %dh_pack_data.exit123

dh_pack_data.exit113.dh_pack_data.exit133_crit_edge: ; preds = %dh_pack_data.exit113
  call void @__sanitizer_cov_trace_pc() #6
  br label %dh_pack_data.exit133

dh_pack_data.exit123:                             ; preds = %dh_pack_data.exit113
  %q = getelementptr inbounds %struct.dh, ptr %params, i32 0, i32 2
  %27 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %q, align 4
  %29 = call ptr @memcpy(ptr %add.ptr.i110, ptr %28, i32 %26)
  %add.ptr.i120 = getelementptr i8, ptr %add.ptr.i110, i32 %26
  %30 = ptrtoint ptr %g_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %g_size, align 4
  %tobool.not.i124 = icmp eq ptr %add.ptr.i120, null
  %sub.ptr.rhs.cast.i126 = ptrtoint ptr %add.ptr.i120 to i32
  %sub.ptr.sub.i127 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i126
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i127, i32 %31)
  %cmp.i128 = icmp ult i32 %sub.ptr.sub.i127, %31
  %or.cond.i129 = or i1 %tobool.not.i124, %cmp.i128
  br i1 %or.cond.i129, label %dh_pack_data.exit123.dh_pack_data.exit133_crit_edge, label %if.end.i131

dh_pack_data.exit123.dh_pack_data.exit133_crit_edge: ; preds = %dh_pack_data.exit123
  call void @__sanitizer_cov_trace_pc() #6
  br label %dh_pack_data.exit133

if.end.i131:                                      ; preds = %dh_pack_data.exit123
  call void @__sanitizer_cov_trace_pc() #6
  %g = getelementptr inbounds %struct.dh, ptr %params, i32 0, i32 3
  %32 = ptrtoint ptr %g to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %g, align 4
  %34 = call ptr @memcpy(ptr %add.ptr.i120, ptr %33, i32 %31)
  %add.ptr.i130 = getelementptr i8, ptr %add.ptr.i120, i32 %31
  br label %dh_pack_data.exit133

dh_pack_data.exit133:                             ; preds = %if.end.i131, %dh_pack_data.exit123.dh_pack_data.exit133_crit_edge, %dh_pack_data.exit113.dh_pack_data.exit133_crit_edge, %dh_pack_data.exit103.dh_pack_data.exit133_crit_edge, %dh_pack_data.exit93.dh_pack_data.exit133_crit_edge, %dh_pack_data.exit83.dh_pack_data.exit133_crit_edge, %dh_pack_data.exit73.dh_pack_data.exit133_crit_edge, %dh_pack_data.exit63.dh_pack_data.exit133_crit_edge, %dh_pack_data.exit.dh_pack_data.exit133_crit_edge, %if.end.dh_pack_data.exit133_crit_edge
  %retval.0.i132 = phi ptr [ %add.ptr.i130, %if.end.i131 ], [ null, %dh_pack_data.exit123.dh_pack_data.exit133_crit_edge ], [ null, %dh_pack_data.exit113.dh_pack_data.exit133_crit_edge ], [ null, %dh_pack_data.exit103.dh_pack_data.exit133_crit_edge ], [ null, %dh_pack_data.exit93.dh_pack_data.exit133_crit_edge ], [ null, %dh_pack_data.exit83.dh_pack_data.exit133_crit_edge ], [ null, %dh_pack_data.exit73.dh_pack_data.exit133_crit_edge ], [ null, %dh_pack_data.exit63.dh_pack_data.exit133_crit_edge ], [ null, %dh_pack_data.exit.dh_pack_data.exit133_crit_edge ], [ null, %if.end.dh_pack_data.exit133_crit_edge ]
  %cmp.not = icmp eq ptr %retval.0.i132, %add.ptr
  %. = select i1 %cmp.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %dh_pack_data.exit133, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %dh_pack_data.exit133 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_dh_decode_key(ptr noundef %buf, i32 noundef %len, ptr nocapture noundef %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %len)
  %cmp = icmp ult i32 %len, 20
  %spec.select = or i1 %tobool.not, %cmp
  br i1 %spec.select, label %entry.cleanup_crit_edge, label %if.end, !prof !15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %buf, align 1
  %secret.sroa.0.0.extract.shift.mask = and i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %secret.sroa.0.0.extract.shift.mask)
  %cmp3.not = icmp eq i32 %secret.sroa.0.0.extract.shift.mask, 65536
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %buf, i32 4
  %key_size = getelementptr inbounds %struct.dh, ptr %params, i32 0, i32 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr.i, align 1
  %4 = ptrtoint ptr %key_size to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %3, ptr %key_size, align 1
  %add.ptr.i91 = getelementptr i8, ptr %buf, i32 8
  %p_size = getelementptr inbounds %struct.dh, ptr %params, i32 0, i32 5
  %5 = ptrtoint ptr %add.ptr.i91 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %add.ptr.i91, align 1
  %7 = ptrtoint ptr %p_size to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %p_size, align 1
  %add.ptr.i92 = getelementptr i8, ptr %buf, i32 12
  %q_size = getelementptr inbounds %struct.dh, ptr %params, i32 0, i32 6
  %8 = ptrtoint ptr %add.ptr.i92 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %add.ptr.i92, align 1
  %10 = ptrtoint ptr %q_size to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %q_size, align 1
  %add.ptr.i93 = getelementptr i8, ptr %buf, i32 16
  %g_size = getelementptr inbounds %struct.dh, ptr %params, i32 0, i32 7
  %11 = ptrtoint ptr %add.ptr.i93 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %add.ptr.i93, align 1
  %13 = ptrtoint ptr %g_size to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %g_size, align 1
  %conv12 = and i32 %1, 65535
  %add.i.i = add i32 %3, 20
  %add1.i.i = add i32 %add.i.i, %6
  %add2.i.i = add i32 %add1.i.i, %9
  %add.i = add i32 %add2.i.i, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv12)
  %cmp14.not = icmp ne i32 %add.i, %conv12
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %6)
  %cmp20 = icmp ugt i32 %3, %6
  %or.cond = select i1 %cmp14.not, i1 true, i1 %cmp20
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %6)
  %cmp24 = icmp ugt i32 %12, %6
  %or.cond95 = select i1 %or.cond, i1 true, i1 %cmp24
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %6)
  %cmp29 = icmp ugt i32 %9, %6
  %or.cond96 = select i1 %or.cond95, i1 true, i1 %cmp29
  br i1 %or.cond96, label %if.end6.cleanup_crit_edge, label %if.end32

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end32:                                         ; preds = %if.end6
  %add.ptr.i94 = getelementptr i8, ptr %buf, i32 20
  %14 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i94, ptr %params, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr.i94, i32 %3
  %p = getelementptr inbounds %struct.dh, ptr %params, i32 0, i32 1
  %15 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %p, align 4
  %add.ptr37 = getelementptr i8, ptr %add.ptr, i32 %6
  %q = getelementptr inbounds %struct.dh, ptr %params, i32 0, i32 2
  %16 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr37, ptr %q, align 4
  %add.ptr43 = getelementptr i8, ptr %add.ptr37, i32 %9
  %g = getelementptr inbounds %struct.dh, ptr %params, i32 0, i32 3
  %17 = ptrtoint ptr %g to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr43, ptr %g, align 4
  %call46 = tail call ptr @memchr_inv(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %6) #4
  %cmp47 = icmp eq ptr %call46, null
  br i1 %cmp47, label %if.end32.cleanup_crit_edge, label %if.end50

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end50:                                         ; preds = %if.end32
  %18 = ptrtoint ptr %q_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %q_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp52 = icmp eq i32 %19, 0
  br i1 %cmp52, label %if.then54, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %q, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %if.end50.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %if.end32.cleanup_crit_edge ], [ 0, %if.then54 ], [ 0, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_crypto_dh_key_len, !1, !"__ksymtab_crypto_dh_key_len", i1 false, i1 false}
!1 = !{!"../crypto/dh_helper.c", i32 38, i32 1}
!2 = !{ptr @__ksymtab_crypto_dh_encode_key, !3, !"__ksymtab_crypto_dh_encode_key", i1 false, i1 false}
!3 = !{!"../crypto/dh_helper.c", i32 66, i32 1}
!4 = !{ptr @__ksymtab_crypto_dh_decode_key, !5, !"__ksymtab_crypto_dh_decode_key", i1 false, i1 false}
!5 = !{!"../crypto/dh_helper.c", i32 118, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 1, i32 2000}
