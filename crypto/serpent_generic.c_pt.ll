; ModuleID = '/llk/IR_all_yes/crypto/serpent_generic.c_pt.bc'
source_filename = "../crypto/serpent_generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__serpent_setkey\22, \22a\22\09"
module asm "\09.weak\09__crc___serpent_setkey\09\09\09\09"
module asm "\09.long\09__crc___serpent_setkey\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___serpent_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22__serpent_setkey\22\09\09\09\09\09"
module asm "__kstrtabns___serpent_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+serpent_setkey\22, \22a\22\09"
module asm "\09.weak\09__crc_serpent_setkey\09\09\09\09"
module asm "\09.long\09__crc_serpent_setkey\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serpent_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22serpent_setkey\22\09\09\09\09\09"
module asm "__kstrtabns_serpent_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__serpent_encrypt\22, \22a\22\09"
module asm "\09.weak\09__crc___serpent_encrypt\09\09\09\09"
module asm "\09.long\09__crc___serpent_encrypt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___serpent_encrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22__serpent_encrypt\22\09\09\09\09\09"
module asm "__kstrtabns___serpent_encrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__serpent_decrypt\22, \22a\22\09"
module asm "\09.weak\09__crc___serpent_decrypt\09\09\09\09"
module asm "\09.long\09__crc___serpent_decrypt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___serpent_decrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22__serpent_decrypt\22\09\09\09\09\09"
module asm "__kstrtabns___serpent_decrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@__kstrtab___serpent_setkey = external dso_local constant [0 x i8], align 1
@__kstrtabns___serpent_setkey = external dso_local constant [0 x i8], align 1
@__ksymtab___serpent_setkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__serpent_setkey to i32), ptr @__kstrtab___serpent_setkey, ptr @__kstrtabns___serpent_setkey }, section "___ksymtab_gpl+__serpent_setkey", align 4
@__kstrtab_serpent_setkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_serpent_setkey = external dso_local constant [0 x i8], align 1
@__ksymtab_serpent_setkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serpent_setkey to i32), ptr @__kstrtab_serpent_setkey, ptr @__kstrtabns_serpent_setkey }, section "___ksymtab_gpl+serpent_setkey", align 4
@__kstrtab___serpent_encrypt = external dso_local constant [0 x i8], align 1
@__kstrtabns___serpent_encrypt = external dso_local constant [0 x i8], align 1
@__ksymtab___serpent_encrypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__serpent_encrypt to i32), ptr @__kstrtab___serpent_encrypt, ptr @__kstrtabns___serpent_encrypt }, section "___ksymtab_gpl+__serpent_encrypt", align 4
@__kstrtab___serpent_decrypt = external dso_local constant [0 x i8], align 1
@__kstrtabns___serpent_decrypt = external dso_local constant [0 x i8], align 1
@__ksymtab___serpent_decrypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__serpent_decrypt to i32), ptr @__kstrtab___serpent_decrypt, ptr @__kstrtabns___serpent_decrypt }, section "___ksymtab_gpl+__serpent_decrypt", align 4
@srp_alg = internal global %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, i32 16, i32 528, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"serpent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"serpent-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon { %struct.cipher_alg { i32 0, i32 32, ptr @serpent_setkey, ptr @serpent_encrypt, ptr @serpent_decrypt } }, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef }, align 128
@__initcall__kmod_serpent_generic__173_602_serpent_mod_init4 = internal global ptr @serpent_mod_init, section ".initcall4.init", align 4
@__exitcall_serpent_mod_fini = internal global ptr @serpent_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [44 x i8] c"serpent_generic.file=crypto/serpent_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [28 x i8] c"serpent_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [53 x i8] c"serpent_generic.description=Serpent Cipher Algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_author177 = internal constant [56 x i8] c"serpent_generic.author=Dag Arne Osvik <osvik@ii.uib.no>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace178 = internal constant [30 x i8] c"serpent_generic.alias=serpent\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto179 = internal constant [37 x i8] c"serpent_generic.alias=crypto-serpent\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace180 = internal constant [38 x i8] c"serpent_generic.alias=serpent-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto181 = internal constant [45 x i8] c"serpent_generic.alias=crypto-serpent-generic\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_alias_crypto179, ptr @__UNIQUE_ID_alias_crypto181, ptr @__UNIQUE_ID_alias_userspace178, ptr @__UNIQUE_ID_alias_userspace180, ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_serpent_mod_fini, ptr @__initcall__kmod_serpent_generic__173_602_serpent_mod_init4, ptr @__ksymtab___serpent_decrypt, ptr @__ksymtab___serpent_encrypt, ptr @__ksymtab___serpent_setkey, ptr @__ksymtab_serpent_setkey, ptr @serpent_mod_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__serpent_setkey(ptr noundef %ctx, ptr nocapture noundef readonly %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %keylen)
  %cmp2569.not = icmp eq i32 %keylen, 0
  br i1 %cmp2569.not, label %if.end.thread2578, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

if.end.thread2578:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %ctx, align 1
  br label %while.body.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.02570 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %key, i32 %i.02570
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr i8, ptr %ctx, i32 %i.02570
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %arrayidx1, align 1
  %inc = add nuw i32 %i.02570, 1
  %exitcond.not = icmp eq i32 %inc, %keylen
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %keylen)
  %cmp2 = icmp slt i32 %keylen, 32
  br i1 %cmp2, label %if.end, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end:                                           ; preds = %for.end
  %inc3 = add nsw i32 %keylen, 1
  %arrayidx4 = getelementptr i8, ptr %ctx, i32 %keylen
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %keylen)
  %cmp52571.not = icmp eq i32 %keylen, 31
  br i1 %cmp52571.not, label %if.end.while.end_crit_edge, label %if.end.while.body.preheader_crit_edge

if.end.while.body.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.preheader

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.preheader:                             ; preds = %if.end.while.body.preheader_crit_edge, %if.end.thread2578
  %inc32583 = phi i32 [ 1, %if.end.thread2578 ], [ %inc3, %if.end.while.body.preheader_crit_edge ]
  %uglygep = getelementptr i8, ptr %ctx, i32 %inc32583
  %5 = sub i32 32, %inc32583
  %6 = call ptr @memset(ptr %uglygep, i32 0, i32 %5)
  br label %while.end

while.end:                                        ; preds = %while.body.preheader, %if.end.while.end_crit_edge, %for.end.while.end_crit_edge
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctx, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %arrayidx10 = getelementptr i32, ptr %ctx, i32 1
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %arrayidx12 = getelementptr i32, ptr %ctx, i32 2
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx12, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %arrayidx14 = getelementptr i32, ptr %ctx, i32 3
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %arrayidx16 = getelementptr i32, ptr %ctx, i32 4
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx16, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %arrayidx18 = getelementptr i32, ptr %ctx, i32 5
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx18, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %arrayidx20 = getelementptr i32, ptr %ctx, i32 6
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx20, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %arrayidx22 = getelementptr i32, ptr %ctx, i32 7
  %28 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx22, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %xor = xor i32 %30, %24
  %31 = xor i32 %xor, %9
  %32 = xor i32 %31, %18
  %xor32 = xor i32 %32, -1640531527
  %or.i = tail call i32 @llvm.fshl.i32(i32 %xor32, i32 %xor32, i32 11) #6
  %33 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %ctx, align 4
  %xor34 = xor i32 %or.i, %27
  %34 = xor i32 %xor34, %12
  %35 = xor i32 %34, %21
  %xor38 = xor i32 %35, -1640531528
  %or.i2438 = tail call i32 @llvm.fshl.i32(i32 %xor38, i32 %xor38, i32 11) #6
  %36 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i2438, ptr %arrayidx10, align 4
  %37 = xor i32 %xor, %15
  %38 = xor i32 %37, %or.i2438
  %xor46 = xor i32 %38, -1640531525
  %or.i2439 = tail call i32 @llvm.fshl.i32(i32 %xor46, i32 %xor46, i32 11) #6
  %39 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or.i2439, ptr %arrayidx12, align 4
  %40 = xor i32 %xor34, %18
  %41 = xor i32 %40, %or.i2439
  %xor54 = xor i32 %41, -1640531526
  %or.i2440 = tail call i32 @llvm.fshl.i32(i32 %xor54, i32 %xor54, i32 11) #6
  %42 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or.i2440, ptr %arrayidx14, align 4
  %xor58 = xor i32 %or.i2438, %30
  %43 = xor i32 %xor58, %21
  %44 = xor i32 %43, %or.i2440
  %xor62 = xor i32 %44, -1640531523
  %or.i2441 = tail call i32 @llvm.fshl.i32(i32 %xor62, i32 %xor62, i32 11) #6
  %45 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i2441, ptr %arrayidx16, align 4
  %xor66 = xor i32 %or.i2439, %or.i
  %46 = xor i32 %xor66, %24
  %47 = xor i32 %46, %or.i2441
  %xor70 = xor i32 %47, -1640531524
  %or.i2442 = tail call i32 @llvm.fshl.i32(i32 %xor70, i32 %xor70, i32 11) #6
  %48 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or.i2442, ptr %arrayidx18, align 4
  %xor74 = xor i32 %or.i2440, %or.i2438
  %49 = xor i32 %xor74, %27
  %50 = xor i32 %49, %or.i2442
  %xor78 = xor i32 %50, -1640531521
  %or.i2443 = tail call i32 @llvm.fshl.i32(i32 %xor78, i32 %xor78, i32 11) #6
  %51 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or.i2443, ptr %arrayidx20, align 4
  %xor82 = xor i32 %or.i2441, %or.i2439
  %52 = xor i32 %xor82, %30
  %53 = xor i32 %52, %or.i2443
  %xor86 = xor i32 %53, -1640531522
  %or.i2444 = tail call i32 @llvm.fshl.i32(i32 %xor86, i32 %xor86, i32 11) #6
  %54 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or.i2444, ptr %arrayidx22, align 4
  %xor90 = xor i32 %or.i2442, %or.i2440
  %55 = xor i32 %xor90, %or.i
  %56 = xor i32 %55, %or.i2444
  %xor94 = xor i32 %56, -1640531535
  %or.i2445 = tail call i32 @llvm.fshl.i32(i32 %xor94, i32 %xor94, i32 11) #6
  %arrayidx97 = getelementptr i32, ptr %ctx, i32 8
  %57 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or.i2445, ptr %arrayidx97, align 4
  %xor98 = xor i32 %or.i2443, %or.i2441
  %58 = xor i32 %xor98, %or.i2438
  %59 = xor i32 %58, %or.i2445
  %xor102 = xor i32 %59, -1640531536
  %or.i2446 = tail call i32 @llvm.fshl.i32(i32 %xor102, i32 %xor102, i32 11) #6
  %arrayidx105 = getelementptr i32, ptr %ctx, i32 9
  %60 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or.i2446, ptr %arrayidx105, align 4
  %xor106 = xor i32 %or.i2444, %or.i2442
  %61 = xor i32 %xor106, %or.i2439
  %62 = xor i32 %61, %or.i2446
  %xor110 = xor i32 %62, -1640531533
  %or.i2447 = tail call i32 @llvm.fshl.i32(i32 %xor110, i32 %xor110, i32 11) #6
  %arrayidx113 = getelementptr i32, ptr %ctx, i32 10
  %63 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or.i2447, ptr %arrayidx113, align 4
  %xor114 = xor i32 %or.i2445, %or.i2443
  %64 = xor i32 %xor114, %or.i2440
  %65 = xor i32 %64, %or.i2447
  %xor118 = xor i32 %65, -1640531534
  %or.i2448 = tail call i32 @llvm.fshl.i32(i32 %xor118, i32 %xor118, i32 11) #6
  %arrayidx121 = getelementptr i32, ptr %ctx, i32 11
  %66 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or.i2448, ptr %arrayidx121, align 4
  %xor122 = xor i32 %or.i2446, %or.i2444
  %67 = xor i32 %xor122, %or.i2441
  %68 = xor i32 %67, %or.i2448
  %xor126 = xor i32 %68, -1640531531
  %or.i2449 = tail call i32 @llvm.fshl.i32(i32 %xor126, i32 %xor126, i32 11) #6
  %arrayidx129 = getelementptr i32, ptr %ctx, i32 12
  %69 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or.i2449, ptr %arrayidx129, align 4
  %xor130 = xor i32 %or.i2447, %or.i2445
  %70 = xor i32 %xor130, %or.i2442
  %71 = xor i32 %70, %or.i2449
  %xor134 = xor i32 %71, -1640531532
  %or.i2450 = tail call i32 @llvm.fshl.i32(i32 %xor134, i32 %xor134, i32 11) #6
  %arrayidx137 = getelementptr i32, ptr %ctx, i32 13
  %72 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or.i2450, ptr %arrayidx137, align 4
  %xor138 = xor i32 %or.i2448, %or.i2446
  %73 = xor i32 %xor138, %or.i2443
  %74 = xor i32 %73, %or.i2450
  %xor142 = xor i32 %74, -1640531529
  %or.i2451 = tail call i32 @llvm.fshl.i32(i32 %xor142, i32 %xor142, i32 11) #6
  %arrayidx145 = getelementptr i32, ptr %ctx, i32 14
  %75 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or.i2451, ptr %arrayidx145, align 4
  %xor146 = xor i32 %or.i2449, %or.i2447
  %76 = xor i32 %xor146, %or.i2444
  %77 = xor i32 %76, %or.i2451
  %xor150 = xor i32 %77, -1640531530
  %or.i2452 = tail call i32 @llvm.fshl.i32(i32 %xor150, i32 %xor150, i32 11) #6
  %arrayidx153 = getelementptr i32, ptr %ctx, i32 15
  %78 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or.i2452, ptr %arrayidx153, align 4
  %xor154 = xor i32 %or.i2450, %or.i2448
  %79 = xor i32 %xor154, %or.i2445
  %80 = xor i32 %79, %or.i2452
  %xor158 = xor i32 %80, -1640531543
  %or.i2453 = tail call i32 @llvm.fshl.i32(i32 %xor158, i32 %xor158, i32 11) #6
  %arrayidx161 = getelementptr i32, ptr %ctx, i32 16
  %81 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or.i2453, ptr %arrayidx161, align 4
  %xor162 = xor i32 %or.i2451, %or.i2449
  %82 = xor i32 %xor162, %or.i2446
  %83 = xor i32 %82, %or.i2453
  %xor166 = xor i32 %83, -1640531544
  %or.i2454 = tail call i32 @llvm.fshl.i32(i32 %xor166, i32 %xor166, i32 11) #6
  %arrayidx169 = getelementptr i32, ptr %ctx, i32 17
  %84 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or.i2454, ptr %arrayidx169, align 4
  %xor170 = xor i32 %or.i2452, %or.i2450
  %85 = xor i32 %xor170, %or.i2447
  %86 = xor i32 %85, %or.i2454
  %xor174 = xor i32 %86, -1640531541
  %or.i2455 = tail call i32 @llvm.fshl.i32(i32 %xor174, i32 %xor174, i32 11) #6
  %arrayidx177 = getelementptr i32, ptr %ctx, i32 18
  %87 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or.i2455, ptr %arrayidx177, align 4
  %xor178 = xor i32 %or.i2453, %or.i2451
  %88 = xor i32 %xor178, %or.i2448
  %89 = xor i32 %88, %or.i2455
  %xor182 = xor i32 %89, -1640531542
  %or.i2456 = tail call i32 @llvm.fshl.i32(i32 %xor182, i32 %xor182, i32 11) #6
  %arrayidx185 = getelementptr i32, ptr %ctx, i32 19
  %90 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %or.i2456, ptr %arrayidx185, align 4
  %xor186 = xor i32 %or.i2454, %or.i2452
  %91 = xor i32 %xor186, %or.i2449
  %92 = xor i32 %91, %or.i2456
  %xor190 = xor i32 %92, -1640531539
  %or.i2457 = tail call i32 @llvm.fshl.i32(i32 %xor190, i32 %xor190, i32 11) #6
  %arrayidx193 = getelementptr i32, ptr %ctx, i32 20
  %93 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %or.i2457, ptr %arrayidx193, align 4
  %xor194 = xor i32 %or.i2455, %or.i2453
  %94 = xor i32 %xor194, %or.i2450
  %95 = xor i32 %94, %or.i2457
  %xor198 = xor i32 %95, -1640531540
  %or.i2458 = tail call i32 @llvm.fshl.i32(i32 %xor198, i32 %xor198, i32 11) #6
  %arrayidx201 = getelementptr i32, ptr %ctx, i32 21
  %96 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or.i2458, ptr %arrayidx201, align 4
  %xor202 = xor i32 %or.i2456, %or.i2454
  %97 = xor i32 %xor202, %or.i2451
  %98 = xor i32 %97, %or.i2458
  %xor206 = xor i32 %98, -1640531537
  %or.i2459 = tail call i32 @llvm.fshl.i32(i32 %xor206, i32 %xor206, i32 11) #6
  %arrayidx209 = getelementptr i32, ptr %ctx, i32 22
  %99 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %or.i2459, ptr %arrayidx209, align 4
  %xor210 = xor i32 %or.i2457, %or.i2455
  %100 = xor i32 %xor210, %or.i2452
  %101 = xor i32 %100, %or.i2459
  %xor214 = xor i32 %101, -1640531538
  %or.i2460 = tail call i32 @llvm.fshl.i32(i32 %xor214, i32 %xor214, i32 11) #6
  %arrayidx217 = getelementptr i32, ptr %ctx, i32 23
  %102 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or.i2460, ptr %arrayidx217, align 4
  %xor218 = xor i32 %or.i2458, %or.i2456
  %103 = xor i32 %xor218, %or.i2453
  %104 = xor i32 %103, %or.i2460
  %xor222 = xor i32 %104, -1640531551
  %or.i2461 = tail call i32 @llvm.fshl.i32(i32 %xor222, i32 %xor222, i32 11) #6
  %arrayidx225 = getelementptr i32, ptr %ctx, i32 24
  %105 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %or.i2461, ptr %arrayidx225, align 4
  %xor226 = xor i32 %or.i2459, %or.i2457
  %106 = xor i32 %xor226, %or.i2454
  %107 = xor i32 %106, %or.i2461
  %xor230 = xor i32 %107, -1640531552
  %or.i2462 = tail call i32 @llvm.fshl.i32(i32 %xor230, i32 %xor230, i32 11) #6
  %arrayidx233 = getelementptr i32, ptr %ctx, i32 25
  %108 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %or.i2462, ptr %arrayidx233, align 4
  %xor234 = xor i32 %or.i2460, %or.i2458
  %109 = xor i32 %xor234, %or.i2455
  %110 = xor i32 %109, %or.i2462
  %xor238 = xor i32 %110, -1640531549
  %or.i2463 = tail call i32 @llvm.fshl.i32(i32 %xor238, i32 %xor238, i32 11) #6
  %arrayidx241 = getelementptr i32, ptr %ctx, i32 26
  %111 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %or.i2463, ptr %arrayidx241, align 4
  %xor242 = xor i32 %or.i2461, %or.i2459
  %112 = xor i32 %xor242, %or.i2456
  %113 = xor i32 %112, %or.i2463
  %xor246 = xor i32 %113, -1640531550
  %or.i2464 = tail call i32 @llvm.fshl.i32(i32 %xor246, i32 %xor246, i32 11) #6
  %arrayidx249 = getelementptr i32, ptr %ctx, i32 27
  %114 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %or.i2464, ptr %arrayidx249, align 4
  %xor250 = xor i32 %or.i2462, %or.i2460
  %115 = xor i32 %xor250, %or.i2457
  %116 = xor i32 %115, %or.i2464
  %xor254 = xor i32 %116, -1640531547
  %or.i2465 = tail call i32 @llvm.fshl.i32(i32 %xor254, i32 %xor254, i32 11) #6
  %arrayidx257 = getelementptr i32, ptr %ctx, i32 28
  %117 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %or.i2465, ptr %arrayidx257, align 4
  %xor258 = xor i32 %or.i2463, %or.i2461
  %118 = xor i32 %xor258, %or.i2458
  %119 = xor i32 %118, %or.i2465
  %xor262 = xor i32 %119, -1640531548
  %or.i2466 = tail call i32 @llvm.fshl.i32(i32 %xor262, i32 %xor262, i32 11) #6
  %arrayidx265 = getelementptr i32, ptr %ctx, i32 29
  %120 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %or.i2466, ptr %arrayidx265, align 4
  %xor266 = xor i32 %or.i2464, %or.i2462
  %121 = xor i32 %xor266, %or.i2459
  %122 = xor i32 %121, %or.i2466
  %xor270 = xor i32 %122, -1640531545
  %or.i2467 = tail call i32 @llvm.fshl.i32(i32 %xor270, i32 %xor270, i32 11) #6
  %arrayidx273 = getelementptr i32, ptr %ctx, i32 30
  %123 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %or.i2467, ptr %arrayidx273, align 4
  %xor274 = xor i32 %or.i2465, %or.i2463
  %124 = xor i32 %xor274, %or.i2460
  %125 = xor i32 %124, %or.i2467
  %xor278 = xor i32 %125, -1640531546
  %or.i2468 = tail call i32 @llvm.fshl.i32(i32 %xor278, i32 %xor278, i32 11) #6
  %arrayidx281 = getelementptr i32, ptr %ctx, i32 31
  %126 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %or.i2468, ptr %arrayidx281, align 4
  %add.ptr = getelementptr i32, ptr %ctx, i32 50
  %xor282 = xor i32 %or.i2466, %or.i2464
  %127 = xor i32 %xor282, %or.i2461
  %128 = xor i32 %127, %or.i2468
  %xor286 = xor i32 %128, -1640531559
  %or.i2469 = tail call i32 @llvm.fshl.i32(i32 %xor286, i32 %xor286, i32 11) #6
  %arrayidx289 = getelementptr i32, ptr %ctx, i32 32
  %129 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %or.i2469, ptr %arrayidx289, align 4
  %xor290 = xor i32 %or.i2467, %or.i2465
  %130 = xor i32 %xor290, %or.i2462
  %131 = xor i32 %130, %or.i2469
  %xor294 = xor i32 %131, -1640531560
  %or.i2470 = tail call i32 @llvm.fshl.i32(i32 %xor294, i32 %xor294, i32 11) #6
  %arrayidx297 = getelementptr i32, ptr %ctx, i32 33
  %132 = ptrtoint ptr %arrayidx297 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %or.i2470, ptr %arrayidx297, align 4
  %xor298 = xor i32 %or.i2468, %or.i2466
  %133 = xor i32 %xor298, %or.i2463
  %134 = xor i32 %133, %or.i2470
  %xor302 = xor i32 %134, -1640531557
  %or.i2471 = tail call i32 @llvm.fshl.i32(i32 %xor302, i32 %xor302, i32 11) #6
  %arrayidx305 = getelementptr i32, ptr %ctx, i32 34
  %135 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %or.i2471, ptr %arrayidx305, align 4
  %xor306 = xor i32 %or.i2469, %or.i2467
  %136 = xor i32 %xor306, %or.i2464
  %137 = xor i32 %136, %or.i2471
  %xor310 = xor i32 %137, -1640531558
  %or.i2472 = tail call i32 @llvm.fshl.i32(i32 %xor310, i32 %xor310, i32 11) #6
  %arrayidx313 = getelementptr i32, ptr %ctx, i32 35
  %138 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %or.i2472, ptr %arrayidx313, align 4
  %xor314 = xor i32 %or.i2470, %or.i2468
  %139 = xor i32 %xor314, %or.i2465
  %140 = xor i32 %139, %or.i2472
  %xor318 = xor i32 %140, -1640531555
  %or.i2473 = tail call i32 @llvm.fshl.i32(i32 %xor318, i32 %xor318, i32 11) #6
  %arrayidx321 = getelementptr i32, ptr %ctx, i32 36
  %141 = ptrtoint ptr %arrayidx321 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %or.i2473, ptr %arrayidx321, align 4
  %xor322 = xor i32 %or.i2471, %or.i2469
  %142 = xor i32 %xor322, %or.i2466
  %143 = xor i32 %142, %or.i2473
  %xor326 = xor i32 %143, -1640531556
  %or.i2474 = tail call i32 @llvm.fshl.i32(i32 %xor326, i32 %xor326, i32 11) #6
  %arrayidx329 = getelementptr i32, ptr %ctx, i32 37
  %144 = ptrtoint ptr %arrayidx329 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %or.i2474, ptr %arrayidx329, align 4
  %xor330 = xor i32 %or.i2472, %or.i2470
  %145 = xor i32 %xor330, %or.i2467
  %146 = xor i32 %145, %or.i2474
  %xor334 = xor i32 %146, -1640531553
  %or.i2475 = tail call i32 @llvm.fshl.i32(i32 %xor334, i32 %xor334, i32 11) #6
  %arrayidx337 = getelementptr i32, ptr %ctx, i32 38
  %147 = ptrtoint ptr %arrayidx337 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %or.i2475, ptr %arrayidx337, align 4
  %xor338 = xor i32 %or.i2473, %or.i2471
  %148 = xor i32 %xor338, %or.i2468
  %149 = xor i32 %148, %or.i2475
  %xor342 = xor i32 %149, -1640531554
  %or.i2476 = tail call i32 @llvm.fshl.i32(i32 %xor342, i32 %xor342, i32 11) #6
  %arrayidx345 = getelementptr i32, ptr %ctx, i32 39
  %150 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %or.i2476, ptr %arrayidx345, align 4
  %xor346 = xor i32 %or.i2474, %or.i2472
  %151 = xor i32 %xor346, %or.i2469
  %152 = xor i32 %151, %or.i2476
  %xor350 = xor i32 %152, -1640531567
  %or.i2477 = tail call i32 @llvm.fshl.i32(i32 %xor350, i32 %xor350, i32 11) #6
  %arrayidx353 = getelementptr i32, ptr %ctx, i32 40
  %153 = ptrtoint ptr %arrayidx353 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %or.i2477, ptr %arrayidx353, align 4
  %xor354 = xor i32 %or.i2475, %or.i2473
  %154 = xor i32 %xor354, %or.i2470
  %155 = xor i32 %154, %or.i2477
  %xor358 = xor i32 %155, -1640531568
  %or.i2478 = tail call i32 @llvm.fshl.i32(i32 %xor358, i32 %xor358, i32 11) #6
  %arrayidx361 = getelementptr i32, ptr %ctx, i32 41
  %156 = ptrtoint ptr %arrayidx361 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %or.i2478, ptr %arrayidx361, align 4
  %xor362 = xor i32 %or.i2476, %or.i2474
  %157 = xor i32 %xor362, %or.i2471
  %158 = xor i32 %157, %or.i2478
  %xor366 = xor i32 %158, -1640531565
  %or.i2479 = tail call i32 @llvm.fshl.i32(i32 %xor366, i32 %xor366, i32 11) #6
  %arrayidx369 = getelementptr i32, ptr %ctx, i32 42
  %159 = ptrtoint ptr %arrayidx369 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %or.i2479, ptr %arrayidx369, align 4
  %xor370 = xor i32 %or.i2477, %or.i2475
  %160 = xor i32 %xor370, %or.i2472
  %161 = xor i32 %160, %or.i2479
  %xor374 = xor i32 %161, -1640531566
  %or.i2480 = tail call i32 @llvm.fshl.i32(i32 %xor374, i32 %xor374, i32 11) #6
  %arrayidx377 = getelementptr i32, ptr %ctx, i32 43
  %162 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %or.i2480, ptr %arrayidx377, align 4
  %xor378 = xor i32 %or.i2478, %or.i2476
  %163 = xor i32 %xor378, %or.i2473
  %164 = xor i32 %163, %or.i2480
  %xor382 = xor i32 %164, -1640531563
  %or.i2481 = tail call i32 @llvm.fshl.i32(i32 %xor382, i32 %xor382, i32 11) #6
  %arrayidx385 = getelementptr i32, ptr %ctx, i32 44
  %165 = ptrtoint ptr %arrayidx385 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %or.i2481, ptr %arrayidx385, align 4
  %xor386 = xor i32 %or.i2479, %or.i2477
  %166 = xor i32 %xor386, %or.i2474
  %167 = xor i32 %166, %or.i2481
  %xor390 = xor i32 %167, -1640531564
  %or.i2482 = tail call i32 @llvm.fshl.i32(i32 %xor390, i32 %xor390, i32 11) #6
  %arrayidx393 = getelementptr i32, ptr %ctx, i32 45
  %168 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %or.i2482, ptr %arrayidx393, align 4
  %xor394 = xor i32 %or.i2480, %or.i2478
  %169 = xor i32 %xor394, %or.i2475
  %170 = xor i32 %169, %or.i2482
  %xor398 = xor i32 %170, -1640531561
  %or.i2483 = tail call i32 @llvm.fshl.i32(i32 %xor398, i32 %xor398, i32 11) #6
  %arrayidx401 = getelementptr i32, ptr %ctx, i32 46
  %171 = ptrtoint ptr %arrayidx401 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %or.i2483, ptr %arrayidx401, align 4
  %xor402 = xor i32 %or.i2481, %or.i2479
  %172 = xor i32 %xor402, %or.i2476
  %173 = xor i32 %172, %or.i2483
  %xor406 = xor i32 %173, -1640531562
  %or.i2484 = tail call i32 @llvm.fshl.i32(i32 %xor406, i32 %xor406, i32 11) #6
  %arrayidx409 = getelementptr i32, ptr %ctx, i32 47
  %174 = ptrtoint ptr %arrayidx409 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %or.i2484, ptr %arrayidx409, align 4
  %xor410 = xor i32 %or.i2482, %or.i2480
  %175 = xor i32 %xor410, %or.i2477
  %176 = xor i32 %175, %or.i2484
  %xor414 = xor i32 %176, -1640531575
  %or.i2485 = tail call i32 @llvm.fshl.i32(i32 %xor414, i32 %xor414, i32 11) #6
  %arrayidx417 = getelementptr i32, ptr %ctx, i32 48
  %177 = ptrtoint ptr %arrayidx417 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %or.i2485, ptr %arrayidx417, align 4
  %xor418 = xor i32 %or.i2483, %or.i2481
  %178 = xor i32 %xor418, %or.i2478
  %179 = xor i32 %178, %or.i2485
  %xor422 = xor i32 %179, -1640531576
  %or.i2486 = tail call i32 @llvm.fshl.i32(i32 %xor422, i32 %xor422, i32 11) #6
  %arrayidx425 = getelementptr i32, ptr %ctx, i32 49
  %180 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %or.i2486, ptr %arrayidx425, align 4
  %xor426 = xor i32 %or.i2484, %or.i2482
  %181 = xor i32 %xor426, %or.i2479
  %182 = xor i32 %181, %or.i2486
  %xor430 = xor i32 %182, -1640531573
  %or.i2487 = tail call i32 @llvm.fshl.i32(i32 %xor430, i32 %xor430, i32 11) #6
  %183 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %or.i2487, ptr %add.ptr, align 4
  %xor434 = xor i32 %or.i2485, %or.i2483
  %184 = xor i32 %xor434, %or.i2480
  %185 = xor i32 %184, %or.i2487
  %xor438 = xor i32 %185, -1640531574
  %or.i2488 = tail call i32 @llvm.fshl.i32(i32 %xor438, i32 %xor438, i32 11) #6
  %arrayidx441 = getelementptr i32, ptr %ctx, i32 51
  %186 = ptrtoint ptr %arrayidx441 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %or.i2488, ptr %arrayidx441, align 4
  %xor442 = xor i32 %or.i2486, %or.i2484
  %187 = xor i32 %xor442, %or.i2481
  %188 = xor i32 %187, %or.i2488
  %xor446 = xor i32 %188, -1640531571
  %or.i2489 = tail call i32 @llvm.fshl.i32(i32 %xor446, i32 %xor446, i32 11) #6
  %arrayidx449 = getelementptr i32, ptr %ctx, i32 52
  %189 = ptrtoint ptr %arrayidx449 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %or.i2489, ptr %arrayidx449, align 4
  %xor450 = xor i32 %or.i2487, %or.i2485
  %190 = xor i32 %xor450, %or.i2482
  %191 = xor i32 %190, %or.i2489
  %xor454 = xor i32 %191, -1640531572
  %or.i2490 = tail call i32 @llvm.fshl.i32(i32 %xor454, i32 %xor454, i32 11) #6
  %arrayidx457 = getelementptr i32, ptr %ctx, i32 53
  %192 = ptrtoint ptr %arrayidx457 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %or.i2490, ptr %arrayidx457, align 4
  %xor458 = xor i32 %or.i2488, %or.i2486
  %193 = xor i32 %xor458, %or.i2483
  %194 = xor i32 %193, %or.i2490
  %xor462 = xor i32 %194, -1640531569
  %or.i2491 = tail call i32 @llvm.fshl.i32(i32 %xor462, i32 %xor462, i32 11) #6
  %arrayidx465 = getelementptr i32, ptr %ctx, i32 54
  %195 = ptrtoint ptr %arrayidx465 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %or.i2491, ptr %arrayidx465, align 4
  %xor466 = xor i32 %or.i2489, %or.i2487
  %196 = xor i32 %xor466, %or.i2484
  %197 = xor i32 %196, %or.i2491
  %xor470 = xor i32 %197, -1640531570
  %or.i2492 = tail call i32 @llvm.fshl.i32(i32 %xor470, i32 %xor470, i32 11) #6
  %arrayidx473 = getelementptr i32, ptr %ctx, i32 55
  %198 = ptrtoint ptr %arrayidx473 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %or.i2492, ptr %arrayidx473, align 4
  %xor474 = xor i32 %or.i2490, %or.i2488
  %199 = xor i32 %xor474, %or.i2485
  %200 = xor i32 %199, %or.i2492
  %xor478 = xor i32 %200, -1640531583
  %or.i2493 = tail call i32 @llvm.fshl.i32(i32 %xor478, i32 %xor478, i32 11) #6
  %arrayidx481 = getelementptr i32, ptr %ctx, i32 56
  %201 = ptrtoint ptr %arrayidx481 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %or.i2493, ptr %arrayidx481, align 4
  %xor482 = xor i32 %or.i2491, %or.i2489
  %202 = xor i32 %xor482, %or.i2486
  %203 = xor i32 %202, %or.i2493
  %xor486 = xor i32 %203, -1640531584
  %or.i2494 = tail call i32 @llvm.fshl.i32(i32 %xor486, i32 %xor486, i32 11) #6
  %arrayidx489 = getelementptr i32, ptr %ctx, i32 57
  %204 = ptrtoint ptr %arrayidx489 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %or.i2494, ptr %arrayidx489, align 4
  %xor490 = xor i32 %or.i2492, %or.i2490
  %205 = xor i32 %xor490, %or.i2487
  %206 = xor i32 %205, %or.i2494
  %xor494 = xor i32 %206, -1640531581
  %or.i2495 = tail call i32 @llvm.fshl.i32(i32 %xor494, i32 %xor494, i32 11) #6
  %arrayidx497 = getelementptr i32, ptr %ctx, i32 58
  %207 = ptrtoint ptr %arrayidx497 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %or.i2495, ptr %arrayidx497, align 4
  %xor498 = xor i32 %or.i2493, %or.i2491
  %208 = xor i32 %xor498, %or.i2488
  %209 = xor i32 %208, %or.i2495
  %xor502 = xor i32 %209, -1640531582
  %or.i2496 = tail call i32 @llvm.fshl.i32(i32 %xor502, i32 %xor502, i32 11) #6
  %arrayidx505 = getelementptr i32, ptr %ctx, i32 59
  %210 = ptrtoint ptr %arrayidx505 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %or.i2496, ptr %arrayidx505, align 4
  %xor506 = xor i32 %or.i2494, %or.i2492
  %211 = xor i32 %xor506, %or.i2489
  %212 = xor i32 %211, %or.i2496
  %xor510 = xor i32 %212, -1640531579
  %or.i2497 = tail call i32 @llvm.fshl.i32(i32 %xor510, i32 %xor510, i32 11) #6
  %arrayidx513 = getelementptr i32, ptr %ctx, i32 60
  %213 = ptrtoint ptr %arrayidx513 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %or.i2497, ptr %arrayidx513, align 4
  %xor514 = xor i32 %or.i2495, %or.i2493
  %214 = xor i32 %xor514, %or.i2490
  %215 = xor i32 %214, %or.i2497
  %xor518 = xor i32 %215, -1640531580
  %or.i2498 = tail call i32 @llvm.fshl.i32(i32 %xor518, i32 %xor518, i32 11) #6
  %arrayidx521 = getelementptr i32, ptr %ctx, i32 61
  %216 = ptrtoint ptr %arrayidx521 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %or.i2498, ptr %arrayidx521, align 4
  %xor522 = xor i32 %or.i2496, %or.i2494
  %217 = xor i32 %xor522, %or.i2491
  %218 = xor i32 %217, %or.i2498
  %xor526 = xor i32 %218, -1640531577
  %or.i2499 = tail call i32 @llvm.fshl.i32(i32 %xor526, i32 %xor526, i32 11) #6
  %arrayidx529 = getelementptr i32, ptr %ctx, i32 62
  %219 = ptrtoint ptr %arrayidx529 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %or.i2499, ptr %arrayidx529, align 4
  %xor530 = xor i32 %or.i2497, %or.i2495
  %220 = xor i32 %xor530, %or.i2492
  %221 = xor i32 %220, %or.i2499
  %xor534 = xor i32 %221, -1640531578
  %or.i2500 = tail call i32 @llvm.fshl.i32(i32 %xor534, i32 %xor534, i32 11) #6
  %arrayidx537 = getelementptr i32, ptr %ctx, i32 63
  %222 = ptrtoint ptr %arrayidx537 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %or.i2500, ptr %arrayidx537, align 4
  %xor538 = xor i32 %or.i2498, %or.i2496
  %223 = xor i32 %xor538, %or.i2493
  %224 = xor i32 %223, %or.i2500
  %xor542 = xor i32 %224, -1640531463
  %or.i2501 = tail call i32 @llvm.fshl.i32(i32 %xor542, i32 %xor542, i32 11) #6
  %arrayidx545 = getelementptr i32, ptr %ctx, i32 64
  %225 = ptrtoint ptr %arrayidx545 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %or.i2501, ptr %arrayidx545, align 4
  %xor546 = xor i32 %or.i2499, %or.i2497
  %226 = xor i32 %xor546, %or.i2494
  %227 = xor i32 %226, %or.i2501
  %xor550 = xor i32 %227, -1640531464
  %or.i2502 = tail call i32 @llvm.fshl.i32(i32 %xor550, i32 %xor550, i32 11) #6
  %arrayidx553 = getelementptr i32, ptr %ctx, i32 65
  %228 = ptrtoint ptr %arrayidx553 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %or.i2502, ptr %arrayidx553, align 4
  %xor554 = xor i32 %or.i2500, %or.i2498
  %229 = xor i32 %xor554, %or.i2495
  %230 = xor i32 %229, %or.i2502
  %xor558 = xor i32 %230, -1640531461
  %or.i2503 = tail call i32 @llvm.fshl.i32(i32 %xor558, i32 %xor558, i32 11) #6
  %arrayidx561 = getelementptr i32, ptr %ctx, i32 66
  %231 = ptrtoint ptr %arrayidx561 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %or.i2503, ptr %arrayidx561, align 4
  %xor562 = xor i32 %or.i2501, %or.i2499
  %232 = xor i32 %xor562, %or.i2496
  %233 = xor i32 %232, %or.i2503
  %xor566 = xor i32 %233, -1640531462
  %or.i2504 = tail call i32 @llvm.fshl.i32(i32 %xor566, i32 %xor566, i32 11) #6
  %arrayidx569 = getelementptr i32, ptr %ctx, i32 67
  %234 = ptrtoint ptr %arrayidx569 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %or.i2504, ptr %arrayidx569, align 4
  %xor570 = xor i32 %or.i2502, %or.i2500
  %235 = xor i32 %xor570, %or.i2497
  %236 = xor i32 %235, %or.i2504
  %xor574 = xor i32 %236, -1640531459
  %or.i2505 = tail call i32 @llvm.fshl.i32(i32 %xor574, i32 %xor574, i32 11) #6
  %arrayidx577 = getelementptr i32, ptr %ctx, i32 68
  %237 = ptrtoint ptr %arrayidx577 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %or.i2505, ptr %arrayidx577, align 4
  %xor578 = xor i32 %or.i2503, %or.i2501
  %238 = xor i32 %xor578, %or.i2498
  %239 = xor i32 %238, %or.i2505
  %xor582 = xor i32 %239, -1640531460
  %or.i2506 = tail call i32 @llvm.fshl.i32(i32 %xor582, i32 %xor582, i32 11) #6
  %arrayidx585 = getelementptr i32, ptr %ctx, i32 69
  %240 = ptrtoint ptr %arrayidx585 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %or.i2506, ptr %arrayidx585, align 4
  %xor586 = xor i32 %or.i2504, %or.i2502
  %241 = xor i32 %xor586, %or.i2499
  %242 = xor i32 %241, %or.i2506
  %xor590 = xor i32 %242, -1640531457
  %or.i2507 = tail call i32 @llvm.fshl.i32(i32 %xor590, i32 %xor590, i32 11) #6
  %arrayidx593 = getelementptr i32, ptr %ctx, i32 70
  %243 = ptrtoint ptr %arrayidx593 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %or.i2507, ptr %arrayidx593, align 4
  %xor594 = xor i32 %or.i2505, %or.i2503
  %244 = xor i32 %xor594, %or.i2500
  %245 = xor i32 %244, %or.i2507
  %xor598 = xor i32 %245, -1640531458
  %or.i2508 = tail call i32 @llvm.fshl.i32(i32 %xor598, i32 %xor598, i32 11) #6
  %arrayidx601 = getelementptr i32, ptr %ctx, i32 71
  %246 = ptrtoint ptr %arrayidx601 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %or.i2508, ptr %arrayidx601, align 4
  %xor602 = xor i32 %or.i2506, %or.i2504
  %247 = xor i32 %xor602, %or.i2501
  %248 = xor i32 %247, %or.i2508
  %xor606 = xor i32 %248, -1640531471
  %or.i2509 = tail call i32 @llvm.fshl.i32(i32 %xor606, i32 %xor606, i32 11) #6
  %arrayidx609 = getelementptr i32, ptr %ctx, i32 72
  %249 = ptrtoint ptr %arrayidx609 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %or.i2509, ptr %arrayidx609, align 4
  %xor610 = xor i32 %or.i2507, %or.i2505
  %250 = xor i32 %xor610, %or.i2502
  %251 = xor i32 %250, %or.i2509
  %xor614 = xor i32 %251, -1640531472
  %or.i2510 = tail call i32 @llvm.fshl.i32(i32 %xor614, i32 %xor614, i32 11) #6
  %arrayidx617 = getelementptr i32, ptr %ctx, i32 73
  %252 = ptrtoint ptr %arrayidx617 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %or.i2510, ptr %arrayidx617, align 4
  %xor618 = xor i32 %or.i2508, %or.i2506
  %253 = xor i32 %xor618, %or.i2503
  %254 = xor i32 %253, %or.i2510
  %xor622 = xor i32 %254, -1640531469
  %or.i2511 = tail call i32 @llvm.fshl.i32(i32 %xor622, i32 %xor622, i32 11) #6
  %arrayidx625 = getelementptr i32, ptr %ctx, i32 74
  %255 = ptrtoint ptr %arrayidx625 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %or.i2511, ptr %arrayidx625, align 4
  %xor626 = xor i32 %or.i2509, %or.i2507
  %256 = xor i32 %xor626, %or.i2504
  %257 = xor i32 %256, %or.i2511
  %xor630 = xor i32 %257, -1640531470
  %or.i2512 = tail call i32 @llvm.fshl.i32(i32 %xor630, i32 %xor630, i32 11) #6
  %arrayidx633 = getelementptr i32, ptr %ctx, i32 75
  %258 = ptrtoint ptr %arrayidx633 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %or.i2512, ptr %arrayidx633, align 4
  %xor634 = xor i32 %or.i2510, %or.i2508
  %259 = xor i32 %xor634, %or.i2505
  %260 = xor i32 %259, %or.i2512
  %xor638 = xor i32 %260, -1640531467
  %or.i2513 = tail call i32 @llvm.fshl.i32(i32 %xor638, i32 %xor638, i32 11) #6
  %arrayidx641 = getelementptr i32, ptr %ctx, i32 76
  %261 = ptrtoint ptr %arrayidx641 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %or.i2513, ptr %arrayidx641, align 4
  %xor642 = xor i32 %or.i2511, %or.i2509
  %262 = xor i32 %xor642, %or.i2506
  %263 = xor i32 %262, %or.i2513
  %xor646 = xor i32 %263, -1640531468
  %or.i2514 = tail call i32 @llvm.fshl.i32(i32 %xor646, i32 %xor646, i32 11) #6
  %arrayidx649 = getelementptr i32, ptr %ctx, i32 77
  %264 = ptrtoint ptr %arrayidx649 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %or.i2514, ptr %arrayidx649, align 4
  %xor650 = xor i32 %or.i2512, %or.i2510
  %265 = xor i32 %xor650, %or.i2507
  %266 = xor i32 %265, %or.i2514
  %xor654 = xor i32 %266, -1640531465
  %or.i2515 = tail call i32 @llvm.fshl.i32(i32 %xor654, i32 %xor654, i32 11) #6
  %arrayidx657 = getelementptr i32, ptr %ctx, i32 78
  %267 = ptrtoint ptr %arrayidx657 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %or.i2515, ptr %arrayidx657, align 4
  %xor658 = xor i32 %or.i2513, %or.i2511
  %268 = xor i32 %xor658, %or.i2508
  %269 = xor i32 %268, %or.i2515
  %xor662 = xor i32 %269, -1640531466
  %or.i2516 = tail call i32 @llvm.fshl.i32(i32 %xor662, i32 %xor662, i32 11) #6
  %arrayidx665 = getelementptr i32, ptr %ctx, i32 79
  %270 = ptrtoint ptr %arrayidx665 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %or.i2516, ptr %arrayidx665, align 4
  %xor666 = xor i32 %or.i2514, %or.i2512
  %271 = xor i32 %xor666, %or.i2509
  %272 = xor i32 %271, %or.i2516
  %xor670 = xor i32 %272, -1640531479
  %or.i2517 = tail call i32 @llvm.fshl.i32(i32 %xor670, i32 %xor670, i32 11) #6
  %arrayidx673 = getelementptr i32, ptr %ctx, i32 80
  %273 = ptrtoint ptr %arrayidx673 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %or.i2517, ptr %arrayidx673, align 4
  %xor674 = xor i32 %or.i2515, %or.i2513
  %274 = xor i32 %xor674, %or.i2510
  %275 = xor i32 %274, %or.i2517
  %xor678 = xor i32 %275, -1640531480
  %or.i2518 = tail call i32 @llvm.fshl.i32(i32 %xor678, i32 %xor678, i32 11) #6
  %arrayidx681 = getelementptr i32, ptr %ctx, i32 81
  %276 = ptrtoint ptr %arrayidx681 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %or.i2518, ptr %arrayidx681, align 4
  %add.ptr682 = getelementptr i32, ptr %ctx, i32 100
  %xor683 = xor i32 %or.i2516, %or.i2514
  %277 = xor i32 %xor683, %or.i2511
  %278 = xor i32 %277, %or.i2518
  %xor687 = xor i32 %278, -1640531477
  %or.i2519 = tail call i32 @llvm.fshl.i32(i32 %xor687, i32 %xor687, i32 11) #6
  %arrayidx690 = getelementptr i32, ptr %ctx, i32 82
  %279 = ptrtoint ptr %arrayidx690 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %or.i2519, ptr %arrayidx690, align 4
  %xor691 = xor i32 %or.i2517, %or.i2515
  %280 = xor i32 %xor691, %or.i2512
  %281 = xor i32 %280, %or.i2519
  %xor695 = xor i32 %281, -1640531478
  %or.i2520 = tail call i32 @llvm.fshl.i32(i32 %xor695, i32 %xor695, i32 11) #6
  %arrayidx698 = getelementptr i32, ptr %ctx, i32 83
  %282 = ptrtoint ptr %arrayidx698 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %or.i2520, ptr %arrayidx698, align 4
  %xor699 = xor i32 %or.i2518, %or.i2516
  %283 = xor i32 %xor699, %or.i2513
  %284 = xor i32 %283, %or.i2520
  %xor703 = xor i32 %284, -1640531475
  %or.i2521 = tail call i32 @llvm.fshl.i32(i32 %xor703, i32 %xor703, i32 11) #6
  %arrayidx706 = getelementptr i32, ptr %ctx, i32 84
  %285 = ptrtoint ptr %arrayidx706 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %or.i2521, ptr %arrayidx706, align 4
  %xor707 = xor i32 %or.i2519, %or.i2517
  %286 = xor i32 %xor707, %or.i2514
  %287 = xor i32 %286, %or.i2521
  %xor711 = xor i32 %287, -1640531476
  %or.i2522 = tail call i32 @llvm.fshl.i32(i32 %xor711, i32 %xor711, i32 11) #6
  %arrayidx714 = getelementptr i32, ptr %ctx, i32 85
  %288 = ptrtoint ptr %arrayidx714 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %or.i2522, ptr %arrayidx714, align 4
  %xor715 = xor i32 %or.i2520, %or.i2518
  %289 = xor i32 %xor715, %or.i2515
  %290 = xor i32 %289, %or.i2522
  %xor719 = xor i32 %290, -1640531473
  %or.i2523 = tail call i32 @llvm.fshl.i32(i32 %xor719, i32 %xor719, i32 11) #6
  %arrayidx722 = getelementptr i32, ptr %ctx, i32 86
  %291 = ptrtoint ptr %arrayidx722 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %or.i2523, ptr %arrayidx722, align 4
  %xor723 = xor i32 %or.i2521, %or.i2519
  %292 = xor i32 %xor723, %or.i2516
  %293 = xor i32 %292, %or.i2523
  %xor727 = xor i32 %293, -1640531474
  %or.i2524 = tail call i32 @llvm.fshl.i32(i32 %xor727, i32 %xor727, i32 11) #6
  %arrayidx730 = getelementptr i32, ptr %ctx, i32 87
  %294 = ptrtoint ptr %arrayidx730 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %or.i2524, ptr %arrayidx730, align 4
  %xor731 = xor i32 %or.i2522, %or.i2520
  %295 = xor i32 %xor731, %or.i2517
  %296 = xor i32 %295, %or.i2524
  %xor735 = xor i32 %296, -1640531487
  %or.i2525 = tail call i32 @llvm.fshl.i32(i32 %xor735, i32 %xor735, i32 11) #6
  %arrayidx738 = getelementptr i32, ptr %ctx, i32 88
  %297 = ptrtoint ptr %arrayidx738 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %or.i2525, ptr %arrayidx738, align 4
  %xor739 = xor i32 %or.i2523, %or.i2521
  %298 = xor i32 %xor739, %or.i2518
  %299 = xor i32 %298, %or.i2525
  %xor743 = xor i32 %299, -1640531488
  %or.i2526 = tail call i32 @llvm.fshl.i32(i32 %xor743, i32 %xor743, i32 11) #6
  %arrayidx746 = getelementptr i32, ptr %ctx, i32 89
  %300 = ptrtoint ptr %arrayidx746 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %or.i2526, ptr %arrayidx746, align 4
  %xor747 = xor i32 %or.i2524, %or.i2522
  %301 = xor i32 %xor747, %or.i2519
  %302 = xor i32 %301, %or.i2526
  %xor751 = xor i32 %302, -1640531485
  %or.i2527 = tail call i32 @llvm.fshl.i32(i32 %xor751, i32 %xor751, i32 11) #6
  %arrayidx754 = getelementptr i32, ptr %ctx, i32 90
  %303 = ptrtoint ptr %arrayidx754 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %or.i2527, ptr %arrayidx754, align 4
  %xor755 = xor i32 %or.i2525, %or.i2523
  %304 = xor i32 %xor755, %or.i2520
  %305 = xor i32 %304, %or.i2527
  %xor759 = xor i32 %305, -1640531486
  %or.i2528 = tail call i32 @llvm.fshl.i32(i32 %xor759, i32 %xor759, i32 11) #6
  %arrayidx762 = getelementptr i32, ptr %ctx, i32 91
  %306 = ptrtoint ptr %arrayidx762 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %or.i2528, ptr %arrayidx762, align 4
  %xor763 = xor i32 %or.i2526, %or.i2524
  %307 = xor i32 %xor763, %or.i2521
  %308 = xor i32 %307, %or.i2528
  %xor767 = xor i32 %308, -1640531483
  %or.i2529 = tail call i32 @llvm.fshl.i32(i32 %xor767, i32 %xor767, i32 11) #6
  %arrayidx770 = getelementptr i32, ptr %ctx, i32 92
  %309 = ptrtoint ptr %arrayidx770 to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %or.i2529, ptr %arrayidx770, align 4
  %xor771 = xor i32 %or.i2527, %or.i2525
  %310 = xor i32 %xor771, %or.i2522
  %311 = xor i32 %310, %or.i2529
  %xor775 = xor i32 %311, -1640531484
  %or.i2530 = tail call i32 @llvm.fshl.i32(i32 %xor775, i32 %xor775, i32 11) #6
  %arrayidx778 = getelementptr i32, ptr %ctx, i32 93
  %312 = ptrtoint ptr %arrayidx778 to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %or.i2530, ptr %arrayidx778, align 4
  %xor779 = xor i32 %or.i2528, %or.i2526
  %313 = xor i32 %xor779, %or.i2523
  %314 = xor i32 %313, %or.i2530
  %xor783 = xor i32 %314, -1640531481
  %or.i2531 = tail call i32 @llvm.fshl.i32(i32 %xor783, i32 %xor783, i32 11) #6
  %arrayidx786 = getelementptr i32, ptr %ctx, i32 94
  %315 = ptrtoint ptr %arrayidx786 to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %or.i2531, ptr %arrayidx786, align 4
  %xor787 = xor i32 %or.i2529, %or.i2527
  %316 = xor i32 %xor787, %or.i2524
  %317 = xor i32 %316, %or.i2531
  %xor791 = xor i32 %317, -1640531482
  %or.i2532 = tail call i32 @llvm.fshl.i32(i32 %xor791, i32 %xor791, i32 11) #6
  %arrayidx794 = getelementptr i32, ptr %ctx, i32 95
  %318 = ptrtoint ptr %arrayidx794 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %or.i2532, ptr %arrayidx794, align 4
  %xor795 = xor i32 %or.i2530, %or.i2528
  %319 = xor i32 %xor795, %or.i2525
  %320 = xor i32 %319, %or.i2532
  %xor799 = xor i32 %320, -1640531495
  %or.i2533 = tail call i32 @llvm.fshl.i32(i32 %xor799, i32 %xor799, i32 11) #6
  %arrayidx802 = getelementptr i32, ptr %ctx, i32 96
  %321 = ptrtoint ptr %arrayidx802 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %or.i2533, ptr %arrayidx802, align 4
  %xor803 = xor i32 %or.i2531, %or.i2529
  %322 = xor i32 %xor803, %or.i2526
  %323 = xor i32 %322, %or.i2533
  %xor807 = xor i32 %323, -1640531496
  %or.i2534 = tail call i32 @llvm.fshl.i32(i32 %xor807, i32 %xor807, i32 11) #6
  %arrayidx810 = getelementptr i32, ptr %ctx, i32 97
  %324 = ptrtoint ptr %arrayidx810 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %or.i2534, ptr %arrayidx810, align 4
  %xor811 = xor i32 %or.i2532, %or.i2530
  %325 = xor i32 %xor811, %or.i2527
  %326 = xor i32 %325, %or.i2534
  %xor815 = xor i32 %326, -1640531493
  %or.i2535 = tail call i32 @llvm.fshl.i32(i32 %xor815, i32 %xor815, i32 11) #6
  %arrayidx818 = getelementptr i32, ptr %ctx, i32 98
  %327 = ptrtoint ptr %arrayidx818 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %or.i2535, ptr %arrayidx818, align 4
  %xor819 = xor i32 %or.i2533, %or.i2531
  %328 = xor i32 %xor819, %or.i2528
  %329 = xor i32 %328, %or.i2535
  %xor823 = xor i32 %329, -1640531494
  %or.i2536 = tail call i32 @llvm.fshl.i32(i32 %xor823, i32 %xor823, i32 11) #6
  %arrayidx826 = getelementptr i32, ptr %ctx, i32 99
  %330 = ptrtoint ptr %arrayidx826 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %or.i2536, ptr %arrayidx826, align 4
  %xor827 = xor i32 %or.i2534, %or.i2532
  %331 = xor i32 %xor827, %or.i2529
  %332 = xor i32 %331, %or.i2536
  %xor831 = xor i32 %332, -1640531491
  %or.i2537 = tail call i32 @llvm.fshl.i32(i32 %xor831, i32 %xor831, i32 11) #6
  %333 = ptrtoint ptr %add.ptr682 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %or.i2537, ptr %add.ptr682, align 4
  %xor835 = xor i32 %or.i2535, %or.i2533
  %334 = xor i32 %xor835, %or.i2530
  %335 = xor i32 %334, %or.i2537
  %xor839 = xor i32 %335, -1640531492
  %or.i2538 = tail call i32 @llvm.fshl.i32(i32 %xor839, i32 %xor839, i32 11) #6
  %arrayidx842 = getelementptr i32, ptr %ctx, i32 101
  %336 = ptrtoint ptr %arrayidx842 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %or.i2538, ptr %arrayidx842, align 4
  %xor843 = xor i32 %or.i2536, %or.i2534
  %337 = xor i32 %xor843, %or.i2531
  %338 = xor i32 %337, %or.i2538
  %xor847 = xor i32 %338, -1640531489
  %or.i2539 = tail call i32 @llvm.fshl.i32(i32 %xor847, i32 %xor847, i32 11) #6
  %arrayidx850 = getelementptr i32, ptr %ctx, i32 102
  %339 = ptrtoint ptr %arrayidx850 to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %or.i2539, ptr %arrayidx850, align 4
  %xor851 = xor i32 %or.i2537, %or.i2535
  %340 = xor i32 %xor851, %or.i2532
  %341 = xor i32 %340, %or.i2539
  %xor855 = xor i32 %341, -1640531490
  %or.i2540 = tail call i32 @llvm.fshl.i32(i32 %xor855, i32 %xor855, i32 11) #6
  %arrayidx858 = getelementptr i32, ptr %ctx, i32 103
  %342 = ptrtoint ptr %arrayidx858 to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 %or.i2540, ptr %arrayidx858, align 4
  %xor859 = xor i32 %or.i2538, %or.i2536
  %343 = xor i32 %xor859, %or.i2533
  %344 = xor i32 %343, %or.i2540
  %xor863 = xor i32 %344, -1640531503
  %or.i2541 = tail call i32 @llvm.fshl.i32(i32 %xor863, i32 %xor863, i32 11) #6
  %arrayidx866 = getelementptr i32, ptr %ctx, i32 104
  %345 = ptrtoint ptr %arrayidx866 to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %or.i2541, ptr %arrayidx866, align 4
  %xor867 = xor i32 %or.i2539, %or.i2537
  %346 = xor i32 %xor867, %or.i2534
  %347 = xor i32 %346, %or.i2541
  %xor871 = xor i32 %347, -1640531504
  %or.i2542 = tail call i32 @llvm.fshl.i32(i32 %xor871, i32 %xor871, i32 11) #6
  %arrayidx874 = getelementptr i32, ptr %ctx, i32 105
  %348 = ptrtoint ptr %arrayidx874 to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %or.i2542, ptr %arrayidx874, align 4
  %xor875 = xor i32 %or.i2540, %or.i2538
  %349 = xor i32 %xor875, %or.i2535
  %350 = xor i32 %349, %or.i2542
  %xor879 = xor i32 %350, -1640531501
  %or.i2543 = tail call i32 @llvm.fshl.i32(i32 %xor879, i32 %xor879, i32 11) #6
  %arrayidx882 = getelementptr i32, ptr %ctx, i32 106
  %351 = ptrtoint ptr %arrayidx882 to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %or.i2543, ptr %arrayidx882, align 4
  %xor883 = xor i32 %or.i2541, %or.i2539
  %352 = xor i32 %xor883, %or.i2536
  %353 = xor i32 %352, %or.i2543
  %xor887 = xor i32 %353, -1640531502
  %or.i2544 = tail call i32 @llvm.fshl.i32(i32 %xor887, i32 %xor887, i32 11) #6
  %arrayidx890 = getelementptr i32, ptr %ctx, i32 107
  %354 = ptrtoint ptr %arrayidx890 to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %or.i2544, ptr %arrayidx890, align 4
  %xor891 = xor i32 %or.i2542, %or.i2540
  %355 = xor i32 %xor891, %or.i2537
  %356 = xor i32 %355, %or.i2544
  %xor895 = xor i32 %356, -1640531499
  %or.i2545 = tail call i32 @llvm.fshl.i32(i32 %xor895, i32 %xor895, i32 11) #6
  %arrayidx898 = getelementptr i32, ptr %ctx, i32 108
  %357 = ptrtoint ptr %arrayidx898 to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %or.i2545, ptr %arrayidx898, align 4
  %xor899 = xor i32 %or.i2543, %or.i2541
  %358 = xor i32 %xor899, %or.i2538
  %359 = xor i32 %358, %or.i2545
  %xor903 = xor i32 %359, -1640531500
  %or.i2546 = tail call i32 @llvm.fshl.i32(i32 %xor903, i32 %xor903, i32 11) #6
  %arrayidx906 = getelementptr i32, ptr %ctx, i32 109
  %360 = ptrtoint ptr %arrayidx906 to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 %or.i2546, ptr %arrayidx906, align 4
  %xor907 = xor i32 %or.i2544, %or.i2542
  %361 = xor i32 %xor907, %or.i2539
  %362 = xor i32 %361, %or.i2546
  %xor911 = xor i32 %362, -1640531497
  %or.i2547 = tail call i32 @llvm.fshl.i32(i32 %xor911, i32 %xor911, i32 11) #6
  %arrayidx914 = getelementptr i32, ptr %ctx, i32 110
  %363 = ptrtoint ptr %arrayidx914 to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 %or.i2547, ptr %arrayidx914, align 4
  %xor915 = xor i32 %or.i2545, %or.i2543
  %364 = xor i32 %xor915, %or.i2540
  %365 = xor i32 %364, %or.i2547
  %xor919 = xor i32 %365, -1640531498
  %or.i2548 = tail call i32 @llvm.fshl.i32(i32 %xor919, i32 %xor919, i32 11) #6
  %arrayidx922 = getelementptr i32, ptr %ctx, i32 111
  %366 = ptrtoint ptr %arrayidx922 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 %or.i2548, ptr %arrayidx922, align 4
  %xor923 = xor i32 %or.i2546, %or.i2544
  %367 = xor i32 %xor923, %or.i2541
  %368 = xor i32 %367, %or.i2548
  %xor927 = xor i32 %368, -1640531511
  %or.i2549 = tail call i32 @llvm.fshl.i32(i32 %xor927, i32 %xor927, i32 11) #6
  %arrayidx930 = getelementptr i32, ptr %ctx, i32 112
  %369 = ptrtoint ptr %arrayidx930 to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %or.i2549, ptr %arrayidx930, align 4
  %xor931 = xor i32 %or.i2547, %or.i2545
  %370 = xor i32 %xor931, %or.i2542
  %371 = xor i32 %370, %or.i2549
  %xor935 = xor i32 %371, -1640531512
  %or.i2550 = tail call i32 @llvm.fshl.i32(i32 %xor935, i32 %xor935, i32 11) #6
  %arrayidx938 = getelementptr i32, ptr %ctx, i32 113
  %372 = ptrtoint ptr %arrayidx938 to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 %or.i2550, ptr %arrayidx938, align 4
  %xor939 = xor i32 %or.i2548, %or.i2546
  %373 = xor i32 %xor939, %or.i2543
  %374 = xor i32 %373, %or.i2550
  %xor943 = xor i32 %374, -1640531509
  %or.i2551 = tail call i32 @llvm.fshl.i32(i32 %xor943, i32 %xor943, i32 11) #6
  %arrayidx946 = getelementptr i32, ptr %ctx, i32 114
  %375 = ptrtoint ptr %arrayidx946 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 %or.i2551, ptr %arrayidx946, align 4
  %xor947 = xor i32 %or.i2549, %or.i2547
  %376 = xor i32 %xor947, %or.i2544
  %377 = xor i32 %376, %or.i2551
  %xor951 = xor i32 %377, -1640531510
  %or.i2552 = tail call i32 @llvm.fshl.i32(i32 %xor951, i32 %xor951, i32 11) #6
  %arrayidx954 = getelementptr i32, ptr %ctx, i32 115
  %378 = ptrtoint ptr %arrayidx954 to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %or.i2552, ptr %arrayidx954, align 4
  %xor955 = xor i32 %or.i2550, %or.i2548
  %379 = xor i32 %xor955, %or.i2545
  %380 = xor i32 %379, %or.i2552
  %xor959 = xor i32 %380, -1640531507
  %or.i2553 = tail call i32 @llvm.fshl.i32(i32 %xor959, i32 %xor959, i32 11) #6
  %arrayidx962 = getelementptr i32, ptr %ctx, i32 116
  %381 = ptrtoint ptr %arrayidx962 to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %or.i2553, ptr %arrayidx962, align 4
  %xor963 = xor i32 %or.i2551, %or.i2549
  %382 = xor i32 %xor963, %or.i2546
  %383 = xor i32 %382, %or.i2553
  %xor967 = xor i32 %383, -1640531508
  %or.i2554 = tail call i32 @llvm.fshl.i32(i32 %xor967, i32 %xor967, i32 11) #6
  %arrayidx970 = getelementptr i32, ptr %ctx, i32 117
  %384 = ptrtoint ptr %arrayidx970 to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 %or.i2554, ptr %arrayidx970, align 4
  %xor971 = xor i32 %or.i2552, %or.i2550
  %385 = xor i32 %xor971, %or.i2547
  %386 = xor i32 %385, %or.i2554
  %xor975 = xor i32 %386, -1640531505
  %or.i2555 = tail call i32 @llvm.fshl.i32(i32 %xor975, i32 %xor975, i32 11) #6
  %arrayidx978 = getelementptr i32, ptr %ctx, i32 118
  %387 = ptrtoint ptr %arrayidx978 to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 %or.i2555, ptr %arrayidx978, align 4
  %xor979 = xor i32 %or.i2553, %or.i2551
  %388 = xor i32 %xor979, %or.i2548
  %389 = xor i32 %388, %or.i2555
  %xor983 = xor i32 %389, -1640531506
  %or.i2556 = tail call i32 @llvm.fshl.i32(i32 %xor983, i32 %xor983, i32 11) #6
  %arrayidx986 = getelementptr i32, ptr %ctx, i32 119
  %390 = ptrtoint ptr %arrayidx986 to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 %or.i2556, ptr %arrayidx986, align 4
  %xor987 = xor i32 %or.i2554, %or.i2552
  %391 = xor i32 %xor987, %or.i2549
  %392 = xor i32 %391, %or.i2556
  %xor991 = xor i32 %392, -1640531519
  %or.i2557 = tail call i32 @llvm.fshl.i32(i32 %xor991, i32 %xor991, i32 11) #6
  %arrayidx994 = getelementptr i32, ptr %ctx, i32 120
  %393 = ptrtoint ptr %arrayidx994 to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 %or.i2557, ptr %arrayidx994, align 4
  %xor995 = xor i32 %or.i2555, %or.i2553
  %394 = xor i32 %xor995, %or.i2550
  %395 = xor i32 %394, %or.i2557
  %xor999 = xor i32 %395, -1640531520
  %or.i2558 = tail call i32 @llvm.fshl.i32(i32 %xor999, i32 %xor999, i32 11) #6
  %arrayidx1002 = getelementptr i32, ptr %ctx, i32 121
  %396 = ptrtoint ptr %arrayidx1002 to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %or.i2558, ptr %arrayidx1002, align 4
  %xor1003 = xor i32 %or.i2556, %or.i2554
  %397 = xor i32 %xor1003, %or.i2551
  %398 = xor i32 %397, %or.i2558
  %xor1007 = xor i32 %398, -1640531517
  %or.i2559 = tail call i32 @llvm.fshl.i32(i32 %xor1007, i32 %xor1007, i32 11) #6
  %arrayidx1010 = getelementptr i32, ptr %ctx, i32 122
  %399 = ptrtoint ptr %arrayidx1010 to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %or.i2559, ptr %arrayidx1010, align 4
  %xor1011 = xor i32 %or.i2557, %or.i2555
  %400 = xor i32 %xor1011, %or.i2552
  %401 = xor i32 %400, %or.i2559
  %xor1015 = xor i32 %401, -1640531518
  %or.i2560 = tail call i32 @llvm.fshl.i32(i32 %xor1015, i32 %xor1015, i32 11) #6
  %arrayidx1018 = getelementptr i32, ptr %ctx, i32 123
  %402 = ptrtoint ptr %arrayidx1018 to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 %or.i2560, ptr %arrayidx1018, align 4
  %xor1019 = xor i32 %or.i2558, %or.i2556
  %403 = xor i32 %xor1019, %or.i2553
  %404 = xor i32 %403, %or.i2560
  %xor1023 = xor i32 %404, -1640531515
  %or.i2561 = tail call i32 @llvm.fshl.i32(i32 %xor1023, i32 %xor1023, i32 11) #6
  %arrayidx1026 = getelementptr i32, ptr %ctx, i32 124
  %405 = ptrtoint ptr %arrayidx1026 to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %or.i2561, ptr %arrayidx1026, align 4
  %xor1027 = xor i32 %or.i2559, %or.i2557
  %406 = xor i32 %xor1027, %or.i2554
  %407 = xor i32 %406, %or.i2561
  %xor1031 = xor i32 %407, -1640531516
  %or.i2562 = tail call i32 @llvm.fshl.i32(i32 %xor1031, i32 %xor1031, i32 11) #6
  %arrayidx1034 = getelementptr i32, ptr %ctx, i32 125
  %408 = ptrtoint ptr %arrayidx1034 to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 %or.i2562, ptr %arrayidx1034, align 4
  %xor1035 = xor i32 %or.i2560, %or.i2558
  %409 = xor i32 %xor1035, %or.i2555
  %410 = xor i32 %409, %or.i2562
  %xor1039 = xor i32 %410, -1640531513
  %or.i2563 = tail call i32 @llvm.fshl.i32(i32 %xor1039, i32 %xor1039, i32 11) #6
  %arrayidx1042 = getelementptr i32, ptr %ctx, i32 126
  %411 = ptrtoint ptr %arrayidx1042 to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 %or.i2563, ptr %arrayidx1042, align 4
  %xor1043 = xor i32 %or.i2561, %or.i2559
  %412 = xor i32 %xor1043, %or.i2556
  %413 = xor i32 %412, %or.i2563
  %xor1047 = xor i32 %413, -1640531514
  %or.i2564 = tail call i32 @llvm.fshl.i32(i32 %xor1047, i32 %xor1047, i32 11) #6
  %arrayidx1050 = getelementptr i32, ptr %ctx, i32 127
  %414 = ptrtoint ptr %arrayidx1050 to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 %or.i2564, ptr %arrayidx1050, align 4
  %xor1051 = xor i32 %or.i2562, %or.i2560
  %415 = xor i32 %xor1051, %or.i2557
  %416 = xor i32 %415, %or.i2564
  %xor1055 = xor i32 %416, -1640531655
  %or.i2565 = tail call i32 @llvm.fshl.i32(i32 %xor1055, i32 %xor1055, i32 11) #6
  %arrayidx1058 = getelementptr i32, ptr %ctx, i32 128
  %417 = ptrtoint ptr %arrayidx1058 to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 %or.i2565, ptr %arrayidx1058, align 4
  %xor1059 = xor i32 %or.i2563, %or.i2561
  %418 = xor i32 %xor1059, %or.i2558
  %419 = xor i32 %418, %or.i2565
  %xor1063 = xor i32 %419, -1640531656
  %or.i2566 = tail call i32 @llvm.fshl.i32(i32 %xor1063, i32 %xor1063, i32 11) #6
  %arrayidx1066 = getelementptr i32, ptr %ctx, i32 129
  %420 = ptrtoint ptr %arrayidx1066 to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 %or.i2566, ptr %arrayidx1066, align 4
  %xor1067 = xor i32 %or.i2564, %or.i2562
  %421 = xor i32 %xor1067, %or.i2559
  %422 = xor i32 %421, %or.i2566
  %xor1071 = xor i32 %422, -1640531653
  %or.i2567 = tail call i32 @llvm.fshl.i32(i32 %xor1071, i32 %xor1071, i32 11) #6
  %arrayidx1074 = getelementptr i32, ptr %ctx, i32 130
  %423 = ptrtoint ptr %arrayidx1074 to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 %or.i2567, ptr %arrayidx1074, align 4
  %xor1075 = xor i32 %or.i2565, %or.i2563
  %424 = xor i32 %xor1075, %or.i2560
  %425 = xor i32 %424, %or.i2567
  %xor1079 = xor i32 %425, -1640531654
  %or.i2568 = tail call i32 @llvm.fshl.i32(i32 %xor1079, i32 %xor1079, i32 11) #6
  %arrayidx1082 = getelementptr i32, ptr %ctx, i32 131
  %426 = ptrtoint ptr %arrayidx1082 to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 %or.i2568, ptr %arrayidx1082, align 4
  tail call fastcc void @__serpent_setkey_sbox(i32 noundef %or.i2567, i32 noundef %or.i2568, i32 noundef %or.i2565, i32 noundef %or.i2566, ptr noundef %ctx)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @__serpent_setkey_sbox(i32 noundef %r0, i32 noundef %r1, i32 noundef %r3, i32 noundef %r4, ptr noundef %k) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i32, ptr %k, i32 100
  %xor = xor i32 %r4, %r1
  %or = or i32 %r3, %r1
  %and = and i32 %r4, %r3
  %xor1 = xor i32 %r3, %r0
  %xor2 = xor i32 %xor, %r0
  %and3 = and i32 %xor, %or
  %xor4 = xor i32 %xor2, %or
  %or5 = or i32 %and, %xor1
  %xor6 = xor i32 %and, %or
  %xor7 = xor i32 %and3, %or5
  %and8 = and i32 %or5, %or
  %xor10 = xor i32 %xor2, %and
  %or11 = or i32 %xor7, %xor6
  %and12 = and i32 %xor4, %xor7
  %xor13 = xor i32 %or11, %xor10
  %xor14 = xor i32 %and8, %xor10
  %xor15 = xor i32 %and12, %xor10
  %arrayidx = getelementptr i32, ptr %k, i32 128
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %xor15, ptr %arrayidx, align 4
  %arrayidx16 = getelementptr i32, ptr %k, i32 129
  %1 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %xor13, ptr %arrayidx16, align 4
  %arrayidx17 = getelementptr i32, ptr %k, i32 130
  %2 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %xor7, ptr %arrayidx17, align 4
  %arrayidx19 = getelementptr i32, ptr %k, i32 131
  %3 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %xor14, ptr %arrayidx19, align 4
  %arrayidx21 = getelementptr i32, ptr %k, i32 124
  %4 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx21, align 4
  %arrayidx22 = getelementptr i32, ptr %k, i32 125
  %6 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx22, align 4
  %arrayidx23 = getelementptr i32, ptr %k, i32 126
  %8 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx23, align 4
  %arrayidx25 = getelementptr i32, ptr %k, i32 127
  %10 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx25, align 4
  %and26 = and i32 %11, %5
  %xor28 = xor i32 %and26, %9
  %or29 = or i32 %11, %9
  %xor27 = xor i32 %7, %5
  %xor30 = xor i32 %xor27, %11
  %xor31 = xor i32 %xor28, %11
  %or32 = or i32 %or29, %xor30
  %xor33 = xor i32 %or32, %7
  %and34 = and i32 %xor30, %7
  %xor35 = xor i32 %and34, %xor31
  %and36 = and i32 %xor33, %xor31
  %xor37 = xor i32 %xor33, %xor28
  %xor38 = xor i32 %and36, %xor30
  %or39 = or i32 %xor35, %xor28
  %neg = xor i32 %xor35, -1
  %xor41 = xor i32 %or39, %xor30
  store i32 %neg, ptr %arrayidx21, align 4
  store i32 %xor37, ptr %arrayidx22, align 4
  store i32 %xor41, ptr %arrayidx23, align 4
  store i32 %xor38, ptr %arrayidx25, align 4
  %arrayidx48 = getelementptr i32, ptr %k, i32 120
  %12 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx48, align 4
  %arrayidx49 = getelementptr i32, ptr %k, i32 121
  %14 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx49, align 4
  %arrayidx50 = getelementptr i32, ptr %k, i32 122
  %16 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx50, align 4
  %arrayidx52 = getelementptr i32, ptr %k, i32 123
  %18 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx52, align 4
  %or53 = or i32 %15, %13
  %xor54 = xor i32 %17, %or53
  %neg55 = xor i32 %19, -1
  %xor56 = xor i32 %15, %13
  %xor57 = xor i32 %xor54, %13
  %or59 = or i32 %xor56, %neg55
  %xor60 = xor i32 %or59, %xor57
  %and61 = and i32 %xor57, %neg55
  %xor62 = xor i32 %xor56, %neg55
  %xor63 = xor i32 %xor54, %neg55
  %xor64 = xor i32 %and61, %xor62
  %and65 = and i32 %xor60, %xor54
  %xor66 = xor i32 %and65, %xor62
  %and67 = and i32 %and65, %xor62
  %xor69 = xor i32 %xor63, %and67
  store i32 %xor60, ptr %arrayidx48, align 4
  store i32 %xor64, ptr %arrayidx49, align 4
  store i32 %xor66, ptr %arrayidx50, align 4
  store i32 %xor69, ptr %arrayidx52, align 4
  %arrayidx76 = getelementptr i32, ptr %k, i32 116
  %20 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx76, align 4
  %arrayidx77 = getelementptr i32, ptr %k, i32 117
  %22 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx77, align 4
  %arrayidx78 = getelementptr i32, ptr %k, i32 118
  %24 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx78, align 4
  %arrayidx80 = getelementptr i32, ptr %k, i32 119
  %26 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx80, align 4
  %xor81 = xor i32 %27, %21
  %xor82 = xor i32 %25, %23
  %xor83 = xor i32 %25, %21
  %and84 = and i32 %xor81, %21
  %or85 = or i32 %xor81, %xor82
  %neg86 = xor i32 %23, -1
  %xor87 = xor i32 %and84, %or85
  %xor88 = xor i32 %or85, %xor83
  %xor89 = xor i32 %xor81, %neg86
  %xor90 = xor i32 %xor87, %neg86
  %and91 = and i32 %xor87, %xor83
  %xor92 = xor i32 %xor90, %xor88
  %xor93 = xor i32 %and91, %xor89
  %and94 = and i32 %xor88, %xor89
  %xor95 = xor i32 %and94, %xor87
  %xor97 = xor i32 %xor93, %xor88
  store i32 %xor93, ptr %arrayidx76, align 4
  store i32 %xor92, ptr %arrayidx77, align 4
  store i32 %xor97, ptr %arrayidx78, align 4
  store i32 %xor95, ptr %arrayidx80, align 4
  %arrayidx104 = getelementptr i32, ptr %k, i32 112
  %28 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx104, align 4
  %arrayidx105 = getelementptr i32, ptr %k, i32 113
  %30 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx105, align 4
  %arrayidx106 = getelementptr i32, ptr %k, i32 114
  %32 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx106, align 4
  %arrayidx108 = getelementptr i32, ptr %k, i32 115
  %34 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx108, align 4
  %neg109 = xor i32 %31, -1
  %neg110 = xor i32 %29, -1
  %and111 = and i32 %33, %neg109
  %xor112 = xor i32 %and111, %35
  %or113 = or i32 %35, %neg109
  %xor114 = xor i32 %33, %neg109
  %xor115 = xor i32 %or113, %33
  %xor116 = xor i32 %or113, %neg110
  %or117 = or i32 %xor112, %neg110
  %and118 = and i32 %xor115, %or117
  %xor119 = xor i32 %or117, %xor114
  %and121 = and i32 %xor119, %xor116
  %xor120 = xor i32 %xor112, %xor114
  %xor122 = xor i32 %xor120, %xor116
  %xor123 = xor i32 %xor122, %and118
  %xor124 = xor i32 %and121, %xor112
  %or125 = or i32 %xor122, %xor119
  %xor127 = xor i32 %or125, %xor112
  store i32 %xor127, ptr %arrayidx104, align 4
  store i32 %xor123, ptr %arrayidx105, align 4
  store i32 %xor124, ptr %arrayidx106, align 4
  store i32 %xor119, ptr %arrayidx108, align 4
  %arrayidx134 = getelementptr i32, ptr %k, i32 108
  %36 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx134, align 4
  %arrayidx135 = getelementptr i32, ptr %k, i32 109
  %38 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx135, align 4
  %arrayidx136 = getelementptr i32, ptr %k, i32 110
  %40 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx136, align 4
  %arrayidx138 = getelementptr i32, ptr %k, i32 111
  %42 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx138, align 4
  %or139 = or i32 %43, %37
  %xor140 = xor i32 %43, %37
  %xor141 = xor i32 %43, %41
  %neg142 = xor i32 %xor141, -1
  %xor143 = xor i32 %or139, %39
  %and144 = and i32 %xor140, %39
  %xor145 = xor i32 %and144, %neg142
  %xor146 = xor i32 %xor140, %41
  %xor147 = xor i32 %xor143, %xor140
  %or148 = or i32 %xor147, %neg142
  %xor149 = xor i32 %xor143, %41
  %and150 = and i32 %xor145, %xor146
  %xor151 = xor i32 %and150, %xor143
  %neg152 = xor i32 %and144, %xor141
  %xor153 = xor i32 %and150, %or148
  %xor155 = xor i32 %neg152, %xor153
  store i32 %xor153, ptr %arrayidx134, align 4
  store i32 %xor155, ptr %arrayidx135, align 4
  store i32 %xor151, ptr %arrayidx136, align 4
  store i32 %xor149, ptr %arrayidx138, align 4
  %arrayidx162 = getelementptr i32, ptr %k, i32 104
  %44 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx162, align 4
  %arrayidx163 = getelementptr i32, ptr %k, i32 105
  %46 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx163, align 4
  %arrayidx164 = getelementptr i32, ptr %k, i32 106
  %48 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx164, align 4
  %arrayidx166 = getelementptr i32, ptr %k, i32 107
  %50 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx166, align 4
  %xor167 = xor i32 %47, %45
  %xor168 = xor i32 %51, %45
  %and170 = and i32 %xor167, %47
  %or171 = or i32 %xor168, %xor167
  %52 = xor i32 %51, %49
  %xor172 = xor i32 %52, -1
  %xor173 = xor i32 %or171, %xor172
  %xor174 = xor i32 %xor167, %xor172
  %xor175 = xor i32 %and170, %xor172
  %or176 = or i32 %xor174, %and170
  %xor177 = xor i32 %and170, %49
  %and178 = and i32 %xor173, %49
  %xor179 = xor i32 %and178, %or176
  %or180 = or i32 %or176, %xor173
  %neg181 = xor i32 %or171, %52
  %xor182 = xor i32 %neg181, %xor179
  %xor184 = xor i32 %xor177, %or180
  store i32 %xor184, ptr %arrayidx162, align 4
  store i32 %xor179, ptr %arrayidx163, align 4
  store i32 %xor175, ptr %arrayidx164, align 4
  store i32 %xor182, ptr %arrayidx166, align 4
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr, align 4
  %arrayidx192 = getelementptr i32, ptr %k, i32 101
  %55 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx192, align 4
  %arrayidx193 = getelementptr i32, ptr %k, i32 102
  %57 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx193, align 4
  %arrayidx195 = getelementptr i32, ptr %k, i32 103
  %59 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx195, align 4
  %neg196 = xor i32 %60, -1
  %xor197 = xor i32 %56, %54
  %and198 = and i32 %58, %54
  %xor199 = xor i32 %and198, %neg196
  %or200 = or i32 %54, %neg196
  %xor201 = xor i32 %58, %xor197
  %xor202 = xor i32 %or200, %xor197
  %and203 = and i32 %xor199, %xor197
  %and205 = and i32 %xor202, %xor201
  %or206 = or i32 %xor202, %and203
  %61 = xor i32 %xor201, %xor199
  %neg207 = xor i32 %61, -1
  %xor208 = xor i32 %or206, %neg207
  %xor209 = xor i32 %54, %neg207
  %xor210 = xor i32 %and205, %neg207
  %or212 = or i32 %and205, %and203
  store i32 %xor209, ptr %add.ptr, align 4
  store i32 %or212, ptr %arrayidx192, align 4
  store i32 %xor210, ptr %arrayidx193, align 4
  store i32 %xor208, ptr %arrayidx195, align 4
  %arrayidx219 = getelementptr i32, ptr %k, i32 96
  %62 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx219, align 4
  %arrayidx220 = getelementptr i32, ptr %k, i32 97
  %64 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx220, align 4
  %arrayidx221 = getelementptr i32, ptr %k, i32 98
  %66 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx221, align 4
  %arrayidx223 = getelementptr i32, ptr %k, i32 99
  %68 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx223, align 4
  %xor224 = xor i32 %69, %65
  %or225 = or i32 %69, %63
  %and226 = and i32 %65, %63
  %xor227 = xor i32 %67, %63
  %xor228 = xor i32 %xor224, %67
  %and229 = and i32 %xor224, %or225
  %xor230 = xor i32 %xor228, %or225
  %or231 = or i32 %xor227, %and226
  %xor232 = xor i32 %or225, %and226
  %xor233 = xor i32 %and229, %or231
  %and234 = and i32 %or231, %or225
  %xor236 = xor i32 %xor228, %and226
  %or237 = or i32 %xor233, %xor232
  %and238 = and i32 %xor230, %xor233
  %xor239 = xor i32 %or237, %xor236
  %xor240 = xor i32 %xor236, %and234
  %xor242 = xor i32 %and238, %xor236
  store i32 %xor242, ptr %arrayidx219, align 4
  store i32 %xor239, ptr %arrayidx220, align 4
  store i32 %xor233, ptr %arrayidx221, align 4
  store i32 %xor240, ptr %arrayidx223, align 4
  %arrayidx249 = getelementptr i32, ptr %k, i32 92
  %70 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx249, align 4
  %arrayidx250 = getelementptr i32, ptr %k, i32 93
  %72 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx250, align 4
  %arrayidx251 = getelementptr i32, ptr %k, i32 94
  %74 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx251, align 4
  %arrayidx253 = getelementptr i32, ptr %k, i32 95
  %76 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx253, align 4
  %and254 = and i32 %77, %71
  %xor256 = xor i32 %and254, %75
  %or257 = or i32 %77, %75
  %xor255 = xor i32 %73, %71
  %xor258 = xor i32 %xor255, %77
  %xor259 = xor i32 %xor256, %77
  %or260 = or i32 %or257, %xor258
  %xor261 = xor i32 %or260, %73
  %and262 = and i32 %xor258, %73
  %xor263 = xor i32 %and262, %xor259
  %and264 = and i32 %xor261, %xor259
  %xor265 = xor i32 %xor261, %xor256
  %xor266 = xor i32 %and264, %xor258
  %or267 = or i32 %xor263, %xor256
  %neg268 = xor i32 %xor263, -1
  %xor270 = xor i32 %or267, %xor258
  store i32 %neg268, ptr %arrayidx249, align 4
  store i32 %xor265, ptr %arrayidx250, align 4
  store i32 %xor270, ptr %arrayidx251, align 4
  store i32 %xor266, ptr %arrayidx253, align 4
  %arrayidx277 = getelementptr i32, ptr %k, i32 88
  %78 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx277, align 4
  %arrayidx278 = getelementptr i32, ptr %k, i32 89
  %80 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx278, align 4
  %arrayidx279 = getelementptr i32, ptr %k, i32 90
  %82 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx279, align 4
  %arrayidx281 = getelementptr i32, ptr %k, i32 91
  %84 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx281, align 4
  %or282 = or i32 %81, %79
  %xor283 = xor i32 %83, %or282
  %neg284 = xor i32 %85, -1
  %xor285 = xor i32 %81, %79
  %xor286 = xor i32 %xor283, %79
  %or288 = or i32 %xor285, %neg284
  %xor289 = xor i32 %or288, %xor286
  %and290 = and i32 %xor286, %neg284
  %xor291 = xor i32 %xor285, %neg284
  %xor292 = xor i32 %xor283, %neg284
  %xor293 = xor i32 %and290, %xor291
  %and294 = and i32 %xor289, %xor283
  %xor295 = xor i32 %and294, %xor291
  %and296 = and i32 %and294, %xor291
  %xor298 = xor i32 %xor292, %and296
  store i32 %xor289, ptr %arrayidx277, align 4
  store i32 %xor293, ptr %arrayidx278, align 4
  store i32 %xor295, ptr %arrayidx279, align 4
  store i32 %xor298, ptr %arrayidx281, align 4
  %arrayidx305 = getelementptr i32, ptr %k, i32 84
  %86 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx305, align 4
  %arrayidx306 = getelementptr i32, ptr %k, i32 85
  %88 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx306, align 4
  %arrayidx307 = getelementptr i32, ptr %k, i32 86
  %90 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx307, align 4
  %arrayidx309 = getelementptr i32, ptr %k, i32 87
  %92 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx309, align 4
  %xor310 = xor i32 %93, %87
  %xor311 = xor i32 %91, %89
  %xor312 = xor i32 %91, %87
  %and313 = and i32 %xor310, %87
  %or314 = or i32 %xor310, %xor311
  %neg315 = xor i32 %89, -1
  %xor316 = xor i32 %and313, %or314
  %xor317 = xor i32 %or314, %xor312
  %xor318 = xor i32 %xor310, %neg315
  %xor319 = xor i32 %xor316, %neg315
  %and320 = and i32 %xor316, %xor312
  %xor321 = xor i32 %xor319, %xor317
  %xor322 = xor i32 %and320, %xor318
  %and323 = and i32 %xor317, %xor318
  %xor324 = xor i32 %and323, %xor316
  %xor326 = xor i32 %xor322, %xor317
  store i32 %xor322, ptr %arrayidx305, align 4
  store i32 %xor321, ptr %arrayidx306, align 4
  store i32 %xor326, ptr %arrayidx307, align 4
  store i32 %xor324, ptr %arrayidx309, align 4
  %arrayidx333 = getelementptr i32, ptr %k, i32 80
  %94 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx333, align 4
  %arrayidx334 = getelementptr i32, ptr %k, i32 81
  %96 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx334, align 4
  %arrayidx335 = getelementptr i32, ptr %k, i32 82
  %98 = ptrtoint ptr %arrayidx335 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx335, align 4
  %arrayidx337 = getelementptr i32, ptr %k, i32 83
  %100 = ptrtoint ptr %arrayidx337 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx337, align 4
  %neg338 = xor i32 %97, -1
  %neg339 = xor i32 %95, -1
  %and340 = and i32 %99, %neg338
  %xor341 = xor i32 %and340, %101
  %or342 = or i32 %101, %neg338
  %xor343 = xor i32 %99, %neg338
  %xor344 = xor i32 %or342, %99
  %xor345 = xor i32 %or342, %neg339
  %or346 = or i32 %xor341, %neg339
  %and347 = and i32 %xor344, %or346
  %xor348 = xor i32 %or346, %xor343
  %and350 = and i32 %xor348, %xor345
  %xor349 = xor i32 %xor341, %xor343
  %xor351 = xor i32 %xor349, %xor345
  %xor352 = xor i32 %xor351, %and347
  %xor353 = xor i32 %and350, %xor341
  %or354 = or i32 %xor351, %xor348
  %xor356 = xor i32 %or354, %xor341
  store i32 %xor356, ptr %arrayidx333, align 4
  store i32 %xor352, ptr %arrayidx334, align 4
  store i32 %xor353, ptr %arrayidx335, align 4
  store i32 %xor348, ptr %arrayidx337, align 4
  %arrayidx363 = getelementptr i32, ptr %k, i32 76
  %102 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx363, align 4
  %arrayidx364 = getelementptr i32, ptr %k, i32 77
  %104 = ptrtoint ptr %arrayidx364 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx364, align 4
  %arrayidx365 = getelementptr i32, ptr %k, i32 78
  %106 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx365, align 4
  %arrayidx367 = getelementptr i32, ptr %k, i32 79
  %108 = ptrtoint ptr %arrayidx367 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx367, align 4
  %or368 = or i32 %109, %103
  %xor369 = xor i32 %109, %103
  %xor370 = xor i32 %109, %107
  %neg371 = xor i32 %xor370, -1
  %xor372 = xor i32 %or368, %105
  %and373 = and i32 %xor369, %105
  %xor374 = xor i32 %and373, %neg371
  %xor375 = xor i32 %xor369, %107
  %xor376 = xor i32 %xor372, %xor369
  %or377 = or i32 %xor376, %neg371
  %xor378 = xor i32 %xor372, %107
  %and379 = and i32 %xor374, %xor375
  %xor380 = xor i32 %and379, %xor372
  %neg381 = xor i32 %and373, %xor370
  %xor382 = xor i32 %and379, %or377
  %xor384 = xor i32 %neg381, %xor382
  store i32 %xor382, ptr %arrayidx363, align 4
  store i32 %xor384, ptr %arrayidx364, align 4
  store i32 %xor380, ptr %arrayidx365, align 4
  store i32 %xor378, ptr %arrayidx367, align 4
  %arrayidx391 = getelementptr i32, ptr %k, i32 72
  %110 = ptrtoint ptr %arrayidx391 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx391, align 4
  %arrayidx392 = getelementptr i32, ptr %k, i32 73
  %112 = ptrtoint ptr %arrayidx392 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx392, align 4
  %arrayidx393 = getelementptr i32, ptr %k, i32 74
  %114 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx393, align 4
  %arrayidx395 = getelementptr i32, ptr %k, i32 75
  %116 = ptrtoint ptr %arrayidx395 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx395, align 4
  %add.ptr396 = getelementptr i32, ptr %k, i32 50
  %xor397 = xor i32 %113, %111
  %xor398 = xor i32 %117, %111
  %and400 = and i32 %xor397, %113
  %or401 = or i32 %xor398, %xor397
  %118 = xor i32 %117, %115
  %xor402 = xor i32 %118, -1
  %xor403 = xor i32 %or401, %xor402
  %xor404 = xor i32 %xor397, %xor402
  %xor405 = xor i32 %and400, %xor402
  %or406 = or i32 %xor404, %and400
  %xor407 = xor i32 %and400, %115
  %and408 = and i32 %xor403, %115
  %xor409 = xor i32 %and408, %or406
  %or410 = or i32 %or406, %xor403
  %neg411 = xor i32 %or401, %118
  %xor412 = xor i32 %neg411, %xor409
  %xor414 = xor i32 %xor407, %or410
  store i32 %xor414, ptr %arrayidx391, align 4
  store i32 %xor409, ptr %arrayidx392, align 4
  store i32 %xor405, ptr %arrayidx393, align 4
  store i32 %xor412, ptr %arrayidx395, align 4
  %arrayidx421 = getelementptr i32, ptr %k, i32 68
  %119 = ptrtoint ptr %arrayidx421 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx421, align 4
  %arrayidx422 = getelementptr i32, ptr %k, i32 69
  %121 = ptrtoint ptr %arrayidx422 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx422, align 4
  %arrayidx423 = getelementptr i32, ptr %k, i32 70
  %123 = ptrtoint ptr %arrayidx423 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx423, align 4
  %arrayidx425 = getelementptr i32, ptr %k, i32 71
  %125 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx425, align 4
  %neg426 = xor i32 %126, -1
  %xor427 = xor i32 %122, %120
  %and428 = and i32 %124, %120
  %xor429 = xor i32 %and428, %neg426
  %or430 = or i32 %120, %neg426
  %xor431 = xor i32 %124, %xor427
  %xor432 = xor i32 %or430, %xor427
  %and433 = and i32 %xor429, %xor427
  %and435 = and i32 %xor432, %xor431
  %or436 = or i32 %xor432, %and433
  %127 = xor i32 %xor431, %xor429
  %neg437 = xor i32 %127, -1
  %xor438 = xor i32 %or436, %neg437
  %xor439 = xor i32 %120, %neg437
  %xor440 = xor i32 %and435, %neg437
  %or442 = or i32 %and435, %and433
  store i32 %xor439, ptr %arrayidx421, align 4
  store i32 %or442, ptr %arrayidx422, align 4
  store i32 %xor440, ptr %arrayidx423, align 4
  store i32 %xor438, ptr %arrayidx425, align 4
  %arrayidx449 = getelementptr i32, ptr %k, i32 64
  %128 = ptrtoint ptr %arrayidx449 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx449, align 4
  %arrayidx450 = getelementptr i32, ptr %k, i32 65
  %130 = ptrtoint ptr %arrayidx450 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx450, align 4
  %arrayidx451 = getelementptr i32, ptr %k, i32 66
  %132 = ptrtoint ptr %arrayidx451 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx451, align 4
  %arrayidx453 = getelementptr i32, ptr %k, i32 67
  %134 = ptrtoint ptr %arrayidx453 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx453, align 4
  %xor454 = xor i32 %135, %131
  %or455 = or i32 %135, %129
  %and456 = and i32 %131, %129
  %xor457 = xor i32 %133, %129
  %xor458 = xor i32 %xor454, %133
  %and459 = and i32 %xor454, %or455
  %xor460 = xor i32 %xor458, %or455
  %or461 = or i32 %xor457, %and456
  %xor462 = xor i32 %or455, %and456
  %xor463 = xor i32 %and459, %or461
  %and464 = and i32 %or461, %or455
  %xor466 = xor i32 %xor458, %and456
  %or467 = or i32 %xor463, %xor462
  %and468 = and i32 %xor460, %xor463
  %xor469 = xor i32 %or467, %xor466
  %xor470 = xor i32 %xor466, %and464
  %xor472 = xor i32 %and468, %xor466
  store i32 %xor472, ptr %arrayidx449, align 4
  store i32 %xor469, ptr %arrayidx450, align 4
  store i32 %xor463, ptr %arrayidx451, align 4
  store i32 %xor470, ptr %arrayidx453, align 4
  %arrayidx479 = getelementptr i32, ptr %k, i32 60
  %136 = ptrtoint ptr %arrayidx479 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx479, align 4
  %arrayidx480 = getelementptr i32, ptr %k, i32 61
  %138 = ptrtoint ptr %arrayidx480 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx480, align 4
  %arrayidx481 = getelementptr i32, ptr %k, i32 62
  %140 = ptrtoint ptr %arrayidx481 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx481, align 4
  %arrayidx483 = getelementptr i32, ptr %k, i32 63
  %142 = ptrtoint ptr %arrayidx483 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx483, align 4
  %and484 = and i32 %143, %137
  %xor486 = xor i32 %and484, %141
  %or487 = or i32 %143, %141
  %xor485 = xor i32 %139, %137
  %xor488 = xor i32 %xor485, %143
  %xor489 = xor i32 %xor486, %143
  %or490 = or i32 %or487, %xor488
  %xor491 = xor i32 %or490, %139
  %and492 = and i32 %xor488, %139
  %xor493 = xor i32 %and492, %xor489
  %and494 = and i32 %xor491, %xor489
  %xor495 = xor i32 %xor491, %xor486
  %xor496 = xor i32 %and494, %xor488
  %or497 = or i32 %xor493, %xor486
  %neg498 = xor i32 %xor493, -1
  %xor500 = xor i32 %or497, %xor488
  store i32 %neg498, ptr %arrayidx479, align 4
  store i32 %xor495, ptr %arrayidx480, align 4
  store i32 %xor500, ptr %arrayidx481, align 4
  store i32 %xor496, ptr %arrayidx483, align 4
  %arrayidx507 = getelementptr i32, ptr %k, i32 56
  %144 = ptrtoint ptr %arrayidx507 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx507, align 4
  %arrayidx508 = getelementptr i32, ptr %k, i32 57
  %146 = ptrtoint ptr %arrayidx508 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx508, align 4
  %arrayidx509 = getelementptr i32, ptr %k, i32 58
  %148 = ptrtoint ptr %arrayidx509 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx509, align 4
  %arrayidx511 = getelementptr i32, ptr %k, i32 59
  %150 = ptrtoint ptr %arrayidx511 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx511, align 4
  %or512 = or i32 %147, %145
  %xor513 = xor i32 %149, %or512
  %neg514 = xor i32 %151, -1
  %xor515 = xor i32 %147, %145
  %xor516 = xor i32 %xor513, %145
  %or518 = or i32 %xor515, %neg514
  %xor519 = xor i32 %or518, %xor516
  %and520 = and i32 %xor516, %neg514
  %xor521 = xor i32 %xor515, %neg514
  %xor522 = xor i32 %xor513, %neg514
  %xor523 = xor i32 %and520, %xor521
  %and524 = and i32 %xor519, %xor513
  %xor525 = xor i32 %and524, %xor521
  %and526 = and i32 %and524, %xor521
  %xor528 = xor i32 %xor522, %and526
  store i32 %xor519, ptr %arrayidx507, align 4
  store i32 %xor523, ptr %arrayidx508, align 4
  store i32 %xor525, ptr %arrayidx509, align 4
  store i32 %xor528, ptr %arrayidx511, align 4
  %arrayidx535 = getelementptr i32, ptr %k, i32 52
  %152 = ptrtoint ptr %arrayidx535 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx535, align 4
  %arrayidx536 = getelementptr i32, ptr %k, i32 53
  %154 = ptrtoint ptr %arrayidx536 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx536, align 4
  %arrayidx537 = getelementptr i32, ptr %k, i32 54
  %156 = ptrtoint ptr %arrayidx537 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx537, align 4
  %arrayidx539 = getelementptr i32, ptr %k, i32 55
  %158 = ptrtoint ptr %arrayidx539 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx539, align 4
  %xor540 = xor i32 %159, %153
  %xor541 = xor i32 %157, %155
  %xor542 = xor i32 %157, %153
  %and543 = and i32 %xor540, %153
  %or544 = or i32 %xor540, %xor541
  %neg545 = xor i32 %155, -1
  %xor546 = xor i32 %and543, %or544
  %xor547 = xor i32 %or544, %xor542
  %xor548 = xor i32 %xor540, %neg545
  %xor549 = xor i32 %xor546, %neg545
  %and550 = and i32 %xor546, %xor542
  %xor551 = xor i32 %xor549, %xor547
  %xor552 = xor i32 %and550, %xor548
  %and553 = and i32 %xor547, %xor548
  %xor554 = xor i32 %and553, %xor546
  %xor556 = xor i32 %xor552, %xor547
  store i32 %xor552, ptr %arrayidx535, align 4
  store i32 %xor551, ptr %arrayidx536, align 4
  store i32 %xor556, ptr %arrayidx537, align 4
  store i32 %xor554, ptr %arrayidx539, align 4
  %arrayidx563 = getelementptr i32, ptr %k, i32 48
  %160 = ptrtoint ptr %arrayidx563 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx563, align 4
  %arrayidx564 = getelementptr i32, ptr %k, i32 49
  %162 = ptrtoint ptr %arrayidx564 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx564, align 4
  %164 = ptrtoint ptr %add.ptr396 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %add.ptr396, align 4
  %arrayidx567 = getelementptr i32, ptr %k, i32 51
  %166 = ptrtoint ptr %arrayidx567 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx567, align 4
  %neg568 = xor i32 %163, -1
  %neg569 = xor i32 %161, -1
  %and570 = and i32 %165, %neg568
  %xor571 = xor i32 %and570, %167
  %or572 = or i32 %167, %neg568
  %xor573 = xor i32 %165, %neg568
  %xor574 = xor i32 %or572, %165
  %xor575 = xor i32 %or572, %neg569
  %or576 = or i32 %xor571, %neg569
  %and577 = and i32 %xor574, %or576
  %xor578 = xor i32 %or576, %xor573
  %and580 = and i32 %xor578, %xor575
  %xor579 = xor i32 %xor571, %xor573
  %xor581 = xor i32 %xor579, %xor575
  %xor582 = xor i32 %xor581, %and577
  %xor583 = xor i32 %and580, %xor571
  %or584 = or i32 %xor581, %xor578
  %xor586 = xor i32 %or584, %xor571
  store i32 %xor586, ptr %arrayidx563, align 4
  store i32 %xor582, ptr %arrayidx564, align 4
  store i32 %xor583, ptr %add.ptr396, align 4
  store i32 %xor578, ptr %arrayidx567, align 4
  %arrayidx593 = getelementptr i32, ptr %k, i32 44
  %168 = ptrtoint ptr %arrayidx593 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx593, align 4
  %arrayidx594 = getelementptr i32, ptr %k, i32 45
  %170 = ptrtoint ptr %arrayidx594 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx594, align 4
  %arrayidx595 = getelementptr i32, ptr %k, i32 46
  %172 = ptrtoint ptr %arrayidx595 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx595, align 4
  %arrayidx597 = getelementptr i32, ptr %k, i32 47
  %174 = ptrtoint ptr %arrayidx597 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx597, align 4
  %or598 = or i32 %175, %169
  %xor599 = xor i32 %175, %169
  %xor600 = xor i32 %175, %173
  %neg601 = xor i32 %xor600, -1
  %xor602 = xor i32 %or598, %171
  %and603 = and i32 %xor599, %171
  %xor604 = xor i32 %and603, %neg601
  %xor605 = xor i32 %xor599, %173
  %xor606 = xor i32 %xor602, %xor599
  %or607 = or i32 %xor606, %neg601
  %xor608 = xor i32 %xor602, %173
  %and609 = and i32 %xor604, %xor605
  %xor610 = xor i32 %and609, %xor602
  %neg611 = xor i32 %and603, %xor600
  %xor612 = xor i32 %and609, %or607
  %xor614 = xor i32 %neg611, %xor612
  store i32 %xor612, ptr %arrayidx593, align 4
  store i32 %xor614, ptr %arrayidx594, align 4
  store i32 %xor610, ptr %arrayidx595, align 4
  store i32 %xor608, ptr %arrayidx597, align 4
  %arrayidx621 = getelementptr i32, ptr %k, i32 40
  %176 = ptrtoint ptr %arrayidx621 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx621, align 4
  %arrayidx622 = getelementptr i32, ptr %k, i32 41
  %178 = ptrtoint ptr %arrayidx622 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx622, align 4
  %arrayidx623 = getelementptr i32, ptr %k, i32 42
  %180 = ptrtoint ptr %arrayidx623 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx623, align 4
  %arrayidx625 = getelementptr i32, ptr %k, i32 43
  %182 = ptrtoint ptr %arrayidx625 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx625, align 4
  %xor626 = xor i32 %179, %177
  %xor627 = xor i32 %183, %177
  %and629 = and i32 %xor626, %179
  %or630 = or i32 %xor627, %xor626
  %184 = xor i32 %183, %181
  %xor631 = xor i32 %184, -1
  %xor632 = xor i32 %or630, %xor631
  %xor633 = xor i32 %xor626, %xor631
  %xor634 = xor i32 %and629, %xor631
  %or635 = or i32 %xor633, %and629
  %xor636 = xor i32 %and629, %181
  %and637 = and i32 %xor632, %181
  %xor638 = xor i32 %and637, %or635
  %or639 = or i32 %or635, %xor632
  %neg640 = xor i32 %or630, %184
  %xor641 = xor i32 %neg640, %xor638
  %xor643 = xor i32 %xor636, %or639
  store i32 %xor643, ptr %arrayidx621, align 4
  store i32 %xor638, ptr %arrayidx622, align 4
  store i32 %xor634, ptr %arrayidx623, align 4
  store i32 %xor641, ptr %arrayidx625, align 4
  %arrayidx650 = getelementptr i32, ptr %k, i32 36
  %185 = ptrtoint ptr %arrayidx650 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx650, align 4
  %arrayidx651 = getelementptr i32, ptr %k, i32 37
  %187 = ptrtoint ptr %arrayidx651 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx651, align 4
  %arrayidx652 = getelementptr i32, ptr %k, i32 38
  %189 = ptrtoint ptr %arrayidx652 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx652, align 4
  %arrayidx654 = getelementptr i32, ptr %k, i32 39
  %191 = ptrtoint ptr %arrayidx654 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx654, align 4
  %neg655 = xor i32 %192, -1
  %xor656 = xor i32 %188, %186
  %and657 = and i32 %190, %186
  %xor658 = xor i32 %and657, %neg655
  %or659 = or i32 %186, %neg655
  %xor660 = xor i32 %190, %xor656
  %xor661 = xor i32 %or659, %xor656
  %and662 = and i32 %xor658, %xor656
  %and664 = and i32 %xor661, %xor660
  %or665 = or i32 %xor661, %and662
  %193 = xor i32 %xor660, %xor658
  %neg666 = xor i32 %193, -1
  %xor667 = xor i32 %or665, %neg666
  %xor668 = xor i32 %186, %neg666
  %xor669 = xor i32 %and664, %neg666
  %or671 = or i32 %and664, %and662
  store i32 %xor668, ptr %arrayidx650, align 4
  store i32 %or671, ptr %arrayidx651, align 4
  store i32 %xor669, ptr %arrayidx652, align 4
  store i32 %xor667, ptr %arrayidx654, align 4
  %arrayidx678 = getelementptr i32, ptr %k, i32 32
  %194 = ptrtoint ptr %arrayidx678 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx678, align 4
  %arrayidx679 = getelementptr i32, ptr %k, i32 33
  %196 = ptrtoint ptr %arrayidx679 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx679, align 4
  %arrayidx680 = getelementptr i32, ptr %k, i32 34
  %198 = ptrtoint ptr %arrayidx680 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx680, align 4
  %arrayidx682 = getelementptr i32, ptr %k, i32 35
  %200 = ptrtoint ptr %arrayidx682 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx682, align 4
  %xor683 = xor i32 %201, %197
  %or684 = or i32 %201, %195
  %and685 = and i32 %197, %195
  %xor686 = xor i32 %199, %195
  %xor687 = xor i32 %xor683, %199
  %and688 = and i32 %xor683, %or684
  %xor689 = xor i32 %xor687, %or684
  %or690 = or i32 %xor686, %and685
  %xor691 = xor i32 %or684, %and685
  %xor692 = xor i32 %and688, %or690
  %and693 = and i32 %or690, %or684
  %xor695 = xor i32 %xor687, %and685
  %or696 = or i32 %xor692, %xor691
  %and697 = and i32 %xor689, %xor692
  %xor698 = xor i32 %or696, %xor695
  %xor699 = xor i32 %xor695, %and693
  %xor701 = xor i32 %and697, %xor695
  store i32 %xor701, ptr %arrayidx678, align 4
  store i32 %xor698, ptr %arrayidx679, align 4
  store i32 %xor692, ptr %arrayidx680, align 4
  store i32 %xor699, ptr %arrayidx682, align 4
  %arrayidx708 = getelementptr i32, ptr %k, i32 28
  %202 = ptrtoint ptr %arrayidx708 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx708, align 4
  %arrayidx709 = getelementptr i32, ptr %k, i32 29
  %204 = ptrtoint ptr %arrayidx709 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx709, align 4
  %arrayidx710 = getelementptr i32, ptr %k, i32 30
  %206 = ptrtoint ptr %arrayidx710 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx710, align 4
  %arrayidx712 = getelementptr i32, ptr %k, i32 31
  %208 = ptrtoint ptr %arrayidx712 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx712, align 4
  %and714 = and i32 %209, %203
  %xor716 = xor i32 %and714, %207
  %or717 = or i32 %209, %207
  %xor715 = xor i32 %205, %203
  %xor718 = xor i32 %xor715, %209
  %xor719 = xor i32 %xor716, %209
  %or720 = or i32 %or717, %xor718
  %xor721 = xor i32 %or720, %205
  %and722 = and i32 %xor718, %205
  %xor723 = xor i32 %and722, %xor719
  %and724 = and i32 %xor721, %xor719
  %xor725 = xor i32 %xor721, %xor716
  %xor726 = xor i32 %and724, %xor718
  %or727 = or i32 %xor723, %xor716
  %neg728 = xor i32 %xor723, -1
  %xor730 = xor i32 %or727, %xor718
  store i32 %neg728, ptr %arrayidx708, align 4
  store i32 %xor725, ptr %arrayidx709, align 4
  store i32 %xor730, ptr %arrayidx710, align 4
  store i32 %xor726, ptr %arrayidx712, align 4
  %arrayidx737 = getelementptr i32, ptr %k, i32 24
  %210 = ptrtoint ptr %arrayidx737 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx737, align 4
  %arrayidx738 = getelementptr i32, ptr %k, i32 25
  %212 = ptrtoint ptr %arrayidx738 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx738, align 4
  %arrayidx739 = getelementptr i32, ptr %k, i32 26
  %214 = ptrtoint ptr %arrayidx739 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx739, align 4
  %arrayidx741 = getelementptr i32, ptr %k, i32 27
  %216 = ptrtoint ptr %arrayidx741 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx741, align 4
  %or742 = or i32 %213, %211
  %xor743 = xor i32 %215, %or742
  %neg744 = xor i32 %217, -1
  %xor745 = xor i32 %213, %211
  %xor746 = xor i32 %xor743, %211
  %or748 = or i32 %xor745, %neg744
  %xor749 = xor i32 %or748, %xor746
  %and750 = and i32 %xor746, %neg744
  %xor751 = xor i32 %xor745, %neg744
  %xor752 = xor i32 %xor743, %neg744
  %xor753 = xor i32 %and750, %xor751
  %and754 = and i32 %xor749, %xor743
  %xor755 = xor i32 %and754, %xor751
  %and756 = and i32 %and754, %xor751
  %xor758 = xor i32 %xor752, %and756
  store i32 %xor749, ptr %arrayidx737, align 4
  store i32 %xor753, ptr %arrayidx738, align 4
  store i32 %xor755, ptr %arrayidx739, align 4
  store i32 %xor758, ptr %arrayidx741, align 4
  %arrayidx765 = getelementptr i32, ptr %k, i32 20
  %218 = ptrtoint ptr %arrayidx765 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx765, align 4
  %arrayidx766 = getelementptr i32, ptr %k, i32 21
  %220 = ptrtoint ptr %arrayidx766 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx766, align 4
  %arrayidx767 = getelementptr i32, ptr %k, i32 22
  %222 = ptrtoint ptr %arrayidx767 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx767, align 4
  %arrayidx769 = getelementptr i32, ptr %k, i32 23
  %224 = ptrtoint ptr %arrayidx769 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx769, align 4
  %xor770 = xor i32 %225, %219
  %xor771 = xor i32 %223, %221
  %xor772 = xor i32 %223, %219
  %and773 = and i32 %xor770, %219
  %or774 = or i32 %xor770, %xor771
  %neg775 = xor i32 %221, -1
  %xor776 = xor i32 %and773, %or774
  %xor777 = xor i32 %or774, %xor772
  %xor778 = xor i32 %xor770, %neg775
  %xor779 = xor i32 %xor776, %neg775
  %and780 = and i32 %xor776, %xor772
  %xor781 = xor i32 %xor779, %xor777
  %xor782 = xor i32 %and780, %xor778
  %and783 = and i32 %xor777, %xor778
  %xor784 = xor i32 %and783, %xor776
  %xor786 = xor i32 %xor782, %xor777
  store i32 %xor782, ptr %arrayidx765, align 4
  store i32 %xor781, ptr %arrayidx766, align 4
  store i32 %xor786, ptr %arrayidx767, align 4
  store i32 %xor784, ptr %arrayidx769, align 4
  %arrayidx793 = getelementptr i32, ptr %k, i32 16
  %226 = ptrtoint ptr %arrayidx793 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx793, align 4
  %arrayidx794 = getelementptr i32, ptr %k, i32 17
  %228 = ptrtoint ptr %arrayidx794 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx794, align 4
  %arrayidx795 = getelementptr i32, ptr %k, i32 18
  %230 = ptrtoint ptr %arrayidx795 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx795, align 4
  %arrayidx797 = getelementptr i32, ptr %k, i32 19
  %232 = ptrtoint ptr %arrayidx797 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx797, align 4
  %neg798 = xor i32 %229, -1
  %neg799 = xor i32 %227, -1
  %and800 = and i32 %231, %neg798
  %xor801 = xor i32 %and800, %233
  %or802 = or i32 %233, %neg798
  %xor803 = xor i32 %231, %neg798
  %xor804 = xor i32 %or802, %231
  %xor805 = xor i32 %or802, %neg799
  %or806 = or i32 %xor801, %neg799
  %and807 = and i32 %xor804, %or806
  %xor808 = xor i32 %or806, %xor803
  %and810 = and i32 %xor808, %xor805
  %xor809 = xor i32 %xor801, %xor803
  %xor811 = xor i32 %xor809, %xor805
  %xor812 = xor i32 %xor811, %and807
  %xor813 = xor i32 %and810, %xor801
  %or814 = or i32 %xor811, %xor808
  %xor816 = xor i32 %or814, %xor801
  store i32 %xor816, ptr %arrayidx793, align 4
  store i32 %xor812, ptr %arrayidx794, align 4
  store i32 %xor813, ptr %arrayidx795, align 4
  store i32 %xor808, ptr %arrayidx797, align 4
  %arrayidx823 = getelementptr i32, ptr %k, i32 12
  %234 = ptrtoint ptr %arrayidx823 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx823, align 4
  %arrayidx824 = getelementptr i32, ptr %k, i32 13
  %236 = ptrtoint ptr %arrayidx824 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx824, align 4
  %arrayidx825 = getelementptr i32, ptr %k, i32 14
  %238 = ptrtoint ptr %arrayidx825 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx825, align 4
  %arrayidx827 = getelementptr i32, ptr %k, i32 15
  %240 = ptrtoint ptr %arrayidx827 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx827, align 4
  %or828 = or i32 %241, %235
  %xor829 = xor i32 %241, %235
  %xor830 = xor i32 %241, %239
  %neg831 = xor i32 %xor830, -1
  %xor832 = xor i32 %or828, %237
  %and833 = and i32 %xor829, %237
  %xor834 = xor i32 %and833, %neg831
  %xor835 = xor i32 %xor829, %239
  %xor836 = xor i32 %xor832, %xor829
  %or837 = or i32 %xor836, %neg831
  %xor838 = xor i32 %xor832, %239
  %and839 = and i32 %xor834, %xor835
  %xor840 = xor i32 %and839, %xor832
  %neg841 = xor i32 %and833, %xor830
  %xor842 = xor i32 %and839, %or837
  %xor844 = xor i32 %neg841, %xor842
  store i32 %xor842, ptr %arrayidx823, align 4
  store i32 %xor844, ptr %arrayidx824, align 4
  store i32 %xor840, ptr %arrayidx825, align 4
  store i32 %xor838, ptr %arrayidx827, align 4
  %arrayidx851 = getelementptr i32, ptr %k, i32 8
  %242 = ptrtoint ptr %arrayidx851 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx851, align 4
  %arrayidx852 = getelementptr i32, ptr %k, i32 9
  %244 = ptrtoint ptr %arrayidx852 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx852, align 4
  %arrayidx853 = getelementptr i32, ptr %k, i32 10
  %246 = ptrtoint ptr %arrayidx853 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx853, align 4
  %arrayidx855 = getelementptr i32, ptr %k, i32 11
  %248 = ptrtoint ptr %arrayidx855 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx855, align 4
  %xor856 = xor i32 %245, %243
  %xor857 = xor i32 %249, %243
  %and859 = and i32 %xor856, %245
  %or860 = or i32 %xor857, %xor856
  %250 = xor i32 %249, %247
  %xor861 = xor i32 %250, -1
  %xor862 = xor i32 %or860, %xor861
  %xor863 = xor i32 %xor856, %xor861
  %xor864 = xor i32 %and859, %xor861
  %or865 = or i32 %xor863, %and859
  %xor866 = xor i32 %and859, %247
  %and867 = and i32 %xor862, %247
  %xor868 = xor i32 %and867, %or865
  %or869 = or i32 %or865, %xor862
  %neg870 = xor i32 %or860, %250
  %xor871 = xor i32 %neg870, %xor868
  %xor873 = xor i32 %xor866, %or869
  store i32 %xor873, ptr %arrayidx851, align 4
  store i32 %xor868, ptr %arrayidx852, align 4
  store i32 %xor864, ptr %arrayidx853, align 4
  store i32 %xor871, ptr %arrayidx855, align 4
  %arrayidx880 = getelementptr i32, ptr %k, i32 4
  %251 = ptrtoint ptr %arrayidx880 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %arrayidx880, align 4
  %arrayidx881 = getelementptr i32, ptr %k, i32 5
  %253 = ptrtoint ptr %arrayidx881 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx881, align 4
  %arrayidx882 = getelementptr i32, ptr %k, i32 6
  %255 = ptrtoint ptr %arrayidx882 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %arrayidx882, align 4
  %arrayidx884 = getelementptr i32, ptr %k, i32 7
  %257 = ptrtoint ptr %arrayidx884 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %arrayidx884, align 4
  %neg885 = xor i32 %258, -1
  %xor886 = xor i32 %254, %252
  %and887 = and i32 %256, %252
  %xor888 = xor i32 %and887, %neg885
  %or889 = or i32 %252, %neg885
  %xor890 = xor i32 %256, %xor886
  %xor891 = xor i32 %or889, %xor886
  %and892 = and i32 %xor888, %xor886
  %and894 = and i32 %xor891, %xor890
  %or895 = or i32 %xor891, %and892
  %259 = xor i32 %xor890, %xor888
  %neg896 = xor i32 %259, -1
  %xor897 = xor i32 %or895, %neg896
  %xor898 = xor i32 %252, %neg896
  %xor899 = xor i32 %and894, %neg896
  %or901 = or i32 %and894, %and892
  store i32 %xor898, ptr %arrayidx880, align 4
  store i32 %or901, ptr %arrayidx881, align 4
  store i32 %xor899, ptr %arrayidx882, align 4
  store i32 %xor897, ptr %arrayidx884, align 4
  %260 = ptrtoint ptr %k to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %k, align 4
  %arrayidx909 = getelementptr i32, ptr %k, i32 1
  %262 = ptrtoint ptr %arrayidx909 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx909, align 4
  %arrayidx910 = getelementptr i32, ptr %k, i32 2
  %264 = ptrtoint ptr %arrayidx910 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx910, align 4
  %arrayidx912 = getelementptr i32, ptr %k, i32 3
  %266 = ptrtoint ptr %arrayidx912 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx912, align 4
  %xor913 = xor i32 %267, %263
  %or914 = or i32 %267, %261
  %and915 = and i32 %263, %261
  %xor916 = xor i32 %265, %261
  %xor917 = xor i32 %xor913, %265
  %and918 = and i32 %xor913, %or914
  %xor919 = xor i32 %xor917, %or914
  %or920 = or i32 %xor916, %and915
  %xor921 = xor i32 %or914, %and915
  %xor922 = xor i32 %and918, %or920
  %and923 = and i32 %or920, %or914
  %xor925 = xor i32 %xor917, %and915
  %or926 = or i32 %xor922, %xor921
  %and927 = and i32 %xor919, %xor922
  %xor928 = xor i32 %or926, %xor925
  %xor929 = xor i32 %xor925, %and923
  %xor931 = xor i32 %and927, %xor925
  store i32 %xor931, ptr %k, align 4
  store i32 %xor928, ptr %arrayidx909, align 4
  store i32 %xor922, ptr %arrayidx910, align 4
  store i32 %xor929, ptr %arrayidx912, align 4
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @serpent_setkey(ptr noundef %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %call1 = tail call i32 @__serpent_setkey(ptr noundef %__crt_ctx.i, ptr noundef %key, i32 noundef %keylen)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__serpent_encrypt(ptr noundef readonly %c, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %src, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %add.ptr = getelementptr i8, ptr %src, i32 4
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %add.ptr, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %add.ptr2 = getelementptr i8, ptr %src, i32 8
  %6 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %add.ptr2, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %add.ptr4 = getelementptr i8, ptr %src, i32 12
  %9 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr4, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %arrayidx = getelementptr i32, ptr %c, i32 3
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %xor = xor i32 %11, %13
  %arrayidx6 = getelementptr i32, ptr %c, i32 2
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6, align 4
  %xor7 = xor i32 %15, %8
  %arrayidx8 = getelementptr i32, ptr %c, i32 1
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8, align 4
  %xor9 = xor i32 %17, %5
  %18 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %c, align 4
  %xor11 = xor i32 %19, %2
  %or = or i32 %xor11, %xor
  %xor12 = xor i32 %xor11, %xor
  %xor13 = xor i32 %xor7, %xor
  %neg = xor i32 %xor13, -1
  %xor14 = xor i32 %or, %xor9
  %and = and i32 %xor12, %xor9
  %xor15 = xor i32 %and, %neg
  %xor16 = xor i32 %xor12, %xor7
  %xor17 = xor i32 %xor14, %xor12
  %or18 = or i32 %xor17, %neg
  %xor19 = xor i32 %xor14, %xor7
  %and20 = and i32 %xor15, %xor16
  %xor21 = xor i32 %and20, %xor14
  %neg22 = xor i32 %and, %xor13
  %xor23 = xor i32 %and20, %or18
  %xor25 = xor i32 %neg22, %xor23
  %or.i = tail call i32 @llvm.fshl.i32(i32 %xor23, i32 %xor23, i32 13) #6
  %or.i3454 = tail call i32 @llvm.fshl.i32(i32 %xor21, i32 %xor21, i32 3) #6
  %xor28 = xor i32 %xor25, %or.i
  %shl = shl i32 %or.i, 3
  %xor29 = xor i32 %xor19, %or.i3454
  %xor30 = xor i32 %xor28, %or.i3454
  %or.i3455 = tail call i32 @llvm.fshl.i32(i32 %xor30, i32 %xor30, i32 1) #6
  %xor32 = xor i32 %xor29, %shl
  %or.i3456 = tail call i32 @llvm.fshl.i32(i32 %xor32, i32 %xor32, i32 7) #6
  %xor34 = xor i32 %or.i3455, %or.i
  %shl35 = shl i32 %or.i3455, 7
  %xor36 = xor i32 %or.i3456, %or.i3454
  %xor37 = xor i32 %xor34, %or.i3456
  %xor38 = xor i32 %xor36, %shl35
  %arrayidx39 = getelementptr i32, ptr %c, i32 7
  %20 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx39, align 4
  %xor40 = xor i32 %or.i3456, %21
  %arrayidx41 = getelementptr i32, ptr %c, i32 5
  %22 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx41, align 4
  %xor42 = xor i32 %or.i3455, %23
  %or.i3457 = tail call i32 @llvm.fshl.i32(i32 %xor37, i32 %xor37, i32 5) #6
  %or.i3458 = tail call i32 @llvm.fshl.i32(i32 %xor38, i32 %xor38, i32 22) #6
  %arrayidx45 = getelementptr i32, ptr %c, i32 4
  %24 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx45, align 4
  %xor46 = xor i32 %or.i3457, %25
  %arrayidx48 = getelementptr i32, ptr %c, i32 6
  %26 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx48, align 4
  %xor49 = xor i32 %or.i3458, %27
  %xor50 = xor i32 %xor46, %xor42
  %xor51 = xor i32 %xor46, %xor40
  %and53 = and i32 %xor50, %xor42
  %or54 = or i32 %xor51, %xor50
  %28 = xor i32 %xor49, %xor40
  %xor55 = xor i32 %28, -1
  %xor56 = xor i32 %or54, %xor55
  %xor57 = xor i32 %xor50, %xor55
  %xor58 = xor i32 %and53, %xor55
  %or59 = or i32 %xor57, %and53
  %xor60 = xor i32 %and53, %xor49
  %and61 = and i32 %xor56, %xor49
  %xor62 = xor i32 %and61, %or59
  %or63 = or i32 %or59, %xor56
  %xor67 = xor i32 %xor60, %or63
  %or.i3459 = tail call i32 @llvm.fshl.i32(i32 %xor67, i32 %xor67, i32 13) #6
  %or.i3460 = tail call i32 @llvm.fshl.i32(i32 %xor58, i32 %xor58, i32 3) #6
  %shl71 = shl i32 %or.i3459, 3
  %xor70 = xor i32 %xor62, %or.i3460
  %xor73 = xor i32 %xor70, %or.i3459
  %or.i3461 = tail call i32 @llvm.fshl.i32(i32 %xor73, i32 %xor73, i32 1) #6
  %xor65 = xor i32 %xor70, %28
  %xor72 = xor i32 %xor65, %or54
  %xor75 = xor i32 %xor72, %shl71
  %or.i3462 = tail call i32 @llvm.fshl.i32(i32 %xor75, i32 %xor75, i32 7) #6
  %xor77 = xor i32 %or.i3461, %or.i3459
  %shl78 = shl i32 %or.i3461, 7
  %xor79 = xor i32 %or.i3462, %or.i3460
  %xor80 = xor i32 %xor77, %or.i3462
  %xor81 = xor i32 %xor79, %shl78
  %arrayidx82 = getelementptr i32, ptr %c, i32 11
  %29 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx82, align 4
  %arrayidx84 = getelementptr i32, ptr %c, i32 9
  %31 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx84, align 4
  %xor85 = xor i32 %or.i3461, %32
  %or.i3463 = tail call i32 @llvm.fshl.i32(i32 %xor80, i32 %xor80, i32 5) #6
  %or.i3464 = tail call i32 @llvm.fshl.i32(i32 %xor81, i32 %xor81, i32 22) #6
  %arrayidx88 = getelementptr i32, ptr %c, i32 8
  %33 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx88, align 4
  %xor89 = xor i32 %or.i3463, %34
  %arrayidx91 = getelementptr i32, ptr %c, i32 10
  %35 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx91, align 4
  %xor92 = xor i32 %or.i3464, %36
  %37 = xor i32 %30, %or.i3462
  %neg93 = xor i32 %37, -1
  %xor94 = xor i32 %xor85, %xor89
  %and95 = and i32 %xor89, %xor92
  %xor96 = xor i32 %and95, %neg93
  %or97 = or i32 %xor89, %neg93
  %xor98 = xor i32 %xor94, %xor92
  %xor99 = xor i32 %or97, %xor94
  %and100 = and i32 %xor96, %xor94
  %and102 = and i32 %xor98, %xor99
  %or103 = or i32 %and100, %xor99
  %38 = xor i32 %xor98, %xor96
  %neg104 = xor i32 %38, -1
  %xor105 = xor i32 %or103, %neg104
  %xor106 = xor i32 %xor89, %neg104
  %xor107 = xor i32 %and102, %neg104
  %or109 = or i32 %and100, %and102
  %or.i3465 = tail call i32 @llvm.fshl.i32(i32 %xor106, i32 %xor106, i32 13) #6
  %or.i3466 = tail call i32 @llvm.fshl.i32(i32 %xor107, i32 %xor107, i32 3) #6
  %xor112 = xor i32 %or.i3465, %or109
  %shl113 = shl i32 %or.i3465, 3
  %xor114 = xor i32 %xor105, %or.i3466
  %xor115 = xor i32 %xor112, %or.i3466
  %or.i3467 = tail call i32 @llvm.fshl.i32(i32 %xor115, i32 %xor115, i32 1) #6
  %xor117 = xor i32 %xor114, %shl113
  %or.i3468 = tail call i32 @llvm.fshl.i32(i32 %xor117, i32 %xor117, i32 7) #6
  %xor119 = xor i32 %or.i3467, %or.i3465
  %shl120 = shl i32 %or.i3467, 7
  %xor121 = xor i32 %or.i3468, %or.i3466
  %xor122 = xor i32 %xor119, %or.i3468
  %xor123 = xor i32 %xor121, %shl120
  %arrayidx124 = getelementptr i32, ptr %c, i32 15
  %39 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx124, align 4
  %xor125 = xor i32 %or.i3468, %40
  %arrayidx126 = getelementptr i32, ptr %c, i32 13
  %41 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx126, align 4
  %xor127 = xor i32 %or.i3467, %42
  %or.i3469 = tail call i32 @llvm.fshl.i32(i32 %xor122, i32 %xor122, i32 5) #6
  %or.i3470 = tail call i32 @llvm.fshl.i32(i32 %xor123, i32 %xor123, i32 22) #6
  %arrayidx130 = getelementptr i32, ptr %c, i32 12
  %43 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx130, align 4
  %xor131 = xor i32 %or.i3469, %44
  %arrayidx133 = getelementptr i32, ptr %c, i32 14
  %45 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx133, align 4
  %xor134 = xor i32 %or.i3470, %46
  %xor135 = xor i32 %xor127, %xor125
  %or136 = or i32 %xor131, %xor125
  %and137 = and i32 %xor131, %xor127
  %xor138 = xor i32 %xor131, %xor134
  %xor139 = xor i32 %xor134, %xor135
  %and140 = and i32 %or136, %xor135
  %xor141 = xor i32 %xor139, %or136
  %or142 = or i32 %xor138, %and137
  %xor143 = xor i32 %and137, %or136
  %xor144 = xor i32 %and140, %or142
  %and145 = and i32 %or142, %or136
  %xor147 = xor i32 %and137, %xor139
  %or148 = or i32 %xor144, %xor143
  %and149 = and i32 %xor144, %xor141
  %xor153 = xor i32 %and149, %xor147
  %or.i3471 = tail call i32 @llvm.fshl.i32(i32 %xor153, i32 %xor153, i32 13) #6
  %or.i3472 = tail call i32 @llvm.fshl.i32(i32 %xor144, i32 %xor144, i32 3) #6
  %shl157 = shl i32 %or.i3471, 3
  %xor150 = xor i32 %or.i3472, %xor147
  %xor156 = xor i32 %xor150, %or148
  %xor159 = xor i32 %xor156, %or.i3471
  %or.i3473 = tail call i32 @llvm.fshl.i32(i32 %xor159, i32 %xor159, i32 1) #6
  %xor158 = xor i32 %xor150, %and145
  %xor161 = xor i32 %xor158, %shl157
  %or.i3474 = tail call i32 @llvm.fshl.i32(i32 %xor161, i32 %xor161, i32 7) #6
  %xor163 = xor i32 %or.i3473, %or.i3471
  %shl164 = shl i32 %or.i3473, 7
  %xor165 = xor i32 %or.i3474, %or.i3472
  %xor166 = xor i32 %xor163, %or.i3474
  %xor167 = xor i32 %xor165, %shl164
  %arrayidx168 = getelementptr i32, ptr %c, i32 19
  %47 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx168, align 4
  %xor169 = xor i32 %or.i3474, %48
  %arrayidx170 = getelementptr i32, ptr %c, i32 17
  %49 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx170, align 4
  %xor171 = xor i32 %or.i3473, %50
  %or.i3475 = tail call i32 @llvm.fshl.i32(i32 %xor166, i32 %xor166, i32 5) #6
  %or.i3476 = tail call i32 @llvm.fshl.i32(i32 %xor167, i32 %xor167, i32 22) #6
  %arrayidx174 = getelementptr i32, ptr %c, i32 16
  %51 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx174, align 4
  %xor175 = xor i32 %or.i3475, %52
  %arrayidx177 = getelementptr i32, ptr %c, i32 18
  %53 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx177, align 4
  %xor178 = xor i32 %or.i3476, %54
  %and179 = and i32 %xor175, %xor169
  %xor181 = xor i32 %and179, %xor178
  %or182 = or i32 %xor178, %xor169
  %xor180 = xor i32 %xor171, %xor169
  %xor183 = xor i32 %xor180, %xor175
  %xor184 = xor i32 %xor181, %xor169
  %or185 = or i32 %or182, %xor183
  %xor186 = xor i32 %or185, %xor171
  %and187 = and i32 %xor183, %xor171
  %xor188 = xor i32 %and187, %xor184
  %and189 = and i32 %xor186, %xor184
  %xor190 = xor i32 %xor186, %xor181
  %xor191 = xor i32 %and189, %xor183
  %or192 = or i32 %xor188, %xor181
  %neg193 = xor i32 %xor188, -1
  %xor195 = xor i32 %or192, %xor183
  %or.i3477 = tail call i32 @llvm.fshl.i32(i32 %neg193, i32 %neg193, i32 13) #6
  %or.i3478 = tail call i32 @llvm.fshl.i32(i32 %xor195, i32 %xor195, i32 3) #6
  %xor198 = xor i32 %xor190, %or.i3477
  %shl199 = shl i32 %or.i3477, 3
  %xor201 = xor i32 %xor198, %or.i3478
  %or.i3479 = tail call i32 @llvm.fshl.i32(i32 %xor201, i32 %xor201, i32 1) #6
  %xor200 = xor i32 %xor191, %shl199
  %xor203 = xor i32 %xor200, %or.i3478
  %or.i3480 = tail call i32 @llvm.fshl.i32(i32 %xor203, i32 %xor203, i32 7) #6
  %xor205 = xor i32 %or.i3479, %or.i3477
  %shl206 = shl i32 %or.i3479, 7
  %xor207 = xor i32 %or.i3480, %or.i3478
  %xor208 = xor i32 %xor205, %or.i3480
  %xor209 = xor i32 %xor207, %shl206
  %arrayidx210 = getelementptr i32, ptr %c, i32 23
  %55 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx210, align 4
  %arrayidx212 = getelementptr i32, ptr %c, i32 21
  %57 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx212, align 4
  %xor213 = xor i32 %or.i3479, %58
  %or.i3481 = tail call i32 @llvm.fshl.i32(i32 %xor208, i32 %xor208, i32 5) #6
  %or.i3482 = tail call i32 @llvm.fshl.i32(i32 %xor209, i32 %xor209, i32 22) #6
  %arrayidx216 = getelementptr i32, ptr %c, i32 20
  %59 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx216, align 4
  %xor217 = xor i32 %or.i3481, %60
  %arrayidx219 = getelementptr i32, ptr %c, i32 22
  %61 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx219, align 4
  %xor220 = xor i32 %or.i3482, %62
  %or221 = or i32 %xor217, %xor213
  %xor222 = xor i32 %xor220, %or221
  %63 = xor i32 %56, %or.i3480
  %neg223 = xor i32 %63, -1
  %xor224 = xor i32 %xor217, %xor213
  %xor225 = xor i32 %xor222, %xor217
  %or227 = or i32 %xor224, %neg223
  %xor228 = xor i32 %xor225, %or227
  %and229 = and i32 %xor225, %neg223
  %xor230 = xor i32 %xor224, %neg223
  %xor231 = xor i32 %xor222, %neg223
  %xor232 = xor i32 %and229, %xor230
  %and233 = and i32 %xor228, %xor222
  %xor234 = xor i32 %and233, %xor230
  %and235 = and i32 %and233, %xor230
  %xor237 = xor i32 %xor231, %and235
  %or.i3483 = tail call i32 @llvm.fshl.i32(i32 %xor228, i32 %xor228, i32 13) #6
  %or.i3484 = tail call i32 @llvm.fshl.i32(i32 %xor234, i32 %xor234, i32 3) #6
  %xor240 = xor i32 %xor232, %or.i3483
  %shl241 = shl i32 %or.i3483, 3
  %xor243 = xor i32 %xor240, %or.i3484
  %or.i3485 = tail call i32 @llvm.fshl.i32(i32 %xor243, i32 %xor243, i32 1) #6
  %xor242 = xor i32 %xor237, %shl241
  %xor245 = xor i32 %xor242, %or.i3484
  %or.i3486 = tail call i32 @llvm.fshl.i32(i32 %xor245, i32 %xor245, i32 7) #6
  %xor247 = xor i32 %or.i3485, %or.i3483
  %shl248 = shl i32 %or.i3485, 7
  %xor249 = xor i32 %or.i3486, %or.i3484
  %xor250 = xor i32 %xor247, %or.i3486
  %xor251 = xor i32 %xor249, %shl248
  %arrayidx252 = getelementptr i32, ptr %c, i32 27
  %64 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx252, align 4
  %xor253 = xor i32 %or.i3486, %65
  %arrayidx254 = getelementptr i32, ptr %c, i32 25
  %66 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx254, align 4
  %xor255 = xor i32 %or.i3485, %67
  %or.i3487 = tail call i32 @llvm.fshl.i32(i32 %xor250, i32 %xor250, i32 5) #6
  %or.i3488 = tail call i32 @llvm.fshl.i32(i32 %xor251, i32 %xor251, i32 22) #6
  %arrayidx258 = getelementptr i32, ptr %c, i32 24
  %68 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx258, align 4
  %xor259 = xor i32 %or.i3487, %69
  %arrayidx261 = getelementptr i32, ptr %c, i32 26
  %70 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx261, align 4
  %xor262 = xor i32 %or.i3488, %71
  %xor263 = xor i32 %xor253, %xor259
  %xor264 = xor i32 %xor262, %xor255
  %xor265 = xor i32 %xor262, %xor259
  %and266 = and i32 %xor263, %xor259
  %or267 = or i32 %xor264, %xor263
  %neg268 = xor i32 %xor255, -1
  %xor269 = xor i32 %or267, %and266
  %xor270 = xor i32 %or267, %xor265
  %xor271 = xor i32 %xor263, %neg268
  %and273 = and i32 %xor269, %xor265
  %xor275 = xor i32 %and273, %xor271
  %and276 = and i32 %xor270, %xor271
  %xor279 = xor i32 %xor275, %xor270
  %or.i3489 = tail call i32 @llvm.fshl.i32(i32 %xor275, i32 %xor275, i32 13) #6
  %or.i3490 = tail call i32 @llvm.fshl.i32(i32 %xor279, i32 %xor279, i32 3) #6
  %shl283 = shl i32 %or.i3489, 3
  %xor272 = xor i32 %or.i3490, %xor269
  %xor274 = xor i32 %xor272, %neg268
  %xor282 = xor i32 %xor274, %xor270
  %xor285 = xor i32 %xor282, %or.i3489
  %or.i3491 = tail call i32 @llvm.fshl.i32(i32 %xor285, i32 %xor285, i32 1) #6
  %xor284 = xor i32 %xor272, %and276
  %xor287 = xor i32 %xor284, %shl283
  %or.i3492 = tail call i32 @llvm.fshl.i32(i32 %xor287, i32 %xor287, i32 7) #6
  %xor289 = xor i32 %or.i3491, %or.i3489
  %shl290 = shl i32 %or.i3491, 7
  %xor291 = xor i32 %or.i3492, %or.i3490
  %xor292 = xor i32 %xor289, %or.i3492
  %xor293 = xor i32 %xor291, %shl290
  %arrayidx294 = getelementptr i32, ptr %c, i32 31
  %72 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx294, align 4
  %xor295 = xor i32 %or.i3492, %73
  %arrayidx296 = getelementptr i32, ptr %c, i32 29
  %74 = ptrtoint ptr %arrayidx296 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx296, align 4
  %or.i3493 = tail call i32 @llvm.fshl.i32(i32 %xor292, i32 %xor292, i32 5) #6
  %or.i3494 = tail call i32 @llvm.fshl.i32(i32 %xor293, i32 %xor293, i32 22) #6
  %arrayidx300 = getelementptr i32, ptr %c, i32 28
  %76 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx300, align 4
  %arrayidx303 = getelementptr i32, ptr %c, i32 30
  %78 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx303, align 4
  %xor304 = xor i32 %or.i3494, %79
  %80 = xor i32 %75, %or.i3491
  %neg305 = xor i32 %80, -1
  %81 = xor i32 %77, %or.i3493
  %neg306 = xor i32 %81, -1
  %and307 = and i32 %xor304, %neg305
  %xor308 = xor i32 %and307, %xor295
  %or309 = or i32 %xor295, %neg305
  %xor310 = xor i32 %xor304, %neg305
  %xor311 = xor i32 %xor304, %or309
  %xor312 = xor i32 %or309, %neg306
  %or313 = or i32 %xor308, %neg306
  %and314 = and i32 %or313, %xor311
  %xor315 = xor i32 %or313, %xor310
  %xor316 = xor i32 %xor310, %xor312
  %and317 = and i32 %xor315, %xor312
  %xor318 = xor i32 %xor316, %xor308
  %xor319 = xor i32 %and314, %xor318
  %xor320 = xor i32 %and317, %xor308
  %or321 = or i32 %xor315, %xor318
  %xor323 = xor i32 %or321, %xor308
  %or.i3495 = tail call i32 @llvm.fshl.i32(i32 %xor323, i32 %xor323, i32 13) #6
  %or.i3496 = tail call i32 @llvm.fshl.i32(i32 %xor320, i32 %xor320, i32 3) #6
  %xor326 = xor i32 %xor319, %or.i3495
  %shl327 = shl i32 %or.i3495, 3
  %xor328 = xor i32 %or.i3496, %xor315
  %xor329 = xor i32 %xor326, %or.i3496
  %or.i3497 = tail call i32 @llvm.fshl.i32(i32 %xor329, i32 %xor329, i32 1) #6
  %xor331 = xor i32 %xor328, %shl327
  %or.i3498 = tail call i32 @llvm.fshl.i32(i32 %xor331, i32 %xor331, i32 7) #6
  %xor333 = xor i32 %or.i3497, %or.i3495
  %shl334 = shl i32 %or.i3497, 7
  %xor335 = xor i32 %or.i3498, %or.i3496
  %xor336 = xor i32 %xor333, %or.i3498
  %xor337 = xor i32 %xor335, %shl334
  %arrayidx338 = getelementptr i32, ptr %c, i32 35
  %82 = ptrtoint ptr %arrayidx338 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx338, align 4
  %xor339 = xor i32 %or.i3498, %83
  %arrayidx340 = getelementptr i32, ptr %c, i32 33
  %84 = ptrtoint ptr %arrayidx340 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx340, align 4
  %xor341 = xor i32 %or.i3497, %85
  %or.i3499 = tail call i32 @llvm.fshl.i32(i32 %xor336, i32 %xor336, i32 5) #6
  %or.i3500 = tail call i32 @llvm.fshl.i32(i32 %xor337, i32 %xor337, i32 22) #6
  %arrayidx344 = getelementptr i32, ptr %c, i32 32
  %86 = ptrtoint ptr %arrayidx344 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx344, align 4
  %xor345 = xor i32 %or.i3499, %87
  %arrayidx347 = getelementptr i32, ptr %c, i32 34
  %88 = ptrtoint ptr %arrayidx347 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx347, align 4
  %xor348 = xor i32 %or.i3500, %89
  %or349 = or i32 %xor345, %xor339
  %xor350 = xor i32 %xor345, %xor339
  %xor351 = xor i32 %xor348, %xor339
  %neg352 = xor i32 %xor351, -1
  %xor353 = xor i32 %or349, %xor341
  %and354 = and i32 %xor350, %xor341
  %xor355 = xor i32 %and354, %neg352
  %xor356 = xor i32 %xor350, %xor348
  %xor357 = xor i32 %xor353, %xor350
  %or358 = or i32 %xor357, %neg352
  %xor359 = xor i32 %xor353, %xor348
  %and360 = and i32 %xor355, %xor356
  %xor361 = xor i32 %and360, %xor353
  %neg362 = xor i32 %and354, %xor351
  %xor363 = xor i32 %and360, %or358
  %xor365 = xor i32 %neg362, %xor363
  %or.i3501 = tail call i32 @llvm.fshl.i32(i32 %xor363, i32 %xor363, i32 13) #6
  %or.i3502 = tail call i32 @llvm.fshl.i32(i32 %xor361, i32 %xor361, i32 3) #6
  %xor368 = xor i32 %xor365, %or.i3501
  %shl369 = shl i32 %or.i3501, 3
  %xor370 = xor i32 %xor359, %or.i3502
  %xor371 = xor i32 %xor368, %or.i3502
  %or.i3503 = tail call i32 @llvm.fshl.i32(i32 %xor371, i32 %xor371, i32 1) #6
  %xor373 = xor i32 %xor370, %shl369
  %or.i3504 = tail call i32 @llvm.fshl.i32(i32 %xor373, i32 %xor373, i32 7) #6
  %xor375 = xor i32 %or.i3503, %or.i3501
  %shl376 = shl i32 %or.i3503, 7
  %xor377 = xor i32 %or.i3504, %or.i3502
  %xor378 = xor i32 %xor375, %or.i3504
  %xor379 = xor i32 %xor377, %shl376
  %arrayidx380 = getelementptr i32, ptr %c, i32 39
  %90 = ptrtoint ptr %arrayidx380 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx380, align 4
  %xor381 = xor i32 %or.i3504, %91
  %arrayidx382 = getelementptr i32, ptr %c, i32 37
  %92 = ptrtoint ptr %arrayidx382 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx382, align 4
  %xor383 = xor i32 %or.i3503, %93
  %or.i3505 = tail call i32 @llvm.fshl.i32(i32 %xor378, i32 %xor378, i32 5) #6
  %or.i3506 = tail call i32 @llvm.fshl.i32(i32 %xor379, i32 %xor379, i32 22) #6
  %arrayidx386 = getelementptr i32, ptr %c, i32 36
  %94 = ptrtoint ptr %arrayidx386 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx386, align 4
  %xor387 = xor i32 %or.i3505, %95
  %arrayidx389 = getelementptr i32, ptr %c, i32 38
  %96 = ptrtoint ptr %arrayidx389 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx389, align 4
  %xor390 = xor i32 %or.i3506, %97
  %xor391 = xor i32 %xor387, %xor383
  %xor392 = xor i32 %xor387, %xor381
  %and394 = and i32 %xor391, %xor383
  %or395 = or i32 %xor392, %xor391
  %98 = xor i32 %xor390, %xor381
  %xor396 = xor i32 %98, -1
  %xor397 = xor i32 %or395, %xor396
  %xor398 = xor i32 %xor391, %xor396
  %xor399 = xor i32 %and394, %xor396
  %or400 = or i32 %xor398, %and394
  %xor401 = xor i32 %and394, %xor390
  %and402 = and i32 %xor397, %xor390
  %xor403 = xor i32 %and402, %or400
  %or404 = or i32 %or400, %xor397
  %xor408 = xor i32 %xor401, %or404
  %or.i3507 = tail call i32 @llvm.fshl.i32(i32 %xor408, i32 %xor408, i32 13) #6
  %or.i3508 = tail call i32 @llvm.fshl.i32(i32 %xor399, i32 %xor399, i32 3) #6
  %shl412 = shl i32 %or.i3507, 3
  %xor411 = xor i32 %xor403, %or.i3508
  %xor414 = xor i32 %xor411, %or.i3507
  %or.i3509 = tail call i32 @llvm.fshl.i32(i32 %xor414, i32 %xor414, i32 1) #6
  %xor406 = xor i32 %xor411, %98
  %xor413 = xor i32 %xor406, %or395
  %xor416 = xor i32 %xor413, %shl412
  %or.i3510 = tail call i32 @llvm.fshl.i32(i32 %xor416, i32 %xor416, i32 7) #6
  %xor418 = xor i32 %or.i3509, %or.i3507
  %shl419 = shl i32 %or.i3509, 7
  %xor420 = xor i32 %or.i3510, %or.i3508
  %xor421 = xor i32 %xor418, %or.i3510
  %xor422 = xor i32 %xor420, %shl419
  %arrayidx423 = getelementptr i32, ptr %c, i32 43
  %99 = ptrtoint ptr %arrayidx423 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx423, align 4
  %arrayidx425 = getelementptr i32, ptr %c, i32 41
  %101 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx425, align 4
  %xor426 = xor i32 %or.i3509, %102
  %or.i3511 = tail call i32 @llvm.fshl.i32(i32 %xor421, i32 %xor421, i32 5) #6
  %or.i3512 = tail call i32 @llvm.fshl.i32(i32 %xor422, i32 %xor422, i32 22) #6
  %arrayidx429 = getelementptr i32, ptr %c, i32 40
  %103 = ptrtoint ptr %arrayidx429 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx429, align 4
  %xor430 = xor i32 %or.i3511, %104
  %arrayidx432 = getelementptr i32, ptr %c, i32 42
  %105 = ptrtoint ptr %arrayidx432 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx432, align 4
  %xor433 = xor i32 %or.i3512, %106
  %107 = xor i32 %100, %or.i3510
  %neg434 = xor i32 %107, -1
  %xor435 = xor i32 %xor426, %xor430
  %and436 = and i32 %xor430, %xor433
  %xor437 = xor i32 %and436, %neg434
  %or438 = or i32 %xor430, %neg434
  %xor439 = xor i32 %xor435, %xor433
  %xor440 = xor i32 %or438, %xor435
  %and441 = and i32 %xor437, %xor435
  %and443 = and i32 %xor439, %xor440
  %or444 = or i32 %and441, %xor440
  %108 = xor i32 %xor439, %xor437
  %neg445 = xor i32 %108, -1
  %xor446 = xor i32 %or444, %neg445
  %xor447 = xor i32 %xor430, %neg445
  %xor448 = xor i32 %and443, %neg445
  %or450 = or i32 %and441, %and443
  %or.i3513 = tail call i32 @llvm.fshl.i32(i32 %xor447, i32 %xor447, i32 13) #6
  %or.i3514 = tail call i32 @llvm.fshl.i32(i32 %xor448, i32 %xor448, i32 3) #6
  %xor453 = xor i32 %or.i3513, %or450
  %shl454 = shl i32 %or.i3513, 3
  %xor455 = xor i32 %xor446, %or.i3514
  %xor456 = xor i32 %xor453, %or.i3514
  %or.i3515 = tail call i32 @llvm.fshl.i32(i32 %xor456, i32 %xor456, i32 1) #6
  %xor458 = xor i32 %xor455, %shl454
  %or.i3516 = tail call i32 @llvm.fshl.i32(i32 %xor458, i32 %xor458, i32 7) #6
  %xor460 = xor i32 %or.i3515, %or.i3513
  %shl461 = shl i32 %or.i3515, 7
  %xor462 = xor i32 %or.i3516, %or.i3514
  %xor463 = xor i32 %xor460, %or.i3516
  %xor464 = xor i32 %xor462, %shl461
  %arrayidx465 = getelementptr i32, ptr %c, i32 47
  %109 = ptrtoint ptr %arrayidx465 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx465, align 4
  %xor466 = xor i32 %or.i3516, %110
  %arrayidx467 = getelementptr i32, ptr %c, i32 45
  %111 = ptrtoint ptr %arrayidx467 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx467, align 4
  %xor468 = xor i32 %or.i3515, %112
  %or.i3517 = tail call i32 @llvm.fshl.i32(i32 %xor463, i32 %xor463, i32 5) #6
  %or.i3518 = tail call i32 @llvm.fshl.i32(i32 %xor464, i32 %xor464, i32 22) #6
  %arrayidx471 = getelementptr i32, ptr %c, i32 44
  %113 = ptrtoint ptr %arrayidx471 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx471, align 4
  %xor472 = xor i32 %or.i3517, %114
  %arrayidx474 = getelementptr i32, ptr %c, i32 46
  %115 = ptrtoint ptr %arrayidx474 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx474, align 4
  %xor475 = xor i32 %or.i3518, %116
  %xor476 = xor i32 %xor468, %xor466
  %or477 = or i32 %xor472, %xor466
  %and478 = and i32 %xor472, %xor468
  %xor479 = xor i32 %xor472, %xor475
  %xor480 = xor i32 %xor475, %xor476
  %and481 = and i32 %or477, %xor476
  %xor482 = xor i32 %xor480, %or477
  %or483 = or i32 %xor479, %and478
  %xor484 = xor i32 %and478, %or477
  %xor485 = xor i32 %and481, %or483
  %and486 = and i32 %or483, %or477
  %xor488 = xor i32 %and478, %xor480
  %or489 = or i32 %xor485, %xor484
  %and490 = and i32 %xor485, %xor482
  %xor494 = xor i32 %and490, %xor488
  %or.i3519 = tail call i32 @llvm.fshl.i32(i32 %xor494, i32 %xor494, i32 13) #6
  %or.i3520 = tail call i32 @llvm.fshl.i32(i32 %xor485, i32 %xor485, i32 3) #6
  %shl498 = shl i32 %or.i3519, 3
  %xor491 = xor i32 %or.i3520, %xor488
  %xor497 = xor i32 %xor491, %or489
  %xor500 = xor i32 %xor497, %or.i3519
  %or.i3521 = tail call i32 @llvm.fshl.i32(i32 %xor500, i32 %xor500, i32 1) #6
  %xor499 = xor i32 %xor491, %and486
  %xor502 = xor i32 %xor499, %shl498
  %or.i3522 = tail call i32 @llvm.fshl.i32(i32 %xor502, i32 %xor502, i32 7) #6
  %xor504 = xor i32 %or.i3521, %or.i3519
  %shl505 = shl i32 %or.i3521, 7
  %xor506 = xor i32 %or.i3522, %or.i3520
  %xor507 = xor i32 %xor504, %or.i3522
  %xor508 = xor i32 %xor506, %shl505
  %arrayidx509 = getelementptr i32, ptr %c, i32 51
  %117 = ptrtoint ptr %arrayidx509 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx509, align 4
  %xor510 = xor i32 %or.i3522, %118
  %arrayidx511 = getelementptr i32, ptr %c, i32 49
  %119 = ptrtoint ptr %arrayidx511 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx511, align 4
  %xor512 = xor i32 %or.i3521, %120
  %or.i3523 = tail call i32 @llvm.fshl.i32(i32 %xor507, i32 %xor507, i32 5) #6
  %or.i3524 = tail call i32 @llvm.fshl.i32(i32 %xor508, i32 %xor508, i32 22) #6
  %arrayidx515 = getelementptr i32, ptr %c, i32 48
  %121 = ptrtoint ptr %arrayidx515 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx515, align 4
  %xor516 = xor i32 %or.i3523, %122
  %arrayidx518 = getelementptr i32, ptr %c, i32 50
  %123 = ptrtoint ptr %arrayidx518 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx518, align 4
  %xor519 = xor i32 %or.i3524, %124
  %and520 = and i32 %xor516, %xor510
  %xor522 = xor i32 %and520, %xor519
  %or523 = or i32 %xor519, %xor510
  %xor521 = xor i32 %xor512, %xor510
  %xor524 = xor i32 %xor521, %xor516
  %xor525 = xor i32 %xor522, %xor510
  %or526 = or i32 %or523, %xor524
  %xor527 = xor i32 %or526, %xor512
  %and528 = and i32 %xor524, %xor512
  %xor529 = xor i32 %and528, %xor525
  %and530 = and i32 %xor527, %xor525
  %xor531 = xor i32 %xor527, %xor522
  %xor532 = xor i32 %and530, %xor524
  %or533 = or i32 %xor529, %xor522
  %neg534 = xor i32 %xor529, -1
  %xor536 = xor i32 %or533, %xor524
  %or.i3525 = tail call i32 @llvm.fshl.i32(i32 %neg534, i32 %neg534, i32 13) #6
  %or.i3526 = tail call i32 @llvm.fshl.i32(i32 %xor536, i32 %xor536, i32 3) #6
  %xor539 = xor i32 %xor531, %or.i3525
  %shl540 = shl i32 %or.i3525, 3
  %xor542 = xor i32 %xor539, %or.i3526
  %or.i3527 = tail call i32 @llvm.fshl.i32(i32 %xor542, i32 %xor542, i32 1) #6
  %xor541 = xor i32 %xor532, %shl540
  %xor544 = xor i32 %xor541, %or.i3526
  %or.i3528 = tail call i32 @llvm.fshl.i32(i32 %xor544, i32 %xor544, i32 7) #6
  %xor546 = xor i32 %or.i3527, %or.i3525
  %shl547 = shl i32 %or.i3527, 7
  %xor548 = xor i32 %or.i3528, %or.i3526
  %xor549 = xor i32 %xor546, %or.i3528
  %xor550 = xor i32 %xor548, %shl547
  %arrayidx551 = getelementptr i32, ptr %c, i32 55
  %125 = ptrtoint ptr %arrayidx551 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx551, align 4
  %arrayidx553 = getelementptr i32, ptr %c, i32 53
  %127 = ptrtoint ptr %arrayidx553 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx553, align 4
  %xor554 = xor i32 %or.i3527, %128
  %or.i3529 = tail call i32 @llvm.fshl.i32(i32 %xor549, i32 %xor549, i32 5) #6
  %or.i3530 = tail call i32 @llvm.fshl.i32(i32 %xor550, i32 %xor550, i32 22) #6
  %arrayidx557 = getelementptr i32, ptr %c, i32 52
  %129 = ptrtoint ptr %arrayidx557 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx557, align 4
  %xor558 = xor i32 %or.i3529, %130
  %arrayidx560 = getelementptr i32, ptr %c, i32 54
  %131 = ptrtoint ptr %arrayidx560 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx560, align 4
  %xor561 = xor i32 %or.i3530, %132
  %or562 = or i32 %xor558, %xor554
  %xor563 = xor i32 %xor561, %or562
  %133 = xor i32 %126, %or.i3528
  %neg564 = xor i32 %133, -1
  %xor565 = xor i32 %xor558, %xor554
  %xor566 = xor i32 %xor563, %xor558
  %or568 = or i32 %xor565, %neg564
  %xor569 = xor i32 %xor566, %or568
  %and570 = and i32 %xor566, %neg564
  %xor571 = xor i32 %xor565, %neg564
  %xor572 = xor i32 %xor563, %neg564
  %xor573 = xor i32 %and570, %xor571
  %and574 = and i32 %xor569, %xor563
  %xor575 = xor i32 %and574, %xor571
  %and576 = and i32 %and574, %xor571
  %xor578 = xor i32 %xor572, %and576
  %or.i3531 = tail call i32 @llvm.fshl.i32(i32 %xor569, i32 %xor569, i32 13) #6
  %or.i3532 = tail call i32 @llvm.fshl.i32(i32 %xor575, i32 %xor575, i32 3) #6
  %xor581 = xor i32 %xor573, %or.i3531
  %shl582 = shl i32 %or.i3531, 3
  %xor584 = xor i32 %xor581, %or.i3532
  %or.i3533 = tail call i32 @llvm.fshl.i32(i32 %xor584, i32 %xor584, i32 1) #6
  %xor583 = xor i32 %xor578, %shl582
  %xor586 = xor i32 %xor583, %or.i3532
  %or.i3534 = tail call i32 @llvm.fshl.i32(i32 %xor586, i32 %xor586, i32 7) #6
  %xor588 = xor i32 %or.i3533, %or.i3531
  %shl589 = shl i32 %or.i3533, 7
  %xor590 = xor i32 %or.i3534, %or.i3532
  %xor591 = xor i32 %xor588, %or.i3534
  %xor592 = xor i32 %xor590, %shl589
  %arrayidx593 = getelementptr i32, ptr %c, i32 59
  %134 = ptrtoint ptr %arrayidx593 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx593, align 4
  %xor594 = xor i32 %or.i3534, %135
  %arrayidx595 = getelementptr i32, ptr %c, i32 57
  %136 = ptrtoint ptr %arrayidx595 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx595, align 4
  %xor596 = xor i32 %or.i3533, %137
  %or.i3535 = tail call i32 @llvm.fshl.i32(i32 %xor591, i32 %xor591, i32 5) #6
  %or.i3536 = tail call i32 @llvm.fshl.i32(i32 %xor592, i32 %xor592, i32 22) #6
  %arrayidx599 = getelementptr i32, ptr %c, i32 56
  %138 = ptrtoint ptr %arrayidx599 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx599, align 4
  %xor600 = xor i32 %or.i3535, %139
  %arrayidx602 = getelementptr i32, ptr %c, i32 58
  %140 = ptrtoint ptr %arrayidx602 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx602, align 4
  %xor603 = xor i32 %or.i3536, %141
  %xor604 = xor i32 %xor594, %xor600
  %xor605 = xor i32 %xor603, %xor596
  %xor606 = xor i32 %xor603, %xor600
  %and607 = and i32 %xor604, %xor600
  %or608 = or i32 %xor605, %xor604
  %neg609 = xor i32 %xor596, -1
  %xor610 = xor i32 %or608, %and607
  %xor611 = xor i32 %or608, %xor606
  %xor612 = xor i32 %xor604, %neg609
  %and614 = and i32 %xor610, %xor606
  %xor616 = xor i32 %and614, %xor612
  %and617 = and i32 %xor611, %xor612
  %xor620 = xor i32 %xor616, %xor611
  %or.i3537 = tail call i32 @llvm.fshl.i32(i32 %xor616, i32 %xor616, i32 13) #6
  %or.i3538 = tail call i32 @llvm.fshl.i32(i32 %xor620, i32 %xor620, i32 3) #6
  %shl624 = shl i32 %or.i3537, 3
  %xor613 = xor i32 %or.i3538, %xor610
  %xor615 = xor i32 %xor613, %neg609
  %xor623 = xor i32 %xor615, %xor611
  %xor626 = xor i32 %xor623, %or.i3537
  %or.i3539 = tail call i32 @llvm.fshl.i32(i32 %xor626, i32 %xor626, i32 1) #6
  %xor625 = xor i32 %xor613, %and617
  %xor628 = xor i32 %xor625, %shl624
  %or.i3540 = tail call i32 @llvm.fshl.i32(i32 %xor628, i32 %xor628, i32 7) #6
  %xor630 = xor i32 %or.i3539, %or.i3537
  %shl631 = shl i32 %or.i3539, 7
  %xor632 = xor i32 %or.i3540, %or.i3538
  %xor633 = xor i32 %xor630, %or.i3540
  %xor634 = xor i32 %xor632, %shl631
  %arrayidx635 = getelementptr i32, ptr %c, i32 63
  %142 = ptrtoint ptr %arrayidx635 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx635, align 4
  %xor636 = xor i32 %or.i3540, %143
  %arrayidx637 = getelementptr i32, ptr %c, i32 61
  %144 = ptrtoint ptr %arrayidx637 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx637, align 4
  %or.i3541 = tail call i32 @llvm.fshl.i32(i32 %xor633, i32 %xor633, i32 5) #6
  %or.i3542 = tail call i32 @llvm.fshl.i32(i32 %xor634, i32 %xor634, i32 22) #6
  %arrayidx641 = getelementptr i32, ptr %c, i32 60
  %146 = ptrtoint ptr %arrayidx641 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx641, align 4
  %arrayidx644 = getelementptr i32, ptr %c, i32 62
  %148 = ptrtoint ptr %arrayidx644 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx644, align 4
  %xor645 = xor i32 %or.i3542, %149
  %150 = xor i32 %145, %or.i3539
  %neg646 = xor i32 %150, -1
  %151 = xor i32 %147, %or.i3541
  %neg647 = xor i32 %151, -1
  %and648 = and i32 %xor645, %neg646
  %xor649 = xor i32 %and648, %xor636
  %or650 = or i32 %xor636, %neg646
  %xor651 = xor i32 %xor645, %neg646
  %xor652 = xor i32 %xor645, %or650
  %xor653 = xor i32 %or650, %neg647
  %or654 = or i32 %xor649, %neg647
  %and655 = and i32 %or654, %xor652
  %xor656 = xor i32 %or654, %xor651
  %xor657 = xor i32 %xor651, %xor653
  %and658 = and i32 %xor656, %xor653
  %xor659 = xor i32 %xor657, %xor649
  %xor660 = xor i32 %and655, %xor659
  %xor661 = xor i32 %and658, %xor649
  %or662 = or i32 %xor656, %xor659
  %xor664 = xor i32 %or662, %xor649
  %or.i3543 = tail call i32 @llvm.fshl.i32(i32 %xor664, i32 %xor664, i32 13) #6
  %or.i3544 = tail call i32 @llvm.fshl.i32(i32 %xor661, i32 %xor661, i32 3) #6
  %xor667 = xor i32 %xor660, %or.i3543
  %shl668 = shl i32 %or.i3543, 3
  %xor669 = xor i32 %or.i3544, %xor656
  %xor670 = xor i32 %xor667, %or.i3544
  %or.i3545 = tail call i32 @llvm.fshl.i32(i32 %xor670, i32 %xor670, i32 1) #6
  %xor672 = xor i32 %xor669, %shl668
  %or.i3546 = tail call i32 @llvm.fshl.i32(i32 %xor672, i32 %xor672, i32 7) #6
  %xor674 = xor i32 %or.i3545, %or.i3543
  %shl675 = shl i32 %or.i3545, 7
  %xor676 = xor i32 %or.i3546, %or.i3544
  %xor677 = xor i32 %xor674, %or.i3546
  %xor678 = xor i32 %xor676, %shl675
  %arrayidx679 = getelementptr i32, ptr %c, i32 67
  %152 = ptrtoint ptr %arrayidx679 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx679, align 4
  %xor680 = xor i32 %or.i3546, %153
  %arrayidx681 = getelementptr i32, ptr %c, i32 65
  %154 = ptrtoint ptr %arrayidx681 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx681, align 4
  %xor682 = xor i32 %or.i3545, %155
  %or.i3547 = tail call i32 @llvm.fshl.i32(i32 %xor677, i32 %xor677, i32 5) #6
  %or.i3548 = tail call i32 @llvm.fshl.i32(i32 %xor678, i32 %xor678, i32 22) #6
  %arrayidx685 = getelementptr i32, ptr %c, i32 64
  %156 = ptrtoint ptr %arrayidx685 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx685, align 4
  %xor686 = xor i32 %or.i3547, %157
  %arrayidx688 = getelementptr i32, ptr %c, i32 66
  %158 = ptrtoint ptr %arrayidx688 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx688, align 4
  %xor689 = xor i32 %or.i3548, %159
  %or690 = or i32 %xor686, %xor680
  %xor691 = xor i32 %xor686, %xor680
  %xor692 = xor i32 %xor689, %xor680
  %neg693 = xor i32 %xor692, -1
  %xor694 = xor i32 %or690, %xor682
  %and695 = and i32 %xor691, %xor682
  %xor696 = xor i32 %and695, %neg693
  %xor697 = xor i32 %xor691, %xor689
  %xor698 = xor i32 %xor694, %xor691
  %or699 = or i32 %xor698, %neg693
  %xor700 = xor i32 %xor694, %xor689
  %and701 = and i32 %xor696, %xor697
  %xor702 = xor i32 %and701, %xor694
  %neg703 = xor i32 %and695, %xor692
  %xor704 = xor i32 %and701, %or699
  %xor706 = xor i32 %neg703, %xor704
  %or.i3549 = tail call i32 @llvm.fshl.i32(i32 %xor704, i32 %xor704, i32 13) #6
  %or.i3550 = tail call i32 @llvm.fshl.i32(i32 %xor702, i32 %xor702, i32 3) #6
  %xor709 = xor i32 %xor706, %or.i3549
  %shl710 = shl i32 %or.i3549, 3
  %xor711 = xor i32 %xor700, %or.i3550
  %xor712 = xor i32 %xor709, %or.i3550
  %or.i3551 = tail call i32 @llvm.fshl.i32(i32 %xor712, i32 %xor712, i32 1) #6
  %xor714 = xor i32 %xor711, %shl710
  %or.i3552 = tail call i32 @llvm.fshl.i32(i32 %xor714, i32 %xor714, i32 7) #6
  %xor716 = xor i32 %or.i3551, %or.i3549
  %shl717 = shl i32 %or.i3551, 7
  %xor718 = xor i32 %or.i3552, %or.i3550
  %xor719 = xor i32 %xor716, %or.i3552
  %xor720 = xor i32 %xor718, %shl717
  %arrayidx721 = getelementptr i32, ptr %c, i32 71
  %160 = ptrtoint ptr %arrayidx721 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx721, align 4
  %xor722 = xor i32 %or.i3552, %161
  %arrayidx723 = getelementptr i32, ptr %c, i32 69
  %162 = ptrtoint ptr %arrayidx723 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx723, align 4
  %xor724 = xor i32 %or.i3551, %163
  %or.i3553 = tail call i32 @llvm.fshl.i32(i32 %xor719, i32 %xor719, i32 5) #6
  %or.i3554 = tail call i32 @llvm.fshl.i32(i32 %xor720, i32 %xor720, i32 22) #6
  %arrayidx727 = getelementptr i32, ptr %c, i32 68
  %164 = ptrtoint ptr %arrayidx727 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx727, align 4
  %xor728 = xor i32 %or.i3553, %165
  %arrayidx730 = getelementptr i32, ptr %c, i32 70
  %166 = ptrtoint ptr %arrayidx730 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx730, align 4
  %xor731 = xor i32 %or.i3554, %167
  %xor732 = xor i32 %xor728, %xor724
  %xor733 = xor i32 %xor728, %xor722
  %and735 = and i32 %xor732, %xor724
  %or736 = or i32 %xor733, %xor732
  %168 = xor i32 %xor731, %xor722
  %xor737 = xor i32 %168, -1
  %xor738 = xor i32 %or736, %xor737
  %xor739 = xor i32 %xor732, %xor737
  %xor740 = xor i32 %and735, %xor737
  %or741 = or i32 %xor739, %and735
  %xor742 = xor i32 %and735, %xor731
  %and743 = and i32 %xor738, %xor731
  %xor744 = xor i32 %and743, %or741
  %or745 = or i32 %or741, %xor738
  %xor749 = xor i32 %xor742, %or745
  %or.i3555 = tail call i32 @llvm.fshl.i32(i32 %xor749, i32 %xor749, i32 13) #6
  %or.i3556 = tail call i32 @llvm.fshl.i32(i32 %xor740, i32 %xor740, i32 3) #6
  %shl753 = shl i32 %or.i3555, 3
  %xor752 = xor i32 %xor744, %or.i3556
  %xor755 = xor i32 %xor752, %or.i3555
  %or.i3557 = tail call i32 @llvm.fshl.i32(i32 %xor755, i32 %xor755, i32 1) #6
  %xor747 = xor i32 %xor752, %168
  %xor754 = xor i32 %xor747, %or736
  %xor757 = xor i32 %xor754, %shl753
  %or.i3558 = tail call i32 @llvm.fshl.i32(i32 %xor757, i32 %xor757, i32 7) #6
  %xor759 = xor i32 %or.i3557, %or.i3555
  %shl760 = shl i32 %or.i3557, 7
  %xor761 = xor i32 %or.i3558, %or.i3556
  %xor762 = xor i32 %xor759, %or.i3558
  %xor763 = xor i32 %xor761, %shl760
  %arrayidx764 = getelementptr i32, ptr %c, i32 75
  %169 = ptrtoint ptr %arrayidx764 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx764, align 4
  %arrayidx766 = getelementptr i32, ptr %c, i32 73
  %171 = ptrtoint ptr %arrayidx766 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx766, align 4
  %xor767 = xor i32 %or.i3557, %172
  %or.i3559 = tail call i32 @llvm.fshl.i32(i32 %xor762, i32 %xor762, i32 5) #6
  %or.i3560 = tail call i32 @llvm.fshl.i32(i32 %xor763, i32 %xor763, i32 22) #6
  %arrayidx770 = getelementptr i32, ptr %c, i32 72
  %173 = ptrtoint ptr %arrayidx770 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx770, align 4
  %xor771 = xor i32 %or.i3559, %174
  %arrayidx773 = getelementptr i32, ptr %c, i32 74
  %175 = ptrtoint ptr %arrayidx773 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx773, align 4
  %xor774 = xor i32 %or.i3560, %176
  %177 = xor i32 %170, %or.i3558
  %neg775 = xor i32 %177, -1
  %xor776 = xor i32 %xor767, %xor771
  %and777 = and i32 %xor771, %xor774
  %xor778 = xor i32 %and777, %neg775
  %or779 = or i32 %xor771, %neg775
  %xor780 = xor i32 %xor776, %xor774
  %xor781 = xor i32 %or779, %xor776
  %and782 = and i32 %xor778, %xor776
  %and784 = and i32 %xor780, %xor781
  %or785 = or i32 %and782, %xor781
  %178 = xor i32 %xor780, %xor778
  %neg786 = xor i32 %178, -1
  %xor787 = xor i32 %or785, %neg786
  %xor788 = xor i32 %xor771, %neg786
  %xor789 = xor i32 %and784, %neg786
  %or791 = or i32 %and782, %and784
  %or.i3561 = tail call i32 @llvm.fshl.i32(i32 %xor788, i32 %xor788, i32 13) #6
  %or.i3562 = tail call i32 @llvm.fshl.i32(i32 %xor789, i32 %xor789, i32 3) #6
  %xor794 = xor i32 %or.i3561, %or791
  %shl795 = shl i32 %or.i3561, 3
  %xor796 = xor i32 %xor787, %or.i3562
  %xor797 = xor i32 %xor794, %or.i3562
  %or.i3563 = tail call i32 @llvm.fshl.i32(i32 %xor797, i32 %xor797, i32 1) #6
  %xor799 = xor i32 %xor796, %shl795
  %or.i3564 = tail call i32 @llvm.fshl.i32(i32 %xor799, i32 %xor799, i32 7) #6
  %xor801 = xor i32 %or.i3563, %or.i3561
  %shl802 = shl i32 %or.i3563, 7
  %xor803 = xor i32 %or.i3564, %or.i3562
  %xor804 = xor i32 %xor801, %or.i3564
  %xor805 = xor i32 %xor803, %shl802
  %arrayidx806 = getelementptr i32, ptr %c, i32 79
  %179 = ptrtoint ptr %arrayidx806 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx806, align 4
  %xor807 = xor i32 %or.i3564, %180
  %arrayidx808 = getelementptr i32, ptr %c, i32 77
  %181 = ptrtoint ptr %arrayidx808 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx808, align 4
  %xor809 = xor i32 %or.i3563, %182
  %or.i3565 = tail call i32 @llvm.fshl.i32(i32 %xor804, i32 %xor804, i32 5) #6
  %or.i3566 = tail call i32 @llvm.fshl.i32(i32 %xor805, i32 %xor805, i32 22) #6
  %arrayidx812 = getelementptr i32, ptr %c, i32 76
  %183 = ptrtoint ptr %arrayidx812 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx812, align 4
  %xor813 = xor i32 %or.i3565, %184
  %arrayidx815 = getelementptr i32, ptr %c, i32 78
  %185 = ptrtoint ptr %arrayidx815 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx815, align 4
  %xor816 = xor i32 %or.i3566, %186
  %xor817 = xor i32 %xor809, %xor807
  %or818 = or i32 %xor813, %xor807
  %and819 = and i32 %xor813, %xor809
  %xor820 = xor i32 %xor813, %xor816
  %xor821 = xor i32 %xor816, %xor817
  %and822 = and i32 %or818, %xor817
  %xor823 = xor i32 %xor821, %or818
  %or824 = or i32 %xor820, %and819
  %xor825 = xor i32 %and819, %or818
  %xor826 = xor i32 %and822, %or824
  %and827 = and i32 %or824, %or818
  %xor829 = xor i32 %and819, %xor821
  %or830 = or i32 %xor826, %xor825
  %and831 = and i32 %xor826, %xor823
  %xor835 = xor i32 %and831, %xor829
  %or.i3567 = tail call i32 @llvm.fshl.i32(i32 %xor835, i32 %xor835, i32 13) #6
  %or.i3568 = tail call i32 @llvm.fshl.i32(i32 %xor826, i32 %xor826, i32 3) #6
  %shl839 = shl i32 %or.i3567, 3
  %xor832 = xor i32 %or.i3568, %xor829
  %xor838 = xor i32 %xor832, %or830
  %xor841 = xor i32 %xor838, %or.i3567
  %or.i3569 = tail call i32 @llvm.fshl.i32(i32 %xor841, i32 %xor841, i32 1) #6
  %xor840 = xor i32 %xor832, %and827
  %xor843 = xor i32 %xor840, %shl839
  %or.i3570 = tail call i32 @llvm.fshl.i32(i32 %xor843, i32 %xor843, i32 7) #6
  %xor845 = xor i32 %or.i3569, %or.i3567
  %shl846 = shl i32 %or.i3569, 7
  %xor847 = xor i32 %or.i3570, %or.i3568
  %xor848 = xor i32 %xor845, %or.i3570
  %xor849 = xor i32 %xor847, %shl846
  %arrayidx850 = getelementptr i32, ptr %c, i32 83
  %187 = ptrtoint ptr %arrayidx850 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx850, align 4
  %xor851 = xor i32 %or.i3570, %188
  %arrayidx852 = getelementptr i32, ptr %c, i32 81
  %189 = ptrtoint ptr %arrayidx852 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx852, align 4
  %xor853 = xor i32 %or.i3569, %190
  %or.i3571 = tail call i32 @llvm.fshl.i32(i32 %xor848, i32 %xor848, i32 5) #6
  %or.i3572 = tail call i32 @llvm.fshl.i32(i32 %xor849, i32 %xor849, i32 22) #6
  %arrayidx856 = getelementptr i32, ptr %c, i32 80
  %191 = ptrtoint ptr %arrayidx856 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx856, align 4
  %xor857 = xor i32 %or.i3571, %192
  %arrayidx859 = getelementptr i32, ptr %c, i32 82
  %193 = ptrtoint ptr %arrayidx859 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx859, align 4
  %xor860 = xor i32 %or.i3572, %194
  %and861 = and i32 %xor857, %xor851
  %xor863 = xor i32 %and861, %xor860
  %or864 = or i32 %xor860, %xor851
  %xor862 = xor i32 %xor853, %xor851
  %xor865 = xor i32 %xor862, %xor857
  %xor866 = xor i32 %xor863, %xor851
  %or867 = or i32 %or864, %xor865
  %xor868 = xor i32 %or867, %xor853
  %and869 = and i32 %xor865, %xor853
  %xor870 = xor i32 %and869, %xor866
  %and871 = and i32 %xor868, %xor866
  %xor872 = xor i32 %xor868, %xor863
  %xor873 = xor i32 %and871, %xor865
  %or874 = or i32 %xor870, %xor863
  %neg875 = xor i32 %xor870, -1
  %xor877 = xor i32 %or874, %xor865
  %or.i3573 = tail call i32 @llvm.fshl.i32(i32 %neg875, i32 %neg875, i32 13) #6
  %or.i3574 = tail call i32 @llvm.fshl.i32(i32 %xor877, i32 %xor877, i32 3) #6
  %xor880 = xor i32 %xor872, %or.i3573
  %shl881 = shl i32 %or.i3573, 3
  %xor883 = xor i32 %xor880, %or.i3574
  %or.i3575 = tail call i32 @llvm.fshl.i32(i32 %xor883, i32 %xor883, i32 1) #6
  %xor882 = xor i32 %xor873, %shl881
  %xor885 = xor i32 %xor882, %or.i3574
  %or.i3576 = tail call i32 @llvm.fshl.i32(i32 %xor885, i32 %xor885, i32 7) #6
  %xor887 = xor i32 %or.i3575, %or.i3573
  %shl888 = shl i32 %or.i3575, 7
  %xor889 = xor i32 %or.i3576, %or.i3574
  %xor890 = xor i32 %xor887, %or.i3576
  %xor891 = xor i32 %xor889, %shl888
  %arrayidx892 = getelementptr i32, ptr %c, i32 87
  %195 = ptrtoint ptr %arrayidx892 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx892, align 4
  %arrayidx894 = getelementptr i32, ptr %c, i32 85
  %197 = ptrtoint ptr %arrayidx894 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx894, align 4
  %xor895 = xor i32 %or.i3575, %198
  %or.i3577 = tail call i32 @llvm.fshl.i32(i32 %xor890, i32 %xor890, i32 5) #6
  %or.i3578 = tail call i32 @llvm.fshl.i32(i32 %xor891, i32 %xor891, i32 22) #6
  %arrayidx898 = getelementptr i32, ptr %c, i32 84
  %199 = ptrtoint ptr %arrayidx898 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx898, align 4
  %xor899 = xor i32 %or.i3577, %200
  %arrayidx901 = getelementptr i32, ptr %c, i32 86
  %201 = ptrtoint ptr %arrayidx901 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx901, align 4
  %xor902 = xor i32 %or.i3578, %202
  %or903 = or i32 %xor899, %xor895
  %xor904 = xor i32 %xor902, %or903
  %203 = xor i32 %196, %or.i3576
  %neg905 = xor i32 %203, -1
  %xor906 = xor i32 %xor899, %xor895
  %xor907 = xor i32 %xor904, %xor899
  %or909 = or i32 %xor906, %neg905
  %xor910 = xor i32 %xor907, %or909
  %and911 = and i32 %xor907, %neg905
  %xor912 = xor i32 %xor906, %neg905
  %xor913 = xor i32 %xor904, %neg905
  %xor914 = xor i32 %and911, %xor912
  %and915 = and i32 %xor910, %xor904
  %xor916 = xor i32 %and915, %xor912
  %and917 = and i32 %and915, %xor912
  %xor919 = xor i32 %xor913, %and917
  %or.i3579 = tail call i32 @llvm.fshl.i32(i32 %xor910, i32 %xor910, i32 13) #6
  %or.i3580 = tail call i32 @llvm.fshl.i32(i32 %xor916, i32 %xor916, i32 3) #6
  %xor922 = xor i32 %xor914, %or.i3579
  %shl923 = shl i32 %or.i3579, 3
  %xor925 = xor i32 %xor922, %or.i3580
  %or.i3581 = tail call i32 @llvm.fshl.i32(i32 %xor925, i32 %xor925, i32 1) #6
  %xor924 = xor i32 %xor919, %shl923
  %xor927 = xor i32 %xor924, %or.i3580
  %or.i3582 = tail call i32 @llvm.fshl.i32(i32 %xor927, i32 %xor927, i32 7) #6
  %xor929 = xor i32 %or.i3581, %or.i3579
  %shl930 = shl i32 %or.i3581, 7
  %xor931 = xor i32 %or.i3582, %or.i3580
  %xor932 = xor i32 %xor929, %or.i3582
  %xor933 = xor i32 %xor931, %shl930
  %arrayidx934 = getelementptr i32, ptr %c, i32 91
  %204 = ptrtoint ptr %arrayidx934 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx934, align 4
  %xor935 = xor i32 %or.i3582, %205
  %arrayidx936 = getelementptr i32, ptr %c, i32 89
  %206 = ptrtoint ptr %arrayidx936 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx936, align 4
  %xor937 = xor i32 %or.i3581, %207
  %or.i3583 = tail call i32 @llvm.fshl.i32(i32 %xor932, i32 %xor932, i32 5) #6
  %or.i3584 = tail call i32 @llvm.fshl.i32(i32 %xor933, i32 %xor933, i32 22) #6
  %arrayidx940 = getelementptr i32, ptr %c, i32 88
  %208 = ptrtoint ptr %arrayidx940 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx940, align 4
  %xor941 = xor i32 %or.i3583, %209
  %arrayidx943 = getelementptr i32, ptr %c, i32 90
  %210 = ptrtoint ptr %arrayidx943 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx943, align 4
  %xor944 = xor i32 %or.i3584, %211
  %xor945 = xor i32 %xor935, %xor941
  %xor946 = xor i32 %xor944, %xor937
  %xor947 = xor i32 %xor944, %xor941
  %and948 = and i32 %xor945, %xor941
  %or949 = or i32 %xor946, %xor945
  %neg950 = xor i32 %xor937, -1
  %xor951 = xor i32 %or949, %and948
  %xor952 = xor i32 %or949, %xor947
  %xor953 = xor i32 %xor945, %neg950
  %and955 = and i32 %xor951, %xor947
  %xor957 = xor i32 %and955, %xor953
  %and958 = and i32 %xor952, %xor953
  %xor961 = xor i32 %xor957, %xor952
  %or.i3585 = tail call i32 @llvm.fshl.i32(i32 %xor957, i32 %xor957, i32 13) #6
  %or.i3586 = tail call i32 @llvm.fshl.i32(i32 %xor961, i32 %xor961, i32 3) #6
  %shl965 = shl i32 %or.i3585, 3
  %xor954 = xor i32 %or.i3586, %xor951
  %xor956 = xor i32 %xor954, %neg950
  %xor964 = xor i32 %xor956, %xor952
  %xor967 = xor i32 %xor964, %or.i3585
  %or.i3587 = tail call i32 @llvm.fshl.i32(i32 %xor967, i32 %xor967, i32 1) #6
  %xor966 = xor i32 %xor954, %and958
  %xor969 = xor i32 %xor966, %shl965
  %or.i3588 = tail call i32 @llvm.fshl.i32(i32 %xor969, i32 %xor969, i32 7) #6
  %xor971 = xor i32 %or.i3587, %or.i3585
  %shl972 = shl i32 %or.i3587, 7
  %xor973 = xor i32 %or.i3588, %or.i3586
  %xor974 = xor i32 %xor971, %or.i3588
  %xor975 = xor i32 %xor973, %shl972
  %arrayidx976 = getelementptr i32, ptr %c, i32 95
  %212 = ptrtoint ptr %arrayidx976 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx976, align 4
  %xor977 = xor i32 %or.i3588, %213
  %arrayidx978 = getelementptr i32, ptr %c, i32 93
  %214 = ptrtoint ptr %arrayidx978 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx978, align 4
  %or.i3589 = tail call i32 @llvm.fshl.i32(i32 %xor974, i32 %xor974, i32 5) #6
  %or.i3590 = tail call i32 @llvm.fshl.i32(i32 %xor975, i32 %xor975, i32 22) #6
  %arrayidx982 = getelementptr i32, ptr %c, i32 92
  %216 = ptrtoint ptr %arrayidx982 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx982, align 4
  %arrayidx985 = getelementptr i32, ptr %c, i32 94
  %218 = ptrtoint ptr %arrayidx985 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx985, align 4
  %xor986 = xor i32 %or.i3590, %219
  %220 = xor i32 %215, %or.i3587
  %neg987 = xor i32 %220, -1
  %221 = xor i32 %217, %or.i3589
  %neg988 = xor i32 %221, -1
  %and989 = and i32 %xor986, %neg987
  %xor990 = xor i32 %and989, %xor977
  %or991 = or i32 %xor977, %neg987
  %xor992 = xor i32 %xor986, %neg987
  %xor993 = xor i32 %xor986, %or991
  %xor994 = xor i32 %or991, %neg988
  %or995 = or i32 %xor990, %neg988
  %and996 = and i32 %or995, %xor993
  %xor997 = xor i32 %or995, %xor992
  %xor998 = xor i32 %xor992, %xor994
  %and999 = and i32 %xor997, %xor994
  %xor1000 = xor i32 %xor998, %xor990
  %xor1001 = xor i32 %and996, %xor1000
  %xor1002 = xor i32 %and999, %xor990
  %or1003 = or i32 %xor997, %xor1000
  %xor1005 = xor i32 %or1003, %xor990
  %or.i3591 = tail call i32 @llvm.fshl.i32(i32 %xor1005, i32 %xor1005, i32 13) #6
  %or.i3592 = tail call i32 @llvm.fshl.i32(i32 %xor1002, i32 %xor1002, i32 3) #6
  %xor1008 = xor i32 %xor1001, %or.i3591
  %shl1009 = shl i32 %or.i3591, 3
  %xor1010 = xor i32 %or.i3592, %xor997
  %xor1011 = xor i32 %xor1008, %or.i3592
  %or.i3593 = tail call i32 @llvm.fshl.i32(i32 %xor1011, i32 %xor1011, i32 1) #6
  %xor1013 = xor i32 %xor1010, %shl1009
  %or.i3594 = tail call i32 @llvm.fshl.i32(i32 %xor1013, i32 %xor1013, i32 7) #6
  %xor1015 = xor i32 %or.i3593, %or.i3591
  %shl1016 = shl i32 %or.i3593, 7
  %xor1017 = xor i32 %or.i3594, %or.i3592
  %xor1018 = xor i32 %xor1015, %or.i3594
  %xor1019 = xor i32 %xor1017, %shl1016
  %arrayidx1020 = getelementptr i32, ptr %c, i32 99
  %222 = ptrtoint ptr %arrayidx1020 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx1020, align 4
  %xor1021 = xor i32 %or.i3594, %223
  %arrayidx1022 = getelementptr i32, ptr %c, i32 97
  %224 = ptrtoint ptr %arrayidx1022 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx1022, align 4
  %xor1023 = xor i32 %or.i3593, %225
  %or.i3595 = tail call i32 @llvm.fshl.i32(i32 %xor1018, i32 %xor1018, i32 5) #6
  %or.i3596 = tail call i32 @llvm.fshl.i32(i32 %xor1019, i32 %xor1019, i32 22) #6
  %arrayidx1026 = getelementptr i32, ptr %c, i32 96
  %226 = ptrtoint ptr %arrayidx1026 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx1026, align 4
  %xor1027 = xor i32 %or.i3595, %227
  %arrayidx1029 = getelementptr i32, ptr %c, i32 98
  %228 = ptrtoint ptr %arrayidx1029 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx1029, align 4
  %xor1030 = xor i32 %or.i3596, %229
  %or1031 = or i32 %xor1027, %xor1021
  %xor1032 = xor i32 %xor1027, %xor1021
  %xor1033 = xor i32 %xor1030, %xor1021
  %neg1034 = xor i32 %xor1033, -1
  %xor1035 = xor i32 %or1031, %xor1023
  %and1036 = and i32 %xor1032, %xor1023
  %xor1037 = xor i32 %and1036, %neg1034
  %xor1038 = xor i32 %xor1032, %xor1030
  %xor1039 = xor i32 %xor1035, %xor1032
  %or1040 = or i32 %xor1039, %neg1034
  %xor1041 = xor i32 %xor1035, %xor1030
  %and1042 = and i32 %xor1037, %xor1038
  %xor1043 = xor i32 %and1042, %xor1035
  %neg1044 = xor i32 %and1036, %xor1033
  %xor1045 = xor i32 %and1042, %or1040
  %xor1047 = xor i32 %neg1044, %xor1045
  %or.i3597 = tail call i32 @llvm.fshl.i32(i32 %xor1045, i32 %xor1045, i32 13) #6
  %or.i3598 = tail call i32 @llvm.fshl.i32(i32 %xor1043, i32 %xor1043, i32 3) #6
  %xor1050 = xor i32 %xor1047, %or.i3597
  %shl1051 = shl i32 %or.i3597, 3
  %xor1052 = xor i32 %xor1041, %or.i3598
  %xor1053 = xor i32 %xor1050, %or.i3598
  %or.i3599 = tail call i32 @llvm.fshl.i32(i32 %xor1053, i32 %xor1053, i32 1) #6
  %xor1055 = xor i32 %xor1052, %shl1051
  %or.i3600 = tail call i32 @llvm.fshl.i32(i32 %xor1055, i32 %xor1055, i32 7) #6
  %xor1057 = xor i32 %or.i3599, %or.i3597
  %shl1058 = shl i32 %or.i3599, 7
  %xor1059 = xor i32 %or.i3600, %or.i3598
  %xor1060 = xor i32 %xor1057, %or.i3600
  %xor1061 = xor i32 %xor1059, %shl1058
  %arrayidx1062 = getelementptr i32, ptr %c, i32 103
  %230 = ptrtoint ptr %arrayidx1062 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx1062, align 4
  %xor1063 = xor i32 %or.i3600, %231
  %arrayidx1064 = getelementptr i32, ptr %c, i32 101
  %232 = ptrtoint ptr %arrayidx1064 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx1064, align 4
  %xor1065 = xor i32 %or.i3599, %233
  %or.i3601 = tail call i32 @llvm.fshl.i32(i32 %xor1060, i32 %xor1060, i32 5) #6
  %or.i3602 = tail call i32 @llvm.fshl.i32(i32 %xor1061, i32 %xor1061, i32 22) #6
  %arrayidx1068 = getelementptr i32, ptr %c, i32 100
  %234 = ptrtoint ptr %arrayidx1068 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx1068, align 4
  %xor1069 = xor i32 %or.i3601, %235
  %arrayidx1071 = getelementptr i32, ptr %c, i32 102
  %236 = ptrtoint ptr %arrayidx1071 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx1071, align 4
  %xor1072 = xor i32 %or.i3602, %237
  %xor1073 = xor i32 %xor1069, %xor1065
  %xor1074 = xor i32 %xor1069, %xor1063
  %and1076 = and i32 %xor1073, %xor1065
  %or1077 = or i32 %xor1074, %xor1073
  %238 = xor i32 %xor1072, %xor1063
  %xor1078 = xor i32 %238, -1
  %xor1079 = xor i32 %or1077, %xor1078
  %xor1080 = xor i32 %xor1073, %xor1078
  %xor1081 = xor i32 %and1076, %xor1078
  %or1082 = or i32 %xor1080, %and1076
  %xor1083 = xor i32 %and1076, %xor1072
  %and1084 = and i32 %xor1079, %xor1072
  %xor1085 = xor i32 %and1084, %or1082
  %or1086 = or i32 %or1082, %xor1079
  %xor1090 = xor i32 %xor1083, %or1086
  %or.i3603 = tail call i32 @llvm.fshl.i32(i32 %xor1090, i32 %xor1090, i32 13) #6
  %or.i3604 = tail call i32 @llvm.fshl.i32(i32 %xor1081, i32 %xor1081, i32 3) #6
  %shl1094 = shl i32 %or.i3603, 3
  %xor1093 = xor i32 %xor1085, %or.i3604
  %xor1096 = xor i32 %xor1093, %or.i3603
  %or.i3605 = tail call i32 @llvm.fshl.i32(i32 %xor1096, i32 %xor1096, i32 1) #6
  %xor1088 = xor i32 %xor1093, %238
  %xor1095 = xor i32 %xor1088, %or1077
  %xor1098 = xor i32 %xor1095, %shl1094
  %or.i3606 = tail call i32 @llvm.fshl.i32(i32 %xor1098, i32 %xor1098, i32 7) #6
  %xor1100 = xor i32 %or.i3605, %or.i3603
  %shl1101 = shl i32 %or.i3605, 7
  %xor1102 = xor i32 %or.i3606, %or.i3604
  %xor1103 = xor i32 %xor1100, %or.i3606
  %xor1104 = xor i32 %xor1102, %shl1101
  %arrayidx1105 = getelementptr i32, ptr %c, i32 107
  %239 = ptrtoint ptr %arrayidx1105 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx1105, align 4
  %arrayidx1107 = getelementptr i32, ptr %c, i32 105
  %241 = ptrtoint ptr %arrayidx1107 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx1107, align 4
  %xor1108 = xor i32 %or.i3605, %242
  %or.i3607 = tail call i32 @llvm.fshl.i32(i32 %xor1103, i32 %xor1103, i32 5) #6
  %or.i3608 = tail call i32 @llvm.fshl.i32(i32 %xor1104, i32 %xor1104, i32 22) #6
  %arrayidx1111 = getelementptr i32, ptr %c, i32 104
  %243 = ptrtoint ptr %arrayidx1111 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx1111, align 4
  %xor1112 = xor i32 %or.i3607, %244
  %arrayidx1114 = getelementptr i32, ptr %c, i32 106
  %245 = ptrtoint ptr %arrayidx1114 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %arrayidx1114, align 4
  %xor1115 = xor i32 %or.i3608, %246
  %247 = xor i32 %240, %or.i3606
  %neg1116 = xor i32 %247, -1
  %xor1117 = xor i32 %xor1108, %xor1112
  %and1118 = and i32 %xor1112, %xor1115
  %xor1119 = xor i32 %and1118, %neg1116
  %or1120 = or i32 %xor1112, %neg1116
  %xor1121 = xor i32 %xor1117, %xor1115
  %xor1122 = xor i32 %or1120, %xor1117
  %and1123 = and i32 %xor1119, %xor1117
  %and1125 = and i32 %xor1121, %xor1122
  %or1126 = or i32 %and1123, %xor1122
  %248 = xor i32 %xor1121, %xor1119
  %neg1127 = xor i32 %248, -1
  %xor1128 = xor i32 %or1126, %neg1127
  %xor1129 = xor i32 %xor1112, %neg1127
  %xor1130 = xor i32 %and1125, %neg1127
  %or1132 = or i32 %and1123, %and1125
  %or.i3609 = tail call i32 @llvm.fshl.i32(i32 %xor1129, i32 %xor1129, i32 13) #6
  %or.i3610 = tail call i32 @llvm.fshl.i32(i32 %xor1130, i32 %xor1130, i32 3) #6
  %xor1135 = xor i32 %or.i3609, %or1132
  %shl1136 = shl i32 %or.i3609, 3
  %xor1137 = xor i32 %xor1128, %or.i3610
  %xor1138 = xor i32 %xor1135, %or.i3610
  %or.i3611 = tail call i32 @llvm.fshl.i32(i32 %xor1138, i32 %xor1138, i32 1) #6
  %xor1140 = xor i32 %xor1137, %shl1136
  %or.i3612 = tail call i32 @llvm.fshl.i32(i32 %xor1140, i32 %xor1140, i32 7) #6
  %xor1142 = xor i32 %or.i3611, %or.i3609
  %shl1143 = shl i32 %or.i3611, 7
  %xor1144 = xor i32 %or.i3612, %or.i3610
  %xor1145 = xor i32 %xor1142, %or.i3612
  %xor1146 = xor i32 %xor1144, %shl1143
  %arrayidx1147 = getelementptr i32, ptr %c, i32 111
  %249 = ptrtoint ptr %arrayidx1147 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx1147, align 4
  %xor1148 = xor i32 %or.i3612, %250
  %arrayidx1149 = getelementptr i32, ptr %c, i32 109
  %251 = ptrtoint ptr %arrayidx1149 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %arrayidx1149, align 4
  %xor1150 = xor i32 %or.i3611, %252
  %or.i3613 = tail call i32 @llvm.fshl.i32(i32 %xor1145, i32 %xor1145, i32 5) #6
  %or.i3614 = tail call i32 @llvm.fshl.i32(i32 %xor1146, i32 %xor1146, i32 22) #6
  %arrayidx1153 = getelementptr i32, ptr %c, i32 108
  %253 = ptrtoint ptr %arrayidx1153 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx1153, align 4
  %xor1154 = xor i32 %or.i3613, %254
  %arrayidx1156 = getelementptr i32, ptr %c, i32 110
  %255 = ptrtoint ptr %arrayidx1156 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %arrayidx1156, align 4
  %xor1157 = xor i32 %or.i3614, %256
  %xor1158 = xor i32 %xor1150, %xor1148
  %or1159 = or i32 %xor1154, %xor1148
  %and1160 = and i32 %xor1154, %xor1150
  %xor1161 = xor i32 %xor1154, %xor1157
  %xor1162 = xor i32 %xor1157, %xor1158
  %and1163 = and i32 %or1159, %xor1158
  %xor1164 = xor i32 %xor1162, %or1159
  %or1165 = or i32 %xor1161, %and1160
  %xor1166 = xor i32 %and1160, %or1159
  %xor1167 = xor i32 %and1163, %or1165
  %and1168 = and i32 %or1165, %or1159
  %xor1170 = xor i32 %and1160, %xor1162
  %or1171 = or i32 %xor1167, %xor1166
  %and1172 = and i32 %xor1167, %xor1164
  %xor1176 = xor i32 %and1172, %xor1170
  %or.i3615 = tail call i32 @llvm.fshl.i32(i32 %xor1176, i32 %xor1176, i32 13) #6
  %or.i3616 = tail call i32 @llvm.fshl.i32(i32 %xor1167, i32 %xor1167, i32 3) #6
  %shl1180 = shl i32 %or.i3615, 3
  %xor1173 = xor i32 %or.i3616, %xor1170
  %xor1179 = xor i32 %xor1173, %or1171
  %xor1182 = xor i32 %xor1179, %or.i3615
  %or.i3617 = tail call i32 @llvm.fshl.i32(i32 %xor1182, i32 %xor1182, i32 1) #6
  %xor1181 = xor i32 %xor1173, %and1168
  %xor1184 = xor i32 %xor1181, %shl1180
  %or.i3618 = tail call i32 @llvm.fshl.i32(i32 %xor1184, i32 %xor1184, i32 7) #6
  %xor1186 = xor i32 %or.i3617, %or.i3615
  %shl1187 = shl i32 %or.i3617, 7
  %xor1188 = xor i32 %or.i3618, %or.i3616
  %xor1189 = xor i32 %xor1186, %or.i3618
  %xor1190 = xor i32 %xor1188, %shl1187
  %arrayidx1191 = getelementptr i32, ptr %c, i32 115
  %257 = ptrtoint ptr %arrayidx1191 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %arrayidx1191, align 4
  %xor1192 = xor i32 %or.i3618, %258
  %arrayidx1193 = getelementptr i32, ptr %c, i32 113
  %259 = ptrtoint ptr %arrayidx1193 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %arrayidx1193, align 4
  %xor1194 = xor i32 %or.i3617, %260
  %or.i3619 = tail call i32 @llvm.fshl.i32(i32 %xor1189, i32 %xor1189, i32 5) #6
  %or.i3620 = tail call i32 @llvm.fshl.i32(i32 %xor1190, i32 %xor1190, i32 22) #6
  %arrayidx1197 = getelementptr i32, ptr %c, i32 112
  %261 = ptrtoint ptr %arrayidx1197 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx1197, align 4
  %xor1198 = xor i32 %or.i3619, %262
  %arrayidx1200 = getelementptr i32, ptr %c, i32 114
  %263 = ptrtoint ptr %arrayidx1200 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %arrayidx1200, align 4
  %xor1201 = xor i32 %or.i3620, %264
  %and1202 = and i32 %xor1198, %xor1192
  %xor1204 = xor i32 %and1202, %xor1201
  %or1205 = or i32 %xor1201, %xor1192
  %xor1203 = xor i32 %xor1194, %xor1192
  %xor1206 = xor i32 %xor1203, %xor1198
  %xor1207 = xor i32 %xor1204, %xor1192
  %or1208 = or i32 %or1205, %xor1206
  %xor1209 = xor i32 %or1208, %xor1194
  %and1210 = and i32 %xor1206, %xor1194
  %xor1211 = xor i32 %and1210, %xor1207
  %and1212 = and i32 %xor1209, %xor1207
  %xor1213 = xor i32 %xor1209, %xor1204
  %xor1214 = xor i32 %and1212, %xor1206
  %or1215 = or i32 %xor1211, %xor1204
  %neg1216 = xor i32 %xor1211, -1
  %xor1218 = xor i32 %or1215, %xor1206
  %or.i3621 = tail call i32 @llvm.fshl.i32(i32 %neg1216, i32 %neg1216, i32 13) #6
  %or.i3622 = tail call i32 @llvm.fshl.i32(i32 %xor1218, i32 %xor1218, i32 3) #6
  %xor1221 = xor i32 %xor1213, %or.i3621
  %shl1222 = shl i32 %or.i3621, 3
  %xor1224 = xor i32 %xor1221, %or.i3622
  %or.i3623 = tail call i32 @llvm.fshl.i32(i32 %xor1224, i32 %xor1224, i32 1) #6
  %xor1223 = xor i32 %xor1214, %shl1222
  %xor1226 = xor i32 %xor1223, %or.i3622
  %or.i3624 = tail call i32 @llvm.fshl.i32(i32 %xor1226, i32 %xor1226, i32 7) #6
  %xor1228 = xor i32 %or.i3623, %or.i3621
  %shl1229 = shl i32 %or.i3623, 7
  %xor1230 = xor i32 %or.i3624, %or.i3622
  %xor1231 = xor i32 %xor1228, %or.i3624
  %xor1232 = xor i32 %xor1230, %shl1229
  %arrayidx1233 = getelementptr i32, ptr %c, i32 119
  %265 = ptrtoint ptr %arrayidx1233 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %arrayidx1233, align 4
  %arrayidx1235 = getelementptr i32, ptr %c, i32 117
  %267 = ptrtoint ptr %arrayidx1235 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %arrayidx1235, align 4
  %xor1236 = xor i32 %or.i3623, %268
  %or.i3625 = tail call i32 @llvm.fshl.i32(i32 %xor1231, i32 %xor1231, i32 5) #6
  %or.i3626 = tail call i32 @llvm.fshl.i32(i32 %xor1232, i32 %xor1232, i32 22) #6
  %arrayidx1239 = getelementptr i32, ptr %c, i32 116
  %269 = ptrtoint ptr %arrayidx1239 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %arrayidx1239, align 4
  %xor1240 = xor i32 %or.i3625, %270
  %arrayidx1242 = getelementptr i32, ptr %c, i32 118
  %271 = ptrtoint ptr %arrayidx1242 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx1242, align 4
  %xor1243 = xor i32 %or.i3626, %272
  %or1244 = or i32 %xor1240, %xor1236
  %xor1245 = xor i32 %xor1243, %or1244
  %273 = xor i32 %266, %or.i3624
  %neg1246 = xor i32 %273, -1
  %xor1247 = xor i32 %xor1240, %xor1236
  %xor1248 = xor i32 %xor1245, %xor1240
  %or1250 = or i32 %xor1247, %neg1246
  %xor1251 = xor i32 %xor1248, %or1250
  %and1252 = and i32 %xor1248, %neg1246
  %xor1253 = xor i32 %xor1247, %neg1246
  %xor1254 = xor i32 %xor1245, %neg1246
  %xor1255 = xor i32 %and1252, %xor1253
  %and1256 = and i32 %xor1251, %xor1245
  %xor1257 = xor i32 %and1256, %xor1253
  %and1258 = and i32 %and1256, %xor1253
  %xor1260 = xor i32 %xor1254, %and1258
  %or.i3627 = tail call i32 @llvm.fshl.i32(i32 %xor1251, i32 %xor1251, i32 13) #6
  %or.i3628 = tail call i32 @llvm.fshl.i32(i32 %xor1257, i32 %xor1257, i32 3) #6
  %xor1263 = xor i32 %xor1255, %or.i3627
  %shl1264 = shl i32 %or.i3627, 3
  %xor1266 = xor i32 %xor1263, %or.i3628
  %or.i3629 = tail call i32 @llvm.fshl.i32(i32 %xor1266, i32 %xor1266, i32 1) #6
  %xor1265 = xor i32 %xor1260, %shl1264
  %xor1268 = xor i32 %xor1265, %or.i3628
  %or.i3630 = tail call i32 @llvm.fshl.i32(i32 %xor1268, i32 %xor1268, i32 7) #6
  %xor1270 = xor i32 %or.i3629, %or.i3627
  %shl1271 = shl i32 %or.i3629, 7
  %xor1272 = xor i32 %or.i3630, %or.i3628
  %xor1273 = xor i32 %xor1270, %or.i3630
  %xor1274 = xor i32 %xor1272, %shl1271
  %arrayidx1275 = getelementptr i32, ptr %c, i32 123
  %274 = ptrtoint ptr %arrayidx1275 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx1275, align 4
  %xor1276 = xor i32 %or.i3630, %275
  %arrayidx1277 = getelementptr i32, ptr %c, i32 121
  %276 = ptrtoint ptr %arrayidx1277 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx1277, align 4
  %xor1278 = xor i32 %or.i3629, %277
  %or.i3631 = tail call i32 @llvm.fshl.i32(i32 %xor1273, i32 %xor1273, i32 5) #6
  %or.i3632 = tail call i32 @llvm.fshl.i32(i32 %xor1274, i32 %xor1274, i32 22) #6
  %arrayidx1281 = getelementptr i32, ptr %c, i32 120
  %278 = ptrtoint ptr %arrayidx1281 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx1281, align 4
  %xor1282 = xor i32 %or.i3631, %279
  %arrayidx1284 = getelementptr i32, ptr %c, i32 122
  %280 = ptrtoint ptr %arrayidx1284 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx1284, align 4
  %xor1285 = xor i32 %or.i3632, %281
  %xor1286 = xor i32 %xor1276, %xor1282
  %xor1287 = xor i32 %xor1285, %xor1278
  %xor1288 = xor i32 %xor1285, %xor1282
  %and1289 = and i32 %xor1286, %xor1282
  %or1290 = or i32 %xor1287, %xor1286
  %neg1291 = xor i32 %xor1278, -1
  %xor1292 = xor i32 %or1290, %and1289
  %xor1293 = xor i32 %or1290, %xor1288
  %xor1294 = xor i32 %xor1286, %neg1291
  %and1296 = and i32 %xor1292, %xor1288
  %xor1298 = xor i32 %and1296, %xor1294
  %and1299 = and i32 %xor1293, %xor1294
  %xor1302 = xor i32 %xor1298, %xor1293
  %or.i3633 = tail call i32 @llvm.fshl.i32(i32 %xor1298, i32 %xor1298, i32 13) #6
  %or.i3634 = tail call i32 @llvm.fshl.i32(i32 %xor1302, i32 %xor1302, i32 3) #6
  %shl1306 = shl i32 %or.i3633, 3
  %xor1295 = xor i32 %or.i3634, %xor1292
  %xor1297 = xor i32 %xor1295, %neg1291
  %xor1305 = xor i32 %xor1297, %xor1293
  %xor1308 = xor i32 %xor1305, %or.i3633
  %or.i3635 = tail call i32 @llvm.fshl.i32(i32 %xor1308, i32 %xor1308, i32 1) #6
  %xor1307 = xor i32 %xor1295, %and1299
  %xor1310 = xor i32 %xor1307, %shl1306
  %or.i3636 = tail call i32 @llvm.fshl.i32(i32 %xor1310, i32 %xor1310, i32 7) #6
  %xor1312 = xor i32 %or.i3635, %or.i3633
  %shl1313 = shl i32 %or.i3635, 7
  %xor1314 = xor i32 %or.i3636, %or.i3634
  %xor1315 = xor i32 %xor1312, %or.i3636
  %xor1316 = xor i32 %xor1314, %shl1313
  %arrayidx1317 = getelementptr i32, ptr %c, i32 127
  %282 = ptrtoint ptr %arrayidx1317 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx1317, align 4
  %xor1318 = xor i32 %or.i3636, %283
  %arrayidx1319 = getelementptr i32, ptr %c, i32 125
  %284 = ptrtoint ptr %arrayidx1319 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx1319, align 4
  %or.i3637 = tail call i32 @llvm.fshl.i32(i32 %xor1315, i32 %xor1315, i32 5) #6
  %or.i3638 = tail call i32 @llvm.fshl.i32(i32 %xor1316, i32 %xor1316, i32 22) #6
  %arrayidx1323 = getelementptr i32, ptr %c, i32 124
  %286 = ptrtoint ptr %arrayidx1323 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %arrayidx1323, align 4
  %arrayidx1326 = getelementptr i32, ptr %c, i32 126
  %288 = ptrtoint ptr %arrayidx1326 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %arrayidx1326, align 4
  %xor1327 = xor i32 %or.i3638, %289
  %290 = xor i32 %285, %or.i3635
  %neg1328 = xor i32 %290, -1
  %291 = xor i32 %287, %or.i3637
  %neg1329 = xor i32 %291, -1
  %and1330 = and i32 %xor1327, %neg1328
  %xor1331 = xor i32 %and1330, %xor1318
  %or1332 = or i32 %xor1318, %neg1328
  %xor1333 = xor i32 %xor1327, %neg1328
  %xor1334 = xor i32 %xor1327, %or1332
  %xor1335 = xor i32 %or1332, %neg1329
  %or1336 = or i32 %xor1331, %neg1329
  %and1337 = and i32 %or1336, %xor1334
  %xor1338 = xor i32 %or1336, %xor1333
  %xor1339 = xor i32 %xor1333, %xor1335
  %and1340 = and i32 %xor1338, %xor1335
  %xor1341 = xor i32 %xor1339, %xor1331
  %or1344 = or i32 %xor1338, %xor1341
  %arrayidx1347 = getelementptr i32, ptr %c, i32 131
  %292 = ptrtoint ptr %arrayidx1347 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %arrayidx1347, align 4
  %xor1348 = xor i32 %xor1338, %293
  %arrayidx1349 = getelementptr i32, ptr %c, i32 130
  %294 = ptrtoint ptr %arrayidx1349 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %arrayidx1349, align 4
  %xor1343 = xor i32 %xor1331, %295
  %xor1350 = xor i32 %xor1343, %and1340
  %arrayidx1351 = getelementptr i32, ptr %c, i32 129
  %296 = ptrtoint ptr %arrayidx1351 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx1351, align 4
  %xor1342 = xor i32 %xor1341, %297
  %xor1352 = xor i32 %xor1342, %and1337
  %arrayidx1354 = getelementptr i32, ptr %c, i32 128
  %298 = ptrtoint ptr %arrayidx1354 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx1354, align 4
  %xor1346 = xor i32 %xor1331, %299
  %xor1355 = xor i32 %xor1346, %or1344
  %300 = tail call i32 @llvm.bswap.i32(i32 %xor1355) #6
  %301 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %301, i32 4)
  store i32 %300, ptr %dst, align 1
  %add.ptr1356 = getelementptr i8, ptr %dst, i32 4
  %302 = tail call i32 @llvm.bswap.i32(i32 %xor1352) #6
  %303 = ptrtoint ptr %add.ptr1356 to i32
  call void @__asan_storeN_noabort(i32 %303, i32 4)
  store i32 %302, ptr %add.ptr1356, align 1
  %add.ptr1357 = getelementptr i8, ptr %dst, i32 8
  %304 = tail call i32 @llvm.bswap.i32(i32 %xor1350) #6
  %305 = ptrtoint ptr %add.ptr1357 to i32
  call void @__asan_storeN_noabort(i32 %305, i32 4)
  store i32 %304, ptr %add.ptr1357, align 1
  %add.ptr1358 = getelementptr i8, ptr %dst, i32 12
  %306 = tail call i32 @llvm.bswap.i32(i32 %xor1348) #6
  %307 = ptrtoint ptr %add.ptr1358 to i32
  call void @__asan_storeN_noabort(i32 %307, i32 4)
  store i32 %306, ptr %add.ptr1358, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__serpent_decrypt(ptr noundef readonly %c, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %src, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %add.ptr = getelementptr i8, ptr %src, i32 4
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %add.ptr, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %add.ptr2 = getelementptr i8, ptr %src, i32 8
  %6 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %add.ptr2, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %add.ptr4 = getelementptr i8, ptr %src, i32 12
  %9 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr4, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %arrayidx = getelementptr i32, ptr %c, i32 131
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %xor = xor i32 %11, %13
  %arrayidx6 = getelementptr i32, ptr %c, i32 130
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6, align 4
  %xor7 = xor i32 %15, %8
  %arrayidx8 = getelementptr i32, ptr %c, i32 129
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8, align 4
  %xor9 = xor i32 %17, %5
  %arrayidx10 = getelementptr i32, ptr %c, i32 128
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx10, align 4
  %xor11 = xor i32 %19, %2
  %and = and i32 %xor11, %xor
  %or = or i32 %xor7, %xor
  %xor13 = xor i32 %xor9, %xor
  %20 = xor i32 %xor7, %xor11
  %neg = xor i32 %20, -1
  %or14 = or i32 %and, %xor9
  %xor15 = xor i32 %xor13, %neg
  %and16 = and i32 %or, %neg
  %xor17 = xor i32 %and16, %or14
  %and18 = and i32 %or14, %or
  %xor19 = xor i32 %and, %or
  %xor20 = xor i32 %xor15, %xor19
  %or22 = or i32 %xor17, %xor19
  %and25 = and i32 %xor20, %xor17
  %arrayidx28 = getelementptr i32, ptr %c, i32 124
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx28, align 4
  %xor23 = xor i32 %xor20, %22
  %xor29 = xor i32 %xor23, %and18
  %arrayidx30 = getelementptr i32, ptr %c, i32 125
  %23 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx30, align 4
  %xor24 = xor i32 %xor20, %24
  %xor31 = xor i32 %xor24, %or22
  %arrayidx32 = getelementptr i32, ptr %c, i32 126
  %25 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx32, align 4
  %xor33 = xor i32 %xor17, %26
  %arrayidx34 = getelementptr i32, ptr %c, i32 127
  %27 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx34, align 4
  %xor27 = xor i32 %28, %xor19
  %xor35 = xor i32 %xor27, %and25
  %or.i = tail call i32 @llvm.fshl.i32(i32 %xor29, i32 %xor29, i32 27)
  %or.i3494 = tail call i32 @llvm.fshl.i32(i32 %xor33, i32 %xor33, i32 10)
  %xor38 = xor i32 %xor35, %or.i3494
  %xor39 = xor i32 %or.i, %xor35
  %shl = shl i32 %xor31, 7
  %xor40 = xor i32 %xor39, %xor31
  %or.i3495 = tail call i32 @llvm.fshl.i32(i32 %xor31, i32 %xor31, i32 31)
  %xor42 = xor i32 %xor38, %shl
  %or.i3496 = tail call i32 @llvm.fshl.i32(i32 %xor35, i32 %xor35, i32 25)
  %shl44 = shl i32 %xor40, 3
  %xor45 = xor i32 %xor40, %or.i3495
  %xor46 = xor i32 %shl44, %or.i3496
  %or.i3497 = tail call i32 @llvm.fshl.i32(i32 %xor40, i32 %xor40, i32 19)
  %xor48 = xor i32 %xor45, %xor42
  %xor49 = xor i32 %xor46, %xor42
  %or.i3498 = tail call i32 @llvm.fshl.i32(i32 %xor38, i32 %xor42, i32 29)
  %xor52 = xor i32 %or.i3497, %or.i3498
  %and53 = and i32 %xor49, %xor52
  %xor54 = xor i32 %xor49, %or.i3498
  %xor55 = xor i32 %and53, %xor54
  %xor56 = xor i32 %xor46, %xor45
  %or57 = or i32 %xor54, %xor52
  %xor58 = xor i32 %or57, %xor56
  %and59 = and i32 %xor55, %xor56
  %neg60 = xor i32 %xor55, -1
  %and62 = and i32 %xor58, %xor48
  %xor63 = xor i32 %xor52, %neg60
  %xor66 = xor i32 %and62, %neg60
  %arrayidx69 = getelementptr i32, ptr %c, i32 120
  %29 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx69, align 4
  %xor68 = xor i32 %xor58, %30
  %xor70 = xor i32 %xor68, %xor66
  %arrayidx71 = getelementptr i32, ptr %c, i32 121
  %31 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx71, align 4
  %xor65 = xor i32 %xor58, %32
  %xor72 = xor i32 %xor65, %xor63
  %arrayidx73 = getelementptr i32, ptr %c, i32 122
  %33 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx73, align 4
  %xor61 = xor i32 %xor48, %34
  %xor64 = xor i32 %xor61, %and59
  %xor74 = xor i32 %xor64, %xor63
  %arrayidx75 = getelementptr i32, ptr %c, i32 123
  %35 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx75, align 4
  %xor76 = xor i32 %xor66, %36
  %or.i3499 = tail call i32 @llvm.fshl.i32(i32 %xor70, i32 %xor70, i32 27)
  %or.i3500 = tail call i32 @llvm.fshl.i32(i32 %xor74, i32 %xor74, i32 10)
  %xor79 = xor i32 %or.i3500, %xor76
  %shl81 = shl i32 %xor72, 7
  %xor80 = xor i32 %xor76, %xor72
  %xor82 = xor i32 %xor80, %or.i3499
  %or.i3501 = tail call i32 @llvm.fshl.i32(i32 %xor72, i32 %xor72, i32 31)
  %xor84 = xor i32 %xor79, %shl81
  %or.i3502 = tail call i32 @llvm.fshl.i32(i32 %xor76, i32 %xor76, i32 25)
  %shl86 = shl i32 %xor82, 3
  %or.i3503 = tail call i32 @llvm.fshl.i32(i32 %xor82, i32 %xor82, i32 19)
  %xor87 = xor i32 %xor84, %or.i3501
  %xor90 = xor i32 %xor87, %xor82
  %xor88 = xor i32 %xor84, %or.i3502
  %xor91 = xor i32 %xor88, %shl86
  %or.i3504 = tail call i32 @llvm.fshl.i32(i32 %xor79, i32 %xor84, i32 29)
  %or94 = or i32 %xor90, %or.i3504
  %xor95 = xor i32 %xor90, %or.i3504
  %xor96 = xor i32 %or94, %xor91
  %and97 = and i32 %xor91, %xor90
  %xor98 = xor i32 %xor95, %and97
  %or99 = or i32 %and97, %or.i3503
  %neg100 = xor i32 %or.i3503, -1
  %xor101 = xor i32 %or99, %xor98
  %or102 = or i32 %xor98, %neg100
  %xor103 = xor i32 %xor96, %xor90
  %xor104 = xor i32 %or102, %xor103
  %and105 = and i32 %xor103, %neg100
  %xor106 = xor i32 %xor96, %neg100
  %and108 = and i32 %xor104, %xor106
  %xor109 = xor i32 %xor104, %xor101
  %arrayidx114 = getelementptr i32, ptr %c, i32 116
  %37 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx114, align 4
  %xor107 = xor i32 %xor96, %38
  %xor115 = xor i32 %xor107, %xor101
  %arrayidx116 = getelementptr i32, ptr %c, i32 117
  %39 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx116, align 4
  %xor113 = xor i32 %xor101, %40
  %xor117 = xor i32 %xor113, %and105
  %arrayidx118 = getelementptr i32, ptr %c, i32 118
  %41 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx118, align 4
  %xor110 = xor i32 %xor109, %42
  %xor119 = xor i32 %xor110, %and108
  %arrayidx120 = getelementptr i32, ptr %c, i32 119
  %43 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx120, align 4
  %xor111 = xor i32 %and105, %44
  %xor121 = xor i32 %xor111, %xor109
  %or.i3505 = tail call i32 @llvm.fshl.i32(i32 %xor115, i32 %xor115, i32 27)
  %or.i3506 = tail call i32 @llvm.fshl.i32(i32 %xor119, i32 %xor119, i32 10)
  %xor124 = xor i32 %or.i3506, %xor121
  %shl126 = shl i32 %xor117, 7
  %xor125 = xor i32 %or.i3505, %xor117
  %xor127 = xor i32 %xor125, %xor121
  %or.i3507 = tail call i32 @llvm.fshl.i32(i32 %xor117, i32 %xor117, i32 31)
  %xor129 = xor i32 %xor124, %shl126
  %or.i3508 = tail call i32 @llvm.fshl.i32(i32 %xor121, i32 %xor121, i32 25)
  %shl131 = shl i32 %xor127, 3
  %xor132 = xor i32 %xor127, %or.i3507
  %xor133 = xor i32 %shl131, %or.i3508
  %or.i3509 = tail call i32 @llvm.fshl.i32(i32 %xor127, i32 %xor127, i32 19)
  %xor135 = xor i32 %xor132, %xor129
  %xor136 = xor i32 %xor133, %xor129
  %or.i3510 = tail call i32 @llvm.fshl.i32(i32 %xor124, i32 %xor129, i32 29)
  %xor139 = xor i32 %xor136, %or.i3510
  %and140 = and i32 %xor135, %or.i3509
  %xor141 = xor i32 %xor139, %and140
  %or142 = or i32 %xor136, %or.i3510
  %neg143 = xor i32 %or.i3509, -1
  %xor144 = xor i32 %xor141, %xor135
  %xor145 = xor i32 %xor141, %or142
  %and146 = and i32 %or142, %neg143
  %xor147 = xor i32 %xor145, %and146
  %or148 = or i32 %xor145, %neg143
  %xor149 = xor i32 %or148, %xor136
  %and150 = and i32 %xor147, %xor136
  %xor152 = xor i32 %and150, %xor144
  %and153 = and i32 %xor149, %xor144
  %arrayidx157 = getelementptr i32, ptr %c, i32 112
  %45 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx157, align 4
  %xor156 = xor i32 %xor149, %46
  %xor158 = xor i32 %xor156, %xor152
  %arrayidx159 = getelementptr i32, ptr %c, i32 113
  %47 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx159, align 4
  %xor160 = xor i32 %xor147, %48
  %arrayidx161 = getelementptr i32, ptr %c, i32 114
  %49 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx161, align 4
  %xor151 = xor i32 %50, %neg143
  %xor154 = xor i32 %xor151, %and150
  %xor162 = xor i32 %xor154, %and153
  %arrayidx163 = getelementptr i32, ptr %c, i32 115
  %51 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx163, align 4
  %xor164 = xor i32 %xor152, %52
  %or.i3511 = tail call i32 @llvm.fshl.i32(i32 %xor158, i32 %xor158, i32 27)
  %or.i3512 = tail call i32 @llvm.fshl.i32(i32 %xor162, i32 %xor162, i32 10)
  %xor167 = xor i32 %or.i3512, %xor164
  %shl169 = shl i32 %xor160, 7
  %xor168 = xor i32 %xor164, %xor160
  %xor170 = xor i32 %xor168, %or.i3511
  %or.i3513 = tail call i32 @llvm.fshl.i32(i32 %xor160, i32 %xor160, i32 31)
  %xor172 = xor i32 %xor167, %shl169
  %or.i3514 = tail call i32 @llvm.fshl.i32(i32 %xor164, i32 %xor164, i32 25)
  %shl174 = shl i32 %xor170, 3
  %xor175 = xor i32 %xor170, %or.i3513
  %xor176 = xor i32 %shl174, %or.i3514
  %or.i3515 = tail call i32 @llvm.fshl.i32(i32 %xor170, i32 %xor170, i32 19)
  %xor178 = xor i32 %xor175, %xor172
  %xor179 = xor i32 %xor176, %xor172
  %or.i3516 = tail call i32 @llvm.fshl.i32(i32 %xor167, i32 %xor172, i32 29)
  %xor182 = xor i32 %xor178, %or.i3516
  %and183 = and i32 %xor182, %xor178
  %xor184 = xor i32 %and183, %or.i3515
  %or185 = or i32 %xor178, %or.i3515
  %xor187 = xor i32 %or185, %xor179
  %or188 = or i32 %xor184, %xor179
  %xor189 = xor i32 %or188, %xor182
  %xor190 = xor i32 %xor189, %xor184
  %xor191 = xor i32 %xor187, %xor182
  %and193 = and i32 %xor190, %or188
  %and195 = and i32 %xor189, %xor191
  %arrayidx200 = getelementptr i32, ptr %c, i32 108
  %53 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx200, align 4
  %xor201 = xor i32 %xor189, %54
  %arrayidx202 = getelementptr i32, ptr %c, i32 109
  %55 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx202, align 4
  %xor194 = xor i32 %xor191, %56
  %xor199 = xor i32 %xor194, %xor190
  %xor203 = xor i32 %xor199, %and195
  %arrayidx204 = getelementptr i32, ptr %c, i32 110
  %57 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx204, align 4
  %xor186 = xor i32 %xor175, %58
  %xor196 = xor i32 %xor186, %xor176
  %xor205 = xor i32 %xor196, %and193
  %arrayidx206 = getelementptr i32, ptr %c, i32 111
  %59 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx206, align 4
  %xor197 = xor i32 %and195, %60
  %xor207 = xor i32 %xor197, %and193
  %or.i3517 = tail call i32 @llvm.fshl.i32(i32 %xor201, i32 %xor201, i32 27)
  %or.i3518 = tail call i32 @llvm.fshl.i32(i32 %xor205, i32 %xor205, i32 10)
  %xor210 = xor i32 %or.i3518, %xor207
  %xor211 = xor i32 %xor207, %or.i3517
  %shl212 = shl i32 %xor203, 7
  %xor213 = xor i32 %xor211, %xor203
  %or.i3519 = tail call i32 @llvm.fshl.i32(i32 %xor203, i32 %xor203, i32 31)
  %xor215 = xor i32 %xor210, %shl212
  %or.i3520 = tail call i32 @llvm.fshl.i32(i32 %xor207, i32 %xor207, i32 25)
  %shl217 = shl i32 %xor213, 3
  %xor218 = xor i32 %xor213, %or.i3519
  %xor219 = xor i32 %shl217, %or.i3520
  %or.i3521 = tail call i32 @llvm.fshl.i32(i32 %xor213, i32 %xor213, i32 19)
  %xor221 = xor i32 %xor218, %xor215
  %xor222 = xor i32 %xor219, %xor215
  %or.i3522 = tail call i32 @llvm.fshl.i32(i32 %xor210, i32 %xor215, i32 29)
  %xor225 = xor i32 %or.i3522, %xor221
  %neg226 = xor i32 %xor222, -1
  %or227 = or i32 %xor225, %neg226
  %xor228 = xor i32 %xor225, %xor222
  %xor229 = xor i32 %xor222, %or.i3521
  %xor230 = xor i32 %or227, %xor221
  %or231 = or i32 %xor228, %xor221
  %xor232 = xor i32 %xor228, %or.i3521
  %xor233 = xor i32 %or231, %xor229
  %or234 = or i32 %xor230, %xor229
  %xor235 = xor i32 %xor232, %xor230
  %and237 = and i32 %xor235, %xor233
  %arrayidx242 = getelementptr i32, ptr %c, i32 104
  %61 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx242, align 4
  %xor243 = xor i32 %xor233, %62
  %arrayidx244 = getelementptr i32, ptr %c, i32 105
  %63 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx244, align 4
  %xor236 = xor i32 %or.i3521, %64
  %xor241 = xor i32 %xor236, %xor235
  %xor245 = xor i32 %xor241, %or234
  %arrayidx246 = getelementptr i32, ptr %c, i32 106
  %65 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx246, align 4
  %xor239 = xor i32 %xor232, %66
  %xor247 = xor i32 %xor239, %or234
  %arrayidx248 = getelementptr i32, ptr %c, i32 107
  %67 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx248, align 4
  %xor238 = xor i32 %xor230, %68
  %xor249 = xor i32 %xor238, %and237
  %or.i3523 = tail call i32 @llvm.fshl.i32(i32 %xor243, i32 %xor243, i32 27)
  %or.i3524 = tail call i32 @llvm.fshl.i32(i32 %xor247, i32 %xor247, i32 10)
  %xor252 = xor i32 %or.i3524, %xor249
  %xor253 = xor i32 %xor249, %or.i3523
  %shl254 = shl i32 %xor245, 7
  %xor255 = xor i32 %xor253, %xor245
  %or.i3525 = tail call i32 @llvm.fshl.i32(i32 %xor245, i32 %xor245, i32 31)
  %xor257 = xor i32 %xor252, %shl254
  %or.i3526 = tail call i32 @llvm.fshl.i32(i32 %xor249, i32 %xor249, i32 25)
  %shl259 = shl i32 %xor255, 3
  %xor260 = xor i32 %xor255, %or.i3525
  %xor261 = xor i32 %shl259, %or.i3526
  %or.i3527 = tail call i32 @llvm.fshl.i32(i32 %xor255, i32 %xor255, i32 19)
  %xor264 = xor i32 %xor261, %xor257
  %or.i3528 = tail call i32 @llvm.fshl.i32(i32 %xor252, i32 %xor257, i32 29)
  %xor267 = xor i32 %xor260, %xor261
  %xor268 = xor i32 %or.i3527, %or.i3528
  %neg269 = xor i32 %or.i3528, -1
  %or270 = or i32 %xor267, %or.i3527
  %xor271 = xor i32 %or270, %xor264
  %and272 = and i32 %xor264, %xor267
  %xor273 = xor i32 %xor267, %neg269
  %and274 = and i32 %xor271, %neg269
  %xor275 = xor i32 %xor271, %xor273
  %or276 = or i32 %xor273, %and272
  %or279 = or i32 %xor275, %xor268
  %xor281 = xor i32 %or279, %or276
  %arrayidx284 = getelementptr i32, ptr %c, i32 100
  %69 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx284, align 4
  %xor283 = xor i32 %xor275, %70
  %xor285 = xor i32 %xor283, %xor281
  %arrayidx286 = getelementptr i32, ptr %c, i32 101
  %71 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx286, align 4
  %xor287 = xor i32 %xor281, %72
  %arrayidx288 = getelementptr i32, ptr %c, i32 102
  %73 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx288, align 4
  %xor278 = xor i32 %xor268, %74
  %xor280 = xor i32 %xor278, %and274
  %xor289 = xor i32 %xor280, %xor275
  %arrayidx290 = getelementptr i32, ptr %c, i32 103
  %75 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx290, align 4
  %xor277 = xor i32 %xor268, %76
  %xor291 = xor i32 %xor277, %and272
  %or.i3529 = tail call i32 @llvm.fshl.i32(i32 %xor285, i32 %xor285, i32 27)
  %or.i3530 = tail call i32 @llvm.fshl.i32(i32 %xor289, i32 %xor289, i32 10)
  %xor294 = xor i32 %or.i3530, %xor291
  %shl296 = shl i32 %xor287, 7
  %xor295 = xor i32 %xor287, %xor291
  %xor297 = xor i32 %xor295, %or.i3529
  %or.i3531 = tail call i32 @llvm.fshl.i32(i32 %xor287, i32 %xor287, i32 31)
  %xor299 = xor i32 %xor294, %shl296
  %or.i3532 = tail call i32 @llvm.fshl.i32(i32 %xor291, i32 %xor291, i32 25)
  %shl301 = shl i32 %xor297, 3
  %or.i3533 = tail call i32 @llvm.fshl.i32(i32 %xor297, i32 %xor297, i32 19)
  %xor302 = xor i32 %xor299, %or.i3531
  %xor305 = xor i32 %xor302, %xor297
  %xor303 = xor i32 %xor299, %or.i3532
  %xor306 = xor i32 %xor303, %shl301
  %or.i3534 = tail call i32 @llvm.fshl.i32(i32 %xor294, i32 %xor299, i32 29)
  %xor309 = xor i32 %xor305, %or.i3533
  %or310 = or i32 %xor306, %xor309
  %xor311 = xor i32 %xor306, %xor309
  %neg312 = xor i32 %or.i3533, -1
  %xor313 = xor i32 %or310, %or.i3534
  %xor314 = xor i32 %or310, %neg312
  %and315 = and i32 %xor305, %neg312
  %xor316 = xor i32 %xor313, %and315
  %and317 = and i32 %xor313, %xor314
  %xor318 = xor i32 %xor314, %xor311
  %xor319 = xor i32 %and317, %xor318
  %and321 = and i32 %xor318, %xor316
  %arrayidx326 = getelementptr i32, ptr %c, i32 96
  %77 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx326, align 4
  %xor327 = xor i32 %xor319, %78
  %arrayidx328 = getelementptr i32, ptr %c, i32 97
  %79 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx328, align 4
  %xor325 = xor i32 %xor311, %80
  %xor329 = xor i32 %xor325, %and321
  %arrayidx330 = getelementptr i32, ptr %c, i32 98
  %81 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx330, align 4
  %xor320 = xor i32 %xor306, %82
  %xor322 = xor i32 %xor320, %xor314
  %xor331 = xor i32 %xor322, %xor316
  %arrayidx332 = getelementptr i32, ptr %c, i32 99
  %83 = ptrtoint ptr %arrayidx332 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx332, align 4
  %xor323 = xor i32 %xor316, %84
  %xor333 = xor i32 %xor323, %xor319
  %or.i3535 = tail call i32 @llvm.fshl.i32(i32 %xor327, i32 %xor327, i32 27)
  %or.i3536 = tail call i32 @llvm.fshl.i32(i32 %xor331, i32 %xor331, i32 10)
  %xor336 = xor i32 %or.i3536, %xor333
  %xor337 = xor i32 %or.i3535, %xor333
  %shl338 = shl i32 %xor329, 7
  %xor339 = xor i32 %xor337, %xor329
  %or.i3537 = tail call i32 @llvm.fshl.i32(i32 %xor329, i32 %xor329, i32 31)
  %xor341 = xor i32 %xor336, %shl338
  %or.i3538 = tail call i32 @llvm.fshl.i32(i32 %xor333, i32 %xor333, i32 25)
  %shl343 = shl i32 %xor339, 3
  %xor344 = xor i32 %xor339, %or.i3537
  %xor345 = xor i32 %shl343, %or.i3538
  %or.i3539 = tail call i32 @llvm.fshl.i32(i32 %xor339, i32 %xor339, i32 19)
  %xor347 = xor i32 %xor344, %xor341
  %xor348 = xor i32 %xor345, %xor341
  %or.i3540 = tail call i32 @llvm.fshl.i32(i32 %xor336, i32 %xor341, i32 29)
  %and351 = and i32 %xor348, %or.i3539
  %or353 = or i32 %xor348, %or.i3540
  %xor354 = xor i32 %xor345, %xor344
  %85 = xor i32 %or.i3540, %or.i3539
  %neg355 = xor i32 %85, -1
  %or356 = or i32 %and351, %xor347
  %xor357 = xor i32 %xor354, %neg355
  %and358 = and i32 %or353, %neg355
  %xor359 = xor i32 %and358, %or356
  %and360 = and i32 %or356, %or353
  %xor361 = xor i32 %and351, %or353
  %xor362 = xor i32 %xor357, %xor361
  %or364 = or i32 %xor359, %xor361
  %and367 = and i32 %xor362, %xor359
  %arrayidx370 = getelementptr i32, ptr %c, i32 92
  %86 = ptrtoint ptr %arrayidx370 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx370, align 4
  %xor365 = xor i32 %xor362, %87
  %xor371 = xor i32 %xor365, %and360
  %arrayidx372 = getelementptr i32, ptr %c, i32 93
  %88 = ptrtoint ptr %arrayidx372 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx372, align 4
  %xor366 = xor i32 %xor362, %89
  %xor373 = xor i32 %xor366, %or364
  %arrayidx374 = getelementptr i32, ptr %c, i32 94
  %90 = ptrtoint ptr %arrayidx374 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx374, align 4
  %xor375 = xor i32 %xor359, %91
  %arrayidx376 = getelementptr i32, ptr %c, i32 95
  %92 = ptrtoint ptr %arrayidx376 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx376, align 4
  %xor369 = xor i32 %xor361, %93
  %xor377 = xor i32 %xor369, %and367
  %or.i3541 = tail call i32 @llvm.fshl.i32(i32 %xor371, i32 %xor371, i32 27)
  %or.i3542 = tail call i32 @llvm.fshl.i32(i32 %xor375, i32 %xor375, i32 10)
  %xor380 = xor i32 %xor377, %or.i3542
  %xor381 = xor i32 %or.i3541, %xor377
  %shl382 = shl i32 %xor373, 7
  %xor383 = xor i32 %xor381, %xor373
  %or.i3543 = tail call i32 @llvm.fshl.i32(i32 %xor373, i32 %xor373, i32 31)
  %xor385 = xor i32 %xor380, %shl382
  %or.i3544 = tail call i32 @llvm.fshl.i32(i32 %xor377, i32 %xor377, i32 25)
  %shl387 = shl i32 %xor383, 3
  %xor388 = xor i32 %xor383, %or.i3543
  %xor389 = xor i32 %shl387, %or.i3544
  %or.i3545 = tail call i32 @llvm.fshl.i32(i32 %xor383, i32 %xor383, i32 19)
  %xor391 = xor i32 %xor388, %xor385
  %xor392 = xor i32 %xor389, %xor385
  %or.i3546 = tail call i32 @llvm.fshl.i32(i32 %xor380, i32 %xor385, i32 29)
  %xor395 = xor i32 %or.i3545, %or.i3546
  %and396 = and i32 %xor392, %xor395
  %xor397 = xor i32 %xor392, %or.i3546
  %xor398 = xor i32 %and396, %xor397
  %xor399 = xor i32 %xor389, %xor388
  %or400 = or i32 %xor397, %xor395
  %xor401 = xor i32 %or400, %xor399
  %and402 = and i32 %xor398, %xor399
  %neg403 = xor i32 %xor398, -1
  %and405 = and i32 %xor401, %xor391
  %xor406 = xor i32 %xor395, %neg403
  %xor409 = xor i32 %and405, %neg403
  %arrayidx412 = getelementptr i32, ptr %c, i32 88
  %94 = ptrtoint ptr %arrayidx412 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx412, align 4
  %xor411 = xor i32 %xor401, %95
  %xor413 = xor i32 %xor411, %xor409
  %arrayidx414 = getelementptr i32, ptr %c, i32 89
  %96 = ptrtoint ptr %arrayidx414 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx414, align 4
  %xor408 = xor i32 %xor401, %97
  %xor415 = xor i32 %xor408, %xor406
  %arrayidx416 = getelementptr i32, ptr %c, i32 90
  %98 = ptrtoint ptr %arrayidx416 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx416, align 4
  %xor404 = xor i32 %xor391, %99
  %xor407 = xor i32 %xor404, %and402
  %xor417 = xor i32 %xor407, %xor406
  %arrayidx418 = getelementptr i32, ptr %c, i32 91
  %100 = ptrtoint ptr %arrayidx418 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx418, align 4
  %xor419 = xor i32 %xor409, %101
  %or.i3547 = tail call i32 @llvm.fshl.i32(i32 %xor413, i32 %xor413, i32 27)
  %or.i3548 = tail call i32 @llvm.fshl.i32(i32 %xor417, i32 %xor417, i32 10)
  %xor422 = xor i32 %or.i3548, %xor419
  %shl424 = shl i32 %xor415, 7
  %xor423 = xor i32 %xor419, %xor415
  %xor425 = xor i32 %xor423, %or.i3547
  %or.i3549 = tail call i32 @llvm.fshl.i32(i32 %xor415, i32 %xor415, i32 31)
  %xor427 = xor i32 %xor422, %shl424
  %or.i3550 = tail call i32 @llvm.fshl.i32(i32 %xor419, i32 %xor419, i32 25)
  %shl429 = shl i32 %xor425, 3
  %or.i3551 = tail call i32 @llvm.fshl.i32(i32 %xor425, i32 %xor425, i32 19)
  %xor430 = xor i32 %xor427, %or.i3549
  %xor433 = xor i32 %xor430, %xor425
  %xor431 = xor i32 %xor427, %or.i3550
  %xor434 = xor i32 %xor431, %shl429
  %or.i3552 = tail call i32 @llvm.fshl.i32(i32 %xor422, i32 %xor427, i32 29)
  %or437 = or i32 %xor433, %or.i3552
  %xor438 = xor i32 %xor433, %or.i3552
  %xor439 = xor i32 %or437, %xor434
  %and440 = and i32 %xor434, %xor433
  %xor441 = xor i32 %xor438, %and440
  %or442 = or i32 %and440, %or.i3551
  %neg443 = xor i32 %or.i3551, -1
  %xor444 = xor i32 %or442, %xor441
  %or445 = or i32 %xor441, %neg443
  %xor446 = xor i32 %xor439, %xor433
  %xor447 = xor i32 %or445, %xor446
  %and448 = and i32 %xor446, %neg443
  %xor449 = xor i32 %xor439, %neg443
  %and451 = and i32 %xor447, %xor449
  %xor452 = xor i32 %xor447, %xor444
  %arrayidx457 = getelementptr i32, ptr %c, i32 84
  %102 = ptrtoint ptr %arrayidx457 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx457, align 4
  %xor450 = xor i32 %xor439, %103
  %xor458 = xor i32 %xor450, %xor444
  %arrayidx459 = getelementptr i32, ptr %c, i32 85
  %104 = ptrtoint ptr %arrayidx459 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx459, align 4
  %xor456 = xor i32 %xor444, %105
  %xor460 = xor i32 %xor456, %and448
  %arrayidx461 = getelementptr i32, ptr %c, i32 86
  %106 = ptrtoint ptr %arrayidx461 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx461, align 4
  %xor453 = xor i32 %xor452, %107
  %xor462 = xor i32 %xor453, %and451
  %arrayidx463 = getelementptr i32, ptr %c, i32 87
  %108 = ptrtoint ptr %arrayidx463 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx463, align 4
  %xor454 = xor i32 %and448, %109
  %xor464 = xor i32 %xor454, %xor452
  %or.i3553 = tail call i32 @llvm.fshl.i32(i32 %xor458, i32 %xor458, i32 27)
  %or.i3554 = tail call i32 @llvm.fshl.i32(i32 %xor462, i32 %xor462, i32 10)
  %xor467 = xor i32 %or.i3554, %xor464
  %shl469 = shl i32 %xor460, 7
  %xor468 = xor i32 %or.i3553, %xor460
  %xor470 = xor i32 %xor468, %xor464
  %or.i3555 = tail call i32 @llvm.fshl.i32(i32 %xor460, i32 %xor460, i32 31)
  %xor472 = xor i32 %xor467, %shl469
  %or.i3556 = tail call i32 @llvm.fshl.i32(i32 %xor464, i32 %xor464, i32 25)
  %shl474 = shl i32 %xor470, 3
  %xor475 = xor i32 %xor470, %or.i3555
  %xor476 = xor i32 %shl474, %or.i3556
  %or.i3557 = tail call i32 @llvm.fshl.i32(i32 %xor470, i32 %xor470, i32 19)
  %xor478 = xor i32 %xor475, %xor472
  %xor479 = xor i32 %xor476, %xor472
  %or.i3558 = tail call i32 @llvm.fshl.i32(i32 %xor467, i32 %xor472, i32 29)
  %xor482 = xor i32 %xor479, %or.i3558
  %and483 = and i32 %xor478, %or.i3557
  %xor484 = xor i32 %xor482, %and483
  %or485 = or i32 %xor479, %or.i3558
  %neg486 = xor i32 %or.i3557, -1
  %xor487 = xor i32 %xor484, %xor478
  %xor488 = xor i32 %xor484, %or485
  %and489 = and i32 %or485, %neg486
  %xor490 = xor i32 %xor488, %and489
  %or491 = or i32 %xor488, %neg486
  %xor492 = xor i32 %or491, %xor479
  %and493 = and i32 %xor490, %xor479
  %xor495 = xor i32 %and493, %xor487
  %and496 = and i32 %xor492, %xor487
  %arrayidx500 = getelementptr i32, ptr %c, i32 80
  %110 = ptrtoint ptr %arrayidx500 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx500, align 4
  %xor499 = xor i32 %xor492, %111
  %xor501 = xor i32 %xor499, %xor495
  %arrayidx502 = getelementptr i32, ptr %c, i32 81
  %112 = ptrtoint ptr %arrayidx502 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx502, align 4
  %xor503 = xor i32 %xor490, %113
  %arrayidx504 = getelementptr i32, ptr %c, i32 82
  %114 = ptrtoint ptr %arrayidx504 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx504, align 4
  %xor494 = xor i32 %115, %neg486
  %xor497 = xor i32 %xor494, %and493
  %xor505 = xor i32 %xor497, %and496
  %arrayidx506 = getelementptr i32, ptr %c, i32 83
  %116 = ptrtoint ptr %arrayidx506 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx506, align 4
  %xor507 = xor i32 %xor495, %117
  %or.i3559 = tail call i32 @llvm.fshl.i32(i32 %xor501, i32 %xor501, i32 27)
  %or.i3560 = tail call i32 @llvm.fshl.i32(i32 %xor505, i32 %xor505, i32 10)
  %xor510 = xor i32 %or.i3560, %xor507
  %shl512 = shl i32 %xor503, 7
  %xor511 = xor i32 %xor507, %xor503
  %xor513 = xor i32 %xor511, %or.i3559
  %or.i3561 = tail call i32 @llvm.fshl.i32(i32 %xor503, i32 %xor503, i32 31)
  %xor515 = xor i32 %xor510, %shl512
  %or.i3562 = tail call i32 @llvm.fshl.i32(i32 %xor507, i32 %xor507, i32 25)
  %shl517 = shl i32 %xor513, 3
  %xor518 = xor i32 %xor513, %or.i3561
  %xor519 = xor i32 %shl517, %or.i3562
  %or.i3563 = tail call i32 @llvm.fshl.i32(i32 %xor513, i32 %xor513, i32 19)
  %xor521 = xor i32 %xor518, %xor515
  %xor522 = xor i32 %xor519, %xor515
  %or.i3564 = tail call i32 @llvm.fshl.i32(i32 %xor510, i32 %xor515, i32 29)
  %xor525 = xor i32 %xor521, %or.i3564
  %and526 = and i32 %xor525, %xor521
  %xor527 = xor i32 %and526, %or.i3563
  %or528 = or i32 %xor521, %or.i3563
  %xor530 = xor i32 %or528, %xor522
  %or531 = or i32 %xor527, %xor522
  %xor532 = xor i32 %or531, %xor525
  %xor533 = xor i32 %xor532, %xor527
  %xor534 = xor i32 %xor530, %xor525
  %and536 = and i32 %xor533, %or531
  %and538 = and i32 %xor532, %xor534
  %arrayidx543 = getelementptr i32, ptr %c, i32 76
  %118 = ptrtoint ptr %arrayidx543 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx543, align 4
  %xor544 = xor i32 %xor532, %119
  %arrayidx545 = getelementptr i32, ptr %c, i32 77
  %120 = ptrtoint ptr %arrayidx545 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx545, align 4
  %xor537 = xor i32 %xor534, %121
  %xor542 = xor i32 %xor537, %xor533
  %xor546 = xor i32 %xor542, %and538
  %arrayidx547 = getelementptr i32, ptr %c, i32 78
  %122 = ptrtoint ptr %arrayidx547 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx547, align 4
  %xor529 = xor i32 %xor518, %123
  %xor539 = xor i32 %xor529, %xor519
  %xor548 = xor i32 %xor539, %and536
  %arrayidx549 = getelementptr i32, ptr %c, i32 79
  %124 = ptrtoint ptr %arrayidx549 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx549, align 4
  %xor540 = xor i32 %and538, %125
  %xor550 = xor i32 %xor540, %and536
  %or.i3565 = tail call i32 @llvm.fshl.i32(i32 %xor544, i32 %xor544, i32 27)
  %or.i3566 = tail call i32 @llvm.fshl.i32(i32 %xor548, i32 %xor548, i32 10)
  %xor553 = xor i32 %or.i3566, %xor550
  %xor554 = xor i32 %xor550, %or.i3565
  %shl555 = shl i32 %xor546, 7
  %xor556 = xor i32 %xor554, %xor546
  %or.i3567 = tail call i32 @llvm.fshl.i32(i32 %xor546, i32 %xor546, i32 31)
  %xor558 = xor i32 %xor553, %shl555
  %or.i3568 = tail call i32 @llvm.fshl.i32(i32 %xor550, i32 %xor550, i32 25)
  %shl560 = shl i32 %xor556, 3
  %xor561 = xor i32 %xor556, %or.i3567
  %xor562 = xor i32 %shl560, %or.i3568
  %or.i3569 = tail call i32 @llvm.fshl.i32(i32 %xor556, i32 %xor556, i32 19)
  %xor564 = xor i32 %xor561, %xor558
  %xor565 = xor i32 %xor562, %xor558
  %or.i3570 = tail call i32 @llvm.fshl.i32(i32 %xor553, i32 %xor558, i32 29)
  %xor568 = xor i32 %or.i3570, %xor564
  %neg569 = xor i32 %xor565, -1
  %or570 = or i32 %xor568, %neg569
  %xor571 = xor i32 %xor568, %xor565
  %xor572 = xor i32 %xor565, %or.i3569
  %xor573 = xor i32 %or570, %xor564
  %or574 = or i32 %xor571, %xor564
  %xor575 = xor i32 %xor571, %or.i3569
  %xor576 = xor i32 %or574, %xor572
  %or577 = or i32 %xor573, %xor572
  %xor578 = xor i32 %xor575, %xor573
  %and580 = and i32 %xor578, %xor576
  %arrayidx585 = getelementptr i32, ptr %c, i32 72
  %126 = ptrtoint ptr %arrayidx585 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx585, align 4
  %xor586 = xor i32 %xor576, %127
  %arrayidx587 = getelementptr i32, ptr %c, i32 73
  %128 = ptrtoint ptr %arrayidx587 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx587, align 4
  %xor579 = xor i32 %or.i3569, %129
  %xor584 = xor i32 %xor579, %xor578
  %xor588 = xor i32 %xor584, %or577
  %arrayidx589 = getelementptr i32, ptr %c, i32 74
  %130 = ptrtoint ptr %arrayidx589 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx589, align 4
  %xor582 = xor i32 %xor575, %131
  %xor590 = xor i32 %xor582, %or577
  %arrayidx591 = getelementptr i32, ptr %c, i32 75
  %132 = ptrtoint ptr %arrayidx591 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx591, align 4
  %xor581 = xor i32 %xor573, %133
  %xor592 = xor i32 %xor581, %and580
  %or.i3571 = tail call i32 @llvm.fshl.i32(i32 %xor586, i32 %xor586, i32 27)
  %or.i3572 = tail call i32 @llvm.fshl.i32(i32 %xor590, i32 %xor590, i32 10)
  %xor595 = xor i32 %or.i3572, %xor592
  %xor596 = xor i32 %xor592, %or.i3571
  %shl597 = shl i32 %xor588, 7
  %xor598 = xor i32 %xor596, %xor588
  %or.i3573 = tail call i32 @llvm.fshl.i32(i32 %xor588, i32 %xor588, i32 31)
  %xor600 = xor i32 %xor595, %shl597
  %or.i3574 = tail call i32 @llvm.fshl.i32(i32 %xor592, i32 %xor592, i32 25)
  %shl602 = shl i32 %xor598, 3
  %xor603 = xor i32 %xor598, %or.i3573
  %xor604 = xor i32 %shl602, %or.i3574
  %or.i3575 = tail call i32 @llvm.fshl.i32(i32 %xor598, i32 %xor598, i32 19)
  %xor607 = xor i32 %xor604, %xor600
  %or.i3576 = tail call i32 @llvm.fshl.i32(i32 %xor595, i32 %xor600, i32 29)
  %xor610 = xor i32 %xor603, %xor604
  %xor611 = xor i32 %or.i3575, %or.i3576
  %neg612 = xor i32 %or.i3576, -1
  %or613 = or i32 %xor610, %or.i3575
  %xor614 = xor i32 %or613, %xor607
  %and615 = and i32 %xor607, %xor610
  %xor616 = xor i32 %xor610, %neg612
  %and617 = and i32 %xor614, %neg612
  %xor618 = xor i32 %xor614, %xor616
  %or619 = or i32 %xor616, %and615
  %or622 = or i32 %xor618, %xor611
  %xor624 = xor i32 %or622, %or619
  %arrayidx627 = getelementptr i32, ptr %c, i32 68
  %134 = ptrtoint ptr %arrayidx627 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx627, align 4
  %xor626 = xor i32 %xor618, %135
  %xor628 = xor i32 %xor626, %xor624
  %arrayidx629 = getelementptr i32, ptr %c, i32 69
  %136 = ptrtoint ptr %arrayidx629 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx629, align 4
  %xor630 = xor i32 %xor624, %137
  %arrayidx631 = getelementptr i32, ptr %c, i32 70
  %138 = ptrtoint ptr %arrayidx631 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx631, align 4
  %xor621 = xor i32 %xor611, %139
  %xor623 = xor i32 %xor621, %and617
  %xor632 = xor i32 %xor623, %xor618
  %arrayidx633 = getelementptr i32, ptr %c, i32 71
  %140 = ptrtoint ptr %arrayidx633 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx633, align 4
  %xor620 = xor i32 %xor611, %141
  %xor634 = xor i32 %xor620, %and615
  %or.i3577 = tail call i32 @llvm.fshl.i32(i32 %xor628, i32 %xor628, i32 27)
  %or.i3578 = tail call i32 @llvm.fshl.i32(i32 %xor632, i32 %xor632, i32 10)
  %xor637 = xor i32 %or.i3578, %xor634
  %shl639 = shl i32 %xor630, 7
  %xor638 = xor i32 %xor630, %xor634
  %xor640 = xor i32 %xor638, %or.i3577
  %or.i3579 = tail call i32 @llvm.fshl.i32(i32 %xor630, i32 %xor630, i32 31)
  %xor642 = xor i32 %xor637, %shl639
  %or.i3580 = tail call i32 @llvm.fshl.i32(i32 %xor634, i32 %xor634, i32 25)
  %shl644 = shl i32 %xor640, 3
  %or.i3581 = tail call i32 @llvm.fshl.i32(i32 %xor640, i32 %xor640, i32 19)
  %xor645 = xor i32 %xor642, %or.i3579
  %xor648 = xor i32 %xor645, %xor640
  %xor646 = xor i32 %xor642, %or.i3580
  %xor649 = xor i32 %xor646, %shl644
  %or.i3582 = tail call i32 @llvm.fshl.i32(i32 %xor637, i32 %xor642, i32 29)
  %xor652 = xor i32 %xor648, %or.i3581
  %or653 = or i32 %xor649, %xor652
  %xor654 = xor i32 %xor649, %xor652
  %neg655 = xor i32 %or.i3581, -1
  %xor656 = xor i32 %or653, %or.i3582
  %xor657 = xor i32 %or653, %neg655
  %and658 = and i32 %xor648, %neg655
  %xor659 = xor i32 %xor656, %and658
  %and660 = and i32 %xor656, %xor657
  %xor661 = xor i32 %xor657, %xor654
  %xor662 = xor i32 %and660, %xor661
  %and664 = and i32 %xor661, %xor659
  %arrayidx669 = getelementptr i32, ptr %c, i32 64
  %142 = ptrtoint ptr %arrayidx669 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx669, align 4
  %xor670 = xor i32 %xor662, %143
  %arrayidx671 = getelementptr i32, ptr %c, i32 65
  %144 = ptrtoint ptr %arrayidx671 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx671, align 4
  %xor668 = xor i32 %xor654, %145
  %xor672 = xor i32 %xor668, %and664
  %arrayidx673 = getelementptr i32, ptr %c, i32 66
  %146 = ptrtoint ptr %arrayidx673 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx673, align 4
  %xor663 = xor i32 %xor649, %147
  %xor665 = xor i32 %xor663, %xor657
  %xor674 = xor i32 %xor665, %xor659
  %arrayidx675 = getelementptr i32, ptr %c, i32 67
  %148 = ptrtoint ptr %arrayidx675 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx675, align 4
  %xor666 = xor i32 %xor659, %149
  %xor676 = xor i32 %xor666, %xor662
  %or.i3583 = tail call i32 @llvm.fshl.i32(i32 %xor670, i32 %xor670, i32 27)
  %or.i3584 = tail call i32 @llvm.fshl.i32(i32 %xor674, i32 %xor674, i32 10)
  %xor679 = xor i32 %or.i3584, %xor676
  %xor680 = xor i32 %or.i3583, %xor676
  %shl681 = shl i32 %xor672, 7
  %xor682 = xor i32 %xor680, %xor672
  %or.i3585 = tail call i32 @llvm.fshl.i32(i32 %xor672, i32 %xor672, i32 31)
  %xor684 = xor i32 %xor679, %shl681
  %or.i3586 = tail call i32 @llvm.fshl.i32(i32 %xor676, i32 %xor676, i32 25)
  %shl686 = shl i32 %xor682, 3
  %xor687 = xor i32 %xor682, %or.i3585
  %xor688 = xor i32 %shl686, %or.i3586
  %or.i3587 = tail call i32 @llvm.fshl.i32(i32 %xor682, i32 %xor682, i32 19)
  %xor690 = xor i32 %xor687, %xor684
  %xor691 = xor i32 %xor688, %xor684
  %or.i3588 = tail call i32 @llvm.fshl.i32(i32 %xor679, i32 %xor684, i32 29)
  %and694 = and i32 %xor691, %or.i3587
  %or696 = or i32 %xor691, %or.i3588
  %xor697 = xor i32 %xor688, %xor687
  %150 = xor i32 %or.i3588, %or.i3587
  %neg698 = xor i32 %150, -1
  %or699 = or i32 %and694, %xor690
  %xor700 = xor i32 %xor697, %neg698
  %and701 = and i32 %or696, %neg698
  %xor702 = xor i32 %and701, %or699
  %and703 = and i32 %or699, %or696
  %xor704 = xor i32 %and694, %or696
  %xor705 = xor i32 %xor700, %xor704
  %or707 = or i32 %xor702, %xor704
  %and710 = and i32 %xor705, %xor702
  %arrayidx713 = getelementptr i32, ptr %c, i32 60
  %151 = ptrtoint ptr %arrayidx713 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx713, align 4
  %xor708 = xor i32 %xor705, %152
  %xor714 = xor i32 %xor708, %and703
  %arrayidx715 = getelementptr i32, ptr %c, i32 61
  %153 = ptrtoint ptr %arrayidx715 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx715, align 4
  %xor709 = xor i32 %xor705, %154
  %xor716 = xor i32 %xor709, %or707
  %arrayidx717 = getelementptr i32, ptr %c, i32 62
  %155 = ptrtoint ptr %arrayidx717 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx717, align 4
  %xor718 = xor i32 %xor702, %156
  %arrayidx719 = getelementptr i32, ptr %c, i32 63
  %157 = ptrtoint ptr %arrayidx719 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx719, align 4
  %xor712 = xor i32 %xor704, %158
  %xor720 = xor i32 %xor712, %and710
  %or.i3589 = tail call i32 @llvm.fshl.i32(i32 %xor714, i32 %xor714, i32 27)
  %or.i3590 = tail call i32 @llvm.fshl.i32(i32 %xor718, i32 %xor718, i32 10)
  %xor723 = xor i32 %xor720, %or.i3590
  %xor724 = xor i32 %or.i3589, %xor720
  %shl725 = shl i32 %xor716, 7
  %xor726 = xor i32 %xor724, %xor716
  %or.i3591 = tail call i32 @llvm.fshl.i32(i32 %xor716, i32 %xor716, i32 31)
  %xor728 = xor i32 %xor723, %shl725
  %or.i3592 = tail call i32 @llvm.fshl.i32(i32 %xor720, i32 %xor720, i32 25)
  %shl730 = shl i32 %xor726, 3
  %xor731 = xor i32 %xor726, %or.i3591
  %xor732 = xor i32 %shl730, %or.i3592
  %or.i3593 = tail call i32 @llvm.fshl.i32(i32 %xor726, i32 %xor726, i32 19)
  %xor734 = xor i32 %xor731, %xor728
  %xor735 = xor i32 %xor732, %xor728
  %or.i3594 = tail call i32 @llvm.fshl.i32(i32 %xor723, i32 %xor728, i32 29)
  %xor738 = xor i32 %or.i3593, %or.i3594
  %and739 = and i32 %xor735, %xor738
  %xor740 = xor i32 %xor735, %or.i3594
  %xor741 = xor i32 %and739, %xor740
  %xor742 = xor i32 %xor732, %xor731
  %or743 = or i32 %xor740, %xor738
  %xor744 = xor i32 %or743, %xor742
  %and745 = and i32 %xor741, %xor742
  %neg746 = xor i32 %xor741, -1
  %and748 = and i32 %xor744, %xor734
  %xor749 = xor i32 %xor738, %neg746
  %xor752 = xor i32 %and748, %neg746
  %arrayidx755 = getelementptr i32, ptr %c, i32 56
  %159 = ptrtoint ptr %arrayidx755 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx755, align 4
  %xor754 = xor i32 %xor744, %160
  %xor756 = xor i32 %xor754, %xor752
  %arrayidx757 = getelementptr i32, ptr %c, i32 57
  %161 = ptrtoint ptr %arrayidx757 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx757, align 4
  %xor751 = xor i32 %xor744, %162
  %xor758 = xor i32 %xor751, %xor749
  %arrayidx759 = getelementptr i32, ptr %c, i32 58
  %163 = ptrtoint ptr %arrayidx759 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx759, align 4
  %xor747 = xor i32 %xor734, %164
  %xor750 = xor i32 %xor747, %and745
  %xor760 = xor i32 %xor750, %xor749
  %arrayidx761 = getelementptr i32, ptr %c, i32 59
  %165 = ptrtoint ptr %arrayidx761 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx761, align 4
  %xor762 = xor i32 %xor752, %166
  %or.i3595 = tail call i32 @llvm.fshl.i32(i32 %xor756, i32 %xor756, i32 27)
  %or.i3596 = tail call i32 @llvm.fshl.i32(i32 %xor760, i32 %xor760, i32 10)
  %xor765 = xor i32 %or.i3596, %xor762
  %shl767 = shl i32 %xor758, 7
  %xor766 = xor i32 %xor762, %xor758
  %xor768 = xor i32 %xor766, %or.i3595
  %or.i3597 = tail call i32 @llvm.fshl.i32(i32 %xor758, i32 %xor758, i32 31)
  %xor770 = xor i32 %xor765, %shl767
  %or.i3598 = tail call i32 @llvm.fshl.i32(i32 %xor762, i32 %xor762, i32 25)
  %shl772 = shl i32 %xor768, 3
  %or.i3599 = tail call i32 @llvm.fshl.i32(i32 %xor768, i32 %xor768, i32 19)
  %xor773 = xor i32 %xor770, %or.i3597
  %xor776 = xor i32 %xor773, %xor768
  %xor774 = xor i32 %xor770, %or.i3598
  %xor777 = xor i32 %xor774, %shl772
  %or.i3600 = tail call i32 @llvm.fshl.i32(i32 %xor765, i32 %xor770, i32 29)
  %or780 = or i32 %xor776, %or.i3600
  %xor781 = xor i32 %xor776, %or.i3600
  %xor782 = xor i32 %or780, %xor777
  %and783 = and i32 %xor777, %xor776
  %xor784 = xor i32 %xor781, %and783
  %or785 = or i32 %and783, %or.i3599
  %neg786 = xor i32 %or.i3599, -1
  %xor787 = xor i32 %or785, %xor784
  %or788 = or i32 %xor784, %neg786
  %xor789 = xor i32 %xor782, %xor776
  %xor790 = xor i32 %or788, %xor789
  %and791 = and i32 %xor789, %neg786
  %xor792 = xor i32 %xor782, %neg786
  %and794 = and i32 %xor790, %xor792
  %xor795 = xor i32 %xor790, %xor787
  %arrayidx800 = getelementptr i32, ptr %c, i32 52
  %167 = ptrtoint ptr %arrayidx800 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx800, align 4
  %xor793 = xor i32 %xor782, %168
  %xor801 = xor i32 %xor793, %xor787
  %arrayidx802 = getelementptr i32, ptr %c, i32 53
  %169 = ptrtoint ptr %arrayidx802 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx802, align 4
  %xor799 = xor i32 %xor787, %170
  %xor803 = xor i32 %xor799, %and791
  %arrayidx804 = getelementptr i32, ptr %c, i32 54
  %171 = ptrtoint ptr %arrayidx804 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx804, align 4
  %xor796 = xor i32 %xor795, %172
  %xor805 = xor i32 %xor796, %and794
  %arrayidx806 = getelementptr i32, ptr %c, i32 55
  %173 = ptrtoint ptr %arrayidx806 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx806, align 4
  %xor797 = xor i32 %and791, %174
  %xor807 = xor i32 %xor797, %xor795
  %or.i3601 = tail call i32 @llvm.fshl.i32(i32 %xor801, i32 %xor801, i32 27)
  %or.i3602 = tail call i32 @llvm.fshl.i32(i32 %xor805, i32 %xor805, i32 10)
  %xor810 = xor i32 %or.i3602, %xor807
  %shl812 = shl i32 %xor803, 7
  %xor811 = xor i32 %or.i3601, %xor803
  %xor813 = xor i32 %xor811, %xor807
  %or.i3603 = tail call i32 @llvm.fshl.i32(i32 %xor803, i32 %xor803, i32 31)
  %xor815 = xor i32 %xor810, %shl812
  %or.i3604 = tail call i32 @llvm.fshl.i32(i32 %xor807, i32 %xor807, i32 25)
  %shl817 = shl i32 %xor813, 3
  %xor818 = xor i32 %xor813, %or.i3603
  %xor819 = xor i32 %shl817, %or.i3604
  %or.i3605 = tail call i32 @llvm.fshl.i32(i32 %xor813, i32 %xor813, i32 19)
  %xor821 = xor i32 %xor818, %xor815
  %xor822 = xor i32 %xor819, %xor815
  %or.i3606 = tail call i32 @llvm.fshl.i32(i32 %xor810, i32 %xor815, i32 29)
  %xor825 = xor i32 %xor822, %or.i3606
  %and826 = and i32 %xor821, %or.i3605
  %xor827 = xor i32 %xor825, %and826
  %or828 = or i32 %xor822, %or.i3606
  %neg829 = xor i32 %or.i3605, -1
  %xor830 = xor i32 %xor827, %xor821
  %xor831 = xor i32 %xor827, %or828
  %and832 = and i32 %or828, %neg829
  %xor833 = xor i32 %xor831, %and832
  %or834 = or i32 %xor831, %neg829
  %xor835 = xor i32 %or834, %xor822
  %and836 = and i32 %xor833, %xor822
  %xor838 = xor i32 %and836, %xor830
  %and839 = and i32 %xor835, %xor830
  %arrayidx843 = getelementptr i32, ptr %c, i32 48
  %175 = ptrtoint ptr %arrayidx843 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx843, align 4
  %xor842 = xor i32 %xor835, %176
  %xor844 = xor i32 %xor842, %xor838
  %arrayidx845 = getelementptr i32, ptr %c, i32 49
  %177 = ptrtoint ptr %arrayidx845 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx845, align 4
  %xor846 = xor i32 %xor833, %178
  %arrayidx847 = getelementptr i32, ptr %c, i32 50
  %179 = ptrtoint ptr %arrayidx847 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx847, align 4
  %xor837 = xor i32 %180, %neg829
  %xor840 = xor i32 %xor837, %and836
  %xor848 = xor i32 %xor840, %and839
  %arrayidx849 = getelementptr i32, ptr %c, i32 51
  %181 = ptrtoint ptr %arrayidx849 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx849, align 4
  %xor850 = xor i32 %xor838, %182
  %or.i3607 = tail call i32 @llvm.fshl.i32(i32 %xor844, i32 %xor844, i32 27)
  %or.i3608 = tail call i32 @llvm.fshl.i32(i32 %xor848, i32 %xor848, i32 10)
  %xor853 = xor i32 %or.i3608, %xor850
  %shl855 = shl i32 %xor846, 7
  %xor854 = xor i32 %xor850, %xor846
  %xor856 = xor i32 %xor854, %or.i3607
  %or.i3609 = tail call i32 @llvm.fshl.i32(i32 %xor846, i32 %xor846, i32 31)
  %xor858 = xor i32 %xor853, %shl855
  %or.i3610 = tail call i32 @llvm.fshl.i32(i32 %xor850, i32 %xor850, i32 25)
  %shl860 = shl i32 %xor856, 3
  %xor861 = xor i32 %xor856, %or.i3609
  %xor862 = xor i32 %shl860, %or.i3610
  %or.i3611 = tail call i32 @llvm.fshl.i32(i32 %xor856, i32 %xor856, i32 19)
  %xor864 = xor i32 %xor861, %xor858
  %xor865 = xor i32 %xor862, %xor858
  %or.i3612 = tail call i32 @llvm.fshl.i32(i32 %xor853, i32 %xor858, i32 29)
  %xor868 = xor i32 %xor864, %or.i3612
  %and869 = and i32 %xor868, %xor864
  %xor870 = xor i32 %and869, %or.i3611
  %or871 = or i32 %xor864, %or.i3611
  %xor873 = xor i32 %or871, %xor865
  %or874 = or i32 %xor870, %xor865
  %xor875 = xor i32 %or874, %xor868
  %xor876 = xor i32 %xor875, %xor870
  %xor877 = xor i32 %xor873, %xor868
  %and879 = and i32 %xor876, %or874
  %and881 = and i32 %xor875, %xor877
  %arrayidx886 = getelementptr i32, ptr %c, i32 44
  %183 = ptrtoint ptr %arrayidx886 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx886, align 4
  %xor887 = xor i32 %xor875, %184
  %arrayidx888 = getelementptr i32, ptr %c, i32 45
  %185 = ptrtoint ptr %arrayidx888 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx888, align 4
  %xor880 = xor i32 %xor877, %186
  %xor885 = xor i32 %xor880, %xor876
  %xor889 = xor i32 %xor885, %and881
  %arrayidx890 = getelementptr i32, ptr %c, i32 46
  %187 = ptrtoint ptr %arrayidx890 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx890, align 4
  %xor872 = xor i32 %xor861, %188
  %xor882 = xor i32 %xor872, %xor862
  %xor891 = xor i32 %xor882, %and879
  %arrayidx892 = getelementptr i32, ptr %c, i32 47
  %189 = ptrtoint ptr %arrayidx892 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx892, align 4
  %xor883 = xor i32 %and881, %190
  %xor893 = xor i32 %xor883, %and879
  %or.i3613 = tail call i32 @llvm.fshl.i32(i32 %xor887, i32 %xor887, i32 27)
  %or.i3614 = tail call i32 @llvm.fshl.i32(i32 %xor891, i32 %xor891, i32 10)
  %xor896 = xor i32 %or.i3614, %xor893
  %xor897 = xor i32 %xor893, %or.i3613
  %shl898 = shl i32 %xor889, 7
  %xor899 = xor i32 %xor897, %xor889
  %or.i3615 = tail call i32 @llvm.fshl.i32(i32 %xor889, i32 %xor889, i32 31)
  %xor901 = xor i32 %xor896, %shl898
  %or.i3616 = tail call i32 @llvm.fshl.i32(i32 %xor893, i32 %xor893, i32 25)
  %shl903 = shl i32 %xor899, 3
  %xor904 = xor i32 %xor899, %or.i3615
  %xor905 = xor i32 %shl903, %or.i3616
  %or.i3617 = tail call i32 @llvm.fshl.i32(i32 %xor899, i32 %xor899, i32 19)
  %xor907 = xor i32 %xor904, %xor901
  %xor908 = xor i32 %xor905, %xor901
  %or.i3618 = tail call i32 @llvm.fshl.i32(i32 %xor896, i32 %xor901, i32 29)
  %xor911 = xor i32 %or.i3618, %xor907
  %neg912 = xor i32 %xor908, -1
  %or913 = or i32 %xor911, %neg912
  %xor914 = xor i32 %xor911, %xor908
  %xor915 = xor i32 %xor908, %or.i3617
  %xor916 = xor i32 %or913, %xor907
  %or917 = or i32 %xor914, %xor907
  %xor918 = xor i32 %xor914, %or.i3617
  %xor919 = xor i32 %or917, %xor915
  %or920 = or i32 %xor916, %xor915
  %xor921 = xor i32 %xor918, %xor916
  %and923 = and i32 %xor921, %xor919
  %arrayidx928 = getelementptr i32, ptr %c, i32 40
  %191 = ptrtoint ptr %arrayidx928 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx928, align 4
  %xor929 = xor i32 %xor919, %192
  %arrayidx930 = getelementptr i32, ptr %c, i32 41
  %193 = ptrtoint ptr %arrayidx930 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx930, align 4
  %xor922 = xor i32 %or.i3617, %194
  %xor927 = xor i32 %xor922, %xor921
  %xor931 = xor i32 %xor927, %or920
  %arrayidx932 = getelementptr i32, ptr %c, i32 42
  %195 = ptrtoint ptr %arrayidx932 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx932, align 4
  %xor925 = xor i32 %xor918, %196
  %xor933 = xor i32 %xor925, %or920
  %arrayidx934 = getelementptr i32, ptr %c, i32 43
  %197 = ptrtoint ptr %arrayidx934 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx934, align 4
  %xor924 = xor i32 %xor916, %198
  %xor935 = xor i32 %xor924, %and923
  %or.i3619 = tail call i32 @llvm.fshl.i32(i32 %xor929, i32 %xor929, i32 27)
  %or.i3620 = tail call i32 @llvm.fshl.i32(i32 %xor933, i32 %xor933, i32 10)
  %xor938 = xor i32 %or.i3620, %xor935
  %xor939 = xor i32 %xor935, %or.i3619
  %shl940 = shl i32 %xor931, 7
  %xor941 = xor i32 %xor939, %xor931
  %or.i3621 = tail call i32 @llvm.fshl.i32(i32 %xor931, i32 %xor931, i32 31)
  %xor943 = xor i32 %xor938, %shl940
  %or.i3622 = tail call i32 @llvm.fshl.i32(i32 %xor935, i32 %xor935, i32 25)
  %shl945 = shl i32 %xor941, 3
  %xor946 = xor i32 %xor941, %or.i3621
  %xor947 = xor i32 %shl945, %or.i3622
  %or.i3623 = tail call i32 @llvm.fshl.i32(i32 %xor941, i32 %xor941, i32 19)
  %xor950 = xor i32 %xor947, %xor943
  %or.i3624 = tail call i32 @llvm.fshl.i32(i32 %xor938, i32 %xor943, i32 29)
  %xor953 = xor i32 %xor946, %xor947
  %xor954 = xor i32 %or.i3623, %or.i3624
  %neg955 = xor i32 %or.i3624, -1
  %or956 = or i32 %xor953, %or.i3623
  %xor957 = xor i32 %or956, %xor950
  %and958 = and i32 %xor950, %xor953
  %xor959 = xor i32 %xor953, %neg955
  %and960 = and i32 %xor957, %neg955
  %xor961 = xor i32 %xor957, %xor959
  %or962 = or i32 %xor959, %and958
  %or965 = or i32 %xor961, %xor954
  %xor967 = xor i32 %or965, %or962
  %arrayidx970 = getelementptr i32, ptr %c, i32 36
  %199 = ptrtoint ptr %arrayidx970 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx970, align 4
  %xor969 = xor i32 %xor961, %200
  %xor971 = xor i32 %xor969, %xor967
  %arrayidx972 = getelementptr i32, ptr %c, i32 37
  %201 = ptrtoint ptr %arrayidx972 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx972, align 4
  %xor973 = xor i32 %xor967, %202
  %arrayidx974 = getelementptr i32, ptr %c, i32 38
  %203 = ptrtoint ptr %arrayidx974 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx974, align 4
  %xor964 = xor i32 %xor954, %204
  %xor966 = xor i32 %xor964, %and960
  %xor975 = xor i32 %xor966, %xor961
  %arrayidx976 = getelementptr i32, ptr %c, i32 39
  %205 = ptrtoint ptr %arrayidx976 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx976, align 4
  %xor963 = xor i32 %xor954, %206
  %xor977 = xor i32 %xor963, %and958
  %or.i3625 = tail call i32 @llvm.fshl.i32(i32 %xor971, i32 %xor971, i32 27)
  %or.i3626 = tail call i32 @llvm.fshl.i32(i32 %xor975, i32 %xor975, i32 10)
  %xor980 = xor i32 %or.i3626, %xor977
  %shl982 = shl i32 %xor973, 7
  %xor981 = xor i32 %xor973, %xor977
  %xor983 = xor i32 %xor981, %or.i3625
  %or.i3627 = tail call i32 @llvm.fshl.i32(i32 %xor973, i32 %xor973, i32 31)
  %xor985 = xor i32 %xor980, %shl982
  %or.i3628 = tail call i32 @llvm.fshl.i32(i32 %xor977, i32 %xor977, i32 25)
  %shl987 = shl i32 %xor983, 3
  %or.i3629 = tail call i32 @llvm.fshl.i32(i32 %xor983, i32 %xor983, i32 19)
  %xor988 = xor i32 %xor985, %or.i3627
  %xor991 = xor i32 %xor988, %xor983
  %xor989 = xor i32 %xor985, %or.i3628
  %xor992 = xor i32 %xor989, %shl987
  %or.i3630 = tail call i32 @llvm.fshl.i32(i32 %xor980, i32 %xor985, i32 29)
  %xor995 = xor i32 %xor991, %or.i3629
  %or996 = or i32 %xor992, %xor995
  %xor997 = xor i32 %xor992, %xor995
  %neg998 = xor i32 %or.i3629, -1
  %xor999 = xor i32 %or996, %or.i3630
  %xor1000 = xor i32 %or996, %neg998
  %and1001 = and i32 %xor991, %neg998
  %xor1002 = xor i32 %xor999, %and1001
  %and1003 = and i32 %xor999, %xor1000
  %xor1004 = xor i32 %xor1000, %xor997
  %xor1005 = xor i32 %and1003, %xor1004
  %and1007 = and i32 %xor1004, %xor1002
  %arrayidx1012 = getelementptr i32, ptr %c, i32 32
  %207 = ptrtoint ptr %arrayidx1012 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx1012, align 4
  %xor1013 = xor i32 %xor1005, %208
  %arrayidx1014 = getelementptr i32, ptr %c, i32 33
  %209 = ptrtoint ptr %arrayidx1014 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx1014, align 4
  %xor1011 = xor i32 %xor997, %210
  %xor1015 = xor i32 %xor1011, %and1007
  %arrayidx1016 = getelementptr i32, ptr %c, i32 34
  %211 = ptrtoint ptr %arrayidx1016 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx1016, align 4
  %xor1006 = xor i32 %xor992, %212
  %xor1008 = xor i32 %xor1006, %xor1000
  %xor1017 = xor i32 %xor1008, %xor1002
  %arrayidx1018 = getelementptr i32, ptr %c, i32 35
  %213 = ptrtoint ptr %arrayidx1018 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx1018, align 4
  %xor1009 = xor i32 %xor1002, %214
  %xor1019 = xor i32 %xor1009, %xor1005
  %or.i3631 = tail call i32 @llvm.fshl.i32(i32 %xor1013, i32 %xor1013, i32 27)
  %or.i3632 = tail call i32 @llvm.fshl.i32(i32 %xor1017, i32 %xor1017, i32 10)
  %xor1022 = xor i32 %or.i3632, %xor1019
  %xor1023 = xor i32 %or.i3631, %xor1019
  %shl1024 = shl i32 %xor1015, 7
  %xor1025 = xor i32 %xor1023, %xor1015
  %or.i3633 = tail call i32 @llvm.fshl.i32(i32 %xor1015, i32 %xor1015, i32 31)
  %xor1027 = xor i32 %xor1022, %shl1024
  %or.i3634 = tail call i32 @llvm.fshl.i32(i32 %xor1019, i32 %xor1019, i32 25)
  %shl1029 = shl i32 %xor1025, 3
  %xor1030 = xor i32 %xor1025, %or.i3633
  %xor1031 = xor i32 %shl1029, %or.i3634
  %or.i3635 = tail call i32 @llvm.fshl.i32(i32 %xor1025, i32 %xor1025, i32 19)
  %xor1033 = xor i32 %xor1030, %xor1027
  %xor1034 = xor i32 %xor1031, %xor1027
  %or.i3636 = tail call i32 @llvm.fshl.i32(i32 %xor1022, i32 %xor1027, i32 29)
  %and1037 = and i32 %xor1034, %or.i3635
  %or1039 = or i32 %xor1034, %or.i3636
  %xor1040 = xor i32 %xor1031, %xor1030
  %215 = xor i32 %or.i3636, %or.i3635
  %neg1041 = xor i32 %215, -1
  %or1042 = or i32 %and1037, %xor1033
  %xor1043 = xor i32 %xor1040, %neg1041
  %and1044 = and i32 %or1039, %neg1041
  %xor1045 = xor i32 %and1044, %or1042
  %and1046 = and i32 %or1042, %or1039
  %xor1047 = xor i32 %and1037, %or1039
  %xor1048 = xor i32 %xor1043, %xor1047
  %or1050 = or i32 %xor1045, %xor1047
  %and1053 = and i32 %xor1048, %xor1045
  %arrayidx1056 = getelementptr i32, ptr %c, i32 28
  %216 = ptrtoint ptr %arrayidx1056 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx1056, align 4
  %xor1051 = xor i32 %xor1048, %217
  %xor1057 = xor i32 %xor1051, %and1046
  %arrayidx1058 = getelementptr i32, ptr %c, i32 29
  %218 = ptrtoint ptr %arrayidx1058 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx1058, align 4
  %xor1052 = xor i32 %xor1048, %219
  %xor1059 = xor i32 %xor1052, %or1050
  %arrayidx1060 = getelementptr i32, ptr %c, i32 30
  %220 = ptrtoint ptr %arrayidx1060 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx1060, align 4
  %xor1061 = xor i32 %xor1045, %221
  %arrayidx1062 = getelementptr i32, ptr %c, i32 31
  %222 = ptrtoint ptr %arrayidx1062 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx1062, align 4
  %xor1055 = xor i32 %xor1047, %223
  %xor1063 = xor i32 %xor1055, %and1053
  %or.i3637 = tail call i32 @llvm.fshl.i32(i32 %xor1057, i32 %xor1057, i32 27)
  %or.i3638 = tail call i32 @llvm.fshl.i32(i32 %xor1061, i32 %xor1061, i32 10)
  %xor1066 = xor i32 %xor1063, %or.i3638
  %xor1067 = xor i32 %or.i3637, %xor1063
  %shl1068 = shl i32 %xor1059, 7
  %xor1069 = xor i32 %xor1067, %xor1059
  %or.i3639 = tail call i32 @llvm.fshl.i32(i32 %xor1059, i32 %xor1059, i32 31)
  %xor1071 = xor i32 %xor1066, %shl1068
  %or.i3640 = tail call i32 @llvm.fshl.i32(i32 %xor1063, i32 %xor1063, i32 25)
  %shl1073 = shl i32 %xor1069, 3
  %xor1074 = xor i32 %xor1069, %or.i3639
  %xor1075 = xor i32 %shl1073, %or.i3640
  %or.i3641 = tail call i32 @llvm.fshl.i32(i32 %xor1069, i32 %xor1069, i32 19)
  %xor1077 = xor i32 %xor1074, %xor1071
  %xor1078 = xor i32 %xor1075, %xor1071
  %or.i3642 = tail call i32 @llvm.fshl.i32(i32 %xor1066, i32 %xor1071, i32 29)
  %xor1081 = xor i32 %or.i3641, %or.i3642
  %and1082 = and i32 %xor1078, %xor1081
  %xor1083 = xor i32 %xor1078, %or.i3642
  %xor1084 = xor i32 %and1082, %xor1083
  %xor1085 = xor i32 %xor1075, %xor1074
  %or1086 = or i32 %xor1083, %xor1081
  %xor1087 = xor i32 %or1086, %xor1085
  %and1088 = and i32 %xor1084, %xor1085
  %neg1089 = xor i32 %xor1084, -1
  %and1091 = and i32 %xor1087, %xor1077
  %xor1092 = xor i32 %xor1081, %neg1089
  %xor1095 = xor i32 %and1091, %neg1089
  %arrayidx1098 = getelementptr i32, ptr %c, i32 24
  %224 = ptrtoint ptr %arrayidx1098 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx1098, align 4
  %xor1097 = xor i32 %xor1087, %225
  %xor1099 = xor i32 %xor1097, %xor1095
  %arrayidx1100 = getelementptr i32, ptr %c, i32 25
  %226 = ptrtoint ptr %arrayidx1100 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx1100, align 4
  %xor1094 = xor i32 %xor1087, %227
  %xor1101 = xor i32 %xor1094, %xor1092
  %arrayidx1102 = getelementptr i32, ptr %c, i32 26
  %228 = ptrtoint ptr %arrayidx1102 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx1102, align 4
  %xor1090 = xor i32 %xor1077, %229
  %xor1093 = xor i32 %xor1090, %and1088
  %xor1103 = xor i32 %xor1093, %xor1092
  %arrayidx1104 = getelementptr i32, ptr %c, i32 27
  %230 = ptrtoint ptr %arrayidx1104 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx1104, align 4
  %xor1105 = xor i32 %xor1095, %231
  %or.i3643 = tail call i32 @llvm.fshl.i32(i32 %xor1099, i32 %xor1099, i32 27)
  %or.i3644 = tail call i32 @llvm.fshl.i32(i32 %xor1103, i32 %xor1103, i32 10)
  %xor1108 = xor i32 %or.i3644, %xor1105
  %shl1110 = shl i32 %xor1101, 7
  %xor1109 = xor i32 %xor1105, %xor1101
  %xor1111 = xor i32 %xor1109, %or.i3643
  %or.i3645 = tail call i32 @llvm.fshl.i32(i32 %xor1101, i32 %xor1101, i32 31)
  %xor1113 = xor i32 %xor1108, %shl1110
  %or.i3646 = tail call i32 @llvm.fshl.i32(i32 %xor1105, i32 %xor1105, i32 25)
  %shl1115 = shl i32 %xor1111, 3
  %or.i3647 = tail call i32 @llvm.fshl.i32(i32 %xor1111, i32 %xor1111, i32 19)
  %xor1116 = xor i32 %xor1113, %or.i3645
  %xor1119 = xor i32 %xor1116, %xor1111
  %xor1117 = xor i32 %xor1113, %or.i3646
  %xor1120 = xor i32 %xor1117, %shl1115
  %or.i3648 = tail call i32 @llvm.fshl.i32(i32 %xor1108, i32 %xor1113, i32 29)
  %or1123 = or i32 %xor1119, %or.i3648
  %xor1124 = xor i32 %xor1119, %or.i3648
  %xor1125 = xor i32 %or1123, %xor1120
  %and1126 = and i32 %xor1120, %xor1119
  %xor1127 = xor i32 %xor1124, %and1126
  %or1128 = or i32 %and1126, %or.i3647
  %neg1129 = xor i32 %or.i3647, -1
  %xor1130 = xor i32 %or1128, %xor1127
  %or1131 = or i32 %xor1127, %neg1129
  %xor1132 = xor i32 %xor1125, %xor1119
  %xor1133 = xor i32 %or1131, %xor1132
  %and1134 = and i32 %xor1132, %neg1129
  %xor1135 = xor i32 %xor1125, %neg1129
  %and1137 = and i32 %xor1133, %xor1135
  %xor1138 = xor i32 %xor1133, %xor1130
  %arrayidx1143 = getelementptr i32, ptr %c, i32 20
  %232 = ptrtoint ptr %arrayidx1143 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx1143, align 4
  %xor1136 = xor i32 %xor1125, %233
  %xor1144 = xor i32 %xor1136, %xor1130
  %arrayidx1145 = getelementptr i32, ptr %c, i32 21
  %234 = ptrtoint ptr %arrayidx1145 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx1145, align 4
  %xor1142 = xor i32 %xor1130, %235
  %xor1146 = xor i32 %xor1142, %and1134
  %arrayidx1147 = getelementptr i32, ptr %c, i32 22
  %236 = ptrtoint ptr %arrayidx1147 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx1147, align 4
  %xor1139 = xor i32 %xor1138, %237
  %xor1148 = xor i32 %xor1139, %and1137
  %arrayidx1149 = getelementptr i32, ptr %c, i32 23
  %238 = ptrtoint ptr %arrayidx1149 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx1149, align 4
  %xor1140 = xor i32 %and1134, %239
  %xor1150 = xor i32 %xor1140, %xor1138
  %or.i3649 = tail call i32 @llvm.fshl.i32(i32 %xor1144, i32 %xor1144, i32 27)
  %or.i3650 = tail call i32 @llvm.fshl.i32(i32 %xor1148, i32 %xor1148, i32 10)
  %xor1153 = xor i32 %or.i3650, %xor1150
  %shl1155 = shl i32 %xor1146, 7
  %xor1154 = xor i32 %or.i3649, %xor1146
  %xor1156 = xor i32 %xor1154, %xor1150
  %or.i3651 = tail call i32 @llvm.fshl.i32(i32 %xor1146, i32 %xor1146, i32 31)
  %xor1158 = xor i32 %xor1153, %shl1155
  %or.i3652 = tail call i32 @llvm.fshl.i32(i32 %xor1150, i32 %xor1150, i32 25)
  %shl1160 = shl i32 %xor1156, 3
  %xor1161 = xor i32 %xor1156, %or.i3651
  %xor1162 = xor i32 %shl1160, %or.i3652
  %or.i3653 = tail call i32 @llvm.fshl.i32(i32 %xor1156, i32 %xor1156, i32 19)
  %xor1164 = xor i32 %xor1161, %xor1158
  %xor1165 = xor i32 %xor1162, %xor1158
  %or.i3654 = tail call i32 @llvm.fshl.i32(i32 %xor1153, i32 %xor1158, i32 29)
  %xor1168 = xor i32 %xor1165, %or.i3654
  %and1169 = and i32 %xor1164, %or.i3653
  %xor1170 = xor i32 %xor1168, %and1169
  %or1171 = or i32 %xor1165, %or.i3654
  %neg1172 = xor i32 %or.i3653, -1
  %xor1173 = xor i32 %xor1170, %xor1164
  %xor1174 = xor i32 %xor1170, %or1171
  %and1175 = and i32 %or1171, %neg1172
  %xor1176 = xor i32 %xor1174, %and1175
  %or1177 = or i32 %xor1174, %neg1172
  %xor1178 = xor i32 %or1177, %xor1165
  %and1179 = and i32 %xor1176, %xor1165
  %xor1181 = xor i32 %and1179, %xor1173
  %and1182 = and i32 %xor1178, %xor1173
  %arrayidx1186 = getelementptr i32, ptr %c, i32 16
  %240 = ptrtoint ptr %arrayidx1186 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx1186, align 4
  %xor1185 = xor i32 %xor1178, %241
  %xor1187 = xor i32 %xor1185, %xor1181
  %arrayidx1188 = getelementptr i32, ptr %c, i32 17
  %242 = ptrtoint ptr %arrayidx1188 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx1188, align 4
  %xor1189 = xor i32 %xor1176, %243
  %arrayidx1190 = getelementptr i32, ptr %c, i32 18
  %244 = ptrtoint ptr %arrayidx1190 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx1190, align 4
  %xor1180 = xor i32 %245, %neg1172
  %xor1183 = xor i32 %xor1180, %and1179
  %xor1191 = xor i32 %xor1183, %and1182
  %arrayidx1192 = getelementptr i32, ptr %c, i32 19
  %246 = ptrtoint ptr %arrayidx1192 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx1192, align 4
  %xor1193 = xor i32 %xor1181, %247
  %or.i3655 = tail call i32 @llvm.fshl.i32(i32 %xor1187, i32 %xor1187, i32 27)
  %or.i3656 = tail call i32 @llvm.fshl.i32(i32 %xor1191, i32 %xor1191, i32 10)
  %xor1196 = xor i32 %or.i3656, %xor1193
  %shl1198 = shl i32 %xor1189, 7
  %xor1197 = xor i32 %xor1193, %xor1189
  %xor1199 = xor i32 %xor1197, %or.i3655
  %or.i3657 = tail call i32 @llvm.fshl.i32(i32 %xor1189, i32 %xor1189, i32 31)
  %xor1201 = xor i32 %xor1196, %shl1198
  %or.i3658 = tail call i32 @llvm.fshl.i32(i32 %xor1193, i32 %xor1193, i32 25)
  %shl1203 = shl i32 %xor1199, 3
  %xor1204 = xor i32 %xor1199, %or.i3657
  %xor1205 = xor i32 %shl1203, %or.i3658
  %or.i3659 = tail call i32 @llvm.fshl.i32(i32 %xor1199, i32 %xor1199, i32 19)
  %xor1207 = xor i32 %xor1204, %xor1201
  %xor1208 = xor i32 %xor1205, %xor1201
  %or.i3660 = tail call i32 @llvm.fshl.i32(i32 %xor1196, i32 %xor1201, i32 29)
  %xor1211 = xor i32 %xor1207, %or.i3660
  %and1212 = and i32 %xor1211, %xor1207
  %xor1213 = xor i32 %and1212, %or.i3659
  %or1214 = or i32 %xor1207, %or.i3659
  %xor1216 = xor i32 %or1214, %xor1208
  %or1217 = or i32 %xor1213, %xor1208
  %xor1218 = xor i32 %or1217, %xor1211
  %xor1219 = xor i32 %xor1218, %xor1213
  %xor1220 = xor i32 %xor1216, %xor1211
  %and1222 = and i32 %xor1219, %or1217
  %and1224 = and i32 %xor1218, %xor1220
  %arrayidx1229 = getelementptr i32, ptr %c, i32 12
  %248 = ptrtoint ptr %arrayidx1229 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx1229, align 4
  %xor1230 = xor i32 %xor1218, %249
  %arrayidx1231 = getelementptr i32, ptr %c, i32 13
  %250 = ptrtoint ptr %arrayidx1231 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx1231, align 4
  %xor1223 = xor i32 %xor1220, %251
  %xor1228 = xor i32 %xor1223, %xor1219
  %xor1232 = xor i32 %xor1228, %and1224
  %arrayidx1233 = getelementptr i32, ptr %c, i32 14
  %252 = ptrtoint ptr %arrayidx1233 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx1233, align 4
  %xor1215 = xor i32 %xor1204, %253
  %xor1225 = xor i32 %xor1215, %xor1205
  %xor1234 = xor i32 %xor1225, %and1222
  %arrayidx1235 = getelementptr i32, ptr %c, i32 15
  %254 = ptrtoint ptr %arrayidx1235 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx1235, align 4
  %xor1226 = xor i32 %and1224, %255
  %xor1236 = xor i32 %xor1226, %and1222
  %or.i3661 = tail call i32 @llvm.fshl.i32(i32 %xor1230, i32 %xor1230, i32 27)
  %or.i3662 = tail call i32 @llvm.fshl.i32(i32 %xor1234, i32 %xor1234, i32 10)
  %xor1239 = xor i32 %or.i3662, %xor1236
  %xor1240 = xor i32 %xor1236, %or.i3661
  %shl1241 = shl i32 %xor1232, 7
  %xor1242 = xor i32 %xor1240, %xor1232
  %or.i3663 = tail call i32 @llvm.fshl.i32(i32 %xor1232, i32 %xor1232, i32 31)
  %xor1244 = xor i32 %xor1239, %shl1241
  %or.i3664 = tail call i32 @llvm.fshl.i32(i32 %xor1236, i32 %xor1236, i32 25)
  %shl1246 = shl i32 %xor1242, 3
  %xor1247 = xor i32 %xor1242, %or.i3663
  %xor1248 = xor i32 %shl1246, %or.i3664
  %or.i3665 = tail call i32 @llvm.fshl.i32(i32 %xor1242, i32 %xor1242, i32 19)
  %xor1250 = xor i32 %xor1247, %xor1244
  %xor1251 = xor i32 %xor1248, %xor1244
  %or.i3666 = tail call i32 @llvm.fshl.i32(i32 %xor1239, i32 %xor1244, i32 29)
  %xor1254 = xor i32 %or.i3666, %xor1250
  %neg1255 = xor i32 %xor1251, -1
  %or1256 = or i32 %xor1254, %neg1255
  %xor1257 = xor i32 %xor1254, %xor1251
  %xor1258 = xor i32 %xor1251, %or.i3665
  %xor1259 = xor i32 %or1256, %xor1250
  %or1260 = or i32 %xor1257, %xor1250
  %xor1261 = xor i32 %xor1257, %or.i3665
  %xor1262 = xor i32 %or1260, %xor1258
  %or1263 = or i32 %xor1259, %xor1258
  %xor1264 = xor i32 %xor1261, %xor1259
  %and1266 = and i32 %xor1264, %xor1262
  %arrayidx1271 = getelementptr i32, ptr %c, i32 8
  %256 = ptrtoint ptr %arrayidx1271 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx1271, align 4
  %xor1272 = xor i32 %xor1262, %257
  %arrayidx1273 = getelementptr i32, ptr %c, i32 9
  %258 = ptrtoint ptr %arrayidx1273 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx1273, align 4
  %xor1265 = xor i32 %or.i3665, %259
  %xor1270 = xor i32 %xor1265, %xor1264
  %xor1274 = xor i32 %xor1270, %or1263
  %arrayidx1275 = getelementptr i32, ptr %c, i32 10
  %260 = ptrtoint ptr %arrayidx1275 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx1275, align 4
  %xor1268 = xor i32 %xor1261, %261
  %xor1276 = xor i32 %xor1268, %or1263
  %arrayidx1277 = getelementptr i32, ptr %c, i32 11
  %262 = ptrtoint ptr %arrayidx1277 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx1277, align 4
  %xor1267 = xor i32 %xor1259, %263
  %xor1278 = xor i32 %xor1267, %and1266
  %or.i3667 = tail call i32 @llvm.fshl.i32(i32 %xor1272, i32 %xor1272, i32 27)
  %or.i3668 = tail call i32 @llvm.fshl.i32(i32 %xor1276, i32 %xor1276, i32 10)
  %xor1281 = xor i32 %or.i3668, %xor1278
  %xor1282 = xor i32 %xor1278, %or.i3667
  %shl1283 = shl i32 %xor1274, 7
  %xor1284 = xor i32 %xor1282, %xor1274
  %or.i3669 = tail call i32 @llvm.fshl.i32(i32 %xor1274, i32 %xor1274, i32 31)
  %xor1286 = xor i32 %xor1281, %shl1283
  %or.i3670 = tail call i32 @llvm.fshl.i32(i32 %xor1278, i32 %xor1278, i32 25)
  %shl1288 = shl i32 %xor1284, 3
  %xor1289 = xor i32 %xor1284, %or.i3669
  %xor1290 = xor i32 %shl1288, %or.i3670
  %or.i3671 = tail call i32 @llvm.fshl.i32(i32 %xor1284, i32 %xor1284, i32 19)
  %xor1293 = xor i32 %xor1290, %xor1286
  %or.i3672 = tail call i32 @llvm.fshl.i32(i32 %xor1281, i32 %xor1286, i32 29)
  %xor1296 = xor i32 %xor1289, %xor1290
  %xor1297 = xor i32 %or.i3671, %or.i3672
  %neg1298 = xor i32 %or.i3672, -1
  %or1299 = or i32 %xor1296, %or.i3671
  %xor1300 = xor i32 %or1299, %xor1293
  %and1301 = and i32 %xor1293, %xor1296
  %xor1302 = xor i32 %xor1296, %neg1298
  %and1303 = and i32 %xor1300, %neg1298
  %xor1304 = xor i32 %xor1300, %xor1302
  %or1305 = or i32 %xor1302, %and1301
  %or1308 = or i32 %xor1304, %xor1297
  %xor1310 = xor i32 %or1308, %or1305
  %arrayidx1313 = getelementptr i32, ptr %c, i32 4
  %264 = ptrtoint ptr %arrayidx1313 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx1313, align 4
  %xor1312 = xor i32 %xor1304, %265
  %xor1314 = xor i32 %xor1312, %xor1310
  %arrayidx1315 = getelementptr i32, ptr %c, i32 5
  %266 = ptrtoint ptr %arrayidx1315 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx1315, align 4
  %xor1316 = xor i32 %xor1310, %267
  %arrayidx1317 = getelementptr i32, ptr %c, i32 6
  %268 = ptrtoint ptr %arrayidx1317 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx1317, align 4
  %xor1307 = xor i32 %xor1297, %269
  %xor1309 = xor i32 %xor1307, %and1303
  %xor1318 = xor i32 %xor1309, %xor1304
  %arrayidx1319 = getelementptr i32, ptr %c, i32 7
  %270 = ptrtoint ptr %arrayidx1319 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx1319, align 4
  %xor1306 = xor i32 %xor1297, %271
  %xor1320 = xor i32 %xor1306, %and1301
  %or.i3673 = tail call i32 @llvm.fshl.i32(i32 %xor1314, i32 %xor1314, i32 27)
  %or.i3674 = tail call i32 @llvm.fshl.i32(i32 %xor1318, i32 %xor1318, i32 10)
  %xor1323 = xor i32 %or.i3674, %xor1320
  %shl1325 = shl i32 %xor1316, 7
  %xor1324 = xor i32 %xor1316, %xor1320
  %xor1326 = xor i32 %xor1324, %or.i3673
  %or.i3675 = tail call i32 @llvm.fshl.i32(i32 %xor1316, i32 %xor1316, i32 31)
  %xor1328 = xor i32 %xor1323, %shl1325
  %or.i3676 = tail call i32 @llvm.fshl.i32(i32 %xor1320, i32 %xor1320, i32 25)
  %shl1330 = shl i32 %xor1326, 3
  %or.i3677 = tail call i32 @llvm.fshl.i32(i32 %xor1326, i32 %xor1326, i32 19)
  %xor1331 = xor i32 %xor1328, %or.i3675
  %xor1334 = xor i32 %xor1331, %xor1326
  %xor1332 = xor i32 %xor1328, %or.i3676
  %xor1335 = xor i32 %xor1332, %shl1330
  %or.i3678 = tail call i32 @llvm.fshl.i32(i32 %xor1323, i32 %xor1328, i32 29)
  %xor1338 = xor i32 %xor1334, %or.i3677
  %or1339 = or i32 %xor1335, %xor1338
  %xor1340 = xor i32 %xor1335, %xor1338
  %neg1341 = xor i32 %or.i3677, -1
  %xor1342 = xor i32 %or1339, %or.i3678
  %xor1343 = xor i32 %or1339, %neg1341
  %and1344 = and i32 %xor1334, %neg1341
  %xor1345 = xor i32 %xor1342, %and1344
  %and1346 = and i32 %xor1342, %xor1343
  %xor1347 = xor i32 %xor1343, %xor1340
  %xor1348 = xor i32 %and1346, %xor1347
  %and1350 = and i32 %xor1347, %xor1345
  %arrayidx1355 = getelementptr i32, ptr %c, i32 3
  %272 = ptrtoint ptr %arrayidx1355 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx1355, align 4
  %xor1352 = xor i32 %xor1345, %273
  %xor1356 = xor i32 %xor1352, %xor1348
  %arrayidx1357 = getelementptr i32, ptr %c, i32 2
  %274 = ptrtoint ptr %arrayidx1357 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx1357, align 4
  %xor1349 = xor i32 %xor1335, %275
  %xor1351 = xor i32 %xor1349, %xor1343
  %xor1358 = xor i32 %xor1351, %xor1345
  %arrayidx1359 = getelementptr i32, ptr %c, i32 1
  %276 = ptrtoint ptr %arrayidx1359 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx1359, align 4
  %xor1354 = xor i32 %xor1340, %277
  %xor1360 = xor i32 %xor1354, %and1350
  %278 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %c, align 4
  %xor1363 = xor i32 %xor1348, %279
  %280 = tail call i32 @llvm.bswap.i32(i32 %xor1363) #6
  %281 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %281, i32 4)
  store i32 %280, ptr %dst, align 1
  %add.ptr1364 = getelementptr i8, ptr %dst, i32 4
  %282 = tail call i32 @llvm.bswap.i32(i32 %xor1360) #6
  %283 = ptrtoint ptr %add.ptr1364 to i32
  call void @__asan_storeN_noabort(i32 %283, i32 4)
  store i32 %282, ptr %add.ptr1364, align 1
  %add.ptr1365 = getelementptr i8, ptr %dst, i32 8
  %284 = tail call i32 @llvm.bswap.i32(i32 %xor1358) #6
  %285 = ptrtoint ptr %add.ptr1365 to i32
  call void @__asan_storeN_noabort(i32 %285, i32 4)
  store i32 %284, ptr %add.ptr1365, align 1
  %add.ptr1366 = getelementptr i8, ptr %dst, i32 12
  %286 = tail call i32 @llvm.bswap.i32(i32 %xor1356) #6
  %287 = ptrtoint ptr %add.ptr1366 to i32
  call void @__asan_storeN_noabort(i32 %287, i32 4)
  store i32 %286, ptr %add.ptr1366, align 1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @serpent_mod_fini() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @crypto_unregister_alg(ptr noundef nonnull @srp_alg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @serpent_mod_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_alg(ptr noundef nonnull @srp_alg) #6
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @serpent_encrypt(ptr noundef %tfm, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  tail call void @__serpent_encrypt(ptr noundef %__crt_ctx.i, ptr noundef %dst, ptr noundef %src)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @serpent_decrypt(ptr noundef %tfm, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  tail call void @__serpent_decrypt(ptr noundef %__crt_ctx.i, ptr noundef %dst, ptr noundef %src)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !22, !24, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__ksymtab___serpent_setkey, !1, !"__ksymtab___serpent_setkey", i1 false, i1 false}
!1 = !{!"../crypto/serpent_generic.c", i32 450, i32 1}
!2 = !{ptr @__ksymtab_serpent_setkey, !3, !"__ksymtab_serpent_setkey", i1 false, i1 false}
!3 = !{!"../crypto/serpent_generic.c", i32 456, i32 1}
!4 = !{ptr @__ksymtab___serpent_encrypt, !5, !"__ksymtab___serpent_encrypt", i1 false, i1 false}
!5 = !{!"../crypto/serpent_generic.c", i32 508, i32 1}
!6 = !{ptr @__ksymtab___serpent_decrypt, !7, !"__ksymtab___serpent_decrypt", i1 false, i1 false}
!7 = !{!"../crypto/serpent_generic.c", i32 567, i32 1}
!8 = !{ptr @__initcall__kmod_serpent_generic__173_602_serpent_mod_init4, !9, !"__initcall__kmod_serpent_generic__173_602_serpent_mod_init4", i1 false, i1 false}
!9 = !{!"../crypto/serpent_generic.c", i32 602, i32 1}
!10 = !{ptr @__exitcall_serpent_mod_fini, !11, !"__exitcall_serpent_mod_fini", i1 false, i1 false}
!11 = !{!"../crypto/serpent_generic.c", i32 603, i32 1}
!12 = !{ptr @__UNIQUE_ID_file174, !13, !"__UNIQUE_ID_file174", i1 false, i1 false}
!13 = !{!"../crypto/serpent_generic.c", i32 605, i32 1}
!14 = !{ptr @__UNIQUE_ID_license175, !13, !"__UNIQUE_ID_license175", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_description176, !16, !"__UNIQUE_ID_description176", i1 false, i1 false}
!16 = !{!"../crypto/serpent_generic.c", i32 606, i32 1}
!17 = !{ptr @__UNIQUE_ID_author177, !18, !"__UNIQUE_ID_author177", i1 false, i1 false}
!18 = !{!"../crypto/serpent_generic.c", i32 607, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias_userspace178, !20, !"__UNIQUE_ID_alias_userspace178", i1 false, i1 false}
!20 = !{!"../crypto/serpent_generic.c", i32 608, i32 1}
!21 = !{ptr @__UNIQUE_ID_alias_crypto179, !20, !"__UNIQUE_ID_alias_crypto179", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_alias_userspace180, !23, !"__UNIQUE_ID_alias_userspace180", i1 false, i1 false}
!23 = !{!"../crypto/serpent_generic.c", i32 609, i32 1}
!24 = !{ptr @__UNIQUE_ID_alias_crypto181, !23, !"__UNIQUE_ID_alias_crypto181", i1 false, i1 false}
!25 = !{ptr @srp_alg, !26, !"srp_alg", i1 false, i1 false}
!26 = !{!"../crypto/serpent_generic.c", i32 576, i32 26}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
