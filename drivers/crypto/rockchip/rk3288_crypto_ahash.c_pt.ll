; ModuleID = '/llk/IR_all_yes/drivers/crypto/rockchip/rk3288_crypto_ahash.c_pt.bc'
source_filename = "../drivers/crypto/rockchip/rk3288_crypto_ahash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rk_crypto_tmp = type { ptr, [124 x i8], %union.anon.76, i32, [124 x i8] }
%union.anon.76 = type { %struct.ahash_alg }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
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

@rk_ahash_sha1 = dso_local local_unnamed_addr global %struct.rk_crypto_tmp { ptr null, [124 x i8] undef, %union.anon.76 { %struct.ahash_alg { ptr @rk_ahash_init, ptr @rk_ahash_update, ptr @rk_ahash_final, ptr @rk_ahash_finup, ptr @rk_ahash_digest, ptr @rk_ahash_export, ptr @rk_ahash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 96, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 384, i32 64, i32 8, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rk-sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.68 zeroinitializer, ptr @rk_cra_hash_init, ptr @rk_cra_hash_exit, ptr null, ptr null, %union.anon.69 zeroinitializer, [120 x i8] undef } } } }, i32 0, [124 x i8] undef }, align 128
@rk_ahash_sha256 = dso_local local_unnamed_addr global %struct.rk_crypto_tmp { ptr null, [124 x i8] undef, %union.anon.76 { %struct.ahash_alg { ptr @rk_ahash_init, ptr @rk_ahash_update, ptr @rk_ahash_final, ptr @rk_ahash_finup, ptr @rk_ahash_digest, ptr @rk_ahash_export, ptr @rk_ahash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 104, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 384, i32 64, i32 8, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rk-sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.68 zeroinitializer, ptr @rk_cra_hash_init, ptr @rk_cra_hash_exit, ptr null, ptr null, %union.anon.69 zeroinitializer, [120 x i8] undef } } } }, i32 0, [124 x i8] undef }, align 128
@rk_ahash_md5 = dso_local local_unnamed_addr global %struct.rk_crypto_tmp { ptr null, [124 x i8] undef, %union.anon.76 { %struct.ahash_alg { ptr @rk_ahash_init, ptr @rk_ahash_update, ptr @rk_ahash_final, ptr @rk_ahash_finup, ptr @rk_ahash_digest, ptr @rk_ahash_export, ptr @rk_ahash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 88, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 384, i32 64, i32 8, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rk-md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.68 zeroinitializer, ptr @rk_cra_hash_init, ptr @rk_cra_hash_exit, ptr null, ptr null, %union.anon.69 zeroinitializer, [120 x i8] undef } } } }, i32 0, [124 x i8] undef }, align 128
@sha1_zero_message_hash = external dso_local local_unnamed_addr constant [20 x i8], align 1
@sha256_zero_message_hash = external dso_local local_unnamed_addr constant [32 x i8], align 1
@md5_zero_message_hash = external dso_local local_unnamed_addr constant [16 x i8], align 1
@rk_cra_hash_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 286, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to kmalloc for addr_vir\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rk_cra_hash_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/crypto/rockchip/rk3288_crypto_ahash.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rk_cra_hash_init._entry_ptr = internal global ptr @rk_cra_hash_init._entry, section ".printk_index", align 4
@rk_cra_hash_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 297, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not load fallback driver.\0A\00", [63 x i8] zeroinitializer }, align 32
@rk_cra_hash_init._entry_ptr.7 = internal global ptr @rk_cra_hash_init._entry.5, section ".printk_index", align 4
@rk_ahash_crypto_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 241, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%s:%d], Lack of data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rk_ahash_crypto_rx\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rk_ahash_crypto_rx._entry_ptr = internal global ptr @rk_ahash_crypto_rx._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 20, i64 32]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 20, i64 32]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 286, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 297, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [49 x i8] c"../drivers/crypto/rockchip/rk3288_crypto_ahash.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 240, i32 5 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @rk_ahash_crypto_rx._entry, ptr @rk_ahash_crypto_rx._entry_ptr, ptr @rk_cra_hash_init._entry, ptr @rk_cra_hash_init._entry.5, ptr @rk_cra_hash_init._entry_ptr, ptr @rk_cra_hash_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_cra_hash_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_cra_hash_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_ahash_crypto_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_ahash_init(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback_tfm = getelementptr i8, ptr %1, i32 132
  %2 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %flags5, align 4
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i.i, align 128
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.crypto_ahash_init.exit_crit_edge

entry.crypto_ahash_init.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %crypto_ahash_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 128
  %call2.i = tail call i32 %11(ptr noundef %__ctx.i) #4
  br label %crypto_ahash_init.exit

crypto_ahash_init.exit:                           ; preds = %if.end.i, %entry.crypto_ahash_init.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ -126, %entry.crypto_ahash_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_ahash_update(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback_tfm = getelementptr i8, ptr %1, i32 132
  %2 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %flags5, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes, align 8
  %nbytes7 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 1
  %10 = ptrtoint ptr %nbytes7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nbytes7, align 8
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %src, align 4
  %src9 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %13 = ptrtoint ptr %src9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %src9, align 4
  %__crt_alg.i = getelementptr %struct.crypto_ahash, ptr %3, i32 0, i32 10, i32 3
  %14 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_alg.i, align 4
  tail call void @crypto_stats_get(ptr noundef %15) #4
  %16 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tfm1.i, align 16
  %update.i = getelementptr i8, ptr %17, i32 -124
  %18 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %update.i, align 4
  %call3.i = tail call i32 %19(ptr noundef %__ctx.i) #4
  tail call void @crypto_stats_ahash_update(i32 noundef %9, i32 noundef %call3.i, ptr noundef %15) #4
  ret i32 %call3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_ahash_final(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback_tfm = getelementptr i8, ptr %1, i32 132
  %2 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %flags5, align 4
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %8 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %result, align 32
  %result7 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %10 = ptrtoint ptr %result7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %result7, align 32
  %call9 = tail call i32 @crypto_ahash_final(ptr noundef %__ctx.i) #4
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_ahash_finup(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback_tfm = getelementptr i8, ptr %1, i32 132
  %2 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %flags5, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes, align 8
  %nbytes7 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 1
  %10 = ptrtoint ptr %nbytes7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nbytes7, align 8
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %src, align 4
  %src9 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %13 = ptrtoint ptr %src9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %src9, align 4
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %14 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %result, align 32
  %result11 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %16 = ptrtoint ptr %result11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %result11, align 32
  %call13 = tail call i32 @crypto_ahash_finup(ptr noundef %__ctx.i) #4
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_ahash_digest(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm, align 16
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %5, i32 -128
  %6 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.then.cleanup_crit_edge [
    i32 20, label %sw.bb.i
    i32 32, label %sw.bb2.i
    i32 16, label %sw.bb4.i
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %result.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %result.i, align 32
  %11 = call ptr @memcpy(ptr %10, ptr @sha1_zero_message_hash, i32 20)
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %12 = ptrtoint ptr %result3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %result3.i, align 32
  %14 = call ptr @memcpy(ptr %13, ptr @sha256_zero_message_hash, i32 32)
  br label %cleanup

sw.bb4.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %result5.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %15 = ptrtoint ptr %result5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %result5.i, align 32
  %17 = call ptr @memcpy(ptr %16, ptr @md5_zero_message_hash, i32 16)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__crt_ctx.i, align 4
  %enqueue = getelementptr inbounds %struct.rk_crypto_info, ptr %19, i32 0, i32 36
  %20 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %enqueue, align 4
  %call4 = tail call i32 %21(ptr noundef %19, ptr noundef %req) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %sw.bb4.i, %sw.bb2.i, %sw.bb.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.else ], [ -22, %if.then.cleanup_crit_edge ], [ 0, %sw.bb4.i ], [ 0, %sw.bb2.i ], [ 0, %sw.bb.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_ahash_export(ptr noundef %req, ptr noundef %out) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback_tfm = getelementptr i8, ptr %1, i32 132
  %2 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %flags5, align 4
  %export.i = getelementptr %struct.crypto_ahash, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %export.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %export.i, align 4
  %call1.i = tail call i32 %9(ptr noundef %__ctx.i, ptr noundef %out) #4
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_ahash_import(ptr noundef %req, ptr noundef %in) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback_tfm = getelementptr i8, ptr %1, i32 132
  %2 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %flags5, align 4
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i.i, align 128
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.crypto_ahash_import.exit_crit_edge

entry.crypto_ahash_import.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %crypto_ahash_import.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %import.i = getelementptr %struct.crypto_ahash, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %import.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %import.i, align 8
  %call2.i = tail call i32 %11(ptr noundef %__ctx.i, ptr noundef %in) #4
  br label %crypto_ahash_import.exit

crypto_ahash_import.exit:                         ; preds = %if.end.i, %entry.crypto_ahash_import.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ -126, %entry.crypto_ahash_import.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_cra_hash_init(ptr nocapture noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -384
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 128
  %4 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %__crt_ctx.i, align 4
  %call4 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #4
  %5 = inttoptr i32 %call4 to ptr
  %6 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_ctx.i, align 4
  %addr_vir = getelementptr inbounds %struct.rk_crypto_info, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %addr_vir to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %addr_vir, align 4
  %9 = load ptr, ptr %__crt_ctx.i, align 4
  %addr_vir7 = getelementptr inbounds %struct.rk_crypto_info, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %addr_vir7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr_vir7, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %start = getelementptr inbounds %struct.rk_crypto_info, ptr %9, i32 0, i32 29
  %14 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @rk_ahash_start, ptr %start, align 4
  %15 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %__crt_ctx.i, align 4
  %update = getelementptr inbounds %struct.rk_crypto_info, ptr %16, i32 0, i32 30
  %17 = ptrtoint ptr %update to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rk_ahash_crypto_rx, ptr %update, align 4
  %18 = load ptr, ptr %__crt_ctx.i, align 4
  %complete = getelementptr inbounds %struct.rk_crypto_info, ptr %18, i32 0, i32 31
  %19 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @rk_ahash_crypto_complete, ptr %complete, align 4
  %call13 = tail call ptr @crypto_alloc_ahash(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 256) #4
  %fallback_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %20 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call13, ptr %fallback_tfm, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end19, label %if.end24

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %__crt_ctx.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.6) #7
  %25 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fallback_tfm, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %reqsize.i = getelementptr inbounds %struct.crypto_ahash, ptr %call13, i32 0, i32 8
  %28 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reqsize.i, align 32
  %add = add i32 %29, 256
  %reqsize1.i = getelementptr i8, ptr %tfm, i32 -96
  %30 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %reqsize1.i, align 32
  %31 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__crt_ctx.i, align 4
  %enable_clk = getelementptr inbounds %struct.rk_crypto_info, ptr %32, i32 0, i32 32
  %33 = ptrtoint ptr %enable_clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %enable_clk, align 4
  %call30 = tail call i32 %34(ptr noundef %32) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end19, %do.end
  %retval.0 = phi i32 [ %27, %do.end19 ], [ %call30, %if.end24 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_cra_hash_exit(ptr nocapture noundef readonly %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i, align 4
  %addr_vir = getelementptr inbounds %struct.rk_crypto_info, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %addr_vir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr_vir, align 4
  %4 = ptrtoint ptr %3 to i32
  tail call void @free_pages(i32 noundef %4, i32 noundef 0) #4
  %5 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_ctx.i, align 4
  %disable_clk = getelementptr inbounds %struct.rk_crypto_info, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %disable_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disable_clk, align 4
  tail call void %8(ptr noundef %6) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_ahash_update(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_final(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_finup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_ahash_start(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %async_req = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %async_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async_req, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbytes, align 8
  %total = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 24
  %4 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %total, align 4
  %5 = load i32, ptr %nbytes, align 8
  %left_bytes = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %left_bytes to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %left_bytes, align 4
  %aligned = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 20
  %7 = ptrtoint ptr %aligned to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %aligned, align 4
  %align_size = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 21
  %8 = ptrtoint ptr %align_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %align_size, align 4
  %sg_dst = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 15
  %9 = ptrtoint ptr %sg_dst to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %sg_dst, align 4
  %src = getelementptr inbounds %struct.ahash_request, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src, align 4
  %sg_src = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 14
  %12 = ptrtoint ptr %sg_src to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %sg_src, align 4
  %13 = load ptr, ptr %src, align 4
  %first = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 17
  %14 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %first, align 4
  %15 = load ptr, ptr %src, align 4
  %call4 = tail call i32 @sg_nents(ptr noundef %15) #4
  %src_nents = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 22
  %16 = ptrtoint ptr %src_nents to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call4, ptr %src_nents, align 4
  %mode = getelementptr inbounds %struct.ahash_request, ptr %1, i32 2
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %mode, align 128
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %19, i32 12
  %20 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 -128
  %22 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i.i, align 128
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %23, label %entry.cleanup_crit_edge [
    i32 20, label %entry.sw.epilog_crit_edge
    i32 32, label %entry.sw.epilog.sink.split_crit_edge
    i32 16, label %sw.bb11
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb11, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 1, %sw.bb11 ], [ 2, %entry.sw.epilog.sink.split_crit_edge ]
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %mode, align 128
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %26 = ptrtoint ptr %async_req to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %async_req, align 4
  %reg.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 6
  %28 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !33
  %31 = or i32 %30, 1073807359
  %32 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %31) #4, !srcloc !34
  %34 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %35, i32 8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #4, !srcloc !33
  %37 = and i32 %36, -1073807360
  %38 = or i32 %37, 65535
  %39 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %38) #4, !srcloc !34
  %41 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %42, i32 396
  tail call void @mmioset(ptr noundef %add.ptr15.i, i32 noundef 0, i32 noundef 32) #4
  %43 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %44, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 201326592) #4, !srcloc !34
  %45 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 201326592) #4, !srcloc !34
  %mode.i = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2
  %47 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mode.i, align 128
  %or20.i = or i32 %48, 8
  %49 = tail call i32 @llvm.bswap.i32(i32 %or20.i) #4
  %50 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %51, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %49) #4, !srcloc !34
  %52 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %53, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 939524096) #4, !srcloc !34
  %54 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %total, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #4
  %57 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %58, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %56) #4, !srcloc !34
  %load_data.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 34
  %59 = ptrtoint ptr %load_data.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %load_data.i, align 4
  %61 = ptrtoint ptr %sg_src to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sg_src, align 4
  %call.i = tail call i32 %60(ptr noundef %dev, ptr noundef %62, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %addr_in.i.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 26
  %63 = ptrtoint ptr %addr_in.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %addr_in.i.i, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #4
  %66 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %67, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i35, i32 %65) #4, !srcloc !34
  %count.i.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 25
  %68 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %count.i.i, align 4
  %add.i.i = add i32 %69, 3
  %div9.i.i = lshr i32 %add.i.i, 2
  %70 = tail call i32 @llvm.bswap.i32(i32 %div9.i.i) #4
  %71 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %72, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %70) #4, !srcloc !34
  %73 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %74, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 134219776) #4, !srcloc !34
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_ahash_crypto_rx(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %async_req = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %async_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async_req, align 4
  %unload_data = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 35
  %2 = ptrtoint ptr %unload_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unload_data, align 4
  tail call void %3(ptr noundef %dev) #4
  %left_bytes = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %left_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %left_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  %reg = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 6
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %add.ptr38 = getelementptr i8, ptr %7, i32 388
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #4, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not39 = icmp eq i32 %8, 0
  br i1 %tobool12.not39, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

if.then:                                          ; preds = %entry
  %aligned = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 20
  %9 = ptrtoint ptr %aligned to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %aligned, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not = icmp eq i32 %10, 0
  br i1 %tobool1.not, label %if.then.if.end9_crit_edge, label %if.then2

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then2:                                         ; preds = %if.then
  %sg_src = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 14
  %11 = ptrtoint ptr %sg_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sg_src, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 241) #7
  br label %out_rx

if.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call ptr @sg_next(ptr noundef %12) #4
  %17 = ptrtoint ptr %sg_src to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7, ptr %sg_src, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then.if.end9_crit_edge
  %load_data.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 34
  %18 = ptrtoint ptr %load_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %load_data.i, align 4
  %sg_src.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 14
  %20 = ptrtoint ptr %sg_src.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sg_src.i, align 4
  %call.i = tail call i32 %19(ptr noundef %dev, ptr noundef %21, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end9.out_rx_crit_edge

if.end9.out_rx_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_rx

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %addr_in.i.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 26
  %22 = ptrtoint ptr %addr_in.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr_in.i.i, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #4
  %reg.i.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 6
  %25 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %24) #4, !srcloc !34
  %count.i.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 25
  %27 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count.i.i, align 4
  %add.i.i = add i32 %28, 3
  %div9.i.i = lshr i32 %add.i.i, 2
  %29 = tail call i32 @llvm.bswap.i32(i32 %div9.i.i) #4
  %30 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %31, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %29) #4, !srcloc !34
  %32 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 134219776) #4, !srcloc !34
  br label %out_rx

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 2147480) #4
  %35 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %36, i32 388
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !33
  %tobool12.not = icmp eq i32 %37, 0
  br i1 %tobool12.not, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tfm.i, align 16
  %result = getelementptr inbounds %struct.ahash_request, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %result, align 32
  %42 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg, align 4
  %add.ptr15 = getelementptr i8, ptr %43, i32 396
  %__crt_alg.i.i = getelementptr i8, ptr %39, i32 12
  %44 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %45, i32 -128
  %46 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i.i.i, align 128
  tail call void @mmiocpy(ptr noundef %41, ptr noundef %add.ptr15, i32 noundef %47) #4
  %complete = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 31
  %48 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %complete, align 4
  %50 = ptrtoint ptr %async_req to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %async_req, align 4
  tail call void %49(ptr noundef %51, i32 noundef 0) #4
  %state.i = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 9, i32 1
  %call.i35 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool.not.i36 = icmp eq i32 %call.i35, 0
  br i1 %tobool.not.i36, label %if.then.i37, label %while.end.out_rx_crit_edge

while.end.out_rx_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_rx

if.then.i37:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %queue_task = getelementptr inbounds %struct.rk_crypto_info, ptr %dev, i32 0, i32 9
  tail call void @__tasklet_schedule(ptr noundef %queue_task) #4
  br label %out_rx

out_rx:                                           ; preds = %if.then.i37, %while.end.out_rx_crit_edge, %if.then.i, %if.end9.out_rx_crit_edge, %do.end
  %err.0 = phi i32 [ -12, %do.end ], [ %call.i, %if.end9.out_rx_crit_edge ], [ 0, %if.then.i ], [ 0, %while.end.out_rx_crit_edge ], [ 0, %if.then.i37 ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_ahash_crypto_complete(ptr noundef %base, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %complete, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %1(ptr noundef %base, i32 noundef %err) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @rk_ahash_sha1, !1, !"rk_ahash_sha1", i1 false, i1 false}
!1 = !{!"../drivers/crypto/rockchip/rk3288_crypto_ahash.c", i32 315, i32 22}
!2 = !{ptr @rk_ahash_sha256, !3, !"rk_ahash_sha256", i1 false, i1 false}
!3 = !{!"../drivers/crypto/rockchip/rk3288_crypto_ahash.c", i32 345, i32 22}
!4 = !{ptr @rk_ahash_md5, !5, !"rk_ahash_md5", i1 false, i1 false}
!5 = !{!"../drivers/crypto/rockchip/rk3288_crypto_ahash.c", i32 375, i32 22}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/crypto/rockchip/rk3288_crypto_ahash.c", i32 286, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rk_cra_hash_init._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @rk_cra_hash_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/crypto/rockchip/rk3288_crypto_ahash.c", i32 297, i32 3}
!16 = !{ptr @rk_cra_hash_init._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rk_cra_hash_init._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/crypto/rockchip/rk3288_crypto_ahash.c", i32 240, i32 5}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rk_ahash_crypto_rx._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @rk_ahash_crypto_rx._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 5385510}
!34 = !{i64 5385092}
