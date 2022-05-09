; ModuleID = '/llk/IR_all_yes/arch/arm/crypto/crc32-ce-glue.c_pt.bc'
source_filename = "../arch/arm/crypto/crc32-ce-glue.c"
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
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@crc32_pmull_algs = internal global [2 x %struct.shash_alg] [%struct.shash_alg { ptr @crc32_init, ptr @crc32_update, ptr @crc32_final, ptr null, ptr null, ptr null, ptr null, ptr @crc32_setkey, ptr null, ptr null, i32 4, [84 x i8] undef, i32 4, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 16384, i32 1, i32 4, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"crc32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"crc32-arm-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @crc32_cra_init, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.shash_alg { ptr @crc32_init, ptr @crc32c_update, ptr @crc32c_final, ptr null, ptr null, ptr null, ptr null, ptr @crc32_setkey, ptr null, ptr null, i32 4, [84 x i8] undef, i32 4, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 16384, i32 1, i32 4, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"crc32c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"crc32c-arm-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @crc32c_cra_init, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }], align 128
@__initcall__kmod_crc32_arm_ce__177_240_crc32_pmull_mod_init6 = internal global ptr @crc32_pmull_mod_init, section ".initcall6.init", align 4
@__exitcall_crc32_pmull_mod_exit = internal global ptr @crc32_pmull_mod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author178 = internal constant [63 x i8] c"crc32_arm_ce.author=Ard Biesheuvel <ard.biesheuvel@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file179 = internal constant [47 x i8] c"crc32_arm_ce.file=arch/arm/crypto/crc32-arm-ce\00", section ".modinfo", align 1
@__UNIQUE_ID_license180 = internal constant [28 x i8] c"crc32_arm_ce.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace181 = internal constant [25 x i8] c"crc32_arm_ce.alias=crc32\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto182 = internal constant [32 x i8] c"crc32_arm_ce.alias=crypto-crc32\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace183 = internal constant [26 x i8] c"crc32_arm_ce.alias=crc32c\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto184 = internal constant [33 x i8] c"crc32_arm_ce.alias=crypto-crc32c\00", section ".modinfo", align 1
@elf_hwcap2 = external dso_local local_unnamed_addr global i32, align 4
@fallback_crc32 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@fallback_crc32c = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.1 = private unnamed_addr constant [15 x i8] c"fallback_crc32\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 33, i32 14 }
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"fallback_crc32c\00", align 1
@___asan_gen_.5 = private constant [35 x i8] c"../arch/arm/crypto/crc32-ce-glue.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 34, i32 14 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias_crypto182, ptr @__UNIQUE_ID_alias_crypto184, ptr @__UNIQUE_ID_alias_userspace181, ptr @__UNIQUE_ID_alias_userspace183, ptr @__UNIQUE_ID_author178, ptr @__UNIQUE_ID_file179, ptr @__UNIQUE_ID_license180, ptr @__exitcall_crc32_pmull_mod_exit, ptr @__initcall__kmod_crc32_arm_ce__177_240_crc32_pmull_mod_init6, ptr @crc32_pmull_mod_exit, ptr @fallback_crc32, ptr @fallback_crc32c], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fallback_crc32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fallback_crc32c to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @crc32_pmull_mod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @crc32_pmull_algs, i32 noundef 2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @crc32_pmull_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap2 to i32))
  %0 = load i32, ptr @elf_hwcap2, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else4, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store ptr @crc32_pmull_update, ptr getelementptr inbounds ([2 x %struct.shash_alg], ptr @crc32_pmull_algs, i32 0, i32 0, i32 1), align 4
  store ptr @crc32c_pmull_update, ptr getelementptr inbounds ([2 x %struct.shash_alg], ptr @crc32_pmull_algs, i32 0, i32 1, i32 1), align 4
  %and1 = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %crc32_le.crc32_armv8_le = select i1 %tobool2.not, ptr @crc32_le, ptr @crc32_armv8_le
  %__crc32c_le.crc32c_armv8_le = select i1 %tobool2.not, ptr @__crc32c_le, ptr @crc32c_armv8_le
  store ptr %crc32_le.crc32_armv8_le, ptr @fallback_crc32, align 4
  store ptr %__crc32c_le.crc32c_armv8_le, ptr @fallback_crc32c, align 4
  br label %if.end9

if.else4:                                         ; preds = %entry
  %and5 = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else4.return_crit_edge, label %if.else4.if.end9_crit_edge

if.else4.if.end9_crit_edge:                       ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.else4.return_crit_edge:                        ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end9:                                          ; preds = %if.else4.if.end9_crit_edge, %if.then
  %call = tail call i32 @crypto_register_shashes(ptr noundef nonnull @crc32_pmull_algs, i32 noundef 2) #9
  br label %return

return:                                           ; preds = %if.end9, %if.else4.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end9 ], [ -19, %if.else4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crc32_init(ptr nocapture noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__crt_ctx.i.i, align 4
  %4 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %__ctx.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crc32_update(ptr nocapture noundef %desc, ptr noundef %data, i32 noundef %length) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %__ctx.i, align 4
  %call1 = tail call i32 @crc32_armv8_le(i32 noundef %1, ptr noundef %data, i32 noundef %length) #9
  %2 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call1, ptr %__ctx.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crc32_final(ptr nocapture noundef readonly %desc, ptr nocapture noundef writeonly %out) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %__ctx.i, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #9
  %3 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %2, ptr %out, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crc32_setkey(ptr nocapture noundef writeonly %hash, ptr nocapture noundef readonly %key, i32 noundef %keylen) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %keylen)
  %cmp.not = icmp eq i32 %keylen, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %hash, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #9
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %__crt_ctx.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @crc32_cra_init(ptr nocapture noundef writeonly %tfm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %__crt_ctx.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crc32c_update(ptr nocapture noundef %desc, ptr noundef %data, i32 noundef %length) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %__ctx.i, align 4
  %call1 = tail call i32 @crc32c_armv8_le(i32 noundef %1, ptr noundef %data, i32 noundef %length) #9
  %2 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call1, ptr %__ctx.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crc32c_final(ptr nocapture noundef readonly %desc, ptr nocapture noundef writeonly %out) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %__ctx.i, align 4
  %neg = xor i32 %1, -1
  %2 = tail call i32 @llvm.bswap.i32(i32 %neg) #9
  %3 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %2, ptr %out, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @crc32c_cra_init(ptr nocapture noundef writeonly %tfm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %__crt_ctx.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32_armv8_le(i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c_armv8_le(i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crc32_pmull_update(ptr nocapture noundef %desc, ptr noundef %data, i32 noundef %length) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i6.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i6.i to ptr
  %preempt_count.i7.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i7.i, align 4
  %and2.i = and i32 %7, 983040
  %or.i = or i32 %and2.i, %and.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i8.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i8.i to ptr
  %preempt_count.i9.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i9.i, align 4
  %and4.i = and i32 %11, 65280
  %or5.i = or i32 %or.i, %and4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %tobool.not.i = icmp eq i32 %or5.i, 0
  br i1 %tobool.not.i, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %data to i32
  %rem = and i32 %12, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub nuw nsw i32 16, %rem
  %13 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %length)
  %14 = load ptr, ptr @fallback_crc32, align 4
  %15 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %__ctx.i, align 4
  %call4 = tail call i32 %14(i32 noundef %16, ptr noundef %data, i32 noundef %13) #9, !callees !31
  %17 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call4, ptr %__ctx.i, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 %13
  %sub5 = sub i32 %length, %13
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %length.addr.0 = phi i32 [ %sub5, %if.then2 ], [ %length, %if.then.if.end_crit_edge ]
  %data.addr.0 = phi ptr [ %add.ptr, %if.then2 ], [ %data, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %length.addr.0)
  %cmp6 = icmp ugt i32 %length.addr.0, 63
  br i1 %cmp6, label %if.then7, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %length.addr.0, -16
  tail call void @kernel_neon_begin() #9
  %18 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %__ctx.i, align 4
  %call8 = tail call i32 @crc32_pmull_le(ptr noundef %data.addr.0, i32 noundef %and, i32 noundef %19) #9
  %20 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call8, ptr %__ctx.i, align 4
  tail call void @kernel_neon_end() #9
  %add.ptr9 = getelementptr i8, ptr %data.addr.0, i32 %and
  %sub10 = and i32 %length.addr.0, 15
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  %length.addr.1 = phi i32 [ %sub10, %if.then7 ], [ %length.addr.0, %if.end.if.end12_crit_edge ], [ %length, %entry.if.end12_crit_edge ]
  %data.addr.1 = phi ptr [ %add.ptr9, %if.then7 ], [ %data.addr.0, %if.end.if.end12_crit_edge ], [ %data, %entry.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.addr.1)
  %cmp13.not = icmp eq i32 %length.addr.1, 0
  br i1 %cmp13.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %21 = load ptr, ptr @fallback_crc32, align 4
  %22 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %__ctx.i, align 4
  %call15 = tail call i32 %21(i32 noundef %23, ptr noundef %data.addr.1, i32 noundef %length.addr.1) #9, !callees !31
  %24 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call15, ptr %__ctx.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crc32c_pmull_update(ptr nocapture noundef %desc, ptr noundef %data, i32 noundef %length) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i6.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i6.i to ptr
  %preempt_count.i7.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i7.i, align 4
  %and2.i = and i32 %7, 983040
  %or.i = or i32 %and2.i, %and.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i8.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i8.i to ptr
  %preempt_count.i9.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i9.i, align 4
  %and4.i = and i32 %11, 65280
  %or5.i = or i32 %or.i, %and4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %tobool.not.i = icmp eq i32 %or5.i, 0
  br i1 %tobool.not.i, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %data to i32
  %rem = and i32 %12, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub nuw nsw i32 16, %rem
  %13 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %length)
  %14 = load ptr, ptr @fallback_crc32c, align 4
  %15 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %__ctx.i, align 4
  %call4 = tail call i32 %14(i32 noundef %16, ptr noundef %data, i32 noundef %13) #9, !callees !32
  %17 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call4, ptr %__ctx.i, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 %13
  %sub5 = sub i32 %length, %13
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %length.addr.0 = phi i32 [ %sub5, %if.then2 ], [ %length, %if.then.if.end_crit_edge ]
  %data.addr.0 = phi ptr [ %add.ptr, %if.then2 ], [ %data, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %length.addr.0)
  %cmp6 = icmp ugt i32 %length.addr.0, 63
  br i1 %cmp6, label %if.then7, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %length.addr.0, -16
  tail call void @kernel_neon_begin() #9
  %18 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %__ctx.i, align 4
  %call8 = tail call i32 @crc32c_pmull_le(ptr noundef %data.addr.0, i32 noundef %and, i32 noundef %19) #9
  %20 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call8, ptr %__ctx.i, align 4
  tail call void @kernel_neon_end() #9
  %add.ptr9 = getelementptr i8, ptr %data.addr.0, i32 %and
  %sub10 = and i32 %length.addr.0, 15
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  %length.addr.1 = phi i32 [ %sub10, %if.then7 ], [ %length.addr.0, %if.end.if.end12_crit_edge ], [ %length, %entry.if.end12_crit_edge ]
  %data.addr.1 = phi ptr [ %add.ptr9, %if.then7 ], [ %data.addr.0, %if.end.if.end12_crit_edge ], [ %data, %entry.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.addr.1)
  %cmp13.not = icmp eq i32 %length.addr.1, 0
  br i1 %cmp13.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %21 = load ptr, ptr @fallback_crc32c, align 4
  %22 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %__ctx.i, align 4
  %call15 = tail call i32 %21(i32 noundef %23, ptr noundef %data.addr.1, i32 noundef %length.addr.1) #9, !callees !32
  %24 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call15, ptr %__ctx.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @__crc32c_le(i32 noundef, ptr noundef, i32 noundef) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_begin() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32_pmull_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_end() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c_pmull_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !15, !17, !19}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_crc32_arm_ce__177_240_crc32_pmull_mod_init6, !1, !"__initcall__kmod_crc32_arm_ce__177_240_crc32_pmull_mod_init6", i1 false, i1 false}
!1 = !{!"../arch/arm/crypto/crc32-ce-glue.c", i32 240, i32 1}
!2 = !{ptr @__exitcall_crc32_pmull_mod_exit, !3, !"__exitcall_crc32_pmull_mod_exit", i1 false, i1 false}
!3 = !{!"../arch/arm/crypto/crc32-ce-glue.c", i32 241, i32 1}
!4 = !{ptr @__UNIQUE_ID_author178, !5, !"__UNIQUE_ID_author178", i1 false, i1 false}
!5 = !{!"../arch/arm/crypto/crc32-ce-glue.c", i32 243, i32 1}
!6 = !{ptr @__UNIQUE_ID_file179, !7, !"__UNIQUE_ID_file179", i1 false, i1 false}
!7 = !{!"../arch/arm/crypto/crc32-ce-glue.c", i32 244, i32 1}
!8 = !{ptr @__UNIQUE_ID_license180, !7, !"__UNIQUE_ID_license180", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias_userspace181, !10, !"__UNIQUE_ID_alias_userspace181", i1 false, i1 false}
!10 = !{!"../arch/arm/crypto/crc32-ce-glue.c", i32 245, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto182, !10, !"__UNIQUE_ID_alias_crypto182", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias_userspace183, !13, !"__UNIQUE_ID_alias_userspace183", i1 false, i1 false}
!13 = !{!"../arch/arm/crypto/crc32-ce-glue.c", i32 246, i32 1}
!14 = !{ptr @__UNIQUE_ID_alias_crypto184, !13, !"__UNIQUE_ID_alias_crypto184", i1 false, i1 false}
!15 = !{ptr @crc32_pmull_algs, !16, !"crc32_pmull_algs", i1 false, i1 false}
!16 = !{!"../arch/arm/crypto/crc32-ce-glue.c", i32 174, i32 25}
!17 = !{ptr @fallback_crc32, !18, !"fallback_crc32", i1 false, i1 false}
!18 = !{!"../arch/arm/crypto/crc32-ce-glue.c", i32 33, i32 14}
!19 = !{ptr @fallback_crc32c, !20, !"fallback_crc32c", i1 false, i1 false}
!20 = !{!"../arch/arm/crypto/crc32-ce-glue.c", i32 34, i32 14}
!21 = !{!"sp"}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{ptr @crc32_armv8_le, ptr @crc32_le}
!32 = !{ptr @__crc32c_le, ptr @crc32c_armv8_le}
