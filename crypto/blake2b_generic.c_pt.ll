; ModuleID = '/llk/IR_all_yes/crypto/blake2b_generic.c_pt.bc'
source_filename = "../crypto/blake2b_generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+blake2b_compress_generic\22, \22a\22\09"
module asm "\09.weak\09__crc_blake2b_compress_generic\09\09\09\09"
module asm "\09.long\09__crc_blake2b_compress_generic\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blake2b_compress_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22blake2b_compress_generic\22\09\09\09\09\09"
module asm "__kstrtabns_blake2b_compress_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [84 x i8], i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.blake2b_state = type { [8 x i64], [2 x i64], [2 x i64], [128 x i8], i32, i32 }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@__kstrtab_blake2b_compress_generic = external dso_local constant [0 x i8], align 1
@__kstrtabns_blake2b_compress_generic = external dso_local constant [0 x i8], align 1
@__ksymtab_blake2b_compress_generic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blake2b_compress_generic to i32), ptr @__kstrtab_blake2b_compress_generic, ptr @__kstrtabns_blake2b_compress_generic }, section "___ksymtab+blake2b_compress_generic", align 4
@blake2b_algs = internal global [4 x %struct.shash_alg] [%struct.shash_alg { ptr @crypto_blake2b_init, ptr @crypto_blake2b_update_generic, ptr @crypto_blake2b_final_generic, ptr null, ptr null, ptr null, ptr null, ptr @crypto_blake2b_setkey, ptr null, ptr null, i32 232, [84 x i8] undef, i32 20, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 16384, i32 128, i32 68, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"blake2b-160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"blake2b-160-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.shash_alg { ptr @crypto_blake2b_init, ptr @crypto_blake2b_update_generic, ptr @crypto_blake2b_final_generic, ptr null, ptr null, ptr null, ptr null, ptr @crypto_blake2b_setkey, ptr null, ptr null, i32 232, [84 x i8] undef, i32 32, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 16384, i32 128, i32 68, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"blake2b-256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"blake2b-256-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.shash_alg { ptr @crypto_blake2b_init, ptr @crypto_blake2b_update_generic, ptr @crypto_blake2b_final_generic, ptr null, ptr null, ptr null, ptr null, ptr @crypto_blake2b_setkey, ptr null, ptr null, i32 232, [84 x i8] undef, i32 48, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 16384, i32 128, i32 68, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"blake2b-384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"blake2b-384-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.shash_alg { ptr @crypto_blake2b_init, ptr @crypto_blake2b_update_generic, ptr @crypto_blake2b_final_generic, ptr null, ptr null, ptr null, ptr null, ptr @crypto_blake2b_setkey, ptr null, ptr null, i32 232, [84 x i8] undef, i32 64, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 16384, i32 128, i32 68, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"blake2b-512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"blake2b-512-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }], align 128
@__initcall__kmod_blake2b_generic__173_174_blake2b_mod_init4 = internal global ptr @blake2b_mod_init, section ".initcall4.init", align 4
@__exitcall_blake2b_mod_fini = internal global ptr @blake2b_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_author174 = internal constant [55 x i8] c"blake2b_generic.author=David Sterba <kdave@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description175 = internal constant [59 x i8] c"blake2b_generic.description=BLAKE2b generic implementation\00", section ".modinfo", align 1
@__UNIQUE_ID_file176 = internal constant [44 x i8] c"blake2b_generic.file=crypto/blake2b_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [28 x i8] c"blake2b_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace178 = internal constant [34 x i8] c"blake2b_generic.alias=blake2b-160\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto179 = internal constant [41 x i8] c"blake2b_generic.alias=crypto-blake2b-160\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace180 = internal constant [42 x i8] c"blake2b_generic.alias=blake2b-160-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto181 = internal constant [49 x i8] c"blake2b_generic.alias=crypto-blake2b-160-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace182 = internal constant [34 x i8] c"blake2b_generic.alias=blake2b-256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto183 = internal constant [41 x i8] c"blake2b_generic.alias=crypto-blake2b-256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace184 = internal constant [42 x i8] c"blake2b_generic.alias=blake2b-256-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto185 = internal constant [49 x i8] c"blake2b_generic.alias=crypto-blake2b-256-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace186 = internal constant [34 x i8] c"blake2b_generic.alias=blake2b-384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto187 = internal constant [41 x i8] c"blake2b_generic.alias=crypto-blake2b-384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace188 = internal constant [42 x i8] c"blake2b_generic.alias=blake2b-384-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto189 = internal constant [49 x i8] c"blake2b_generic.alias=crypto-blake2b-384-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace190 = internal constant [34 x i8] c"blake2b_generic.alias=blake2b-512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto191 = internal constant [41 x i8] c"blake2b_generic.alias=crypto-blake2b-512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace192 = internal constant [42 x i8] c"blake2b_generic.alias=blake2b-512-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto193 = internal constant [49 x i8] c"blake2b_generic.alias=crypto-blake2b-512-generic\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_alias_crypto179, ptr @__UNIQUE_ID_alias_crypto181, ptr @__UNIQUE_ID_alias_crypto183, ptr @__UNIQUE_ID_alias_crypto185, ptr @__UNIQUE_ID_alias_crypto187, ptr @__UNIQUE_ID_alias_crypto189, ptr @__UNIQUE_ID_alias_crypto191, ptr @__UNIQUE_ID_alias_crypto193, ptr @__UNIQUE_ID_alias_userspace178, ptr @__UNIQUE_ID_alias_userspace180, ptr @__UNIQUE_ID_alias_userspace182, ptr @__UNIQUE_ID_alias_userspace184, ptr @__UNIQUE_ID_alias_userspace186, ptr @__UNIQUE_ID_alias_userspace188, ptr @__UNIQUE_ID_alias_userspace190, ptr @__UNIQUE_ID_alias_userspace192, ptr @__UNIQUE_ID_author174, ptr @__UNIQUE_ID_description175, ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_license177, ptr @__exitcall_blake2b_mod_fini, ptr @__initcall__kmod_blake2b_generic__173_174_blake2b_mod_init4, ptr @__ksymtab_blake2b_compress_generic, ptr @blake2b_mod_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blake2b_compress_generic(ptr nocapture noundef %state, ptr nocapture noundef readonly %block, i32 noundef %nblocks, i32 noundef %inc) #0 align 64 {
entry:
  %v.i = alloca [16 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %inc to i64
  %t.i = getelementptr inbounds %struct.blake2b_state, ptr %state, i32 0, i32 1
  %arrayidx5.i = getelementptr %struct.blake2b_state, ptr %state, i32 0, i32 1, i32 1
  %arrayidx9.i = getelementptr inbounds [16 x i64], ptr %v.i, i32 0, i32 8
  %arrayidx10.i = getelementptr inbounds [16 x i64], ptr %v.i, i32 0, i32 9
  %arrayidx11.i = getelementptr inbounds [16 x i64], ptr %v.i, i32 0, i32 10
  %arrayidx12.i = getelementptr inbounds [16 x i64], ptr %v.i, i32 0, i32 11
  %arrayidx14.i = getelementptr inbounds [16 x i64], ptr %v.i, i32 0, i32 12
  %arrayidx18.i = getelementptr inbounds [16 x i64], ptr %v.i, i32 0, i32 13
  %f.i = getelementptr inbounds %struct.blake2b_state, ptr %state, i32 0, i32 2
  %arrayidx21.i = getelementptr inbounds [16 x i64], ptr %v.i, i32 0, i32 14
  %arrayidx23.i = getelementptr %struct.blake2b_state, ptr %state, i32 0, i32 2, i32 1
  %arrayidx25.i = getelementptr inbounds [16 x i64], ptr %v.i, i32 0, i32 15
  %arrayidx28.i = getelementptr inbounds [16 x i64], ptr %v.i, i32 0, i32 4
  %arrayidx68.i = getelementptr inbounds [16 x i64], ptr %v.i, i32 0, i32 1
  %arrayidx69.i = getelementptr inbounds [16 x i64], ptr %v.i, i32 0, i32 5
  %arrayidx113.i = getelementptr inbounds [16 x i64], ptr %v.i, i32 0, i32 2
  %arrayidx114.i = getelementptr inbounds [16 x i64], ptr %v.i, i32 0, i32 6
  %arrayidx158.i = getelementptr inbounds [16 x i64], ptr %v.i, i32 0, i32 3
  %arrayidx159.i = getelementptr inbounds [16 x i64], ptr %v.i, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %blake2b_compress_one_generic.exit.do.body_crit_edge, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %dec, %blake2b_compress_one_generic.exit.do.body_crit_edge ]
  %block.addr.0 = phi ptr [ %block, %entry ], [ %add.ptr, %blake2b_compress_one_generic.exit.do.body_crit_edge ]
  %0 = ptrtoint ptr %t.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %t.i, align 8
  %add.i = add i64 %1, %conv
  store i64 %add.i, ptr %t.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv)
  %cmp.i = icmp ult i64 %add.i, %conv
  %2 = zext i1 %cmp.i to i64
  %3 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx5.i, align 8
  %add6.i = add i64 %4, %2
  store i64 %add6.i, ptr %arrayidx5.i, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %v.i) #7
  %5 = ptrtoint ptr %block.addr.0 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %block.addr.0, align 1
  %7 = tail call i64 @llvm.bswap.i64(i64 %6) #7
  %add.ptr.1.i = getelementptr i8, ptr %block.addr.0, i32 8
  %8 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %add.ptr.1.i, align 1
  %10 = tail call i64 @llvm.bswap.i64(i64 %9) #7
  %add.ptr.2.i = getelementptr i8, ptr %block.addr.0, i32 16
  %11 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %add.ptr.2.i, align 1
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #7
  %add.ptr.3.i = getelementptr i8, ptr %block.addr.0, i32 24
  %14 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %add.ptr.3.i, align 1
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #7
  %add.ptr.4.i = getelementptr i8, ptr %block.addr.0, i32 32
  %17 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %add.ptr.4.i, align 1
  %19 = tail call i64 @llvm.bswap.i64(i64 %18) #7
  %add.ptr.5.i = getelementptr i8, ptr %block.addr.0, i32 40
  %20 = ptrtoint ptr %add.ptr.5.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %add.ptr.5.i, align 1
  %22 = tail call i64 @llvm.bswap.i64(i64 %21) #7
  %add.ptr.6.i = getelementptr i8, ptr %block.addr.0, i32 48
  %23 = ptrtoint ptr %add.ptr.6.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %add.ptr.6.i, align 1
  %25 = tail call i64 @llvm.bswap.i64(i64 %24) #7
  %add.ptr.7.i = getelementptr i8, ptr %block.addr.0, i32 56
  %26 = ptrtoint ptr %add.ptr.7.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %add.ptr.7.i, align 1
  %28 = tail call i64 @llvm.bswap.i64(i64 %27) #7
  %add.ptr.8.i = getelementptr i8, ptr %block.addr.0, i32 64
  %29 = ptrtoint ptr %add.ptr.8.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %add.ptr.8.i, align 1
  %31 = tail call i64 @llvm.bswap.i64(i64 %30) #7
  %add.ptr.9.i = getelementptr i8, ptr %block.addr.0, i32 72
  %32 = ptrtoint ptr %add.ptr.9.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %add.ptr.9.i, align 1
  %34 = tail call i64 @llvm.bswap.i64(i64 %33) #7
  %add.ptr.10.i = getelementptr i8, ptr %block.addr.0, i32 80
  %35 = ptrtoint ptr %add.ptr.10.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %add.ptr.10.i, align 1
  %37 = tail call i64 @llvm.bswap.i64(i64 %36) #7
  %add.ptr.11.i = getelementptr i8, ptr %block.addr.0, i32 88
  %38 = ptrtoint ptr %add.ptr.11.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %add.ptr.11.i, align 1
  %40 = tail call i64 @llvm.bswap.i64(i64 %39) #7
  %add.ptr.12.i = getelementptr i8, ptr %block.addr.0, i32 96
  %41 = ptrtoint ptr %add.ptr.12.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %42 = load i64, ptr %add.ptr.12.i, align 1
  %43 = tail call i64 @llvm.bswap.i64(i64 %42) #7
  %add.ptr.13.i = getelementptr i8, ptr %block.addr.0, i32 104
  %44 = ptrtoint ptr %add.ptr.13.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %add.ptr.13.i, align 1
  %46 = tail call i64 @llvm.bswap.i64(i64 %45) #7
  %add.ptr.14.i = getelementptr i8, ptr %block.addr.0, i32 112
  %47 = ptrtoint ptr %add.ptr.14.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %add.ptr.14.i, align 1
  %49 = tail call i64 @llvm.bswap.i64(i64 %48) #7
  %add.ptr.15.i = getelementptr i8, ptr %block.addr.0, i32 120
  %50 = ptrtoint ptr %add.ptr.15.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %add.ptr.15.i, align 1
  %52 = tail call i64 @llvm.bswap.i64(i64 %51) #7
  %53 = call ptr @memcpy(ptr %v.i, ptr %state, i32 64)
  %54 = ptrtoint ptr %f.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %f.i, align 8
  %56 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx23.i, align 8
  %58 = ptrtoint ptr %v.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %v.i, align 8
  %60 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx28.i, align 8
  %add.i4 = add i64 %59, %7
  %add30.i = add i64 %add.i4, %61
  %62 = xor i64 %add.i, %add30.i
  %xor34.i = xor i64 %62, 5840696475078001361
  %or.i.i = tail call i64 @llvm.fshl.i64(i64 %xor34.i, i64 %xor34.i, i64 32) #7
  %add39.i = add i64 %or.i.i, 7640891576956012808
  %xor43.i = xor i64 %add39.i, %61
  %or.i4411.i = tail call i64 @llvm.fshl.i64(i64 %xor43.i, i64 %xor43.i, i64 40) #7
  %add48.i = add i64 %add30.i, %10
  %add51.i = add i64 %add48.i, %or.i4411.i
  %xor55.i = xor i64 %add51.i, %or.i.i
  %or.i4412.i = tail call i64 @llvm.fshl.i64(i64 %xor55.i, i64 %xor55.i, i64 48) #7
  %add60.i = add i64 %or.i4412.i, %add39.i
  %xor64.i = xor i64 %add60.i, %or.i4411.i
  %or.i4413.i = tail call i64 @llvm.fshl.i64(i64 %xor64.i, i64 %xor64.i, i64 1) #7
  %63 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx68.i, align 8
  %65 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx69.i, align 8
  %add70.i = add i64 %64, %13
  %add73.i = add i64 %add70.i, %66
  %67 = xor i64 %add6.i, %add73.i
  %xor77.i = xor i64 %67, -7276294671716946913
  %or.i4414.i = tail call i64 @llvm.fshl.i64(i64 %xor77.i, i64 %xor77.i, i64 32) #7
  %add82.i = add i64 %or.i4414.i, -4942790177534073029
  %xor86.i = xor i64 %add82.i, %66
  %or.i4415.i = tail call i64 @llvm.fshl.i64(i64 %xor86.i, i64 %xor86.i, i64 40) #7
  %add91.i = add i64 %add73.i, %16
  %add94.i = add i64 %add91.i, %or.i4415.i
  %xor98.i = xor i64 %add94.i, %or.i4414.i
  %or.i4416.i = tail call i64 @llvm.fshl.i64(i64 %xor98.i, i64 %xor98.i, i64 48) #7
  %add103.i = add i64 %or.i4416.i, %add82.i
  %xor107.i = xor i64 %add103.i, %or.i4415.i
  %or.i4417.i = tail call i64 @llvm.fshl.i64(i64 %xor107.i, i64 %xor107.i, i64 1) #7
  %68 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx113.i, align 8
  %70 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx114.i, align 8
  %add115.i = add i64 %69, %19
  %add118.i = add i64 %add115.i, %71
  %72 = xor i64 %55, %add118.i
  %xor122.i = xor i64 %72, 2270897969802886507
  %or.i4418.i = tail call i64 @llvm.fshl.i64(i64 %xor122.i, i64 %xor122.i, i64 32) #7
  %add127.i = add i64 %or.i4418.i, 4354685564936845355
  %xor131.i = xor i64 %add127.i, %71
  %or.i4419.i = tail call i64 @llvm.fshl.i64(i64 %xor131.i, i64 %xor131.i, i64 40) #7
  %add136.i = add i64 %add118.i, %22
  %add139.i = add i64 %add136.i, %or.i4419.i
  %xor143.i = xor i64 %add139.i, %or.i4418.i
  %or.i4420.i = tail call i64 @llvm.fshl.i64(i64 %xor143.i, i64 %xor143.i, i64 48) #7
  %add148.i = add i64 %or.i4420.i, %add127.i
  %xor152.i = xor i64 %add148.i, %or.i4419.i
  %or.i4421.i = tail call i64 @llvm.fshl.i64(i64 %xor152.i, i64 %xor152.i, i64 1) #7
  %73 = ptrtoint ptr %arrayidx158.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %arrayidx158.i, align 8
  %75 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx159.i, align 8
  %add160.i = add i64 %74, %25
  %add163.i = add i64 %add160.i, %76
  %77 = xor i64 %57, %add163.i
  %xor167.i = xor i64 %77, 6620516959819538809
  %or.i4422.i = tail call i64 @llvm.fshl.i64(i64 %xor167.i, i64 %xor167.i, i64 32) #7
  %add172.i = add i64 %or.i4422.i, -6534734903238641935
  %xor176.i = xor i64 %add172.i, %76
  %or.i4423.i = tail call i64 @llvm.fshl.i64(i64 %xor176.i, i64 %xor176.i, i64 40) #7
  %add181.i = add i64 %add163.i, %28
  %add184.i = add i64 %add181.i, %or.i4423.i
  %xor188.i = xor i64 %add184.i, %or.i4422.i
  %or.i4424.i = tail call i64 @llvm.fshl.i64(i64 %xor188.i, i64 %xor188.i, i64 48) #7
  %add193.i = add i64 %or.i4424.i, %add172.i
  %xor197.i = xor i64 %add193.i, %or.i4423.i
  %or.i4425.i = tail call i64 @llvm.fshl.i64(i64 %xor197.i, i64 %xor197.i, i64 1) #7
  %add205.i = add i64 %add51.i, %31
  %add208.i = add i64 %add205.i, %or.i4417.i
  %xor212.i = xor i64 %add208.i, %or.i4424.i
  %or.i4426.i = tail call i64 @llvm.fshl.i64(i64 %xor212.i, i64 %xor212.i, i64 32) #7
  %add217.i = add i64 %or.i4426.i, %add148.i
  %xor221.i = xor i64 %add217.i, %or.i4417.i
  %or.i4427.i = tail call i64 @llvm.fshl.i64(i64 %xor221.i, i64 %xor221.i, i64 40) #7
  %add226.i = add i64 %add208.i, %34
  %add229.i = add i64 %add226.i, %or.i4427.i
  %xor233.i = xor i64 %add229.i, %or.i4426.i
  %or.i4428.i = tail call i64 @llvm.fshl.i64(i64 %xor233.i, i64 %xor233.i, i64 48) #7
  %add238.i = add i64 %or.i4428.i, %add217.i
  %xor242.i = xor i64 %add238.i, %or.i4427.i
  %or.i4429.i = tail call i64 @llvm.fshl.i64(i64 %xor242.i, i64 %xor242.i, i64 1) #7
  %add250.i = add i64 %add94.i, %37
  %add253.i = add i64 %add250.i, %or.i4421.i
  %xor257.i = xor i64 %add253.i, %or.i4412.i
  %or.i4430.i = tail call i64 @llvm.fshl.i64(i64 %xor257.i, i64 %xor257.i, i64 32) #7
  %add262.i = add i64 %or.i4430.i, %add193.i
  %xor266.i = xor i64 %add262.i, %or.i4421.i
  %or.i4431.i = tail call i64 @llvm.fshl.i64(i64 %xor266.i, i64 %xor266.i, i64 40) #7
  %add271.i = add i64 %add253.i, %40
  %add274.i = add i64 %add271.i, %or.i4431.i
  %xor278.i = xor i64 %add274.i, %or.i4430.i
  %or.i4432.i = tail call i64 @llvm.fshl.i64(i64 %xor278.i, i64 %xor278.i, i64 48) #7
  %add283.i = add i64 %or.i4432.i, %add262.i
  %xor287.i = xor i64 %add283.i, %or.i4431.i
  %or.i4433.i = tail call i64 @llvm.fshl.i64(i64 %xor287.i, i64 %xor287.i, i64 1) #7
  %add295.i = add i64 %add139.i, %43
  %add298.i = add i64 %add295.i, %or.i4425.i
  %xor302.i = xor i64 %add298.i, %or.i4416.i
  %or.i4434.i = tail call i64 @llvm.fshl.i64(i64 %xor302.i, i64 %xor302.i, i64 32) #7
  %add307.i = add i64 %or.i4434.i, %add60.i
  %xor311.i = xor i64 %add307.i, %or.i4425.i
  %or.i4435.i = tail call i64 @llvm.fshl.i64(i64 %xor311.i, i64 %xor311.i, i64 40) #7
  %add316.i = add i64 %add298.i, %46
  %add319.i = add i64 %add316.i, %or.i4435.i
  %xor323.i = xor i64 %add319.i, %or.i4434.i
  %or.i4436.i = tail call i64 @llvm.fshl.i64(i64 %xor323.i, i64 %xor323.i, i64 48) #7
  %add328.i = add i64 %or.i4436.i, %add307.i
  %xor332.i = xor i64 %add328.i, %or.i4435.i
  %or.i4437.i = tail call i64 @llvm.fshl.i64(i64 %xor332.i, i64 %xor332.i, i64 1) #7
  %add340.i = add i64 %or.i4413.i, %49
  %add343.i = add i64 %add340.i, %add184.i
  %xor347.i = xor i64 %add343.i, %or.i4420.i
  %or.i4438.i = tail call i64 @llvm.fshl.i64(i64 %xor347.i, i64 %xor347.i, i64 32) #7
  %add352.i = add i64 %or.i4438.i, %add103.i
  %xor356.i = xor i64 %add352.i, %or.i4413.i
  %or.i4439.i = tail call i64 @llvm.fshl.i64(i64 %xor356.i, i64 %xor356.i, i64 40) #7
  %add361.i = add i64 %add343.i, %52
  %add364.i = add i64 %add361.i, %or.i4439.i
  %xor368.i = xor i64 %add364.i, %or.i4438.i
  %or.i4440.i = tail call i64 @llvm.fshl.i64(i64 %xor368.i, i64 %xor368.i, i64 48) #7
  %add373.i = add i64 %or.i4440.i, %add352.i
  %xor377.i = xor i64 %add373.i, %or.i4439.i
  %or.i4441.i = tail call i64 @llvm.fshl.i64(i64 %xor377.i, i64 %xor377.i, i64 1) #7
  %add388.i = add i64 %add229.i, %49
  %add391.i = add i64 %add388.i, %or.i4441.i
  %xor395.i = xor i64 %add391.i, %or.i4432.i
  %or.i4442.i = tail call i64 @llvm.fshl.i64(i64 %xor395.i, i64 %xor395.i, i64 32) #7
  %add400.i = add i64 %or.i4442.i, %add328.i
  %xor404.i = xor i64 %add400.i, %or.i4441.i
  %or.i4443.i = tail call i64 @llvm.fshl.i64(i64 %xor404.i, i64 %xor404.i, i64 40) #7
  %add409.i = add i64 %add391.i, %37
  %add412.i = add i64 %add409.i, %or.i4443.i
  %xor416.i = xor i64 %add412.i, %or.i4442.i
  %or.i4444.i = tail call i64 @llvm.fshl.i64(i64 %xor416.i, i64 %xor416.i, i64 48) #7
  %add421.i = add i64 %or.i4444.i, %add400.i
  %xor425.i = xor i64 %add421.i, %or.i4443.i
  %or.i4445.i = tail call i64 @llvm.fshl.i64(i64 %xor425.i, i64 %xor425.i, i64 1) #7
  %add433.i = add i64 %add274.i, %19
  %add436.i = add i64 %add433.i, %or.i4429.i
  %xor440.i = xor i64 %add436.i, %or.i4436.i
  %or.i4446.i = tail call i64 @llvm.fshl.i64(i64 %xor440.i, i64 %xor440.i, i64 32) #7
  %add445.i = add i64 %or.i4446.i, %add373.i
  %xor449.i = xor i64 %add445.i, %or.i4429.i
  %or.i4447.i = tail call i64 @llvm.fshl.i64(i64 %xor449.i, i64 %xor449.i, i64 40) #7
  %add454.i = add i64 %add436.i, %31
  %add457.i = add i64 %add454.i, %or.i4447.i
  %xor461.i = xor i64 %add457.i, %or.i4446.i
  %or.i4448.i = tail call i64 @llvm.fshl.i64(i64 %xor461.i, i64 %xor461.i, i64 48) #7
  %add466.i = add i64 %or.i4448.i, %add445.i
  %xor470.i = xor i64 %add466.i, %or.i4447.i
  %or.i4449.i = tail call i64 @llvm.fshl.i64(i64 %xor470.i, i64 %xor470.i, i64 1) #7
  %add478.i = add i64 %add319.i, %34
  %add481.i = add i64 %add478.i, %or.i4433.i
  %xor485.i = xor i64 %add481.i, %or.i4440.i
  %or.i4450.i = tail call i64 @llvm.fshl.i64(i64 %xor485.i, i64 %xor485.i, i64 32) #7
  %add490.i = add i64 %or.i4450.i, %add238.i
  %xor494.i = xor i64 %add490.i, %or.i4433.i
  %or.i4451.i = tail call i64 @llvm.fshl.i64(i64 %xor494.i, i64 %xor494.i, i64 40) #7
  %add499.i = add i64 %add481.i, %52
  %add502.i = add i64 %add499.i, %or.i4451.i
  %xor506.i = xor i64 %add502.i, %or.i4450.i
  %or.i4452.i = tail call i64 @llvm.fshl.i64(i64 %xor506.i, i64 %xor506.i, i64 48) #7
  %add511.i = add i64 %or.i4452.i, %add490.i
  %xor515.i = xor i64 %add511.i, %or.i4451.i
  %or.i4453.i = tail call i64 @llvm.fshl.i64(i64 %xor515.i, i64 %xor515.i, i64 1) #7
  %add523.i = add i64 %add364.i, %46
  %add526.i = add i64 %add523.i, %or.i4437.i
  %xor530.i = xor i64 %add526.i, %or.i4428.i
  %or.i4454.i = tail call i64 @llvm.fshl.i64(i64 %xor530.i, i64 %xor530.i, i64 32) #7
  %add535.i = add i64 %or.i4454.i, %add283.i
  %xor539.i = xor i64 %add535.i, %or.i4437.i
  %or.i4455.i = tail call i64 @llvm.fshl.i64(i64 %xor539.i, i64 %xor539.i, i64 40) #7
  %add544.i = add i64 %add526.i, %25
  %add547.i = add i64 %add544.i, %or.i4455.i
  %xor551.i = xor i64 %add547.i, %or.i4454.i
  %or.i4456.i = tail call i64 @llvm.fshl.i64(i64 %xor551.i, i64 %xor551.i, i64 48) #7
  %add556.i = add i64 %or.i4456.i, %add535.i
  %xor560.i = xor i64 %add556.i, %or.i4455.i
  %or.i4457.i = tail call i64 @llvm.fshl.i64(i64 %xor560.i, i64 %xor560.i, i64 1) #7
  %add568.i = add i64 %add412.i, %10
  %add571.i = add i64 %add568.i, %or.i4449.i
  %xor575.i = xor i64 %add571.i, %or.i4456.i
  %or.i4458.i = tail call i64 @llvm.fshl.i64(i64 %xor575.i, i64 %xor575.i, i64 32) #7
  %add580.i = add i64 %or.i4458.i, %add511.i
  %xor584.i = xor i64 %add580.i, %or.i4449.i
  %or.i4459.i = tail call i64 @llvm.fshl.i64(i64 %xor584.i, i64 %xor584.i, i64 40) #7
  %add589.i = add i64 %add571.i, %43
  %add592.i = add i64 %add589.i, %or.i4459.i
  %xor596.i = xor i64 %add592.i, %or.i4458.i
  %or.i4460.i = tail call i64 @llvm.fshl.i64(i64 %xor596.i, i64 %xor596.i, i64 48) #7
  %add601.i = add i64 %or.i4460.i, %add580.i
  %xor605.i = xor i64 %add601.i, %or.i4459.i
  %or.i4461.i = tail call i64 @llvm.fshl.i64(i64 %xor605.i, i64 %xor605.i, i64 1) #7
  %add613.i = add i64 %add457.i, %7
  %add616.i = add i64 %add613.i, %or.i4453.i
  %xor620.i = xor i64 %add616.i, %or.i4444.i
  %or.i4462.i = tail call i64 @llvm.fshl.i64(i64 %xor620.i, i64 %xor620.i, i64 32) #7
  %add625.i = add i64 %or.i4462.i, %add556.i
  %xor629.i = xor i64 %add625.i, %or.i4453.i
  %or.i4463.i = tail call i64 @llvm.fshl.i64(i64 %xor629.i, i64 %xor629.i, i64 40) #7
  %add634.i = add i64 %add616.i, %13
  %add637.i = add i64 %add634.i, %or.i4463.i
  %xor641.i = xor i64 %add637.i, %or.i4462.i
  %or.i4464.i = tail call i64 @llvm.fshl.i64(i64 %xor641.i, i64 %xor641.i, i64 48) #7
  %add646.i = add i64 %or.i4464.i, %add625.i
  %xor650.i = xor i64 %add646.i, %or.i4463.i
  %or.i4465.i = tail call i64 @llvm.fshl.i64(i64 %xor650.i, i64 %xor650.i, i64 1) #7
  %add658.i = add i64 %add502.i, %40
  %add661.i = add i64 %add658.i, %or.i4457.i
  %xor665.i = xor i64 %add661.i, %or.i4448.i
  %or.i4466.i = tail call i64 @llvm.fshl.i64(i64 %xor665.i, i64 %xor665.i, i64 32) #7
  %add670.i = add i64 %or.i4466.i, %add421.i
  %xor674.i = xor i64 %add670.i, %or.i4457.i
  %or.i4467.i = tail call i64 @llvm.fshl.i64(i64 %xor674.i, i64 %xor674.i, i64 40) #7
  %add679.i = add i64 %add661.i, %28
  %add682.i = add i64 %add679.i, %or.i4467.i
  %xor686.i = xor i64 %add682.i, %or.i4466.i
  %or.i4468.i = tail call i64 @llvm.fshl.i64(i64 %xor686.i, i64 %xor686.i, i64 48) #7
  %add691.i = add i64 %or.i4468.i, %add670.i
  %xor695.i = xor i64 %add691.i, %or.i4467.i
  %or.i4469.i = tail call i64 @llvm.fshl.i64(i64 %xor695.i, i64 %xor695.i, i64 1) #7
  %add703.i = add i64 %or.i4445.i, %22
  %add706.i = add i64 %add703.i, %add547.i
  %xor710.i = xor i64 %add706.i, %or.i4452.i
  %or.i4470.i = tail call i64 @llvm.fshl.i64(i64 %xor710.i, i64 %xor710.i, i64 32) #7
  %add715.i = add i64 %or.i4470.i, %add466.i
  %xor719.i = xor i64 %add715.i, %or.i4445.i
  %or.i4471.i = tail call i64 @llvm.fshl.i64(i64 %xor719.i, i64 %xor719.i, i64 40) #7
  %add724.i = add i64 %add706.i, %16
  %add727.i = add i64 %add724.i, %or.i4471.i
  %xor731.i = xor i64 %add727.i, %or.i4470.i
  %or.i4472.i = tail call i64 @llvm.fshl.i64(i64 %xor731.i, i64 %xor731.i, i64 48) #7
  %add736.i = add i64 %or.i4472.i, %add715.i
  %xor740.i = xor i64 %add736.i, %or.i4471.i
  %or.i4473.i = tail call i64 @llvm.fshl.i64(i64 %xor740.i, i64 %xor740.i, i64 1) #7
  %add751.i = add i64 %add592.i, %40
  %add754.i = add i64 %add751.i, %or.i4473.i
  %xor758.i = xor i64 %add754.i, %or.i4464.i
  %or.i4474.i = tail call i64 @llvm.fshl.i64(i64 %xor758.i, i64 %xor758.i, i64 32) #7
  %add763.i = add i64 %or.i4474.i, %add691.i
  %xor767.i = xor i64 %add763.i, %or.i4473.i
  %or.i4475.i = tail call i64 @llvm.fshl.i64(i64 %xor767.i, i64 %xor767.i, i64 40) #7
  %add772.i = add i64 %add754.i, %31
  %add775.i = add i64 %add772.i, %or.i4475.i
  %xor779.i = xor i64 %add775.i, %or.i4474.i
  %or.i4476.i = tail call i64 @llvm.fshl.i64(i64 %xor779.i, i64 %xor779.i, i64 48) #7
  %add784.i = add i64 %or.i4476.i, %add763.i
  %xor788.i = xor i64 %add784.i, %or.i4475.i
  %or.i4477.i = tail call i64 @llvm.fshl.i64(i64 %xor788.i, i64 %xor788.i, i64 1) #7
  %add796.i = add i64 %add637.i, %43
  %add799.i = add i64 %add796.i, %or.i4461.i
  %xor803.i = xor i64 %add799.i, %or.i4468.i
  %or.i4478.i = tail call i64 @llvm.fshl.i64(i64 %xor803.i, i64 %xor803.i, i64 32) #7
  %add808.i = add i64 %or.i4478.i, %add736.i
  %xor812.i = xor i64 %add808.i, %or.i4461.i
  %or.i4479.i = tail call i64 @llvm.fshl.i64(i64 %xor812.i, i64 %xor812.i, i64 40) #7
  %add817.i = add i64 %add799.i, %7
  %add820.i = add i64 %add817.i, %or.i4479.i
  %xor824.i = xor i64 %add820.i, %or.i4478.i
  %or.i4480.i = tail call i64 @llvm.fshl.i64(i64 %xor824.i, i64 %xor824.i, i64 48) #7
  %add829.i = add i64 %or.i4480.i, %add808.i
  %xor833.i = xor i64 %add829.i, %or.i4479.i
  %or.i4481.i = tail call i64 @llvm.fshl.i64(i64 %xor833.i, i64 %xor833.i, i64 1) #7
  %add841.i = add i64 %add682.i, %22
  %add844.i = add i64 %add841.i, %or.i4465.i
  %xor848.i = xor i64 %add844.i, %or.i4472.i
  %or.i4482.i = tail call i64 @llvm.fshl.i64(i64 %xor848.i, i64 %xor848.i, i64 32) #7
  %add853.i = add i64 %or.i4482.i, %add601.i
  %xor857.i = xor i64 %add853.i, %or.i4465.i
  %or.i4483.i = tail call i64 @llvm.fshl.i64(i64 %xor857.i, i64 %xor857.i, i64 40) #7
  %add862.i = add i64 %add844.i, %13
  %add865.i = add i64 %add862.i, %or.i4483.i
  %xor869.i = xor i64 %add865.i, %or.i4482.i
  %or.i4484.i = tail call i64 @llvm.fshl.i64(i64 %xor869.i, i64 %xor869.i, i64 48) #7
  %add874.i = add i64 %or.i4484.i, %add853.i
  %xor878.i = xor i64 %add874.i, %or.i4483.i
  %or.i4485.i = tail call i64 @llvm.fshl.i64(i64 %xor878.i, i64 %xor878.i, i64 1) #7
  %add886.i = add i64 %add727.i, %52
  %add889.i = add i64 %add886.i, %or.i4469.i
  %xor893.i = xor i64 %add889.i, %or.i4460.i
  %or.i4486.i = tail call i64 @llvm.fshl.i64(i64 %xor893.i, i64 %xor893.i, i64 32) #7
  %add898.i = add i64 %or.i4486.i, %add646.i
  %xor902.i = xor i64 %add898.i, %or.i4469.i
  %or.i4487.i = tail call i64 @llvm.fshl.i64(i64 %xor902.i, i64 %xor902.i, i64 40) #7
  %add907.i = add i64 %add889.i, %46
  %add910.i = add i64 %add907.i, %or.i4487.i
  %xor914.i = xor i64 %add910.i, %or.i4486.i
  %or.i4488.i = tail call i64 @llvm.fshl.i64(i64 %xor914.i, i64 %xor914.i, i64 48) #7
  %add919.i = add i64 %or.i4488.i, %add898.i
  %xor923.i = xor i64 %add919.i, %or.i4487.i
  %or.i4489.i = tail call i64 @llvm.fshl.i64(i64 %xor923.i, i64 %xor923.i, i64 1) #7
  %add931.i = add i64 %add775.i, %37
  %add934.i = add i64 %add931.i, %or.i4481.i
  %xor938.i = xor i64 %add934.i, %or.i4488.i
  %or.i4490.i = tail call i64 @llvm.fshl.i64(i64 %xor938.i, i64 %xor938.i, i64 32) #7
  %add943.i = add i64 %or.i4490.i, %add874.i
  %xor947.i = xor i64 %add943.i, %or.i4481.i
  %or.i4491.i = tail call i64 @llvm.fshl.i64(i64 %xor947.i, i64 %xor947.i, i64 40) #7
  %add952.i = add i64 %add934.i, %49
  %add955.i = add i64 %add952.i, %or.i4491.i
  %xor959.i = xor i64 %add955.i, %or.i4490.i
  %or.i4492.i = tail call i64 @llvm.fshl.i64(i64 %xor959.i, i64 %xor959.i, i64 48) #7
  %add964.i = add i64 %or.i4492.i, %add943.i
  %xor968.i = xor i64 %add964.i, %or.i4491.i
  %or.i4493.i = tail call i64 @llvm.fshl.i64(i64 %xor968.i, i64 %xor968.i, i64 1) #7
  %add976.i = add i64 %add820.i, %16
  %add979.i = add i64 %add976.i, %or.i4485.i
  %xor983.i = xor i64 %add979.i, %or.i4476.i
  %or.i4494.i = tail call i64 @llvm.fshl.i64(i64 %xor983.i, i64 %xor983.i, i64 32) #7
  %add988.i = add i64 %or.i4494.i, %add919.i
  %xor992.i = xor i64 %add988.i, %or.i4485.i
  %or.i4495.i = tail call i64 @llvm.fshl.i64(i64 %xor992.i, i64 %xor992.i, i64 40) #7
  %add997.i = add i64 %add979.i, %25
  %add1000.i = add i64 %add997.i, %or.i4495.i
  %xor1004.i = xor i64 %add1000.i, %or.i4494.i
  %or.i4496.i = tail call i64 @llvm.fshl.i64(i64 %xor1004.i, i64 %xor1004.i, i64 48) #7
  %add1009.i = add i64 %or.i4496.i, %add988.i
  %xor1013.i = xor i64 %add1009.i, %or.i4495.i
  %or.i4497.i = tail call i64 @llvm.fshl.i64(i64 %xor1013.i, i64 %xor1013.i, i64 1) #7
  %add1021.i = add i64 %add865.i, %28
  %add1024.i = add i64 %add1021.i, %or.i4489.i
  %xor1028.i = xor i64 %add1024.i, %or.i4480.i
  %or.i4498.i = tail call i64 @llvm.fshl.i64(i64 %xor1028.i, i64 %xor1028.i, i64 32) #7
  %add1033.i = add i64 %or.i4498.i, %add784.i
  %xor1037.i = xor i64 %add1033.i, %or.i4489.i
  %or.i4499.i = tail call i64 @llvm.fshl.i64(i64 %xor1037.i, i64 %xor1037.i, i64 40) #7
  %add1042.i = add i64 %add1024.i, %10
  %add1045.i = add i64 %add1042.i, %or.i4499.i
  %xor1049.i = xor i64 %add1045.i, %or.i4498.i
  %or.i4500.i = tail call i64 @llvm.fshl.i64(i64 %xor1049.i, i64 %xor1049.i, i64 48) #7
  %add1054.i = add i64 %or.i4500.i, %add1033.i
  %xor1058.i = xor i64 %add1054.i, %or.i4499.i
  %or.i4501.i = tail call i64 @llvm.fshl.i64(i64 %xor1058.i, i64 %xor1058.i, i64 1) #7
  %add1066.i = add i64 %or.i4477.i, %34
  %add1069.i = add i64 %add1066.i, %add910.i
  %xor1073.i = xor i64 %add1069.i, %or.i4484.i
  %or.i4502.i = tail call i64 @llvm.fshl.i64(i64 %xor1073.i, i64 %xor1073.i, i64 32) #7
  %add1078.i = add i64 %or.i4502.i, %add829.i
  %xor1082.i = xor i64 %add1078.i, %or.i4477.i
  %or.i4503.i = tail call i64 @llvm.fshl.i64(i64 %xor1082.i, i64 %xor1082.i, i64 40) #7
  %add1087.i = add i64 %add1069.i, %19
  %add1090.i = add i64 %add1087.i, %or.i4503.i
  %xor1094.i = xor i64 %add1090.i, %or.i4502.i
  %or.i4504.i = tail call i64 @llvm.fshl.i64(i64 %xor1094.i, i64 %xor1094.i, i64 48) #7
  %add1099.i = add i64 %or.i4504.i, %add1078.i
  %xor1103.i = xor i64 %add1099.i, %or.i4503.i
  %or.i4505.i = tail call i64 @llvm.fshl.i64(i64 %xor1103.i, i64 %xor1103.i, i64 1) #7
  %add1114.i = add i64 %add955.i, %28
  %add1117.i = add i64 %add1114.i, %or.i4505.i
  %xor1121.i = xor i64 %add1117.i, %or.i4496.i
  %or.i4506.i = tail call i64 @llvm.fshl.i64(i64 %xor1121.i, i64 %xor1121.i, i64 32) #7
  %add1126.i = add i64 %or.i4506.i, %add1054.i
  %xor1130.i = xor i64 %add1126.i, %or.i4505.i
  %or.i4507.i = tail call i64 @llvm.fshl.i64(i64 %xor1130.i, i64 %xor1130.i, i64 40) #7
  %add1135.i = add i64 %add1117.i, %34
  %add1138.i = add i64 %add1135.i, %or.i4507.i
  %xor1142.i = xor i64 %add1138.i, %or.i4506.i
  %or.i4508.i = tail call i64 @llvm.fshl.i64(i64 %xor1142.i, i64 %xor1142.i, i64 48) #7
  %add1147.i = add i64 %or.i4508.i, %add1126.i
  %xor1151.i = xor i64 %add1147.i, %or.i4507.i
  %or.i4509.i = tail call i64 @llvm.fshl.i64(i64 %xor1151.i, i64 %xor1151.i, i64 1) #7
  %add1159.i = add i64 %add1000.i, %16
  %add1162.i = add i64 %add1159.i, %or.i4493.i
  %xor1166.i = xor i64 %add1162.i, %or.i4500.i
  %or.i4510.i = tail call i64 @llvm.fshl.i64(i64 %xor1166.i, i64 %xor1166.i, i64 32) #7
  %add1171.i = add i64 %or.i4510.i, %add1099.i
  %xor1175.i = xor i64 %add1171.i, %or.i4493.i
  %or.i4511.i = tail call i64 @llvm.fshl.i64(i64 %xor1175.i, i64 %xor1175.i, i64 40) #7
  %add1180.i = add i64 %add1162.i, %10
  %add1183.i = add i64 %add1180.i, %or.i4511.i
  %xor1187.i = xor i64 %add1183.i, %or.i4510.i
  %or.i4512.i = tail call i64 @llvm.fshl.i64(i64 %xor1187.i, i64 %xor1187.i, i64 48) #7
  %add1192.i = add i64 %or.i4512.i, %add1171.i
  %xor1196.i = xor i64 %add1192.i, %or.i4511.i
  %or.i4513.i = tail call i64 @llvm.fshl.i64(i64 %xor1196.i, i64 %xor1196.i, i64 1) #7
  %add1204.i = add i64 %add1045.i, %46
  %add1207.i = add i64 %add1204.i, %or.i4497.i
  %xor1211.i = xor i64 %add1207.i, %or.i4504.i
  %or.i4514.i = tail call i64 @llvm.fshl.i64(i64 %xor1211.i, i64 %xor1211.i, i64 32) #7
  %add1216.i = add i64 %or.i4514.i, %add964.i
  %xor1220.i = xor i64 %add1216.i, %or.i4497.i
  %or.i4515.i = tail call i64 @llvm.fshl.i64(i64 %xor1220.i, i64 %xor1220.i, i64 40) #7
  %add1225.i = add i64 %add1207.i, %43
  %add1228.i = add i64 %add1225.i, %or.i4515.i
  %xor1232.i = xor i64 %add1228.i, %or.i4514.i
  %or.i4516.i = tail call i64 @llvm.fshl.i64(i64 %xor1232.i, i64 %xor1232.i, i64 48) #7
  %add1237.i = add i64 %or.i4516.i, %add1216.i
  %xor1241.i = xor i64 %add1237.i, %or.i4515.i
  %or.i4517.i = tail call i64 @llvm.fshl.i64(i64 %xor1241.i, i64 %xor1241.i, i64 1) #7
  %add1249.i = add i64 %add1090.i, %40
  %add1252.i = add i64 %add1249.i, %or.i4501.i
  %xor1256.i = xor i64 %add1252.i, %or.i4492.i
  %or.i4518.i = tail call i64 @llvm.fshl.i64(i64 %xor1256.i, i64 %xor1256.i, i64 32) #7
  %add1261.i = add i64 %or.i4518.i, %add1009.i
  %xor1265.i = xor i64 %add1261.i, %or.i4501.i
  %or.i4519.i = tail call i64 @llvm.fshl.i64(i64 %xor1265.i, i64 %xor1265.i, i64 40) #7
  %add1270.i = add i64 %add1252.i, %49
  %add1273.i = add i64 %add1270.i, %or.i4519.i
  %xor1277.i = xor i64 %add1273.i, %or.i4518.i
  %or.i4520.i = tail call i64 @llvm.fshl.i64(i64 %xor1277.i, i64 %xor1277.i, i64 48) #7
  %add1282.i = add i64 %or.i4520.i, %add1261.i
  %xor1286.i = xor i64 %add1282.i, %or.i4519.i
  %or.i4521.i = tail call i64 @llvm.fshl.i64(i64 %xor1286.i, i64 %xor1286.i, i64 1) #7
  %add1294.i = add i64 %add1138.i, %13
  %add1297.i = add i64 %add1294.i, %or.i4513.i
  %xor1301.i = xor i64 %add1297.i, %or.i4520.i
  %or.i4522.i = tail call i64 @llvm.fshl.i64(i64 %xor1301.i, i64 %xor1301.i, i64 32) #7
  %add1306.i = add i64 %or.i4522.i, %add1237.i
  %xor1310.i = xor i64 %add1306.i, %or.i4513.i
  %or.i4523.i = tail call i64 @llvm.fshl.i64(i64 %xor1310.i, i64 %xor1310.i, i64 40) #7
  %add1315.i = add i64 %add1297.i, %25
  %add1318.i = add i64 %add1315.i, %or.i4523.i
  %xor1322.i = xor i64 %add1318.i, %or.i4522.i
  %or.i4524.i = tail call i64 @llvm.fshl.i64(i64 %xor1322.i, i64 %xor1322.i, i64 48) #7
  %add1327.i = add i64 %or.i4524.i, %add1306.i
  %xor1331.i = xor i64 %add1327.i, %or.i4523.i
  %or.i4525.i = tail call i64 @llvm.fshl.i64(i64 %xor1331.i, i64 %xor1331.i, i64 1) #7
  %add1339.i = add i64 %add1183.i, %22
  %add1342.i = add i64 %add1339.i, %or.i4517.i
  %xor1346.i = xor i64 %add1342.i, %or.i4508.i
  %or.i4526.i = tail call i64 @llvm.fshl.i64(i64 %xor1346.i, i64 %xor1346.i, i64 32) #7
  %add1351.i = add i64 %or.i4526.i, %add1282.i
  %xor1355.i = xor i64 %add1351.i, %or.i4517.i
  %or.i4527.i = tail call i64 @llvm.fshl.i64(i64 %xor1355.i, i64 %xor1355.i, i64 40) #7
  %add1360.i = add i64 %add1342.i, %37
  %add1363.i = add i64 %add1360.i, %or.i4527.i
  %xor1367.i = xor i64 %add1363.i, %or.i4526.i
  %or.i4528.i = tail call i64 @llvm.fshl.i64(i64 %xor1367.i, i64 %xor1367.i, i64 48) #7
  %add1372.i = add i64 %or.i4528.i, %add1351.i
  %xor1376.i = xor i64 %add1372.i, %or.i4527.i
  %or.i4529.i = tail call i64 @llvm.fshl.i64(i64 %xor1376.i, i64 %xor1376.i, i64 1) #7
  %add1384.i = add i64 %add1228.i, %19
  %add1387.i = add i64 %add1384.i, %or.i4521.i
  %xor1391.i = xor i64 %add1387.i, %or.i4512.i
  %or.i4530.i = tail call i64 @llvm.fshl.i64(i64 %xor1391.i, i64 %xor1391.i, i64 32) #7
  %add1396.i = add i64 %or.i4530.i, %add1147.i
  %xor1400.i = xor i64 %add1396.i, %or.i4521.i
  %or.i4531.i = tail call i64 @llvm.fshl.i64(i64 %xor1400.i, i64 %xor1400.i, i64 40) #7
  %add1405.i = add i64 %add1387.i, %7
  %add1408.i = add i64 %add1405.i, %or.i4531.i
  %xor1412.i = xor i64 %add1408.i, %or.i4530.i
  %or.i4532.i = tail call i64 @llvm.fshl.i64(i64 %xor1412.i, i64 %xor1412.i, i64 48) #7
  %add1417.i = add i64 %or.i4532.i, %add1396.i
  %xor1421.i = xor i64 %add1417.i, %or.i4531.i
  %or.i4533.i = tail call i64 @llvm.fshl.i64(i64 %xor1421.i, i64 %xor1421.i, i64 1) #7
  %add1429.i = add i64 %or.i4509.i, %52
  %add1432.i = add i64 %add1429.i, %add1273.i
  %xor1436.i = xor i64 %add1432.i, %or.i4516.i
  %or.i4534.i = tail call i64 @llvm.fshl.i64(i64 %xor1436.i, i64 %xor1436.i, i64 32) #7
  %add1441.i = add i64 %or.i4534.i, %add1192.i
  %xor1445.i = xor i64 %add1441.i, %or.i4509.i
  %or.i4535.i = tail call i64 @llvm.fshl.i64(i64 %xor1445.i, i64 %xor1445.i, i64 40) #7
  %add1450.i = add i64 %add1432.i, %31
  %add1453.i = add i64 %add1450.i, %or.i4535.i
  %xor1457.i = xor i64 %add1453.i, %or.i4534.i
  %or.i4536.i = tail call i64 @llvm.fshl.i64(i64 %xor1457.i, i64 %xor1457.i, i64 48) #7
  %add1462.i = add i64 %or.i4536.i, %add1441.i
  %xor1466.i = xor i64 %add1462.i, %or.i4535.i
  %or.i4537.i = tail call i64 @llvm.fshl.i64(i64 %xor1466.i, i64 %xor1466.i, i64 1) #7
  %add1477.i = add i64 %add1318.i, %34
  %add1480.i = add i64 %add1477.i, %or.i4537.i
  %xor1484.i = xor i64 %add1480.i, %or.i4528.i
  %or.i4538.i = tail call i64 @llvm.fshl.i64(i64 %xor1484.i, i64 %xor1484.i, i64 32) #7
  %add1489.i = add i64 %or.i4538.i, %add1417.i
  %xor1493.i = xor i64 %add1489.i, %or.i4537.i
  %or.i4539.i = tail call i64 @llvm.fshl.i64(i64 %xor1493.i, i64 %xor1493.i, i64 40) #7
  %add1498.i = add i64 %add1480.i, %7
  %add1501.i = add i64 %add1498.i, %or.i4539.i
  %xor1505.i = xor i64 %add1501.i, %or.i4538.i
  %or.i4540.i = tail call i64 @llvm.fshl.i64(i64 %xor1505.i, i64 %xor1505.i, i64 48) #7
  %add1510.i = add i64 %or.i4540.i, %add1489.i
  %xor1514.i = xor i64 %add1510.i, %or.i4539.i
  %or.i4541.i = tail call i64 @llvm.fshl.i64(i64 %xor1514.i, i64 %xor1514.i, i64 1) #7
  %add1522.i = add i64 %add1363.i, %22
  %add1525.i = add i64 %add1522.i, %or.i4525.i
  %xor1529.i = xor i64 %add1525.i, %or.i4532.i
  %or.i4542.i = tail call i64 @llvm.fshl.i64(i64 %xor1529.i, i64 %xor1529.i, i64 32) #7
  %add1534.i = add i64 %or.i4542.i, %add1462.i
  %xor1538.i = xor i64 %add1534.i, %or.i4525.i
  %or.i4543.i = tail call i64 @llvm.fshl.i64(i64 %xor1538.i, i64 %xor1538.i, i64 40) #7
  %add1543.i = add i64 %add1525.i, %28
  %add1546.i = add i64 %add1543.i, %or.i4543.i
  %xor1550.i = xor i64 %add1546.i, %or.i4542.i
  %or.i4544.i = tail call i64 @llvm.fshl.i64(i64 %xor1550.i, i64 %xor1550.i, i64 48) #7
  %add1555.i = add i64 %or.i4544.i, %add1534.i
  %xor1559.i = xor i64 %add1555.i, %or.i4543.i
  %or.i4545.i = tail call i64 @llvm.fshl.i64(i64 %xor1559.i, i64 %xor1559.i, i64 1) #7
  %add1567.i = add i64 %add1408.i, %13
  %add1570.i = add i64 %add1567.i, %or.i4529.i
  %xor1574.i = xor i64 %add1570.i, %or.i4536.i
  %or.i4546.i = tail call i64 @llvm.fshl.i64(i64 %xor1574.i, i64 %xor1574.i, i64 32) #7
  %add1579.i = add i64 %or.i4546.i, %add1327.i
  %xor1583.i = xor i64 %add1579.i, %or.i4529.i
  %or.i4547.i = tail call i64 @llvm.fshl.i64(i64 %xor1583.i, i64 %xor1583.i, i64 40) #7
  %add1588.i = add i64 %add1570.i, %19
  %add1591.i = add i64 %add1588.i, %or.i4547.i
  %xor1595.i = xor i64 %add1591.i, %or.i4546.i
  %or.i4548.i = tail call i64 @llvm.fshl.i64(i64 %xor1595.i, i64 %xor1595.i, i64 48) #7
  %add1600.i = add i64 %or.i4548.i, %add1579.i
  %xor1604.i = xor i64 %add1600.i, %or.i4547.i
  %or.i4549.i = tail call i64 @llvm.fshl.i64(i64 %xor1604.i, i64 %xor1604.i, i64 1) #7
  %add1612.i = add i64 %add1453.i, %37
  %add1615.i = add i64 %add1612.i, %or.i4533.i
  %xor1619.i = xor i64 %add1615.i, %or.i4524.i
  %or.i4550.i = tail call i64 @llvm.fshl.i64(i64 %xor1619.i, i64 %xor1619.i, i64 32) #7
  %add1624.i = add i64 %or.i4550.i, %add1372.i
  %xor1628.i = xor i64 %add1624.i, %or.i4533.i
  %or.i4551.i = tail call i64 @llvm.fshl.i64(i64 %xor1628.i, i64 %xor1628.i, i64 40) #7
  %add1633.i = add i64 %add1615.i, %52
  %add1636.i = add i64 %add1633.i, %or.i4551.i
  %xor1640.i = xor i64 %add1636.i, %or.i4550.i
  %or.i4552.i = tail call i64 @llvm.fshl.i64(i64 %xor1640.i, i64 %xor1640.i, i64 48) #7
  %add1645.i = add i64 %or.i4552.i, %add1624.i
  %xor1649.i = xor i64 %add1645.i, %or.i4551.i
  %or.i4553.i = tail call i64 @llvm.fshl.i64(i64 %xor1649.i, i64 %xor1649.i, i64 1) #7
  %add1657.i = add i64 %add1501.i, %49
  %add1660.i = add i64 %add1657.i, %or.i4545.i
  %xor1664.i = xor i64 %add1660.i, %or.i4552.i
  %or.i4554.i = tail call i64 @llvm.fshl.i64(i64 %xor1664.i, i64 %xor1664.i, i64 32) #7
  %add1669.i = add i64 %or.i4554.i, %add1600.i
  %xor1673.i = xor i64 %add1669.i, %or.i4545.i
  %or.i4555.i = tail call i64 @llvm.fshl.i64(i64 %xor1673.i, i64 %xor1673.i, i64 40) #7
  %add1678.i = add i64 %add1660.i, %10
  %add1681.i = add i64 %add1678.i, %or.i4555.i
  %xor1685.i = xor i64 %add1681.i, %or.i4554.i
  %or.i4556.i = tail call i64 @llvm.fshl.i64(i64 %xor1685.i, i64 %xor1685.i, i64 48) #7
  %add1690.i = add i64 %or.i4556.i, %add1669.i
  %xor1694.i = xor i64 %add1690.i, %or.i4555.i
  %or.i4557.i = tail call i64 @llvm.fshl.i64(i64 %xor1694.i, i64 %xor1694.i, i64 1) #7
  %add1702.i = add i64 %add1546.i, %40
  %add1705.i = add i64 %add1702.i, %or.i4549.i
  %xor1709.i = xor i64 %add1705.i, %or.i4540.i
  %or.i4558.i = tail call i64 @llvm.fshl.i64(i64 %xor1709.i, i64 %xor1709.i, i64 32) #7
  %add1714.i = add i64 %or.i4558.i, %add1645.i
  %xor1718.i = xor i64 %add1714.i, %or.i4549.i
  %or.i4559.i = tail call i64 @llvm.fshl.i64(i64 %xor1718.i, i64 %xor1718.i, i64 40) #7
  %add1723.i = add i64 %add1705.i, %43
  %add1726.i = add i64 %add1723.i, %or.i4559.i
  %xor1730.i = xor i64 %add1726.i, %or.i4558.i
  %or.i4560.i = tail call i64 @llvm.fshl.i64(i64 %xor1730.i, i64 %xor1730.i, i64 48) #7
  %add1735.i = add i64 %or.i4560.i, %add1714.i
  %xor1739.i = xor i64 %add1735.i, %or.i4559.i
  %or.i4561.i = tail call i64 @llvm.fshl.i64(i64 %xor1739.i, i64 %xor1739.i, i64 1) #7
  %add1747.i = add i64 %add1591.i, %25
  %add1750.i = add i64 %add1747.i, %or.i4553.i
  %xor1754.i = xor i64 %add1750.i, %or.i4544.i
  %or.i4562.i = tail call i64 @llvm.fshl.i64(i64 %xor1754.i, i64 %xor1754.i, i64 32) #7
  %add1759.i = add i64 %or.i4562.i, %add1510.i
  %xor1763.i = xor i64 %add1759.i, %or.i4553.i
  %or.i4563.i = tail call i64 @llvm.fshl.i64(i64 %xor1763.i, i64 %xor1763.i, i64 40) #7
  %add1768.i = add i64 %add1750.i, %31
  %add1771.i = add i64 %add1768.i, %or.i4563.i
  %xor1775.i = xor i64 %add1771.i, %or.i4562.i
  %or.i4564.i = tail call i64 @llvm.fshl.i64(i64 %xor1775.i, i64 %xor1775.i, i64 48) #7
  %add1780.i = add i64 %or.i4564.i, %add1759.i
  %xor1784.i = xor i64 %add1780.i, %or.i4563.i
  %or.i4565.i = tail call i64 @llvm.fshl.i64(i64 %xor1784.i, i64 %xor1784.i, i64 1) #7
  %add1792.i = add i64 %or.i4541.i, %16
  %add1795.i = add i64 %add1792.i, %add1636.i
  %xor1799.i = xor i64 %add1795.i, %or.i4548.i
  %or.i4566.i = tail call i64 @llvm.fshl.i64(i64 %xor1799.i, i64 %xor1799.i, i64 32) #7
  %add1804.i = add i64 %or.i4566.i, %add1555.i
  %xor1808.i = xor i64 %add1804.i, %or.i4541.i
  %or.i4567.i = tail call i64 @llvm.fshl.i64(i64 %xor1808.i, i64 %xor1808.i, i64 40) #7
  %add1813.i = add i64 %add1795.i, %46
  %add1816.i = add i64 %add1813.i, %or.i4567.i
  %xor1820.i = xor i64 %add1816.i, %or.i4566.i
  %or.i4568.i = tail call i64 @llvm.fshl.i64(i64 %xor1820.i, i64 %xor1820.i, i64 48) #7
  %add1825.i = add i64 %or.i4568.i, %add1804.i
  %xor1829.i = xor i64 %add1825.i, %or.i4567.i
  %or.i4569.i = tail call i64 @llvm.fshl.i64(i64 %xor1829.i, i64 %xor1829.i, i64 1) #7
  %add1840.i = add i64 %add1681.i, %13
  %add1843.i = add i64 %add1840.i, %or.i4569.i
  %xor1847.i = xor i64 %add1843.i, %or.i4560.i
  %or.i4570.i = tail call i64 @llvm.fshl.i64(i64 %xor1847.i, i64 %xor1847.i, i64 32) #7
  %add1852.i = add i64 %or.i4570.i, %add1780.i
  %xor1856.i = xor i64 %add1852.i, %or.i4569.i
  %or.i4571.i = tail call i64 @llvm.fshl.i64(i64 %xor1856.i, i64 %xor1856.i, i64 40) #7
  %add1861.i = add i64 %add1843.i, %43
  %add1864.i = add i64 %add1861.i, %or.i4571.i
  %xor1868.i = xor i64 %add1864.i, %or.i4570.i
  %or.i4572.i = tail call i64 @llvm.fshl.i64(i64 %xor1868.i, i64 %xor1868.i, i64 48) #7
  %add1873.i = add i64 %or.i4572.i, %add1852.i
  %xor1877.i = xor i64 %add1873.i, %or.i4571.i
  %or.i4573.i = tail call i64 @llvm.fshl.i64(i64 %xor1877.i, i64 %xor1877.i, i64 1) #7
  %add1885.i = add i64 %add1726.i, %25
  %add1888.i = add i64 %add1885.i, %or.i4557.i
  %xor1892.i = xor i64 %add1888.i, %or.i4564.i
  %or.i4574.i = tail call i64 @llvm.fshl.i64(i64 %xor1892.i, i64 %xor1892.i, i64 32) #7
  %add1897.i = add i64 %or.i4574.i, %add1825.i
  %xor1901.i = xor i64 %add1897.i, %or.i4557.i
  %or.i4575.i = tail call i64 @llvm.fshl.i64(i64 %xor1901.i, i64 %xor1901.i, i64 40) #7
  %add1906.i = add i64 %add1888.i, %37
  %add1909.i = add i64 %add1906.i, %or.i4575.i
  %xor1913.i = xor i64 %add1909.i, %or.i4574.i
  %or.i4576.i = tail call i64 @llvm.fshl.i64(i64 %xor1913.i, i64 %xor1913.i, i64 48) #7
  %add1918.i = add i64 %or.i4576.i, %add1897.i
  %xor1922.i = xor i64 %add1918.i, %or.i4575.i
  %or.i4577.i = tail call i64 @llvm.fshl.i64(i64 %xor1922.i, i64 %xor1922.i, i64 1) #7
  %add1930.i = add i64 %add1771.i, %7
  %add1933.i = add i64 %add1930.i, %or.i4561.i
  %xor1937.i = xor i64 %add1933.i, %or.i4568.i
  %or.i4578.i = tail call i64 @llvm.fshl.i64(i64 %xor1937.i, i64 %xor1937.i, i64 32) #7
  %add1942.i = add i64 %or.i4578.i, %add1690.i
  %xor1946.i = xor i64 %add1942.i, %or.i4561.i
  %or.i4579.i = tail call i64 @llvm.fshl.i64(i64 %xor1946.i, i64 %xor1946.i, i64 40) #7
  %add1951.i = add i64 %add1933.i, %40
  %add1954.i = add i64 %add1951.i, %or.i4579.i
  %xor1958.i = xor i64 %add1954.i, %or.i4578.i
  %or.i4580.i = tail call i64 @llvm.fshl.i64(i64 %xor1958.i, i64 %xor1958.i, i64 48) #7
  %add1963.i = add i64 %or.i4580.i, %add1942.i
  %xor1967.i = xor i64 %add1963.i, %or.i4579.i
  %or.i4581.i = tail call i64 @llvm.fshl.i64(i64 %xor1967.i, i64 %xor1967.i, i64 1) #7
  %add1975.i = add i64 %add1816.i, %31
  %add1978.i = add i64 %add1975.i, %or.i4565.i
  %xor1982.i = xor i64 %add1978.i, %or.i4556.i
  %or.i4582.i = tail call i64 @llvm.fshl.i64(i64 %xor1982.i, i64 %xor1982.i, i64 32) #7
  %add1987.i = add i64 %or.i4582.i, %add1735.i
  %xor1991.i = xor i64 %add1987.i, %or.i4565.i
  %or.i4583.i = tail call i64 @llvm.fshl.i64(i64 %xor1991.i, i64 %xor1991.i, i64 40) #7
  %add1996.i = add i64 %add1978.i, %16
  %add1999.i = add i64 %add1996.i, %or.i4583.i
  %xor2003.i = xor i64 %add1999.i, %or.i4582.i
  %or.i4584.i = tail call i64 @llvm.fshl.i64(i64 %xor2003.i, i64 %xor2003.i, i64 48) #7
  %add2008.i = add i64 %or.i4584.i, %add1987.i
  %xor2012.i = xor i64 %add2008.i, %or.i4583.i
  %or.i4585.i = tail call i64 @llvm.fshl.i64(i64 %xor2012.i, i64 %xor2012.i, i64 1) #7
  %add2020.i = add i64 %add1864.i, %19
  %add2023.i = add i64 %add2020.i, %or.i4577.i
  %xor2027.i = xor i64 %add2023.i, %or.i4584.i
  %or.i4586.i = tail call i64 @llvm.fshl.i64(i64 %xor2027.i, i64 %xor2027.i, i64 32) #7
  %add2032.i = add i64 %or.i4586.i, %add1963.i
  %xor2036.i = xor i64 %add2032.i, %or.i4577.i
  %or.i4587.i = tail call i64 @llvm.fshl.i64(i64 %xor2036.i, i64 %xor2036.i, i64 40) #7
  %add2041.i = add i64 %add2023.i, %46
  %add2044.i = add i64 %add2041.i, %or.i4587.i
  %xor2048.i = xor i64 %add2044.i, %or.i4586.i
  %or.i4588.i = tail call i64 @llvm.fshl.i64(i64 %xor2048.i, i64 %xor2048.i, i64 48) #7
  %add2053.i = add i64 %or.i4588.i, %add2032.i
  %xor2057.i = xor i64 %add2053.i, %or.i4587.i
  %or.i4589.i = tail call i64 @llvm.fshl.i64(i64 %xor2057.i, i64 %xor2057.i, i64 1) #7
  %add2065.i = add i64 %add1909.i, %28
  %add2068.i = add i64 %add2065.i, %or.i4581.i
  %xor2072.i = xor i64 %add2068.i, %or.i4572.i
  %or.i4590.i = tail call i64 @llvm.fshl.i64(i64 %xor2072.i, i64 %xor2072.i, i64 32) #7
  %add2077.i = add i64 %or.i4590.i, %add2008.i
  %xor2081.i = xor i64 %add2077.i, %or.i4581.i
  %or.i4591.i = tail call i64 @llvm.fshl.i64(i64 %xor2081.i, i64 %xor2081.i, i64 40) #7
  %add2086.i = add i64 %add2068.i, %22
  %add2089.i = add i64 %add2086.i, %or.i4591.i
  %xor2093.i = xor i64 %add2089.i, %or.i4590.i
  %or.i4592.i = tail call i64 @llvm.fshl.i64(i64 %xor2093.i, i64 %xor2093.i, i64 48) #7
  %add2098.i = add i64 %or.i4592.i, %add2077.i
  %xor2102.i = xor i64 %add2098.i, %or.i4591.i
  %or.i4593.i = tail call i64 @llvm.fshl.i64(i64 %xor2102.i, i64 %xor2102.i, i64 1) #7
  %add2110.i = add i64 %add1954.i, %52
  %add2113.i = add i64 %add2110.i, %or.i4585.i
  %xor2117.i = xor i64 %add2113.i, %or.i4576.i
  %or.i4594.i = tail call i64 @llvm.fshl.i64(i64 %xor2117.i, i64 %xor2117.i, i64 32) #7
  %add2122.i = add i64 %or.i4594.i, %add1873.i
  %xor2126.i = xor i64 %add2122.i, %or.i4585.i
  %or.i4595.i = tail call i64 @llvm.fshl.i64(i64 %xor2126.i, i64 %xor2126.i, i64 40) #7
  %add2131.i = add i64 %add2113.i, %49
  %add2134.i = add i64 %add2131.i, %or.i4595.i
  %xor2138.i = xor i64 %add2134.i, %or.i4594.i
  %or.i4596.i = tail call i64 @llvm.fshl.i64(i64 %xor2138.i, i64 %xor2138.i, i64 48) #7
  %add2143.i = add i64 %or.i4596.i, %add2122.i
  %xor2147.i = xor i64 %add2143.i, %or.i4595.i
  %or.i4597.i = tail call i64 @llvm.fshl.i64(i64 %xor2147.i, i64 %xor2147.i, i64 1) #7
  %add2155.i = add i64 %or.i4573.i, %10
  %add2158.i = add i64 %add2155.i, %add1999.i
  %xor2162.i = xor i64 %add2158.i, %or.i4580.i
  %or.i4598.i = tail call i64 @llvm.fshl.i64(i64 %xor2162.i, i64 %xor2162.i, i64 32) #7
  %add2167.i = add i64 %or.i4598.i, %add1918.i
  %xor2171.i = xor i64 %add2167.i, %or.i4573.i
  %or.i4599.i = tail call i64 @llvm.fshl.i64(i64 %xor2171.i, i64 %xor2171.i, i64 40) #7
  %add2176.i = add i64 %add2158.i, %34
  %add2179.i = add i64 %add2176.i, %or.i4599.i
  %xor2183.i = xor i64 %add2179.i, %or.i4598.i
  %or.i4600.i = tail call i64 @llvm.fshl.i64(i64 %xor2183.i, i64 %xor2183.i, i64 48) #7
  %add2188.i = add i64 %or.i4600.i, %add2167.i
  %xor2192.i = xor i64 %add2188.i, %or.i4599.i
  %or.i4601.i = tail call i64 @llvm.fshl.i64(i64 %xor2192.i, i64 %xor2192.i, i64 1) #7
  %add2203.i = add i64 %add2044.i, %43
  %add2206.i = add i64 %add2203.i, %or.i4601.i
  %xor2210.i = xor i64 %add2206.i, %or.i4592.i
  %or.i4602.i = tail call i64 @llvm.fshl.i64(i64 %xor2210.i, i64 %xor2210.i, i64 32) #7
  %add2215.i = add i64 %or.i4602.i, %add2143.i
  %xor2219.i = xor i64 %add2215.i, %or.i4601.i
  %or.i4603.i = tail call i64 @llvm.fshl.i64(i64 %xor2219.i, i64 %xor2219.i, i64 40) #7
  %add2224.i = add i64 %add2206.i, %22
  %add2227.i = add i64 %add2224.i, %or.i4603.i
  %xor2231.i = xor i64 %add2227.i, %or.i4602.i
  %or.i4604.i = tail call i64 @llvm.fshl.i64(i64 %xor2231.i, i64 %xor2231.i, i64 48) #7
  %add2236.i = add i64 %or.i4604.i, %add2215.i
  %xor2240.i = xor i64 %add2236.i, %or.i4603.i
  %or.i4605.i = tail call i64 @llvm.fshl.i64(i64 %xor2240.i, i64 %xor2240.i, i64 1) #7
  %add2248.i = add i64 %add2089.i, %10
  %add2251.i = add i64 %add2248.i, %or.i4589.i
  %xor2255.i = xor i64 %add2251.i, %or.i4596.i
  %or.i4606.i = tail call i64 @llvm.fshl.i64(i64 %xor2255.i, i64 %xor2255.i, i64 32) #7
  %add2260.i = add i64 %or.i4606.i, %add2188.i
  %xor2264.i = xor i64 %add2260.i, %or.i4589.i
  %or.i4607.i = tail call i64 @llvm.fshl.i64(i64 %xor2264.i, i64 %xor2264.i, i64 40) #7
  %add2269.i = add i64 %add2251.i, %52
  %add2272.i = add i64 %add2269.i, %or.i4607.i
  %xor2276.i = xor i64 %add2272.i, %or.i4606.i
  %or.i4608.i = tail call i64 @llvm.fshl.i64(i64 %xor2276.i, i64 %xor2276.i, i64 48) #7
  %add2281.i = add i64 %or.i4608.i, %add2260.i
  %xor2285.i = xor i64 %add2281.i, %or.i4607.i
  %or.i4609.i = tail call i64 @llvm.fshl.i64(i64 %xor2285.i, i64 %xor2285.i, i64 1) #7
  %add2293.i = add i64 %add2134.i, %49
  %add2296.i = add i64 %add2293.i, %or.i4593.i
  %xor2300.i = xor i64 %add2296.i, %or.i4600.i
  %or.i4610.i = tail call i64 @llvm.fshl.i64(i64 %xor2300.i, i64 %xor2300.i, i64 32) #7
  %add2305.i = add i64 %or.i4610.i, %add2053.i
  %xor2309.i = xor i64 %add2305.i, %or.i4593.i
  %or.i4611.i = tail call i64 @llvm.fshl.i64(i64 %xor2309.i, i64 %xor2309.i, i64 40) #7
  %add2314.i = add i64 %add2296.i, %46
  %add2317.i = add i64 %add2314.i, %or.i4611.i
  %xor2321.i = xor i64 %add2317.i, %or.i4610.i
  %or.i4612.i = tail call i64 @llvm.fshl.i64(i64 %xor2321.i, i64 %xor2321.i, i64 48) #7
  %add2326.i = add i64 %or.i4612.i, %add2305.i
  %xor2330.i = xor i64 %add2326.i, %or.i4611.i
  %or.i4613.i = tail call i64 @llvm.fshl.i64(i64 %xor2330.i, i64 %xor2330.i, i64 1) #7
  %add2338.i = add i64 %add2179.i, %19
  %add2341.i = add i64 %add2338.i, %or.i4597.i
  %xor2345.i = xor i64 %add2341.i, %or.i4588.i
  %or.i4614.i = tail call i64 @llvm.fshl.i64(i64 %xor2345.i, i64 %xor2345.i, i64 32) #7
  %add2350.i = add i64 %or.i4614.i, %add2098.i
  %xor2354.i = xor i64 %add2350.i, %or.i4597.i
  %or.i4615.i = tail call i64 @llvm.fshl.i64(i64 %xor2354.i, i64 %xor2354.i, i64 40) #7
  %add2359.i = add i64 %add2341.i, %37
  %add2362.i = add i64 %add2359.i, %or.i4615.i
  %xor2366.i = xor i64 %add2362.i, %or.i4614.i
  %or.i4616.i = tail call i64 @llvm.fshl.i64(i64 %xor2366.i, i64 %xor2366.i, i64 48) #7
  %add2371.i = add i64 %or.i4616.i, %add2350.i
  %xor2375.i = xor i64 %add2371.i, %or.i4615.i
  %or.i4617.i = tail call i64 @llvm.fshl.i64(i64 %xor2375.i, i64 %xor2375.i, i64 1) #7
  %add2383.i = add i64 %add2227.i, %7
  %add2386.i = add i64 %add2383.i, %or.i4609.i
  %xor2390.i = xor i64 %add2386.i, %or.i4616.i
  %or.i4618.i = tail call i64 @llvm.fshl.i64(i64 %xor2390.i, i64 %xor2390.i, i64 32) #7
  %add2395.i = add i64 %or.i4618.i, %add2326.i
  %xor2399.i = xor i64 %add2395.i, %or.i4609.i
  %or.i4619.i = tail call i64 @llvm.fshl.i64(i64 %xor2399.i, i64 %xor2399.i, i64 40) #7
  %add2404.i = add i64 %add2386.i, %28
  %add2407.i = add i64 %add2404.i, %or.i4619.i
  %xor2411.i = xor i64 %add2407.i, %or.i4618.i
  %or.i4620.i = tail call i64 @llvm.fshl.i64(i64 %xor2411.i, i64 %xor2411.i, i64 48) #7
  %add2416.i = add i64 %or.i4620.i, %add2395.i
  %xor2420.i = xor i64 %add2416.i, %or.i4619.i
  %or.i4621.i = tail call i64 @llvm.fshl.i64(i64 %xor2420.i, i64 %xor2420.i, i64 1) #7
  %add2428.i = add i64 %add2272.i, %25
  %add2431.i = add i64 %add2428.i, %or.i4613.i
  %xor2435.i = xor i64 %add2431.i, %or.i4604.i
  %or.i4622.i = tail call i64 @llvm.fshl.i64(i64 %xor2435.i, i64 %xor2435.i, i64 32) #7
  %add2440.i = add i64 %or.i4622.i, %add2371.i
  %xor2444.i = xor i64 %add2440.i, %or.i4613.i
  %or.i4623.i = tail call i64 @llvm.fshl.i64(i64 %xor2444.i, i64 %xor2444.i, i64 40) #7
  %add2449.i = add i64 %add2431.i, %16
  %add2452.i = add i64 %add2449.i, %or.i4623.i
  %xor2456.i = xor i64 %add2452.i, %or.i4622.i
  %or.i4624.i = tail call i64 @llvm.fshl.i64(i64 %xor2456.i, i64 %xor2456.i, i64 48) #7
  %add2461.i = add i64 %or.i4624.i, %add2440.i
  %xor2465.i = xor i64 %add2461.i, %or.i4623.i
  %or.i4625.i = tail call i64 @llvm.fshl.i64(i64 %xor2465.i, i64 %xor2465.i, i64 1) #7
  %add2473.i = add i64 %add2317.i, %34
  %add2476.i = add i64 %add2473.i, %or.i4617.i
  %xor2480.i = xor i64 %add2476.i, %or.i4608.i
  %or.i4626.i = tail call i64 @llvm.fshl.i64(i64 %xor2480.i, i64 %xor2480.i, i64 32) #7
  %add2485.i = add i64 %or.i4626.i, %add2236.i
  %xor2489.i = xor i64 %add2485.i, %or.i4617.i
  %or.i4627.i = tail call i64 @llvm.fshl.i64(i64 %xor2489.i, i64 %xor2489.i, i64 40) #7
  %add2494.i = add i64 %add2476.i, %13
  %add2497.i = add i64 %add2494.i, %or.i4627.i
  %xor2501.i = xor i64 %add2497.i, %or.i4626.i
  %or.i4628.i = tail call i64 @llvm.fshl.i64(i64 %xor2501.i, i64 %xor2501.i, i64 48) #7
  %add2506.i = add i64 %or.i4628.i, %add2485.i
  %xor2510.i = xor i64 %add2506.i, %or.i4627.i
  %or.i4629.i = tail call i64 @llvm.fshl.i64(i64 %xor2510.i, i64 %xor2510.i, i64 1) #7
  %add2518.i = add i64 %add2362.i, %31
  %add2521.i = add i64 %add2518.i, %or.i4605.i
  %xor2525.i = xor i64 %add2521.i, %or.i4612.i
  %or.i4630.i = tail call i64 @llvm.fshl.i64(i64 %xor2525.i, i64 %xor2525.i, i64 32) #7
  %add2530.i = add i64 %or.i4630.i, %add2281.i
  %xor2534.i = xor i64 %add2530.i, %or.i4605.i
  %or.i4631.i = tail call i64 @llvm.fshl.i64(i64 %xor2534.i, i64 %xor2534.i, i64 40) #7
  %add2539.i = add i64 %add2521.i, %40
  %add2542.i = add i64 %add2539.i, %or.i4631.i
  %xor2546.i = xor i64 %add2542.i, %or.i4630.i
  %or.i4632.i = tail call i64 @llvm.fshl.i64(i64 %xor2546.i, i64 %xor2546.i, i64 48) #7
  %add2551.i = add i64 %or.i4632.i, %add2530.i
  %xor2555.i = xor i64 %add2551.i, %or.i4631.i
  %or.i4633.i = tail call i64 @llvm.fshl.i64(i64 %xor2555.i, i64 %xor2555.i, i64 1) #7
  %add2566.i = add i64 %add2407.i, %46
  %add2569.i = add i64 %add2566.i, %or.i4633.i
  %xor2573.i = xor i64 %add2569.i, %or.i4624.i
  %or.i4634.i = tail call i64 @llvm.fshl.i64(i64 %xor2573.i, i64 %xor2573.i, i64 32) #7
  %add2578.i = add i64 %or.i4634.i, %add2506.i
  %xor2582.i = xor i64 %add2578.i, %or.i4633.i
  %or.i4635.i = tail call i64 @llvm.fshl.i64(i64 %xor2582.i, i64 %xor2582.i, i64 40) #7
  %add2587.i = add i64 %add2569.i, %40
  %add2590.i = add i64 %add2587.i, %or.i4635.i
  %xor2594.i = xor i64 %add2590.i, %or.i4634.i
  %or.i4636.i = tail call i64 @llvm.fshl.i64(i64 %xor2594.i, i64 %xor2594.i, i64 48) #7
  %add2599.i = add i64 %or.i4636.i, %add2578.i
  %xor2603.i = xor i64 %add2599.i, %or.i4635.i
  %or.i4637.i = tail call i64 @llvm.fshl.i64(i64 %xor2603.i, i64 %xor2603.i, i64 1) #7
  %add2611.i = add i64 %add2452.i, %28
  %add2614.i = add i64 %add2611.i, %or.i4621.i
  %xor2618.i = xor i64 %add2614.i, %or.i4628.i
  %or.i4638.i = tail call i64 @llvm.fshl.i64(i64 %xor2618.i, i64 %xor2618.i, i64 32) #7
  %add2623.i = add i64 %or.i4638.i, %add2551.i
  %xor2627.i = xor i64 %add2623.i, %or.i4621.i
  %or.i4639.i = tail call i64 @llvm.fshl.i64(i64 %xor2627.i, i64 %xor2627.i, i64 40) #7
  %add2632.i = add i64 %add2614.i, %49
  %add2635.i = add i64 %add2632.i, %or.i4639.i
  %xor2639.i = xor i64 %add2635.i, %or.i4638.i
  %or.i4640.i = tail call i64 @llvm.fshl.i64(i64 %xor2639.i, i64 %xor2639.i, i64 48) #7
  %add2644.i = add i64 %or.i4640.i, %add2623.i
  %xor2648.i = xor i64 %add2644.i, %or.i4639.i
  %or.i4641.i = tail call i64 @llvm.fshl.i64(i64 %xor2648.i, i64 %xor2648.i, i64 1) #7
  %add2656.i = add i64 %add2497.i, %43
  %add2659.i = add i64 %add2656.i, %or.i4625.i
  %xor2663.i = xor i64 %add2659.i, %or.i4632.i
  %or.i4642.i = tail call i64 @llvm.fshl.i64(i64 %xor2663.i, i64 %xor2663.i, i64 32) #7
  %add2668.i = add i64 %or.i4642.i, %add2416.i
  %xor2672.i = xor i64 %add2668.i, %or.i4625.i
  %or.i4643.i = tail call i64 @llvm.fshl.i64(i64 %xor2672.i, i64 %xor2672.i, i64 40) #7
  %add2677.i = add i64 %add2659.i, %10
  %add2680.i = add i64 %add2677.i, %or.i4643.i
  %xor2684.i = xor i64 %add2680.i, %or.i4642.i
  %or.i4644.i = tail call i64 @llvm.fshl.i64(i64 %xor2684.i, i64 %xor2684.i, i64 48) #7
  %add2689.i = add i64 %or.i4644.i, %add2668.i
  %xor2693.i = xor i64 %add2689.i, %or.i4643.i
  %or.i4645.i = tail call i64 @llvm.fshl.i64(i64 %xor2693.i, i64 %xor2693.i, i64 1) #7
  %add2701.i = add i64 %add2542.i, %16
  %add2704.i = add i64 %add2701.i, %or.i4629.i
  %xor2708.i = xor i64 %add2704.i, %or.i4620.i
  %or.i4646.i = tail call i64 @llvm.fshl.i64(i64 %xor2708.i, i64 %xor2708.i, i64 32) #7
  %add2713.i = add i64 %or.i4646.i, %add2461.i
  %xor2717.i = xor i64 %add2713.i, %or.i4629.i
  %or.i4647.i = tail call i64 @llvm.fshl.i64(i64 %xor2717.i, i64 %xor2717.i, i64 40) #7
  %add2722.i = add i64 %add2704.i, %34
  %add2725.i = add i64 %add2722.i, %or.i4647.i
  %xor2729.i = xor i64 %add2725.i, %or.i4646.i
  %or.i4648.i = tail call i64 @llvm.fshl.i64(i64 %xor2729.i, i64 %xor2729.i, i64 48) #7
  %add2734.i = add i64 %or.i4648.i, %add2713.i
  %xor2738.i = xor i64 %add2734.i, %or.i4647.i
  %or.i4649.i = tail call i64 @llvm.fshl.i64(i64 %xor2738.i, i64 %xor2738.i, i64 1) #7
  %add2746.i = add i64 %add2590.i, %22
  %add2749.i = add i64 %add2746.i, %or.i4641.i
  %xor2753.i = xor i64 %add2749.i, %or.i4648.i
  %or.i4650.i = tail call i64 @llvm.fshl.i64(i64 %xor2753.i, i64 %xor2753.i, i64 32) #7
  %add2758.i = add i64 %or.i4650.i, %add2689.i
  %xor2762.i = xor i64 %add2758.i, %or.i4641.i
  %or.i4651.i = tail call i64 @llvm.fshl.i64(i64 %xor2762.i, i64 %xor2762.i, i64 40) #7
  %add2767.i = add i64 %add2749.i, %7
  %add2770.i = add i64 %add2767.i, %or.i4651.i
  %xor2774.i = xor i64 %add2770.i, %or.i4650.i
  %or.i4652.i = tail call i64 @llvm.fshl.i64(i64 %xor2774.i, i64 %xor2774.i, i64 48) #7
  %add2779.i = add i64 %or.i4652.i, %add2758.i
  %xor2783.i = xor i64 %add2779.i, %or.i4651.i
  %or.i4653.i = tail call i64 @llvm.fshl.i64(i64 %xor2783.i, i64 %xor2783.i, i64 1) #7
  %add2791.i = add i64 %add2635.i, %52
  %add2794.i = add i64 %add2791.i, %or.i4645.i
  %xor2798.i = xor i64 %add2794.i, %or.i4636.i
  %or.i4654.i = tail call i64 @llvm.fshl.i64(i64 %xor2798.i, i64 %xor2798.i, i64 32) #7
  %add2803.i = add i64 %or.i4654.i, %add2734.i
  %xor2807.i = xor i64 %add2803.i, %or.i4645.i
  %or.i4655.i = tail call i64 @llvm.fshl.i64(i64 %xor2807.i, i64 %xor2807.i, i64 40) #7
  %add2812.i = add i64 %add2794.i, %19
  %add2815.i = add i64 %add2812.i, %or.i4655.i
  %xor2819.i = xor i64 %add2815.i, %or.i4654.i
  %or.i4656.i = tail call i64 @llvm.fshl.i64(i64 %xor2819.i, i64 %xor2819.i, i64 48) #7
  %add2824.i = add i64 %or.i4656.i, %add2803.i
  %xor2828.i = xor i64 %add2824.i, %or.i4655.i
  %or.i4657.i = tail call i64 @llvm.fshl.i64(i64 %xor2828.i, i64 %xor2828.i, i64 1) #7
  %add2836.i = add i64 %add2680.i, %31
  %add2839.i = add i64 %add2836.i, %or.i4649.i
  %xor2843.i = xor i64 %add2839.i, %or.i4640.i
  %or.i4658.i = tail call i64 @llvm.fshl.i64(i64 %xor2843.i, i64 %xor2843.i, i64 32) #7
  %add2848.i = add i64 %or.i4658.i, %add2599.i
  %xor2852.i = xor i64 %add2848.i, %or.i4649.i
  %or.i4659.i = tail call i64 @llvm.fshl.i64(i64 %xor2852.i, i64 %xor2852.i, i64 40) #7
  %add2857.i = add i64 %add2839.i, %25
  %add2860.i = add i64 %add2857.i, %or.i4659.i
  %xor2864.i = xor i64 %add2860.i, %or.i4658.i
  %or.i4660.i = tail call i64 @llvm.fshl.i64(i64 %xor2864.i, i64 %xor2864.i, i64 48) #7
  %add2869.i = add i64 %or.i4660.i, %add2848.i
  %xor2873.i = xor i64 %add2869.i, %or.i4659.i
  %or.i4661.i = tail call i64 @llvm.fshl.i64(i64 %xor2873.i, i64 %xor2873.i, i64 1) #7
  %add2881.i = add i64 %add2725.i, %13
  %add2884.i = add i64 %add2881.i, %or.i4637.i
  %xor2888.i = xor i64 %add2884.i, %or.i4644.i
  %or.i4662.i = tail call i64 @llvm.fshl.i64(i64 %xor2888.i, i64 %xor2888.i, i64 32) #7
  %add2893.i = add i64 %or.i4662.i, %add2644.i
  %xor2897.i = xor i64 %add2893.i, %or.i4637.i
  %or.i4663.i = tail call i64 @llvm.fshl.i64(i64 %xor2897.i, i64 %xor2897.i, i64 40) #7
  %add2902.i = add i64 %add2884.i, %37
  %add2905.i = add i64 %add2902.i, %or.i4663.i
  %xor2909.i = xor i64 %add2905.i, %or.i4662.i
  %or.i4664.i = tail call i64 @llvm.fshl.i64(i64 %xor2909.i, i64 %xor2909.i, i64 48) #7
  %add2914.i = add i64 %or.i4664.i, %add2893.i
  %xor2918.i = xor i64 %add2914.i, %or.i4663.i
  %or.i4665.i = tail call i64 @llvm.fshl.i64(i64 %xor2918.i, i64 %xor2918.i, i64 1) #7
  %add2929.i = add i64 %add2770.i, %25
  %add2932.i = add i64 %add2929.i, %or.i4665.i
  %xor2936.i = xor i64 %add2932.i, %or.i4656.i
  %or.i4666.i = tail call i64 @llvm.fshl.i64(i64 %xor2936.i, i64 %xor2936.i, i64 32) #7
  %add2941.i = add i64 %or.i4666.i, %add2869.i
  %xor2945.i = xor i64 %add2941.i, %or.i4665.i
  %or.i4667.i = tail call i64 @llvm.fshl.i64(i64 %xor2945.i, i64 %xor2945.i, i64 40) #7
  %add2950.i = add i64 %add2932.i, %52
  %add2953.i = add i64 %add2950.i, %or.i4667.i
  %xor2957.i = xor i64 %add2953.i, %or.i4666.i
  %or.i4668.i = tail call i64 @llvm.fshl.i64(i64 %xor2957.i, i64 %xor2957.i, i64 48) #7
  %add2962.i = add i64 %or.i4668.i, %add2941.i
  %xor2966.i = xor i64 %add2962.i, %or.i4667.i
  %or.i4669.i = tail call i64 @llvm.fshl.i64(i64 %xor2966.i, i64 %xor2966.i, i64 1) #7
  %add2974.i = add i64 %add2815.i, %49
  %add2977.i = add i64 %add2974.i, %or.i4653.i
  %xor2981.i = xor i64 %add2977.i, %or.i4660.i
  %or.i4670.i = tail call i64 @llvm.fshl.i64(i64 %xor2981.i, i64 %xor2981.i, i64 32) #7
  %add2986.i = add i64 %or.i4670.i, %add2914.i
  %xor2990.i = xor i64 %add2986.i, %or.i4653.i
  %or.i4671.i = tail call i64 @llvm.fshl.i64(i64 %xor2990.i, i64 %xor2990.i, i64 40) #7
  %add2995.i = add i64 %add2977.i, %34
  %add2998.i = add i64 %add2995.i, %or.i4671.i
  %xor3002.i = xor i64 %add2998.i, %or.i4670.i
  %or.i4672.i = tail call i64 @llvm.fshl.i64(i64 %xor3002.i, i64 %xor3002.i, i64 48) #7
  %add3007.i = add i64 %or.i4672.i, %add2986.i
  %xor3011.i = xor i64 %add3007.i, %or.i4671.i
  %or.i4673.i = tail call i64 @llvm.fshl.i64(i64 %xor3011.i, i64 %xor3011.i, i64 1) #7
  %add3019.i = add i64 %add2860.i, %40
  %add3022.i = add i64 %add3019.i, %or.i4657.i
  %xor3026.i = xor i64 %add3022.i, %or.i4664.i
  %or.i4674.i = tail call i64 @llvm.fshl.i64(i64 %xor3026.i, i64 %xor3026.i, i64 32) #7
  %add3031.i = add i64 %or.i4674.i, %add2779.i
  %xor3035.i = xor i64 %add3031.i, %or.i4657.i
  %or.i4675.i = tail call i64 @llvm.fshl.i64(i64 %xor3035.i, i64 %xor3035.i, i64 40) #7
  %add3040.i = add i64 %add3022.i, %16
  %add3043.i = add i64 %add3040.i, %or.i4675.i
  %xor3047.i = xor i64 %add3043.i, %or.i4674.i
  %or.i4676.i = tail call i64 @llvm.fshl.i64(i64 %xor3047.i, i64 %xor3047.i, i64 48) #7
  %add3052.i = add i64 %or.i4676.i, %add3031.i
  %xor3056.i = xor i64 %add3052.i, %or.i4675.i
  %or.i4677.i = tail call i64 @llvm.fshl.i64(i64 %xor3056.i, i64 %xor3056.i, i64 1) #7
  %add3064.i = add i64 %add2905.i, %7
  %add3067.i = add i64 %add3064.i, %or.i4661.i
  %xor3071.i = xor i64 %add3067.i, %or.i4652.i
  %or.i4678.i = tail call i64 @llvm.fshl.i64(i64 %xor3071.i, i64 %xor3071.i, i64 32) #7
  %add3076.i = add i64 %or.i4678.i, %add2824.i
  %xor3080.i = xor i64 %add3076.i, %or.i4661.i
  %or.i4679.i = tail call i64 @llvm.fshl.i64(i64 %xor3080.i, i64 %xor3080.i, i64 40) #7
  %add3085.i = add i64 %add3067.i, %31
  %add3088.i = add i64 %add3085.i, %or.i4679.i
  %xor3092.i = xor i64 %add3088.i, %or.i4678.i
  %or.i4680.i = tail call i64 @llvm.fshl.i64(i64 %xor3092.i, i64 %xor3092.i, i64 48) #7
  %add3097.i = add i64 %or.i4680.i, %add3076.i
  %xor3101.i = xor i64 %add3097.i, %or.i4679.i
  %or.i4681.i = tail call i64 @llvm.fshl.i64(i64 %xor3101.i, i64 %xor3101.i, i64 1) #7
  %add3109.i = add i64 %add2953.i, %43
  %add3112.i = add i64 %add3109.i, %or.i4673.i
  %xor3116.i = xor i64 %add3112.i, %or.i4680.i
  %or.i4682.i = tail call i64 @llvm.fshl.i64(i64 %xor3116.i, i64 %xor3116.i, i64 32) #7
  %add3121.i = add i64 %or.i4682.i, %add3052.i
  %xor3125.i = xor i64 %add3121.i, %or.i4673.i
  %or.i4683.i = tail call i64 @llvm.fshl.i64(i64 %xor3125.i, i64 %xor3125.i, i64 40) #7
  %add3130.i = add i64 %add3112.i, %13
  %add3133.i = add i64 %add3130.i, %or.i4683.i
  %xor3137.i = xor i64 %add3133.i, %or.i4682.i
  %or.i4684.i = tail call i64 @llvm.fshl.i64(i64 %xor3137.i, i64 %xor3137.i, i64 48) #7
  %add3142.i = add i64 %or.i4684.i, %add3121.i
  %xor3146.i = xor i64 %add3142.i, %or.i4683.i
  %or.i4685.i = tail call i64 @llvm.fshl.i64(i64 %xor3146.i, i64 %xor3146.i, i64 1) #7
  %add3154.i = add i64 %add2998.i, %46
  %add3157.i = add i64 %add3154.i, %or.i4677.i
  %xor3161.i = xor i64 %add3157.i, %or.i4668.i
  %or.i4686.i = tail call i64 @llvm.fshl.i64(i64 %xor3161.i, i64 %xor3161.i, i64 32) #7
  %add3166.i = add i64 %or.i4686.i, %add3097.i
  %xor3170.i = xor i64 %add3166.i, %or.i4677.i
  %or.i4687.i = tail call i64 @llvm.fshl.i64(i64 %xor3170.i, i64 %xor3170.i, i64 40) #7
  %add3175.i = add i64 %add3157.i, %28
  %add3178.i = add i64 %add3175.i, %or.i4687.i
  %xor3182.i = xor i64 %add3178.i, %or.i4686.i
  %or.i4688.i = tail call i64 @llvm.fshl.i64(i64 %xor3182.i, i64 %xor3182.i, i64 48) #7
  %add3187.i = add i64 %or.i4688.i, %add3166.i
  %xor3191.i = xor i64 %add3187.i, %or.i4687.i
  %or.i4689.i = tail call i64 @llvm.fshl.i64(i64 %xor3191.i, i64 %xor3191.i, i64 1) #7
  %add3199.i = add i64 %add3043.i, %10
  %add3202.i = add i64 %add3199.i, %or.i4681.i
  %xor3206.i = xor i64 %add3202.i, %or.i4672.i
  %or.i4690.i = tail call i64 @llvm.fshl.i64(i64 %xor3206.i, i64 %xor3206.i, i64 32) #7
  %add3211.i = add i64 %or.i4690.i, %add2962.i
  %xor3215.i = xor i64 %add3211.i, %or.i4681.i
  %or.i4691.i = tail call i64 @llvm.fshl.i64(i64 %xor3215.i, i64 %xor3215.i, i64 40) #7
  %add3220.i = add i64 %add3202.i, %19
  %add3223.i = add i64 %add3220.i, %or.i4691.i
  %xor3227.i = xor i64 %add3223.i, %or.i4690.i
  %or.i4692.i = tail call i64 @llvm.fshl.i64(i64 %xor3227.i, i64 %xor3227.i, i64 48) #7
  %add3232.i = add i64 %or.i4692.i, %add3211.i
  %xor3236.i = xor i64 %add3232.i, %or.i4691.i
  %or.i4693.i = tail call i64 @llvm.fshl.i64(i64 %xor3236.i, i64 %xor3236.i, i64 1) #7
  %add3244.i = add i64 %add3088.i, %37
  %add3247.i = add i64 %add3244.i, %or.i4669.i
  %xor3251.i = xor i64 %add3247.i, %or.i4676.i
  %or.i4694.i = tail call i64 @llvm.fshl.i64(i64 %xor3251.i, i64 %xor3251.i, i64 32) #7
  %add3256.i = add i64 %or.i4694.i, %add3007.i
  %xor3260.i = xor i64 %add3256.i, %or.i4669.i
  %or.i4695.i = tail call i64 @llvm.fshl.i64(i64 %xor3260.i, i64 %xor3260.i, i64 40) #7
  %add3265.i = add i64 %add3247.i, %22
  %add3268.i = add i64 %add3265.i, %or.i4695.i
  %xor3272.i = xor i64 %add3268.i, %or.i4694.i
  %or.i4696.i = tail call i64 @llvm.fshl.i64(i64 %xor3272.i, i64 %xor3272.i, i64 48) #7
  %add3277.i = add i64 %or.i4696.i, %add3256.i
  %xor3281.i = xor i64 %add3277.i, %or.i4695.i
  %or.i4697.i = tail call i64 @llvm.fshl.i64(i64 %xor3281.i, i64 %xor3281.i, i64 1) #7
  %add3292.i = add i64 %add3133.i, %37
  %add3295.i = add i64 %add3292.i, %or.i4697.i
  %xor3299.i = xor i64 %add3295.i, %or.i4688.i
  %or.i4698.i = tail call i64 @llvm.fshl.i64(i64 %xor3299.i, i64 %xor3299.i, i64 32) #7
  %add3304.i = add i64 %or.i4698.i, %add3232.i
  %xor3308.i = xor i64 %add3304.i, %or.i4697.i
  %or.i4699.i = tail call i64 @llvm.fshl.i64(i64 %xor3308.i, i64 %xor3308.i, i64 40) #7
  %add3313.i = add i64 %add3295.i, %13
  %add3316.i = add i64 %add3313.i, %or.i4699.i
  %xor3320.i = xor i64 %add3316.i, %or.i4698.i
  %or.i4700.i = tail call i64 @llvm.fshl.i64(i64 %xor3320.i, i64 %xor3320.i, i64 48) #7
  %add3325.i = add i64 %or.i4700.i, %add3304.i
  %xor3329.i = xor i64 %add3325.i, %or.i4699.i
  %or.i4701.i = tail call i64 @llvm.fshl.i64(i64 %xor3329.i, i64 %xor3329.i, i64 1) #7
  %add3337.i = add i64 %add3178.i, %31
  %add3340.i = add i64 %add3337.i, %or.i4685.i
  %xor3344.i = xor i64 %add3340.i, %or.i4692.i
  %or.i4702.i = tail call i64 @llvm.fshl.i64(i64 %xor3344.i, i64 %xor3344.i, i64 32) #7
  %add3349.i = add i64 %or.i4702.i, %add3277.i
  %xor3353.i = xor i64 %add3349.i, %or.i4685.i
  %or.i4703.i = tail call i64 @llvm.fshl.i64(i64 %xor3353.i, i64 %xor3353.i, i64 40) #7
  %add3358.i = add i64 %add3340.i, %19
  %add3361.i = add i64 %add3358.i, %or.i4703.i
  %xor3365.i = xor i64 %add3361.i, %or.i4702.i
  %or.i4704.i = tail call i64 @llvm.fshl.i64(i64 %xor3365.i, i64 %xor3365.i, i64 48) #7
  %add3370.i = add i64 %or.i4704.i, %add3349.i
  %xor3374.i = xor i64 %add3370.i, %or.i4703.i
  %or.i4705.i = tail call i64 @llvm.fshl.i64(i64 %xor3374.i, i64 %xor3374.i, i64 1) #7
  %add3382.i = add i64 %add3223.i, %28
  %add3385.i = add i64 %add3382.i, %or.i4689.i
  %xor3389.i = xor i64 %add3385.i, %or.i4696.i
  %or.i4706.i = tail call i64 @llvm.fshl.i64(i64 %xor3389.i, i64 %xor3389.i, i64 32) #7
  %add3394.i = add i64 %or.i4706.i, %add3142.i
  %xor3398.i = xor i64 %add3394.i, %or.i4689.i
  %or.i4707.i = tail call i64 @llvm.fshl.i64(i64 %xor3398.i, i64 %xor3398.i, i64 40) #7
  %add3403.i = add i64 %add3385.i, %25
  %add3406.i = add i64 %add3403.i, %or.i4707.i
  %xor3410.i = xor i64 %add3406.i, %or.i4706.i
  %or.i4708.i = tail call i64 @llvm.fshl.i64(i64 %xor3410.i, i64 %xor3410.i, i64 48) #7
  %add3415.i = add i64 %or.i4708.i, %add3394.i
  %xor3419.i = xor i64 %add3415.i, %or.i4707.i
  %or.i4709.i = tail call i64 @llvm.fshl.i64(i64 %xor3419.i, i64 %xor3419.i, i64 1) #7
  %add3427.i = add i64 %add3268.i, %10
  %add3430.i = add i64 %add3427.i, %or.i4693.i
  %xor3434.i = xor i64 %add3430.i, %or.i4684.i
  %or.i4710.i = tail call i64 @llvm.fshl.i64(i64 %xor3434.i, i64 %xor3434.i, i64 32) #7
  %add3439.i = add i64 %or.i4710.i, %add3187.i
  %xor3443.i = xor i64 %add3439.i, %or.i4693.i
  %or.i4711.i = tail call i64 @llvm.fshl.i64(i64 %xor3443.i, i64 %xor3443.i, i64 40) #7
  %add3448.i = add i64 %add3430.i, %22
  %add3451.i = add i64 %add3448.i, %or.i4711.i
  %xor3455.i = xor i64 %add3451.i, %or.i4710.i
  %or.i4712.i = tail call i64 @llvm.fshl.i64(i64 %xor3455.i, i64 %xor3455.i, i64 48) #7
  %add3460.i = add i64 %or.i4712.i, %add3439.i
  %xor3464.i = xor i64 %add3460.i, %or.i4711.i
  %or.i4713.i = tail call i64 @llvm.fshl.i64(i64 %xor3464.i, i64 %xor3464.i, i64 1) #7
  %add3472.i = add i64 %add3316.i, %52
  %add3475.i = add i64 %add3472.i, %or.i4705.i
  %xor3479.i = xor i64 %add3475.i, %or.i4712.i
  %or.i4714.i = tail call i64 @llvm.fshl.i64(i64 %xor3479.i, i64 %xor3479.i, i64 32) #7
  %add3484.i = add i64 %or.i4714.i, %add3415.i
  %xor3488.i = xor i64 %add3484.i, %or.i4705.i
  %or.i4715.i = tail call i64 @llvm.fshl.i64(i64 %xor3488.i, i64 %xor3488.i, i64 40) #7
  %add3493.i = add i64 %add3475.i, %40
  %add3496.i = add i64 %add3493.i, %or.i4715.i
  %xor3500.i = xor i64 %add3496.i, %or.i4714.i
  %or.i4716.i = tail call i64 @llvm.fshl.i64(i64 %xor3500.i, i64 %xor3500.i, i64 48) #7
  %add3505.i = add i64 %or.i4716.i, %add3484.i
  %xor3509.i = xor i64 %add3505.i, %or.i4715.i
  %or.i4717.i = tail call i64 @llvm.fshl.i64(i64 %xor3509.i, i64 %xor3509.i, i64 1) #7
  %add3517.i = add i64 %add3361.i, %34
  %add3520.i = add i64 %add3517.i, %or.i4709.i
  %xor3524.i = xor i64 %add3520.i, %or.i4700.i
  %or.i4718.i = tail call i64 @llvm.fshl.i64(i64 %xor3524.i, i64 %xor3524.i, i64 32) #7
  %add3529.i = add i64 %or.i4718.i, %add3460.i
  %xor3533.i = xor i64 %add3529.i, %or.i4709.i
  %or.i4719.i = tail call i64 @llvm.fshl.i64(i64 %xor3533.i, i64 %xor3533.i, i64 40) #7
  %add3538.i = add i64 %add3520.i, %49
  %add3541.i = add i64 %add3538.i, %or.i4719.i
  %xor3545.i = xor i64 %add3541.i, %or.i4718.i
  %or.i4720.i = tail call i64 @llvm.fshl.i64(i64 %xor3545.i, i64 %xor3545.i, i64 48) #7
  %add3550.i = add i64 %or.i4720.i, %add3529.i
  %xor3554.i = xor i64 %add3550.i, %or.i4719.i
  %or.i4721.i = tail call i64 @llvm.fshl.i64(i64 %xor3554.i, i64 %xor3554.i, i64 1) #7
  %add3562.i = add i64 %add3406.i, %16
  %add3565.i = add i64 %add3562.i, %or.i4713.i
  %xor3569.i = xor i64 %add3565.i, %or.i4704.i
  %or.i4722.i = tail call i64 @llvm.fshl.i64(i64 %xor3569.i, i64 %xor3569.i, i64 32) #7
  %add3574.i = add i64 %or.i4722.i, %add3325.i
  %xor3578.i = xor i64 %add3574.i, %or.i4713.i
  %or.i4723.i = tail call i64 @llvm.fshl.i64(i64 %xor3578.i, i64 %xor3578.i, i64 40) #7
  %add3583.i = add i64 %add3565.i, %43
  %add3586.i = add i64 %add3583.i, %or.i4723.i
  %xor3590.i = xor i64 %add3586.i, %or.i4722.i
  %or.i4724.i = tail call i64 @llvm.fshl.i64(i64 %xor3590.i, i64 %xor3590.i, i64 48) #7
  %add3595.i = add i64 %or.i4724.i, %add3574.i
  %xor3599.i = xor i64 %add3595.i, %or.i4723.i
  %or.i4725.i = tail call i64 @llvm.fshl.i64(i64 %xor3599.i, i64 %xor3599.i, i64 1) #7
  %add3607.i = add i64 %add3451.i, %46
  %add3610.i = add i64 %add3607.i, %or.i4701.i
  %xor3614.i = xor i64 %add3610.i, %or.i4708.i
  %or.i4726.i = tail call i64 @llvm.fshl.i64(i64 %xor3614.i, i64 %xor3614.i, i64 32) #7
  %add3619.i = add i64 %or.i4726.i, %add3370.i
  %xor3623.i = xor i64 %add3619.i, %or.i4701.i
  %or.i4727.i = tail call i64 @llvm.fshl.i64(i64 %xor3623.i, i64 %xor3623.i, i64 40) #7
  %add3628.i = add i64 %add3610.i, %7
  %add3631.i = add i64 %add3628.i, %or.i4727.i
  %xor3635.i = xor i64 %add3631.i, %or.i4726.i
  %or.i4728.i = tail call i64 @llvm.fshl.i64(i64 %xor3635.i, i64 %xor3635.i, i64 48) #7
  %add3640.i = add i64 %or.i4728.i, %add3619.i
  %xor3644.i = xor i64 %add3640.i, %or.i4727.i
  %or.i4729.i = tail call i64 @llvm.fshl.i64(i64 %xor3644.i, i64 %xor3644.i, i64 1) #7
  %add3655.i = add i64 %add3496.i, %7
  %add3658.i = add i64 %add3655.i, %or.i4729.i
  %xor3662.i = xor i64 %add3658.i, %or.i4720.i
  %or.i4730.i = tail call i64 @llvm.fshl.i64(i64 %xor3662.i, i64 %xor3662.i, i64 32) #7
  %add3667.i = add i64 %or.i4730.i, %add3595.i
  %xor3671.i = xor i64 %add3667.i, %or.i4729.i
  %or.i4731.i = tail call i64 @llvm.fshl.i64(i64 %xor3671.i, i64 %xor3671.i, i64 40) #7
  %add3676.i = add i64 %add3658.i, %10
  %add3679.i = add i64 %add3676.i, %or.i4731.i
  %xor3683.i = xor i64 %add3679.i, %or.i4730.i
  %or.i4732.i = tail call i64 @llvm.fshl.i64(i64 %xor3683.i, i64 %xor3683.i, i64 48) #7
  %add3688.i = add i64 %or.i4732.i, %add3667.i
  %xor3692.i = xor i64 %add3688.i, %or.i4731.i
  %or.i4733.i = tail call i64 @llvm.fshl.i64(i64 %xor3692.i, i64 %xor3692.i, i64 1) #7
  %add3700.i = add i64 %add3541.i, %13
  %add3703.i = add i64 %add3700.i, %or.i4717.i
  %xor3707.i = xor i64 %add3703.i, %or.i4724.i
  %or.i4734.i = tail call i64 @llvm.fshl.i64(i64 %xor3707.i, i64 %xor3707.i, i64 32) #7
  %add3712.i = add i64 %or.i4734.i, %add3640.i
  %xor3716.i = xor i64 %add3712.i, %or.i4717.i
  %or.i4735.i = tail call i64 @llvm.fshl.i64(i64 %xor3716.i, i64 %xor3716.i, i64 40) #7
  %add3721.i = add i64 %add3703.i, %16
  %add3724.i = add i64 %add3721.i, %or.i4735.i
  %xor3728.i = xor i64 %add3724.i, %or.i4734.i
  %or.i4736.i = tail call i64 @llvm.fshl.i64(i64 %xor3728.i, i64 %xor3728.i, i64 48) #7
  %add3733.i = add i64 %or.i4736.i, %add3712.i
  %xor3737.i = xor i64 %add3733.i, %or.i4735.i
  %or.i4737.i = tail call i64 @llvm.fshl.i64(i64 %xor3737.i, i64 %xor3737.i, i64 1) #7
  %add3745.i = add i64 %add3586.i, %19
  %add3748.i = add i64 %add3745.i, %or.i4721.i
  %xor3752.i = xor i64 %add3748.i, %or.i4728.i
  %or.i4738.i = tail call i64 @llvm.fshl.i64(i64 %xor3752.i, i64 %xor3752.i, i64 32) #7
  %add3757.i = add i64 %or.i4738.i, %add3505.i
  %xor3761.i = xor i64 %add3757.i, %or.i4721.i
  %or.i4739.i = tail call i64 @llvm.fshl.i64(i64 %xor3761.i, i64 %xor3761.i, i64 40) #7
  %add3766.i = add i64 %add3748.i, %22
  %add3769.i = add i64 %add3766.i, %or.i4739.i
  %xor3773.i = xor i64 %add3769.i, %or.i4738.i
  %or.i4740.i = tail call i64 @llvm.fshl.i64(i64 %xor3773.i, i64 %xor3773.i, i64 48) #7
  %add3778.i = add i64 %or.i4740.i, %add3757.i
  %xor3782.i = xor i64 %add3778.i, %or.i4739.i
  %or.i4741.i = tail call i64 @llvm.fshl.i64(i64 %xor3782.i, i64 %xor3782.i, i64 1) #7
  %add3790.i = add i64 %add3631.i, %25
  %add3793.i = add i64 %add3790.i, %or.i4725.i
  %xor3797.i = xor i64 %add3793.i, %or.i4716.i
  %or.i4742.i = tail call i64 @llvm.fshl.i64(i64 %xor3797.i, i64 %xor3797.i, i64 32) #7
  %add3802.i = add i64 %or.i4742.i, %add3550.i
  %xor3806.i = xor i64 %add3802.i, %or.i4725.i
  %or.i4743.i = tail call i64 @llvm.fshl.i64(i64 %xor3806.i, i64 %xor3806.i, i64 40) #7
  %add3811.i = add i64 %add3793.i, %28
  %add3814.i = add i64 %add3811.i, %or.i4743.i
  %xor3818.i = xor i64 %add3814.i, %or.i4742.i
  %or.i4744.i = tail call i64 @llvm.fshl.i64(i64 %xor3818.i, i64 %xor3818.i, i64 48) #7
  %add3823.i = add i64 %or.i4744.i, %add3802.i
  %xor3827.i = xor i64 %add3823.i, %or.i4743.i
  %or.i4745.i = tail call i64 @llvm.fshl.i64(i64 %xor3827.i, i64 %xor3827.i, i64 1) #7
  %add3835.i = add i64 %add3679.i, %31
  %add3838.i = add i64 %add3835.i, %or.i4737.i
  %xor3842.i = xor i64 %add3838.i, %or.i4744.i
  %or.i4746.i = tail call i64 @llvm.fshl.i64(i64 %xor3842.i, i64 %xor3842.i, i64 32) #7
  %add3847.i = add i64 %or.i4746.i, %add3778.i
  %xor3851.i = xor i64 %add3847.i, %or.i4737.i
  %or.i4747.i = tail call i64 @llvm.fshl.i64(i64 %xor3851.i, i64 %xor3851.i, i64 40) #7
  %add3856.i = add i64 %add3838.i, %34
  %add3859.i = add i64 %add3856.i, %or.i4747.i
  %xor3863.i = xor i64 %add3859.i, %or.i4746.i
  %or.i4748.i = tail call i64 @llvm.fshl.i64(i64 %xor3863.i, i64 %xor3863.i, i64 48) #7
  %add3868.i = add i64 %or.i4748.i, %add3847.i
  %xor3872.i = xor i64 %add3868.i, %or.i4747.i
  %or.i4749.i = tail call i64 @llvm.fshl.i64(i64 %xor3872.i, i64 %xor3872.i, i64 1) #7
  %add3880.i = add i64 %add3724.i, %37
  %add3883.i = add i64 %add3880.i, %or.i4741.i
  %xor3887.i = xor i64 %add3883.i, %or.i4732.i
  %or.i4750.i = tail call i64 @llvm.fshl.i64(i64 %xor3887.i, i64 %xor3887.i, i64 32) #7
  %add3892.i = add i64 %or.i4750.i, %add3823.i
  %xor3896.i = xor i64 %add3892.i, %or.i4741.i
  %or.i4751.i = tail call i64 @llvm.fshl.i64(i64 %xor3896.i, i64 %xor3896.i, i64 40) #7
  %add3901.i = add i64 %add3883.i, %40
  %add3904.i = add i64 %add3901.i, %or.i4751.i
  %xor3908.i = xor i64 %add3904.i, %or.i4750.i
  %or.i4752.i = tail call i64 @llvm.fshl.i64(i64 %xor3908.i, i64 %xor3908.i, i64 48) #7
  %add3913.i = add i64 %or.i4752.i, %add3892.i
  %xor3917.i = xor i64 %add3913.i, %or.i4751.i
  %or.i4753.i = tail call i64 @llvm.fshl.i64(i64 %xor3917.i, i64 %xor3917.i, i64 1) #7
  %add3925.i = add i64 %add3769.i, %43
  %add3928.i = add i64 %add3925.i, %or.i4745.i
  %xor3932.i = xor i64 %add3928.i, %or.i4736.i
  %or.i4754.i = tail call i64 @llvm.fshl.i64(i64 %xor3932.i, i64 %xor3932.i, i64 32) #7
  %add3937.i = add i64 %or.i4754.i, %add3688.i
  %xor3941.i = xor i64 %add3937.i, %or.i4745.i
  %or.i4755.i = tail call i64 @llvm.fshl.i64(i64 %xor3941.i, i64 %xor3941.i, i64 40) #7
  %add3946.i = add i64 %add3928.i, %46
  %add3949.i = add i64 %add3946.i, %or.i4755.i
  %xor3953.i = xor i64 %add3949.i, %or.i4754.i
  %or.i4756.i = tail call i64 @llvm.fshl.i64(i64 %xor3953.i, i64 %xor3953.i, i64 48) #7
  %add3958.i = add i64 %or.i4756.i, %add3937.i
  %xor3962.i = xor i64 %add3958.i, %or.i4755.i
  %or.i4757.i = tail call i64 @llvm.fshl.i64(i64 %xor3962.i, i64 %xor3962.i, i64 1) #7
  %add3970.i = add i64 %add3814.i, %49
  %add3973.i = add i64 %add3970.i, %or.i4733.i
  %xor3977.i = xor i64 %add3973.i, %or.i4740.i
  %or.i4758.i = tail call i64 @llvm.fshl.i64(i64 %xor3977.i, i64 %xor3977.i, i64 32) #7
  %add3982.i = add i64 %or.i4758.i, %add3733.i
  %xor3986.i = xor i64 %add3982.i, %or.i4733.i
  %or.i4759.i = tail call i64 @llvm.fshl.i64(i64 %xor3986.i, i64 %xor3986.i, i64 40) #7
  %add3991.i = add i64 %add3973.i, %52
  %add3994.i = add i64 %add3991.i, %or.i4759.i
  %xor3998.i = xor i64 %add3994.i, %or.i4758.i
  %or.i4760.i = tail call i64 @llvm.fshl.i64(i64 %xor3998.i, i64 %xor3998.i, i64 48) #7
  %add4003.i = add i64 %or.i4760.i, %add3982.i
  %xor4007.i = xor i64 %add4003.i, %or.i4759.i
  %or.i4761.i = tail call i64 @llvm.fshl.i64(i64 %xor4007.i, i64 %xor4007.i, i64 1) #7
  %add4018.i = add i64 %add3859.i, %49
  %add4021.i = add i64 %add4018.i, %or.i4761.i
  %xor4025.i = xor i64 %add4021.i, %or.i4752.i
  %or.i4762.i = tail call i64 @llvm.fshl.i64(i64 %xor4025.i, i64 %xor4025.i, i64 32) #7
  %add4030.i = add i64 %or.i4762.i, %add3958.i
  %xor4034.i = xor i64 %add4030.i, %or.i4761.i
  %or.i4763.i = tail call i64 @llvm.fshl.i64(i64 %xor4034.i, i64 %xor4034.i, i64 40) #7
  %add4039.i = add i64 %add4021.i, %37
  %add4042.i = add i64 %add4039.i, %or.i4763.i
  %xor4046.i = xor i64 %add4042.i, %or.i4762.i
  %or.i4764.i = tail call i64 @llvm.fshl.i64(i64 %xor4046.i, i64 %xor4046.i, i64 48) #7
  %add4051.i = add i64 %or.i4764.i, %add4030.i
  %xor4055.i = xor i64 %add4051.i, %or.i4763.i
  %or.i4765.i = tail call i64 @llvm.fshl.i64(i64 %xor4055.i, i64 %xor4055.i, i64 1) #7
  %add4063.i = add i64 %add3904.i, %19
  %add4066.i = add i64 %add4063.i, %or.i4749.i
  %xor4070.i = xor i64 %add4066.i, %or.i4756.i
  %or.i4766.i = tail call i64 @llvm.fshl.i64(i64 %xor4070.i, i64 %xor4070.i, i64 32) #7
  %add4075.i = add i64 %or.i4766.i, %add4003.i
  %xor4079.i = xor i64 %add4075.i, %or.i4749.i
  %or.i4767.i = tail call i64 @llvm.fshl.i64(i64 %xor4079.i, i64 %xor4079.i, i64 40) #7
  %add4084.i = add i64 %add4066.i, %31
  %add4087.i = add i64 %add4084.i, %or.i4767.i
  %xor4091.i = xor i64 %add4087.i, %or.i4766.i
  %or.i4768.i = tail call i64 @llvm.fshl.i64(i64 %xor4091.i, i64 %xor4091.i, i64 48) #7
  %add4096.i = add i64 %or.i4768.i, %add4075.i
  %xor4100.i = xor i64 %add4096.i, %or.i4767.i
  %or.i4769.i = tail call i64 @llvm.fshl.i64(i64 %xor4100.i, i64 %xor4100.i, i64 1) #7
  %add4108.i = add i64 %add3949.i, %34
  %add4111.i = add i64 %add4108.i, %or.i4753.i
  %xor4115.i = xor i64 %add4111.i, %or.i4760.i
  %or.i4770.i = tail call i64 @llvm.fshl.i64(i64 %xor4115.i, i64 %xor4115.i, i64 32) #7
  %add4120.i = add i64 %or.i4770.i, %add3868.i
  %xor4124.i = xor i64 %add4120.i, %or.i4753.i
  %or.i4771.i = tail call i64 @llvm.fshl.i64(i64 %xor4124.i, i64 %xor4124.i, i64 40) #7
  %add4129.i = add i64 %add4111.i, %52
  %add4132.i = add i64 %add4129.i, %or.i4771.i
  %xor4136.i = xor i64 %add4132.i, %or.i4770.i
  %or.i4772.i = tail call i64 @llvm.fshl.i64(i64 %xor4136.i, i64 %xor4136.i, i64 48) #7
  %add4141.i = add i64 %or.i4772.i, %add4120.i
  %xor4145.i = xor i64 %add4141.i, %or.i4771.i
  %or.i4773.i = tail call i64 @llvm.fshl.i64(i64 %xor4145.i, i64 %xor4145.i, i64 1) #7
  %add4153.i = add i64 %add3994.i, %46
  %add4156.i = add i64 %add4153.i, %or.i4757.i
  %xor4160.i = xor i64 %add4156.i, %or.i4748.i
  %or.i4774.i = tail call i64 @llvm.fshl.i64(i64 %xor4160.i, i64 %xor4160.i, i64 32) #7
  %add4165.i = add i64 %or.i4774.i, %add3913.i
  %xor4169.i = xor i64 %add4165.i, %or.i4757.i
  %or.i4775.i = tail call i64 @llvm.fshl.i64(i64 %xor4169.i, i64 %xor4169.i, i64 40) #7
  %add4174.i = add i64 %add4156.i, %25
  %add4177.i = add i64 %add4174.i, %or.i4775.i
  %xor4181.i = xor i64 %add4177.i, %or.i4774.i
  %or.i4776.i = tail call i64 @llvm.fshl.i64(i64 %xor4181.i, i64 %xor4181.i, i64 48) #7
  %add4186.i = add i64 %or.i4776.i, %add4165.i
  %xor4190.i = xor i64 %add4186.i, %or.i4775.i
  %or.i4777.i = tail call i64 @llvm.fshl.i64(i64 %xor4190.i, i64 %xor4190.i, i64 1) #7
  %add4198.i = add i64 %add4042.i, %10
  %add4201.i = add i64 %add4198.i, %or.i4769.i
  %xor4205.i = xor i64 %add4201.i, %or.i4776.i
  %or.i4778.i = tail call i64 @llvm.fshl.i64(i64 %xor4205.i, i64 %xor4205.i, i64 32) #7
  %add4210.i = add i64 %or.i4778.i, %add4141.i
  %xor4214.i = xor i64 %add4210.i, %or.i4769.i
  %or.i4779.i = tail call i64 @llvm.fshl.i64(i64 %xor4214.i, i64 %xor4214.i, i64 40) #7
  %add4219.i = add i64 %add4201.i, %43
  %add4222.i = add i64 %add4219.i, %or.i4779.i
  %78 = ptrtoint ptr %v.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %add4222.i, ptr %v.i, align 8
  %xor4226.i = xor i64 %add4222.i, %or.i4778.i
  %or.i4780.i = tail call i64 @llvm.fshl.i64(i64 %xor4226.i, i64 %xor4226.i, i64 48) #7
  %79 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %or.i4780.i, ptr %arrayidx25.i, align 8
  %add4231.i = add i64 %or.i4780.i, %add4210.i
  %80 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %add4231.i, ptr %arrayidx11.i, align 8
  %xor4235.i = xor i64 %add4231.i, %or.i4779.i
  %or.i4781.i = tail call i64 @llvm.fshl.i64(i64 %xor4235.i, i64 %xor4235.i, i64 1) #7
  %81 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %or.i4781.i, ptr %arrayidx69.i, align 8
  %add4243.i = add i64 %add4087.i, %7
  %add4246.i = add i64 %add4243.i, %or.i4773.i
  %xor4250.i = xor i64 %add4246.i, %or.i4764.i
  %or.i4782.i = tail call i64 @llvm.fshl.i64(i64 %xor4250.i, i64 %xor4250.i, i64 32) #7
  %add4255.i = add i64 %or.i4782.i, %add4186.i
  %xor4259.i = xor i64 %add4255.i, %or.i4773.i
  %or.i4783.i = tail call i64 @llvm.fshl.i64(i64 %xor4259.i, i64 %xor4259.i, i64 40) #7
  %add4264.i = add i64 %add4246.i, %13
  %add4267.i = add i64 %add4264.i, %or.i4783.i
  %82 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %add4267.i, ptr %arrayidx68.i, align 8
  %xor4271.i = xor i64 %add4267.i, %or.i4782.i
  %or.i4784.i = tail call i64 @llvm.fshl.i64(i64 %xor4271.i, i64 %xor4271.i, i64 48) #7
  %83 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %or.i4784.i, ptr %arrayidx14.i, align 8
  %add4276.i = add i64 %or.i4784.i, %add4255.i
  %84 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %add4276.i, ptr %arrayidx12.i, align 8
  %xor4280.i = xor i64 %add4276.i, %or.i4783.i
  %or.i4785.i = tail call i64 @llvm.fshl.i64(i64 %xor4280.i, i64 %xor4280.i, i64 1) #7
  %85 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %or.i4785.i, ptr %arrayidx114.i, align 8
  %add4288.i = add i64 %add4132.i, %40
  %add4291.i = add i64 %add4288.i, %or.i4777.i
  %xor4295.i = xor i64 %add4291.i, %or.i4768.i
  %or.i4786.i = tail call i64 @llvm.fshl.i64(i64 %xor4295.i, i64 %xor4295.i, i64 32) #7
  %add4300.i = add i64 %or.i4786.i, %add4051.i
  %xor4304.i = xor i64 %add4300.i, %or.i4777.i
  %or.i4787.i = tail call i64 @llvm.fshl.i64(i64 %xor4304.i, i64 %xor4304.i, i64 40) #7
  %add4309.i = add i64 %add4291.i, %28
  %add4312.i = add i64 %add4309.i, %or.i4787.i
  %86 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %add4312.i, ptr %arrayidx113.i, align 8
  %xor4316.i = xor i64 %add4312.i, %or.i4786.i
  %or.i4788.i = tail call i64 @llvm.fshl.i64(i64 %xor4316.i, i64 %xor4316.i, i64 48) #7
  %87 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %or.i4788.i, ptr %arrayidx18.i, align 8
  %add4321.i = add i64 %or.i4788.i, %add4300.i
  %88 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %add4321.i, ptr %arrayidx9.i, align 8
  %xor4325.i = xor i64 %add4321.i, %or.i4787.i
  %or.i4789.i = tail call i64 @llvm.fshl.i64(i64 %xor4325.i, i64 %xor4325.i, i64 1) #7
  %89 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %or.i4789.i, ptr %arrayidx159.i, align 8
  %add4333.i = add i64 %add4177.i, %22
  %add4336.i = add i64 %add4333.i, %or.i4765.i
  %xor4340.i = xor i64 %add4336.i, %or.i4772.i
  %or.i4790.i = tail call i64 @llvm.fshl.i64(i64 %xor4340.i, i64 %xor4340.i, i64 32) #7
  %add4345.i = add i64 %or.i4790.i, %add4096.i
  %xor4349.i = xor i64 %add4345.i, %or.i4765.i
  %or.i4791.i = tail call i64 @llvm.fshl.i64(i64 %xor4349.i, i64 %xor4349.i, i64 40) #7
  %add4354.i = add i64 %add4336.i, %16
  %add4357.i = add i64 %add4354.i, %or.i4791.i
  %90 = ptrtoint ptr %arrayidx158.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %add4357.i, ptr %arrayidx158.i, align 8
  %xor4361.i = xor i64 %add4357.i, %or.i4790.i
  %or.i4792.i = tail call i64 @llvm.fshl.i64(i64 %xor4361.i, i64 %xor4361.i, i64 48) #7
  %91 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %or.i4792.i, ptr %arrayidx21.i, align 8
  %add4366.i = add i64 %or.i4792.i, %add4345.i
  %92 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %add4366.i, ptr %arrayidx10.i, align 8
  %xor4370.i = xor i64 %add4366.i, %or.i4791.i
  %or.i4793.i = tail call i64 @llvm.fshl.i64(i64 %xor4370.i, i64 %xor4370.i, i64 1) #7
  %93 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %or.i4793.i, ptr %arrayidx28.i, align 8
  br label %for.body4379.i

for.body4379.i:                                   ; preds = %for.body4379.i.for.body4379.i_crit_edge, %do.body
  %i.24796.i = phi i32 [ 0, %do.body ], [ %inc4390.i, %for.body4379.i.for.body4379.i_crit_edge ]
  %arrayidx4381.i = getelementptr [8 x i64], ptr %state, i32 0, i32 %i.24796.i
  %94 = ptrtoint ptr %arrayidx4381.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %arrayidx4381.i, align 8
  %arrayidx4382.i = getelementptr [16 x i64], ptr %v.i, i32 0, i32 %i.24796.i
  %96 = ptrtoint ptr %arrayidx4382.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %arrayidx4382.i, align 8
  %xor4383.i = xor i64 %97, %95
  %add4384.i = add nuw nsw i32 %i.24796.i, 8
  %arrayidx4385.i = getelementptr [16 x i64], ptr %v.i, i32 0, i32 %add4384.i
  %98 = ptrtoint ptr %arrayidx4385.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %arrayidx4385.i, align 8
  %xor4386.i = xor i64 %xor4383.i, %99
  store i64 %xor4386.i, ptr %arrayidx4381.i, align 8
  %inc4390.i = add nuw nsw i32 %i.24796.i, 1
  %exitcond.not.i = icmp eq i32 %inc4390.i, 8
  br i1 %exitcond.not.i, label %blake2b_compress_one_generic.exit, label %for.body4379.i.for.body4379.i_crit_edge, !llvm.loop !50

for.body4379.i.for.body4379.i_crit_edge:          ; preds = %for.body4379.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4379.i

blake2b_compress_one_generic.exit:                ; preds = %for.body4379.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %v.i) #7
  %add.ptr = getelementptr i8, ptr %block.addr.0, i32 128
  %dec = add i32 %nblocks.addr.0, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end, label %blake2b_compress_one_generic.exit.do.body_crit_edge

blake2b_compress_one_generic.exit.do.body_crit_edge: ; preds = %blake2b_compress_one_generic.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %blake2b_compress_one_generic.exit
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @blake2b_mod_fini() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @blake2b_algs, i32 noundef 4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shashes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @blake2b_mod_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_shashes(ptr noundef nonnull @blake2b_algs, i32 noundef 4) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypto_blake2b_init(ptr nocapture noundef %desc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %digestsize.i, align 128
  %keylen = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1, i32 1, i32 60
  %6 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %keylen, align 4
  %shl.i = shl i32 %7, 8
  %or.i = or i32 %5, %shl.i
  %or1.i = or i32 %or.i, 16842752
  %conv.i = zext i32 %or1.i to i64
  %xor.i = xor i64 %conv.i, 7640891576956012808
  %8 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %xor.i, ptr %__ctx.i, align 8
  %arrayidx3.i = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %9 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -4942790177534073029, ptr %arrayidx3.i, align 8
  %arrayidx5.i = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %10 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 4354685564936845355, ptr %arrayidx5.i, align 8
  %arrayidx7.i = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %11 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -6534734903238641935, ptr %arrayidx7.i, align 8
  %arrayidx9.i = getelementptr %struct.shash_desc, ptr %desc, i32 5
  %12 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 5840696475078001361, ptr %arrayidx9.i, align 8
  %arrayidx11.i = getelementptr %struct.shash_desc, ptr %desc, i32 6
  %13 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -7276294671716946913, ptr %arrayidx11.i, align 8
  %arrayidx13.i = getelementptr %struct.shash_desc, ptr %desc, i32 7
  %14 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 2270897969802886507, ptr %arrayidx13.i, align 8
  %arrayidx15.i = getelementptr %struct.shash_desc, ptr %desc, i32 8
  %15 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 6620516959819538809, ptr %arrayidx15.i, align 8
  %t.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 9
  %buflen.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 29
  %16 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %buflen.i, align 8
  %outlen22.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 29, i32 1
  %17 = call ptr @memset(ptr %t.i, i32 0, i32 32)
  %18 = ptrtoint ptr %outlen22.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %5, ptr %outlen22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.__blake2b_init.exit_crit_edge, label %if.then.i

entry.__blake2b_init.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__blake2b_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1
  %buf.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 13
  %19 = call ptr @memcpy(ptr %buf.i, ptr %__crt_ctx.i.i, i32 %7)
  %arrayidx24.i = getelementptr %struct.blake2b_state, ptr %__ctx.i, i32 0, i32 3, i32 %7
  %sub.i = sub i32 128, %7
  %20 = call ptr @memset(ptr %arrayidx24.i, i32 0, i32 %sub.i)
  %21 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 128, ptr %buflen.i, align 8
  br label %__blake2b_init.exit

__blake2b_init.exit:                              ; preds = %if.then.i, %entry.__blake2b_init.exit_crit_edge
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_blake2b_update_generic(ptr nocapture noundef %desc, ptr nocapture noundef readonly %in, i32 noundef %inlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %buflen.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 29
  %0 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buflen.i.i, align 8
  %sub.i.i = sub i32 128, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inlen)
  %tobool.not.i.i = icmp eq i32 %inlen, 0
  br i1 %tobool.not.i.i, label %entry.crypto_blake2b_update.exit_crit_edge, label %if.end.i.i, !prof !52

entry.crypto_blake2b_update.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %crypto_blake2b_update.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %inlen)
  %cmp.i.i = icmp ult i32 %sub.i.i, %inlen
  br i1 %cmp.i.i, label %if.then4.i.i, label %if.end.i.i.if.end11.i.i_crit_edge

if.end.i.i.if.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 13
  %add.ptr.i.i = getelementptr i8, ptr %buf.i.i, i32 %1
  %2 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %in, i32 %sub.i.i)
  tail call void @blake2b_compress_generic(ptr noundef %__ctx.i.i, ptr noundef %buf.i.i, i32 noundef 1, i32 noundef 128) #7
  %3 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %buflen.i.i, align 8
  %add.ptr9.i.i = getelementptr i8, ptr %in, i32 %sub.i.i
  %sub10.i.i = sub i32 %inlen, %sub.i.i
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then4.i.i, %if.end.i.i.if.end11.i.i_crit_edge
  %inlen.addr.0.i.i = phi i32 [ %sub10.i.i, %if.then4.i.i ], [ %inlen, %if.end.i.i.if.end11.i.i_crit_edge ]
  %in.addr.0.i.i = phi ptr [ %add.ptr9.i.i, %if.then4.i.i ], [ %in, %if.end.i.i.if.end11.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %inlen.addr.0.i.i)
  %cmp12.i.i = icmp ugt i32 %inlen.addr.0.i.i, 128
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end11.i.i.if.end21.i.i_crit_edge

if.end11.i.i.if.end21.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i.i

if.then13.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub14.i.i = add i32 %inlen.addr.0.i.i, 127
  %div1.i.i = lshr i32 %sub14.i.i, 7
  %sub15.i.i = add nsw i32 %div1.i.i, -1
  tail call void @blake2b_compress_generic(ptr noundef %__ctx.i.i, ptr noundef %in.addr.0.i.i, i32 noundef %sub15.i.i, i32 noundef 128) #7
  %mul.i.i = shl i32 %sub15.i.i, 7
  %add.ptr17.i.i = getelementptr i8, ptr %in.addr.0.i.i, i32 %mul.i.i
  %sub20.i.i = sub i32 %inlen.addr.0.i.i, %mul.i.i
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then13.i.i, %if.end11.i.i.if.end21.i.i_crit_edge
  %inlen.addr.1.i.i = phi i32 [ %sub20.i.i, %if.then13.i.i ], [ %inlen.addr.0.i.i, %if.end11.i.i.if.end21.i.i_crit_edge ]
  %in.addr.1.i.i = phi ptr [ %add.ptr17.i.i, %if.then13.i.i ], [ %in.addr.0.i.i, %if.end11.i.i.if.end21.i.i_crit_edge ]
  %buf22.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 13
  %4 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buflen.i.i, align 8
  %add.ptr25.i.i = getelementptr i8, ptr %buf22.i.i, i32 %5
  %6 = call ptr @memcpy(ptr %add.ptr25.i.i, ptr %in.addr.1.i.i, i32 %inlen.addr.1.i.i)
  %7 = load i32, ptr %buflen.i.i, align 8
  %add27.i.i = add i32 %7, %inlen.addr.1.i.i
  store i32 %add27.i.i, ptr %buflen.i.i, align 8
  br label %crypto_blake2b_update.exit

crypto_blake2b_update.exit:                       ; preds = %if.end21.i.i, %entry.crypto_blake2b_update.exit_crit_edge
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_blake2b_final_generic(ptr nocapture noundef %desc, ptr nocapture noundef writeonly %out) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %f.i.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 11
  %0 = ptrtoint ptr %f.i.i.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %f.i.i.i, align 8
  %buf.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 13
  %buflen.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 29
  %1 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %buflen.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %buf.i.i, i32 %2
  %sub.i.i = sub i32 128, %2
  %3 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub.i.i)
  %4 = load i32, ptr %buflen.i.i, align 8
  tail call void @blake2b_compress_generic(ptr noundef %__ctx.i.i, ptr noundef %buf.i.i, i32 noundef 1, i32 noundef %4) #7
  %5 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %__ctx.i.i, align 8
  %7 = tail call i64 @llvm.bswap.i64(i64 %6) #7
  %8 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %__ctx.i.i, align 8
  %arrayidx.1.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %9 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx.1.i.i, align 8
  %11 = tail call i64 @llvm.bswap.i64(i64 %10) #7
  %12 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %arrayidx.1.i.i, align 8
  %arrayidx.2.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %13 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx.2.i.i, align 8
  %15 = tail call i64 @llvm.bswap.i64(i64 %14) #7
  %16 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %arrayidx.2.i.i, align 8
  %arrayidx.3.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %17 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.3.i.i, align 8
  %19 = tail call i64 @llvm.bswap.i64(i64 %18) #7
  %20 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx.3.i.i, align 8
  %arrayidx.4.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 5
  %21 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx.4.i.i, align 8
  %23 = tail call i64 @llvm.bswap.i64(i64 %22) #7
  %24 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %arrayidx.4.i.i, align 8
  %arrayidx.5.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 6
  %25 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx.5.i.i, align 8
  %27 = tail call i64 @llvm.bswap.i64(i64 %26) #7
  %28 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx.5.i.i, align 8
  %arrayidx.6.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 7
  %29 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx.6.i.i, align 8
  %31 = tail call i64 @llvm.bswap.i64(i64 %30) #7
  %32 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx.6.i.i, align 8
  %arrayidx.7.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 8
  %33 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx.7.i.i, align 8
  %35 = tail call i64 @llvm.bswap.i64(i64 %34) #7
  %36 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %arrayidx.7.i.i, align 8
  %outlen.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 29, i32 1
  %37 = ptrtoint ptr %outlen.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %outlen.i.i, align 4
  %39 = call ptr @memcpy(ptr %out, ptr %__ctx.i.i, i32 %38)
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypto_blake2b_setkey(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = add i32 %keylen, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %0)
  %1 = icmp ult i32 %0, -64
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 1
  %2 = call ptr @memcpy(ptr %__crt_ctx.i.i, ptr %key, i32 %keylen)
  %keylen3 = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 60
  %3 = ptrtoint ptr %keylen3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %keylen, ptr %keylen3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shashes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__ksymtab_blake2b_compress_generic, !1, !"__ksymtab_blake2b_compress_generic", i1 false, i1 false}
!1 = !{!"../crypto/blake2b_generic.c", i32 123, i32 1}
!2 = !{ptr @__initcall__kmod_blake2b_generic__173_174_blake2b_mod_init4, !3, !"__initcall__kmod_blake2b_generic__173_174_blake2b_mod_init4", i1 false, i1 false}
!3 = !{!"../crypto/blake2b_generic.c", i32 174, i32 1}
!4 = !{ptr @__exitcall_blake2b_mod_fini, !5, !"__exitcall_blake2b_mod_fini", i1 false, i1 false}
!5 = !{!"../crypto/blake2b_generic.c", i32 175, i32 1}
!6 = !{ptr @__UNIQUE_ID_author174, !7, !"__UNIQUE_ID_author174", i1 false, i1 false}
!7 = !{!"../crypto/blake2b_generic.c", i32 177, i32 1}
!8 = !{ptr @__UNIQUE_ID_description175, !9, !"__UNIQUE_ID_description175", i1 false, i1 false}
!9 = !{!"../crypto/blake2b_generic.c", i32 178, i32 1}
!10 = !{ptr @__UNIQUE_ID_file176, !11, !"__UNIQUE_ID_file176", i1 false, i1 false}
!11 = !{!"../crypto/blake2b_generic.c", i32 179, i32 1}
!12 = !{ptr @__UNIQUE_ID_license177, !11, !"__UNIQUE_ID_license177", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias_userspace178, !14, !"__UNIQUE_ID_alias_userspace178", i1 false, i1 false}
!14 = !{!"../crypto/blake2b_generic.c", i32 180, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias_crypto179, !14, !"__UNIQUE_ID_alias_crypto179", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias_userspace180, !17, !"__UNIQUE_ID_alias_userspace180", i1 false, i1 false}
!17 = !{!"../crypto/blake2b_generic.c", i32 181, i32 1}
!18 = !{ptr @__UNIQUE_ID_alias_crypto181, !17, !"__UNIQUE_ID_alias_crypto181", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_alias_userspace182, !20, !"__UNIQUE_ID_alias_userspace182", i1 false, i1 false}
!20 = !{!"../crypto/blake2b_generic.c", i32 182, i32 1}
!21 = !{ptr @__UNIQUE_ID_alias_crypto183, !20, !"__UNIQUE_ID_alias_crypto183", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_alias_userspace184, !23, !"__UNIQUE_ID_alias_userspace184", i1 false, i1 false}
!23 = !{!"../crypto/blake2b_generic.c", i32 183, i32 1}
!24 = !{ptr @__UNIQUE_ID_alias_crypto185, !23, !"__UNIQUE_ID_alias_crypto185", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_alias_userspace186, !26, !"__UNIQUE_ID_alias_userspace186", i1 false, i1 false}
!26 = !{!"../crypto/blake2b_generic.c", i32 184, i32 1}
!27 = !{ptr @__UNIQUE_ID_alias_crypto187, !26, !"__UNIQUE_ID_alias_crypto187", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_alias_userspace188, !29, !"__UNIQUE_ID_alias_userspace188", i1 false, i1 false}
!29 = !{!"../crypto/blake2b_generic.c", i32 185, i32 1}
!30 = !{ptr @__UNIQUE_ID_alias_crypto189, !29, !"__UNIQUE_ID_alias_crypto189", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_alias_userspace190, !32, !"__UNIQUE_ID_alias_userspace190", i1 false, i1 false}
!32 = !{!"../crypto/blake2b_generic.c", i32 186, i32 1}
!33 = !{ptr @__UNIQUE_ID_alias_crypto191, !32, !"__UNIQUE_ID_alias_crypto191", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_alias_userspace192, !35, !"__UNIQUE_ID_alias_userspace192", i1 false, i1 false}
!35 = !{!"../crypto/blake2b_generic.c", i32 187, i32 1}
!36 = !{ptr @__UNIQUE_ID_alias_crypto193, !35, !"__UNIQUE_ID_alias_crypto193", i1 false, i1 false}
!37 = distinct !{null, !38, !"blake2b_sigma", i1 false, i1 false}
!38 = !{!"../crypto/blake2b_generic.c", i32 25, i32 17}
!39 = !{ptr @blake2b_algs, !40, !"blake2b_algs", i1 false, i1 false}
!40 = !{!"../crypto/blake2b_generic.c", i32 153, i32 25}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!"branch_weights", i32 1, i32 2000}
