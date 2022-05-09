; ModuleID = '/llk/IR_all_yes/crypto/chacha_generic.c_pt.bc'
source_filename = "../crypto/chacha_generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.chacha_ctx = type { [8 x i32], i32 }
%struct.skcipher_walk = type { %union.anon.48, %union.anon.48, %struct.scatter_walk, i32, %struct.scatter_walk, i32, %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.anon.50 = type { ptr, ptr }

@algs = internal global [3 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @chacha20_setkey, ptr @crypto_chacha_crypt, ptr @crypto_chacha_crypt, ptr null, ptr null, i32 32, i32 32, i32 16, i32 64, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 36, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"chacha20\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"chacha20-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @chacha20_setkey, ptr @crypto_xchacha_crypt, ptr @crypto_xchacha_crypt, ptr null, ptr null, i32 32, i32 32, i32 32, i32 64, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 36, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"xchacha20\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xchacha20-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @chacha12_setkey, ptr @crypto_xchacha_crypt, ptr @crypto_xchacha_crypt, ptr null, ptr null, i32 32, i32 32, i32 32, i32 64, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 36, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"xchacha12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xchacha12-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }], align 128
@__initcall__kmod_chacha_generic__173_128_chacha_generic_mod_init4 = internal global ptr @chacha_generic_mod_init, section ".initcall4.init", align 4
@__exitcall_chacha_generic_mod_fini = internal global ptr @chacha_generic_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [42 x i8] c"chacha_generic.file=crypto/chacha_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [27 x i8] c"chacha_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author176 = internal constant [59 x i8] c"chacha_generic.author=Martin Willi <martin@strongswan.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description177 = internal constant [71 x i8] c"chacha_generic.description=ChaCha and XChaCha stream ciphers (generic)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace178 = internal constant [30 x i8] c"chacha_generic.alias=chacha20\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto179 = internal constant [37 x i8] c"chacha_generic.alias=crypto-chacha20\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace180 = internal constant [38 x i8] c"chacha_generic.alias=chacha20-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto181 = internal constant [45 x i8] c"chacha_generic.alias=crypto-chacha20-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace182 = internal constant [31 x i8] c"chacha_generic.alias=xchacha20\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto183 = internal constant [38 x i8] c"chacha_generic.alias=crypto-xchacha20\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace184 = internal constant [39 x i8] c"chacha_generic.alias=xchacha20-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto185 = internal constant [46 x i8] c"chacha_generic.alias=crypto-xchacha20-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace186 = internal constant [31 x i8] c"chacha_generic.alias=xchacha12\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto187 = internal constant [38 x i8] c"chacha_generic.alias=crypto-xchacha12\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace188 = internal constant [39 x i8] c"chacha_generic.alias=xchacha12-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto189 = internal constant [46 x i8] c"chacha_generic.alias=crypto-xchacha12-generic\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_alias_crypto179, ptr @__UNIQUE_ID_alias_crypto181, ptr @__UNIQUE_ID_alias_crypto183, ptr @__UNIQUE_ID_alias_crypto185, ptr @__UNIQUE_ID_alias_crypto187, ptr @__UNIQUE_ID_alias_crypto189, ptr @__UNIQUE_ID_alias_userspace178, ptr @__UNIQUE_ID_alias_userspace180, ptr @__UNIQUE_ID_alias_userspace182, ptr @__UNIQUE_ID_alias_userspace184, ptr @__UNIQUE_ID_alias_userspace186, ptr @__UNIQUE_ID_alias_userspace188, ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_description177, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_chacha_generic_mod_fini, ptr @__initcall__kmod_chacha_generic__173_128_chacha_generic_mod_init4, ptr @chacha_generic_mod_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @chacha_generic_mod_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @crypto_unregister_skciphers(ptr noundef nonnull @algs, i32 noundef 3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @chacha_generic_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_skciphers(ptr noundef nonnull @algs, i32 noundef 3) #6
  ret i32 %call
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @chacha20_setkey(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %key, i32 noundef %keysize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %keysize)
  %cmp.not.i = icmp eq i32 %keysize, 32
  br i1 %cmp.not.i, label %for.body.preheader.i, label %entry.chacha_setkey.exit_crit_edge

entry.chacha_setkey.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %chacha_setkey.exit

for.body.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %key, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %3 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %__crt_ctx.i.i.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %key, i32 4
  %4 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr.1.i, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  %arrayidx.1.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx.1.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %key, i32 8
  %8 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %add.ptr.2.i, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  %arrayidx.2.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx.2.i, align 4
  %add.ptr.3.i = getelementptr i8, ptr %key, i32 12
  %12 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr.3.i, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %arrayidx.3.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %15 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx.3.i, align 4
  %add.ptr.4.i = getelementptr i8, ptr %key, i32 16
  %16 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %add.ptr.4.i, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  %arrayidx.4.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %19 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx.4.i, align 4
  %add.ptr.5.i = getelementptr i8, ptr %key, i32 20
  %20 = ptrtoint ptr %add.ptr.5.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %add.ptr.5.i, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  %arrayidx.5.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 16
  %23 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx.5.i, align 4
  %add.ptr.6.i = getelementptr i8, ptr %key, i32 24
  %24 = ptrtoint ptr %add.ptr.6.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %add.ptr.6.i, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #6
  %arrayidx.6.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 20
  %27 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx.6.i, align 4
  %add.ptr.7.i = getelementptr i8, ptr %key, i32 28
  %28 = ptrtoint ptr %add.ptr.7.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %add.ptr.7.i, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #6
  %arrayidx.7.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 24
  %31 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx.7.i, align 4
  %nrounds4.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 28
  %32 = ptrtoint ptr %nrounds4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 20, ptr %nrounds4.i, align 4
  br label %chacha_setkey.exit

chacha_setkey.exit:                               ; preds = %for.body.preheader.i, %entry.chacha_setkey.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.body.preheader.i ], [ -22, %entry.chacha_setkey.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_chacha_crypt(ptr noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iv, align 4
  %call2 = tail call fastcc i32 @chacha_stream_xor(ptr noundef %req, ptr noundef %__crt_ctx.i.i, ptr noundef %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_xchacha_crypt(ptr noundef %req) #3 align 64 {
entry:
  %subctx = alloca %struct.chacha_ctx, align 4
  %state = alloca [16 x i32], align 4
  %real_iv = alloca [16 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %subctx) #6
  %2 = call ptr @memset(ptr %subctx, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %state) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %real_iv) #6
  %3 = getelementptr inbounds [16 x i8], ptr %real_iv, i32 0, i32 8
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iv, align 4
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1634760805, ptr %state, align 4
  %arrayidx1.i.i = getelementptr inbounds i32, ptr %state, i32 1
  %7 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 857760878, ptr %arrayidx1.i.i, align 4
  %arrayidx2.i.i = getelementptr inbounds i32, ptr %state, i32 2
  %8 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2036477234, ptr %arrayidx2.i.i, align 4
  %arrayidx3.i.i = getelementptr inbounds i32, ptr %state, i32 3
  %9 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1797285236, ptr %arrayidx3.i.i, align 4
  %10 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %__crt_ctx.i.i, align 4
  %arrayidx1.i = getelementptr inbounds i32, ptr %state, i32 4
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %1, i32 132
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr inbounds i32, ptr %state, i32 5
  %15 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx3.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %1, i32 136
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr inbounds i32, ptr %state, i32 6
  %18 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %1, i32 140
  %19 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr inbounds i32, ptr %state, i32 7
  %21 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr i8, ptr %1, i32 144
  %22 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr inbounds i32, ptr %state, i32 8
  %24 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx9.i, align 4
  %arrayidx10.i = getelementptr i8, ptr %1, i32 148
  %25 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx10.i, align 4
  %arrayidx11.i = getelementptr inbounds i32, ptr %state, i32 9
  %27 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx11.i, align 4
  %arrayidx12.i = getelementptr i8, ptr %1, i32 152
  %28 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx12.i, align 4
  %arrayidx13.i = getelementptr inbounds i32, ptr %state, i32 10
  %30 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx13.i, align 4
  %arrayidx14.i = getelementptr i8, ptr %1, i32 156
  %31 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx14.i, align 4
  %arrayidx15.i = getelementptr inbounds i32, ptr %state, i32 11
  %33 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx15.i, align 4
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %5, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  %arrayidx16.i = getelementptr inbounds i32, ptr %state, i32 12
  %37 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx16.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %5, i32 4
  %38 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %add.ptr17.i, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #6
  %arrayidx19.i = getelementptr inbounds i32, ptr %state, i32 13
  %41 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx19.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %5, i32 8
  %42 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %add.ptr20.i, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #6
  %arrayidx22.i = getelementptr inbounds i32, ptr %state, i32 14
  %45 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx22.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %5, i32 12
  %46 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %add.ptr23.i, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #6
  %arrayidx25.i = getelementptr inbounds i32, ptr %state, i32 15
  %49 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx25.i, align 4
  %nrounds = getelementptr i8, ptr %1, i32 160
  %50 = ptrtoint ptr %nrounds to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nrounds, align 4
  call void @hchacha_block_generic(ptr noundef nonnull %state, ptr noundef nonnull %subctx, i32 noundef %51) #6
  %52 = ptrtoint ptr %nrounds to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nrounds, align 4
  %nrounds7 = getelementptr inbounds %struct.chacha_ctx, ptr %subctx, i32 0, i32 1
  %54 = ptrtoint ptr %nrounds7 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %nrounds7, align 4
  %55 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iv, align 4
  %add.ptr = getelementptr i8, ptr %56, i32 24
  %57 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %58 = load i64, ptr %add.ptr, align 1
  %59 = ptrtoint ptr %real_iv to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %real_iv, align 8
  %add.ptr11 = getelementptr i8, ptr %56, i32 16
  %60 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %61 = load i64, ptr %add.ptr11, align 1
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %3, align 8
  %call13 = call fastcc i32 @chacha_stream_xor(ptr noundef %req, ptr noundef nonnull %subctx, ptr noundef nonnull %real_iv)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %real_iv) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %state) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %subctx) #6
  ret i32 %call13
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @chacha12_setkey(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %key, i32 noundef %keysize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %keysize)
  %cmp.not.i = icmp eq i32 %keysize, 32
  br i1 %cmp.not.i, label %for.body.preheader.i, label %entry.chacha_setkey.exit_crit_edge

entry.chacha_setkey.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %chacha_setkey.exit

for.body.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %key, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %3 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %__crt_ctx.i.i.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %key, i32 4
  %4 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr.1.i, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  %arrayidx.1.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx.1.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %key, i32 8
  %8 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %add.ptr.2.i, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  %arrayidx.2.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx.2.i, align 4
  %add.ptr.3.i = getelementptr i8, ptr %key, i32 12
  %12 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr.3.i, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %arrayidx.3.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %15 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx.3.i, align 4
  %add.ptr.4.i = getelementptr i8, ptr %key, i32 16
  %16 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %add.ptr.4.i, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  %arrayidx.4.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %19 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx.4.i, align 4
  %add.ptr.5.i = getelementptr i8, ptr %key, i32 20
  %20 = ptrtoint ptr %add.ptr.5.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %add.ptr.5.i, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  %arrayidx.5.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 16
  %23 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx.5.i, align 4
  %add.ptr.6.i = getelementptr i8, ptr %key, i32 24
  %24 = ptrtoint ptr %add.ptr.6.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %add.ptr.6.i, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #6
  %arrayidx.6.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 20
  %27 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx.6.i, align 4
  %add.ptr.7.i = getelementptr i8, ptr %key, i32 28
  %28 = ptrtoint ptr %add.ptr.7.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %add.ptr.7.i, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #6
  %arrayidx.7.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 24
  %31 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx.7.i, align 4
  %nrounds4.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 28
  %32 = ptrtoint ptr %nrounds4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 12, ptr %nrounds4.i, align 4
  br label %chacha_setkey.exit

chacha_setkey.exit:                               ; preds = %for.body.preheader.i, %entry.chacha_setkey.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.body.preheader.i ], [ -22, %entry.chacha_setkey.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chacha_stream_xor(ptr noundef %req, ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %iv) unnamed_addr #3 align 64 {
entry:
  %walk = alloca %struct.skcipher_walk, align 4
  %state = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #6
  %0 = call ptr @memset(ptr %walk, i32 255, i32 84)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %state) #6
  %call = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef %req, i1 noundef zeroext false) #6
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1634760805, ptr %state, align 4
  %arrayidx1.i.i = getelementptr inbounds i32, ptr %state, i32 1
  %2 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 857760878, ptr %arrayidx1.i.i, align 4
  %arrayidx2.i.i = getelementptr inbounds i32, ptr %state, i32 2
  %3 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2036477234, ptr %arrayidx2.i.i, align 4
  %arrayidx3.i.i = getelementptr inbounds i32, ptr %state, i32 3
  %4 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1797285236, ptr %arrayidx3.i.i, align 4
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctx, align 4
  %arrayidx1.i = getelementptr inbounds i32, ptr %state, i32 4
  %7 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr i32, ptr %ctx, i32 1
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr inbounds i32, ptr %state, i32 5
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx3.i, align 4
  %arrayidx4.i = getelementptr i32, ptr %ctx, i32 2
  %11 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr inbounds i32, ptr %state, i32 6
  %13 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %ctx, i32 3
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr inbounds i32, ptr %state, i32 7
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr i32, ptr %ctx, i32 4
  %17 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr inbounds i32, ptr %state, i32 8
  %19 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx9.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %ctx, i32 5
  %20 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx10.i, align 4
  %arrayidx11.i = getelementptr inbounds i32, ptr %state, i32 9
  %22 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx11.i, align 4
  %arrayidx12.i = getelementptr i32, ptr %ctx, i32 6
  %23 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx12.i, align 4
  %arrayidx13.i = getelementptr inbounds i32, ptr %state, i32 10
  %25 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx13.i, align 4
  %arrayidx14.i = getelementptr i32, ptr %ctx, i32 7
  %26 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx14.i, align 4
  %arrayidx15.i = getelementptr inbounds i32, ptr %state, i32 11
  %28 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx15.i, align 4
  %29 = ptrtoint ptr %iv to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %iv, align 1
  %31 = call i32 @llvm.bswap.i32(i32 %30) #6
  %arrayidx16.i = getelementptr inbounds i32, ptr %state, i32 12
  %32 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx16.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %iv, i32 4
  %33 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %add.ptr17.i, align 1
  %35 = call i32 @llvm.bswap.i32(i32 %34) #6
  %arrayidx19.i = getelementptr inbounds i32, ptr %state, i32 13
  %36 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx19.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %iv, i32 8
  %37 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %add.ptr20.i, align 1
  %39 = call i32 @llvm.bswap.i32(i32 %38) #6
  %arrayidx22.i = getelementptr inbounds i32, ptr %state, i32 14
  %40 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx22.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %iv, i32 12
  %41 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %add.ptr23.i, align 1
  %43 = call i32 @llvm.bswap.i32(i32 %42) #6
  %arrayidx25.i = getelementptr inbounds i32, ptr %state, i32 15
  %44 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx25.i, align 4
  %nbytes = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %45 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.not13 = icmp eq i32 %46, 0
  br i1 %cmp.not13, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %total = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 5
  %addr = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %addr6 = getelementptr inbounds %struct.anon.50, ptr %walk, i32 0, i32 1
  %nrounds = getelementptr inbounds %struct.chacha_ctx, ptr %ctx, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %47 = phi i32 [ %46, %while.body.lr.ph ], [ %59, %while.body.while.body_crit_edge ]
  %48 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %total, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp4 = icmp ult i32 %47, %49
  %and = and i32 %47, -64
  %spec.select = select i1 %cmp4, i32 %and, i32 %47
  %50 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %addr, align 4
  %52 = ptrtoint ptr %addr6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %addr6, align 4
  %54 = ptrtoint ptr %nrounds to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nrounds, align 4
  call void @chacha_crypt_generic(ptr noundef nonnull %state, ptr noundef %51, ptr noundef %53, i32 noundef %spec.select, i32 noundef %55) #6
  %56 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nbytes, align 4
  %sub = sub i32 %57, %spec.select
  %call8 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %sub) #6
  %58 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nbytes, align 4
  %cmp.not = icmp eq i32 %59, 0
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %err.0.lcssa = phi i32 [ %call, %entry.while.end_crit_edge ], [ %call8, %while.body.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %state) #6
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #6
  ret i32 %err.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_virt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @chacha_crypt_generic(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hchacha_block_generic(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_chacha_generic__173_128_chacha_generic_mod_init4, !1, !"__initcall__kmod_chacha_generic__173_128_chacha_generic_mod_init4", i1 false, i1 false}
!1 = !{!"../crypto/chacha_generic.c", i32 128, i32 1}
!2 = !{ptr @__exitcall_chacha_generic_mod_fini, !3, !"__exitcall_chacha_generic_mod_fini", i1 false, i1 false}
!3 = !{!"../crypto/chacha_generic.c", i32 129, i32 1}
!4 = !{ptr @__UNIQUE_ID_file174, !5, !"__UNIQUE_ID_file174", i1 false, i1 false}
!5 = !{!"../crypto/chacha_generic.c", i32 131, i32 1}
!6 = !{ptr @__UNIQUE_ID_license175, !5, !"__UNIQUE_ID_license175", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author176, !8, !"__UNIQUE_ID_author176", i1 false, i1 false}
!8 = !{!"../crypto/chacha_generic.c", i32 132, i32 1}
!9 = !{ptr @__UNIQUE_ID_description177, !10, !"__UNIQUE_ID_description177", i1 false, i1 false}
!10 = !{!"../crypto/chacha_generic.c", i32 133, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_userspace178, !12, !"__UNIQUE_ID_alias_userspace178", i1 false, i1 false}
!12 = !{!"../crypto/chacha_generic.c", i32 134, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto179, !12, !"__UNIQUE_ID_alias_crypto179", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias_userspace180, !15, !"__UNIQUE_ID_alias_userspace180", i1 false, i1 false}
!15 = !{!"../crypto/chacha_generic.c", i32 135, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias_crypto181, !15, !"__UNIQUE_ID_alias_crypto181", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_alias_userspace182, !18, !"__UNIQUE_ID_alias_userspace182", i1 false, i1 false}
!18 = !{!"../crypto/chacha_generic.c", i32 136, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias_crypto183, !18, !"__UNIQUE_ID_alias_crypto183", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_alias_userspace184, !21, !"__UNIQUE_ID_alias_userspace184", i1 false, i1 false}
!21 = !{!"../crypto/chacha_generic.c", i32 137, i32 1}
!22 = !{ptr @__UNIQUE_ID_alias_crypto185, !21, !"__UNIQUE_ID_alias_crypto185", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_alias_userspace186, !24, !"__UNIQUE_ID_alias_userspace186", i1 false, i1 false}
!24 = !{!"../crypto/chacha_generic.c", i32 138, i32 1}
!25 = !{ptr @__UNIQUE_ID_alias_crypto187, !24, !"__UNIQUE_ID_alias_crypto187", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_alias_userspace188, !27, !"__UNIQUE_ID_alias_userspace188", i1 false, i1 false}
!27 = !{!"../crypto/chacha_generic.c", i32 139, i32 1}
!28 = !{ptr @__UNIQUE_ID_alias_crypto189, !27, !"__UNIQUE_ID_alias_crypto189", i1 false, i1 false}
!29 = !{ptr @algs, !30, !"algs", i1 false, i1 false}
!30 = !{!"../crypto/chacha_generic.c", i32 69, i32 28}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
