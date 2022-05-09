; ModuleID = '/llk/IR_all_yes/arch/arm/crypto/aes-ce-glue.c_pt.bc'
source_filename = "../arch/arm/crypto/aes-ce-glue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.skcipher_walk = type { %union.anon.76, %union.anon.76, %struct.scatter_walk, i32, %struct.scatter_walk, i32, %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.crypto_aes_ctx = type { [60 x i32], [60 x i32], i32 }
%struct.aes_block = type { [16 x i8] }

@__UNIQUE_ID_description241 = internal constant [73 x i8] c"aes_arm_ce.description=AES-ECB/CBC/CTR/XTS using ARMv8 Crypto Extensions\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [61 x i8] c"aes_arm_ce.author=Ard Biesheuvel <ard.biesheuvel@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [43 x i8] c"aes_arm_ce.file=arch/arm/crypto/aes-arm-ce\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [26 x i8] c"aes_arm_ce.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_aes_arm_ce__245_729_cpu_feature_match_AES_init6 = internal global ptr @cpu_feature_match_AES_init, section ".initcall6.init", align 4
@__exitcall_aes_exit = internal global ptr @aes_exit, section ".exitcall.exit", align 4
@elf_hwcap2 = external dso_local local_unnamed_addr global i32, align 4
@aes_algs = internal global [6 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @ce_aes_setkey, ptr @ecb_encrypt, ptr @ecb_decrypt, ptr null, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 8192, i32 16, i32 484, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"__ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"__ecb-aes-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @ce_aes_setkey, ptr @cbc_encrypt, ptr @cbc_decrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 8192, i32 16, i32 484, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"__cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"__cbc-aes-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @ce_aes_setkey, ptr @cts_cbc_encrypt, ptr @cts_cbc_decrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 32, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 8192, i32 16, i32 484, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"__cts(cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"__cts-cbc-aes-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @ce_aes_setkey, ptr @ctr_encrypt, ptr @ctr_encrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 16, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 8192, i32 1, i32 484, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"__ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"__ctr-aes-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @ce_aes_setkey, ptr @ctr_encrypt_sync, ptr @ctr_encrypt_sync, ptr null, ptr null, i32 16, i32 32, i32 16, i32 16, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 484, i32 0, i32 299, %struct.refcount_struct zeroinitializer, [128 x i8] c"ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ctr-aes-ce-sync\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @xts_set_key, ptr @xts_encrypt, ptr @xts_decrypt, ptr null, ptr null, i32 32, i32 64, i32 16, i32 0, i32 32, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 8192, i32 16, i32 976, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"__xts(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"__xts-aes-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }], align 128
@aes_simd_algs = internal global { [6 x ptr], [40 x i8] } zeroinitializer, align 32
@ce_aes_expandkey.rcon = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01\02\04\08\10 @\80\1B6", [22 x i8] zeroinitializer }, align 32
@crypto_ctr_encrypt_walk.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/crypto/ctr.h\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 32]
@___asan_gen_.2 = private unnamed_addr constant [14 x i8] c"aes_simd_algs\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 682, i32 34 }
@___asan_gen_.5 = private unnamed_addr constant [5 x i8] c"rcon\00", align 1
@___asan_gen_.6 = private constant [33 x i8] c"../arch/arm/crypto/aes-ce-glue.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 75, i32 18 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [24 x i8] c"../include/crypto/ctr.h\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 31, i32 6 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_aes_exit, ptr @__initcall__kmod_aes_arm_ce__245_729_cpu_feature_match_AES_init6, ptr @aes_simd_algs, ptr @ce_aes_expandkey.rcon, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_simd_algs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce_aes_expandkey.rcon to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_feature_match_AES_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap2 to i32))
  %0 = load i32, ptr @elf_hwcap2, align 4
  %and2.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.i.not = icmp eq i32 %and2.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @aes_init() #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aes_exit() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @aes_simd_algs, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %entry
  tail call void @simd_skcipher_free(ptr noundef nonnull %0) #6
  %1 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @aes_simd_algs, i32 0, i32 1), align 4
  %tobool.not.1 = icmp eq ptr %1, null
  br i1 %tobool.not.1, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.1:                                       ; preds = %for.body
  tail call void @simd_skcipher_free(ptr noundef nonnull %1) #6
  %2 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @aes_simd_algs, i32 0, i32 2), align 4
  %tobool.not.2 = icmp eq ptr %2, null
  br i1 %tobool.not.2, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  tail call void @simd_skcipher_free(ptr noundef nonnull %2) #6
  %3 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @aes_simd_algs, i32 0, i32 3), align 4
  %tobool.not.3 = icmp eq ptr %3, null
  br i1 %tobool.not.3, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  tail call void @simd_skcipher_free(ptr noundef nonnull %3) #6
  %4 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @aes_simd_algs, i32 0, i32 4), align 4
  %tobool.not.4 = icmp eq ptr %4, null
  br i1 %tobool.not.4, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  tail call void @simd_skcipher_free(ptr noundef nonnull %4) #6
  %5 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @aes_simd_algs, i32 0, i32 5), align 4
  %tobool.not.5 = icmp eq ptr %5, null
  br i1 %tobool.not.5, label %for.body.4.for.end_crit_edge, label %for.body.5

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @simd_skcipher_free(ptr noundef nonnull %5) #6
  br label %for.end

for.end:                                          ; preds = %for.body.5, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @crypto_unregister_skciphers(ptr noundef nonnull @aes_algs, i32 noundef 6) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aes_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_skciphers(ptr noundef nonnull @aes_algs, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.035 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %cra_flags = getelementptr [6 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 %i.035, i32 11, i32 2
  %0 = ptrtoint ptr %cra_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cra_flags, align 16
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end3:                                          ; preds = %for.body
  %add.ptr = getelementptr [6 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 %i.035, i32 11, i32 8, i32 2
  %cra_driver_name = getelementptr [6 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 %i.035, i32 11, i32 9
  %add.ptr9 = getelementptr i8, ptr %cra_driver_name, i32 2
  %call14 = tail call ptr @simd_skcipher_create_compat(ptr noundef %add.ptr, ptr noundef %add.ptr9, ptr noundef %cra_driver_name) #6
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %unregister_simds, label %if.end18

if.end18:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx19 = getelementptr [6 x ptr], ptr @aes_simd_algs, i32 0, i32 %i.035
  %2 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call14, ptr %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

unregister_simds:                                 ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call14 to i32
  tail call void @aes_exit()
  br label %cleanup

cleanup:                                          ; preds = %unregister_simds, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %unregister_simds ], [ %call, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simd_skcipher_create_compat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ce_aes_setkey(ptr noundef %tfm, ptr nocapture noundef readonly %in_key, i32 noundef %key_len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %call1 = tail call fastcc i32 @ce_aes_expandkey(ptr noundef %__crt_ctx.i.i, ptr noundef %in_key, i32 noundef %key_len)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecb_encrypt(ptr noundef %req) #1 align 64 {
entry:
  %walk = alloca %struct.skcipher_walk, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #6
  %2 = call ptr @memset(ptr %walk, i32 255, i32 84)
  %call2 = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef %req, i1 noundef zeroext false) #6
  %nbytes = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %3 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %tobool.not10 = icmp ult i32 %4, 16
  br i1 %tobool.not10, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %addr = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %addr3 = getelementptr inbounds %struct.anon.78, ptr %walk, i32 0, i32 1
  %key_length.i = getelementptr i8, ptr %1, i32 608
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %5 = phi i32 [ %4, %while.body.lr.ph ], [ %15, %while.body.while.body_crit_edge ]
  %div9 = lshr i32 %5, 4
  call void @kernel_neon_begin() #6
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr, align 4
  %8 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr3, align 4
  %10 = ptrtoint ptr %key_length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_length.i, align 4
  %div1.i = lshr i32 %11, 2
  %add.i = add nuw nsw i32 %div1.i, 6
  call void @ce_aes_ecb_encrypt(ptr noundef %7, ptr noundef %9, ptr noundef %__crt_ctx.i.i, i32 noundef %add.i, i32 noundef %div9) #6
  call void @kernel_neon_end() #6
  %12 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nbytes, align 4
  %rem = and i32 %13, 15
  %call6 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %rem) #6
  %14 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nbytes, align 4
  %tobool.not = icmp ult i32 %15, 16
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %err.0.lcssa = phi i32 [ %call2, %entry.while.end_crit_edge ], [ %call6, %while.body.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #6
  ret i32 %err.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecb_decrypt(ptr noundef %req) #1 align 64 {
entry:
  %walk = alloca %struct.skcipher_walk, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #6
  %2 = call ptr @memset(ptr %walk, i32 255, i32 84)
  %call2 = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef %req, i1 noundef zeroext false) #6
  %nbytes = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %3 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %tobool.not10 = icmp ult i32 %4, 16
  br i1 %tobool.not10, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %addr = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %addr3 = getelementptr inbounds %struct.anon.78, ptr %walk, i32 0, i32 1
  %key_dec = getelementptr i8, ptr %1, i32 368
  %key_length.i = getelementptr i8, ptr %1, i32 608
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %5 = phi i32 [ %4, %while.body.lr.ph ], [ %15, %while.body.while.body_crit_edge ]
  %div9 = lshr i32 %5, 4
  call void @kernel_neon_begin() #6
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr, align 4
  %8 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr3, align 4
  %10 = ptrtoint ptr %key_length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_length.i, align 4
  %div1.i = lshr i32 %11, 2
  %add.i = add nuw nsw i32 %div1.i, 6
  call void @ce_aes_ecb_decrypt(ptr noundef %7, ptr noundef %9, ptr noundef %key_dec, i32 noundef %add.i, i32 noundef %div9) #6
  call void @kernel_neon_end() #6
  %12 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nbytes, align 4
  %rem = and i32 %13, 15
  %call6 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %rem) #6
  %14 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nbytes, align 4
  %tobool.not = icmp ult i32 %15, 16
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %err.0.lcssa = phi i32 [ %call2, %entry.while.end_crit_edge ], [ %call6, %while.body.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #6
  ret i32 %err.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbc_encrypt(ptr noundef %req) #1 align 64 {
entry:
  %walk = alloca %struct.skcipher_walk, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #6
  %0 = call ptr @memset(ptr %walk, i32 255, i32 84)
  %call = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef %req, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %1 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %2, i32 128
  %nbytes.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %3 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nbytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %tobool.not13.i = icmp ult i32 %4, 16
  br i1 %tobool.not13.i, label %if.end.cleanup_crit_edge, label %while.body.lr.ph.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %if.end
  %addr.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %addr2.i = getelementptr inbounds %struct.anon.78, ptr %walk, i32 0, i32 1
  %key_length.i.i = getelementptr i8, ptr %2, i32 608
  %iv.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %5 = phi i32 [ %4, %while.body.lr.ph.i ], [ %17, %while.body.i.while.body.i_crit_edge ]
  %div12.i = lshr i32 %5, 4
  call void @kernel_neon_begin() #6
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr.i, align 4
  %8 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr2.i, align 4
  %10 = ptrtoint ptr %key_length.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_length.i.i, align 4
  %div1.i.i = lshr i32 %11, 2
  %add.i.i = add nuw nsw i32 %div1.i.i, 6
  %12 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iv.i, align 4
  call void @ce_aes_cbc_encrypt(ptr noundef %7, ptr noundef %9, ptr noundef %__crt_ctx.i.i.i, i32 noundef %add.i.i, i32 noundef %div12.i, ptr noundef %13) #6
  call void @kernel_neon_end() #6
  %14 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nbytes.i, align 4
  %rem.i = and i32 %15, 15
  %call5.i = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %rem.i) #6
  %16 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nbytes.i, align 4
  %tobool.not.i = icmp ult i32 %17, 16
  br i1 %tobool.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %while.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call5.i, %while.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbc_decrypt(ptr noundef %req) #1 align 64 {
entry:
  %walk = alloca %struct.skcipher_walk, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #6
  %0 = call ptr @memset(ptr %walk, i32 255, i32 84)
  %call = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef %req, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %nbytes.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %1 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nbytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %2)
  %tobool.not13.i = icmp ult i32 %2, 16
  br i1 %tobool.not13.i, label %if.end.cleanup_crit_edge, label %while.body.lr.ph.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %if.end
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tfm.i.i, align 16
  %addr.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %addr2.i = getelementptr inbounds %struct.anon.78, ptr %walk, i32 0, i32 1
  %key_dec.i = getelementptr i8, ptr %4, i32 368
  %key_length.i.i = getelementptr i8, ptr %4, i32 608
  %iv.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %5 = phi i32 [ %2, %while.body.lr.ph.i ], [ %17, %while.body.i.while.body.i_crit_edge ]
  %div12.i = lshr i32 %5, 4
  call void @kernel_neon_begin() #6
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr.i, align 4
  %8 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr2.i, align 4
  %10 = ptrtoint ptr %key_length.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_length.i.i, align 4
  %div1.i.i = lshr i32 %11, 2
  %add.i.i = add nuw nsw i32 %div1.i.i, 6
  %12 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iv.i, align 4
  call void @ce_aes_cbc_decrypt(ptr noundef %7, ptr noundef %9, ptr noundef %key_dec.i, i32 noundef %add.i.i, i32 noundef %div12.i, ptr noundef %13) #6
  call void @kernel_neon_end() #6
  %14 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nbytes.i, align 4
  %rem.i = and i32 %15, 15
  %call5.i = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %rem.i) #6
  %16 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nbytes.i, align 4
  %tobool.not.i = icmp ult i32 %17, 16
  br i1 %tobool.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %while.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call5.i, %while.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cts_cbc_encrypt(ptr nocapture noundef readonly %req) #1 align 64 {
entry:
  %sg_src = alloca [2 x %struct.scatterlist], align 4
  %sg_dst = alloca [2 x %struct.scatterlist], align 4
  %subreq = alloca %struct.skcipher_request, align 128
  %walk = alloca %struct.skcipher_walk, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 128
  %src3 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %src3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src3, align 8
  %dst4 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %dst4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst4, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sg_src) #6
  %8 = call ptr @memset(ptr %sg_src, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sg_dst) #6
  %9 = call ptr @memset(ptr %sg_dst, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %subreq) #6
  %10 = call ptr @memset(ptr %subreq, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #6
  %11 = call ptr @memset(ptr %walk, i32 255, i32 84)
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %tfm1.i, align 32
  %flags.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 4, i32 4
  %17 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %flags4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %3)
  %cmp = icmp ult i32 %3, 17
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp8.not = icmp eq i32 %3, 16
  br i1 %cmp8.not, label %if.then.if.then12_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.then12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.end10:                                         ; preds = %entry
  %sub = add i32 %3, 15
  %div85 = lshr i32 %sub, 4
  %sub2 = add nsw i32 %div85, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %sub)
  %cmp11 = icmp ugt i32 %sub, 47
  br i1 %cmp11, label %if.end10.if.then12_crit_edge, label %if.end10.if.end36_crit_edge

if.end10.if.end36_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %if.then.if.then12_crit_edge
  %cbc_blocks.092 = phi i32 [ %sub2, %if.end10.if.then12_crit_edge ], [ 1, %if.then.if.then12_crit_edge ]
  %mul = shl nuw i32 %cbc_blocks.092, 4
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %18 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iv, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 2
  %20 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %5, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 3
  %21 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %7, ptr %dst2.i, align 4
  %22 = ptrtoint ptr %subreq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul, ptr %subreq, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 1
  %23 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %19, ptr %iv4.i, align 4
  %call15 = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef nonnull %subreq, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %cond.false, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false:                                       ; preds = %if.then12
  %24 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tfm1.i, align 32
  %__crt_ctx.i.i.i = getelementptr i8, ptr %25, i32 128
  %nbytes.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %26 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nbytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %27)
  %tobool.not13.i = icmp ult i32 %27, 16
  br i1 %tobool.not13.i, label %cond.false.if.end19_crit_edge, label %while.body.lr.ph.i

cond.false.if.end19_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

while.body.lr.ph.i:                               ; preds = %cond.false
  %addr.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %addr2.i = getelementptr inbounds %struct.anon.78, ptr %walk, i32 0, i32 1
  %key_length.i.i = getelementptr i8, ptr %25, i32 608
  %iv.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %28 = phi i32 [ %27, %while.body.lr.ph.i ], [ %40, %while.body.i.while.body.i_crit_edge ]
  %div12.i = lshr i32 %28, 4
  call void @kernel_neon_begin() #6
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %addr.i, align 4
  %31 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %addr2.i, align 4
  %33 = ptrtoint ptr %key_length.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %key_length.i.i, align 4
  %div1.i.i = lshr i32 %34, 2
  %add.i.i = add nuw nsw i32 %div1.i.i, 6
  %35 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iv.i, align 4
  call void @ce_aes_cbc_encrypt(ptr noundef %30, ptr noundef %32, ptr noundef %__crt_ctx.i.i.i, i32 noundef %add.i.i, i32 noundef %div12.i, ptr noundef %36) #6
  call void @kernel_neon_end() #6
  %37 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nbytes.i, align 4
  %rem.i = and i32 %38, 15
  %call5.i = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %rem.i) #6
  %39 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nbytes.i, align 4
  %tobool.not.i = icmp ult i32 %40, 16
  br i1 %tobool.not.i, label %cond.end, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

cond.end:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool17.not = icmp eq i32 %call5.i, 0
  br i1 %tobool17.not, label %cond.end.if.end19_crit_edge, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end.if.end19_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end19:                                         ; preds = %cond.end.if.end19_crit_edge, %cond.false.if.end19_crit_edge
  %41 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %42)
  %cmp21 = icmp eq i32 %42, 16
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %43 = ptrtoint ptr %src3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %src3, align 8
  %45 = ptrtoint ptr %subreq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %subreq, align 128
  %call26 = call ptr @scatterwalk_ffwd(ptr noundef nonnull %sg_src, ptr noundef %44, i32 noundef %46) #6
  %47 = ptrtoint ptr %dst4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dst4, align 4
  %49 = ptrtoint ptr %src3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %src3, align 8
  %cmp29.not = icmp eq ptr %48, %50
  br i1 %cmp29.not, label %if.end23.if.end36_crit_edge, label %if.then30

if.end23.if.end36_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %subreq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %subreq, align 128
  %call34 = call ptr @scatterwalk_ffwd(ptr noundef nonnull %sg_dst, ptr noundef %48, i32 noundef %52) #6
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %if.end23.if.end36_crit_edge, %if.end10.if.end36_crit_edge
  %cbc_blocks.091 = phi i32 [ %cbc_blocks.092, %if.then30 ], [ %cbc_blocks.092, %if.end23.if.end36_crit_edge ], [ %sub2, %if.end10.if.end36_crit_edge ]
  %src.0 = phi ptr [ %call26, %if.then30 ], [ %call26, %if.end23.if.end36_crit_edge ], [ %5, %if.end10.if.end36_crit_edge ]
  %dst.0 = phi ptr [ %call34, %if.then30 ], [ %call26, %if.end23.if.end36_crit_edge ], [ %7, %if.end10.if.end36_crit_edge ]
  %53 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %req, align 128
  %mul38.neg = mul i32 %cbc_blocks.091, -16
  %sub39 = add i32 %54, %mul38.neg
  %iv40 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %55 = ptrtoint ptr %iv40 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iv40, align 4
  %src1.i86 = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 2
  %57 = ptrtoint ptr %src1.i86 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %src.0, ptr %src1.i86, align 8
  %dst2.i87 = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 3
  %58 = ptrtoint ptr %dst2.i87 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %dst.0, ptr %dst2.i87, align 4
  %59 = ptrtoint ptr %subreq to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub39, ptr %subreq, align 128
  %iv4.i88 = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 1
  %60 = ptrtoint ptr %iv4.i88 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %56, ptr %iv4.i88, align 4
  %call41 = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef nonnull %subreq, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  call void @kernel_neon_begin() #6
  %addr = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %61 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %addr, align 4
  %addr47 = getelementptr inbounds %struct.anon.78, ptr %walk, i32 0, i32 1
  %63 = ptrtoint ptr %addr47 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %addr47, align 4
  %key_length.i = getelementptr i8, ptr %1, i32 608
  %65 = ptrtoint ptr %key_length.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %key_length.i, align 4
  %div1.i = lshr i32 %66, 2
  %add.i = add nuw nsw i32 %div1.i, 6
  %nbytes = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %67 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nbytes, align 4
  %iv50 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  %69 = ptrtoint ptr %iv50 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %iv50, align 4
  call void @ce_aes_cbc_cts_encrypt(ptr noundef %62, ptr noundef %64, ptr noundef %__crt_ctx.i.i, i32 noundef %add.i, i32 noundef %68, ptr noundef %70) #6
  call void @kernel_neon_end() #6
  %call51 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end36.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %if.end44 ], [ -22, %if.then.cleanup_crit_edge ], [ %call5.i, %cond.end.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ %call41, %if.end36.cleanup_crit_edge ], [ %call15, %if.then12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %subreq) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg_dst) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg_src) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cts_cbc_decrypt(ptr nocapture noundef readonly %req) #1 align 64 {
entry:
  %sg_src = alloca [2 x %struct.scatterlist], align 4
  %sg_dst = alloca [2 x %struct.scatterlist], align 4
  %subreq = alloca %struct.skcipher_request, align 128
  %walk = alloca %struct.skcipher_walk, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 128
  %src3 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %src3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src3, align 8
  %dst4 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %dst4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst4, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sg_src) #6
  %8 = call ptr @memset(ptr %sg_src, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sg_dst) #6
  %9 = call ptr @memset(ptr %sg_dst, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %subreq) #6
  %10 = call ptr @memset(ptr %subreq, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #6
  %11 = call ptr @memset(ptr %walk, i32 255, i32 84)
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %tfm1.i, align 32
  %flags.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 4, i32 4
  %17 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %flags4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %3)
  %cmp = icmp ult i32 %3, 17
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp8.not = icmp eq i32 %3, 16
  br i1 %cmp8.not, label %if.then.if.then12_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.then12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.end10:                                         ; preds = %entry
  %sub = add i32 %3, 15
  %div85 = lshr i32 %sub, 4
  %sub2 = add nsw i32 %div85, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %sub)
  %cmp11 = icmp ugt i32 %sub, 47
  br i1 %cmp11, label %if.end10.if.then12_crit_edge, label %if.end10.if.end36_crit_edge

if.end10.if.end36_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %if.then.if.then12_crit_edge
  %cbc_blocks.092 = phi i32 [ %sub2, %if.end10.if.then12_crit_edge ], [ 1, %if.then.if.then12_crit_edge ]
  %mul = shl nuw i32 %cbc_blocks.092, 4
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %18 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iv, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 2
  %20 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %5, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 3
  %21 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %7, ptr %dst2.i, align 4
  %22 = ptrtoint ptr %subreq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul, ptr %subreq, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 1
  %23 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %19, ptr %iv4.i, align 4
  %call15 = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef nonnull %subreq, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %cond.false, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false:                                       ; preds = %if.then12
  %nbytes.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %24 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nbytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %25)
  %tobool.not13.i = icmp ult i32 %25, 16
  br i1 %tobool.not13.i, label %cond.false.if.end19_crit_edge, label %while.body.lr.ph.i

cond.false.if.end19_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

while.body.lr.ph.i:                               ; preds = %cond.false
  %26 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tfm1.i, align 32
  %addr.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %addr2.i = getelementptr inbounds %struct.anon.78, ptr %walk, i32 0, i32 1
  %key_dec.i = getelementptr i8, ptr %27, i32 368
  %key_length.i.i = getelementptr i8, ptr %27, i32 608
  %iv.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %28 = phi i32 [ %25, %while.body.lr.ph.i ], [ %40, %while.body.i.while.body.i_crit_edge ]
  %div12.i = lshr i32 %28, 4
  call void @kernel_neon_begin() #6
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %addr.i, align 4
  %31 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %addr2.i, align 4
  %33 = ptrtoint ptr %key_length.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %key_length.i.i, align 4
  %div1.i.i = lshr i32 %34, 2
  %add.i.i = add nuw nsw i32 %div1.i.i, 6
  %35 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iv.i, align 4
  call void @ce_aes_cbc_decrypt(ptr noundef %30, ptr noundef %32, ptr noundef %key_dec.i, i32 noundef %add.i.i, i32 noundef %div12.i, ptr noundef %36) #6
  call void @kernel_neon_end() #6
  %37 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nbytes.i, align 4
  %rem.i = and i32 %38, 15
  %call5.i = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %rem.i) #6
  %39 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nbytes.i, align 4
  %tobool.not.i = icmp ult i32 %40, 16
  br i1 %tobool.not.i, label %cond.end, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

cond.end:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool17.not = icmp eq i32 %call5.i, 0
  br i1 %tobool17.not, label %cond.end.if.end19_crit_edge, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end.if.end19_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end19:                                         ; preds = %cond.end.if.end19_crit_edge, %cond.false.if.end19_crit_edge
  %41 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %42)
  %cmp21 = icmp eq i32 %42, 16
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %43 = ptrtoint ptr %src3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %src3, align 8
  %45 = ptrtoint ptr %subreq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %subreq, align 128
  %call26 = call ptr @scatterwalk_ffwd(ptr noundef nonnull %sg_src, ptr noundef %44, i32 noundef %46) #6
  %47 = ptrtoint ptr %dst4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dst4, align 4
  %49 = ptrtoint ptr %src3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %src3, align 8
  %cmp29.not = icmp eq ptr %48, %50
  br i1 %cmp29.not, label %if.end23.if.end36_crit_edge, label %if.then30

if.end23.if.end36_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %subreq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %subreq, align 128
  %call34 = call ptr @scatterwalk_ffwd(ptr noundef nonnull %sg_dst, ptr noundef %48, i32 noundef %52) #6
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %if.end23.if.end36_crit_edge, %if.end10.if.end36_crit_edge
  %cbc_blocks.091 = phi i32 [ %cbc_blocks.092, %if.then30 ], [ %cbc_blocks.092, %if.end23.if.end36_crit_edge ], [ %sub2, %if.end10.if.end36_crit_edge ]
  %src.0 = phi ptr [ %call26, %if.then30 ], [ %call26, %if.end23.if.end36_crit_edge ], [ %5, %if.end10.if.end36_crit_edge ]
  %dst.0 = phi ptr [ %call34, %if.then30 ], [ %call26, %if.end23.if.end36_crit_edge ], [ %7, %if.end10.if.end36_crit_edge ]
  %53 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %req, align 128
  %mul38.neg = mul i32 %cbc_blocks.091, -16
  %sub39 = add i32 %54, %mul38.neg
  %iv40 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %55 = ptrtoint ptr %iv40 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iv40, align 4
  %src1.i86 = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 2
  %57 = ptrtoint ptr %src1.i86 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %src.0, ptr %src1.i86, align 8
  %dst2.i87 = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 3
  %58 = ptrtoint ptr %dst2.i87 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %dst.0, ptr %dst2.i87, align 4
  %59 = ptrtoint ptr %subreq to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub39, ptr %subreq, align 128
  %iv4.i88 = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 1
  %60 = ptrtoint ptr %iv4.i88 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %56, ptr %iv4.i88, align 4
  %call41 = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef nonnull %subreq, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  call void @kernel_neon_begin() #6
  %addr = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %61 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %addr, align 4
  %addr47 = getelementptr inbounds %struct.anon.78, ptr %walk, i32 0, i32 1
  %63 = ptrtoint ptr %addr47 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %addr47, align 4
  %key_dec = getelementptr i8, ptr %1, i32 368
  %key_length.i = getelementptr i8, ptr %1, i32 608
  %65 = ptrtoint ptr %key_length.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %key_length.i, align 4
  %div1.i = lshr i32 %66, 2
  %add.i = add nuw nsw i32 %div1.i, 6
  %nbytes = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %67 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nbytes, align 4
  %iv50 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  %69 = ptrtoint ptr %iv50 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %iv50, align 4
  call void @ce_aes_cbc_cts_decrypt(ptr noundef %62, ptr noundef %64, ptr noundef %key_dec, i32 noundef %add.i, i32 noundef %68, ptr noundef %70) #6
  call void @kernel_neon_end() #6
  %call51 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end36.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %if.end44 ], [ -22, %if.then.cleanup_crit_edge ], [ %call5.i, %cond.end.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ %call41, %if.end36.cleanup_crit_edge ], [ %call15, %if.then12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %subreq) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg_dst) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg_src) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctr_encrypt(ptr noundef %req) #1 align 64 {
entry:
  %walk = alloca %struct.skcipher_walk, align 4
  %tail = alloca [16 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #6
  %2 = call ptr @memset(ptr %walk, i32 255, i32 84)
  %call2 = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef %req, i1 noundef zeroext false) #6
  %nbytes = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %3 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %tobool.not31 = icmp ult i32 %4, 16
  br i1 %tobool.not31, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %addr = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %addr3 = getelementptr inbounds %struct.anon.78, ptr %walk, i32 0, i32 1
  %key_length.i = getelementptr i8, ptr %1, i32 608
  %iv = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %5 = phi i32 [ %4, %while.body.lr.ph ], [ %17, %while.body.while.body_crit_edge ]
  %div27 = lshr i32 %5, 4
  call void @kernel_neon_begin() #6
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr, align 4
  %8 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr3, align 4
  %10 = ptrtoint ptr %key_length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_length.i, align 4
  %div1.i = lshr i32 %11, 2
  %add.i = add nuw nsw i32 %div1.i, 6
  %12 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iv, align 4
  call void @ce_aes_ctr_encrypt(ptr noundef %7, ptr noundef %9, ptr noundef %__crt_ctx.i.i, i32 noundef %add.i, i32 noundef %div27, ptr noundef %13) #6
  call void @kernel_neon_end() #6
  %14 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nbytes, align 4
  %rem = and i32 %15, 15
  %call6 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %rem) #6
  %16 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nbytes, align 4
  %tobool.not = icmp ult i32 %17, 16
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %err.0.lcssa = phi i32 [ %call2, %entry.while.end_crit_edge ], [ %call6, %while.body.while.end_crit_edge ]
  %.lcssa = phi i32 [ %4, %entry.while.end_crit_edge ], [ %17, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa)
  %tobool8.not = icmp eq i32 %.lcssa, 0
  br i1 %tobool8.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tail) #6
  %addr12 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %18 = call ptr @memset(ptr %tail, i32 255, i32 16)
  %19 = ptrtoint ptr %addr12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %addr12, align 4
  %addr14 = getelementptr inbounds %struct.anon.78, ptr %walk, i32 0, i32 1
  %21 = ptrtoint ptr %addr14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %addr14, align 4
  call void @kernel_neon_begin() #6
  %key_length.i28 = getelementptr i8, ptr %1, i32 608
  %23 = ptrtoint ptr %key_length.i28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %key_length.i28, align 4
  %div1.i29 = lshr i32 %24, 2
  %add.i30 = add nuw nsw i32 %div1.i29, 6
  %iv19 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  %25 = ptrtoint ptr %iv19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iv19, align 4
  call void @ce_aes_ctr_encrypt(ptr noundef nonnull %tail, ptr noundef null, ptr noundef %__crt_ctx.i.i, i32 noundef %add.i30, i32 noundef -1, ptr noundef %26) #6
  call void @kernel_neon_end() #6
  call void @__crypto_xor(ptr noundef %20, ptr noundef %22, ptr noundef nonnull %tail, i32 noundef %.lcssa) #6
  %call21 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tail) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  %err.1 = phi i32 [ %call21, %if.then ], [ %err.0.lcssa, %while.end.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #6
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctr_encrypt_sync(ptr noundef %req) #1 align 64 {
entry:
  %buf.i = alloca [16 x i8], align 1
  %walk.i = alloca %struct.skcipher_walk, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !20) #6
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !20) #6
  %and.i.i6.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i6.i to ptr
  %preempt_count.i7.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i7.i, align 4
  %and2.i = and i32 %7, 983040
  %or.i = or i32 %and2.i, %and.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !20) #6
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
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %13, i32 12
  %14 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %chunksize.i.i.i = getelementptr i8, ptr %15, i32 -96
  %16 = ptrtoint ptr %chunksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chunksize.i.i.i, align 32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #6
  %18 = call ptr @memset(ptr %buf.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk.i) #6
  %19 = call ptr @memset(ptr %walk.i, i32 255, i32 84)
  %20 = tail call i32 @llvm.ctpop.i32(i32 %17) #6, !range !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %if.end40.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.then
  %.b1.i = load i1, ptr @crypto_ctr_encrypt_walk.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.crypto_ctr_encrypt_walk.exit_crit_edge, label %if.then.i, !prof !31

land.rhs.i.crypto_ctr_encrypt_walk.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %crypto_ctr_encrypt_walk.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @crypto_ctr_encrypt_walk.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef null) #6
  br label %crypto_ctr_encrypt_walk.exit

if.end40.i:                                       ; preds = %if.then
  %call41.i = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk.i, ptr noundef %req, i1 noundef zeroext false) #6
  %nbytes.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk.i, i32 0, i32 3
  %22 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nbytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not3.i = icmp eq i32 %23, 0
  br i1 %cmp.not3.i, label %if.end40.i.crypto_ctr_encrypt_walk.exit_crit_edge, label %while.body.lr.ph.i

if.end40.i.crypto_ctr_encrypt_walk.exit_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %crypto_ctr_encrypt_walk.exit

while.body.lr.ph.i:                               ; preds = %if.end40.i
  %addr.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk.i, i32 0, i32 1, i32 0, i32 1
  %addr44.i = getelementptr inbounds %struct.anon.78, ptr %walk.i, i32 0, i32 1
  %total.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk.i, i32 0, i32 5
  %sub.i = add i32 %17, -1
  %iv.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk.i, i32 0, i32 10
  %__crt_ctx.i.i.i.i = getelementptr i8, ptr %13, i32 128
  br label %while.body.i

while.body.i:                                     ; preds = %do.end61.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %24 = phi i32 [ %23, %while.body.lr.ph.i ], [ %39, %do.end61.i.while.body.i_crit_edge ]
  %25 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addr.i, align 4
  %27 = ptrtoint ptr %addr44.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %addr44.i, align 4
  %29 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %total.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %30)
  %cmp47.i = icmp ult i32 %24, %30
  %and.i4 = and i32 %24, %sub.i
  %sub50.i = select i1 %cmp47.i, i32 %and.i4, i32 0
  %nbytes45.0.i = sub i32 %24, %sub50.i
  br label %do.body52.i

do.body52.i:                                      ; preds = %ctr_encrypt_one.exit.i.do.body52.i_crit_edge, %while.body.i
  %dst.0.i = phi ptr [ %26, %while.body.i ], [ %add.ptr.i, %ctr_encrypt_one.exit.i.do.body52.i_crit_edge ]
  %src.0.i = phi ptr [ %28, %while.body.i ], [ %add.ptr57.i, %ctr_encrypt_one.exit.i.do.body52.i_crit_edge ]
  %nbytes45.1.i = phi i32 [ %nbytes45.0.i, %while.body.i ], [ %sub58.i, %ctr_encrypt_one.exit.i.do.body52.i_crit_edge ]
  %31 = call i32 @llvm.smin.i32(i32 %nbytes45.1.i, i32 %17) #6
  %32 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iv.i, align 4
  %34 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !32
  %and.i.i.i5 = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i5)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i5, 0
  br i1 %tobool.not.i.i, label %if.then21.i.i, label %do.end11.i.i

do.end11.i.i:                                     ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @aes_encrypt(ptr noundef %__crt_ctx.i.i.i.i, ptr noundef nonnull %buf.i, ptr noundef %33) #6
  br label %do.body23.i.i

if.then21.i.i:                                    ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @trace_hardirqs_off() #6
  call void @aes_encrypt(ptr noundef %__crt_ctx.i.i.i.i, ptr noundef nonnull %buf.i, ptr noundef %33) #6
  call void @trace_hardirqs_on() #6
  br label %do.body23.i.i

do.body23.i.i:                                    ; preds = %if.then21.i.i, %do.end11.i.i
  %35 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !33
  %and.i.i.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body23.i.i.ctr_encrypt_one.exit.i_crit_edge, !prof !34

do.body23.i.i.ctr_encrypt_one.exit.i_crit_edge:   ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ctr_encrypt_one.exit.i

if.then36.i.i:                                    ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @warn_bogus_irq_restore() #6
  br label %ctr_encrypt_one.exit.i

ctr_encrypt_one.exit.i:                           ; preds = %if.then36.i.i, %do.body23.i.i.ctr_encrypt_one.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %34) #6, !srcloc !35
  call void @__crypto_xor(ptr noundef %dst.0.i, ptr noundef %src.0.i, ptr noundef nonnull %buf.i, i32 noundef %31) #6
  %36 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iv.i, align 4
  call void @crypto_inc(ptr noundef %37, i32 noundef %17) #6
  %add.ptr.i = getelementptr i8, ptr %dst.0.i, i32 %31
  %add.ptr57.i = getelementptr i8, ptr %src.0.i, i32 %31
  %sub58.i = sub i32 %nbytes45.1.i, %31
  %cmp60.i = icmp sgt i32 %sub58.i, 0
  br i1 %cmp60.i, label %ctr_encrypt_one.exit.i.do.body52.i_crit_edge, label %do.end61.i

ctr_encrypt_one.exit.i.do.body52.i_crit_edge:     ; preds = %ctr_encrypt_one.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body52.i

do.end61.i:                                       ; preds = %ctr_encrypt_one.exit.i
  %call62.i = call i32 @skcipher_walk_done(ptr noundef nonnull %walk.i, i32 noundef %sub50.i) #6
  %38 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nbytes.i, align 4
  %cmp.not.i = icmp eq i32 %39, 0
  br i1 %cmp.not.i, label %do.end61.i.crypto_ctr_encrypt_walk.exit_crit_edge, label %do.end61.i.while.body.i_crit_edge

do.end61.i.while.body.i_crit_edge:                ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

do.end61.i.crypto_ctr_encrypt_walk.exit_crit_edge: ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %crypto_ctr_encrypt_walk.exit

crypto_ctr_encrypt_walk.exit:                     ; preds = %do.end61.i.crypto_ctr_encrypt_walk.exit_crit_edge, %if.end40.i.crypto_ctr_encrypt_walk.exit_crit_edge, %if.then.i, %land.rhs.i.crypto_ctr_encrypt_walk.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then.i ], [ -22, %land.rhs.i.crypto_ctr_encrypt_walk.exit_crit_edge ], [ %call41.i, %if.end40.i.crypto_ctr_encrypt_walk.exit_crit_edge ], [ %call62.i, %do.end61.i.crypto_ctr_encrypt_walk.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @ctr_encrypt(ptr noundef %req)
  br label %return

return:                                           ; preds = %if.end, %crypto_ctr_encrypt_walk.exit
  %retval.0 = phi i32 [ %call2, %if.end ], [ %retval.0.i, %crypto_ctr_encrypt_walk.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xts_set_key(ptr noundef %tfm, ptr noundef %in_key, i32 noundef %key_len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %rem.i = and i32 %key_len, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %0 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %.pre = lshr i32 %key_len, 1
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %in_key, i32 %.pre
  %call.i.i = tail call i32 @__crypto_memneq(ptr noundef %in_key, ptr noundef %add.ptr.i, i32 noundef %.pre) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %call2 = tail call fastcc i32 @ce_aes_expandkey(ptr noundef %__crt_ctx.i.i, ptr noundef %in_key, i32 noundef %.pre)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %key2 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 2, i32 2, i32 4, i32 88
  %arrayidx = getelementptr i8, ptr %in_key, i32 %.pre
  %call7 = tail call fastcc i32 @ce_aes_expandkey(ptr noundef %key2, ptr noundef %arrayidx, i32 noundef %.pre)
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end.cleanup_crit_edge ], [ %call7, %if.then4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xts_encrypt(ptr noundef %req) #1 align 64 {
entry:
  %sg_src = alloca [2 x %struct.scatterlist], align 4
  %sg_dst = alloca [2 x %struct.scatterlist], align 4
  %subreq = alloca %struct.skcipher_request, align 128
  %walk = alloca %struct.skcipher_walk, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %key_length.i = getelementptr i8, ptr %1, i32 608
  %2 = ptrtoint ptr %key_length.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_length.i, align 4
  %div1.i = lshr i32 %3, 2
  %add.i = add nuw nsw i32 %div1.i, 6
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req, align 128
  %rem = and i32 %5, 15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sg_src) #6
  %6 = call ptr @memset(ptr %sg_src, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sg_dst) #6
  %7 = call ptr @memset(ptr %sg_dst, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %subreq) #6
  %8 = call ptr @memset(ptr %subreq, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #6
  %9 = call ptr @memset(ptr %walk, i32 255, i32 84)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp = icmp ult i32 %5, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef %req, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp5.not = icmp eq i32 %rem, 0
  br i1 %cmp5.not, label %if.end.if.end15_crit_edge, label %land.rhs

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.rhs:                                         ; preds = %if.end
  %nbytes = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %10 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nbytes, align 4
  %total = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 5
  %12 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %total, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp6 = icmp ult i32 %11, %13
  br i1 %cmp6, label %if.then8, label %land.rhs.if.end15_crit_edge, !prof !34

land.rhs.if.end15_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %req, align 128
  %call.i = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef -125) #6
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %1, ptr %tfm1.i, align 32
  %flags.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 4, i32 4
  %21 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %flags4.i, align 4
  %src12 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %22 = ptrtoint ptr %src12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %src12, align 8
  %dst13 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %24 = ptrtoint ptr %dst13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dst13, align 4
  %26 = add i32 %15, -17
  %mul = and i32 %26, -16
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %27 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iv, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 2
  %29 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %23, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 3
  %30 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %25, ptr %dst2.i, align 4
  %31 = ptrtoint ptr %subreq to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul, ptr %subreq, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 1
  %32 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %28, ptr %iv4.i, align 4
  %call14 = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef nonnull %subreq, i1 noundef zeroext false) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %land.rhs.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %req.addr.0 = phi ptr [ %subreq, %if.then8 ], [ %req, %if.end.if.end15_crit_edge ], [ %req, %land.rhs.if.end15_crit_edge ]
  %err.0 = phi i32 [ %call14, %if.then8 ], [ %call4, %if.end.if.end15_crit_edge ], [ %call4, %land.rhs.if.end15_crit_edge ]
  %tail.0 = phi i32 [ %rem, %if.then8 ], [ 0, %if.end.if.end15_crit_edge ], [ 0, %land.rhs.if.end15_crit_edge ]
  %nbytes16 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %33 = ptrtoint ptr %nbytes16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nbytes16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %34)
  %cmp17127 = icmp ugt i32 %34, 15
  br i1 %cmp17127, label %for.body.lr.ph, label %if.end15.for.end_crit_edge

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end15
  %total21 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 5
  %addr = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %addr27 = getelementptr inbounds %struct.anon.78, ptr %walk, i32 0, i32 1
  %iv29 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  %key2 = getelementptr i8, ptr %1, i32 616
  %35 = ptrtoint ptr %total21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %total21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp22.peel = icmp ult i32 %34, %36
  %and.peel = and i32 %34, -16
  %spec.select.peel = select i1 %cmp22.peel, i32 %and.peel, i32 %34
  call void @kernel_neon_begin() #6
  %37 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %addr, align 4
  %39 = ptrtoint ptr %addr27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %addr27, align 4
  %41 = ptrtoint ptr %iv29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iv29, align 4
  call void @ce_aes_xts_encrypt(ptr noundef %38, ptr noundef %40, ptr noundef %__crt_ctx.i.i, i32 noundef %add.i, i32 noundef %spec.select.peel, ptr noundef %42, ptr noundef %key2, i32 noundef 1) #6
  call void @kernel_neon_end() #6
  %43 = ptrtoint ptr %nbytes16 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nbytes16, align 4
  %sub33.peel = sub i32 %44, %spec.select.peel
  %call34.peel = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %sub33.peel) #6
  %45 = ptrtoint ptr %nbytes16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nbytes16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %46)
  %cmp17.peel = icmp ugt i32 %46, 15
  br i1 %cmp17.peel, label %for.body.lr.ph.for.body_crit_edge, label %for.body.lr.ph.for.end_crit_edge

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph.for.body_crit_edge:                ; preds = %for.body.lr.ph
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph.for.body_crit_edge
  %47 = phi i32 [ %59, %for.body.for.body_crit_edge ], [ %46, %for.body.lr.ph.for.body_crit_edge ]
  %48 = ptrtoint ptr %total21 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %total21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp22 = icmp ult i32 %47, %49
  %and = and i32 %47, -16
  %spec.select = select i1 %cmp22, i32 %and, i32 %47
  call void @kernel_neon_begin() #6
  %50 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %addr, align 4
  %52 = ptrtoint ptr %addr27 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %addr27, align 4
  %54 = ptrtoint ptr %iv29 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %iv29, align 4
  call void @ce_aes_xts_encrypt(ptr noundef %51, ptr noundef %53, ptr noundef %__crt_ctx.i.i, i32 noundef %add.i, i32 noundef %spec.select, ptr noundef %55, ptr noundef %key2, i32 noundef 0) #6
  call void @kernel_neon_end() #6
  %56 = ptrtoint ptr %nbytes16 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nbytes16, align 4
  %sub33 = sub i32 %57, %spec.select
  %call34 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %sub33) #6
  %58 = ptrtoint ptr %nbytes16 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nbytes16, align 4
  %cmp17 = icmp ugt i32 %59, 15
  br i1 %cmp17, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge, !llvm.loop !36

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.body.lr.ph.for.end_crit_edge, %if.end15.for.end_crit_edge
  %err.1.lcssa = phi i32 [ %err.0, %if.end15.for.end_crit_edge ], [ %call34.peel, %for.body.lr.ph.for.end_crit_edge ], [ %call34, %for.body.for.end_crit_edge ]
  %first.0.lcssa = phi i32 [ 1, %if.end15.for.end_crit_edge ], [ 0, %for.body.lr.ph.for.end_crit_edge ], [ 0, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.lcssa)
  %tobool35.not = icmp ne i32 %err.1.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tail.0)
  %tobool36.not = icmp eq i32 %tail.0, 0
  %or.cond = select i1 %tobool35.not, i1 true, i1 %tobool36.not
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %if.end46, !prof !38

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end46:                                         ; preds = %for.end
  %src48 = getelementptr inbounds %struct.skcipher_request, ptr %req.addr.0, i32 0, i32 2
  %60 = ptrtoint ptr %src48 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %src48, align 8
  %62 = ptrtoint ptr %req.addr.0 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %req.addr.0, align 128
  %call50 = call ptr @scatterwalk_ffwd(ptr noundef nonnull %sg_src, ptr noundef %61, i32 noundef %63) #6
  %dst51 = getelementptr inbounds %struct.skcipher_request, ptr %req.addr.0, i32 0, i32 3
  %64 = ptrtoint ptr %dst51 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dst51, align 4
  %66 = ptrtoint ptr %src48 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %src48, align 8
  %cmp53.not = icmp eq ptr %65, %67
  br i1 %cmp53.not, label %if.end46.if.end59_crit_edge, label %if.then54

if.end46.if.end59_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then54:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %req.addr.0 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %req.addr.0, align 128
  %call58 = call ptr @scatterwalk_ffwd(ptr noundef nonnull %sg_dst, ptr noundef %65, i32 noundef %69) #6
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.end46.if.end59_crit_edge
  %dst.0 = phi ptr [ %call58, %if.then54 ], [ %call50, %if.end46.if.end59_crit_edge ]
  %add60 = or i32 %tail.0, 16
  %70 = ptrtoint ptr %src48 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call50, ptr %src48, align 8
  %71 = ptrtoint ptr %dst51 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %dst.0, ptr %dst51, align 4
  %72 = ptrtoint ptr %req.addr.0 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add60, ptr %req.addr.0, align 128
  %call62 = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef %req.addr.0, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end65:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  call void @kernel_neon_begin() #6
  %addr67 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %73 = ptrtoint ptr %addr67 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %addr67, align 4
  %addr69 = getelementptr inbounds %struct.anon.78, ptr %walk, i32 0, i32 1
  %75 = ptrtoint ptr %addr69 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %addr69, align 4
  %77 = ptrtoint ptr %nbytes16 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nbytes16, align 4
  %iv74 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  %79 = ptrtoint ptr %iv74 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %iv74, align 4
  %key275 = getelementptr i8, ptr %1, i32 616
  call void @ce_aes_xts_encrypt(ptr noundef %74, ptr noundef %76, ptr noundef %__crt_ctx.i.i, i32 noundef %add.i, i32 noundef %78, ptr noundef %80, ptr noundef %key275, i32 noundef %first.0.lcssa) #6
  call void @kernel_neon_end() #6
  %call78 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end59.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call78, %if.end65 ], [ -22, %entry.cleanup_crit_edge ], [ %err.1.lcssa, %for.end.cleanup_crit_edge ], [ %call62, %if.end59.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %subreq) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg_dst) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg_src) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xts_decrypt(ptr noundef %req) #1 align 64 {
entry:
  %sg_src = alloca [2 x %struct.scatterlist], align 4
  %sg_dst = alloca [2 x %struct.scatterlist], align 4
  %subreq = alloca %struct.skcipher_request, align 128
  %walk = alloca %struct.skcipher_walk, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %key_length.i = getelementptr i8, ptr %1, i32 608
  %2 = ptrtoint ptr %key_length.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_length.i, align 4
  %div1.i = lshr i32 %3, 2
  %add.i = add nuw nsw i32 %div1.i, 6
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req, align 128
  %rem = and i32 %5, 15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sg_src) #6
  %6 = call ptr @memset(ptr %sg_src, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sg_dst) #6
  %7 = call ptr @memset(ptr %sg_dst, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %subreq) #6
  %8 = call ptr @memset(ptr %subreq, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #6
  %9 = call ptr @memset(ptr %walk, i32 255, i32 84)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp = icmp ult i32 %5, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef %req, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp5.not = icmp eq i32 %rem, 0
  br i1 %cmp5.not, label %if.end.if.end15_crit_edge, label %land.rhs

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.rhs:                                         ; preds = %if.end
  %nbytes = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %10 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nbytes, align 4
  %total = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 5
  %12 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %total, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp6 = icmp ult i32 %11, %13
  br i1 %cmp6, label %if.then8, label %land.rhs.if.end15_crit_edge, !prof !34

land.rhs.if.end15_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %req, align 128
  %call.i = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef -125) #6
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %1, ptr %tfm1.i, align 32
  %flags.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 4, i32 4
  %21 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %flags4.i, align 4
  %src12 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %22 = ptrtoint ptr %src12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %src12, align 8
  %dst13 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %24 = ptrtoint ptr %dst13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dst13, align 4
  %26 = add i32 %15, -17
  %mul = and i32 %26, -16
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %27 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iv, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 2
  %29 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %23, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 3
  %30 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %25, ptr %dst2.i, align 4
  %31 = ptrtoint ptr %subreq to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul, ptr %subreq, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 1
  %32 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %28, ptr %iv4.i, align 4
  %call14 = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef nonnull %subreq, i1 noundef zeroext false) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %land.rhs.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %req.addr.0 = phi ptr [ %subreq, %if.then8 ], [ %req, %if.end.if.end15_crit_edge ], [ %req, %land.rhs.if.end15_crit_edge ]
  %err.0 = phi i32 [ %call14, %if.then8 ], [ %call4, %if.end.if.end15_crit_edge ], [ %call4, %land.rhs.if.end15_crit_edge ]
  %tail.0 = phi i32 [ %rem, %if.then8 ], [ 0, %if.end.if.end15_crit_edge ], [ 0, %land.rhs.if.end15_crit_edge ]
  %nbytes16 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %33 = ptrtoint ptr %nbytes16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nbytes16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %34)
  %cmp17126 = icmp ugt i32 %34, 15
  br i1 %cmp17126, label %for.body.lr.ph, label %if.end15.for.end_crit_edge

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end15
  %total21 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 5
  %addr = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %addr27 = getelementptr inbounds %struct.anon.78, ptr %walk, i32 0, i32 1
  %key_dec = getelementptr i8, ptr %1, i32 368
  %iv29 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  %key2 = getelementptr i8, ptr %1, i32 616
  %35 = ptrtoint ptr %total21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %total21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp22.peel = icmp ult i32 %34, %36
  %and.peel = and i32 %34, -16
  %spec.select.peel = select i1 %cmp22.peel, i32 %and.peel, i32 %34
  call void @kernel_neon_begin() #6
  %37 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %addr, align 4
  %39 = ptrtoint ptr %addr27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %addr27, align 4
  %41 = ptrtoint ptr %iv29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iv29, align 4
  call void @ce_aes_xts_decrypt(ptr noundef %38, ptr noundef %40, ptr noundef %key_dec, i32 noundef %add.i, i32 noundef %spec.select.peel, ptr noundef %42, ptr noundef %key2, i32 noundef 1) #6
  call void @kernel_neon_end() #6
  %43 = ptrtoint ptr %nbytes16 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nbytes16, align 4
  %sub32.peel = sub i32 %44, %spec.select.peel
  %call33.peel = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %sub32.peel) #6
  %45 = ptrtoint ptr %nbytes16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nbytes16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %46)
  %cmp17.peel = icmp ugt i32 %46, 15
  br i1 %cmp17.peel, label %for.body.lr.ph.for.body_crit_edge, label %for.body.lr.ph.for.end_crit_edge

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph.for.body_crit_edge:                ; preds = %for.body.lr.ph
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph.for.body_crit_edge
  %47 = phi i32 [ %59, %for.body.for.body_crit_edge ], [ %46, %for.body.lr.ph.for.body_crit_edge ]
  %48 = ptrtoint ptr %total21 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %total21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp22 = icmp ult i32 %47, %49
  %and = and i32 %47, -16
  %spec.select = select i1 %cmp22, i32 %and, i32 %47
  call void @kernel_neon_begin() #6
  %50 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %addr, align 4
  %52 = ptrtoint ptr %addr27 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %addr27, align 4
  %54 = ptrtoint ptr %iv29 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %iv29, align 4
  call void @ce_aes_xts_decrypt(ptr noundef %51, ptr noundef %53, ptr noundef %key_dec, i32 noundef %add.i, i32 noundef %spec.select, ptr noundef %55, ptr noundef %key2, i32 noundef 0) #6
  call void @kernel_neon_end() #6
  %56 = ptrtoint ptr %nbytes16 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nbytes16, align 4
  %sub32 = sub i32 %57, %spec.select
  %call33 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %sub32) #6
  %58 = ptrtoint ptr %nbytes16 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nbytes16, align 4
  %cmp17 = icmp ugt i32 %59, 15
  br i1 %cmp17, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge, !llvm.loop !39

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.body.lr.ph.for.end_crit_edge, %if.end15.for.end_crit_edge
  %err.1.lcssa = phi i32 [ %err.0, %if.end15.for.end_crit_edge ], [ %call33.peel, %for.body.lr.ph.for.end_crit_edge ], [ %call33, %for.body.for.end_crit_edge ]
  %first.0.lcssa = phi i32 [ 1, %if.end15.for.end_crit_edge ], [ 0, %for.body.lr.ph.for.end_crit_edge ], [ 0, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.lcssa)
  %tobool34.not = icmp ne i32 %err.1.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tail.0)
  %tobool35.not = icmp eq i32 %tail.0, 0
  %or.cond = select i1 %tobool34.not, i1 true, i1 %tobool35.not
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %if.end45, !prof !38

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45:                                         ; preds = %for.end
  %src47 = getelementptr inbounds %struct.skcipher_request, ptr %req.addr.0, i32 0, i32 2
  %60 = ptrtoint ptr %src47 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %src47, align 8
  %62 = ptrtoint ptr %req.addr.0 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %req.addr.0, align 128
  %call49 = call ptr @scatterwalk_ffwd(ptr noundef nonnull %sg_src, ptr noundef %61, i32 noundef %63) #6
  %dst50 = getelementptr inbounds %struct.skcipher_request, ptr %req.addr.0, i32 0, i32 3
  %64 = ptrtoint ptr %dst50 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dst50, align 4
  %66 = ptrtoint ptr %src47 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %src47, align 8
  %cmp52.not = icmp eq ptr %65, %67
  br i1 %cmp52.not, label %if.end45.if.end58_crit_edge, label %if.then53

if.end45.if.end58_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then53:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %req.addr.0 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %req.addr.0, align 128
  %call57 = call ptr @scatterwalk_ffwd(ptr noundef nonnull %sg_dst, ptr noundef %65, i32 noundef %69) #6
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %if.end45.if.end58_crit_edge
  %dst.0 = phi ptr [ %call57, %if.then53 ], [ %call49, %if.end45.if.end58_crit_edge ]
  %add59 = or i32 %tail.0, 16
  %70 = ptrtoint ptr %src47 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call49, ptr %src47, align 8
  %71 = ptrtoint ptr %dst50 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %dst.0, ptr %dst50, align 4
  %72 = ptrtoint ptr %req.addr.0 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add59, ptr %req.addr.0, align 128
  %call61 = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef %req.addr.0, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  call void @kernel_neon_begin() #6
  %addr66 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %73 = ptrtoint ptr %addr66 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %addr66, align 4
  %addr68 = getelementptr inbounds %struct.anon.78, ptr %walk, i32 0, i32 1
  %75 = ptrtoint ptr %addr68 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %addr68, align 4
  %key_dec70 = getelementptr i8, ptr %1, i32 368
  %77 = ptrtoint ptr %nbytes16 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nbytes16, align 4
  %iv73 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  %79 = ptrtoint ptr %iv73 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %iv73, align 4
  %key274 = getelementptr i8, ptr %1, i32 616
  call void @ce_aes_xts_decrypt(ptr noundef %74, ptr noundef %76, ptr noundef %key_dec70, i32 noundef %add.i, i32 noundef %78, ptr noundef %80, ptr noundef %key274, i32 noundef %first.0.lcssa) #6
  call void @kernel_neon_end() #6
  %call77 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end58.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call77, %if.end64 ], [ -22, %entry.cleanup_crit_edge ], [ %err.1.lcssa, %for.end.cleanup_crit_edge ], [ %call61, %if.end58.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %subreq) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg_dst) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg_src) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ce_aes_expandkey(ptr noundef %ctx, ptr nocapture noundef readonly %in_key, i32 noundef %key_len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %div168 = lshr i32 %key_len, 2
  %0 = zext i32 %key_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %key_len, label %entry.cleanup98_crit_edge [
    i32 16, label %entry.for.body.preheader_crit_edge
    i32 24, label %entry.for.body.preheader_crit_edge185
    i32 32, label %entry.for.body.preheader_crit_edge186
  ]

entry.for.body.preheader_crit_edge186:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

entry.for.body.preheader_crit_edge185:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

entry.cleanup98_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup98

for.body.preheader:                               ; preds = %entry.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge185, %entry.for.body.preheader_crit_edge186
  %key_length = getelementptr inbounds %struct.crypto_aes_ctx, ptr %ctx, i32 0, i32 2
  %1 = ptrtoint ptr %key_length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %key_len, ptr %key_length, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0172 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = shl i32 %i.0172, 2
  %add.ptr = getelementptr i8, ptr %in_key, i32 %mul
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  %arrayidx = getelementptr [60 x i32], ptr %ctx, i32 0, i32 %i.0172
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0172, 1
  %exitcond.not = icmp eq i32 %inc, %div168
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void @kernel_neon_begin() #6
  %sub = add nsw i32 %div168, -1
  br label %for.body8

for.body8:                                        ; preds = %for.inc76.for.body8_crit_edge, %for.end
  %i.1173 = phi i32 [ 0, %for.end ], [ %inc77, %for.inc76.for.body8_crit_edge ]
  %mul10 = mul i32 %i.1173, %div168
  %add.ptr11 = getelementptr i32, ptr %ctx, i32 %mul10
  %add.ptr12 = getelementptr i32, ptr %add.ptr11, i32 %div168
  %arrayidx13 = getelementptr i32, ptr %add.ptr11, i32 %sub
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx13, align 4
  %call14 = tail call i32 @ce_aes_sub(i32 noundef %7) #6
  %or.i = tail call i32 @llvm.fshl.i32(i32 %call14, i32 %call14, i32 24) #6
  %8 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.i, ptr %add.ptr12, align 4
  %9 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr11, align 4
  %xor = xor i32 %10, %or.i
  %arrayidx19 = getelementptr [10 x i8], ptr @ce_aes_expandkey.rcon, i32 0, i32 %i.1173
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx19, align 1
  %conv = zext i8 %12 to i32
  %xor20 = xor i32 %xor, %conv
  store i32 %xor20, ptr %add.ptr12, align 4
  %arrayidx23 = getelementptr i32, ptr %add.ptr11, i32 1
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx23, align 4
  %xor24 = xor i32 %xor20, %14
  %arrayidx25 = getelementptr i32, ptr %add.ptr12, i32 1
  %15 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %xor24, ptr %arrayidx25, align 4
  %arrayidx27 = getelementptr i32, ptr %add.ptr11, i32 2
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx27, align 4
  %xor28 = xor i32 %17, %xor24
  %arrayidx29 = getelementptr i32, ptr %add.ptr12, i32 2
  %18 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %xor28, ptr %arrayidx29, align 4
  %arrayidx31 = getelementptr i32, ptr %add.ptr11, i32 3
  %19 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx31, align 4
  %xor32 = xor i32 %20, %xor28
  %arrayidx33 = getelementptr i32, ptr %add.ptr12, i32 3
  %21 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %xor32, ptr %arrayidx33, align 4
  %22 = zext i32 %key_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %key_len, label %for.body8.for.inc76_crit_edge [
    i32 24, label %if.then36
    i32 32, label %if.then51
  ]

for.body8.for.inc76_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc76

if.then36:                                        ; preds = %for.body8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.1173)
  %cmp37 = icmp ugt i32 %i.1173, 6
  br i1 %cmp37, label %if.then36.for.body89.preheader_crit_edge, label %if.then36.for.inc76.sink.split_crit_edge

if.then36.for.inc76.sink.split_crit_edge:         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc76.sink.split

if.then36.for.body89.preheader_crit_edge:         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body89.preheader

if.then51:                                        ; preds = %for.body8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.1173)
  %cmp52 = icmp ugt i32 %i.1173, 5
  br i1 %cmp52, label %if.then51.for.body89.preheader_crit_edge, label %if.end55

if.then51.for.body89.preheader_crit_edge:         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body89.preheader

if.end55:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  %call57 = tail call i32 @ce_aes_sub(i32 noundef %xor32) #6
  %arrayidx58 = getelementptr i32, ptr %add.ptr11, i32 4
  %23 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx58, align 4
  %xor59 = xor i32 %24, %call57
  %arrayidx60 = getelementptr i32, ptr %add.ptr12, i32 4
  %25 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %xor59, ptr %arrayidx60, align 4
  %arrayidx62 = getelementptr i32, ptr %add.ptr11, i32 5
  %26 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx62, align 4
  %xor63 = xor i32 %27, %xor59
  %arrayidx64 = getelementptr i32, ptr %add.ptr12, i32 5
  %28 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %xor63, ptr %arrayidx64, align 4
  br label %for.inc76.sink.split

for.inc76.sink.split:                             ; preds = %if.end55, %if.then36.for.inc76.sink.split_crit_edge
  %.sink = phi i32 [ 6, %if.end55 ], [ 4, %if.then36.for.inc76.sink.split_crit_edge ]
  %xor32.sink = phi i32 [ %xor63, %if.end55 ], [ %xor32, %if.then36.for.inc76.sink.split_crit_edge ]
  %.sink182 = phi i32 [ 7, %if.end55 ], [ 5, %if.then36.for.inc76.sink.split_crit_edge ]
  %arrayidx42 = getelementptr i32, ptr %add.ptr11, i32 %.sink
  %29 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx42, align 4
  %xor43 = xor i32 %30, %xor32.sink
  %arrayidx68 = getelementptr i32, ptr %add.ptr12, i32 %.sink
  %31 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %xor43, ptr %arrayidx68, align 4
  %arrayidx70 = getelementptr i32, ptr %add.ptr11, i32 %.sink182
  %32 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx70, align 4
  %xor71 = xor i32 %33, %xor43
  %arrayidx72 = getelementptr i32, ptr %add.ptr12, i32 %.sink182
  %34 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %xor71, ptr %arrayidx72, align 4
  br label %for.inc76

for.inc76:                                        ; preds = %for.inc76.sink.split, %for.body8.for.inc76_crit_edge
  %inc77 = add nuw nsw i32 %i.1173, 1
  %exitcond179.not = icmp eq i32 %inc77, 10
  br i1 %exitcond179.not, label %for.inc76.for.body89.preheader_crit_edge, label %for.inc76.for.body8_crit_edge

for.inc76.for.body8_crit_edge:                    ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body8

for.inc76.for.body89.preheader_crit_edge:         ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body89.preheader

for.body89.preheader:                             ; preds = %for.inc76.for.body89.preheader_crit_edge, %if.then51.for.body89.preheader_crit_edge, %if.then36.for.body89.preheader_crit_edge
  %key_dec81 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %ctx, i32 0, i32 1
  %35 = ptrtoint ptr %key_length to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %key_length, align 4
  %div1.i = lshr i32 %36, 2
  %add.i = add nuw nsw i32 %div1.i, 6
  %arrayidx85 = getelementptr %struct.aes_block, ptr %ctx, i32 %add.i
  %37 = call ptr @memcpy(ptr %key_dec81, ptr %arrayidx85, i32 16)
  %j.0175 = add nuw nsw i32 %div1.i, 5
  br label %for.body89

for.body89:                                       ; preds = %for.body89.for.body89_crit_edge, %for.body89.preheader
  %j.0178 = phi i32 [ %j.0, %for.body89.for.body89_crit_edge ], [ %j.0175, %for.body89.preheader ]
  %i.2177 = phi i32 [ %inc93, %for.body89.for.body89_crit_edge ], [ 1, %for.body89.preheader ]
  %add.ptr90 = getelementptr %struct.aes_block, ptr %key_dec81, i32 %i.2177
  %add.ptr91 = getelementptr %struct.aes_block, ptr %ctx, i32 %j.0178
  tail call void @ce_aes_invert(ptr noundef %add.ptr90, ptr noundef %add.ptr91) #6
  %inc93 = add nuw nsw i32 %i.2177, 1
  %j.0 = add nsw i32 %j.0178, -1
  %exitcond180.not = icmp eq i32 %inc93, %add.i
  br i1 %exitcond180.not, label %for.end95, label %for.body89.for.body89_crit_edge

for.body89.for.body89_crit_edge:                  ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body89

for.end95:                                        ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx96 = getelementptr %struct.aes_block, ptr %key_dec81, i32 %add.i
  %38 = call ptr @memcpy(ptr %arrayidx96, ptr %ctx, i32 16)
  tail call void @kernel_neon_end() #6
  br label %cleanup98

cleanup98:                                        ; preds = %for.end95, %entry.cleanup98_crit_edge
  %retval.0 = phi i32 [ 0, %for.end95 ], [ -22, %entry.cleanup98_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_begin() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ce_aes_sub(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ce_aes_invert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_end() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_virt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ce_aes_ecb_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ce_aes_ecb_decrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ce_aes_cbc_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ce_aes_cbc_decrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scatterwalk_ffwd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ce_aes_cbc_cts_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ce_aes_cbc_cts_decrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ce_aes_ctr_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__crypto_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_inc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aes_encrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ce_aes_xts_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ce_aes_xts_decrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @simd_skcipher_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18}
!llvm.named.register.sp = !{!20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__UNIQUE_ID_description241, !1, !"__UNIQUE_ID_description241", i1 false, i1 false}
!1 = !{!"../arch/arm/crypto/aes-ce-glue.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_author242, !3, !"__UNIQUE_ID_author242", i1 false, i1 false}
!3 = !{!"../arch/arm/crypto/aes-ce-glue.c", i32 22, i32 1}
!4 = !{ptr @__UNIQUE_ID_file243, !5, !"__UNIQUE_ID_file243", i1 false, i1 false}
!5 = !{!"../arch/arm/crypto/aes-ce-glue.c", i32 23, i32 1}
!6 = !{ptr @__UNIQUE_ID_license244, !5, !"__UNIQUE_ID_license244", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_aes_arm_ce__245_729_cpu_feature_match_AES_init6, !8, !"__initcall__kmod_aes_arm_ce__245_729_cpu_feature_match_AES_init6", i1 false, i1 false}
!8 = !{!"../arch/arm/crypto/aes-ce-glue.c", i32 729, i32 1}
!9 = !{ptr @__exitcall_aes_exit, !10, !"__exitcall_aes_exit", i1 false, i1 false}
!10 = !{!"../arch/arm/crypto/aes-ce-glue.c", i32 730, i32 1}
!11 = !{ptr @aes_algs, !12, !"aes_algs", i1 false, i1 false}
!12 = !{!"../arch/arm/crypto/aes-ce-glue.c", i32 588, i32 28}
!13 = !{ptr @ce_aes_expandkey.rcon, !14, !"rcon", i1 false, i1 false}
!14 = !{!"../arch/arm/crypto/aes-ce-glue.c", i32 75, i32 18}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/crypto/ctr.h", i32 31, i32 6}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @aes_simd_algs, !19, !"aes_simd_algs", i1 false, i1 false}
!19 = !{!"../arch/arm/crypto/aes-ce-glue.c", i32 682, i32 34}
!20 = !{!"sp"}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i32 0, i32 33}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 901955, i64 902016}
!33 = !{i64 904687}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 904972}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.peeled.count", i32 1}
!38 = !{!"branch_weights", i32 4001, i32 1}
!39 = distinct !{!39, !37}
