; ModuleID = '/llk/IR_all_yes/arch/arm/crypto/blake2s-shash.c_pt.bc'
source_filename = "../arch/arm/crypto/blake2s-shash.c"
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
%struct.blake2s_state = type { [8 x i32], [2 x i32], [2 x i32], [64 x i8], i32, i32 }

@blake2s_arm_algs = internal global [4 x %struct.shash_alg] [%struct.shash_alg { ptr @crypto_blake2s_init, ptr @crypto_blake2s_update_arm, ptr @crypto_blake2s_final_arm, ptr null, ptr null, ptr null, ptr null, ptr @crypto_blake2s_setkey, ptr null, ptr null, i32 120, [84 x i8] undef, i32 16, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 16384, i32 64, i32 36, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"blake2s-128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"blake2s-128-arm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.shash_alg { ptr @crypto_blake2s_init, ptr @crypto_blake2s_update_arm, ptr @crypto_blake2s_final_arm, ptr null, ptr null, ptr null, ptr null, ptr @crypto_blake2s_setkey, ptr null, ptr null, i32 120, [84 x i8] undef, i32 20, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 16384, i32 64, i32 36, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"blake2s-160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"blake2s-160-arm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.shash_alg { ptr @crypto_blake2s_init, ptr @crypto_blake2s_update_arm, ptr @crypto_blake2s_final_arm, ptr null, ptr null, ptr null, ptr null, ptr @crypto_blake2s_setkey, ptr null, ptr null, i32 120, [84 x i8] undef, i32 28, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 16384, i32 64, i32 36, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"blake2s-224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"blake2s-224-arm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.shash_alg { ptr @crypto_blake2s_init, ptr @crypto_blake2s_update_arm, ptr @crypto_blake2s_final_arm, ptr null, ptr null, ptr null, ptr null, ptr @crypto_blake2s_setkey, ptr null, ptr null, i32 120, [84 x i8] undef, i32 32, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 16384, i32 64, i32 36, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"blake2s-256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"blake2s-256-arm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }], align 128
@__initcall__kmod_blake2s_arm__173_62_blake2s_arm_mod_init6 = internal global ptr @blake2s_arm_mod_init, section ".initcall6.init", align 4
@__exitcall_blake2s_arm_mod_exit = internal global ptr @blake2s_arm_mod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description174 = internal constant [76 x i8] c"blake2s_arm.description=BLAKE2s digest algorithm, ARM scalar implementation\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [45 x i8] c"blake2s_arm.file=arch/arm/crypto/blake2s-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [24 x i8] c"blake2s_arm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author177 = internal constant [54 x i8] c"blake2s_arm.author=Eric Biggers <ebiggers@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace178 = internal constant [30 x i8] c"blake2s_arm.alias=blake2s-128\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto179 = internal constant [37 x i8] c"blake2s_arm.alias=crypto-blake2s-128\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace180 = internal constant [34 x i8] c"blake2s_arm.alias=blake2s-128-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto181 = internal constant [41 x i8] c"blake2s_arm.alias=crypto-blake2s-128-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace182 = internal constant [30 x i8] c"blake2s_arm.alias=blake2s-160\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto183 = internal constant [37 x i8] c"blake2s_arm.alias=crypto-blake2s-160\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace184 = internal constant [34 x i8] c"blake2s_arm.alias=blake2s-160-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto185 = internal constant [41 x i8] c"blake2s_arm.alias=crypto-blake2s-160-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace186 = internal constant [30 x i8] c"blake2s_arm.alias=blake2s-224\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto187 = internal constant [37 x i8] c"blake2s_arm.alias=crypto-blake2s-224\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace188 = internal constant [34 x i8] c"blake2s_arm.alias=blake2s-224-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto189 = internal constant [41 x i8] c"blake2s_arm.alias=crypto-blake2s-224-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace190 = internal constant [30 x i8] c"blake2s_arm.alias=blake2s-256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto191 = internal constant [37 x i8] c"blake2s_arm.alias=crypto-blake2s-256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace192 = internal constant [34 x i8] c"blake2s_arm.alias=blake2s-256-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto193 = internal constant [41 x i8] c"blake2s_arm.alias=crypto-blake2s-256-arm\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_alias_crypto179, ptr @__UNIQUE_ID_alias_crypto181, ptr @__UNIQUE_ID_alias_crypto183, ptr @__UNIQUE_ID_alias_crypto185, ptr @__UNIQUE_ID_alias_crypto187, ptr @__UNIQUE_ID_alias_crypto189, ptr @__UNIQUE_ID_alias_crypto191, ptr @__UNIQUE_ID_alias_crypto193, ptr @__UNIQUE_ID_alias_userspace178, ptr @__UNIQUE_ID_alias_userspace180, ptr @__UNIQUE_ID_alias_userspace182, ptr @__UNIQUE_ID_alias_userspace184, ptr @__UNIQUE_ID_alias_userspace186, ptr @__UNIQUE_ID_alias_userspace188, ptr @__UNIQUE_ID_alias_userspace190, ptr @__UNIQUE_ID_alias_userspace192, ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_blake2s_arm_mod_exit, ptr @__initcall__kmod_blake2s_arm__173_62_blake2s_arm_mod_init6, ptr @blake2s_arm_mod_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @blake2s_arm_mod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @blake2s_arm_algs, i32 noundef 4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @blake2s_arm_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_shashes(ptr noundef nonnull @blake2s_arm_algs, i32 noundef 4) #6
  ret i32 %call
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypto_blake2s_init(ptr nocapture noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %keylen = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1, i32 1, i32 28
  %6 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %keylen, align 4
  %shl.i = shl i32 %7, 8
  %or.i = or i32 %shl.i, %5
  %8 = and i32 %or.i, -16842753
  %xor.i = xor i32 %8, 1795745383
  %9 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %xor.i, ptr %__ctx.i, align 4
  %arrayidx3.i = getelementptr %struct.shash_desc, ptr %desc, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1150833019, ptr %arrayidx3.i, align 4
  %arrayidx5.i = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1013904242, ptr %arrayidx5.i, align 4
  %arrayidx7.i = getelementptr %struct.shash_desc, ptr %desc, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1521486534, ptr %arrayidx7.i, align 4
  %arrayidx9.i = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %13 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1359893119, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr %struct.shash_desc, ptr %desc, i32 3, i32 1
  %14 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1694144372, ptr %arrayidx11.i, align 4
  %arrayidx13.i = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %15 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 528734635, ptr %arrayidx13.i, align 4
  %arrayidx15.i = getelementptr %struct.shash_desc, ptr %desc, i32 4, i32 1
  %16 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1541459225, ptr %arrayidx15.i, align 4
  %t.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %buflen.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 15
  %17 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %buflen.i, align 4
  %outlen22.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 15, i32 1
  %18 = call ptr @memset(ptr %t.i, i32 0, i32 16)
  %19 = ptrtoint ptr %outlen22.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %5, ptr %outlen22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.__blake2s_init.exit_crit_edge, label %if.then.i

entry.__blake2s_init.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__blake2s_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1
  %buf.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 7
  %20 = call ptr @memcpy(ptr %buf.i, ptr %__crt_ctx.i.i, i32 %7)
  %arrayidx24.i = getelementptr %struct.blake2s_state, ptr %__ctx.i, i32 0, i32 3, i32 %7
  %sub.i = sub i32 64, %7
  %21 = call ptr @memset(ptr %arrayidx24.i, i32 0, i32 %sub.i)
  %22 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 64, ptr %buflen.i, align 4
  br label %__blake2s_init.exit

__blake2s_init.exit:                              ; preds = %if.then.i, %entry.__blake2s_init.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_blake2s_update_arm(ptr noundef %desc, ptr noundef %in, i32 noundef %inlen) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %buflen.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 15
  %0 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buflen.i.i, align 4
  %sub.i.i = sub i32 64, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inlen)
  %tobool.not.i.i = icmp eq i32 %inlen, 0
  br i1 %tobool.not.i.i, label %entry.crypto_blake2s_update.exit_crit_edge, label %if.end.i.i, !prof !46

entry.crypto_blake2s_update.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %crypto_blake2s_update.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %inlen)
  %cmp.i.i = icmp ult i32 %sub.i.i, %inlen
  br i1 %cmp.i.i, label %if.then4.i.i, label %if.end.i.i.if.end16.i.i_crit_edge

if.end.i.i.if.end16.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %buf.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 7
  %add.ptr.i.i = getelementptr i8, ptr %buf.i.i, i32 %1
  %2 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %in, i32 %sub.i.i)
  tail call void @blake2s_compress(ptr noundef %__ctx.i.i, ptr noundef %buf.i.i, i32 noundef 1, i32 noundef 64) #6
  %3 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %buflen.i.i, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %in, i32 %sub.i.i
  %sub15.i.i = sub i32 %inlen, %sub.i.i
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then4.i.i, %if.end.i.i.if.end16.i.i_crit_edge
  %inlen.addr.0.i.i = phi i32 [ %sub15.i.i, %if.then4.i.i ], [ %inlen, %if.end.i.i.if.end16.i.i_crit_edge ]
  %in.addr.0.i.i = phi ptr [ %add.ptr14.i.i, %if.then4.i.i ], [ %in, %if.end.i.i.if.end16.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inlen.addr.0.i.i)
  %cmp17.i.i = icmp ugt i32 %inlen.addr.0.i.i, 64
  br i1 %cmp17.i.i, label %if.else23.i.i, label %if.end16.i.i.if.end31.i.i_crit_edge

if.end16.i.i.if.end31.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i.i

if.else23.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub19.i.i = add i32 %inlen.addr.0.i.i, 63
  %div1.i.i = lshr i32 %sub19.i.i, 6
  %sub24.i.i = add nsw i32 %div1.i.i, -1
  tail call void @blake2s_compress(ptr noundef %__ctx.i.i, ptr noundef %in.addr.0.i.i, i32 noundef %sub24.i.i, i32 noundef 64) #6
  %4 = add i32 %inlen.addr.0.i.i, -1
  %mul.i.i = and i32 %4, -64
  %add.ptr27.i.i = getelementptr i8, ptr %in.addr.0.i.i, i32 %mul.i.i
  %sub30.i.i = sub i32 %inlen.addr.0.i.i, %mul.i.i
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.else23.i.i, %if.end16.i.i.if.end31.i.i_crit_edge
  %inlen.addr.1.i.i = phi i32 [ %sub30.i.i, %if.else23.i.i ], [ %inlen.addr.0.i.i, %if.end16.i.i.if.end31.i.i_crit_edge ]
  %in.addr.1.i.i = phi ptr [ %add.ptr27.i.i, %if.else23.i.i ], [ %in.addr.0.i.i, %if.end16.i.i.if.end31.i.i_crit_edge ]
  %buf32.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 7
  %5 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buflen.i.i, align 4
  %add.ptr35.i.i = getelementptr i8, ptr %buf32.i.i, i32 %6
  %7 = call ptr @memcpy(ptr %add.ptr35.i.i, ptr %in.addr.1.i.i, i32 %inlen.addr.1.i.i)
  %8 = load i32, ptr %buflen.i.i, align 4
  %add37.i.i = add i32 %8, %inlen.addr.1.i.i
  store i32 %add37.i.i, ptr %buflen.i.i, align 4
  br label %crypto_blake2s_update.exit

crypto_blake2s_update.exit:                       ; preds = %if.end31.i.i, %entry.crypto_blake2s_update.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_blake2s_final_arm(ptr noundef %desc, ptr nocapture noundef writeonly %out) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %f.i.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %0 = ptrtoint ptr %f.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %f.i.i.i, align 4
  %buf.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 7
  %buflen.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 15
  %1 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %buflen.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %buf.i.i, i32 %2
  %sub.i.i = sub i32 64, %2
  %3 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub.i.i)
  %4 = load i32, ptr %buflen.i.i, align 4
  tail call void @blake2s_compress(ptr noundef %__ctx.i.i, ptr noundef %buf.i.i, i32 noundef 1, i32 noundef %4) #6
  %5 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %__ctx.i.i, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  %8 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %__ctx.i.i, align 4
  %incdec.ptr.i.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 1, i32 1
  %9 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %incdec.ptr.i.i.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %12 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %incdec.ptr.i.i.i, align 4
  %incdec.ptr.1.i.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %13 = ptrtoint ptr %incdec.ptr.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %incdec.ptr.1.i.i.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  %16 = ptrtoint ptr %incdec.ptr.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %incdec.ptr.1.i.i.i, align 4
  %incdec.ptr.2.i.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 2, i32 1
  %17 = ptrtoint ptr %incdec.ptr.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr.2.i.i.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  %20 = ptrtoint ptr %incdec.ptr.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %incdec.ptr.2.i.i.i, align 4
  %incdec.ptr.3.i.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %21 = ptrtoint ptr %incdec.ptr.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %incdec.ptr.3.i.i.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  %24 = ptrtoint ptr %incdec.ptr.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %incdec.ptr.3.i.i.i, align 4
  %incdec.ptr.4.i.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 3, i32 1
  %25 = ptrtoint ptr %incdec.ptr.4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %incdec.ptr.4.i.i.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  %28 = ptrtoint ptr %incdec.ptr.4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %incdec.ptr.4.i.i.i, align 4
  %incdec.ptr.5.i.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %29 = ptrtoint ptr %incdec.ptr.5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %incdec.ptr.5.i.i.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  %32 = ptrtoint ptr %incdec.ptr.5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %incdec.ptr.5.i.i.i, align 4
  %incdec.ptr.6.i.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 4, i32 1
  %33 = ptrtoint ptr %incdec.ptr.6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %incdec.ptr.6.i.i.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  %36 = ptrtoint ptr %incdec.ptr.6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %incdec.ptr.6.i.i.i, align 4
  %outlen.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 15, i32 1
  %37 = ptrtoint ptr %outlen.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %outlen.i.i, align 4
  %39 = call ptr @memcpy(ptr %out, ptr %__ctx.i.i, i32 %38)
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypto_blake2s_setkey(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = add i32 %keylen, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %0)
  %1 = icmp ult i32 %0, -32
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 1
  %2 = call ptr @memcpy(ptr %__crt_ctx.i.i, ptr %key, i32 %keylen)
  %keylen3 = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 28
  %3 = ptrtoint ptr %keylen3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %keylen, ptr %keylen3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blake2s_compress(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_blake2s_arm__173_62_blake2s_arm_mod_init6, !1, !"__initcall__kmod_blake2s_arm__173_62_blake2s_arm_mod_init6", i1 false, i1 false}
!1 = !{!"../arch/arm/crypto/blake2s-shash.c", i32 62, i32 1}
!2 = !{ptr @__exitcall_blake2s_arm_mod_exit, !3, !"__exitcall_blake2s_arm_mod_exit", i1 false, i1 false}
!3 = !{!"../arch/arm/crypto/blake2s-shash.c", i32 63, i32 1}
!4 = !{ptr @__UNIQUE_ID_description174, !5, !"__UNIQUE_ID_description174", i1 false, i1 false}
!5 = !{!"../arch/arm/crypto/blake2s-shash.c", i32 65, i32 1}
!6 = !{ptr @__UNIQUE_ID_file175, !7, !"__UNIQUE_ID_file175", i1 false, i1 false}
!7 = !{!"../arch/arm/crypto/blake2s-shash.c", i32 66, i32 1}
!8 = !{ptr @__UNIQUE_ID_license176, !7, !"__UNIQUE_ID_license176", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author177, !10, !"__UNIQUE_ID_author177", i1 false, i1 false}
!10 = !{!"../arch/arm/crypto/blake2s-shash.c", i32 67, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_userspace178, !12, !"__UNIQUE_ID_alias_userspace178", i1 false, i1 false}
!12 = !{!"../arch/arm/crypto/blake2s-shash.c", i32 68, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto179, !12, !"__UNIQUE_ID_alias_crypto179", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias_userspace180, !15, !"__UNIQUE_ID_alias_userspace180", i1 false, i1 false}
!15 = !{!"../arch/arm/crypto/blake2s-shash.c", i32 69, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias_crypto181, !15, !"__UNIQUE_ID_alias_crypto181", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_alias_userspace182, !18, !"__UNIQUE_ID_alias_userspace182", i1 false, i1 false}
!18 = !{!"../arch/arm/crypto/blake2s-shash.c", i32 70, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias_crypto183, !18, !"__UNIQUE_ID_alias_crypto183", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_alias_userspace184, !21, !"__UNIQUE_ID_alias_userspace184", i1 false, i1 false}
!21 = !{!"../arch/arm/crypto/blake2s-shash.c", i32 71, i32 1}
!22 = !{ptr @__UNIQUE_ID_alias_crypto185, !21, !"__UNIQUE_ID_alias_crypto185", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_alias_userspace186, !24, !"__UNIQUE_ID_alias_userspace186", i1 false, i1 false}
!24 = !{!"../arch/arm/crypto/blake2s-shash.c", i32 72, i32 1}
!25 = !{ptr @__UNIQUE_ID_alias_crypto187, !24, !"__UNIQUE_ID_alias_crypto187", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_alias_userspace188, !27, !"__UNIQUE_ID_alias_userspace188", i1 false, i1 false}
!27 = !{!"../arch/arm/crypto/blake2s-shash.c", i32 73, i32 1}
!28 = !{ptr @__UNIQUE_ID_alias_crypto189, !27, !"__UNIQUE_ID_alias_crypto189", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_alias_userspace190, !30, !"__UNIQUE_ID_alias_userspace190", i1 false, i1 false}
!30 = !{!"../arch/arm/crypto/blake2s-shash.c", i32 74, i32 1}
!31 = !{ptr @__UNIQUE_ID_alias_crypto191, !30, !"__UNIQUE_ID_alias_crypto191", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_alias_userspace192, !33, !"__UNIQUE_ID_alias_userspace192", i1 false, i1 false}
!33 = !{!"../arch/arm/crypto/blake2s-shash.c", i32 75, i32 1}
!34 = !{ptr @__UNIQUE_ID_alias_crypto193, !33, !"__UNIQUE_ID_alias_crypto193", i1 false, i1 false}
!35 = !{ptr @blake2s_arm_algs, !36, !"blake2s_arm_algs", i1 false, i1 false}
!36 = !{!"../arch/arm/crypto/blake2s-shash.c", i32 41, i32 25}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"branch_weights", i32 1, i32 2000}
