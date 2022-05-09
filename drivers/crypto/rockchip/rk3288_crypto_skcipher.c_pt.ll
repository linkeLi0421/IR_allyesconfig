; ModuleID = '/llk/IR_all_yes/drivers/crypto/rockchip/rk3288_crypto_skcipher.c_pt.bc'
source_filename = "../drivers/crypto/rockchip/rk3288_crypto_skcipher.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.68, ptr, ptr, ptr, ptr, %union.anon.69, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.68 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.69 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.rk_crypto_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.crypto_queue, %struct.tasklet_struct, %struct.tasklet_struct, ptr, i32, %struct.spinlock, ptr, ptr, %struct.scatterlist, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.67, i32 }
%union.anon.67 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.des_ctx = type { [32 x i32] }

@rk_ecb_aes_alg = dso_local local_unnamed_addr global { ptr, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, i32, [124 x i8] } { ptr null, [124 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @rk_aes_setkey, ptr @rk_aes_ecb_encrypt, ptr @rk_aes_ecb_decrypt, ptr @rk_ablk_init_tfm, ptr @rk_ablk_exit_tfm, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 16, i32 28, i32 15, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-aes-rk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.68 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.69 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, i32 1, [124 x i8] undef }, align 128
@rk_cbc_aes_alg = dso_local local_unnamed_addr global { ptr, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, i32, [124 x i8] } { ptr null, [124 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @rk_aes_setkey, ptr @rk_aes_cbc_encrypt, ptr @rk_aes_cbc_decrypt, ptr @rk_ablk_init_tfm, ptr @rk_ablk_exit_tfm, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 16, i32 28, i32 15, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-aes-rk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.68 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.69 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, i32 1, [124 x i8] undef }, align 128
@rk_ecb_des_alg = dso_local local_unnamed_addr global { ptr, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, i32, [124 x i8] } { ptr null, [124 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @rk_des_setkey, ptr @rk_des_ecb_encrypt, ptr @rk_des_ecb_decrypt, ptr @rk_ablk_init_tfm, ptr @rk_ablk_exit_tfm, i32 8, i32 8, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 8, i32 28, i32 7, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des-rk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.68 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.69 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, i32 1, [124 x i8] undef }, align 128
@rk_cbc_des_alg = dso_local local_unnamed_addr global { ptr, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, i32, [124 x i8] } { ptr null, [124 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @rk_des_setkey, ptr @rk_des_cbc_encrypt, ptr @rk_des_cbc_decrypt, ptr @rk_ablk_init_tfm, ptr @rk_ablk_exit_tfm, i32 8, i32 8, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 8, i32 28, i32 7, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des-rk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.68 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.69 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, i32 1, [124 x i8] undef }, align 128
@rk_ecb_des3_ede_alg = dso_local local_unnamed_addr global { ptr, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, i32, [124 x i8] } { ptr null, [124 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @rk_tdes_setkey, ptr @rk_des3_ede_ecb_encrypt, ptr @rk_des3_ede_ecb_decrypt, ptr @rk_ablk_init_tfm, ptr @rk_ablk_exit_tfm, i32 24, i32 24, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 8, i32 28, i32 7, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des3-ede-rk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.68 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.69 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, i32 1, [124 x i8] undef }, align 128
@rk_cbc_des3_ede_alg = dso_local local_unnamed_addr global { ptr, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, i32, [124 x i8] } { ptr null, [124 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @rk_tdes_setkey, ptr @rk_des3_ede_cbc_encrypt, ptr @rk_des3_ede_cbc_decrypt, ptr @rk_ablk_init_tfm, ptr @rk_ablk_exit_tfm, i32 24, i32 24, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 8, i32 28, i32 7, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des3-ede-rk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.68 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.69 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, i32 1, [124 x i8] undef }, align 128
@rk_ablk_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 359, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%s:%d] Lack of data\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rk_ablk_rx\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/crypto/rockchip/rk3288_crypto_skcipher.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rk_ablk_rx._entry_ptr = internal global ptr @rk_ablk_rx._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 32]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [52 x i8] c"../drivers/crypto/rockchip/rk3288_crypto_skcipher.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 358, i32 5 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @rk_ablk_rx._entry, ptr @rk_ablk_rx._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_ablk_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_aes_setkey(ptr nocapture noundef %cipher, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %keylen, label %entry.cleanup_crit_edge [
    i32 16, label %entry.if.end_crit_edge
    i32 24, label %entry.if.end_crit_edge12
    i32 32, label %entry.if.end_crit_edge13
  ]

entry.if.end_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge12, %entry.if.end_crit_edge13
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1
  %keylen5 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1
  %1 = ptrtoint ptr %keylen5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %keylen, ptr %keylen5, align 4
  %2 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i, align 4
  %reg = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 184
  tail call void @mmiocpy(ptr noundef %add.ptr, ptr noundef %key, i32 noundef %keylen) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_aes_ecb_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %mode = getelementptr i8, ptr %1, i32 136
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mode, align 4
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 128
  %align_size.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 21
  %7 = ptrtoint ptr %align_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %align_size.i, align 4
  %sub.i = add i32 %8, -1
  %and.i = and i32 %sub.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.else.i, label %entry.rk_handle_req.exit_crit_edge

entry.rk_handle_req.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rk_handle_req.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %enqueue.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 36
  %9 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enqueue.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call.i = tail call i32 %10(ptr noundef %3, ptr noundef %base.i) #5
  br label %rk_handle_req.exit

rk_handle_req.exit:                               ; preds = %if.else.i, %entry.rk_handle_req.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.else.i ], [ -22, %entry.rk_handle_req.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_aes_ecb_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %mode = getelementptr i8, ptr %1, i32 136
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %mode, align 4
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 128
  %align_size.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 21
  %7 = ptrtoint ptr %align_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %align_size.i, align 4
  %sub.i = add i32 %8, -1
  %and.i = and i32 %sub.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.else.i, label %entry.rk_handle_req.exit_crit_edge

entry.rk_handle_req.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rk_handle_req.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %enqueue.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 36
  %9 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enqueue.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call.i = tail call i32 %10(ptr noundef %3, ptr noundef %base.i) #5
  br label %rk_handle_req.exit

rk_handle_req.exit:                               ; preds = %if.else.i, %entry.rk_handle_req.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.else.i ], [ -22, %entry.rk_handle_req.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_ablk_init_tfm(ptr nocapture noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %__crt_alg.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -256
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 128
  %4 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %__crt_ctx.i.i, align 4
  %cra_alignmask.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %cra_alignmask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cra_alignmask.i, align 4
  %add = add i32 %6, 1
  %align_size = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 21
  %7 = ptrtoint ptr %align_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %align_size, align 4
  %8 = load ptr, ptr %__crt_ctx.i.i, align 4
  %start = getelementptr inbounds %struct.rk_crypto_info, ptr %8, i32 0, i32 29
  %9 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @rk_ablk_start, ptr %start, align 4
  %10 = load ptr, ptr %__crt_ctx.i.i, align 4
  %update = getelementptr inbounds %struct.rk_crypto_info, ptr %10, i32 0, i32 30
  %11 = ptrtoint ptr %update to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @rk_ablk_rx, ptr %update, align 4
  %12 = load ptr, ptr %__crt_ctx.i.i, align 4
  %complete = getelementptr inbounds %struct.rk_crypto_info, ptr %12, i32 0, i32 31
  %13 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @rk_crypto_complete, ptr %complete, align 4
  %call9 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #5
  %14 = inttoptr i32 %call9 to ptr
  %15 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %__crt_ctx.i.i, align 4
  %addr_vir = getelementptr inbounds %struct.rk_crypto_info, ptr %16, i32 0, i32 19
  %17 = ptrtoint ptr %addr_vir to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %addr_vir, align 4
  %18 = load ptr, ptr %__crt_ctx.i.i, align 4
  %addr_vir12 = getelementptr inbounds %struct.rk_crypto_info, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %addr_vir12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %addr_vir12, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %enable_clk = getelementptr inbounds %struct.rk_crypto_info, ptr %18, i32 0, i32 32
  %21 = ptrtoint ptr %enable_clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %enable_clk, align 4
  %call15 = tail call i32 %22(ptr noundef %18) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call15, %cond.true ], [ -12, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_ablk_exit_tfm(ptr nocapture noundef readonly %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %addr_vir = getelementptr inbounds %struct.rk_crypto_info, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %addr_vir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr_vir, align 4
  %4 = ptrtoint ptr %3 to i32
  tail call void @free_pages(i32 noundef %4, i32 noundef 0) #5
  %5 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_ctx.i.i, align 4
  %disable_clk = getelementptr inbounds %struct.rk_crypto_info, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %disable_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disable_clk, align 4
  tail call void %8(ptr noundef %6) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_aes_cbc_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %mode = getelementptr i8, ptr %1, i32 136
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %mode, align 4
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 128
  %align_size.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 21
  %7 = ptrtoint ptr %align_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %align_size.i, align 4
  %sub.i = add i32 %8, -1
  %and.i = and i32 %sub.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.else.i, label %entry.rk_handle_req.exit_crit_edge

entry.rk_handle_req.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rk_handle_req.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %enqueue.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 36
  %9 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enqueue.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call.i = tail call i32 %10(ptr noundef %3, ptr noundef %base.i) #5
  br label %rk_handle_req.exit

rk_handle_req.exit:                               ; preds = %if.else.i, %entry.rk_handle_req.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.else.i ], [ -22, %entry.rk_handle_req.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_aes_cbc_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %mode = getelementptr i8, ptr %1, i32 136
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 17, ptr %mode, align 4
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 128
  %align_size.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 21
  %7 = ptrtoint ptr %align_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %align_size.i, align 4
  %sub.i = add i32 %8, -1
  %and.i = and i32 %sub.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.else.i, label %entry.rk_handle_req.exit_crit_edge

entry.rk_handle_req.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rk_handle_req.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %enqueue.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 36
  %9 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enqueue.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call.i = tail call i32 %10(ptr noundef %3, ptr noundef %base.i) #5
  br label %rk_handle_req.exit

rk_handle_req.exit:                               ; preds = %if.else.i, %entry.rk_handle_req.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.else.i ], [ -22, %entry.rk_handle_req.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_des_setkey(ptr nocapture noundef %cipher, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %tmp.i.i = alloca %struct.des_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp.i.i) #5
  %0 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 128)
  %call.i.i = call i32 @des_expand_key(ptr noundef nonnull %tmp.i.i, ptr noundef %key, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, -126
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.verify_skcipher_des_key.exit_crit_edge

entry.verify_skcipher_des_key.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %verify_skcipher_des_key.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 0, i32 2
  %1 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select = select i1 %tobool.not.i.i, i32 0, i32 -22
  br label %verify_skcipher_des_key.exit

verify_skcipher_des_key.exit:                     ; preds = %if.then.i.i, %entry.verify_skcipher_des_key.exit_crit_edge
  %err.0.i.i = phi i32 [ %call.i.i, %entry.verify_skcipher_des_key.exit_crit_edge ], [ %spec.select, %if.then.i.i ]
  %3 = call ptr @memset(ptr %tmp.i.i, i32 0, i32 128)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmp.i.i) #5, !srcloc !29
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool.not = icmp eq i32 %err.0.i.i, 0
  br i1 %tobool.not, label %if.end, label %verify_skcipher_des_key.exit.cleanup_crit_edge

verify_skcipher_des_key.exit.cleanup_crit_edge:   ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #7
  %keylen2 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1
  %4 = ptrtoint ptr %keylen2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %keylen, ptr %keylen2, align 4
  %5 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_ctx.i.i, align 4
  %reg = getelementptr inbounds %struct.rk_crypto_info, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 288
  call void @mmiocpy(ptr noundef %add.ptr, ptr noundef %key, i32 noundef %keylen) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %verify_skcipher_des_key.exit.cleanup_crit_edge
  ret i32 %err.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_des_ecb_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %mode = getelementptr i8, ptr %1, i32 136
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mode, align 4
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 128
  %align_size.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 21
  %7 = ptrtoint ptr %align_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %align_size.i, align 4
  %sub.i = add i32 %8, -1
  %and.i = and i32 %sub.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.else.i, label %entry.rk_handle_req.exit_crit_edge

entry.rk_handle_req.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rk_handle_req.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %enqueue.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 36
  %9 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enqueue.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call.i = tail call i32 %10(ptr noundef %3, ptr noundef %base.i) #5
  br label %rk_handle_req.exit

rk_handle_req.exit:                               ; preds = %if.else.i, %entry.rk_handle_req.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.else.i ], [ -22, %entry.rk_handle_req.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_des_ecb_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %mode = getelementptr i8, ptr %1, i32 136
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %mode, align 4
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 128
  %align_size.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 21
  %7 = ptrtoint ptr %align_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %align_size.i, align 4
  %sub.i = add i32 %8, -1
  %and.i = and i32 %sub.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.else.i, label %entry.rk_handle_req.exit_crit_edge

entry.rk_handle_req.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rk_handle_req.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %enqueue.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 36
  %9 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enqueue.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call.i = tail call i32 %10(ptr noundef %3, ptr noundef %base.i) #5
  br label %rk_handle_req.exit

rk_handle_req.exit:                               ; preds = %if.else.i, %entry.rk_handle_req.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.else.i ], [ -22, %entry.rk_handle_req.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_des_cbc_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %mode = getelementptr i8, ptr %1, i32 136
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %mode, align 4
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 128
  %align_size.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 21
  %7 = ptrtoint ptr %align_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %align_size.i, align 4
  %sub.i = add i32 %8, -1
  %and.i = and i32 %sub.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.else.i, label %entry.rk_handle_req.exit_crit_edge

entry.rk_handle_req.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rk_handle_req.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %enqueue.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 36
  %9 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enqueue.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call.i = tail call i32 %10(ptr noundef %3, ptr noundef %base.i) #5
  br label %rk_handle_req.exit

rk_handle_req.exit:                               ; preds = %if.else.i, %entry.rk_handle_req.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.else.i ], [ -22, %entry.rk_handle_req.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_des_cbc_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %mode = getelementptr i8, ptr %1, i32 136
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 17, ptr %mode, align 4
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 128
  %align_size.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 21
  %7 = ptrtoint ptr %align_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %align_size.i, align 4
  %sub.i = add i32 %8, -1
  %and.i = and i32 %sub.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.else.i, label %entry.rk_handle_req.exit_crit_edge

entry.rk_handle_req.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rk_handle_req.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %enqueue.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 36
  %9 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enqueue.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call.i = tail call i32 %10(ptr noundef %3, ptr noundef %base.i) #5
  br label %rk_handle_req.exit

rk_handle_req.exit:                               ; preds = %if.else.i, %entry.rk_handle_req.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.else.i ], [ -22, %entry.rk_handle_req.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_tdes_setkey(ptr nocapture noundef %cipher, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %K.i.i.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 0, i32 2
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %K.i.i.i) #5
  %2 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 3
  %5 = call ptr @memcpy(ptr %K.i.i.i, ptr %key, i32 24)
  %6 = ptrtoint ptr %K.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %K.i.i.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %2, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %14 = icmp eq i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %15 = icmp eq i32 %11, %13
  %tobool.not.i.i.i = and i1 %14, %15
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %entry
  %16 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 5
  %17 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %19)
  %22 = icmp ne i32 %9, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %21)
  %23 = icmp ne i32 %13, %21
  %tobool12.not.not.i.i.i = or i1 %22, %23
  %brmerge.i.i.i = or i1 %tobool.not.i.i, %tobool12.not.not.i.i.i
  br i1 %brmerge.i.i.i, label %lor.lhs.false.i.i.i.if.end_crit_edge, label %lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge

lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %verify_skcipher_des3_key.exit.thread

lor.lhs.false.i.i.i.if.end_crit_edge:             ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.i.i.i:                              ; preds = %entry
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.i.if.end_crit_edge, label %land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge

land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %verify_skcipher_des3_key.exit.thread

land.lhs.true.i.i.i.if.end_crit_edge:             ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

verify_skcipher_des3_key.exit.thread:             ; preds = %land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge, %lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge
  %24 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #5, !srcloc !29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #5
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.i.i.if.end_crit_edge, %lor.lhs.false.i.i.i.if.end_crit_edge
  %25 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #5, !srcloc !29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #5
  %keylen2 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1
  %26 = ptrtoint ptr %keylen2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %keylen, ptr %keylen2, align 4
  %27 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %__crt_ctx.i.i, align 4
  %reg = getelementptr inbounds %struct.rk_crypto_info, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 288
  call void @mmiocpy(ptr noundef %add.ptr, ptr noundef %key, i32 noundef %keylen) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %verify_skcipher_des3_key.exit.thread
  %ret.0.i.i.i11 = phi i32 [ -126, %verify_skcipher_des3_key.exit.thread ], [ 0, %if.end ]
  ret i32 %ret.0.i.i.i11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_des3_ede_ecb_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %mode = getelementptr i8, ptr %1, i32 136
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %mode, align 4
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 128
  %align_size.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 21
  %7 = ptrtoint ptr %align_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %align_size.i, align 4
  %sub.i = add i32 %8, -1
  %and.i = and i32 %sub.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.else.i, label %entry.rk_handle_req.exit_crit_edge

entry.rk_handle_req.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rk_handle_req.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %enqueue.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 36
  %9 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enqueue.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call.i = tail call i32 %10(ptr noundef %3, ptr noundef %base.i) #5
  br label %rk_handle_req.exit

rk_handle_req.exit:                               ; preds = %if.else.i, %entry.rk_handle_req.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.else.i ], [ -22, %entry.rk_handle_req.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_des3_ede_ecb_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %mode = getelementptr i8, ptr %1, i32 136
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5, ptr %mode, align 4
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 128
  %align_size.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 21
  %7 = ptrtoint ptr %align_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %align_size.i, align 4
  %sub.i = add i32 %8, -1
  %and.i = and i32 %sub.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.else.i, label %entry.rk_handle_req.exit_crit_edge

entry.rk_handle_req.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rk_handle_req.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %enqueue.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 36
  %9 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enqueue.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call.i = tail call i32 %10(ptr noundef %3, ptr noundef %base.i) #5
  br label %rk_handle_req.exit

rk_handle_req.exit:                               ; preds = %if.else.i, %entry.rk_handle_req.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.else.i ], [ -22, %entry.rk_handle_req.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_des3_ede_cbc_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %mode = getelementptr i8, ptr %1, i32 136
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 20, ptr %mode, align 4
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 128
  %align_size.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 21
  %7 = ptrtoint ptr %align_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %align_size.i, align 4
  %sub.i = add i32 %8, -1
  %and.i = and i32 %sub.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.else.i, label %entry.rk_handle_req.exit_crit_edge

entry.rk_handle_req.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rk_handle_req.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %enqueue.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 36
  %9 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enqueue.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call.i = tail call i32 %10(ptr noundef %3, ptr noundef %base.i) #5
  br label %rk_handle_req.exit

rk_handle_req.exit:                               ; preds = %if.else.i, %entry.rk_handle_req.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.else.i ], [ -22, %entry.rk_handle_req.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_des3_ede_cbc_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %mode = getelementptr i8, ptr %1, i32 136
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 21, ptr %mode, align 4
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 128
  %align_size.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 21
  %7 = ptrtoint ptr %align_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %align_size.i, align 4
  %sub.i = add i32 %8, -1
  %and.i = and i32 %sub.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.else.i, label %entry.rk_handle_req.exit_crit_edge

entry.rk_handle_req.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rk_handle_req.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %enqueue.i = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 36
  %9 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enqueue.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call.i = tail call i32 %10(ptr noundef %3, ptr noundef %base.i) #5
  br label %rk_handle_req.exit

rk_handle_req.exit:                               ; preds = %if.else.i, %entry.rk_handle_req.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.else.i ], [ -22, %entry.rk_handle_req.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_ablk_start(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %async_req = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %async_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async_req, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 128
  %left_bytes = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %left_bytes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %left_bytes, align 4
  %5 = load i32, ptr %add.ptr.i, align 128
  %total = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 24
  %6 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %total, align 4
  %src = getelementptr i8, ptr %1, i32 -8
  %7 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src, align 8
  %sg_src = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 14
  %9 = ptrtoint ptr %sg_src to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %sg_src, align 4
  %10 = load ptr, ptr %src, align 8
  %first = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 17
  %11 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %first, align 4
  %12 = load ptr, ptr %src, align 8
  %call4 = tail call i32 @sg_nents(ptr noundef %12) #5
  %src_nents = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 22
  %13 = ptrtoint ptr %src_nents to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call4, ptr %src_nents, align 4
  %dst = getelementptr i8, ptr %1, i32 -4
  %14 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dst, align 4
  %sg_dst = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 15
  %16 = ptrtoint ptr %sg_dst to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %sg_dst, align 4
  %17 = load ptr, ptr %dst, align 4
  %call6 = tail call i32 @sg_nents(ptr noundef %17) #5
  %dst_nents = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 23
  %18 = ptrtoint ptr %dst_nents to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call6, ptr %dst_nents, align 4
  %aligned = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 20
  %19 = ptrtoint ptr %aligned to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %aligned, align 4
  %lock = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 13
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %20 = ptrtoint ptr %async_req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %async_req, align 4
  %tfm.i.i = getelementptr i8, ptr %21, i32 16
  %22 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i = getelementptr %struct.crypto_tfm, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cra_blocksize.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %25, i32 -100
  %28 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ivsize.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %27)
  %cmp.i = icmp eq i32 %27, 8
  %mode.i = getelementptr i8, ptr %23, i32 136
  %30 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mode.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %31, 386
  %32 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i, ptr %mode.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %reg.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 6
  %34 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %35, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %33) #5, !srcloc !30
  br label %rk_ablk_hw_init.exit

if.else.i:                                        ; preds = %entry
  %or10.i = or i32 %31, 1602
  %36 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or10.i, ptr %mode.i, align 4
  %keylen.i = getelementptr i8, ptr %23, i32 132
  %37 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %keylen.i, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %38, label %if.else.i.if.end21.i_crit_edge [
    i32 24, label %if.else.i.if.end21.sink.split.i_crit_edge
    i32 32, label %if.then18.i
  ]

if.else.i.if.end21.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.sink.split.i

if.else.i.if.end21.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.then18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.sink.split.i

if.end21.sink.split.i:                            ; preds = %if.then18.i, %if.else.i.if.end21.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1610, %if.then18.i ], [ 1606, %if.else.i.if.end21.sink.split.i_crit_edge ]
  %or20.i = or i32 %.sink.i, %31
  %40 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or20.i, ptr %mode.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end21.sink.split.i, %if.else.i.if.end21.i_crit_edge
  %41 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mode.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #5
  %reg23.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 6
  %44 = ptrtoint ptr %reg23.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg23.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %45, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %43) #5, !srcloc !30
  br label %rk_ablk_hw_init.exit

rk_ablk_hw_init.exit:                             ; preds = %if.end21.i, %if.then.i
  %reg23.sink.i = phi ptr [ %reg23.i, %if.end21.i ], [ %reg.i, %if.then.i ]
  %.sink55.i = phi i32 [ 168, %if.end21.i ], [ 280, %if.then.i ]
  %conf_reg.0.i = phi i32 [ 402653184, %if.end21.i ], [ 469762048, %if.then.i ]
  %46 = ptrtoint ptr %reg23.sink.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg23.sink.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %47, i32 %.sink55.i
  %iv27.i = getelementptr i8, ptr %21, i32 -12
  %48 = ptrtoint ptr %iv27.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iv27.i, align 4
  tail call void @mmiocpy(ptr noundef %add.ptr26.i, ptr noundef %49, i32 noundef %29) #5
  %reg30.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 6
  %50 = ptrtoint ptr %reg30.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg30.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %51, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %conf_reg.0.i) #5, !srcloc !30
  %52 = ptrtoint ptr %reg30.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg30.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %53, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 50331648) #5, !srcloc !30
  %call12 = tail call fastcc i32 @rk_set_data_start(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #5
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_ablk_rx(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %async_req = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %async_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async_req, align 4
  %unload_data = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 35
  %2 = ptrtoint ptr %unload_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unload_data, align 4
  tail call void %3(ptr noundef %dev) #5
  %aligned = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %aligned to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %aligned, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %entry
  %dst = getelementptr i8, ptr %1, i32 -4
  %6 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst, align 4
  %dst_nents = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 23
  %8 = ptrtoint ptr %dst_nents to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dst_nents, align 4
  %addr_vir = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 19
  %10 = ptrtoint ptr %addr_vir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr_vir, align 4
  %count = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 25
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count, align 4
  %total = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 24
  %14 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %total, align 4
  %left_bytes = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 18
  %16 = ptrtoint ptr %left_bytes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %left_bytes, align 4
  %18 = add i32 %13, %17
  %sub2 = sub i32 %15, %18
  %call3 = tail call i32 @sg_pcopy_from_buffer(ptr noundef %7, i32 noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef %sub2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.out_rx_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then.out_rx_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_rx

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %left_bytes7 = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 18
  %19 = ptrtoint ptr %left_bytes7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %left_bytes7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool8.not = icmp eq i32 %20, 0
  %21 = ptrtoint ptr %async_req to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %async_req, align 4
  %tfm.i.i52 = getelementptr i8, ptr %22, i32 16
  %23 = ptrtoint ptr %tfm.i.i52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tfm.i.i52, align 16
  %__crt_alg.i.i.i53 = getelementptr i8, ptr %24, i32 12
  %25 = ptrtoint ptr %__crt_alg.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %__crt_alg.i.i.i53, align 4
  %ivsize.i.i54 = getelementptr i8, ptr %26, i32 -100
  %27 = ptrtoint ptr %ivsize.i.i54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ivsize.i.i54, align 4
  %mode.i55 = getelementptr i8, ptr %24, i32 136
  %29 = ptrtoint ptr %mode.i55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mode.i55, align 4
  %and.i56 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool.not.i57 = icmp eq i32 %and.i56, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end6
  br i1 %tobool.not.i57, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %iv.i = getelementptr i8, ptr %24, i32 140
  br label %if.end.i

if.else.i:                                        ; preds = %if.then9
  %sg_dst.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 15
  %31 = ptrtoint ptr %sg_dst.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sg_dst.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %and.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !31

do.body2.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #5, !srcloc !32
  unreachable

sg_page.exit.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i = and i32 %34, -4
  %35 = inttoptr i32 %and.i.i to ptr
  %call5.i = tail call ptr @page_address(ptr noundef %35) #5
  %36 = ptrtoint ptr %sg_dst.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sg_dst.i, align 4
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %call5.i, i32 %39
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %37, i32 0, i32 2
  %40 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i49, i32 %41
  %idx.neg.i = sub i32 0, %28
  %add.ptr9.i = getelementptr i8, ptr %add.ptr8.i, i32 %idx.neg.i
  br label %if.end.i

if.end.i:                                         ; preds = %sg_page.exit.i, %if.then.i
  %new_iv.0.i = phi ptr [ %iv.i, %if.then.i ], [ %add.ptr9.i, %sg_page.exit.i ]
  %42 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %28, label %if.end.i.rk_update_iv.exit_crit_edge [
    i32 8, label %if.end.i.if.end18.sink.split.i_crit_edge
    i32 16, label %if.then14.i
  ]

if.end.i.if.end18.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.sink.split.i

if.end.i.rk_update_iv.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rk_update_iv.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.sink.split.i

if.end18.sink.split.i:                            ; preds = %if.then14.i, %if.end.i.if.end18.sink.split.i_crit_edge
  %.sink32.i = phi i32 [ 168, %if.then14.i ], [ 280, %if.end.i.if.end18.sink.split.i_crit_edge ]
  %reg15.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 6
  %43 = ptrtoint ptr %reg15.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg15.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %44, i32 %.sink32.i
  tail call void @mmiocpy(ptr noundef %add.ptr16.i, ptr noundef %new_iv.0.i, i32 noundef %28) #5
  br label %rk_update_iv.exit

rk_update_iv.exit:                                ; preds = %if.end18.sink.split.i, %if.end.i.rk_update_iv.exit_crit_edge
  %45 = ptrtoint ptr %aligned to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %aligned, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool11.not = icmp eq i32 %46, 0
  br i1 %tobool11.not, label %rk_update_iv.exit.if.end22_crit_edge, label %if.then12

rk_update_iv.exit.if.end22_crit_edge:             ; preds = %rk_update_iv.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then12:                                        ; preds = %rk_update_iv.exit
  %sg_src = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 14
  %47 = ptrtoint ptr %sg_src to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sg_src, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %and.i50 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50)
  %tobool.i.not = icmp eq i32 %and.i50, 0
  br i1 %tobool.i.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 359) #8
  br label %out_rx

if.end16:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %call18 = tail call ptr @sg_next(ptr noundef %48) #5
  %53 = ptrtoint ptr %sg_src to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call18, ptr %sg_src, align 4
  %sg_dst = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 15
  %54 = ptrtoint ptr %sg_dst to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sg_dst, align 4
  %call20 = tail call ptr @sg_next(ptr noundef %55) #5
  %56 = ptrtoint ptr %sg_dst to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call20, ptr %sg_dst, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end16, %rk_update_iv.exit.if.end22_crit_edge
  %call23 = tail call fastcc i32 @rk_set_data_start(ptr noundef %dev)
  br label %out_rx

if.else:                                          ; preds = %if.end6
  br i1 %tobool.not.i57, label %if.then.i58, label %if.else.rk_iv_copyback.exit_crit_edge

if.else.rk_iv_copyback.exit_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %rk_iv_copyback.exit

if.then.i58:                                      ; preds = %if.else
  %57 = ptrtoint ptr %aligned to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %aligned, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool4.not.i = icmp eq i32 %58, 0
  br i1 %tobool4.not.i, label %if.else.i63, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i58
  %sg_dst.i59 = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 15
  %59 = ptrtoint ptr %sg_dst.i59 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sg_dst.i59, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %and.i.i.i.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !31

do.body2.i.i.i:                                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #5, !srcloc !32
  unreachable

sg_virt.exit.i:                                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  %iv.i60 = getelementptr i8, ptr %22, i32 -12
  %63 = ptrtoint ptr %iv.i60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %iv.i60, align 4
  %and.i.i.i61 = and i32 %62, -4
  %65 = inttoptr i32 %and.i.i.i61 to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %65) #5
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %60, i32 0, i32 1
  %66 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %call1.i.i, i32 %67
  %68 = ptrtoint ptr %sg_dst.i59 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sg_dst.i59, align 4
  %length.i62 = getelementptr inbounds %struct.scatterlist, ptr %69, i32 0, i32 2
  br label %if.end13.sink.split.i

if.else.i63:                                      ; preds = %if.then.i58
  call void @__sanitizer_cov_trace_pc() #7
  %iv9.i = getelementptr i8, ptr %22, i32 -12
  %70 = ptrtoint ptr %iv9.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %iv9.i, align 4
  %addr_vir.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 19
  %72 = ptrtoint ptr %addr_vir.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %addr_vir.i, align 4
  %count.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 25
  br label %if.end13.sink.split.i

if.end13.sink.split.i:                            ; preds = %if.else.i63, %sg_virt.exit.i
  %length.sink.i = phi ptr [ %length.i62, %sg_virt.exit.i ], [ %count.i, %if.else.i63 ]
  %add.ptr.i25.sink.i = phi ptr [ %add.ptr.i25.i, %sg_virt.exit.i ], [ %73, %if.else.i63 ]
  %.sink.i = phi ptr [ %64, %sg_virt.exit.i ], [ %71, %if.else.i63 ]
  %74 = ptrtoint ptr %length.sink.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %length.sink.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %add.ptr.i25.sink.i, i32 %75
  %idx.neg.i65 = sub i32 0, %28
  %add.ptr8.i66 = getelementptr i8, ptr %add.ptr.i64, i32 %idx.neg.i65
  %76 = call ptr @memcpy(ptr %.sink.i, ptr %add.ptr8.i66, i32 %28)
  br label %rk_iv_copyback.exit

rk_iv_copyback.exit:                              ; preds = %if.end13.sink.split.i, %if.else.rk_iv_copyback.exit_crit_edge
  %complete = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 31
  %77 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %complete, align 4
  %79 = ptrtoint ptr %async_req to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %async_req, align 4
  tail call void %78(ptr noundef %80, i32 noundef 0) #5
  %state.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 9, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i67 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i67, label %if.then.i68, label %rk_iv_copyback.exit.out_rx_crit_edge

rk_iv_copyback.exit.out_rx_crit_edge:             ; preds = %rk_iv_copyback.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_rx

if.then.i68:                                      ; preds = %rk_iv_copyback.exit
  call void @__sanitizer_cov_trace_pc() #7
  %queue_task = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 9
  tail call void @__tasklet_schedule(ptr noundef %queue_task) #5
  br label %out_rx

out_rx:                                           ; preds = %if.then.i68, %rk_iv_copyback.exit.out_rx_crit_edge, %if.end22, %do.end, %if.then.out_rx_crit_edge
  %err.0 = phi i32 [ -12, %do.end ], [ %call23, %if.end22 ], [ -22, %if.then.out_rx_crit_edge ], [ 0, %rk_iv_copyback.exit.out_rx_crit_edge ], [ 0, %if.then.i68 ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_crypto_complete(ptr noundef %base, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %complete, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %base, i32 noundef %err) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rk_set_data_start(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %async_req = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %async_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async_req, align 4
  %tfm.i = getelementptr i8, ptr %1, i32 16
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %3, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %5, i32 -100
  %6 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ivsize.i, align 4
  %sg_src = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 14
  %8 = ptrtoint ptr %sg_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg_src, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !31

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #5, !srcloc !32
  unreachable

sg_page.exit:                                     ; preds = %entry
  %and.i = and i32 %11, -4
  %12 = inttoptr i32 %and.i to ptr
  %call5 = tail call ptr @page_address(ptr noundef %12) #5
  %mode = getelementptr i8, ptr %3, i32 136
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sg_page.exit.if.end_crit_edge, label %if.then

sg_page.exit.if.end_crit_edge:                    ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %sg_src to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sg_src, align 4
  %offset = getelementptr inbounds %struct.scatterlist, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %call5, i32 %18
  %length = getelementptr inbounds %struct.scatterlist, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length, align 4
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 %20
  %idx.neg = sub i32 0, %7
  %add.ptr9 = getelementptr i8, ptr %add.ptr8, i32 %idx.neg
  %iv = getelementptr i8, ptr %3, i32 140
  %21 = call ptr @memcpy(ptr %iv, ptr %add.ptr9, i32 %7)
  %first = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 17
  %22 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %first, align 4
  %src_nents = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 22
  %24 = ptrtoint ptr %src_nents to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src_nents, align 4
  %iv10 = getelementptr i8, ptr %1, i32 -12
  %26 = ptrtoint ptr %iv10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iv10, align 4
  %total = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 24
  %28 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %total, align 4
  %sub = sub i32 %29, %7
  %call11 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %23, i32 noundef %25, ptr noundef %27, i32 noundef %7, i32 noundef %sub) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %sg_page.exit.if.end_crit_edge
  %load_data = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 34
  %30 = ptrtoint ptr %load_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %load_data, align 4
  %32 = ptrtoint ptr %sg_src to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sg_src, align 4
  %sg_dst = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 15
  %34 = ptrtoint ptr %sg_dst to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sg_dst, align 4
  %call13 = tail call i32 %31(ptr noundef %dev, ptr noundef %33, ptr noundef %35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %addr_in.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 26
  %36 = ptrtoint ptr %addr_in.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr_in.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #5
  %reg.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 6
  %39 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %40, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %38) #5, !srcloc !30
  %count.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 25
  %41 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count.i, align 4
  %div13.i = lshr i32 %42, 2
  %43 = tail call i32 @llvm.bswap.i32(i32 %div13.i) #5
  %44 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %45, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %43) #5, !srcloc !30
  %addr_out.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 27
  %46 = ptrtoint ptr %addr_out.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr_out.i, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #5
  %49 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %50, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %48) #5, !srcloc !30
  %51 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %52, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 67109888) #5, !srcloc !30
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end.if.end16_crit_edge
  ret i32 %call13
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @rk_ecb_aes_alg, !1, !"rk_ecb_aes_alg", i1 false, i1 false}
!1 = !{!"../drivers/crypto/rockchip/rk3288_crypto_skcipher.c", i32 403, i32 22}
!2 = !{ptr @rk_cbc_aes_alg, !3, !"rk_cbc_aes_alg", i1 false, i1 false}
!3 = !{!"../drivers/crypto/rockchip/rk3288_crypto_skcipher.c", i32 425, i32 22}
!4 = !{ptr @rk_ecb_des_alg, !5, !"rk_ecb_des_alg", i1 false, i1 false}
!5 = !{!"../drivers/crypto/rockchip/rk3288_crypto_skcipher.c", i32 448, i32 22}
!6 = !{ptr @rk_cbc_des_alg, !7, !"rk_cbc_des_alg", i1 false, i1 false}
!7 = !{!"../drivers/crypto/rockchip/rk3288_crypto_skcipher.c", i32 470, i32 22}
!8 = !{ptr @rk_ecb_des3_ede_alg, !9, !"rk_ecb_des3_ede_alg", i1 false, i1 false}
!9 = !{!"../drivers/crypto/rockchip/rk3288_crypto_skcipher.c", i32 493, i32 22}
!10 = !{ptr @rk_cbc_des3_ede_alg, !11, !"rk_cbc_des3_ede_alg", i1 false, i1 false}
!11 = !{!"../drivers/crypto/rockchip/rk3288_crypto_skcipher.c", i32 516, i32 22}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/rockchip/rk3288_crypto_skcipher.c", i32 358, i32 5}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rk_ablk_rx._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @rk_ablk_rx._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 2149251642}
!30 = !{i64 5389344}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2154182899, i64 2154183391, i64 2154182936, i64 2154182992, i64 2154183026, i64 2154183050, i64 2154183091, i64 2154183112, i64 2154183140, i64 2154183174}
