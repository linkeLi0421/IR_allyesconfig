; ModuleID = '/llk/IR_all_yes/arch/arm/crypto/blake2b-neon-glue.c_pt.bc'
source_filename = "../arch/arm/crypto/blake2b-neon-glue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.blake2b_state = type { [8 x i64], [2 x i64], [2 x i64], [128 x i8], i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@blake2b_neon_algs = internal global [4 x %struct.shash_alg] [%struct.shash_alg { ptr @crypto_blake2b_init, ptr @crypto_blake2b_update_neon, ptr @crypto_blake2b_final_neon, ptr null, ptr null, ptr null, ptr null, ptr @crypto_blake2b_setkey, ptr null, ptr null, i32 232, [84 x i8] undef, i32 20, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 16384, i32 128, i32 68, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"blake2b-160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"blake2b-160-neon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.shash_alg { ptr @crypto_blake2b_init, ptr @crypto_blake2b_update_neon, ptr @crypto_blake2b_final_neon, ptr null, ptr null, ptr null, ptr null, ptr @crypto_blake2b_setkey, ptr null, ptr null, i32 232, [84 x i8] undef, i32 32, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 16384, i32 128, i32 68, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"blake2b-256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"blake2b-256-neon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.shash_alg { ptr @crypto_blake2b_init, ptr @crypto_blake2b_update_neon, ptr @crypto_blake2b_final_neon, ptr null, ptr null, ptr null, ptr null, ptr @crypto_blake2b_setkey, ptr null, ptr null, i32 232, [84 x i8] undef, i32 48, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 16384, i32 128, i32 68, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"blake2b-384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"blake2b-384-neon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.shash_alg { ptr @crypto_blake2b_init, ptr @crypto_blake2b_update_neon, ptr @crypto_blake2b_final_neon, ptr null, ptr null, ptr null, ptr null, ptr @crypto_blake2b_setkey, ptr null, ptr null, i32 232, [84 x i8] undef, i32 64, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 16384, i32 128, i32 68, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"blake2b-512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"blake2b-512-neon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }], align 128
@__initcall__kmod_blake2b_neon__175_92_blake2b_neon_mod_init6 = internal global ptr @blake2b_neon_mod_init, section ".initcall6.init", align 4
@__exitcall_blake2b_neon_mod_exit = internal global ptr @blake2b_neon_mod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description176 = internal constant [68 x i8] c"blake2b_neon.description=BLAKE2b digest algorithm, NEON accelerated\00", section ".modinfo", align 1
@__UNIQUE_ID_file177 = internal constant [47 x i8] c"blake2b_neon.file=arch/arm/crypto/blake2b-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [25 x i8] c"blake2b_neon.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author179 = internal constant [55 x i8] c"blake2b_neon.author=Eric Biggers <ebiggers@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace180 = internal constant [31 x i8] c"blake2b_neon.alias=blake2b-160\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto181 = internal constant [38 x i8] c"blake2b_neon.alias=crypto-blake2b-160\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace182 = internal constant [36 x i8] c"blake2b_neon.alias=blake2b-160-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto183 = internal constant [43 x i8] c"blake2b_neon.alias=crypto-blake2b-160-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace184 = internal constant [31 x i8] c"blake2b_neon.alias=blake2b-256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto185 = internal constant [38 x i8] c"blake2b_neon.alias=crypto-blake2b-256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace186 = internal constant [36 x i8] c"blake2b_neon.alias=blake2b-256-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto187 = internal constant [43 x i8] c"blake2b_neon.alias=crypto-blake2b-256-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace188 = internal constant [31 x i8] c"blake2b_neon.alias=blake2b-384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto189 = internal constant [38 x i8] c"blake2b_neon.alias=crypto-blake2b-384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace190 = internal constant [36 x i8] c"blake2b_neon.alias=blake2b-384-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto191 = internal constant [43 x i8] c"blake2b_neon.alias=crypto-blake2b-384-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace192 = internal constant [31 x i8] c"blake2b_neon.alias=blake2b-512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto193 = internal constant [38 x i8] c"blake2b_neon.alias=crypto-blake2b-512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace194 = internal constant [36 x i8] c"blake2b_neon.alias=blake2b-512-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto195 = internal constant [43 x i8] c"blake2b_neon.alias=crypto-blake2b-512-neon\00", section ".modinfo", align 1
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_alias_crypto181, ptr @__UNIQUE_ID_alias_crypto183, ptr @__UNIQUE_ID_alias_crypto185, ptr @__UNIQUE_ID_alias_crypto187, ptr @__UNIQUE_ID_alias_crypto189, ptr @__UNIQUE_ID_alias_crypto191, ptr @__UNIQUE_ID_alias_crypto193, ptr @__UNIQUE_ID_alias_crypto195, ptr @__UNIQUE_ID_alias_userspace180, ptr @__UNIQUE_ID_alias_userspace182, ptr @__UNIQUE_ID_alias_userspace184, ptr @__UNIQUE_ID_alias_userspace186, ptr @__UNIQUE_ID_alias_userspace188, ptr @__UNIQUE_ID_alias_userspace190, ptr @__UNIQUE_ID_alias_userspace192, ptr @__UNIQUE_ID_alias_userspace194, ptr @__UNIQUE_ID_author179, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__exitcall_blake2b_neon_mod_exit, ptr @__initcall__kmod_blake2b_neon__175_92_blake2b_neon_mod_init6, ptr @blake2b_neon_mod_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @blake2b_neon_mod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @blake2b_neon_algs, i32 noundef 4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @blake2b_neon_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %0 = load i32, ptr @elf_hwcap, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @crypto_register_shashes(ptr noundef nonnull @blake2b_neon_algs, i32 noundef 4) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypto_blake2b_init(ptr nocapture noundef %desc) #2 align 64 {
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_blake2b_update_neon(ptr noundef %desc, ptr noundef %in, i32 noundef %inlen) #3 align 64 {
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
  br i1 %tobool.not.i.i, label %entry.crypto_blake2b_update.exit_crit_edge, label %if.end.i.i, !prof !47

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
  %buf.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 13
  %add.ptr.i.i = getelementptr i8, ptr %buf.i.i, i32 %1
  %2 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %in, i32 %sub.i.i)
  %3 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %6, 15728640
  %7 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i6.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i6.i.i.i.i to ptr
  %preempt_count.i7.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i7.i.i.i.i, align 4
  %and2.i.i.i.i = and i32 %10, 983040
  %or.i.i.i.i = or i32 %and2.i.i.i.i, %and.i.i.i.i
  %11 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i8.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i8.i.i.i.i to ptr
  %preempt_count.i9.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i9.i.i.i.i, align 4
  %and4.i.i.i.i = and i32 %14, 65280
  %or5.i.i.i.i = or i32 %or.i.i.i.i, %and4.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %or5.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.preheader.i.i, label %if.then.i.i.i

do.body.i.preheader.i.i:                          ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kernel_neon_begin() #7
  tail call void @blake2b_compress_neon(ptr noundef %__ctx.i.i, ptr noundef %buf.i.i, i32 noundef 1, i32 noundef 128) #7
  tail call void @kernel_neon_end() #7
  br label %blake2b_compress_arch.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @blake2b_compress_generic(ptr noundef %__ctx.i.i, ptr noundef %buf.i.i, i32 noundef 1, i32 noundef 128) #7
  br label %blake2b_compress_arch.exit.i.i

blake2b_compress_arch.exit.i.i:                   ; preds = %if.then.i.i.i, %do.body.i.preheader.i.i
  %15 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %buflen.i.i, align 8
  %add.ptr9.i.i = getelementptr i8, ptr %in, i32 %sub.i.i
  %sub10.i.i = sub i32 %inlen, %sub.i.i
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %blake2b_compress_arch.exit.i.i, %if.end.i.i.if.end11.i.i_crit_edge
  %inlen.addr.0.i.i = phi i32 [ %sub10.i.i, %blake2b_compress_arch.exit.i.i ], [ %inlen, %if.end.i.i.if.end11.i.i_crit_edge ]
  %in.addr.0.i.i = phi ptr [ %add.ptr9.i.i, %blake2b_compress_arch.exit.i.i ], [ %in, %if.end.i.i.if.end11.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %inlen.addr.0.i.i)
  %cmp12.i.i = icmp ugt i32 %inlen.addr.0.i.i, 128
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end11.i.i.if.end21.i.i_crit_edge

if.end11.i.i.if.end21.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i.i

if.then13.i.i:                                    ; preds = %if.end11.i.i
  %sub14.i.i = add i32 %inlen.addr.0.i.i, 127
  %div1.i.i = lshr i32 %sub14.i.i, 7
  %sub15.i.i = add nsw i32 %div1.i.i, -1
  %16 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i.i2.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i2.i.i to ptr
  %preempt_count.i.i.i3.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i3.i.i, align 4
  %and.i.i4.i.i = and i32 %19, 15728640
  %20 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i6.i.i5.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i6.i.i5.i.i to ptr
  %preempt_count.i7.i.i6.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i7.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i7.i.i6.i.i, align 4
  %and2.i.i7.i.i = and i32 %23, 983040
  %or.i.i8.i.i = or i32 %and2.i.i7.i.i, %and.i.i4.i.i
  %24 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i8.i.i9.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i8.i.i9.i.i to ptr
  %preempt_count.i9.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i9.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i9.i.i10.i.i, align 4
  %and4.i.i11.i.i = and i32 %27, 65280
  %or5.i.i12.i.i = or i32 %or.i.i8.i.i, %and4.i.i11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i12.i.i)
  %tobool.not.i.i13.i.i = icmp eq i32 %or5.i.i12.i.i, 0
  br i1 %tobool.not.i.i13.i.i, label %if.then13.i.i.do.body.i21.i.i_crit_edge, label %if.then.i14.i.i

if.then13.i.i.do.body.i21.i.i_crit_edge:          ; preds = %if.then13.i.i
  br label %do.body.i21.i.i

if.then.i14.i.i:                                  ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @blake2b_compress_generic(ptr noundef %__ctx.i.i, ptr noundef %in.addr.0.i.i, i32 noundef %sub15.i.i, i32 noundef 128) #7
  br label %blake2b_compress_arch.exit22.i.i

do.body.i21.i.i:                                  ; preds = %do.body.i21.i.i.do.body.i21.i.i_crit_edge, %if.then13.i.i.do.body.i21.i.i_crit_edge
  %nblocks.addr.0.i15.i.i = phi i32 [ %sub.i17.i.i, %do.body.i21.i.i.do.body.i21.i.i_crit_edge ], [ %sub15.i.i, %if.then13.i.i.do.body.i21.i.i_crit_edge ]
  %block.addr.0.i16.i.i = phi ptr [ %add.ptr.i19.i.i, %do.body.i21.i.i.do.body.i21.i.i_crit_edge ], [ %in.addr.0.i.i, %if.then13.i.i.do.body.i21.i.i_crit_edge ]
  %28 = tail call i32 @llvm.umin.i32(i32 %nblocks.addr.0.i15.i.i, i32 32) #7
  tail call void @kernel_neon_begin() #7
  tail call void @blake2b_compress_neon(ptr noundef %__ctx.i.i, ptr noundef %block.addr.0.i16.i.i, i32 noundef %28, i32 noundef 128) #7
  tail call void @kernel_neon_end() #7
  %sub.i17.i.i = sub i32 %nblocks.addr.0.i15.i.i, %28
  %mul.i18.i.i = shl nuw nsw i32 %28, 7
  %add.ptr.i19.i.i = getelementptr i8, ptr %block.addr.0.i16.i.i, i32 %mul.i18.i.i
  %tobool.not.i20.i.i = icmp eq i32 %sub.i17.i.i, 0
  br i1 %tobool.not.i20.i.i, label %do.body.i21.i.i.blake2b_compress_arch.exit22.i.i_crit_edge, label %do.body.i21.i.i.do.body.i21.i.i_crit_edge

do.body.i21.i.i.do.body.i21.i.i_crit_edge:        ; preds = %do.body.i21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i21.i.i

do.body.i21.i.i.blake2b_compress_arch.exit22.i.i_crit_edge: ; preds = %do.body.i21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %blake2b_compress_arch.exit22.i.i

blake2b_compress_arch.exit22.i.i:                 ; preds = %do.body.i21.i.i.blake2b_compress_arch.exit22.i.i_crit_edge, %if.then.i14.i.i
  %mul.i.i = shl i32 %sub15.i.i, 7
  %add.ptr17.i.i = getelementptr i8, ptr %in.addr.0.i.i, i32 %mul.i.i
  %sub20.i.i = sub i32 %inlen.addr.0.i.i, %mul.i.i
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %blake2b_compress_arch.exit22.i.i, %if.end11.i.i.if.end21.i.i_crit_edge
  %inlen.addr.1.i.i = phi i32 [ %sub20.i.i, %blake2b_compress_arch.exit22.i.i ], [ %inlen.addr.0.i.i, %if.end11.i.i.if.end21.i.i_crit_edge ]
  %in.addr.1.i.i = phi ptr [ %add.ptr17.i.i, %blake2b_compress_arch.exit22.i.i ], [ %in.addr.0.i.i, %if.end11.i.i.if.end21.i.i_crit_edge ]
  %buf22.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 13
  %29 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buflen.i.i, align 8
  %add.ptr25.i.i = getelementptr i8, ptr %buf22.i.i, i32 %30
  %31 = call ptr @memcpy(ptr %add.ptr25.i.i, ptr %in.addr.1.i.i, i32 %inlen.addr.1.i.i)
  %32 = load i32, ptr %buflen.i.i, align 8
  %add27.i.i = add i32 %32, %inlen.addr.1.i.i
  store i32 %add27.i.i, ptr %buflen.i.i, align 8
  br label %crypto_blake2b_update.exit

crypto_blake2b_update.exit:                       ; preds = %if.end21.i.i, %entry.crypto_blake2b_update.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_blake2b_final_neon(ptr noundef %desc, ptr nocapture noundef writeonly %out) #3 align 64 {
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
  %5 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %8, 15728640
  %9 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i6.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i6.i.i.i.i to ptr
  %preempt_count.i7.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i7.i.i.i.i, align 4
  %and2.i.i.i.i = and i32 %12, 983040
  %or.i.i.i.i = or i32 %and2.i.i.i.i, %and.i.i.i.i
  %13 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i8.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i8.i.i.i.i to ptr
  %preempt_count.i9.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i9.i.i.i.i, align 4
  %and4.i.i.i.i = and i32 %16, 65280
  %or5.i.i.i.i = or i32 %or.i.i.i.i, %and4.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %or5.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.preheader.i.i, label %if.then.i.i.i

do.body.i.preheader.i.i:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kernel_neon_begin() #7
  tail call void @blake2b_compress_neon(ptr noundef %__ctx.i.i, ptr noundef %buf.i.i, i32 noundef 1, i32 noundef %4) #7
  tail call void @kernel_neon_end() #7
  br label %crypto_blake2b_final.exit

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @blake2b_compress_generic(ptr noundef %__ctx.i.i, ptr noundef %buf.i.i, i32 noundef 1, i32 noundef %4) #7
  br label %crypto_blake2b_final.exit

crypto_blake2b_final.exit:                        ; preds = %if.then.i.i.i, %do.body.i.preheader.i.i
  %17 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %__ctx.i.i, align 8
  %19 = tail call i64 @llvm.bswap.i64(i64 %18) #7
  %20 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %__ctx.i.i, align 8
  %arrayidx.1.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %21 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx.1.i.i, align 8
  %23 = tail call i64 @llvm.bswap.i64(i64 %22) #7
  %24 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %arrayidx.1.i.i, align 8
  %arrayidx.2.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %25 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx.2.i.i, align 8
  %27 = tail call i64 @llvm.bswap.i64(i64 %26) #7
  %28 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx.2.i.i, align 8
  %arrayidx.3.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %29 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx.3.i.i, align 8
  %31 = tail call i64 @llvm.bswap.i64(i64 %30) #7
  %32 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx.3.i.i, align 8
  %arrayidx.4.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 5
  %33 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx.4.i.i, align 8
  %35 = tail call i64 @llvm.bswap.i64(i64 %34) #7
  %36 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %arrayidx.4.i.i, align 8
  %arrayidx.5.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 6
  %37 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx.5.i.i, align 8
  %39 = tail call i64 @llvm.bswap.i64(i64 %38) #7
  %40 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx.5.i.i, align 8
  %arrayidx.6.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 7
  %41 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx.6.i.i, align 8
  %43 = tail call i64 @llvm.bswap.i64(i64 %42) #7
  %44 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %arrayidx.6.i.i, align 8
  %arrayidx.7.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 8
  %45 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx.7.i.i, align 8
  %47 = tail call i64 @llvm.bswap.i64(i64 %46) #7
  %48 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %arrayidx.7.i.i, align 8
  %outlen.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 29, i32 1
  %49 = ptrtoint ptr %outlen.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %outlen.i.i, align 4
  %51 = call ptr @memcpy(ptr %out, ptr %__ctx.i.i, i32 %50)
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypto_blake2b_setkey(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #4 align 64 {
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
declare dso_local void @blake2b_compress_generic(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_begin() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blake2b_compress_neon(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_end() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_blake2b_neon__175_92_blake2b_neon_mod_init6, !1, !"__initcall__kmod_blake2b_neon__175_92_blake2b_neon_mod_init6", i1 false, i1 false}
!1 = !{!"../arch/arm/crypto/blake2b-neon-glue.c", i32 92, i32 1}
!2 = !{ptr @__exitcall_blake2b_neon_mod_exit, !3, !"__exitcall_blake2b_neon_mod_exit", i1 false, i1 false}
!3 = !{!"../arch/arm/crypto/blake2b-neon-glue.c", i32 93, i32 1}
!4 = !{ptr @__UNIQUE_ID_description176, !5, !"__UNIQUE_ID_description176", i1 false, i1 false}
!5 = !{!"../arch/arm/crypto/blake2b-neon-glue.c", i32 95, i32 1}
!6 = !{ptr @__UNIQUE_ID_file177, !7, !"__UNIQUE_ID_file177", i1 false, i1 false}
!7 = !{!"../arch/arm/crypto/blake2b-neon-glue.c", i32 96, i32 1}
!8 = !{ptr @__UNIQUE_ID_license178, !7, !"__UNIQUE_ID_license178", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author179, !10, !"__UNIQUE_ID_author179", i1 false, i1 false}
!10 = !{!"../arch/arm/crypto/blake2b-neon-glue.c", i32 97, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_userspace180, !12, !"__UNIQUE_ID_alias_userspace180", i1 false, i1 false}
!12 = !{!"../arch/arm/crypto/blake2b-neon-glue.c", i32 98, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto181, !12, !"__UNIQUE_ID_alias_crypto181", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias_userspace182, !15, !"__UNIQUE_ID_alias_userspace182", i1 false, i1 false}
!15 = !{!"../arch/arm/crypto/blake2b-neon-glue.c", i32 99, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias_crypto183, !15, !"__UNIQUE_ID_alias_crypto183", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_alias_userspace184, !18, !"__UNIQUE_ID_alias_userspace184", i1 false, i1 false}
!18 = !{!"../arch/arm/crypto/blake2b-neon-glue.c", i32 100, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias_crypto185, !18, !"__UNIQUE_ID_alias_crypto185", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_alias_userspace186, !21, !"__UNIQUE_ID_alias_userspace186", i1 false, i1 false}
!21 = !{!"../arch/arm/crypto/blake2b-neon-glue.c", i32 101, i32 1}
!22 = !{ptr @__UNIQUE_ID_alias_crypto187, !21, !"__UNIQUE_ID_alias_crypto187", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_alias_userspace188, !24, !"__UNIQUE_ID_alias_userspace188", i1 false, i1 false}
!24 = !{!"../arch/arm/crypto/blake2b-neon-glue.c", i32 102, i32 1}
!25 = !{ptr @__UNIQUE_ID_alias_crypto189, !24, !"__UNIQUE_ID_alias_crypto189", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_alias_userspace190, !27, !"__UNIQUE_ID_alias_userspace190", i1 false, i1 false}
!27 = !{!"../arch/arm/crypto/blake2b-neon-glue.c", i32 103, i32 1}
!28 = !{ptr @__UNIQUE_ID_alias_crypto191, !27, !"__UNIQUE_ID_alias_crypto191", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_alias_userspace192, !30, !"__UNIQUE_ID_alias_userspace192", i1 false, i1 false}
!30 = !{!"../arch/arm/crypto/blake2b-neon-glue.c", i32 104, i32 1}
!31 = !{ptr @__UNIQUE_ID_alias_crypto193, !30, !"__UNIQUE_ID_alias_crypto193", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_alias_userspace194, !33, !"__UNIQUE_ID_alias_userspace194", i1 false, i1 false}
!33 = !{!"../arch/arm/crypto/blake2b-neon-glue.c", i32 105, i32 1}
!34 = !{ptr @__UNIQUE_ID_alias_crypto195, !33, !"__UNIQUE_ID_alias_crypto195", i1 false, i1 false}
!35 = !{ptr @blake2b_neon_algs, !36, !"blake2b_neon_algs", i1 false, i1 false}
!36 = !{!"../arch/arm/crypto/blake2b-neon-glue.c", i32 70, i32 25}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"branch_weights", i32 1, i32 2000}
