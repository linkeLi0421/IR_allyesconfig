; ModuleID = '/llk/IR_all_yes/lib/crypto/aes.c_pt.bc'
source_filename = "../lib/crypto/aes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+crypto_aes_sbox\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_aes_sbox\09\09\09\09"
module asm "\09.long\09__crc_crypto_aes_sbox\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_aes_sbox:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_aes_sbox\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_aes_sbox:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crypto_aes_inv_sbox\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_aes_inv_sbox\09\09\09\09"
module asm "\09.long\09__crc_crypto_aes_inv_sbox\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_aes_inv_sbox:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_aes_inv_sbox\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_aes_inv_sbox:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+aes_expandkey\22, \22a\22\09"
module asm "\09.weak\09__crc_aes_expandkey\09\09\09\09"
module asm "\09.long\09__crc_aes_expandkey\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_aes_expandkey:\09\09\09\09\09"
module asm "\09.asciz \09\22aes_expandkey\22\09\09\09\09\09"
module asm "__kstrtabns_aes_expandkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+aes_encrypt\22, \22a\22\09"
module asm "\09.weak\09__crc_aes_encrypt\09\09\09\09"
module asm "\09.long\09__crc_aes_encrypt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_aes_encrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22aes_encrypt\22\09\09\09\09\09"
module asm "__kstrtabns_aes_encrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+aes_decrypt\22, \22a\22\09"
module asm "\09.weak\09__crc_aes_decrypt\09\09\09\09"
module asm "\09.long\09__crc_aes_decrypt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_aes_decrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22aes_decrypt\22\09\09\09\09\09"
module asm "__kstrtabns_aes_decrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.crypto_aes_ctx = type { [60 x i32], [60 x i32], i32 }

@aes_sbox = internal constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\\\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", section ".data..cacheline_aligned", align 128
@aes_inv_sbox = internal constant [256 x i8] c"R\09j\D506\A58\BF@\A3\9E\81\F3\D7\FB|\E39\82\9B/\FF\874\8ECD\C4\DE\E9\CBT{\942\A6\C2#=\EEL\95\0BB\FA\C3N\08.\A1f(\D9$\B2v[\A2Im\8B\D1%r\F8\F6d\86h\98\16\D4\A4\\\CC]e\B6\92lpHP\FD\ED\B9\DA^\15FW\A7\8D\9D\84\90\D8\AB\00\8C\BC\D3\0A\F7\E4X\05\B8\B3E\06\D0,\1E\8F\CA?\0F\02\C1\AF\BD\03\01\13\8Ak:\91\11AOg\DC\EA\97\F2\CF\CE\F0\B4\E6s\96\ACt\22\E7\AD5\85\E2\F97\E8\1Cu\DFnG\F1\1Aq\1D)\C5\89o\B7b\0E\AA\18\BE\1B\FCV>K\C6\D2y \9A\DB\C0\FEx\CDZ\F4\1F\DD\A83\88\07\C71\B1\12\10Y'\80\EC_`Q\7F\A9\19\B5J\0D-\E5z\9F\93\C9\9C\EF\A0\E0;M\AE*\F5\B0\C8\EB\BB<\83S\99a\17+\04~\BAw\D6&\E1i\14cU!\0C}", section ".data..cacheline_aligned", align 128
@__kstrtab_crypto_aes_sbox = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_aes_sbox = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_aes_sbox = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aes_sbox to i32), ptr @__kstrtab_crypto_aes_sbox, ptr @__kstrtabns_crypto_aes_sbox }, section "___ksymtab+crypto_aes_sbox", align 4
@__kstrtab_crypto_aes_inv_sbox = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_aes_inv_sbox = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_aes_inv_sbox = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aes_inv_sbox to i32), ptr @__kstrtab_crypto_aes_inv_sbox, ptr @__kstrtabns_crypto_aes_inv_sbox }, section "___ksymtab+crypto_aes_inv_sbox", align 4
@__kstrtab_aes_expandkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_aes_expandkey = external dso_local constant [0 x i8], align 1
@__ksymtab_aes_expandkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aes_expandkey to i32), ptr @__kstrtab_aes_expandkey, ptr @__kstrtabns_aes_expandkey }, section "___ksymtab+aes_expandkey", align 4
@__kstrtab_aes_encrypt = external dso_local constant [0 x i8], align 1
@__kstrtabns_aes_encrypt = external dso_local constant [0 x i8], align 1
@__ksymtab_aes_encrypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aes_encrypt to i32), ptr @__kstrtab_aes_encrypt, ptr @__kstrtabns_aes_encrypt }, section "___ksymtab+aes_encrypt", align 4
@__kstrtab_aes_decrypt = external dso_local constant [0 x i8], align 1
@__kstrtabns_aes_decrypt = external dso_local constant [0 x i8], align 1
@__ksymtab_aes_decrypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aes_decrypt to i32), ptr @__kstrtab_aes_decrypt, ptr @__kstrtabns_aes_decrypt }, section "___ksymtab+aes_decrypt", align 4
@__UNIQUE_ID_description173 = internal constant [39 x i8] c"libaes.description=Generic AES library\00", section ".modinfo", align 1
@__UNIQUE_ID_author174 = internal constant [57 x i8] c"libaes.author=Ard Biesheuvel <ard.biesheuvel@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [30 x i8] c"libaes.file=lib/crypto/libaes\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [22 x i8] c"libaes.license=GPL v2\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 32]
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author174, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__ksymtab_aes_decrypt, ptr @__ksymtab_aes_encrypt, ptr @__ksymtab_aes_expandkey, ptr @__ksymtab_crypto_aes_inv_sbox, ptr @__ksymtab_crypto_aes_sbox], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

@crypto_aes_sbox = dso_local alias [256 x i8], ptr @aes_sbox
@crypto_aes_inv_sbox = dso_local alias [256 x i8], ptr @aes_inv_sbox

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aes_expandkey(ptr noundef %ctx, ptr nocapture noundef readonly %in_key, i32 noundef %key_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %div236 = lshr i32 %key_len, 2
  %0 = zext i32 %key_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %key_len, label %entry.cleanup140_crit_edge [
    i32 16, label %entry.for.body.preheader_crit_edge
    i32 24, label %entry.for.body.preheader_crit_edge351
    i32 32, label %entry.for.body.preheader_crit_edge352
  ]

entry.for.body.preheader_crit_edge352:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.preheader

entry.for.body.preheader_crit_edge351:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.preheader

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.preheader

entry.cleanup140_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup140

for.body.preheader:                               ; preds = %entry.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge351, %entry.for.body.preheader_crit_edge352
  %key_length = getelementptr inbounds %struct.crypto_aes_ctx, ptr %ctx, i32 0, i32 2
  %1 = ptrtoint ptr %key_length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %key_len, ptr %key_length, align 4
  br label %for.body

for.cond2.preheader:                              ; preds = %for.body
  %sub = add nsw i32 %div236, -1
  br label %for.body4

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0339 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = shl i32 %i.0339, 2
  %add.ptr = getelementptr i8, ptr %in_key, i32 %mul
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #2
  %arrayidx = getelementptr [60 x i32], ptr %ctx, i32 0, i32 %i.0339
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0339, 1
  %exitcond.not = icmp eq i32 %inc, %div236
  br i1 %exitcond.not, label %for.cond2.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body4:                                        ; preds = %for.inc65.for.body4_crit_edge, %for.cond2.preheader
  %i.1341 = phi i32 [ 0, %for.cond2.preheader ], [ %inc66, %for.inc65.for.body4_crit_edge ]
  %rc.0340 = phi i32 [ 1, %for.cond2.preheader ], [ %xor.i, %for.inc65.for.body4_crit_edge ]
  %mul6 = mul i32 %i.1341, %div236
  %add.ptr7 = getelementptr i32, ptr %ctx, i32 %mul6
  %add.ptr8 = getelementptr i32, ptr %add.ptr7, i32 %div236
  %arrayidx9 = getelementptr i32, ptr %add.ptr7, i32 %sub
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx9, align 4
  %and.i = and i32 %7, 255
  %arrayidx.i = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %9 to i32
  %shr.i = lshr i32 %7, 8
  %and1.i = and i32 %shr.i, 255
  %arrayidx2.i = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and1.i
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %11 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 8
  %shr4.i = lshr i32 %7, 16
  %and5.i = and i32 %shr4.i, 255
  %arrayidx6.i = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and5.i
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %13 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 16
  %xor920.i = or i32 %shl8.i, %shl.i
  %shr10.i = lshr i32 %7, 24
  %arrayidx12.i = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %shr10.i
  %14 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %15 to i32
  %shl14.i = shl nuw i32 %conv13.i, 24
  %xor1521.i = or i32 %xor920.i, %shl14.i
  %or.i = tail call i32 @llvm.fshl.i32(i32 %conv.i, i32 %xor1521.i, i32 24)
  %16 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr7, align 4
  %xor = xor i32 %17, %rc.0340
  %xor13 = xor i32 %xor, %or.i
  %18 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %xor13, ptr %add.ptr8, align 4
  %arrayidx16 = getelementptr i32, ptr %add.ptr7, i32 1
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx16, align 4
  %xor17 = xor i32 %xor13, %20
  %arrayidx18 = getelementptr i32, ptr %add.ptr8, i32 1
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %xor17, ptr %arrayidx18, align 4
  %arrayidx20 = getelementptr i32, ptr %add.ptr7, i32 2
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx20, align 4
  %xor21 = xor i32 %xor17, %23
  %arrayidx22 = getelementptr i32, ptr %add.ptr8, i32 2
  %24 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %xor21, ptr %arrayidx22, align 4
  %arrayidx24 = getelementptr i32, ptr %add.ptr7, i32 3
  %25 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx24, align 4
  %xor25 = xor i32 %xor21, %26
  %arrayidx26 = getelementptr i32, ptr %add.ptr8, i32 3
  %27 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %xor25, ptr %arrayidx26, align 4
  %28 = zext i32 %key_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %key_len, label %for.body4.for.inc65_crit_edge [
    i32 24, label %if.then28
    i32 32, label %if.then41
  ]

for.body4.for.inc65_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc65

if.then28:                                        ; preds = %for.body4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.1341)
  %cmp29 = icmp ugt i32 %i.1341, 6
  br i1 %cmp29, label %if.then28.for.end68_crit_edge, label %if.end31

if.then28.for.end68_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end68

if.end31:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx33 = getelementptr i32, ptr %add.ptr7, i32 4
  %29 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx33, align 4
  br label %for.inc65.sink.split

if.then41:                                        ; preds = %for.body4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.1341)
  %cmp42 = icmp ugt i32 %i.1341, 5
  br i1 %cmp42, label %if.then41.for.end68_crit_edge, label %if.end44

if.then41.for.end68_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end68

if.end44:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #4
  %and.i237 = and i32 %xor25, 255
  %arrayidx.i238 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and.i237
  %31 = ptrtoint ptr %arrayidx.i238 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load volatile i8, ptr %arrayidx.i238, align 1
  %conv.i239 = zext i8 %32 to i32
  %shr.i240 = lshr i32 %xor25, 8
  %and1.i241 = and i32 %shr.i240, 255
  %arrayidx2.i242 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and1.i241
  %33 = ptrtoint ptr %arrayidx2.i242 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load volatile i8, ptr %arrayidx2.i242, align 1
  %conv3.i243 = zext i8 %34 to i32
  %shl.i244 = shl nuw nsw i32 %conv3.i243, 8
  %xor19.i245 = or i32 %shl.i244, %conv.i239
  %shr4.i246 = lshr i32 %xor25, 16
  %and5.i247 = and i32 %shr4.i246, 255
  %arrayidx6.i248 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and5.i247
  %35 = ptrtoint ptr %arrayidx6.i248 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load volatile i8, ptr %arrayidx6.i248, align 1
  %conv7.i249 = zext i8 %36 to i32
  %shl8.i250 = shl nuw nsw i32 %conv7.i249, 16
  %xor920.i251 = or i32 %xor19.i245, %shl8.i250
  %shr10.i252 = lshr i32 %xor25, 24
  %arrayidx12.i253 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %shr10.i252
  %37 = ptrtoint ptr %arrayidx12.i253 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load volatile i8, ptr %arrayidx12.i253, align 1
  %conv13.i254 = zext i8 %38 to i32
  %shl14.i255 = shl nuw i32 %conv13.i254, 24
  %xor1521.i256 = or i32 %xor920.i251, %shl14.i255
  %arrayidx47 = getelementptr i32, ptr %add.ptr7, i32 4
  %39 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx47, align 4
  %xor48 = xor i32 %xor1521.i256, %40
  %arrayidx49 = getelementptr i32, ptr %add.ptr8, i32 4
  %41 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %xor48, ptr %arrayidx49, align 4
  %arrayidx51 = getelementptr i32, ptr %add.ptr7, i32 5
  %42 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx51, align 4
  %xor52 = xor i32 %xor48, %43
  %arrayidx53 = getelementptr i32, ptr %add.ptr8, i32 5
  %44 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %xor52, ptr %arrayidx53, align 4
  %arrayidx55 = getelementptr i32, ptr %add.ptr7, i32 6
  %45 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx55, align 4
  br label %for.inc65.sink.split

for.inc65.sink.split:                             ; preds = %if.end44, %if.end31
  %xor25.sink = phi i32 [ %xor25, %if.end31 ], [ %46, %if.end44 ]
  %.sink = phi i32 [ %30, %if.end31 ], [ %xor52, %if.end44 ]
  %.sink350 = phi i32 [ 4, %if.end31 ], [ 6, %if.end44 ]
  %.sink348 = phi i32 [ 5, %if.end31 ], [ 7, %if.end44 ]
  %xor34 = xor i32 %.sink, %xor25.sink
  %arrayidx57 = getelementptr i32, ptr %add.ptr8, i32 %.sink350
  %47 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %xor34, ptr %arrayidx57, align 4
  %arrayidx59 = getelementptr i32, ptr %add.ptr7, i32 %.sink348
  %48 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx59, align 4
  %xor60 = xor i32 %49, %xor34
  %arrayidx61 = getelementptr i32, ptr %add.ptr8, i32 %.sink348
  %50 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %xor60, ptr %arrayidx61, align 4
  br label %for.inc65

for.inc65:                                        ; preds = %for.inc65.sink.split, %for.body4.for.inc65_crit_edge
  %inc66 = add nuw nsw i32 %i.1341, 1
  %and.i257 = shl i32 %rc.0340, 1
  %shl.i258 = and i32 %and.i257, -16843010
  %and1.i259 = lshr i32 %rc.0340, 7
  %shr.i260 = and i32 %and1.i259, 16843009
  %mul.i = mul nuw nsw i32 %shr.i260, 27
  %xor.i = xor i32 %mul.i, %shl.i258
  %exitcond346.not = icmp eq i32 %inc66, 10
  br i1 %exitcond346.not, label %for.inc65.for.end68_crit_edge, label %for.inc65.for.body4_crit_edge

for.inc65.for.body4_crit_edge:                    ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body4

for.inc65.for.end68_crit_edge:                    ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end68

for.end68:                                        ; preds = %for.inc65.for.end68_crit_edge, %if.then41.for.end68_crit_edge, %if.then28.for.end68_crit_edge
  %add = add i32 %key_len, 24
  %arrayidx70 = getelementptr [60 x i32], ptr %ctx, i32 0, i32 %add
  %51 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx70, align 4
  %key_dec = getelementptr inbounds %struct.crypto_aes_ctx, ptr %ctx, i32 0, i32 1
  %53 = ptrtoint ptr %key_dec to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %key_dec, align 4
  %add73 = add i32 %key_len, 25
  %arrayidx74 = getelementptr [60 x i32], ptr %ctx, i32 0, i32 %add73
  %54 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx74, align 4
  %arrayidx76 = getelementptr %struct.crypto_aes_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx76, align 4
  %add78 = add i32 %key_len, 26
  %arrayidx79 = getelementptr [60 x i32], ptr %ctx, i32 0, i32 %add78
  %57 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx79, align 4
  %arrayidx81 = getelementptr %struct.crypto_aes_ctx, ptr %ctx, i32 0, i32 1, i32 2
  %59 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx81, align 4
  %add83 = add i32 %key_len, 27
  %arrayidx84 = getelementptr [60 x i32], ptr %ctx, i32 0, i32 %add83
  %60 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx84, align 4
  %arrayidx86 = getelementptr %struct.crypto_aes_ctx, ptr %ctx, i32 0, i32 1, i32 3
  %62 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx86, align 4
  %add87 = add i32 %key_len, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add87)
  %cmp89.not343 = icmp eq i32 %add87, 0
  br i1 %cmp89.not343, label %for.end68.for.end120_crit_edge, label %for.end68.for.body90_crit_edge

for.end68.for.body90_crit_edge:                   ; preds = %for.end68
  br label %for.body90

for.end68.for.end120_crit_edge:                   ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end120

for.body90:                                       ; preds = %for.body90.for.body90_crit_edge, %for.end68.for.body90_crit_edge
  %j.0345 = phi i32 [ %sub119, %for.body90.for.body90_crit_edge ], [ %add87, %for.end68.for.body90_crit_edge ]
  %i.2344 = phi i32 [ %add118, %for.body90.for.body90_crit_edge ], [ 4, %for.end68.for.body90_crit_edge ]
  %arrayidx92 = getelementptr [60 x i32], ptr %ctx, i32 0, i32 %j.0345
  %63 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx92, align 4
  %and.i.i = shl i32 %64, 2
  %shl.i.i = and i32 %and.i.i, -50529028
  %and1.i.i = lshr i32 %64, 7
  %shr.i.i = and i32 %and1.i.i, 16843009
  %mul.i.i = mul nuw nsw i32 %shr.i.i, 54
  %xor.i.i = xor i32 %mul.i.i, %shl.i.i
  %and2.i.i = lshr i32 %64, 6
  %shr3.i.i = and i32 %and2.i.i, 16843009
  %mul4.i.i = mul nuw nsw i32 %shr3.i.i, 27
  %xor5.i.i = xor i32 %xor.i.i, %mul4.i.i
  %xor.i261 = xor i32 %xor5.i.i, %64
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %xor5.i.i, i32 %xor5.i.i, i32 16) #2
  %xor2.i = xor i32 %xor.i261, %or.i.i
  %and.i.i.i = shl i32 %xor2.i, 1
  %shl.i.i.i = and i32 %and.i.i.i, -16843010
  %and1.i.i.i = lshr i32 %xor2.i, 7
  %shr.i.i.i = and i32 %and1.i.i.i, 16843009
  %mul.i.i.i = mul nuw nsw i32 %shr.i.i.i, 27
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor2.i, i32 %xor2.i, i32 16) #2
  %xor.i.i.i = xor i32 %shl.i.i.i, %or.i.i.i
  %xor.i6.i = xor i32 %xor.i.i.i, %mul.i.i.i
  %xor2.i.i = xor i32 %xor.i6.i, %xor2.i
  %or.i8.i.i = tail call i32 @llvm.fshl.i32(i32 %xor2.i.i, i32 %xor2.i.i, i32 24) #2
  %xor4.i.i = xor i32 %or.i8.i.i, %xor.i6.i
  %arrayidx95 = getelementptr %struct.crypto_aes_ctx, ptr %ctx, i32 0, i32 1, i32 %i.2344
  %65 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %xor4.i.i, ptr %arrayidx95, align 4
  %add97 = add i32 %j.0345, 1
  %arrayidx98 = getelementptr [60 x i32], ptr %ctx, i32 0, i32 %add97
  %66 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx98, align 4
  %and.i.i262 = shl i32 %67, 2
  %shl.i.i263 = and i32 %and.i.i262, -50529028
  %and1.i.i264 = lshr i32 %67, 7
  %shr.i.i265 = and i32 %and1.i.i264, 16843009
  %mul.i.i266 = mul nuw nsw i32 %shr.i.i265, 54
  %xor.i.i267 = xor i32 %mul.i.i266, %shl.i.i263
  %and2.i.i268 = lshr i32 %67, 6
  %shr3.i.i269 = and i32 %and2.i.i268, 16843009
  %mul4.i.i270 = mul nuw nsw i32 %shr3.i.i269, 27
  %xor5.i.i271 = xor i32 %xor.i.i267, %mul4.i.i270
  %xor.i272 = xor i32 %xor5.i.i271, %67
  %or.i.i273 = tail call i32 @llvm.fshl.i32(i32 %xor5.i.i271, i32 %xor5.i.i271, i32 16) #2
  %xor2.i274 = xor i32 %xor.i272, %or.i.i273
  %and.i.i.i275 = shl i32 %xor2.i274, 1
  %shl.i.i.i276 = and i32 %and.i.i.i275, -16843010
  %and1.i.i.i277 = lshr i32 %xor2.i274, 7
  %shr.i.i.i278 = and i32 %and1.i.i.i277, 16843009
  %mul.i.i.i279 = mul nuw nsw i32 %shr.i.i.i278, 27
  %or.i.i.i280 = tail call i32 @llvm.fshl.i32(i32 %xor2.i274, i32 %xor2.i274, i32 16) #2
  %xor.i.i.i281 = xor i32 %shl.i.i.i276, %or.i.i.i280
  %xor.i6.i282 = xor i32 %xor.i.i.i281, %mul.i.i.i279
  %xor2.i.i283 = xor i32 %xor.i6.i282, %xor2.i274
  %or.i8.i.i284 = tail call i32 @llvm.fshl.i32(i32 %xor2.i.i283, i32 %xor2.i.i283, i32 24) #2
  %xor4.i.i285 = xor i32 %or.i8.i.i284, %xor.i6.i282
  %add101 = or i32 %i.2344, 1
  %arrayidx102 = getelementptr %struct.crypto_aes_ctx, ptr %ctx, i32 0, i32 1, i32 %add101
  %68 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %xor4.i.i285, ptr %arrayidx102, align 4
  %add104 = add i32 %j.0345, 2
  %arrayidx105 = getelementptr [60 x i32], ptr %ctx, i32 0, i32 %add104
  %69 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx105, align 4
  %and.i.i286 = shl i32 %70, 2
  %shl.i.i287 = and i32 %and.i.i286, -50529028
  %and1.i.i288 = lshr i32 %70, 7
  %shr.i.i289 = and i32 %and1.i.i288, 16843009
  %mul.i.i290 = mul nuw nsw i32 %shr.i.i289, 54
  %xor.i.i291 = xor i32 %mul.i.i290, %shl.i.i287
  %and2.i.i292 = lshr i32 %70, 6
  %shr3.i.i293 = and i32 %and2.i.i292, 16843009
  %mul4.i.i294 = mul nuw nsw i32 %shr3.i.i293, 27
  %xor5.i.i295 = xor i32 %xor.i.i291, %mul4.i.i294
  %xor.i296 = xor i32 %xor5.i.i295, %70
  %or.i.i297 = tail call i32 @llvm.fshl.i32(i32 %xor5.i.i295, i32 %xor5.i.i295, i32 16) #2
  %xor2.i298 = xor i32 %xor.i296, %or.i.i297
  %and.i.i.i299 = shl i32 %xor2.i298, 1
  %shl.i.i.i300 = and i32 %and.i.i.i299, -16843010
  %and1.i.i.i301 = lshr i32 %xor2.i298, 7
  %shr.i.i.i302 = and i32 %and1.i.i.i301, 16843009
  %mul.i.i.i303 = mul nuw nsw i32 %shr.i.i.i302, 27
  %or.i.i.i304 = tail call i32 @llvm.fshl.i32(i32 %xor2.i298, i32 %xor2.i298, i32 16) #2
  %xor.i.i.i305 = xor i32 %shl.i.i.i300, %or.i.i.i304
  %xor.i6.i306 = xor i32 %xor.i.i.i305, %mul.i.i.i303
  %xor2.i.i307 = xor i32 %xor.i6.i306, %xor2.i298
  %or.i8.i.i308 = tail call i32 @llvm.fshl.i32(i32 %xor2.i.i307, i32 %xor2.i.i307, i32 24) #2
  %xor4.i.i309 = xor i32 %or.i8.i.i308, %xor.i6.i306
  %add108 = or i32 %i.2344, 2
  %arrayidx109 = getelementptr %struct.crypto_aes_ctx, ptr %ctx, i32 0, i32 1, i32 %add108
  %71 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %xor4.i.i309, ptr %arrayidx109, align 4
  %add111 = add i32 %j.0345, 3
  %arrayidx112 = getelementptr [60 x i32], ptr %ctx, i32 0, i32 %add111
  %72 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx112, align 4
  %and.i.i310 = shl i32 %73, 2
  %shl.i.i311 = and i32 %and.i.i310, -50529028
  %and1.i.i312 = lshr i32 %73, 7
  %shr.i.i313 = and i32 %and1.i.i312, 16843009
  %mul.i.i314 = mul nuw nsw i32 %shr.i.i313, 54
  %xor.i.i315 = xor i32 %mul.i.i314, %shl.i.i311
  %and2.i.i316 = lshr i32 %73, 6
  %shr3.i.i317 = and i32 %and2.i.i316, 16843009
  %mul4.i.i318 = mul nuw nsw i32 %shr3.i.i317, 27
  %xor5.i.i319 = xor i32 %xor.i.i315, %mul4.i.i318
  %xor.i320 = xor i32 %xor5.i.i319, %73
  %or.i.i321 = tail call i32 @llvm.fshl.i32(i32 %xor5.i.i319, i32 %xor5.i.i319, i32 16) #2
  %xor2.i322 = xor i32 %xor.i320, %or.i.i321
  %and.i.i.i323 = shl i32 %xor2.i322, 1
  %shl.i.i.i324 = and i32 %and.i.i.i323, -16843010
  %and1.i.i.i325 = lshr i32 %xor2.i322, 7
  %shr.i.i.i326 = and i32 %and1.i.i.i325, 16843009
  %mul.i.i.i327 = mul nuw nsw i32 %shr.i.i.i326, 27
  %or.i.i.i328 = tail call i32 @llvm.fshl.i32(i32 %xor2.i322, i32 %xor2.i322, i32 16) #2
  %xor.i.i.i329 = xor i32 %shl.i.i.i324, %or.i.i.i328
  %xor.i6.i330 = xor i32 %xor.i.i.i329, %mul.i.i.i327
  %xor2.i.i331 = xor i32 %xor.i6.i330, %xor2.i322
  %or.i8.i.i332 = tail call i32 @llvm.fshl.i32(i32 %xor2.i.i331, i32 %xor2.i.i331, i32 24) #2
  %xor4.i.i333 = xor i32 %or.i8.i.i332, %xor.i6.i330
  %add115 = or i32 %i.2344, 3
  %arrayidx116 = getelementptr %struct.crypto_aes_ctx, ptr %ctx, i32 0, i32 1, i32 %add115
  %74 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %xor4.i.i333, ptr %arrayidx116, align 4
  %add118 = add i32 %i.2344, 4
  %sub119 = add i32 %j.0345, -4
  %cmp89.not = icmp eq i32 %sub119, 0
  br i1 %cmp89.not, label %for.body90.for.end120_crit_edge, label %for.body90.for.body90_crit_edge

for.body90.for.body90_crit_edge:                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body90

for.body90.for.end120_crit_edge:                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end120

for.end120:                                       ; preds = %for.body90.for.end120_crit_edge, %for.end68.for.end120_crit_edge
  %i.2.lcssa = phi i32 [ 4, %for.end68.for.end120_crit_edge ], [ %add118, %for.body90.for.end120_crit_edge ]
  %75 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ctx, align 4
  %arrayidx124 = getelementptr %struct.crypto_aes_ctx, ptr %ctx, i32 0, i32 1, i32 %i.2.lcssa
  %77 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %arrayidx124, align 4
  %arrayidx126 = getelementptr [60 x i32], ptr %ctx, i32 0, i32 1
  %78 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx126, align 4
  %add128 = or i32 %i.2.lcssa, 1
  %arrayidx129 = getelementptr %struct.crypto_aes_ctx, ptr %ctx, i32 0, i32 1, i32 %add128
  %80 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx129, align 4
  %arrayidx131 = getelementptr [60 x i32], ptr %ctx, i32 0, i32 2
  %81 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx131, align 4
  %add133 = or i32 %i.2.lcssa, 2
  %arrayidx134 = getelementptr %struct.crypto_aes_ctx, ptr %ctx, i32 0, i32 1, i32 %add133
  %83 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %arrayidx134, align 4
  %arrayidx136 = getelementptr [60 x i32], ptr %ctx, i32 0, i32 3
  %84 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx136, align 4
  %add138 = or i32 %i.2.lcssa, 3
  %arrayidx139 = getelementptr %struct.crypto_aes_ctx, ptr %ctx, i32 0, i32 1, i32 %add138
  %86 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %arrayidx139, align 4
  br label %cleanup140

cleanup140:                                       ; preds = %for.end120, %entry.cleanup140_crit_edge
  %retval.0 = phi i32 [ 0, %for.end120 ], [ -22, %entry.cleanup140_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aes_encrypt(ptr nocapture noundef readonly %ctx, ptr nocapture noundef writeonly %out, ptr nocapture noundef readonly %in) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i32, ptr %ctx, i32 4
  %key_length = getelementptr inbounds %struct.crypto_aes_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %key_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_length, align 4
  %div150 = lshr i32 %1, 2
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctx, align 4
  %4 = ptrtoint ptr %in to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %in, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #2
  %xor = xor i32 %6, %3
  %arrayidx4 = getelementptr [60 x i32], ptr %ctx, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4, align 4
  %add.ptr5 = getelementptr i8, ptr %in, i32 4
  %9 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr5, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #2
  %xor7 = xor i32 %11, %8
  %arrayidx10 = getelementptr [60 x i32], ptr %ctx, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10, align 4
  %add.ptr11 = getelementptr i8, ptr %in, i32 8
  %14 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %add.ptr11, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #2
  %xor13 = xor i32 %16, %13
  %arrayidx16 = getelementptr [60 x i32], ptr %ctx, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx16, align 4
  %add.ptr17 = getelementptr i8, ptr %in, i32 12
  %19 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %add.ptr17, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #2
  %xor19 = xor i32 %21, %18
  %22 = load volatile i8, ptr @aes_sbox, align 128
  %23 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i32 0, i32 64), align 64
  %xor22151 = xor i8 %23, %22
  %24 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i32 0, i32 134), align 2
  %xor24152 = xor i8 %xor22151, %24
  %25 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i32 0, i32 195), align 1
  %xor26153 = xor i8 %xor24152, %25
  %xor26 = zext i8 %xor26153 to i32
  %xor28 = xor i32 %xor, %xor26
  %26 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i32 0, i32 16), align 16
  %27 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i32 0, i32 82), align 2
  %xor31154 = xor i8 %27, %26
  %28 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i32 0, i32 158), align 2
  %xor33155 = xor i8 %xor31154, %28
  %29 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i32 0, i32 221), align 1
  %xor35156 = xor i8 %xor33155, %29
  %xor35 = zext i8 %xor35156 to i32
  %xor37 = xor i32 %xor7, %xor35
  %30 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i32 0, i32 32), align 32
  %31 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i32 0, i32 96), align 32
  %xor40157 = xor i8 %31, %30
  %32 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i32 0, i32 160), align 32
  %xor42158 = xor i8 %xor40157, %32
  %33 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i32 0, i32 234), align 2
  %xor44159 = xor i8 %xor42158, %33
  %xor44 = zext i8 %xor44159 to i32
  %xor46 = xor i32 %xor13, %xor44
  %34 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i32 0, i32 48), align 16
  %35 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i32 0, i32 112), align 16
  %xor49160 = xor i8 %35, %34
  %36 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i32 0, i32 186), align 2
  %xor51161 = xor i8 %xor49160, %36
  %37 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i32 0, i32 241), align 1
  %xor53162 = xor i8 %xor51161, %37
  %xor53 = zext i8 %xor53162 to i32
  %xor55 = xor i32 %xor19, %xor53
  %sub = add nuw nsw i32 %div150, 4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %st0.sroa.29.0 = phi i32 [ %xor55, %entry ], [ %xor103, %if.end ]
  %st0.sroa.20.0 = phi i32 [ %xor46, %entry ], [ %xor97, %if.end ]
  %st0.sroa.11.0 = phi i32 [ %xor37, %entry ], [ %xor91, %if.end ]
  %st0.sroa.0.0 = phi i32 [ %xor28, %entry ], [ %xor85, %if.end ]
  %rkp.0 = phi ptr [ %add.ptr, %entry ], [ %add.ptr106, %if.end ]
  %round.0 = phi i32 [ 0, %entry ], [ %add105, %if.end ]
  %and.i = and i32 %st0.sroa.0.0, 255
  %arrayidx1.i = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and.i
  %38 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load volatile i8, ptr %arrayidx1.i, align 1
  %conv.i = zext i8 %39 to i32
  %shr.i = lshr i32 %st0.sroa.11.0, 8
  %and3.i = and i32 %shr.i, 255
  %arrayidx4.i = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and3.i
  %40 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load volatile i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %41 to i32
  %shl.i = shl nuw nsw i32 %conv5.i, 8
  %xor30.i = or i32 %shl.i, %conv.i
  %shr9.i = lshr i32 %st0.sroa.20.0, 16
  %and10.i = and i32 %shr9.i, 255
  %arrayidx11.i = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and10.i
  %42 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load volatile i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %43 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 16
  %xor1431.i = or i32 %xor30.i, %shl13.i
  %shr18.i = lshr i32 %st0.sroa.29.0, 24
  %arrayidx20.i = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %shr18.i
  %44 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load volatile i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %45 to i32
  %shl22.i = shl nuw i32 %conv21.i, 24
  %xor2332.i = or i32 %xor1431.i, %shl22.i
  %and.i.i = shl i32 %xor2332.i, 1
  %shl.i.i = and i32 %and.i.i, -16843010
  %and1.i.i = lshr i32 %xor2332.i, 7
  %shr.i.i = and i32 %and1.i.i, 16843009
  %mul.i.i = mul nuw nsw i32 %shr.i.i, 27
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %xor30.i, i32 %xor2332.i, i32 16) #2
  %xor.i.i = xor i32 %shl.i.i, %or.i.i
  %xor.i = xor i32 %xor.i.i, %mul.i.i
  %xor2.i = xor i32 %xor.i, %xor2332.i
  %or.i8.i = tail call i32 @llvm.fshl.i32(i32 %xor2.i, i32 %xor2.i, i32 24) #2
  %46 = ptrtoint ptr %rkp.0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rkp.0, align 4
  %xor4.i = xor i32 %xor.i, %47
  %xor60 = xor i32 %xor4.i, %or.i8.i
  %and.i163 = and i32 %st0.sroa.11.0, 255
  %arrayidx1.i164 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and.i163
  %48 = ptrtoint ptr %arrayidx1.i164 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load volatile i8, ptr %arrayidx1.i164, align 1
  %conv.i165 = zext i8 %49 to i32
  %shr.i167 = lshr i32 %st0.sroa.20.0, 8
  %and3.i168 = and i32 %shr.i167, 255
  %arrayidx4.i169 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and3.i168
  %50 = ptrtoint ptr %arrayidx4.i169 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load volatile i8, ptr %arrayidx4.i169, align 1
  %conv5.i170 = zext i8 %51 to i32
  %shl.i171 = shl nuw nsw i32 %conv5.i170, 8
  %xor30.i172 = or i32 %shl.i171, %conv.i165
  %shr9.i174 = lshr i32 %st0.sroa.29.0, 16
  %and10.i175 = and i32 %shr9.i174, 255
  %arrayidx11.i176 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and10.i175
  %52 = ptrtoint ptr %arrayidx11.i176 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load volatile i8, ptr %arrayidx11.i176, align 1
  %conv12.i177 = zext i8 %53 to i32
  %shl13.i178 = shl nuw nsw i32 %conv12.i177, 16
  %xor1431.i179 = or i32 %xor30.i172, %shl13.i178
  %shr18.i180 = lshr i32 %st0.sroa.0.0, 24
  %arrayidx20.i181 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %shr18.i180
  %54 = ptrtoint ptr %arrayidx20.i181 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load volatile i8, ptr %arrayidx20.i181, align 1
  %conv21.i182 = zext i8 %55 to i32
  %shl22.i183 = shl nuw i32 %conv21.i182, 24
  %xor2332.i184 = or i32 %xor1431.i179, %shl22.i183
  %and.i.i415 = shl i32 %xor2332.i184, 1
  %shl.i.i416 = and i32 %and.i.i415, -16843010
  %and1.i.i417 = lshr i32 %xor2332.i184, 7
  %shr.i.i418 = and i32 %and1.i.i417, 16843009
  %mul.i.i419 = mul nuw nsw i32 %shr.i.i418, 27
  %or.i.i420 = tail call i32 @llvm.fshl.i32(i32 %xor30.i172, i32 %xor2332.i184, i32 16) #2
  %xor.i.i421 = xor i32 %shl.i.i416, %or.i.i420
  %xor.i422 = xor i32 %xor.i.i421, %mul.i.i419
  %xor2.i423 = xor i32 %xor.i422, %xor2332.i184
  %or.i8.i424 = tail call i32 @llvm.fshl.i32(i32 %xor2.i423, i32 %xor2.i423, i32 24) #2
  %arrayidx65 = getelementptr i32, ptr %rkp.0, i32 1
  %56 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx65, align 4
  %xor4.i425 = xor i32 %xor.i422, %57
  %xor66 = xor i32 %xor4.i425, %or.i8.i424
  %and.i186 = and i32 %st0.sroa.20.0, 255
  %arrayidx1.i187 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and.i186
  %58 = ptrtoint ptr %arrayidx1.i187 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load volatile i8, ptr %arrayidx1.i187, align 1
  %conv.i188 = zext i8 %59 to i32
  %shr.i190 = lshr i32 %st0.sroa.29.0, 8
  %and3.i191 = and i32 %shr.i190, 255
  %arrayidx4.i192 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and3.i191
  %60 = ptrtoint ptr %arrayidx4.i192 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load volatile i8, ptr %arrayidx4.i192, align 1
  %conv5.i193 = zext i8 %61 to i32
  %shl.i194 = shl nuw nsw i32 %conv5.i193, 8
  %xor30.i195 = or i32 %shl.i194, %conv.i188
  %shr9.i196 = lshr i32 %st0.sroa.0.0, 16
  %and10.i197 = and i32 %shr9.i196, 255
  %arrayidx11.i198 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and10.i197
  %62 = ptrtoint ptr %arrayidx11.i198 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load volatile i8, ptr %arrayidx11.i198, align 1
  %conv12.i199 = zext i8 %63 to i32
  %shl13.i200 = shl nuw nsw i32 %conv12.i199, 16
  %xor1431.i201 = or i32 %xor30.i195, %shl13.i200
  %shr18.i203 = lshr i32 %st0.sroa.11.0, 24
  %arrayidx20.i204 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %shr18.i203
  %64 = ptrtoint ptr %arrayidx20.i204 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load volatile i8, ptr %arrayidx20.i204, align 1
  %conv21.i205 = zext i8 %65 to i32
  %shl22.i206 = shl nuw i32 %conv21.i205, 24
  %xor2332.i207 = or i32 %xor1431.i201, %shl22.i206
  %and.i.i426 = shl i32 %xor2332.i207, 1
  %shl.i.i427 = and i32 %and.i.i426, -16843010
  %and1.i.i428 = lshr i32 %xor2332.i207, 7
  %shr.i.i429 = and i32 %and1.i.i428, 16843009
  %mul.i.i430 = mul nuw nsw i32 %shr.i.i429, 27
  %or.i.i431 = tail call i32 @llvm.fshl.i32(i32 %xor30.i195, i32 %xor2332.i207, i32 16) #2
  %xor.i.i432 = xor i32 %shl.i.i427, %or.i.i431
  %xor.i433 = xor i32 %xor.i.i432, %mul.i.i430
  %xor2.i434 = xor i32 %xor.i433, %xor2332.i207
  %or.i8.i435 = tail call i32 @llvm.fshl.i32(i32 %xor2.i434, i32 %xor2.i434, i32 24) #2
  %arrayidx71 = getelementptr i32, ptr %rkp.0, i32 2
  %66 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx71, align 4
  %xor4.i436 = xor i32 %xor.i433, %67
  %xor72 = xor i32 %xor4.i436, %or.i8.i435
  %and.i209 = and i32 %st0.sroa.29.0, 255
  %arrayidx1.i210 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and.i209
  %68 = ptrtoint ptr %arrayidx1.i210 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load volatile i8, ptr %arrayidx1.i210, align 1
  %conv.i211 = zext i8 %69 to i32
  %shr.i212 = lshr i32 %st0.sroa.0.0, 8
  %and3.i213 = and i32 %shr.i212, 255
  %arrayidx4.i214 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and3.i213
  %70 = ptrtoint ptr %arrayidx4.i214 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load volatile i8, ptr %arrayidx4.i214, align 1
  %conv5.i215 = zext i8 %71 to i32
  %shl.i216 = shl nuw nsw i32 %conv5.i215, 8
  %xor30.i217 = or i32 %shl.i216, %conv.i211
  %shr9.i219 = lshr i32 %st0.sroa.11.0, 16
  %and10.i220 = and i32 %shr9.i219, 255
  %arrayidx11.i221 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and10.i220
  %72 = ptrtoint ptr %arrayidx11.i221 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load volatile i8, ptr %arrayidx11.i221, align 1
  %conv12.i222 = zext i8 %73 to i32
  %shl13.i223 = shl nuw nsw i32 %conv12.i222, 16
  %xor1431.i224 = or i32 %xor30.i217, %shl13.i223
  %shr18.i226 = lshr i32 %st0.sroa.20.0, 24
  %arrayidx20.i227 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %shr18.i226
  %74 = ptrtoint ptr %arrayidx20.i227 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load volatile i8, ptr %arrayidx20.i227, align 1
  %conv21.i228 = zext i8 %75 to i32
  %shl22.i229 = shl nuw i32 %conv21.i228, 24
  %xor2332.i230 = or i32 %xor1431.i224, %shl22.i229
  %and.i.i437 = shl i32 %xor2332.i230, 1
  %shl.i.i438 = and i32 %and.i.i437, -16843010
  %and1.i.i439 = lshr i32 %xor2332.i230, 7
  %shr.i.i440 = and i32 %and1.i.i439, 16843009
  %mul.i.i441 = mul nuw nsw i32 %shr.i.i440, 27
  %or.i.i442 = tail call i32 @llvm.fshl.i32(i32 %xor30.i217, i32 %xor2332.i230, i32 16) #2
  %xor.i.i443 = xor i32 %shl.i.i438, %or.i.i442
  %xor.i444 = xor i32 %xor.i.i443, %mul.i.i441
  %xor2.i445 = xor i32 %xor.i444, %xor2332.i230
  %or.i8.i446 = tail call i32 @llvm.fshl.i32(i32 %xor2.i445, i32 %xor2.i445, i32 24) #2
  %arrayidx77 = getelementptr i32, ptr %rkp.0, i32 3
  %76 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx77, align 4
  %xor4.i447 = xor i32 %xor.i444, %77
  %xor78 = xor i32 %xor4.i447, %or.i8.i446
  %cmp = icmp eq i32 %round.0, %sub
  %and.i323 = and i32 %xor60, 255
  %arrayidx1.i324 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and.i323
  %78 = ptrtoint ptr %arrayidx1.i324 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load volatile i8, ptr %arrayidx1.i324, align 1
  %conv.i325 = zext i8 %79 to i32
  %shr.i327 = lshr i32 %xor66, 8
  %and3.i328 = and i32 %shr.i327, 255
  %arrayidx4.i329 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and3.i328
  %80 = ptrtoint ptr %arrayidx4.i329 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load volatile i8, ptr %arrayidx4.i329, align 1
  %conv5.i330 = zext i8 %81 to i32
  %shl.i331 = shl nuw nsw i32 %conv5.i330, 8
  %xor30.i332 = or i32 %shl.i331, %conv.i325
  %shr9.i334 = lshr i32 %xor72, 16
  %and10.i335 = and i32 %shr9.i334, 255
  %arrayidx11.i336 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and10.i335
  %82 = ptrtoint ptr %arrayidx11.i336 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load volatile i8, ptr %arrayidx11.i336, align 1
  %conv12.i337 = zext i8 %83 to i32
  %shl13.i338 = shl nuw nsw i32 %conv12.i337, 16
  %xor1431.i339 = or i32 %xor30.i332, %shl13.i338
  %shr18.i341 = lshr i32 %xor78, 24
  %arrayidx20.i342 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %shr18.i341
  %84 = ptrtoint ptr %arrayidx20.i342 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load volatile i8, ptr %arrayidx20.i342, align 1
  %conv21.i343 = zext i8 %85 to i32
  %shl22.i344 = shl nuw i32 %conv21.i343, 24
  %xor2332.i345 = or i32 %xor1431.i339, %shl22.i344
  br i1 %cmp, label %for.end, label %if.end

if.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #4
  %and.i.i448 = shl i32 %xor2332.i345, 1
  %shl.i.i449 = and i32 %and.i.i448, -16843010
  %and1.i.i450 = lshr i32 %xor2332.i345, 7
  %shr.i.i451 = and i32 %and1.i.i450, 16843009
  %mul.i.i452 = mul nuw nsw i32 %shr.i.i451, 27
  %or.i.i453 = tail call i32 @llvm.fshl.i32(i32 %xor30.i332, i32 %xor2332.i345, i32 16) #2
  %xor.i.i454 = xor i32 %shl.i.i449, %or.i.i453
  %xor.i455 = xor i32 %xor.i.i454, %mul.i.i452
  %xor2.i456 = xor i32 %xor.i455, %xor2332.i345
  %or.i8.i457 = tail call i32 @llvm.fshl.i32(i32 %xor2.i456, i32 %xor2.i456, i32 24) #2
  %arrayidx84 = getelementptr i32, ptr %rkp.0, i32 4
  %86 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx84, align 4
  %xor4.i458 = xor i32 %xor.i455, %87
  %xor85 = xor i32 %xor4.i458, %or.i8.i457
  %and.i255 = and i32 %xor66, 255
  %arrayidx1.i256 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and.i255
  %88 = ptrtoint ptr %arrayidx1.i256 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load volatile i8, ptr %arrayidx1.i256, align 1
  %conv.i257 = zext i8 %89 to i32
  %shr.i259 = lshr i32 %xor72, 8
  %and3.i260 = and i32 %shr.i259, 255
  %arrayidx4.i261 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and3.i260
  %90 = ptrtoint ptr %arrayidx4.i261 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load volatile i8, ptr %arrayidx4.i261, align 1
  %conv5.i262 = zext i8 %91 to i32
  %shl.i263 = shl nuw nsw i32 %conv5.i262, 8
  %xor30.i264 = or i32 %shl.i263, %conv.i257
  %shr9.i266 = lshr i32 %xor78, 16
  %and10.i267 = and i32 %shr9.i266, 255
  %arrayidx11.i268 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and10.i267
  %92 = ptrtoint ptr %arrayidx11.i268 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load volatile i8, ptr %arrayidx11.i268, align 1
  %conv12.i269 = zext i8 %93 to i32
  %shl13.i270 = shl nuw nsw i32 %conv12.i269, 16
  %xor1431.i271 = or i32 %xor30.i264, %shl13.i270
  %shr18.i272 = lshr i32 %xor60, 24
  %arrayidx20.i273 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %shr18.i272
  %94 = ptrtoint ptr %arrayidx20.i273 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load volatile i8, ptr %arrayidx20.i273, align 1
  %conv21.i274 = zext i8 %95 to i32
  %shl22.i275 = shl nuw i32 %conv21.i274, 24
  %xor2332.i276 = or i32 %xor1431.i271, %shl22.i275
  %and.i.i459 = shl i32 %xor2332.i276, 1
  %shl.i.i460 = and i32 %and.i.i459, -16843010
  %and1.i.i461 = lshr i32 %xor2332.i276, 7
  %shr.i.i462 = and i32 %and1.i.i461, 16843009
  %mul.i.i463 = mul nuw nsw i32 %shr.i.i462, 27
  %or.i.i464 = tail call i32 @llvm.fshl.i32(i32 %xor30.i264, i32 %xor2332.i276, i32 16) #2
  %xor.i.i465 = xor i32 %shl.i.i460, %or.i.i464
  %xor.i466 = xor i32 %xor.i.i465, %mul.i.i463
  %xor2.i467 = xor i32 %xor.i466, %xor2332.i276
  %or.i8.i468 = tail call i32 @llvm.fshl.i32(i32 %xor2.i467, i32 %xor2.i467, i32 24) #2
  %arrayidx90 = getelementptr i32, ptr %rkp.0, i32 5
  %96 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx90, align 4
  %xor4.i469 = xor i32 %xor.i466, %97
  %xor91 = xor i32 %xor4.i469, %or.i8.i468
  %and.i278 = and i32 %xor72, 255
  %arrayidx1.i279 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and.i278
  %98 = ptrtoint ptr %arrayidx1.i279 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load volatile i8, ptr %arrayidx1.i279, align 1
  %conv.i280 = zext i8 %99 to i32
  %shr.i282 = lshr i32 %xor78, 8
  %and3.i283 = and i32 %shr.i282, 255
  %arrayidx4.i284 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and3.i283
  %100 = ptrtoint ptr %arrayidx4.i284 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load volatile i8, ptr %arrayidx4.i284, align 1
  %conv5.i285 = zext i8 %101 to i32
  %shl.i286 = shl nuw nsw i32 %conv5.i285, 8
  %xor30.i287 = or i32 %shl.i286, %conv.i280
  %shr9.i288 = lshr i32 %xor60, 16
  %and10.i289 = and i32 %shr9.i288, 255
  %arrayidx11.i290 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and10.i289
  %102 = ptrtoint ptr %arrayidx11.i290 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load volatile i8, ptr %arrayidx11.i290, align 1
  %conv12.i291 = zext i8 %103 to i32
  %shl13.i292 = shl nuw nsw i32 %conv12.i291, 16
  %xor1431.i293 = or i32 %xor30.i287, %shl13.i292
  %shr18.i295 = lshr i32 %xor66, 24
  %arrayidx20.i296 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %shr18.i295
  %104 = ptrtoint ptr %arrayidx20.i296 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load volatile i8, ptr %arrayidx20.i296, align 1
  %conv21.i297 = zext i8 %105 to i32
  %shl22.i298 = shl nuw i32 %conv21.i297, 24
  %xor2332.i299 = or i32 %xor1431.i293, %shl22.i298
  %and.i.i470 = shl i32 %xor2332.i299, 1
  %shl.i.i471 = and i32 %and.i.i470, -16843010
  %and1.i.i472 = lshr i32 %xor2332.i299, 7
  %shr.i.i473 = and i32 %and1.i.i472, 16843009
  %mul.i.i474 = mul nuw nsw i32 %shr.i.i473, 27
  %or.i.i475 = tail call i32 @llvm.fshl.i32(i32 %xor30.i287, i32 %xor2332.i299, i32 16) #2
  %xor.i.i476 = xor i32 %shl.i.i471, %or.i.i475
  %xor.i477 = xor i32 %xor.i.i476, %mul.i.i474
  %xor2.i478 = xor i32 %xor.i477, %xor2332.i299
  %or.i8.i479 = tail call i32 @llvm.fshl.i32(i32 %xor2.i478, i32 %xor2.i478, i32 24) #2
  %arrayidx96 = getelementptr i32, ptr %rkp.0, i32 6
  %106 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx96, align 4
  %xor4.i480 = xor i32 %xor.i477, %107
  %xor97 = xor i32 %xor4.i480, %or.i8.i479
  %and.i301 = and i32 %xor78, 255
  %arrayidx1.i302 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and.i301
  %108 = ptrtoint ptr %arrayidx1.i302 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load volatile i8, ptr %arrayidx1.i302, align 1
  %conv.i303 = zext i8 %109 to i32
  %shr.i304 = lshr i32 %xor60, 8
  %and3.i305 = and i32 %shr.i304, 255
  %arrayidx4.i306 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and3.i305
  %110 = ptrtoint ptr %arrayidx4.i306 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load volatile i8, ptr %arrayidx4.i306, align 1
  %conv5.i307 = zext i8 %111 to i32
  %shl.i308 = shl nuw nsw i32 %conv5.i307, 8
  %xor30.i309 = or i32 %shl.i308, %conv.i303
  %shr9.i311 = lshr i32 %xor66, 16
  %and10.i312 = and i32 %shr9.i311, 255
  %arrayidx11.i313 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and10.i312
  %112 = ptrtoint ptr %arrayidx11.i313 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load volatile i8, ptr %arrayidx11.i313, align 1
  %conv12.i314 = zext i8 %113 to i32
  %shl13.i315 = shl nuw nsw i32 %conv12.i314, 16
  %xor1431.i316 = or i32 %xor30.i309, %shl13.i315
  %shr18.i318 = lshr i32 %xor72, 24
  %arrayidx20.i319 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %shr18.i318
  %114 = ptrtoint ptr %arrayidx20.i319 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load volatile i8, ptr %arrayidx20.i319, align 1
  %conv21.i320 = zext i8 %115 to i32
  %shl22.i321 = shl nuw i32 %conv21.i320, 24
  %xor2332.i322 = or i32 %xor1431.i316, %shl22.i321
  %and.i.i481 = shl i32 %xor2332.i322, 1
  %shl.i.i482 = and i32 %and.i.i481, -16843010
  %and1.i.i483 = lshr i32 %xor2332.i322, 7
  %shr.i.i484 = and i32 %and1.i.i483, 16843009
  %mul.i.i485 = mul nuw nsw i32 %shr.i.i484, 27
  %or.i.i486 = tail call i32 @llvm.fshl.i32(i32 %xor30.i309, i32 %xor2332.i322, i32 16) #2
  %xor.i.i487 = xor i32 %shl.i.i482, %or.i.i486
  %xor.i488 = xor i32 %xor.i.i487, %mul.i.i485
  %xor2.i489 = xor i32 %xor.i488, %xor2332.i322
  %or.i8.i490 = tail call i32 @llvm.fshl.i32(i32 %xor2.i489, i32 %xor2.i489, i32 24) #2
  %arrayidx102 = getelementptr i32, ptr %rkp.0, i32 7
  %116 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx102, align 4
  %xor4.i491 = xor i32 %xor.i488, %117
  %xor103 = xor i32 %xor4.i491, %or.i8.i490
  %add105 = add i32 %round.0, 2
  %add.ptr106 = getelementptr i32, ptr %rkp.0, i32 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx109 = getelementptr i32, ptr %rkp.0, i32 4
  %118 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx109, align 4
  %xor110 = xor i32 %xor2332.i345, %119
  %120 = tail call i32 @llvm.bswap.i32(i32 %xor110) #2
  %121 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %121, i32 4)
  store i32 %120, ptr %out, align 1
  %and.i347 = and i32 %xor66, 255
  %arrayidx1.i348 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and.i347
  %122 = ptrtoint ptr %arrayidx1.i348 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load volatile i8, ptr %arrayidx1.i348, align 1
  %conv.i349 = zext i8 %123 to i32
  %shr.i351 = lshr i32 %xor72, 8
  %and3.i352 = and i32 %shr.i351, 255
  %arrayidx4.i353 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and3.i352
  %124 = ptrtoint ptr %arrayidx4.i353 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load volatile i8, ptr %arrayidx4.i353, align 1
  %conv5.i354 = zext i8 %125 to i32
  %shl.i355 = shl nuw nsw i32 %conv5.i354, 8
  %xor30.i356 = or i32 %shl.i355, %conv.i349
  %shr9.i358 = lshr i32 %xor78, 16
  %and10.i359 = and i32 %shr9.i358, 255
  %arrayidx11.i360 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and10.i359
  %126 = ptrtoint ptr %arrayidx11.i360 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load volatile i8, ptr %arrayidx11.i360, align 1
  %conv12.i361 = zext i8 %127 to i32
  %shl13.i362 = shl nuw nsw i32 %conv12.i361, 16
  %xor1431.i363 = or i32 %xor30.i356, %shl13.i362
  %shr18.i364 = lshr i32 %xor60, 24
  %arrayidx20.i365 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %shr18.i364
  %128 = ptrtoint ptr %arrayidx20.i365 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load volatile i8, ptr %arrayidx20.i365, align 1
  %conv21.i366 = zext i8 %129 to i32
  %shl22.i367 = shl nuw i32 %conv21.i366, 24
  %xor2332.i368 = or i32 %xor1431.i363, %shl22.i367
  %arrayidx113 = getelementptr i32, ptr %rkp.0, i32 5
  %130 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx113, align 4
  %xor114 = xor i32 %xor2332.i368, %131
  %add.ptr115 = getelementptr i8, ptr %out, i32 4
  %132 = tail call i32 @llvm.bswap.i32(i32 %xor114) #2
  %133 = ptrtoint ptr %add.ptr115 to i32
  call void @__asan_storeN_noabort(i32 %133, i32 4)
  store i32 %132, ptr %add.ptr115, align 1
  %and.i370 = and i32 %xor72, 255
  %arrayidx1.i371 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and.i370
  %134 = ptrtoint ptr %arrayidx1.i371 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load volatile i8, ptr %arrayidx1.i371, align 1
  %conv.i372 = zext i8 %135 to i32
  %shr.i374 = lshr i32 %xor78, 8
  %and3.i375 = and i32 %shr.i374, 255
  %arrayidx4.i376 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and3.i375
  %136 = ptrtoint ptr %arrayidx4.i376 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load volatile i8, ptr %arrayidx4.i376, align 1
  %conv5.i377 = zext i8 %137 to i32
  %shl.i378 = shl nuw nsw i32 %conv5.i377, 8
  %xor30.i379 = or i32 %shl.i378, %conv.i372
  %shr9.i380 = lshr i32 %xor60, 16
  %and10.i381 = and i32 %shr9.i380, 255
  %arrayidx11.i382 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and10.i381
  %138 = ptrtoint ptr %arrayidx11.i382 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load volatile i8, ptr %arrayidx11.i382, align 1
  %conv12.i383 = zext i8 %139 to i32
  %shl13.i384 = shl nuw nsw i32 %conv12.i383, 16
  %xor1431.i385 = or i32 %xor30.i379, %shl13.i384
  %shr18.i387 = lshr i32 %xor66, 24
  %arrayidx20.i388 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %shr18.i387
  %140 = ptrtoint ptr %arrayidx20.i388 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load volatile i8, ptr %arrayidx20.i388, align 1
  %conv21.i389 = zext i8 %141 to i32
  %shl22.i390 = shl nuw i32 %conv21.i389, 24
  %xor2332.i391 = or i32 %xor1431.i385, %shl22.i390
  %arrayidx118 = getelementptr i32, ptr %rkp.0, i32 6
  %142 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx118, align 4
  %xor119 = xor i32 %xor2332.i391, %143
  %add.ptr120 = getelementptr i8, ptr %out, i32 8
  %144 = tail call i32 @llvm.bswap.i32(i32 %xor119) #2
  %145 = ptrtoint ptr %add.ptr120 to i32
  call void @__asan_storeN_noabort(i32 %145, i32 4)
  store i32 %144, ptr %add.ptr120, align 1
  %and.i393 = and i32 %xor78, 255
  %arrayidx1.i394 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and.i393
  %146 = ptrtoint ptr %arrayidx1.i394 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load volatile i8, ptr %arrayidx1.i394, align 1
  %conv.i395 = zext i8 %147 to i32
  %shr.i396 = lshr i32 %xor60, 8
  %and3.i397 = and i32 %shr.i396, 255
  %arrayidx4.i398 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and3.i397
  %148 = ptrtoint ptr %arrayidx4.i398 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load volatile i8, ptr %arrayidx4.i398, align 1
  %conv5.i399 = zext i8 %149 to i32
  %shl.i400 = shl nuw nsw i32 %conv5.i399, 8
  %xor30.i401 = or i32 %shl.i400, %conv.i395
  %shr9.i403 = lshr i32 %xor66, 16
  %and10.i404 = and i32 %shr9.i403, 255
  %arrayidx11.i405 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %and10.i404
  %150 = ptrtoint ptr %arrayidx11.i405 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load volatile i8, ptr %arrayidx11.i405, align 1
  %conv12.i406 = zext i8 %151 to i32
  %shl13.i407 = shl nuw nsw i32 %conv12.i406, 16
  %xor1431.i408 = or i32 %xor30.i401, %shl13.i407
  %shr18.i410 = lshr i32 %xor72, 24
  %arrayidx20.i411 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %shr18.i410
  %152 = ptrtoint ptr %arrayidx20.i411 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load volatile i8, ptr %arrayidx20.i411, align 1
  %conv21.i412 = zext i8 %153 to i32
  %shl22.i413 = shl nuw i32 %conv21.i412, 24
  %xor2332.i414 = or i32 %xor1431.i408, %shl22.i413
  %arrayidx123 = getelementptr i32, ptr %rkp.0, i32 7
  %154 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx123, align 4
  %xor124 = xor i32 %xor2332.i414, %155
  %add.ptr125 = getelementptr i8, ptr %out, i32 12
  %156 = tail call i32 @llvm.bswap.i32(i32 %xor124) #2
  %157 = ptrtoint ptr %add.ptr125 to i32
  call void @__asan_storeN_noabort(i32 %157, i32 4)
  store i32 %156, ptr %add.ptr125, align 1
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aes_decrypt(ptr nocapture noundef readonly %ctx, ptr nocapture noundef writeonly %out, ptr nocapture noundef readonly %in) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %key_dec = getelementptr inbounds %struct.crypto_aes_ctx, ptr %ctx, i32 0, i32 1
  %add.ptr = getelementptr %struct.crypto_aes_ctx, ptr %ctx, i32 0, i32 1, i32 4
  %key_length = getelementptr inbounds %struct.crypto_aes_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %key_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_length, align 4
  %div150 = lshr i32 %1, 2
  %2 = ptrtoint ptr %key_dec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_dec, align 4
  %4 = ptrtoint ptr %in to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %in, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #2
  %xor = xor i32 %6, %3
  %arrayidx4 = getelementptr %struct.crypto_aes_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4, align 4
  %add.ptr5 = getelementptr i8, ptr %in, i32 4
  %9 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr5, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #2
  %xor7 = xor i32 %11, %8
  %arrayidx10 = getelementptr %struct.crypto_aes_ctx, ptr %ctx, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10, align 4
  %add.ptr11 = getelementptr i8, ptr %in, i32 8
  %14 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %add.ptr11, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #2
  %xor13 = xor i32 %16, %13
  %arrayidx16 = getelementptr %struct.crypto_aes_ctx, ptr %ctx, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx16, align 4
  %add.ptr17 = getelementptr i8, ptr %in, i32 12
  %19 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %add.ptr17, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #2
  %xor19 = xor i32 %21, %18
  %22 = load volatile i8, ptr @aes_inv_sbox, align 128
  %23 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i32 0, i32 64), align 64
  %xor22151 = xor i8 %23, %22
  %24 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i32 0, i32 129), align 1
  %xor24152 = xor i8 %xor22151, %24
  %25 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i32 0, i32 200), align 8
  %xor26153 = xor i8 %xor24152, %25
  %xor26 = zext i8 %xor26153 to i32
  %xor28 = xor i32 %xor, %xor26
  %26 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i32 0, i32 16), align 16
  %27 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i32 0, i32 83), align 1
  %xor31154 = xor i8 %27, %26
  %28 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i32 0, i32 150), align 2
  %xor33155 = xor i8 %xor31154, %28
  %29 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i32 0, i32 212), align 4
  %xor35156 = xor i8 %xor33155, %29
  %xor35 = zext i8 %xor35156 to i32
  %xor37 = xor i32 %xor7, %xor35
  %30 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i32 0, i32 32), align 32
  %31 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i32 0, i32 96), align 32
  %xor40157 = xor i8 %31, %30
  %32 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i32 0, i32 160), align 32
  %xor42158 = xor i8 %xor40157, %32
  %33 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i32 0, i32 236), align 4
  %xor44159 = xor i8 %xor42158, %33
  %xor44 = zext i8 %xor44159 to i32
  %xor46 = xor i32 %xor13, %xor44
  %34 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i32 0, i32 48), align 16
  %35 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i32 0, i32 112), align 16
  %xor49160 = xor i8 %35, %34
  %36 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i32 0, i32 187), align 1
  %xor51161 = xor i8 %xor49160, %36
  %37 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i32 0, i32 247), align 1
  %xor53162 = xor i8 %xor51161, %37
  %xor53 = zext i8 %xor53162 to i32
  %xor55 = xor i32 %xor19, %xor53
  %sub = add nuw nsw i32 %div150, 4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %st0.sroa.29.0 = phi i32 [ %xor55, %entry ], [ %xor103, %if.end ]
  %st0.sroa.20.0 = phi i32 [ %xor46, %entry ], [ %xor97, %if.end ]
  %st0.sroa.11.0 = phi i32 [ %xor37, %entry ], [ %xor91, %if.end ]
  %st0.sroa.0.0 = phi i32 [ %xor28, %entry ], [ %xor85, %if.end ]
  %rkp.0 = phi ptr [ %add.ptr, %entry ], [ %add.ptr106, %if.end ]
  %round.0 = phi i32 [ 0, %entry ], [ %add105, %if.end ]
  %and.i = and i32 %st0.sroa.0.0, 255
  %arrayidx1.i = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and.i
  %38 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load volatile i8, ptr %arrayidx1.i, align 1
  %conv.i = zext i8 %39 to i32
  %shr.i = lshr i32 %st0.sroa.29.0, 8
  %and3.i = and i32 %shr.i, 255
  %arrayidx4.i = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and3.i
  %40 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load volatile i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %41 to i32
  %shl.i = shl nuw nsw i32 %conv5.i, 8
  %xor30.i = or i32 %shl.i, %conv.i
  %shr9.i = lshr i32 %st0.sroa.20.0, 16
  %and10.i = and i32 %shr9.i, 255
  %arrayidx11.i = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and10.i
  %42 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load volatile i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %43 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 16
  %xor1431.i = or i32 %xor30.i, %shl13.i
  %shr18.i = lshr i32 %st0.sroa.11.0, 24
  %arrayidx20.i = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %shr18.i
  %44 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load volatile i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %45 to i32
  %shl22.i = shl nuw i32 %conv21.i, 24
  %xor2332.i = or i32 %xor1431.i, %shl22.i
  %and.i.i = shl i32 %xor2332.i, 2
  %shl.i.i = and i32 %and.i.i, -50529028
  %and1.i.i = lshr i32 %xor2332.i, 7
  %shr.i.i = and i32 %and1.i.i, 16843009
  %mul.i.i = mul nuw nsw i32 %shr.i.i, 54
  %xor.i.i = xor i32 %mul.i.i, %shl.i.i
  %and2.i.i = lshr i32 %xor2332.i, 6
  %shr3.i.i = and i32 %and2.i.i, 16843009
  %mul4.i.i = mul nuw nsw i32 %shr3.i.i, 27
  %xor5.i.i = xor i32 %xor.i.i, %mul4.i.i
  %xor.i = xor i32 %xor5.i.i, %xor2332.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %xor5.i.i, i32 %xor5.i.i, i32 16) #2
  %xor2.i = xor i32 %xor.i, %or.i.i
  %and.i.i.i = shl i32 %xor2.i, 1
  %shl.i.i.i = and i32 %and.i.i.i, -16843010
  %and1.i.i.i = lshr i32 %xor2.i, 7
  %shr.i.i.i = and i32 %and1.i.i.i, 16843009
  %mul.i.i.i = mul nuw nsw i32 %shr.i.i.i, 27
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor2.i, i32 %xor2.i, i32 16) #2
  %xor.i.i.i = xor i32 %shl.i.i.i, %or.i.i.i
  %xor.i6.i = xor i32 %xor.i.i.i, %mul.i.i.i
  %xor2.i.i = xor i32 %xor.i6.i, %xor2.i
  %or.i8.i.i = tail call i32 @llvm.fshl.i32(i32 %xor2.i.i, i32 %xor2.i.i, i32 24) #2
  %46 = ptrtoint ptr %rkp.0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rkp.0, align 4
  %xor4.i.i = xor i32 %xor.i6.i, %47
  %xor60 = xor i32 %xor4.i.i, %or.i8.i.i
  %and.i163 = and i32 %st0.sroa.11.0, 255
  %arrayidx1.i164 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and.i163
  %48 = ptrtoint ptr %arrayidx1.i164 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load volatile i8, ptr %arrayidx1.i164, align 1
  %conv.i165 = zext i8 %49 to i32
  %shr.i166 = lshr i32 %st0.sroa.0.0, 8
  %and3.i167 = and i32 %shr.i166, 255
  %arrayidx4.i168 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and3.i167
  %50 = ptrtoint ptr %arrayidx4.i168 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load volatile i8, ptr %arrayidx4.i168, align 1
  %conv5.i169 = zext i8 %51 to i32
  %shl.i170 = shl nuw nsw i32 %conv5.i169, 8
  %xor30.i171 = or i32 %shl.i170, %conv.i165
  %shr9.i173 = lshr i32 %st0.sroa.29.0, 16
  %and10.i174 = and i32 %shr9.i173, 255
  %arrayidx11.i175 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and10.i174
  %52 = ptrtoint ptr %arrayidx11.i175 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load volatile i8, ptr %arrayidx11.i175, align 1
  %conv12.i176 = zext i8 %53 to i32
  %shl13.i177 = shl nuw nsw i32 %conv12.i176, 16
  %xor1431.i178 = or i32 %xor30.i171, %shl13.i177
  %shr18.i180 = lshr i32 %st0.sroa.20.0, 24
  %arrayidx20.i181 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %shr18.i180
  %54 = ptrtoint ptr %arrayidx20.i181 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load volatile i8, ptr %arrayidx20.i181, align 1
  %conv21.i182 = zext i8 %55 to i32
  %shl22.i183 = shl nuw i32 %conv21.i182, 24
  %xor2332.i184 = or i32 %xor1431.i178, %shl22.i183
  %and.i.i415 = shl i32 %xor2332.i184, 2
  %shl.i.i416 = and i32 %and.i.i415, -50529028
  %and1.i.i417 = lshr i32 %xor2332.i184, 7
  %shr.i.i418 = and i32 %and1.i.i417, 16843009
  %mul.i.i419 = mul nuw nsw i32 %shr.i.i418, 54
  %xor.i.i420 = xor i32 %mul.i.i419, %shl.i.i416
  %and2.i.i421 = lshr i32 %xor2332.i184, 6
  %shr3.i.i422 = and i32 %and2.i.i421, 16843009
  %mul4.i.i423 = mul nuw nsw i32 %shr3.i.i422, 27
  %xor5.i.i424 = xor i32 %xor.i.i420, %mul4.i.i423
  %xor.i425 = xor i32 %xor5.i.i424, %xor2332.i184
  %or.i.i426 = tail call i32 @llvm.fshl.i32(i32 %xor5.i.i424, i32 %xor5.i.i424, i32 16) #2
  %xor2.i427 = xor i32 %xor.i425, %or.i.i426
  %and.i.i.i428 = shl i32 %xor2.i427, 1
  %shl.i.i.i429 = and i32 %and.i.i.i428, -16843010
  %and1.i.i.i430 = lshr i32 %xor2.i427, 7
  %shr.i.i.i431 = and i32 %and1.i.i.i430, 16843009
  %mul.i.i.i432 = mul nuw nsw i32 %shr.i.i.i431, 27
  %or.i.i.i433 = tail call i32 @llvm.fshl.i32(i32 %xor2.i427, i32 %xor2.i427, i32 16) #2
  %xor.i.i.i434 = xor i32 %shl.i.i.i429, %or.i.i.i433
  %xor.i6.i435 = xor i32 %xor.i.i.i434, %mul.i.i.i432
  %xor2.i.i436 = xor i32 %xor.i6.i435, %xor2.i427
  %or.i8.i.i437 = tail call i32 @llvm.fshl.i32(i32 %xor2.i.i436, i32 %xor2.i.i436, i32 24) #2
  %arrayidx65 = getelementptr i32, ptr %rkp.0, i32 1
  %56 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx65, align 4
  %xor4.i.i438 = xor i32 %xor.i6.i435, %57
  %xor66 = xor i32 %xor4.i.i438, %or.i8.i.i437
  %and.i186 = and i32 %st0.sroa.20.0, 255
  %arrayidx1.i187 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and.i186
  %58 = ptrtoint ptr %arrayidx1.i187 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load volatile i8, ptr %arrayidx1.i187, align 1
  %conv.i188 = zext i8 %59 to i32
  %shr.i190 = lshr i32 %st0.sroa.11.0, 8
  %and3.i191 = and i32 %shr.i190, 255
  %arrayidx4.i192 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and3.i191
  %60 = ptrtoint ptr %arrayidx4.i192 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load volatile i8, ptr %arrayidx4.i192, align 1
  %conv5.i193 = zext i8 %61 to i32
  %shl.i194 = shl nuw nsw i32 %conv5.i193, 8
  %xor30.i195 = or i32 %shl.i194, %conv.i188
  %shr9.i196 = lshr i32 %st0.sroa.0.0, 16
  %and10.i197 = and i32 %shr9.i196, 255
  %arrayidx11.i198 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and10.i197
  %62 = ptrtoint ptr %arrayidx11.i198 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load volatile i8, ptr %arrayidx11.i198, align 1
  %conv12.i199 = zext i8 %63 to i32
  %shl13.i200 = shl nuw nsw i32 %conv12.i199, 16
  %xor1431.i201 = or i32 %xor30.i195, %shl13.i200
  %shr18.i203 = lshr i32 %st0.sroa.29.0, 24
  %arrayidx20.i204 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %shr18.i203
  %64 = ptrtoint ptr %arrayidx20.i204 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load volatile i8, ptr %arrayidx20.i204, align 1
  %conv21.i205 = zext i8 %65 to i32
  %shl22.i206 = shl nuw i32 %conv21.i205, 24
  %xor2332.i207 = or i32 %xor1431.i201, %shl22.i206
  %and.i.i439 = shl i32 %xor2332.i207, 2
  %shl.i.i440 = and i32 %and.i.i439, -50529028
  %and1.i.i441 = lshr i32 %xor2332.i207, 7
  %shr.i.i442 = and i32 %and1.i.i441, 16843009
  %mul.i.i443 = mul nuw nsw i32 %shr.i.i442, 54
  %xor.i.i444 = xor i32 %mul.i.i443, %shl.i.i440
  %and2.i.i445 = lshr i32 %xor2332.i207, 6
  %shr3.i.i446 = and i32 %and2.i.i445, 16843009
  %mul4.i.i447 = mul nuw nsw i32 %shr3.i.i446, 27
  %xor5.i.i448 = xor i32 %xor.i.i444, %mul4.i.i447
  %xor.i449 = xor i32 %xor5.i.i448, %xor2332.i207
  %or.i.i450 = tail call i32 @llvm.fshl.i32(i32 %xor5.i.i448, i32 %xor5.i.i448, i32 16) #2
  %xor2.i451 = xor i32 %xor.i449, %or.i.i450
  %and.i.i.i452 = shl i32 %xor2.i451, 1
  %shl.i.i.i453 = and i32 %and.i.i.i452, -16843010
  %and1.i.i.i454 = lshr i32 %xor2.i451, 7
  %shr.i.i.i455 = and i32 %and1.i.i.i454, 16843009
  %mul.i.i.i456 = mul nuw nsw i32 %shr.i.i.i455, 27
  %or.i.i.i457 = tail call i32 @llvm.fshl.i32(i32 %xor2.i451, i32 %xor2.i451, i32 16) #2
  %xor.i.i.i458 = xor i32 %shl.i.i.i453, %or.i.i.i457
  %xor.i6.i459 = xor i32 %xor.i.i.i458, %mul.i.i.i456
  %xor2.i.i460 = xor i32 %xor.i6.i459, %xor2.i451
  %or.i8.i.i461 = tail call i32 @llvm.fshl.i32(i32 %xor2.i.i460, i32 %xor2.i.i460, i32 24) #2
  %arrayidx71 = getelementptr i32, ptr %rkp.0, i32 2
  %66 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx71, align 4
  %xor4.i.i462 = xor i32 %xor.i6.i459, %67
  %xor72 = xor i32 %xor4.i.i462, %or.i8.i.i461
  %and.i209 = and i32 %st0.sroa.29.0, 255
  %arrayidx1.i210 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and.i209
  %68 = ptrtoint ptr %arrayidx1.i210 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load volatile i8, ptr %arrayidx1.i210, align 1
  %conv.i211 = zext i8 %69 to i32
  %shr.i213 = lshr i32 %st0.sroa.20.0, 8
  %and3.i214 = and i32 %shr.i213, 255
  %arrayidx4.i215 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and3.i214
  %70 = ptrtoint ptr %arrayidx4.i215 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load volatile i8, ptr %arrayidx4.i215, align 1
  %conv5.i216 = zext i8 %71 to i32
  %shl.i217 = shl nuw nsw i32 %conv5.i216, 8
  %xor30.i218 = or i32 %shl.i217, %conv.i211
  %shr9.i220 = lshr i32 %st0.sroa.11.0, 16
  %and10.i221 = and i32 %shr9.i220, 255
  %arrayidx11.i222 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and10.i221
  %72 = ptrtoint ptr %arrayidx11.i222 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load volatile i8, ptr %arrayidx11.i222, align 1
  %conv12.i223 = zext i8 %73 to i32
  %shl13.i224 = shl nuw nsw i32 %conv12.i223, 16
  %xor1431.i225 = or i32 %xor30.i218, %shl13.i224
  %shr18.i226 = lshr i32 %st0.sroa.0.0, 24
  %arrayidx20.i227 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %shr18.i226
  %74 = ptrtoint ptr %arrayidx20.i227 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load volatile i8, ptr %arrayidx20.i227, align 1
  %conv21.i228 = zext i8 %75 to i32
  %shl22.i229 = shl nuw i32 %conv21.i228, 24
  %xor2332.i230 = or i32 %xor1431.i225, %shl22.i229
  %and.i.i463 = shl i32 %xor2332.i230, 2
  %shl.i.i464 = and i32 %and.i.i463, -50529028
  %and1.i.i465 = lshr i32 %xor2332.i230, 7
  %shr.i.i466 = and i32 %and1.i.i465, 16843009
  %mul.i.i467 = mul nuw nsw i32 %shr.i.i466, 54
  %xor.i.i468 = xor i32 %mul.i.i467, %shl.i.i464
  %and2.i.i469 = lshr i32 %xor2332.i230, 6
  %shr3.i.i470 = and i32 %and2.i.i469, 16843009
  %mul4.i.i471 = mul nuw nsw i32 %shr3.i.i470, 27
  %xor5.i.i472 = xor i32 %xor.i.i468, %mul4.i.i471
  %xor.i473 = xor i32 %xor5.i.i472, %xor2332.i230
  %or.i.i474 = tail call i32 @llvm.fshl.i32(i32 %xor5.i.i472, i32 %xor5.i.i472, i32 16) #2
  %xor2.i475 = xor i32 %xor.i473, %or.i.i474
  %and.i.i.i476 = shl i32 %xor2.i475, 1
  %shl.i.i.i477 = and i32 %and.i.i.i476, -16843010
  %and1.i.i.i478 = lshr i32 %xor2.i475, 7
  %shr.i.i.i479 = and i32 %and1.i.i.i478, 16843009
  %mul.i.i.i480 = mul nuw nsw i32 %shr.i.i.i479, 27
  %or.i.i.i481 = tail call i32 @llvm.fshl.i32(i32 %xor2.i475, i32 %xor2.i475, i32 16) #2
  %xor.i.i.i482 = xor i32 %shl.i.i.i477, %or.i.i.i481
  %xor.i6.i483 = xor i32 %xor.i.i.i482, %mul.i.i.i480
  %xor2.i.i484 = xor i32 %xor.i6.i483, %xor2.i475
  %or.i8.i.i485 = tail call i32 @llvm.fshl.i32(i32 %xor2.i.i484, i32 %xor2.i.i484, i32 24) #2
  %arrayidx77 = getelementptr i32, ptr %rkp.0, i32 3
  %76 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx77, align 4
  %xor4.i.i486 = xor i32 %xor.i6.i483, %77
  %xor78 = xor i32 %xor4.i.i486, %or.i8.i.i485
  %cmp = icmp eq i32 %round.0, %sub
  %and.i323 = and i32 %xor60, 255
  %arrayidx1.i324 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and.i323
  %78 = ptrtoint ptr %arrayidx1.i324 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load volatile i8, ptr %arrayidx1.i324, align 1
  %conv.i325 = zext i8 %79 to i32
  %shr.i327 = lshr i32 %xor78, 8
  %and3.i328 = and i32 %shr.i327, 255
  %arrayidx4.i329 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and3.i328
  %80 = ptrtoint ptr %arrayidx4.i329 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load volatile i8, ptr %arrayidx4.i329, align 1
  %conv5.i330 = zext i8 %81 to i32
  %shl.i331 = shl nuw nsw i32 %conv5.i330, 8
  %xor30.i332 = or i32 %shl.i331, %conv.i325
  %shr9.i334 = lshr i32 %xor72, 16
  %and10.i335 = and i32 %shr9.i334, 255
  %arrayidx11.i336 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and10.i335
  %82 = ptrtoint ptr %arrayidx11.i336 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load volatile i8, ptr %arrayidx11.i336, align 1
  %conv12.i337 = zext i8 %83 to i32
  %shl13.i338 = shl nuw nsw i32 %conv12.i337, 16
  %xor1431.i339 = or i32 %xor30.i332, %shl13.i338
  %shr18.i341 = lshr i32 %xor66, 24
  %arrayidx20.i342 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %shr18.i341
  %84 = ptrtoint ptr %arrayidx20.i342 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load volatile i8, ptr %arrayidx20.i342, align 1
  %conv21.i343 = zext i8 %85 to i32
  %shl22.i344 = shl nuw i32 %conv21.i343, 24
  %xor2332.i345 = or i32 %xor1431.i339, %shl22.i344
  br i1 %cmp, label %for.end, label %if.end

if.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #4
  %and.i.i487 = shl i32 %xor2332.i345, 2
  %shl.i.i488 = and i32 %and.i.i487, -50529028
  %and1.i.i489 = lshr i32 %xor2332.i345, 7
  %shr.i.i490 = and i32 %and1.i.i489, 16843009
  %mul.i.i491 = mul nuw nsw i32 %shr.i.i490, 54
  %xor.i.i492 = xor i32 %mul.i.i491, %shl.i.i488
  %and2.i.i493 = lshr i32 %xor2332.i345, 6
  %shr3.i.i494 = and i32 %and2.i.i493, 16843009
  %mul4.i.i495 = mul nuw nsw i32 %shr3.i.i494, 27
  %xor5.i.i496 = xor i32 %xor.i.i492, %mul4.i.i495
  %xor.i497 = xor i32 %xor5.i.i496, %xor2332.i345
  %or.i.i498 = tail call i32 @llvm.fshl.i32(i32 %xor5.i.i496, i32 %xor5.i.i496, i32 16) #2
  %xor2.i499 = xor i32 %xor.i497, %or.i.i498
  %and.i.i.i500 = shl i32 %xor2.i499, 1
  %shl.i.i.i501 = and i32 %and.i.i.i500, -16843010
  %and1.i.i.i502 = lshr i32 %xor2.i499, 7
  %shr.i.i.i503 = and i32 %and1.i.i.i502, 16843009
  %mul.i.i.i504 = mul nuw nsw i32 %shr.i.i.i503, 27
  %or.i.i.i505 = tail call i32 @llvm.fshl.i32(i32 %xor2.i499, i32 %xor2.i499, i32 16) #2
  %xor.i.i.i506 = xor i32 %shl.i.i.i501, %or.i.i.i505
  %xor.i6.i507 = xor i32 %xor.i.i.i506, %mul.i.i.i504
  %xor2.i.i508 = xor i32 %xor.i6.i507, %xor2.i499
  %or.i8.i.i509 = tail call i32 @llvm.fshl.i32(i32 %xor2.i.i508, i32 %xor2.i.i508, i32 24) #2
  %arrayidx84 = getelementptr i32, ptr %rkp.0, i32 4
  %86 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx84, align 4
  %xor4.i.i510 = xor i32 %xor.i6.i507, %87
  %xor85 = xor i32 %xor4.i.i510, %or.i8.i.i509
  %and.i255 = and i32 %xor66, 255
  %arrayidx1.i256 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and.i255
  %88 = ptrtoint ptr %arrayidx1.i256 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load volatile i8, ptr %arrayidx1.i256, align 1
  %conv.i257 = zext i8 %89 to i32
  %shr.i258 = lshr i32 %xor60, 8
  %and3.i259 = and i32 %shr.i258, 255
  %arrayidx4.i260 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and3.i259
  %90 = ptrtoint ptr %arrayidx4.i260 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load volatile i8, ptr %arrayidx4.i260, align 1
  %conv5.i261 = zext i8 %91 to i32
  %shl.i262 = shl nuw nsw i32 %conv5.i261, 8
  %xor30.i263 = or i32 %shl.i262, %conv.i257
  %shr9.i265 = lshr i32 %xor78, 16
  %and10.i266 = and i32 %shr9.i265, 255
  %arrayidx11.i267 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and10.i266
  %92 = ptrtoint ptr %arrayidx11.i267 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load volatile i8, ptr %arrayidx11.i267, align 1
  %conv12.i268 = zext i8 %93 to i32
  %shl13.i269 = shl nuw nsw i32 %conv12.i268, 16
  %xor1431.i270 = or i32 %xor30.i263, %shl13.i269
  %shr18.i272 = lshr i32 %xor72, 24
  %arrayidx20.i273 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %shr18.i272
  %94 = ptrtoint ptr %arrayidx20.i273 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load volatile i8, ptr %arrayidx20.i273, align 1
  %conv21.i274 = zext i8 %95 to i32
  %shl22.i275 = shl nuw i32 %conv21.i274, 24
  %xor2332.i276 = or i32 %xor1431.i270, %shl22.i275
  %and.i.i511 = shl i32 %xor2332.i276, 2
  %shl.i.i512 = and i32 %and.i.i511, -50529028
  %and1.i.i513 = lshr i32 %xor2332.i276, 7
  %shr.i.i514 = and i32 %and1.i.i513, 16843009
  %mul.i.i515 = mul nuw nsw i32 %shr.i.i514, 54
  %xor.i.i516 = xor i32 %mul.i.i515, %shl.i.i512
  %and2.i.i517 = lshr i32 %xor2332.i276, 6
  %shr3.i.i518 = and i32 %and2.i.i517, 16843009
  %mul4.i.i519 = mul nuw nsw i32 %shr3.i.i518, 27
  %xor5.i.i520 = xor i32 %xor.i.i516, %mul4.i.i519
  %xor.i521 = xor i32 %xor5.i.i520, %xor2332.i276
  %or.i.i522 = tail call i32 @llvm.fshl.i32(i32 %xor5.i.i520, i32 %xor5.i.i520, i32 16) #2
  %xor2.i523 = xor i32 %xor.i521, %or.i.i522
  %and.i.i.i524 = shl i32 %xor2.i523, 1
  %shl.i.i.i525 = and i32 %and.i.i.i524, -16843010
  %and1.i.i.i526 = lshr i32 %xor2.i523, 7
  %shr.i.i.i527 = and i32 %and1.i.i.i526, 16843009
  %mul.i.i.i528 = mul nuw nsw i32 %shr.i.i.i527, 27
  %or.i.i.i529 = tail call i32 @llvm.fshl.i32(i32 %xor2.i523, i32 %xor2.i523, i32 16) #2
  %xor.i.i.i530 = xor i32 %shl.i.i.i525, %or.i.i.i529
  %xor.i6.i531 = xor i32 %xor.i.i.i530, %mul.i.i.i528
  %xor2.i.i532 = xor i32 %xor.i6.i531, %xor2.i523
  %or.i8.i.i533 = tail call i32 @llvm.fshl.i32(i32 %xor2.i.i532, i32 %xor2.i.i532, i32 24) #2
  %arrayidx90 = getelementptr i32, ptr %rkp.0, i32 5
  %96 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx90, align 4
  %xor4.i.i534 = xor i32 %xor.i6.i531, %97
  %xor91 = xor i32 %xor4.i.i534, %or.i8.i.i533
  %and.i278 = and i32 %xor72, 255
  %arrayidx1.i279 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and.i278
  %98 = ptrtoint ptr %arrayidx1.i279 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load volatile i8, ptr %arrayidx1.i279, align 1
  %conv.i280 = zext i8 %99 to i32
  %shr.i282 = lshr i32 %xor66, 8
  %and3.i283 = and i32 %shr.i282, 255
  %arrayidx4.i284 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and3.i283
  %100 = ptrtoint ptr %arrayidx4.i284 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load volatile i8, ptr %arrayidx4.i284, align 1
  %conv5.i285 = zext i8 %101 to i32
  %shl.i286 = shl nuw nsw i32 %conv5.i285, 8
  %xor30.i287 = or i32 %shl.i286, %conv.i280
  %shr9.i288 = lshr i32 %xor60, 16
  %and10.i289 = and i32 %shr9.i288, 255
  %arrayidx11.i290 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and10.i289
  %102 = ptrtoint ptr %arrayidx11.i290 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load volatile i8, ptr %arrayidx11.i290, align 1
  %conv12.i291 = zext i8 %103 to i32
  %shl13.i292 = shl nuw nsw i32 %conv12.i291, 16
  %xor1431.i293 = or i32 %xor30.i287, %shl13.i292
  %shr18.i295 = lshr i32 %xor78, 24
  %arrayidx20.i296 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %shr18.i295
  %104 = ptrtoint ptr %arrayidx20.i296 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load volatile i8, ptr %arrayidx20.i296, align 1
  %conv21.i297 = zext i8 %105 to i32
  %shl22.i298 = shl nuw i32 %conv21.i297, 24
  %xor2332.i299 = or i32 %xor1431.i293, %shl22.i298
  %and.i.i535 = shl i32 %xor2332.i299, 2
  %shl.i.i536 = and i32 %and.i.i535, -50529028
  %and1.i.i537 = lshr i32 %xor2332.i299, 7
  %shr.i.i538 = and i32 %and1.i.i537, 16843009
  %mul.i.i539 = mul nuw nsw i32 %shr.i.i538, 54
  %xor.i.i540 = xor i32 %mul.i.i539, %shl.i.i536
  %and2.i.i541 = lshr i32 %xor2332.i299, 6
  %shr3.i.i542 = and i32 %and2.i.i541, 16843009
  %mul4.i.i543 = mul nuw nsw i32 %shr3.i.i542, 27
  %xor5.i.i544 = xor i32 %xor.i.i540, %mul4.i.i543
  %xor.i545 = xor i32 %xor5.i.i544, %xor2332.i299
  %or.i.i546 = tail call i32 @llvm.fshl.i32(i32 %xor5.i.i544, i32 %xor5.i.i544, i32 16) #2
  %xor2.i547 = xor i32 %xor.i545, %or.i.i546
  %and.i.i.i548 = shl i32 %xor2.i547, 1
  %shl.i.i.i549 = and i32 %and.i.i.i548, -16843010
  %and1.i.i.i550 = lshr i32 %xor2.i547, 7
  %shr.i.i.i551 = and i32 %and1.i.i.i550, 16843009
  %mul.i.i.i552 = mul nuw nsw i32 %shr.i.i.i551, 27
  %or.i.i.i553 = tail call i32 @llvm.fshl.i32(i32 %xor2.i547, i32 %xor2.i547, i32 16) #2
  %xor.i.i.i554 = xor i32 %shl.i.i.i549, %or.i.i.i553
  %xor.i6.i555 = xor i32 %xor.i.i.i554, %mul.i.i.i552
  %xor2.i.i556 = xor i32 %xor.i6.i555, %xor2.i547
  %or.i8.i.i557 = tail call i32 @llvm.fshl.i32(i32 %xor2.i.i556, i32 %xor2.i.i556, i32 24) #2
  %arrayidx96 = getelementptr i32, ptr %rkp.0, i32 6
  %106 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx96, align 4
  %xor4.i.i558 = xor i32 %xor.i6.i555, %107
  %xor97 = xor i32 %xor4.i.i558, %or.i8.i.i557
  %and.i301 = and i32 %xor78, 255
  %arrayidx1.i302 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and.i301
  %108 = ptrtoint ptr %arrayidx1.i302 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load volatile i8, ptr %arrayidx1.i302, align 1
  %conv.i303 = zext i8 %109 to i32
  %shr.i305 = lshr i32 %xor72, 8
  %and3.i306 = and i32 %shr.i305, 255
  %arrayidx4.i307 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and3.i306
  %110 = ptrtoint ptr %arrayidx4.i307 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load volatile i8, ptr %arrayidx4.i307, align 1
  %conv5.i308 = zext i8 %111 to i32
  %shl.i309 = shl nuw nsw i32 %conv5.i308, 8
  %xor30.i310 = or i32 %shl.i309, %conv.i303
  %shr9.i312 = lshr i32 %xor66, 16
  %and10.i313 = and i32 %shr9.i312, 255
  %arrayidx11.i314 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and10.i313
  %112 = ptrtoint ptr %arrayidx11.i314 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load volatile i8, ptr %arrayidx11.i314, align 1
  %conv12.i315 = zext i8 %113 to i32
  %shl13.i316 = shl nuw nsw i32 %conv12.i315, 16
  %xor1431.i317 = or i32 %xor30.i310, %shl13.i316
  %shr18.i318 = lshr i32 %xor60, 24
  %arrayidx20.i319 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %shr18.i318
  %114 = ptrtoint ptr %arrayidx20.i319 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load volatile i8, ptr %arrayidx20.i319, align 1
  %conv21.i320 = zext i8 %115 to i32
  %shl22.i321 = shl nuw i32 %conv21.i320, 24
  %xor2332.i322 = or i32 %xor1431.i317, %shl22.i321
  %and.i.i559 = shl i32 %xor2332.i322, 2
  %shl.i.i560 = and i32 %and.i.i559, -50529028
  %and1.i.i561 = lshr i32 %xor2332.i322, 7
  %shr.i.i562 = and i32 %and1.i.i561, 16843009
  %mul.i.i563 = mul nuw nsw i32 %shr.i.i562, 54
  %xor.i.i564 = xor i32 %mul.i.i563, %shl.i.i560
  %and2.i.i565 = lshr i32 %xor2332.i322, 6
  %shr3.i.i566 = and i32 %and2.i.i565, 16843009
  %mul4.i.i567 = mul nuw nsw i32 %shr3.i.i566, 27
  %xor5.i.i568 = xor i32 %xor.i.i564, %mul4.i.i567
  %xor.i569 = xor i32 %xor5.i.i568, %xor2332.i322
  %or.i.i570 = tail call i32 @llvm.fshl.i32(i32 %xor5.i.i568, i32 %xor5.i.i568, i32 16) #2
  %xor2.i571 = xor i32 %xor.i569, %or.i.i570
  %and.i.i.i572 = shl i32 %xor2.i571, 1
  %shl.i.i.i573 = and i32 %and.i.i.i572, -16843010
  %and1.i.i.i574 = lshr i32 %xor2.i571, 7
  %shr.i.i.i575 = and i32 %and1.i.i.i574, 16843009
  %mul.i.i.i576 = mul nuw nsw i32 %shr.i.i.i575, 27
  %or.i.i.i577 = tail call i32 @llvm.fshl.i32(i32 %xor2.i571, i32 %xor2.i571, i32 16) #2
  %xor.i.i.i578 = xor i32 %shl.i.i.i573, %or.i.i.i577
  %xor.i6.i579 = xor i32 %xor.i.i.i578, %mul.i.i.i576
  %xor2.i.i580 = xor i32 %xor.i6.i579, %xor2.i571
  %or.i8.i.i581 = tail call i32 @llvm.fshl.i32(i32 %xor2.i.i580, i32 %xor2.i.i580, i32 24) #2
  %arrayidx102 = getelementptr i32, ptr %rkp.0, i32 7
  %116 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx102, align 4
  %xor4.i.i582 = xor i32 %xor.i6.i579, %117
  %xor103 = xor i32 %xor4.i.i582, %or.i8.i.i581
  %add105 = add i32 %round.0, 2
  %add.ptr106 = getelementptr i32, ptr %rkp.0, i32 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx109 = getelementptr i32, ptr %rkp.0, i32 4
  %118 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx109, align 4
  %xor110 = xor i32 %xor2332.i345, %119
  %120 = tail call i32 @llvm.bswap.i32(i32 %xor110) #2
  %121 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %121, i32 4)
  store i32 %120, ptr %out, align 1
  %and.i347 = and i32 %xor66, 255
  %arrayidx1.i348 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and.i347
  %122 = ptrtoint ptr %arrayidx1.i348 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load volatile i8, ptr %arrayidx1.i348, align 1
  %conv.i349 = zext i8 %123 to i32
  %shr.i350 = lshr i32 %xor60, 8
  %and3.i351 = and i32 %shr.i350, 255
  %arrayidx4.i352 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and3.i351
  %124 = ptrtoint ptr %arrayidx4.i352 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load volatile i8, ptr %arrayidx4.i352, align 1
  %conv5.i353 = zext i8 %125 to i32
  %shl.i354 = shl nuw nsw i32 %conv5.i353, 8
  %xor30.i355 = or i32 %shl.i354, %conv.i349
  %shr9.i357 = lshr i32 %xor78, 16
  %and10.i358 = and i32 %shr9.i357, 255
  %arrayidx11.i359 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and10.i358
  %126 = ptrtoint ptr %arrayidx11.i359 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load volatile i8, ptr %arrayidx11.i359, align 1
  %conv12.i360 = zext i8 %127 to i32
  %shl13.i361 = shl nuw nsw i32 %conv12.i360, 16
  %xor1431.i362 = or i32 %xor30.i355, %shl13.i361
  %shr18.i364 = lshr i32 %xor72, 24
  %arrayidx20.i365 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %shr18.i364
  %128 = ptrtoint ptr %arrayidx20.i365 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load volatile i8, ptr %arrayidx20.i365, align 1
  %conv21.i366 = zext i8 %129 to i32
  %shl22.i367 = shl nuw i32 %conv21.i366, 24
  %xor2332.i368 = or i32 %xor1431.i362, %shl22.i367
  %arrayidx113 = getelementptr i32, ptr %rkp.0, i32 5
  %130 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx113, align 4
  %xor114 = xor i32 %xor2332.i368, %131
  %add.ptr115 = getelementptr i8, ptr %out, i32 4
  %132 = tail call i32 @llvm.bswap.i32(i32 %xor114) #2
  %133 = ptrtoint ptr %add.ptr115 to i32
  call void @__asan_storeN_noabort(i32 %133, i32 4)
  store i32 %132, ptr %add.ptr115, align 1
  %and.i370 = and i32 %xor72, 255
  %arrayidx1.i371 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and.i370
  %134 = ptrtoint ptr %arrayidx1.i371 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load volatile i8, ptr %arrayidx1.i371, align 1
  %conv.i372 = zext i8 %135 to i32
  %shr.i374 = lshr i32 %xor66, 8
  %and3.i375 = and i32 %shr.i374, 255
  %arrayidx4.i376 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and3.i375
  %136 = ptrtoint ptr %arrayidx4.i376 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load volatile i8, ptr %arrayidx4.i376, align 1
  %conv5.i377 = zext i8 %137 to i32
  %shl.i378 = shl nuw nsw i32 %conv5.i377, 8
  %xor30.i379 = or i32 %shl.i378, %conv.i372
  %shr9.i380 = lshr i32 %xor60, 16
  %and10.i381 = and i32 %shr9.i380, 255
  %arrayidx11.i382 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and10.i381
  %138 = ptrtoint ptr %arrayidx11.i382 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load volatile i8, ptr %arrayidx11.i382, align 1
  %conv12.i383 = zext i8 %139 to i32
  %shl13.i384 = shl nuw nsw i32 %conv12.i383, 16
  %xor1431.i385 = or i32 %xor30.i379, %shl13.i384
  %shr18.i387 = lshr i32 %xor78, 24
  %arrayidx20.i388 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %shr18.i387
  %140 = ptrtoint ptr %arrayidx20.i388 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load volatile i8, ptr %arrayidx20.i388, align 1
  %conv21.i389 = zext i8 %141 to i32
  %shl22.i390 = shl nuw i32 %conv21.i389, 24
  %xor2332.i391 = or i32 %xor1431.i385, %shl22.i390
  %arrayidx118 = getelementptr i32, ptr %rkp.0, i32 6
  %142 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx118, align 4
  %xor119 = xor i32 %xor2332.i391, %143
  %add.ptr120 = getelementptr i8, ptr %out, i32 8
  %144 = tail call i32 @llvm.bswap.i32(i32 %xor119) #2
  %145 = ptrtoint ptr %add.ptr120 to i32
  call void @__asan_storeN_noabort(i32 %145, i32 4)
  store i32 %144, ptr %add.ptr120, align 1
  %and.i393 = and i32 %xor78, 255
  %arrayidx1.i394 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and.i393
  %146 = ptrtoint ptr %arrayidx1.i394 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load volatile i8, ptr %arrayidx1.i394, align 1
  %conv.i395 = zext i8 %147 to i32
  %shr.i397 = lshr i32 %xor72, 8
  %and3.i398 = and i32 %shr.i397, 255
  %arrayidx4.i399 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and3.i398
  %148 = ptrtoint ptr %arrayidx4.i399 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load volatile i8, ptr %arrayidx4.i399, align 1
  %conv5.i400 = zext i8 %149 to i32
  %shl.i401 = shl nuw nsw i32 %conv5.i400, 8
  %xor30.i402 = or i32 %shl.i401, %conv.i395
  %shr9.i404 = lshr i32 %xor66, 16
  %and10.i405 = and i32 %shr9.i404, 255
  %arrayidx11.i406 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %and10.i405
  %150 = ptrtoint ptr %arrayidx11.i406 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load volatile i8, ptr %arrayidx11.i406, align 1
  %conv12.i407 = zext i8 %151 to i32
  %shl13.i408 = shl nuw nsw i32 %conv12.i407, 16
  %xor1431.i409 = or i32 %xor30.i402, %shl13.i408
  %shr18.i410 = lshr i32 %xor60, 24
  %arrayidx20.i411 = getelementptr [256 x i8], ptr @aes_inv_sbox, i32 0, i32 %shr18.i410
  %152 = ptrtoint ptr %arrayidx20.i411 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load volatile i8, ptr %arrayidx20.i411, align 1
  %conv21.i412 = zext i8 %153 to i32
  %shl22.i413 = shl nuw i32 %conv21.i412, 24
  %xor2332.i414 = or i32 %xor1431.i409, %shl22.i413
  %arrayidx123 = getelementptr i32, ptr %rkp.0, i32 7
  %154 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx123, align 4
  %xor124 = xor i32 %xor2332.i414, %155
  %add.ptr125 = getelementptr i8, ptr %out, i32 12
  %156 = tail call i32 @llvm.bswap.i32(i32 %xor124) #2
  %157 = ptrtoint ptr %add.ptr125 to i32
  call void @__asan_storeN_noabort(i32 %157, i32 4)
  store i32 %156, ptr %add.ptr125, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__ksymtab_crypto_aes_sbox, !1, !"__ksymtab_crypto_aes_sbox", i1 false, i1 false}
!1 = !{!"../lib/crypto/aes.c", i32 88, i32 1}
!2 = !{ptr @__ksymtab_crypto_aes_inv_sbox, !3, !"__ksymtab_crypto_aes_inv_sbox", i1 false, i1 false}
!3 = !{!"../lib/crypto/aes.c", i32 89, i32 1}
!4 = !{ptr @__ksymtab_aes_expandkey, !5, !"__ksymtab_aes_expandkey", i1 false, i1 false}
!5 = !{!"../lib/crypto/aes.c", i32 250, i32 1}
!6 = !{ptr @__ksymtab_aes_encrypt, !7, !"__ksymtab_aes_encrypt", i1 false, i1 false}
!7 = !{!"../lib/crypto/aes.c", i32 301, i32 1}
!8 = !{ptr @__ksymtab_aes_decrypt, !9, !"__ksymtab_aes_decrypt", i1 false, i1 false}
!9 = !{!"../lib/crypto/aes.c", i32 352, i32 1}
!10 = !{ptr @__UNIQUE_ID_description173, !11, !"__UNIQUE_ID_description173", i1 false, i1 false}
!11 = !{!"../lib/crypto/aes.c", i32 354, i32 1}
!12 = !{ptr @__UNIQUE_ID_author174, !13, !"__UNIQUE_ID_author174", i1 false, i1 false}
!13 = !{!"../lib/crypto/aes.c", i32 355, i32 1}
!14 = !{ptr @__UNIQUE_ID_file175, !15, !"__UNIQUE_ID_file175", i1 false, i1 false}
!15 = !{!"../lib/crypto/aes.c", i32 356, i32 1}
!16 = !{ptr @__UNIQUE_ID_license176, !15, !"__UNIQUE_ID_license176", i1 false, i1 false}
!17 = !{ptr @aes_sbox, !18, !"aes_sbox", i1 false, i1 false}
!18 = !{!"../lib/crypto/aes.c", i32 15, i32 46}
!19 = !{ptr @aes_inv_sbox, !20, !"aes_inv_sbox", i1 false, i1 false}
!20 = !{!"../lib/crypto/aes.c", i32 50, i32 46}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
