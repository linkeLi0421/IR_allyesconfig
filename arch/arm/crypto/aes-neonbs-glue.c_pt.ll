; ModuleID = '/llk/IR_all_yes/arch/arm/crypto/aes-neonbs-glue.c_pt.bc'
source_filename = "../arch/arm/crypto/aes-neonbs-glue.c"
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
%struct.crypto_aes_ctx = type { [60 x i32], [60 x i32], i32 }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.skcipher_walk = type { %union.anon.75, %union.anon.75, %struct.scatter_walk, i32, %struct.scatter_walk, i32, %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.anon.77 = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author241 = internal constant [61 x i8] c"aes_arm_bs.author=Ard Biesheuvel <ard.biesheuvel@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [43 x i8] c"aes_arm_bs.file=arch/arm/crypto/aes-arm-bs\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [26 x i8] c"aes_arm_bs.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace244 = internal constant [26 x i8] c"aes_arm_bs.alias=ecb(aes)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto245 = internal constant [33 x i8] c"aes_arm_bs.alias=crypto-ecb(aes)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace246 = internal constant [30 x i8] c"aes_arm_bs.alias=cbc(aes)-all\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto247 = internal constant [37 x i8] c"aes_arm_bs.alias=crypto-cbc(aes)-all\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace248 = internal constant [26 x i8] c"aes_arm_bs.alias=ctr(aes)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto249 = internal constant [33 x i8] c"aes_arm_bs.alias=crypto-ctr(aes)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace250 = internal constant [26 x i8] c"aes_arm_bs.alias=xts(aes)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto251 = internal constant [33 x i8] c"aes_arm_bs.alias=crypto-xts(aes)\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns252 = internal constant [37 x i8] c"aes_arm_bs.import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1
@__initcall__kmod_aes_arm_bs__253_563_aes_init7 = internal global ptr @aes_init, section ".initcall7.init", align 4
@__exitcall_aes_exit = internal global ptr @aes_exit, section ".exitcall.exit", align 4
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@aes_algs = internal global [5 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @aesbs_setkey, ptr @ecb_encrypt, ptr @ecb_decrypt, ptr null, ptr null, i32 16, i32 32, i32 0, i32 0, i32 128, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 8192, i32 16, i32 1712, i32 0, i32 250, %struct.refcount_struct zeroinitializer, [128 x i8] c"__ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"__ecb-aes-neonbs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @aesbs_cbc_setkey, ptr @cbc_encrypt, ptr @cbc_decrypt, ptr @cbc_init, ptr @cbc_exit, i32 16, i32 32, i32 16, i32 0, i32 128, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 8448, i32 16, i32 1728, i32 0, i32 250, %struct.refcount_struct zeroinitializer, [128 x i8] c"__cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"__cbc-aes-neonbs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @aesbs_setkey, ptr @ctr_encrypt, ptr @ctr_encrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 16, i32 128, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 8192, i32 1, i32 1712, i32 0, i32 250, %struct.refcount_struct zeroinitializer, [128 x i8] c"__ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"__ctr-aes-neonbs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @aesbs_ctr_setkey_sync, ptr @ctr_encrypt_sync, ptr @ctr_encrypt_sync, ptr null, ptr null, i32 16, i32 32, i32 16, i32 16, i32 128, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 2208, i32 0, i32 249, %struct.refcount_struct zeroinitializer, [128 x i8] c"ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ctr-aes-neonbs-sync\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @aesbs_xts_setkey, ptr @xts_encrypt, ptr @xts_decrypt, ptr @xts_init, ptr @xts_exit, i32 32, i32 64, i32 16, i32 0, i32 128, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 8192, i32 16, i32 1728, i32 0, i32 250, %struct.refcount_struct zeroinitializer, [128 x i8] c"__xts(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"__xts-aes-neonbs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }], align 128
@aes_simd_algs = internal global { [5 x ptr], [44 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cbc(aes)\00", [23 x i8] zeroinitializer }, align 32
@crypto_ctr_encrypt_walk.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/crypto/ctr.h\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aes\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [14 x i8] c"aes_simd_algs\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 513, i32 34 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 197, i32 39 }
@___asan_gen_.10 = private unnamed_addr constant [24 x i8] c"../include/crypto/ctr.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 31, i32 6 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [37 x i8] c"../arch/arm/crypto/aes-neonbs-glue.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 325, i32 37 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_alias_crypto245, ptr @__UNIQUE_ID_alias_crypto247, ptr @__UNIQUE_ID_alias_crypto249, ptr @__UNIQUE_ID_alias_crypto251, ptr @__UNIQUE_ID_alias_userspace244, ptr @__UNIQUE_ID_alias_userspace246, ptr @__UNIQUE_ID_alias_userspace248, ptr @__UNIQUE_ID_alias_userspace250, ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_import_ns252, ptr @__UNIQUE_ID_license243, ptr @__exitcall_aes_exit, ptr @__initcall__kmod_aes_arm_bs__253_563_aes_init7, ptr @aes_simd_algs, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_simd_algs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aes_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %0 = load i32, ptr @elf_hwcap, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @crypto_register_skciphers(ptr noundef nonnull @aes_algs, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %cra_flags = getelementptr [5 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 %i.039, i32 11, i32 2
  %1 = ptrtoint ptr %cra_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cra_flags, align 16
  %and4 = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.end7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %add.ptr = getelementptr [5 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 %i.039, i32 11, i32 8, i32 2
  %cra_driver_name = getelementptr [5 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 %i.039, i32 11, i32 9
  %add.ptr13 = getelementptr i8, ptr %cra_driver_name, i32 2
  %call18 = tail call ptr @simd_skcipher_create_compat(ptr noundef %add.ptr, ptr noundef %add.ptr13, ptr noundef %cra_driver_name) #6
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %unregister_simds, label %if.end22

if.end22:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx23 = getelementptr [5 x ptr], ptr @aes_simd_algs, i32 0, i32 %i.039
  %3 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call18, ptr %arrayidx23, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end22, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

unregister_simds:                                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call18 to i32
  tail call void @aes_exit()
  br label %cleanup

cleanup:                                          ; preds = %unregister_simds, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %unregister_simds ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aes_exit() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @aes_simd_algs, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @simd_skcipher_free(ptr noundef nonnull %0) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %1 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @aes_simd_algs, i32 0, i32 1), align 4
  %tobool.not.1 = icmp eq ptr %1, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @simd_skcipher_free(ptr noundef nonnull %1) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %2 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @aes_simd_algs, i32 0, i32 2), align 4
  %tobool.not.2 = icmp eq ptr %2, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @simd_skcipher_free(ptr noundef nonnull %2) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %3 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @aes_simd_algs, i32 0, i32 3), align 4
  %tobool.not.3 = icmp eq ptr %3, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @simd_skcipher_free(ptr noundef nonnull %3) #6
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %4 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @aes_simd_algs, i32 0, i32 4), align 4
  %tobool.not.4 = icmp eq ptr %4, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @simd_skcipher_free(ptr noundef nonnull %4) #6
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  tail call void @crypto_unregister_skciphers(ptr noundef nonnull @aes_algs, i32 noundef 5) #6
  ret void
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
define internal i32 @aesbs_setkey(ptr noundef %tfm, ptr noundef %in_key, i32 noundef %key_len) #1 align 64 {
entry:
  %rk = alloca %struct.crypto_aes_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %rk) #6
  %0 = call ptr @memset(ptr %rk, i32 255, i32 484)
  %call1 = call i32 @aes_expandkey(ptr noundef nonnull %rk, ptr noundef %in_key, i32 noundef %key_len) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %div11 = lshr i32 %key_len, 2
  %add = add nuw nsw i32 %div11, 6
  %1 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %__crt_ctx.i.i, align 16
  call void @kernel_neon_begin() #6
  %rk2 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__crt_ctx.i.i, align 16
  call void @aesbs_convert_key(ptr noundef %rk2, ptr noundef nonnull %rk, i32 noundef %3) #6
  call void @kernel_neon_end() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %rk) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecb_encrypt(ptr noundef %req) #1 align 64 {
entry:
  %walk.i = alloca %struct.skcipher_walk, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk.i) #6
  %2 = call ptr @memset(ptr %walk.i, i32 255, i32 84)
  %call2.i = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk.i, ptr noundef %req, i1 noundef zeroext false) #6
  %nbytes.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk.i, i32 0, i32 3
  %3 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nbytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %4)
  %cmp17.i = icmp ugt i32 %4, 15
  br i1 %cmp17.i, label %while.body.lr.ph.i, label %entry.__ecb_crypt.exit_crit_edge

entry.__ecb_crypt.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__ecb_crypt.exit

while.body.lr.ph.i:                               ; preds = %entry
  %total.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk.i, i32 0, i32 5
  %stride.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk.i, i32 0, i32 14
  %addr.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk.i, i32 0, i32 1, i32 0, i32 1
  %addr7.i = getelementptr inbounds %struct.anon.77, ptr %walk.i, i32 0, i32 1
  %rk.i = getelementptr i8, ptr %1, i32 144
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %5 = phi i32 [ %4, %while.body.lr.ph.i ], [ %19, %if.end.i.while.body.i_crit_edge ]
  %div15.i = lshr i32 %5, 4
  %6 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp5.i = icmp ult i32 %5, %7
  br i1 %cmp5.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %stride.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stride.i, align 4
  %div616.i = lshr i32 %9, 4
  %neg.i = sub nsw i32 0, %div616.i
  %and.i = and i32 %div15.i, %neg.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %blocks.0.i = phi i32 [ %and.i, %if.then.i ], [ %div15.i, %while.body.i.if.end.i_crit_edge ]
  call void @kernel_neon_begin() #6
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr.i, align 4
  %12 = ptrtoint ptr %addr7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr7.i, align 4
  %14 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %__crt_ctx.i.i.i, align 16
  call void @aesbs_ecb_encrypt(ptr noundef %11, ptr noundef %13, ptr noundef %rk.i, i32 noundef %15, i32 noundef %blocks.0.i) #6, !callees !44
  call void @kernel_neon_end() #6
  %16 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nbytes.i, align 4
  %mul.neg.i = mul i32 %blocks.0.i, -16
  %sub9.i = add i32 %17, %mul.neg.i
  %call10.i = call i32 @skcipher_walk_done(ptr noundef nonnull %walk.i, i32 noundef %sub9.i) #6
  %18 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nbytes.i, align 4
  %cmp.i = icmp ugt i32 %19, 15
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.__ecb_crypt.exit_crit_edge

if.end.i.__ecb_crypt.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__ecb_crypt.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

__ecb_crypt.exit:                                 ; preds = %if.end.i.__ecb_crypt.exit_crit_edge, %entry.__ecb_crypt.exit_crit_edge
  %err.0.lcssa.i = phi i32 [ %call2.i, %entry.__ecb_crypt.exit_crit_edge ], [ %call10.i, %if.end.i.__ecb_crypt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk.i) #6
  ret i32 %err.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecb_decrypt(ptr noundef %req) #1 align 64 {
entry:
  %walk.i = alloca %struct.skcipher_walk, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk.i) #6
  %2 = call ptr @memset(ptr %walk.i, i32 255, i32 84)
  %call2.i = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk.i, ptr noundef %req, i1 noundef zeroext false) #6
  %nbytes.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk.i, i32 0, i32 3
  %3 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nbytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %4)
  %cmp17.i = icmp ugt i32 %4, 15
  br i1 %cmp17.i, label %while.body.lr.ph.i, label %entry.__ecb_crypt.exit_crit_edge

entry.__ecb_crypt.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__ecb_crypt.exit

while.body.lr.ph.i:                               ; preds = %entry
  %total.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk.i, i32 0, i32 5
  %stride.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk.i, i32 0, i32 14
  %addr.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk.i, i32 0, i32 1, i32 0, i32 1
  %addr7.i = getelementptr inbounds %struct.anon.77, ptr %walk.i, i32 0, i32 1
  %rk.i = getelementptr i8, ptr %1, i32 144
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %5 = phi i32 [ %4, %while.body.lr.ph.i ], [ %19, %if.end.i.while.body.i_crit_edge ]
  %div15.i = lshr i32 %5, 4
  %6 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp5.i = icmp ult i32 %5, %7
  br i1 %cmp5.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %stride.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stride.i, align 4
  %div616.i = lshr i32 %9, 4
  %neg.i = sub nsw i32 0, %div616.i
  %and.i = and i32 %div15.i, %neg.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %blocks.0.i = phi i32 [ %and.i, %if.then.i ], [ %div15.i, %while.body.i.if.end.i_crit_edge ]
  call void @kernel_neon_begin() #6
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr.i, align 4
  %12 = ptrtoint ptr %addr7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr7.i, align 4
  %14 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %__crt_ctx.i.i.i, align 16
  call void @aesbs_ecb_decrypt(ptr noundef %11, ptr noundef %13, ptr noundef %rk.i, i32 noundef %15, i32 noundef %blocks.0.i) #6, !callees !44
  call void @kernel_neon_end() #6
  %16 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nbytes.i, align 4
  %mul.neg.i = mul i32 %blocks.0.i, -16
  %sub9.i = add i32 %17, %mul.neg.i
  %call10.i = call i32 @skcipher_walk_done(ptr noundef nonnull %walk.i, i32 noundef %sub9.i) #6
  %18 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nbytes.i, align 4
  %cmp.i = icmp ugt i32 %19, 15
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.__ecb_crypt.exit_crit_edge

if.end.i.__ecb_crypt.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__ecb_crypt.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

__ecb_crypt.exit:                                 ; preds = %if.end.i.__ecb_crypt.exit_crit_edge, %entry.__ecb_crypt.exit_crit_edge
  %err.0.lcssa.i = phi i32 [ %call2.i, %entry.__ecb_crypt.exit_crit_edge ], [ %call10.i, %if.end.i.__ecb_crypt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk.i) #6
  ret i32 %err.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aesbs_cbc_setkey(ptr noundef %tfm, ptr noundef %in_key, i32 noundef %key_len) #1 align 64 {
entry:
  %rk = alloca %struct.crypto_aes_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %rk) #6
  %0 = call ptr @memset(ptr %rk, i32 255, i32 484)
  %call1 = call i32 @aes_expandkey(ptr noundef nonnull %rk, ptr noundef %in_key, i32 noundef %key_len) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %div17 = lshr i32 %key_len, 2
  %add = add nuw nsw i32 %div17, 6
  %1 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %__crt_ctx.i.i, align 16
  call void @kernel_neon_begin() #6
  %rk3 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__crt_ctx.i.i, align 16
  call void @aesbs_convert_key(ptr noundef %rk3, ptr noundef nonnull %rk, i32 noundef %3) #6
  call void @kernel_neon_end() #6
  %4 = call ptr @memset(ptr %rk, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %rk) #6, !srcloc !45
  %enc_tfm = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 7, i32 2, i32 4, i32 32
  %5 = ptrtoint ptr %enc_tfm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %enc_tfm, align 16
  %call7 = call i32 @crypto_skcipher_setkey(ptr noundef %6, ptr noundef %in_key, i32 noundef %key_len) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %rk) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbc_encrypt(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %enc_tfm = getelementptr i8, ptr %1, i32 1840
  %2 = ptrtoint ptr %enc_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enc_tfm, align 16
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 1
  %7 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 2
  %8 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 4
  %9 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %12 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dst, align 4
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %req, align 128
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %16 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iv, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 2
  %18 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %11, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 3
  %19 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %13, ptr %dst2.i, align 4
  %20 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %15, ptr %__ctx.i, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %21 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %17, ptr %iv4.i, align 4
  %call4 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %__ctx.i) #6
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbc_decrypt(ptr noundef %req) #1 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %4)
  %cmp18 = icmp ugt i32 %4, 15
  br i1 %cmp18, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %total = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 5
  %stride = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 14
  %addr = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %addr7 = getelementptr inbounds %struct.anon.77, ptr %walk, i32 0, i32 1
  %rk = getelementptr i8, ptr %1, i32 144
  %iv = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %5 = phi i32 [ %4, %while.body.lr.ph ], [ %21, %if.end.while.body_crit_edge ]
  %div16 = lshr i32 %5, 4
  %6 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp5 = icmp ult i32 %5, %7
  br i1 %cmp5, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stride, align 4
  %div617 = lshr i32 %9, 4
  %neg = sub nsw i32 0, %div617
  %and = and i32 %div16, %neg
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %blocks.0 = phi i32 [ %and, %if.then ], [ %div16, %while.body.if.end_crit_edge ]
  call void @kernel_neon_begin() #6
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr, align 4
  %12 = ptrtoint ptr %addr7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr7, align 4
  %14 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %__crt_ctx.i.i, align 16
  %16 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iv, align 4
  call void @aesbs_cbc_decrypt(ptr noundef %11, ptr noundef %13, ptr noundef %rk, i32 noundef %15, i32 noundef %blocks.0, ptr noundef %17) #6
  call void @kernel_neon_end() #6
  %18 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nbytes, align 4
  %mul.neg = mul i32 %blocks.0, -16
  %sub10 = add i32 %19, %mul.neg
  %call11 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %sub10) #6
  %20 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nbytes, align 4
  %cmp = icmp ugt i32 %21, 15
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %err.0.lcssa = phi i32 [ %call2, %entry.while.end_crit_edge ], [ %call11, %if.end.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #6
  ret i32 %err.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbc_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @crypto_alloc_skcipher(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 384) #6
  %enc_tfm = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 7, i32 2, i32 4, i32 32
  %0 = ptrtoint ptr %enc_tfm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %enc_tfm, align 16
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call1, align 128
  %add = add i32 %3, 128
  %4 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %tfm, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cbc_exit(ptr nocapture noundef readonly %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enc_tfm = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 7, i32 2, i32 4, i32 32
  %0 = ptrtoint ptr %enc_tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enc_tfm, align 16
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctr_encrypt(ptr noundef %req) #1 align 64 {
entry:
  %walk = alloca %struct.skcipher_walk, align 4
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #6
  %2 = call ptr @memset(ptr %walk, i32 255, i32 84)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #6
  %3 = call ptr @memset(ptr %buf, i32 255, i32 16)
  %call2 = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef %req, i1 noundef zeroext false) #6
  %nbytes = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %4 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not48 = icmp eq i32 %5, 0
  br i1 %cmp.not48, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %total = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 5
  %stride = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 14
  %addr = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %addr8 = getelementptr inbounds %struct.anon.77, ptr %walk, i32 0, i32 1
  %rk = getelementptr i8, ptr %1, i32 144
  %iv = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %6 = phi i32 [ %5, %while.body.lr.ph ], [ %28, %cleanup.while.body_crit_edge ]
  %div42 = lshr i32 %6, 4
  %7 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %total, align 4
  %rem = and i32 %8, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %cond = select i1 %tobool.not, ptr null, ptr %buf
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp6 = icmp ult i32 %6, %8
  br i1 %cmp6, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stride, align 4
  %div743 = lshr i32 %10, 4
  %neg = sub nsw i32 0, %div743
  %and = and i32 %div42, %neg
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %blocks.0 = phi i32 [ %and, %if.then ], [ %div42, %while.body.if.end_crit_edge ]
  %final.0 = phi ptr [ null, %if.then ], [ %cond, %while.body.if.end_crit_edge ]
  call void @kernel_neon_begin() #6
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %addr, align 4
  %13 = ptrtoint ptr %addr8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr8, align 4
  %15 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %__crt_ctx.i.i, align 16
  %17 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iv, align 4
  call void @aesbs_ctr_encrypt(ptr noundef %12, ptr noundef %14, ptr noundef %rk, i32 noundef %16, i32 noundef %blocks.0, ptr noundef %18, ptr noundef %final.0) #6
  call void @kernel_neon_end() #6
  %tobool10.not = icmp eq ptr %final.0, null
  br i1 %tobool10.not, label %cleanup, label %if.else.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %total, align 4
  %rem21 = and i32 %20, 15
  %21 = ptrtoint ptr %addr8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %addr8, align 4
  %mul = shl nuw i32 %blocks.0, 4
  %add.ptr19 = getelementptr i8, ptr %22, i32 %mul
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 %mul
  call void @__crypto_xor(ptr noundef %add.ptr, ptr noundef %add.ptr19, ptr noundef nonnull %final.0, i32 noundef %rem21) #6
  %call22 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef 0) #6
  br label %while.end

cleanup:                                          ; preds = %if.end
  %25 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nbytes, align 4
  %mul25.neg = mul i32 %blocks.0, -16
  %sub26 = add i32 %26, %mul25.neg
  %call27 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %sub26) #6
  %27 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nbytes, align 4
  %cmp.not = icmp eq i32 %28, 0
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.else.i, %entry.while.end_crit_edge
  %err.2 = phi i32 [ %call22, %if.else.i ], [ %call2, %entry.while.end_crit_edge ], [ %call27, %cleanup.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #6
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #6
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aesbs_ctr_setkey_sync(ptr noundef %tfm, ptr noundef %in_key, i32 noundef %key_len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fallback = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 7, i32 2, i32 4, i32 32
  %call1 = tail call i32 @aes_expandkey(ptr noundef %fallback, ptr noundef %in_key, i32 noundef %key_len) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %div14 = lshr i32 %key_len, 2
  %add = add nuw nsw i32 %div14, 6
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add, ptr %__crt_ctx.i.i, align 16
  tail call void @kernel_neon_begin() #6
  %rk = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %1 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %__crt_ctx.i.i, align 16
  tail call void @aesbs_convert_key(ptr noundef %rk, ptr noundef %fallback, i32 noundef %2) #6
  tail call void @kernel_neon_end() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctr_encrypt_sync(ptr noundef %req) #1 align 64 {
entry:
  %buf.i = alloca [16 x i8], align 1
  %walk.i = alloca %struct.skcipher_walk, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !34) #6
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !34) #6
  %and.i.i6.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i6.i to ptr
  %preempt_count.i7.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i7.i, align 4
  %and2.i = and i32 %7, 983040
  %or.i = or i32 %and2.i, %and.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !34) #6
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
  %20 = tail call i32 @llvm.ctpop.i32(i32 %17) #6, !range !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %if.end40.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.then
  %.b1.i = load i1, ptr @crypto_ctr_encrypt_walk.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.crypto_ctr_encrypt_walk.exit_crit_edge, label %if.then.i, !prof !47

land.rhs.i.crypto_ctr_encrypt_walk.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %crypto_ctr_encrypt_walk.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @crypto_ctr_encrypt_walk.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 31, i32 noundef 9, ptr noundef null) #6
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
  %addr44.i = getelementptr inbounds %struct.anon.77, ptr %walk.i, i32 0, i32 1
  %total.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk.i, i32 0, i32 5
  %sub.i = add i32 %17, -1
  %iv.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk.i, i32 0, i32 10
  %fallback.i.i = getelementptr i8, ptr %13, i32 1840
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
  %34 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !48
  %and.i.i.i5 = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i5)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i5, 0
  br i1 %tobool.not.i.i, label %if.then21.i.i, label %do.end11.i.i

do.end11.i.i:                                     ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @aes_encrypt(ptr noundef %fallback.i.i, ptr noundef nonnull %buf.i, ptr noundef %33) #6
  br label %do.body23.i.i

if.then21.i.i:                                    ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @trace_hardirqs_off() #6
  call void @aes_encrypt(ptr noundef %fallback.i.i, ptr noundef nonnull %buf.i, ptr noundef %33) #6
  call void @trace_hardirqs_on() #6
  br label %do.body23.i.i

do.body23.i.i:                                    ; preds = %if.then21.i.i, %do.end11.i.i
  %35 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !49
  %and.i.i.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body23.i.i.ctr_encrypt_one.exit.i_crit_edge, !prof !50

do.body23.i.i.ctr_encrypt_one.exit.i_crit_edge:   ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ctr_encrypt_one.exit.i

if.then36.i.i:                                    ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @warn_bogus_irq_restore() #6
  br label %ctr_encrypt_one.exit.i

ctr_encrypt_one.exit.i:                           ; preds = %if.then36.i.i, %do.body23.i.i.ctr_encrypt_one.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %34) #6, !srcloc !51
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
define internal i32 @aesbs_xts_setkey(ptr noundef %tfm, ptr noundef %in_key, i32 noundef %key_len) #1 align 64 {
entry:
  %rk.i = alloca %struct.crypto_aes_ctx, align 4
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
  %cts_tfm = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 7, i32 2, i32 4, i32 32
  %2 = ptrtoint ptr %cts_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cts_tfm, align 16
  %call2 = tail call i32 @crypto_cipher_setkey(ptr noundef %3, ptr noundef %in_key, i32 noundef %.pre) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tweak_tfm = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 7, i32 2, i32 4, i32 36
  %4 = ptrtoint ptr %tweak_tfm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tweak_tfm, align 4
  %add.ptr = getelementptr i8, ptr %in_key, i32 %.pre
  %call6 = tail call i32 @crypto_cipher_setkey(ptr noundef %5, ptr noundef %add.ptr, i32 noundef %.pre) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %rk.i) #6
  %6 = call ptr @memset(ptr %rk.i, i32 255, i32 484)
  %call1.i = call i32 @aes_expandkey(ptr noundef nonnull %rk.i, ptr noundef %in_key, i32 noundef %.pre) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i29 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i29, label %if.end.i30, label %if.end9.aesbs_setkey.exit_crit_edge

if.end9.aesbs_setkey.exit_crit_edge:              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %aesbs_setkey.exit

if.end.i30:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %div11.i = lshr i32 %key_len, 3
  %add.i = add nuw nsw i32 %div11.i, 6
  %7 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add.i, ptr %__crt_ctx.i.i, align 16
  call void @kernel_neon_begin() #6
  %rk2.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %8 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__crt_ctx.i.i, align 16
  call void @aesbs_convert_key(ptr noundef %rk2.i, ptr noundef nonnull %rk.i, i32 noundef %9) #6
  call void @kernel_neon_end() #6
  br label %aesbs_setkey.exit

aesbs_setkey.exit:                                ; preds = %if.end.i30, %if.end9.aesbs_setkey.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %rk.i) #6
  br label %cleanup

cleanup:                                          ; preds = %aesbs_setkey.exit, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %aesbs_setkey.exit ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xts_encrypt(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__xts_crypt(ptr noundef %req, i1 noundef zeroext true, ptr noundef nonnull @aesbs_xts_encrypt)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xts_decrypt(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__xts_crypt(ptr noundef %req, i1 noundef zeroext false, ptr noundef nonnull @aesbs_xts_decrypt)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xts_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @crypto_alloc_base(ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 15) #6
  %cts_tfm = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 7, i32 2, i32 4, i32 32
  %0 = ptrtoint ptr %cts_tfm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %cts_tfm, align 16
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i20 = tail call ptr @crypto_alloc_base(ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 15) #6
  %tweak_tfm = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 7, i32 2, i32 4, i32 36
  %2 = ptrtoint ptr %tweak_tfm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i20, ptr %tweak_tfm, align 4
  %cmp.i21 = icmp ugt ptr %call.i20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i21, label %if.then9, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %cts_tfm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cts_tfm, align 16
  tail call void @crypto_destroy_tfm(ptr noundef %4, ptr noundef %4) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %5 = ptrtoint ptr %tweak_tfm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tweak_tfm, align 4
  %cmp.i.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %6 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %7, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %spec.select.i, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xts_exit(ptr nocapture noundef readonly %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tweak_tfm = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 7, i32 2, i32 4, i32 36
  %0 = ptrtoint ptr %tweak_tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tweak_tfm, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %1) #6
  %cts_tfm = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 7, i32 2, i32 4, i32 32
  %2 = ptrtoint ptr %cts_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cts_tfm, align 16
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aes_expandkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_begin() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aesbs_convert_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_end() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aesbs_ecb_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_virt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aesbs_ecb_decrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aesbs_cbc_decrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aesbs_ctr_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__crypto_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

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
declare dso_local i32 @crypto_cipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__xts_crypt(ptr noundef %req, i1 noundef zeroext %encrypt, ptr nocapture noundef readonly %fn) unnamed_addr #1 align 64 {
entry:
  %subreq = alloca %struct.skcipher_request, align 128
  %buf = alloca [32 x i8], align 4
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
  %rem = and i32 %3, 15
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %subreq) #6
  %4 = call ptr @memset(ptr %subreq, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #6
  %5 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 8
  %7 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 12
  %8 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 16
  %9 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #6
  %10 = call ptr @memset(ptr %walk, i32 255, i32 84)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp ult i32 %3, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then5, !prof !47

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %tfm1.i, align 32
  %flags.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 4, i32 4
  %16 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %17 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %19 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dst, align 4
  %sub = and i32 %3, -16
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %21 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iv, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 2
  %23 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %18, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 3
  %24 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %20, ptr %dst2.i, align 4
  %25 = ptrtoint ptr %subreq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %subreq, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %subreq, i32 0, i32 1
  %26 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %22, ptr %iv4.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %req.addr.0 = phi ptr [ %subreq, %if.then5 ], [ %req, %if.end.if.end8_crit_edge ]
  %call9 = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef %req.addr.0, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %tweak_tfm = getelementptr i8, ptr %1, i32 1844
  %27 = ptrtoint ptr %tweak_tfm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tweak_tfm, align 4
  %iv13 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  %29 = ptrtoint ptr %iv13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iv13, align 4
  call void @crypto_cipher_encrypt_one(ptr noundef %28, ptr noundef %30, ptr noundef %30) #6
  %nbytes = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %31 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %32)
  %cmp15121 = icmp ugt i32 %32, 15
  br i1 %cmp15121, label %while.body.lr.ph, label %if.end12.while.end_crit_edge

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp18 = icmp ne i32 %rem, 0
  %not.encrypt = xor i1 %encrypt, true
  %spec.select = select i1 %not.encrypt, i1 %cmp18, i1 false
  %land.ext = zext i1 %spec.select to i32
  %total = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 5
  %stride = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 14
  %addr = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %addr27 = getelementptr inbounds %struct.anon.77, ptr %walk, i32 0, i32 1
  %rk = getelementptr i8, ptr %1, i32 144
  br label %while.body

while.body:                                       ; preds = %if.end24.while.body_crit_edge, %while.body.lr.ph
  %33 = phi i32 [ %32, %while.body.lr.ph ], [ %49, %if.end24.while.body_crit_edge ]
  %div109 = lshr i32 %33, 4
  %34 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %total, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp20 = icmp ult i32 %33, %35
  br i1 %cmp20, label %if.then21, label %while.body.if.end24_crit_edge

while.body.if.end24_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then21:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stride, align 4
  %div22110 = lshr i32 %37, 4
  %neg = sub nsw i32 0, %div22110
  %and = and i32 %div109, %neg
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %while.body.if.end24_crit_edge
  %blocks.0 = phi i32 [ %and, %if.then21 ], [ %div109, %while.body.if.end24_crit_edge ]
  %reorder_last_tweak.0 = phi i32 [ 0, %if.then21 ], [ %land.ext, %while.body.if.end24_crit_edge ]
  call void @kernel_neon_begin() #6
  %38 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %addr, align 4
  %40 = ptrtoint ptr %addr27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %addr27, align 4
  %42 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %__crt_ctx.i.i, align 16
  %44 = ptrtoint ptr %iv13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iv13, align 4
  call void %fn(ptr noundef %39, ptr noundef %41, ptr noundef %rk, i32 noundef %43, i32 noundef %blocks.0, ptr noundef %45, i32 noundef %reorder_last_tweak.0) #6, !callees !52
  call void @kernel_neon_end() #6
  %46 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nbytes, align 4
  %mul.neg = mul i32 %blocks.0, -16
  %sub31 = add i32 %47, %mul.neg
  %call32 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %sub31) #6
  %48 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nbytes, align 4
  %cmp15 = icmp ugt i32 %49, 15
  br i1 %cmp15, label %if.end24.while.body_crit_edge, label %if.end24.while.end_crit_edge

if.end24.while.end_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end24.while.body_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end24.while.end_crit_edge, %if.end12.while.end_crit_edge
  %err.0.lcssa = phi i32 [ 0, %if.end12.while.end_crit_edge ], [ %call32, %if.end24.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.lcssa)
  %tobool33.not = icmp ne i32 %err.0.lcssa, 0
  %brmerge = select i1 %tobool33.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %while.end.cleanup_crit_edge, label %if.end44, !prof !53

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %while.end
  %dst46 = getelementptr inbounds %struct.skcipher_request, ptr %req.addr.0, i32 0, i32 3
  %50 = ptrtoint ptr %dst46 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dst46, align 4
  %52 = ptrtoint ptr %req.addr.0 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %req.addr.0, align 128
  %sub48 = add i32 %53, -16
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %buf, ptr noundef %51, i32 noundef %sub48, i32 noundef 16, i32 noundef 0) #6
  %54 = call ptr @memcpy(ptr %8, ptr %buf, i32 %rem)
  %src52 = getelementptr inbounds %struct.skcipher_request, ptr %req.addr.0, i32 0, i32 2
  %55 = ptrtoint ptr %src52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %src52, align 8
  %57 = ptrtoint ptr %req.addr.0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %req.addr.0, align 128
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %buf, ptr noundef %56, i32 noundef %58, i32 noundef %rem, i32 noundef 0) #6
  %iv55 = getelementptr inbounds %struct.skcipher_request, ptr %req.addr.0, i32 0, i32 1
  %59 = ptrtoint ptr %iv55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iv55, align 4
  %incdec.ptr.i = getelementptr i32, ptr %60, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %63 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %buf, align 4
  %xor.i = xor i32 %64, %62
  store i32 %xor.i, ptr %buf, align 4
  %incdec.ptr.1.i = getelementptr i32, ptr %60, i32 2
  %65 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %incdec.ptr.i, align 4
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %5, align 4
  %xor.1.i = xor i32 %68, %66
  store i32 %xor.1.i, ptr %5, align 4
  %incdec.ptr.2.i = getelementptr i32, ptr %60, i32 3
  %69 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %incdec.ptr.1.i, align 4
  %71 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %6, align 4
  %xor.2.i = xor i32 %72, %70
  store i32 %xor.2.i, ptr %6, align 4
  %73 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %incdec.ptr.2.i, align 4
  %75 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %7, align 4
  %xor.3.i = xor i32 %76, %74
  store i32 %xor.3.i, ptr %7, align 4
  %cts_tfm = getelementptr i8, ptr %1, i32 1840
  %77 = ptrtoint ptr %cts_tfm to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cts_tfm, align 16
  br i1 %encrypt, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  call void @crypto_cipher_encrypt_one(ptr noundef %78, ptr noundef nonnull %buf, ptr noundef nonnull %buf) #6
  br label %if.end63

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  call void @crypto_cipher_decrypt_one(ptr noundef %78, ptr noundef nonnull %buf, ptr noundef nonnull %buf) #6
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.then57
  %79 = ptrtoint ptr %iv55 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %iv55, align 4
  %incdec.ptr.i111 = getelementptr i32, ptr %80, i32 1
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %83 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %buf, align 4
  %xor.i113 = xor i32 %84, %82
  store i32 %xor.i113, ptr %buf, align 4
  %incdec.ptr.1.i114 = getelementptr i32, ptr %80, i32 2
  %85 = ptrtoint ptr %incdec.ptr.i111 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %incdec.ptr.i111, align 4
  %87 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %5, align 4
  %xor.1.i116 = xor i32 %88, %86
  store i32 %xor.1.i116, ptr %5, align 4
  %incdec.ptr.2.i117 = getelementptr i32, ptr %80, i32 3
  %89 = ptrtoint ptr %incdec.ptr.1.i114 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %incdec.ptr.1.i114, align 4
  %91 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %6, align 4
  %xor.2.i119 = xor i32 %92, %90
  store i32 %xor.2.i119, ptr %6, align 4
  %93 = ptrtoint ptr %incdec.ptr.2.i117 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %incdec.ptr.2.i117, align 4
  %95 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %7, align 4
  %xor.3.i120 = xor i32 %96, %94
  store i32 %xor.3.i120, ptr %7, align 4
  %97 = ptrtoint ptr %dst46 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dst46, align 4
  %99 = ptrtoint ptr %req.addr.0 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %req.addr.0, align 128
  %sub69 = add i32 %100, -16
  %add = or i32 %rem, 16
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %buf, ptr noundef %98, i32 noundef %sub69, i32 noundef %add, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %while.end.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end63 ], [ -22, %entry.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %err.0.lcssa, %while.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %subreq) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aesbs_xts_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_encrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_decrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aesbs_xts_decrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_base(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @simd_skcipher_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !21, !23, !25, !27, !29, !30, !32}
!llvm.named.register.sp = !{!34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__UNIQUE_ID_author241, !1, !"__UNIQUE_ID_author241", i1 false, i1 false}
!1 = !{!"../arch/arm/crypto/aes-neonbs-glue.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_file242, !3, !"__UNIQUE_ID_file242", i1 false, i1 false}
!3 = !{!"../arch/arm/crypto/aes-neonbs-glue.c", i32 20, i32 1}
!4 = !{ptr @__UNIQUE_ID_license243, !3, !"__UNIQUE_ID_license243", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_alias_userspace244, !6, !"__UNIQUE_ID_alias_userspace244", i1 false, i1 false}
!6 = !{!"../arch/arm/crypto/aes-neonbs-glue.c", i32 22, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias_crypto245, !6, !"__UNIQUE_ID_alias_crypto245", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias_userspace246, !9, !"__UNIQUE_ID_alias_userspace246", i1 false, i1 false}
!9 = !{!"../arch/arm/crypto/aes-neonbs-glue.c", i32 23, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias_crypto247, !9, !"__UNIQUE_ID_alias_crypto247", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias_userspace248, !12, !"__UNIQUE_ID_alias_userspace248", i1 false, i1 false}
!12 = !{!"../arch/arm/crypto/aes-neonbs-glue.c", i32 24, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto249, !12, !"__UNIQUE_ID_alias_crypto249", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias_userspace250, !15, !"__UNIQUE_ID_alias_userspace250", i1 false, i1 false}
!15 = !{!"../arch/arm/crypto/aes-neonbs-glue.c", i32 25, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias_crypto251, !15, !"__UNIQUE_ID_alias_crypto251", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_import_ns252, !18, !"__UNIQUE_ID_import_ns252", i1 false, i1 false}
!18 = !{!"../arch/arm/crypto/aes-neonbs-glue.c", i32 27, i32 1}
!19 = !{ptr @__initcall__kmod_aes_arm_bs__253_563_aes_init7, !20, !"__initcall__kmod_aes_arm_bs__253_563_aes_init7", i1 false, i1 false}
!20 = !{!"../arch/arm/crypto/aes-neonbs-glue.c", i32 563, i32 1}
!21 = !{ptr @__exitcall_aes_exit, !22, !"__exitcall_aes_exit", i1 false, i1 false}
!22 = !{!"../arch/arm/crypto/aes-neonbs-glue.c", i32 564, i32 1}
!23 = !{ptr @aes_algs, !24, !"aes_algs", i1 false, i1 false}
!24 = !{!"../arch/arm/crypto/aes-neonbs-glue.c", i32 426, i32 28}
!25 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../arch/arm/crypto/aes-neonbs-glue.c", i32 197, i32 39}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/crypto/ctr.h", i32 31, i32 6}
!29 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/crypto/aes-neonbs-glue.c", i32 325, i32 37}
!32 = !{ptr @aes_simd_algs, !33, !"aes_simd_algs", i1 false, i1 false}
!33 = !{!"../arch/arm/crypto/aes-neonbs-glue.c", i32 513, i32 34}
!34 = !{!"sp"}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{ptr @aesbs_ecb_decrypt, ptr @aesbs_ecb_encrypt}
!45 = !{i64 2149047245}
!46 = !{i32 0, i32 33}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 896636, i64 896697}
!49 = !{i64 899368}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i64 899653}
!52 = !{ptr @aesbs_xts_decrypt, ptr @aesbs_xts_encrypt}
!53 = !{!"branch_weights", i32 4001, i32 1}
