; ModuleID = '/llk/IR_all_yes/arch/arm/crypto/ghash-ce-glue.c_pt.bc'
source_filename = "../arch/arm/crypto/ghash-ce-glue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [84 x i8], i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.be128 = type { i64, i64 }
%struct.ghash_key = type { %struct.be128, [0 x [2 x i64]] }

@__UNIQUE_ID_description173 = internal constant [75 x i8] c"ghash_arm_ce.description=GHASH hash function using ARMv8 Crypto Extensions\00", section ".modinfo", align 1
@__UNIQUE_ID_author174 = internal constant [63 x i8] c"ghash_arm_ce.author=Ard Biesheuvel <ard.biesheuvel@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [47 x i8] c"ghash_arm_ce.file=arch/arm/crypto/ghash-arm-ce\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [28 x i8] c"ghash_arm_ce.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace177 = internal constant [25 x i8] c"ghash_arm_ce.alias=ghash\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto178 = internal constant [32 x i8] c"ghash_arm_ce.alias=crypto-ghash\00", section ".modinfo", align 1
@ghash_async_alg = internal global %struct.ahash_alg { ptr @ghash_async_init, ptr @ghash_async_update, ptr @ghash_async_final, ptr null, ptr @ghash_async_digest, ptr @ghash_async_export, ptr @ghash_async_import, ptr @ghash_async_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 40, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 16, i32 4, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ghash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ghash-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @ghash_async_init_tfm, ptr @ghash_async_exit_tfm, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } } }, align 128
@ghash_alg = internal global %struct.shash_alg { ptr @ghash_init, ptr @ghash_update, ptr @ghash_final, ptr null, ptr null, ptr null, ptr null, ptr @ghash_setkey, ptr null, ptr null, i32 40, [84 x i8] undef, i32 16, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 32, i32 0, i32 299, %struct.refcount_struct zeroinitializer, [128 x i8] c"ghash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ghash-ce-sync\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, align 128
@__initcall__kmod_ghash_arm_ce__179_379_ghash_ce_mod_init6 = internal global ptr @ghash_ce_mod_init, section ".initcall6.init", align 4
@__exitcall_ghash_ce_mod_exit = internal global ptr @ghash_ce_mod_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ghash-ce-sync\00", [18 x i8] zeroinitializer }, align 32
@use_p64 = internal global { { %struct.atomic_t, { ptr } } } zeroinitializer, section ".data..ro_after_init", align 4
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@elf_hwcap2 = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private constant [35 x i8] c"../arch/arm/crypto/ghash-ce-glue.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 306, i32 34 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias_crypto178, ptr @__UNIQUE_ID_alias_userspace177, ptr @__UNIQUE_ID_author174, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_ghash_ce_mod_exit, ptr @__initcall__kmod_ghash_arm_ce__179_379_ghash_ce_mod_init6, ptr @ghash_ce_mod_exit, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ghash_ce_mod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_ahash(ptr noundef nonnull @ghash_async_alg) #7
  tail call void @crypto_unregister_shash(ptr noundef nonnull @ghash_alg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ghash_ce_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %0 = load i32, ptr @elf_hwcap, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap2 to i32))
  %1 = load i32, ptr @elf_hwcap2, align 4
  %and1 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr getelementptr inbounds (%struct.shash_alg, ptr @ghash_alg, i32 0, i32 15, i32 4), align 8
  %add = add i32 %2, 48
  store i32 %add, ptr getelementptr inbounds (%struct.shash_alg, ptr @ghash_alg, i32 0, i32 15, i32 4), align 8
  tail call void @static_key_enable(ptr noundef nonnull @use_p64) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call = tail call i32 @crypto_register_shash(ptr noundef nonnull @ghash_alg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %call8 = tail call i32 @crypto_register_ahash(ptr noundef nonnull @ghash_async_alg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %err_shash

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_shash:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_shash(ptr noundef nonnull @ghash_alg) #7
  br label %cleanup

cleanup:                                          ; preds = %err_shash, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %err_shash ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end4.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ghash_async_init(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call4 = tail call ptr @cryptd_shash_desc(ptr noundef %__ctx.i) #7
  %call5 = tail call ptr @cryptd_ahash_child(ptr noundef %3) #7
  %4 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %call4, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call5, i32 0, i32 2
  %5 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.crypto_shash_init.exit_crit_edge

entry.crypto_shash_init.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %crypto_shash_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call5, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 -256
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %10(ptr noundef %call4) #7
  br label %crypto_shash_init.exit

crypto_shash_init.exit:                           ; preds = %if.end.i, %entry.crypto_shash_init.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ -126, %entry.crypto_shash_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ghash_async_update(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %7, 15728640
  %8 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i6.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i6.i to ptr
  %preempt_count.i7.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i7.i, align 4
  %and2.i = and i32 %11, 983040
  %or.i = or i32 %and2.i, %and.i
  %12 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i8.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i8.i to ptr
  %preempt_count.i9.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i9.i, align 4
  %and4.i = and i32 %15, 65280
  %or5.i = or i32 %or.i, %and4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %tobool.not.i = icmp eq i32 %or5.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %16 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not = icmp eq i32 %19, 0
  br i1 %cmp.not, label %lor.lhs.false.if.else_crit_edge, label %land.lhs.true

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call6 = tail call zeroext i1 @cryptd_ahash_queued(ptr noundef %3) #7
  br i1 %call6, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %20 = call ptr @memcpy(ptr %__ctx.i, ptr %req, i32 128)
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %21 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %__crt_alg.i = getelementptr %struct.crypto_ahash, ptr %3, i32 0, i32 10, i32 3
  %22 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__crt_alg.i, align 4
  %nbytes1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 1
  %24 = ptrtoint ptr %nbytes1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nbytes1.i, align 8
  tail call void @crypto_stats_get(ptr noundef %23) #7
  %26 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tfm1.i, align 16
  %update.i = getelementptr i8, ptr %27, i32 -124
  %28 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %update.i, align 4
  %call3.i = tail call i32 %29(ptr noundef %__ctx.i) #7
  tail call void @crypto_stats_ahash_update(i32 noundef %25, i32 noundef %call3.i, ptr noundef %23) #7
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %call8 = tail call ptr @cryptd_shash_desc(ptr noundef %__ctx.i) #7
  %call9 = tail call i32 @shash_ahash_update(ptr noundef %req, ptr noundef %call8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call3.i, %if.then ], [ %call9, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ghash_async_final(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %7, 15728640
  %8 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i6.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i6.i to ptr
  %preempt_count.i7.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i7.i, align 4
  %and2.i = and i32 %11, 983040
  %or.i = or i32 %and2.i, %and.i
  %12 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i8.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i8.i to ptr
  %preempt_count.i9.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i9.i, align 4
  %and4.i = and i32 %15, 65280
  %or5.i = or i32 %or.i, %and4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %tobool.not.i = icmp eq i32 %or5.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %16 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not = icmp eq i32 %19, 0
  br i1 %cmp.not, label %lor.lhs.false.if.else_crit_edge, label %land.lhs.true

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call6 = tail call zeroext i1 @cryptd_ahash_queued(ptr noundef %3) #7
  br i1 %call6, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %20 = call ptr @memcpy(ptr %__ctx.i, ptr %req, i32 128)
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %21 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %call7 = tail call i32 @crypto_ahash_final(ptr noundef %__ctx.i) #7
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %call8 = tail call ptr @cryptd_shash_desc(ptr noundef %__ctx.i) #7
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %22 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %result, align 32
  %call9 = tail call i32 @crypto_shash_final(ptr noundef %call8, ptr noundef %23) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call7, %if.then ], [ %call9, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ghash_async_digest(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %7, 15728640
  %8 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i6.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i6.i to ptr
  %preempt_count.i7.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i7.i, align 4
  %and2.i = and i32 %11, 983040
  %or.i = or i32 %and2.i, %and.i
  %12 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i8.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i8.i to ptr
  %preempt_count.i9.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i9.i, align 4
  %and4.i = and i32 %15, 65280
  %or5.i = or i32 %or.i, %and4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %tobool.not.i = icmp eq i32 %or5.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %16 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not = icmp eq i32 %19, 0
  br i1 %cmp.not, label %lor.lhs.false.if.else_crit_edge, label %land.lhs.true

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call6 = tail call zeroext i1 @cryptd_ahash_queued(ptr noundef %3) #7
  br i1 %call6, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %20 = call ptr @memcpy(ptr %__ctx.i, ptr %req, i32 128)
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %21 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %call7 = tail call i32 @crypto_ahash_digest(ptr noundef %__ctx.i) #7
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %call8 = tail call ptr @cryptd_shash_desc(ptr noundef %__ctx.i) #7
  %call9 = tail call ptr @cryptd_ahash_child(ptr noundef %3) #7
  %22 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9, ptr %call8, align 8
  %call11 = tail call i32 @shash_ahash_digest(ptr noundef %req, ptr noundef %call8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call7, %if.then ], [ %call11, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ghash_async_export(ptr noundef %req, ptr noundef %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %call1 = tail call ptr @cryptd_shash_desc(ptr noundef %__ctx.i) #7
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call1, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %export.i = getelementptr i8, ptr %3, i32 -236
  %4 = ptrtoint ptr %export.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %export.i, align 4
  %call1.i = tail call i32 %5(ptr noundef %call1, ptr noundef %out) #7
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ghash_async_import(ptr noundef %req, ptr noundef %in) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %call3 = tail call ptr @cryptd_shash_desc(ptr noundef %__ctx.i) #7
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call4 = tail call ptr @cryptd_ahash_child(ptr noundef %3) #7
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %call3, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call4, i32 0, i32 2
  %5 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.crypto_shash_import.exit_crit_edge

entry.crypto_shash_import.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %crypto_shash_import.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call4, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_alg.i.i, align 4
  %import.i = getelementptr i8, ptr %8, i32 -232
  %9 = ptrtoint ptr %import.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %import.i, align 8
  %call3.i = tail call i32 %10(ptr noundef %call3, ptr noundef %in) #7
  br label %crypto_shash_import.exit

crypto_shash_import.exit:                         ; preds = %if.end.i, %entry.crypto_shash_import.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ -126, %entry.crypto_shash_import.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ghash_async_setkey(ptr nocapture noundef readonly %tfm, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %3, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %base.i.i6 = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 0, i32 10
  %4 = ptrtoint ptr %base.i.i6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i.i6, align 128
  %and = and i32 %5, 1048320
  %or.i.i = or i32 %and, %and.i.i
  store i32 %or.i.i, ptr %base.i.i, align 128
  %call2 = tail call i32 @crypto_ahash_setkey(ptr noundef %1, ptr noundef %key, i32 noundef %keylen) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ghash_async_init_tfm(ptr nocapture noundef writeonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @cryptd_alloc_ahash(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %1 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %__crt_ctx.i, align 4
  %reqsize.i = getelementptr inbounds %struct.crypto_ahash, ptr %call1, i32 0, i32 8
  %2 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reqsize.i, align 32
  %add = add i32 %3, 128
  %reqsize1.i = getelementptr i8, ptr %tfm, i32 -96
  %4 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %reqsize1.i, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ghash_async_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i, align 4
  tail call void @cryptd_free_ahash(ptr noundef %1) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cryptd_shash_desc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cryptd_ahash_child(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cryptd_ahash_queued(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shash_ahash_update(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_ahash_update(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_final(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_digest(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shash_ahash_digest(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cryptd_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cryptd_free_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ghash_init(ptr nocapture noundef writeonly %desc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = call ptr @memset(ptr %__ctx.i, i32 0, i32 40)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ghash_update(ptr noundef %desc, ptr noundef %src, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %count = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 8
  %rem = and i32 %1, 15
  %add = add i32 %1, %len
  store i32 %add, ptr %count, align 8
  %add2 = add i32 %rem, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %add2)
  %cmp = icmp ugt i32 %add2, 15
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 8
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub nuw nsw i32 16, %rem
  %buf = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3
  %add.ptr = getelementptr i8, ptr %buf, i32 %rem
  %4 = call ptr @memcpy(ptr %add.ptr, ptr %src, i32 %sub)
  %add.ptr5 = getelementptr i8, ptr %src, i32 %sub
  %sub6 = sub i32 %len, %sub
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %len.addr.0 = phi i32 [ %sub6, %if.then4 ], [ %len, %if.then.if.end_crit_edge ]
  %src.addr.0 = phi ptr [ %add.ptr5, %if.then4 ], [ %src, %if.then.if.end_crit_edge ]
  %div44 = lshr i32 %len.addr.0, 4
  %rem7 = and i32 %len.addr.0, 15
  %buf10 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3
  %spec.select = select i1 %tobool.not, ptr null, ptr %buf10
  tail call fastcc void @ghash_do_update(i32 noundef %div44, ptr noundef %__ctx.i, ptr noundef %src.addr.0, ptr noundef %__crt_ctx.i.i, ptr noundef %spec.select)
  %mul = and i32 %len.addr.0, -16
  %add.ptr12 = getelementptr i8, ptr %src.addr.0, i32 %mul
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry.if.end13_crit_edge
  %len.addr.1 = phi i32 [ %rem7, %if.end ], [ %len, %entry.if.end13_crit_edge ]
  %partial.0 = phi i32 [ 0, %if.end ], [ %rem, %entry.if.end13_crit_edge ]
  %src.addr.1 = phi ptr [ %add.ptr12, %if.end ], [ %src, %entry.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1)
  %tobool14.not = icmp eq i32 %len.addr.1, 0
  br i1 %tobool14.not, label %if.end13.if.end19_crit_edge, label %if.then15

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %buf16 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3
  %add.ptr18 = getelementptr i8, ptr %buf16, i32 %partial.0
  %5 = call ptr @memcpy(ptr %add.ptr18, ptr %src.addr.1, i32 %len.addr.1)
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end13.if.end19_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ghash_final(ptr noundef %desc, ptr nocapture noundef writeonly %dst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %count = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 8
  %rem = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 8
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 1
  %buf = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3
  %add.ptr = getelementptr i8, ptr %buf, i32 %rem
  %sub = sub nuw nsw i32 16, %rem
  %4 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  tail call fastcc void @ghash_do_update(i32 noundef 1, ptr noundef %__ctx.i, ptr noundef %buf, ptr noundef %__crt_ctx.i.i, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx, align 8
  %7 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %dst, align 1
  %8 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %__ctx.i, align 8
  %add.ptr8 = getelementptr i8, ptr %dst, i32 8
  %10 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %add.ptr8, align 1
  %11 = call ptr @memset(ptr %__ctx.i, i32 0, i32 40)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ghash_setkey(ptr noundef %tfm, ptr nocapture noundef readonly %inkey, i32 noundef %keylen) #2 align 64 {
entry:
  %h7 = alloca %struct.be128, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %keylen)
  %cmp.not = icmp eq i32 %keylen, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = call ptr @memcpy(ptr %__crt_ctx.i.i, ptr %inkey, i32 16)
  %h = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 12
  %1 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %__crt_ctx.i.i, align 8
  %b.i = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 4
  %3 = ptrtoint ptr %b.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %b.i, align 8
  %or.i = tail call i64 @llvm.fshl.i64(i64 %4, i64 %2, i64 1) #7
  %5 = ptrtoint ptr %h to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %or.i, ptr %h, align 8
  %or5.i = tail call i64 @llvm.fshl.i64(i64 %2, i64 %4, i64 1) #7
  %xor.i = xor i64 %or5.i, -4467570830351532032
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool.not14.i = icmp slt i64 %2, 0
  %spec.select.i = select i1 %tobool.not14.i, i64 %xor.i, i64 %or5.i
  %arrayidx6.i = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 20
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %spec.select.i, ptr %arrayidx6.i, align 8
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @use_p64, i32 1), ptr blockaddress(@ghash_setkey, %cleanup)) #7
          to label %if.then6 [label %cleanup], !srcloc !32

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %h7) #7
  %7 = getelementptr inbounds %struct.be128, ptr %h7, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %h7, ptr %__crt_ctx.i.i, i32 16)
  call void @gf128mul_lle(ptr noundef nonnull %h7, ptr noundef %__crt_ctx.i.i) #7
  %arrayidx11 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 28
  %9 = ptrtoint ptr %h7 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %h7, align 8
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %7, align 8
  %or.i32 = call i64 @llvm.fshl.i64(i64 %12, i64 %10, i64 1) #7
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %or.i32, ptr %arrayidx11, align 8
  %or5.i33 = call i64 @llvm.fshl.i64(i64 %10, i64 %12, i64 1) #7
  %xor.i34 = xor i64 %or5.i33, -4467570830351532032
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.not14.i35 = icmp slt i64 %10, 0
  %spec.select.i36 = select i1 %tobool.not14.i35, i64 %xor.i34, i64 %or5.i33
  %arrayidx6.i37 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 36
  %14 = ptrtoint ptr %arrayidx6.i37 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %spec.select.i36, ptr %arrayidx6.i37, align 8
  call void @gf128mul_lle(ptr noundef nonnull %h7, ptr noundef %__crt_ctx.i.i) #7
  %arrayidx15 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 44
  %15 = ptrtoint ptr %h7 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %h7, align 8
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %7, align 8
  %or.i39 = call i64 @llvm.fshl.i64(i64 %18, i64 %16, i64 1) #7
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %or.i39, ptr %arrayidx15, align 8
  %or5.i40 = call i64 @llvm.fshl.i64(i64 %16, i64 %18, i64 1) #7
  %xor.i41 = xor i64 %or5.i40, -4467570830351532032
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool.not14.i42 = icmp slt i64 %16, 0
  %spec.select.i43 = select i1 %tobool.not14.i42, i64 %xor.i41, i64 %or5.i40
  %arrayidx6.i44 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 52
  %20 = ptrtoint ptr %arrayidx6.i44 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %spec.select.i43, ptr %arrayidx6.i44, align 8
  call void @gf128mul_lle(ptr noundef nonnull %h7, ptr noundef %__crt_ctx.i.i) #7
  %arrayidx19 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 60
  %21 = ptrtoint ptr %h7 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %h7, align 8
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %7, align 8
  %or.i46 = call i64 @llvm.fshl.i64(i64 %24, i64 %22, i64 1) #7
  %25 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %or.i46, ptr %arrayidx19, align 8
  %or5.i47 = call i64 @llvm.fshl.i64(i64 %22, i64 %24, i64 1) #7
  %xor.i48 = xor i64 %or5.i47, -4467570830351532032
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool.not14.i49 = icmp slt i64 %22, 0
  %spec.select.i50 = select i1 %tobool.not14.i49, i64 %xor.i48, i64 %or5.i47
  %arrayidx6.i51 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 68
  %26 = ptrtoint ptr %arrayidx6.i51 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %spec.select.i50, ptr %arrayidx6.i51, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %h7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ghash_do_update(i32 noundef %blocks, ptr noundef %dg, ptr noundef %src, ptr noundef %key, ptr noundef %head) unnamed_addr #2 align 64 {
entry:
  %dst = alloca %struct.be128, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i6.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i6.i to ptr
  %preempt_count.i7.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i7.i, align 4
  %and2.i = and i32 %7, 983040
  %or.i = or i32 %and2.i, %and.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !22) #7
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
  br i1 %tobool.not.i, label %if.then, label %if.else15, !prof !33

if.then:                                          ; preds = %entry
  tail call void @kernel_neon_begin() #7
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @use_p64, i32 1), ptr blockaddress(@ghash_do_update, %if.else)) #7
          to label %if.then12 [label %if.else], !srcloc !32

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %h = getelementptr inbounds %struct.ghash_key, ptr %key, i32 0, i32 1
  tail call void @pmull_ghash_update_p64(i32 noundef %blocks, ptr noundef %dg, ptr noundef %src, ptr noundef %h, ptr noundef %head) #7
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %h13 = getelementptr inbounds %struct.ghash_key, ptr %key, i32 0, i32 1
  tail call void @pmull_ghash_update_p8(i32 noundef %blocks, ptr noundef %dg, ptr noundef %src, ptr noundef %h13, ptr noundef %head) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then12
  tail call void @kernel_neon_end() #7
  br label %if.end26

if.else15:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dst) #7
  %12 = getelementptr inbounds %struct.be128, ptr %dst, i32 0, i32 1
  %arrayidx = getelementptr i64, ptr %dg, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx, align 8
  %15 = ptrtoint ptr %dg to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %dg, align 8
  %incdec.ptr2.i = getelementptr inbounds i32, ptr %dst, i32 1
  %incdec.ptr2.2.i = getelementptr inbounds i32, ptr %dst, i32 3
  %tobool17.not.peel = icmp eq ptr %head, null
  %in.0.peel = select i1 %tobool17.not.peel, ptr %src, ptr %head
  %incdec.ptr.i.peel = getelementptr i32, ptr %in.0.peel, i32 1
  %17 = ptrtoint ptr %in.0.peel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %in.0.peel, align 4
  %19 = lshr i64 %14, 32
  %20 = trunc i64 %19 to i32
  %xor.i.peel = xor i32 %18, %20
  %21 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %xor.i.peel, ptr %dst, align 8
  %incdec.ptr.1.i.peel = getelementptr i32, ptr %in.0.peel, i32 2
  %22 = ptrtoint ptr %incdec.ptr.i.peel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %incdec.ptr.i.peel, align 4
  %24 = trunc i64 %14 to i32
  %xor.1.i.peel = xor i32 %23, %24
  %25 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %xor.1.i.peel, ptr %incdec.ptr2.i, align 4
  %incdec.ptr.2.i.peel = getelementptr i32, ptr %in.0.peel, i32 3
  %26 = ptrtoint ptr %incdec.ptr.1.i.peel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %incdec.ptr.1.i.peel, align 4
  %28 = lshr i64 %16, 32
  %29 = trunc i64 %28 to i32
  %xor.2.i.peel = xor i32 %27, %29
  %30 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %xor.2.i.peel, ptr %12, align 8
  %31 = ptrtoint ptr %incdec.ptr.2.i.peel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %incdec.ptr.2.i.peel, align 4
  %33 = trunc i64 %16 to i32
  %xor.3.i.peel = xor i32 %32, %33
  %34 = ptrtoint ptr %incdec.ptr2.2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %xor.3.i.peel, ptr %incdec.ptr2.2.i, align 4
  call void @gf128mul_lle(ptr noundef nonnull %dst, ptr noundef %key) #7
  %blocks.addr.1.peel = sext i1 %tobool17.not.peel to i32
  %dec.peel = add i32 %blocks.addr.1.peel, %blocks
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.peel)
  %tobool21.not.peel = icmp eq i32 %dec.peel, 0
  br i1 %tobool21.not.peel, label %if.else15.do.end_crit_edge, label %do.body.peel.next

if.else15.do.end_crit_edge:                       ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.body.peel.next:                                ; preds = %if.else15
  %src.addr.1.idx.peel = select i1 %tobool17.not.peel, i32 16, i32 0
  %src.addr.1.peel = getelementptr i8, ptr %src, i32 %src.addr.1.idx.peel
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.peel.next
  %src.addr.0 = phi ptr [ %src.addr.1.peel, %do.body.peel.next ], [ %src.addr.1, %do.body.do.body_crit_edge ]
  %blocks.addr.0 = phi i32 [ %dec.peel, %do.body.peel.next ], [ %dec, %do.body.do.body_crit_edge ]
  %src.addr.1 = getelementptr i8, ptr %src.addr.0, i32 16
  %incdec.ptr.i = getelementptr i32, ptr %src.addr.0, i32 1
  %35 = ptrtoint ptr %src.addr.0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %src.addr.0, align 4
  %37 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dst, align 8
  %xor.i = xor i32 %38, %36
  store i32 %xor.i, ptr %dst, align 8
  %incdec.ptr.1.i = getelementptr i32, ptr %src.addr.0, i32 2
  %39 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %incdec.ptr.i, align 4
  %41 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %incdec.ptr2.i, align 4
  %xor.1.i = xor i32 %42, %40
  store i32 %xor.1.i, ptr %incdec.ptr2.i, align 4
  %incdec.ptr.2.i = getelementptr i32, ptr %src.addr.0, i32 3
  %43 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %incdec.ptr.1.i, align 4
  %45 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %12, align 8
  %xor.2.i = xor i32 %46, %44
  store i32 %xor.2.i, ptr %12, align 8
  %47 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %incdec.ptr.2.i, align 4
  %49 = ptrtoint ptr %incdec.ptr2.2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %incdec.ptr2.2.i, align 4
  %xor.3.i = xor i32 %50, %48
  store i32 %xor.3.i, ptr %incdec.ptr2.2.i, align 4
  call void @gf128mul_lle(ptr noundef nonnull %dst, ptr noundef %key) #7
  %dec = add i32 %blocks.addr.0, -1
  %tobool21.not = icmp eq i32 %dec, 0
  br i1 %tobool21.not, label %do.body.do.end_crit_edge, label %do.body.do.body_crit_edge, !llvm.loop !34

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %do.body.do.end_crit_edge, %if.else15.do.end_crit_edge
  %51 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %12, align 8
  %53 = ptrtoint ptr %dg to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %dg, align 8
  %54 = ptrtoint ptr %dst to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %dst, align 8
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %arrayidx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dst) #7
  br label %if.end26

if.end26:                                         ; preds = %do.end, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_begin() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmull_ghash_update_p64(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmull_ghash_update_p8(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_end() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf128mul_lle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20}
!llvm.named.register.sp = !{!22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__UNIQUE_ID_description173, !1, !"__UNIQUE_ID_description173", i1 false, i1 false}
!1 = !{!"../arch/arm/crypto/ghash-ce-glue.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_author174, !3, !"__UNIQUE_ID_author174", i1 false, i1 false}
!3 = !{!"../arch/arm/crypto/ghash-ce-glue.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file175, !5, !"__UNIQUE_ID_file175", i1 false, i1 false}
!5 = !{!"../arch/arm/crypto/ghash-ce-glue.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license176, !5, !"__UNIQUE_ID_license176", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias_userspace177, !8, !"__UNIQUE_ID_alias_userspace177", i1 false, i1 false}
!8 = !{!"../arch/arm/crypto/ghash-ce-glue.c", i32 25, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_crypto178, !8, !"__UNIQUE_ID_alias_crypto178", i1 false, i1 false}
!10 = !{ptr @__initcall__kmod_ghash_arm_ce__179_379_ghash_ce_mod_init6, !11, !"__initcall__kmod_ghash_arm_ce__179_379_ghash_ce_mod_init6", i1 false, i1 false}
!11 = !{!"../arch/arm/crypto/ghash-ce-glue.c", i32 379, i32 1}
!12 = !{ptr @__exitcall_ghash_ce_mod_exit, !13, !"__exitcall_ghash_ce_mod_exit", i1 false, i1 false}
!13 = !{!"../arch/arm/crypto/ghash-ce-glue.c", i32 380, i32 1}
!14 = !{ptr @ghash_async_alg, !15, !"ghash_async_alg", i1 false, i1 false}
!15 = !{!"../arch/arm/crypto/ghash-ce-glue.c", i32 324, i32 25}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/crypto/ghash-ce-glue.c", i32 306, i32 34}
!18 = !{ptr @ghash_alg, !19, !"ghash_alg", i1 false, i1 false}
!19 = !{!"../arch/arm/crypto/ghash-ce-glue.c", i32 183, i32 25}
!20 = !{ptr @use_p64, !21, !"use_p64", i1 false, i1 false}
!21 = !{!"../arch/arm/crypto/ghash-ce-glue.c", i32 51, i32 24}
!22 = !{!"sp"}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 2148171308, i64 2148171313, i64 2148171334, i64 2148171378, i64 2148171412, i64 2148171433}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.peeled.count", i32 1}
